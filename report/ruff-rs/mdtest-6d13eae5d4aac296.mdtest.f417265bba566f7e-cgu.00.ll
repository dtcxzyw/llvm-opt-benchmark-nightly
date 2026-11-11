Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.00?download=true
inline.NumInlined: 730
inline.NumDeleted: 60
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2A_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit19 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !269 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !272, !nonnull !4, !align !6, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274), !noalias !272
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !275, !noalias !272, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !276, !noalias !277, !noundef !4 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !7, !alias.scope !276, !noalias !277, !noundef !4
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !278
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !276, !noalias !277, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !277
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !277
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !277
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !277
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !276, !noalias !277
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0195.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0195.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0195.0, %i.m        ; 3 uses
  %or.cond312 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond312, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0195.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0195.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa485 = phi i64 [ %.sroa.525.2.i.ph636, %bb.o ], [ %.sroa.525.2.i.ph636, %bb.z ], [ %.sroa.525.2.i.ph636, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa478 = phi i64 [ %.sroa.023.1.i.ph637, %bb.o ], [ %.sroa.023.1.i.ph637, %bb.z ], [ %.sroa.023.1.i.ph637, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa471 = phi i64 [ %.sroa.9.2.i.ph638, %bb.o ], [ %.sroa.9.2.i.ph638, %bb.z ], [ %.sroa.9.2.i.ph638, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa464 = phi i64 [ %.sroa.12.2.i.ph639, %bb.o ], [ %.sroa.12.2.i.ph639, %bb.z ], [ %.sroa.12.2.i.ph639, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select313, 4
  %or.cond318 = or i1 %i.bd, %.not.i57
  br i1 %or.cond318, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i644 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.9.0.i643 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa471, %.loopexit ]
  %.sroa.023.0.i642 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa478, %.loopexit ]
  %.sroa.525.0.i641 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa485, %.loopexit ]
  %.sroa.0228.0640 = phi i64 [ 0, %bb.k ], [ %spec.select313, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0228.0640, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0228.0640, 1
  %spec.select313 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0228.0640, 0
  %i.bg = add i64 %.sroa.0228.0640, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa478 to i1
  br i1 %i.bl, label %.loopexit395, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

.loopexit395:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa485, %bb.m ], [ %.sroa.0228.0640, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa471, %bb.m ], [ %.us-phi548, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa464, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0229.0523 = phi i64 [ %spec.select315, %bb.o ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0229.0523, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0229.0523, 1
  %spec.select315 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !279
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not647 = icmp eq i64 %.sroa.0229.0523, 0
  br i1 %.not647, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond319 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond319, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1078

.split.loopexit1078:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0195.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1078
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1078 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !280
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !281
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bc, align 8, !noundef !4
  %.val50 = load i64, ptr %i.bj, align 8, !noundef !4
  %.not316 = icmp eq i64 %.val49, %.val50
  br i1 %.not316, label %.split537, label %bb.o

.split537.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre878 = sub i64 %i.m, %i.ch
  br label %.split537

.split537:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split537.loopexit
  %.pre-phi = phi i64 [ %.pre878, %.split537.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi543 = phi i64 [ %i.ch, %.split537.loopexit ], [ %.sroa.0195.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi546 = phi i1 [ %i.ce, %.split537.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi547 = phi i64 [ %spec.select315.us, %.split537.loopexit ], [ %spec.select315, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi548 = phi i64 [ %.sroa.0229.0523.us, %.split537.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not648 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not648, label %.outer, label %.lr.ph632

.lr.ph632:                                        ; preds = %.split537
  %i.bs = sub i64 %.us-phi543, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph632, %bb.v
  %.sroa.01.0.i631 = phi i64 [ 0, %.lr.ph632 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i631, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !279
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i631     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !282
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29: ; preds = %bb.s
  %i.by = add nuw i64 %i.bh, %.sroa.01.0.i631     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.w
  br i1 %i.bz, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %umax877 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bh)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax877, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !283
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.by
  %.val47 = load i64, ptr %i.ca, align 8, !noundef !4
  %.val48 = load i64, ptr %i.cb, align 8, !noundef !4
  %.not317 = icmp eq i64 %.val47, %.val48
  br i1 %.not317, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.cc = add nuw i64 %.sroa.01.0.i631, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i631, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ] ; 8 uses
  %i.cd = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cd, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split537, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph636, %._crit_edge ], [ %.sroa.525.2.i.ph636, %.split537 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph637, %._crit_edge ], [ %.sroa.023.1.i.ph637, %.split537 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph638, %._crit_edge ], [ %.sroa.9.2.i.ph638, %.split537 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph639, %._crit_edge ], [ %.sroa.12.2.i.ph639, %.split537 ] ; 2 uses
  %.not.i59521 = icmp ugt i64 %.us-phi547, 4
  %or.cond319522 = select i1 %.us-phi546, i1 true, i1 %.not.i59521
  br i1 %or.cond319522, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph639 = phi i64 [ %.sroa.12.0.i644, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph638 = phi i64 [ %.sroa.9.0.i643, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph637 = phi i64 [ %.sroa.023.0.i642, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph636 = phi i64 [ %.sroa.525.0.i641, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0229.0.ph635 = phi i64 [ 0, %bb.l ], [ %.us-phi547, %.outer ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0229.0523.us = phi i64 [ %spec.select315.us, %bb.y ], [ %.sroa.0229.0.ph635, %.lr.ph ] ; 5 uses
  %i.ce = icmp eq i64 %.sroa.0229.0523.us, 4      ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.0229.0523.us, 1
  %spec.select315.us = select i1 %i.ce, i64 4, i64 %i.cf ; 3 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !279
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0229.0523.us, 0
  %or.cond646 = and i1 %or.cond2.i.us, %i.az
  br i1 %or.cond646, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = add i64 %.sroa.0229.0523.us, %.sroa.0195.0 ; 3 uses
  %i.ci = sub i64 %i.ch, %i.o                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.q
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us: ; preds = %bb.x
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, label %.split533

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ci
  %.val49.us = load i64, ptr %i.ck, align 8, !noundef !4
  %.val50.us = load i64, ptr %i.bj, align 8, !noundef !4
  %.not316.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not316.us, label %.split537.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select315.us, 4
  %or.cond319.us = select i1 %i.ce, i1 true, i1 %.not.i59.us
  br i1 %or.cond319.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0229.0523.us553 = phi i64 [ %spec.select315.us554, %bb.z ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 2 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !279
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = icmp eq i64 %.sroa.0229.0523.us553, 4   ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0229.0523.us553, 1
  %spec.select315.us554 = select i1 %i.cm, i64 4, i64 %i.cn ; 2 uses
  %.not.i59.us556 = icmp ugt i64 %spec.select315.us554, 4
  %or.cond319.us557 = select i1 %i.cm, i1 true, i1 %.not.i59.us556
  br i1 %or.cond319.us557, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.co = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.co, label %.loopexit395, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi548, i64 %.sroa.0228.0640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !284
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !284
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !284
  store i64 %.sroa.0228.0640, ptr %i.aa, align 8, !noalias !284
  store i64 %.us-phi548, ptr %i.ab, align 8, !noalias !284
  %i.cp = trunc nuw i64 %.sroa.023.1.i.ph637 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !284
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph638, i64 %.sroa.525.2.i.ph636)
  store i64 %.sroa.12.2.i.ph639, ptr %i.e, align 8, !noalias !284
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !284
  store i64 %.sroa.525.2.i.ph636, ptr %i.ad, align 8, !noalias !284
  store i64 %.sroa.9.2.i.ph638, ptr %i.ae, align 8, !noalias !284
  %i.cq = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph639
  %i.cr = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph639
  %i.cs = zext i1 %i.cr to i8
  br i1 %i.cq, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !279 ; 2 uses
  %.not7.i = icmp eq i8 %i.ct, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %.sroa.0228.0640, %.sroa.525.2.i.ph636
  %i.cv = icmp ugt i64 %.sroa.0228.0640, %.sroa.525.2.i.ph636
  %i.cw = zext i1 %i.cv to i8
  br i1 %i.cu, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ugt i64 %.us-phi548, %.sroa.9.2.i.ph638
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cy, %bb.af ], [ %i.cw, %bb.ae ]
  %i.cz = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !284
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph636, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0228.0640, %bb.ab ], [ %.sroa.0228.0640, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph638, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.us-phi548, %bb.ab ], [ %.us-phi548, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph639, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !284
  br label %.outer

bb.ai:                                            ; preds = %.loopexit395
  %.pre = load ptr, ptr %0, align 8, !noalias !285 ; 3 uses
  br i1 %i.bn, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit395
  br i1 %i.bn, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.ai
  %i.da = phi ptr [ %i.ek, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.dz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %bb.ai ]
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0195.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287), !noalias !288
  %i.dd = load ptr, ptr %i.da, align 8, !alias.scope !289, !noalias !288, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !290, !noalias !291, !noundef !4 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !7, !alias.scope !290, !noalias !291, !noundef !4
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de), !noalias !292
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66: ; preds = %bb.ak, %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !290, !noalias !291, !nonnull !4, !noundef !4
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !291
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !291
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dc, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !291
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !291
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.df, align 8, !alias.scope !290, !noalias !291
  %i.dn = add i64 %i.db, %.sroa.12.1.i
  %i.do = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !295
  %i.dp = load ptr, ptr %.pre, align 8, !alias.scope !296, !noalias !295, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !297, !noalias !298, !noundef !4 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !7, !alias.scope !297, !noalias !298, !noundef !4
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq), !noalias !299
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.am, %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !297, !noalias !298, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.ds ; 4 uses
  store i64 2, ptr %i.dx, align 8, !noalias !298
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4261.0..sroa_idx, align 8, !noalias !298
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5262.0..sroa_idx, align 8, !noalias !298
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !298
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !297, !noalias !298
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !285
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !302, !noalias !285, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304), !noalias !305
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !306, !noalias !305, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !7, !alias.scope !307, !noalias !308, !noundef !4
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !309
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !307, !noalias !308, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !308
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !308
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !308
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !308
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !307, !noalias !308
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311), !noalias !285
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !312, !noalias !285, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !314), !noalias !315
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !316, !noalias !315, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !317, !noalias !318, !noundef !4 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !7, !alias.scope !317, !noalias !318, !noundef !4
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !319
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !317, !noalias !318, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !318
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !318
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !318
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !318
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !317, !noalias !318
  %i.ev = load i64, ptr %i.em, align 8, !range !7, !alias.scope !320, !noalias !318, !noundef !4
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !381
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !381
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !380, !noalias !381
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !385, !nonnull !4, !align !6, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !387), !noalias !385
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !388, !noalias !385, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !389, !noalias !390, !noundef !4 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !7, !alias.scope !389, !noalias !390, !noundef !4
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !391
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !389, !noalias !390, !nonnull !4, !noundef !4
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !390
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !390
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !390
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6238.0..sroa_idx, align 8, !noalias !390
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !389, !noalias !390
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !593 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !596, !nonnull !4, !align !6, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598), !noalias !596
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !599, !noalias !596, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !600, !noalias !601, !noundef !4 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !7, !alias.scope !600, !noalias !601, !noundef !4
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !602
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !600, !noalias !601, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !601
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !601
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !601
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !601
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !600, !noalias !601
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0195.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0195.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0195.0, %i.m        ; 3 uses
  %or.cond312 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond312, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0195.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0195.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa485 = phi i64 [ %.sroa.525.2.i.ph636, %bb.o ], [ %.sroa.525.2.i.ph636, %bb.z ], [ %.sroa.525.2.i.ph636, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa478 = phi i64 [ %.sroa.023.1.i.ph637, %bb.o ], [ %.sroa.023.1.i.ph637, %bb.z ], [ %.sroa.023.1.i.ph637, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa471 = phi i64 [ %.sroa.9.2.i.ph638, %bb.o ], [ %.sroa.9.2.i.ph638, %bb.z ], [ %.sroa.9.2.i.ph638, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa464 = phi i64 [ %.sroa.12.2.i.ph639, %bb.o ], [ %.sroa.12.2.i.ph639, %bb.z ], [ %.sroa.12.2.i.ph639, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select313, 4
  %or.cond318 = or i1 %i.bd, %.not.i57
  br i1 %or.cond318, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i644 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.9.0.i643 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa471, %.loopexit ]
  %.sroa.023.0.i642 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa478, %.loopexit ]
  %.sroa.525.0.i641 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa485, %.loopexit ]
  %.sroa.0228.0640 = phi i64 [ 0, %bb.k ], [ %spec.select313, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0228.0640, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0228.0640, 1
  %spec.select313 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0228.0640, 0
  %i.bg = add i64 %.sroa.0228.0640, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa478 to i1
  br i1 %i.bl, label %.loopexit395, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

.loopexit395:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa485, %bb.m ], [ %.sroa.0228.0640, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa471, %bb.m ], [ %.us-phi548, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa464, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0229.0523 = phi i64 [ %spec.select315, %bb.o ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0229.0523, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0229.0523, 1
  %spec.select315 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !603
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not647 = icmp eq i64 %.sroa.0229.0523, 0
  br i1 %.not647, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond319 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond319, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1078

.split.loopexit1078:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0195.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1078
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1078 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !604
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !605
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bc, align 8, !noundef !4
  %.val50 = load i64, ptr %i.bj, align 8, !noundef !4
  %.not316 = icmp eq i64 %.val49, %.val50
  br i1 %.not316, label %.split537, label %bb.o

.split537.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre878 = sub i64 %i.m, %i.ch
  br label %.split537

.split537:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split537.loopexit
  %.pre-phi = phi i64 [ %.pre878, %.split537.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi543 = phi i64 [ %i.ch, %.split537.loopexit ], [ %.sroa.0195.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi546 = phi i1 [ %i.ce, %.split537.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi547 = phi i64 [ %spec.select315.us, %.split537.loopexit ], [ %spec.select315, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi548 = phi i64 [ %.sroa.0229.0523.us, %.split537.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not648 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not648, label %.outer, label %.lr.ph632

.lr.ph632:                                        ; preds = %.split537
  %i.bs = sub i64 %.us-phi543, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph632, %bb.v
  %.sroa.01.0.i631 = phi i64 [ 0, %.lr.ph632 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i631, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !603
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i631     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !606
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29: ; preds = %bb.s
  %i.by = add nuw i64 %i.bh, %.sroa.01.0.i631     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.w
  br i1 %i.bz, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %umax877 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bh)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax877, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !607
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.by
  %.val47 = load i64, ptr %i.ca, align 8, !noundef !4
  %.val48 = load i64, ptr %i.cb, align 8, !noundef !4
  %.not317 = icmp eq i64 %.val47, %.val48
  br i1 %.not317, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.cc = add nuw i64 %.sroa.01.0.i631, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i631, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ] ; 8 uses
  %i.cd = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cd, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split537, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph636, %._crit_edge ], [ %.sroa.525.2.i.ph636, %.split537 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph637, %._crit_edge ], [ %.sroa.023.1.i.ph637, %.split537 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph638, %._crit_edge ], [ %.sroa.9.2.i.ph638, %.split537 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph639, %._crit_edge ], [ %.sroa.12.2.i.ph639, %.split537 ] ; 2 uses
  %.not.i59521 = icmp ugt i64 %.us-phi547, 4
  %or.cond319522 = select i1 %.us-phi546, i1 true, i1 %.not.i59521
  br i1 %or.cond319522, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph639 = phi i64 [ %.sroa.12.0.i644, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph638 = phi i64 [ %.sroa.9.0.i643, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph637 = phi i64 [ %.sroa.023.0.i642, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph636 = phi i64 [ %.sroa.525.0.i641, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0229.0.ph635 = phi i64 [ 0, %bb.l ], [ %.us-phi547, %.outer ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0229.0523.us = phi i64 [ %spec.select315.us, %bb.y ], [ %.sroa.0229.0.ph635, %.lr.ph ] ; 5 uses
  %i.ce = icmp eq i64 %.sroa.0229.0523.us, 4      ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.0229.0523.us, 1
  %spec.select315.us = select i1 %i.ce, i64 4, i64 %i.cf ; 3 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !603
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0229.0523.us, 0
  %or.cond646 = and i1 %or.cond2.i.us, %i.az
  br i1 %or.cond646, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = add i64 %.sroa.0229.0523.us, %.sroa.0195.0 ; 3 uses
  %i.ci = sub i64 %i.ch, %i.o                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.q
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us: ; preds = %bb.x
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, label %.split533

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ci
  %.val49.us = load i64, ptr %i.ck, align 8, !noundef !4
  %.val50.us = load i64, ptr %i.bj, align 8, !noundef !4
  %.not316.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not316.us, label %.split537.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select315.us, 4
  %or.cond319.us = select i1 %i.ce, i1 true, i1 %.not.i59.us
  br i1 %or.cond319.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0229.0523.us553 = phi i64 [ %spec.select315.us554, %bb.z ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 2 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !603
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = icmp eq i64 %.sroa.0229.0523.us553, 4   ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0229.0523.us553, 1
  %spec.select315.us554 = select i1 %i.cm, i64 4, i64 %i.cn ; 2 uses
  %.not.i59.us556 = icmp ugt i64 %spec.select315.us554, 4
  %or.cond319.us557 = select i1 %i.cm, i1 true, i1 %.not.i59.us556
  br i1 %or.cond319.us557, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.co = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.co, label %.loopexit395, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi548, i64 %.sroa.0228.0640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !608
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !608
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !608
  store i64 %.sroa.0228.0640, ptr %i.aa, align 8, !noalias !608
  store i64 %.us-phi548, ptr %i.ab, align 8, !noalias !608
  %i.cp = trunc nuw i64 %.sroa.023.1.i.ph637 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !608
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph638, i64 %.sroa.525.2.i.ph636)
  store i64 %.sroa.12.2.i.ph639, ptr %i.e, align 8, !noalias !608
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !608
  store i64 %.sroa.525.2.i.ph636, ptr %i.ad, align 8, !noalias !608
  store i64 %.sroa.9.2.i.ph638, ptr %i.ae, align 8, !noalias !608
  %i.cq = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph639
  %i.cr = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph639
  %i.cs = zext i1 %i.cr to i8
  br i1 %i.cq, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !603 ; 2 uses
  %.not7.i = icmp eq i8 %i.ct, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %.sroa.0228.0640, %.sroa.525.2.i.ph636
  %i.cv = icmp ugt i64 %.sroa.0228.0640, %.sroa.525.2.i.ph636
  %i.cw = zext i1 %i.cv to i8
  br i1 %i.cu, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ugt i64 %.us-phi548, %.sroa.9.2.i.ph638
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cy, %bb.af ], [ %i.cw, %bb.ae ]
  %i.cz = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !608
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph636, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0228.0640, %bb.ab ], [ %.sroa.0228.0640, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph638, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.us-phi548, %bb.ab ], [ %.us-phi548, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph639, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !608
  br label %.outer

bb.ai:                                            ; preds = %.loopexit395
  %.pre = load ptr, ptr %0, align 8, !noalias !609 ; 3 uses
  br i1 %i.bn, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit395
  br i1 %i.bn, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.ai
  %i.da = phi ptr [ %i.ek, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.dz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %bb.ai ]
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0195.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !611), !noalias !612
  %i.dd = load ptr, ptr %i.da, align 8, !alias.scope !613, !noalias !612, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !614, !noalias !615, !noundef !4 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !7, !alias.scope !614, !noalias !615, !noundef !4
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de), !noalias !616
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66: ; preds = %bb.ak, %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !614, !noalias !615, !nonnull !4, !noundef !4
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !615
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !615
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dc, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !615
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !615
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.df, align 8, !alias.scope !614, !noalias !615
  %i.dn = add i64 %i.db, %.sroa.12.1.i
  %i.do = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !619
  %i.dp = load ptr, ptr %.pre, align 8, !alias.scope !620, !noalias !619, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !621, !noalias !622, !noundef !4 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !7, !alias.scope !621, !noalias !622, !noundef !4
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq), !noalias !623
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.am, %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.ds ; 4 uses
  store i64 2, ptr %i.dx, align 8, !noalias !622
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4261.0..sroa_idx, align 8, !noalias !622
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5262.0..sroa_idx, align 8, !noalias !622
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !622
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !621, !noalias !622
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625), !noalias !609
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !626, !noalias !609, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !629
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !630, !noalias !629, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !631, !noalias !632, !noundef !4 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !7, !alias.scope !631, !noalias !632, !noundef !4
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !633
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !631, !noalias !632, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !632
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !632
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !632
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !632
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !631, !noalias !632
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635), !noalias !609
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !636, !noalias !609, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !639
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !640, !noalias !639, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !641, !noalias !642, !noundef !4 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !7, !alias.scope !641, !noalias !642, !noundef !4
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !643
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !641, !noalias !642, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !642
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !642
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !642
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !642
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !641, !noalias !642
  %i.ev = load i64, ptr %i.em, align 8, !range !7, !alias.scope !644, !noalias !642, !noundef !4
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
  store i64 2, ptr %i.zt, align 8, !noalias !705
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !705
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !705
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !705
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !704, !noalias !705
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !709, !nonnull !4, !align !6, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !711), !noalias !709
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !712, !noalias !709, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !713, !noalias !714, !noundef !4 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !7, !alias.scope !713, !noalias !714, !noundef !4
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !715
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !713, !noalias !714, !nonnull !4, !noundef !4
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !714
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !714
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !714
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6238.0..sroa_idx, align 8, !noalias !714
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !713, !noalias !714
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !837 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !840, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !841, !noalias !840, !noundef !4 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !841, !noalias !840, !noundef !4
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !842
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !841, !noalias !840, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !840
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !840
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !840
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !840
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !841, !noalias !840
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0188.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0188.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.ap = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0188.0, %i.m        ; 3 uses
  %or.cond305 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond305, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ap, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.as = sub nuw i64 %i.m, %.sroa.0188.0         ; 6 uses
  %i.at = icmp ult i64 %i.ar, 97
  %i.au = icmp ult i64 %i.as, 97
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.ar)
  %i.av = shl nuw i64 %.sroa.0.0.i53, 1
  %i.aw = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ax, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.as, %i.ar
  %i.ay = icmp ule i64 %i.ar, %i.as
  %.not.i.fr = freeze i1 %.not.i
  %i.az = sub i64 %.sroa.0188.0, %i.o             ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.q
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa478 = phi i64 [ %.sroa.525.2.i.ph629, %bb.o ], [ %.sroa.525.2.i.ph629, %bb.z ], [ %.sroa.525.2.i.ph629, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa471 = phi i64 [ %.sroa.023.1.i.ph630, %bb.o ], [ %.sroa.023.1.i.ph630, %bb.z ], [ %.sroa.023.1.i.ph630, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa464 = phi i64 [ %.sroa.9.2.i.ph631, %bb.o ], [ %.sroa.9.2.i.ph631, %bb.z ], [ %.sroa.9.2.i.ph631, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa457 = phi i64 [ %.sroa.12.2.i.ph632, %bb.o ], [ %.sroa.12.2.i.ph632, %bb.z ], [ %.sroa.12.2.i.ph632, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond311 = or i1 %i.bc, %.not.i57
  br i1 %or.cond311, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i637 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa457, %.loopexit ]
  %.sroa.9.0.i636 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.023.0.i635 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa471, %.loopexit ]
  %.sroa.525.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa478, %.loopexit ]
  %.sroa.0221.0633 = phi i64 [ 0, %bb.k ], [ %spec.select306, %.loopexit ] ; 11 uses
  %i.bc = icmp eq i64 %.sroa.0221.0633, 4         ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0221.0633, 1
  %spec.select306 = select i1 %i.bc, i64 4, i64 %i.bd ; 2 uses
  %i.be = icmp eq i64 %.sroa.0221.0633, 0
  %i.bf = add i64 %.sroa.0221.0633, %.sroa.0.0    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.u                     ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bg ; 2 uses
  %i.bj = sub i64 %i.l, %i.bf
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i64 %.sroa.023.1.i.ph.lcssa471 to i1
  br i1 %i.bk, label %.loopexit388, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit388:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa478, %bb.m ], [ %.sroa.0221.0633, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa464, %bb.m ], [ %.us-phi541, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa457, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.525.1.i, 0
  %i.bm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bl, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0222.0516 = phi i64 [ %spec.select308, %bb.o ], [ %.sroa.0222.0.ph628, %.lr.ph.split ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0222.0516, 4         ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0222.0516, 1
  %spec.select308 = select i1 %i.bn, i64 4, i64 %i.bo ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !843
  br i1 %i.bp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not640 = icmp eq i64 %.sroa.0222.0516, 0
  br i1 %.not640, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond312 = select i1 %i.bn, i1 true, i1 %.not.i59
  br i1 %or.cond312, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.ba, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1085

.split.loopexit1085:                              ; preds = %bb.p
  %i.bq = sub i64 %.sroa.0188.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1085
  %.us-phi = phi i64 [ %i.bq, %.split.loopexit1085 ], [ %i.ch, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !844
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split526

.split526:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !845
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bb, align 8, !noundef !4
  %.val50 = load i64, ptr %i.bi, align 8, !noundef !4
  %.not309 = icmp eq i64 %.val49, %.val50
  br i1 %.not309, label %.split530, label %bb.o

.split530.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre873 = sub i64 %i.m, %i.cg
  br label %.split530

.split530:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split530.loopexit
  %.pre-phi = phi i64 [ %.pre873, %.split530.loopexit ], [ %i.as, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi536 = phi i64 [ %i.cg, %.split530.loopexit ], [ %.sroa.0188.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi539 = phi i1 [ %i.cd, %.split530.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi540 = phi i64 [ %spec.select308.us, %.split530.loopexit ], [ %spec.select308, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi541 = phi i64 [ %.sroa.0222.0516.us, %.split530.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bj) ; 3 uses
  %.not641 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not641, label %.outer, label %.lr.ph625

.lr.ph625:                                        ; preds = %.split530
  %i.br = sub i64 %.us-phi536, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph625, %bb.v
  %.sroa.01.0.i624 = phi i64 [ 0, %.lr.ph625 ], [ %i.cb, %bb.v ] ; 5 uses
  %i.bs = and i64 %.sroa.01.0.i624, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !843
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = add nuw i64 %i.br, %.sroa.01.0.i624     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.q
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.br)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !846
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29: ; preds = %bb.s
  %i.bx = add nuw i64 %i.bg, %.sroa.01.0.i624     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.w
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %umax870 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bg)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax870, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !847
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bv
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bx
  %.val47 = load i64, ptr %i.bz, align 8, !noundef !4
  %.val48 = load i64, ptr %i.ca, align 8, !noundef !4
  %.not310 = icmp eq i64 %.val47, %.val48
  br i1 %.not310, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.cb = add nuw i64 %.sroa.01.0.i624, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i624, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ] ; 8 uses
  %i.cc = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cc, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split530, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph629, %._crit_edge ], [ %.sroa.525.2.i.ph629, %.split530 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph630, %._crit_edge ], [ %.sroa.023.1.i.ph630, %.split530 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph631, %._crit_edge ], [ %.sroa.9.2.i.ph631, %.split530 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph632, %._crit_edge ], [ %.sroa.12.2.i.ph632, %.split530 ] ; 2 uses
  %.not.i59514 = icmp ugt i64 %.us-phi540, 4
  %or.cond312515 = select i1 %.us-phi539, i1 true, i1 %.not.i59514
  br i1 %or.cond312515, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph632 = phi i64 [ %.sroa.12.0.i637, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph631 = phi i64 [ %.sroa.9.0.i636, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph630 = phi i64 [ %.sroa.023.0.i635, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph629 = phi i64 [ %.sroa.525.0.i634, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0222.0.ph628 = phi i64 [ 0, %bb.l ], [ %.us-phi540, %.outer ] ; 3 uses
  br i1 %i.be, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0222.0516.us = phi i64 [ %spec.select308.us, %bb.y ], [ %.sroa.0222.0.ph628, %.lr.ph ] ; 5 uses
  %i.cd = icmp eq i64 %.sroa.0222.0516.us, 4      ; 3 uses
  %i.ce = add nuw nsw i64 %.sroa.0222.0516.us, 1
  %spec.select308.us = select i1 %i.cd, i64 4, i64 %i.ce ; 3 uses
  %i.cf = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !843
  br i1 %i.cf, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0222.0516.us, 0
  %or.cond639 = and i1 %or.cond2.i.us, %i.ay
  br i1 %or.cond639, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = add i64 %.sroa.0222.0516.us, %.sroa.0188.0 ; 3 uses
  %i.ch = sub i64 %i.cg, %i.o                     ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.q
  br i1 %i.ci, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us: ; preds = %bb.x
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, label %.split526

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ch
  %.val49.us = load i64, ptr %i.cj, align 8, !noundef !4
  %.val50.us = load i64, ptr %i.bi, align 8, !noundef !4
  %.not309.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not309.us, label %.split530.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select308.us, 4
  %or.cond312.us = select i1 %i.cd, i1 true, i1 %.not.i59.us
  br i1 %or.cond312.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0222.0516.us546 = phi i64 [ %spec.select308.us547, %bb.z ], [ %.sroa.0222.0.ph628, %.lr.ph.split ] ; 2 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !843
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cl = icmp eq i64 %.sroa.0222.0516.us546, 4   ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0222.0516.us546, 1
  %spec.select308.us547 = select i1 %i.cl, i64 4, i64 %i.cm ; 2 uses
  %.not.i59.us549 = icmp ugt i64 %spec.select308.us547, 4
  %or.cond312.us550 = select i1 %i.cl, i1 true, i1 %.not.i59.us549
  br i1 %or.cond312.us550, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.cn = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cn, label %.loopexit388, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi541, i64 %.sroa.0221.0633)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !848
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !848
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !848
  store i64 %.sroa.0221.0633, ptr %i.aa, align 8, !noalias !848
  store i64 %.us-phi541, ptr %i.ab, align 8, !noalias !848
  %i.co = trunc nuw i64 %.sroa.023.1.i.ph630 to i1
  br i1 %i.co, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !848
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph631, i64 %.sroa.525.2.i.ph629)
  store i64 %.sroa.12.2.i.ph632, ptr %i.e, align 8, !noalias !848
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !848
  store i64 %.sroa.525.2.i.ph629, ptr %i.ad, align 8, !noalias !848
  store i64 %.sroa.9.2.i.ph631, ptr %i.ae, align 8, !noalias !848
  %i.cp = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph632
  %i.cq = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph632
  %i.cr = zext i1 %i.cq to i8
  br i1 %i.cp, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cs = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !843 ; 2 uses
  %.not7.i = icmp eq i8 %i.cs, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ct = icmp eq i64 %.sroa.0221.0633, %.sroa.525.2.i.ph629
  %i.cu = icmp ugt i64 %.sroa.0221.0633, %.sroa.525.2.i.ph629
  %i.cv = zext i1 %i.cu to i8
  br i1 %i.ct, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.af:                                            ; preds = %bb.ae
  %i.cw = icmp ugt i64 %.us-phi541, %.sroa.9.2.i.ph631
  %i.cx = zext i1 %i.cw to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cr, %bb.ac ], [ %i.cs, %bb.ad ], [ %i.cx, %bb.af ], [ %i.cv, %bb.ae ]
  %i.cy = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !848
  br i1 %i.cy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph629, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0221.0633, %bb.ab ], [ %.sroa.0221.0633, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph631, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.us-phi541, %bb.ab ], [ %.us-phi541, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph632, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !848
  br label %.outer

bb.ai:                                            ; preds = %.loopexit388
  %.pre = load ptr, ptr %0, align 8, !noalias !849 ; 6 uses
  br i1 %i.bm, label %._crit_edge871, label %bb.am

._crit_edge871:                                   ; preds = %bb.ai
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %.pre872 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !850, !noalias !851
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit388
  br i1 %i.bm, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %._crit_edge871, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67
  %i.cz = phi i64 [ %i.eu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.ef, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %i.dv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre872, %._crit_edge871 ] ; 3 uses
  %i.da = phi ptr [ %i.eg, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.dw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %._crit_edge871 ] ; 3 uses
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0188.0     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %i.df = load i64, ptr %i.dd, align 8, !range !7, !alias.scope !850, !noalias !851, !noundef !4
  %i.dg = icmp eq i64 %i.cz, %i.df
  br i1 %i.dg, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd), !noalias !852
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66: ; preds = %bb.ak, %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !850, !noalias !851, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.cz ; 4 uses
  store i64 0, ptr %i.dj, align 8, !noalias !851
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.db, ptr %.sroa.4234.0..sroa_idx, align 8, !noalias !851
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dc, ptr %.sroa.5235.0..sroa_idx, align 8, !noalias !851
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6236.0..sroa_idx, align 8, !noalias !851
  %i.dk = add i64 %i.cz, 1
  store i64 %i.dk, ptr %i.de, align 8, !alias.scope !850, !noalias !851
  %i.dl = add i64 %i.db, %.sroa.12.1.i
  %i.dm = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 120 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 136 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !853, !noalias !854, !noundef !4 ; 3 uses
  %i.dq = load i64, ptr %i.dn, align 8, !range !7, !alias.scope !853, !noalias !854, !noundef !4
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn), !noalias !855
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.am, %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !853, !noalias !854, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dp ; 4 uses
  store i64 2, ptr %i.du, align 8, !noalias !854
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4264.0..sroa_idx, align 8, !noalias !854
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5265.0..sroa_idx, align 8, !noalias !854
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6266.0..sroa_idx, align 8, !noalias !854
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !853, !noalias !854
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857), !noalias !849
  %i.dw = load ptr, ptr %0, align 8, !alias.scope !858, !noalias !849, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 136 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !859, !noalias !860, !noundef !4 ; 3 uses
  %i.ea = load i64, ptr %i.dx, align 8, !range !7, !alias.scope !859, !noalias !860, !noundef !4
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx), !noalias !861
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !859, !noalias !860, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !860
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4249.0..sroa_idx, align 8, !noalias !860
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5250.0..sroa_idx, align 8, !noalias !860
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6251.0..sroa_idx, align 8, !noalias !860
  %i.ef = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.dy, align 8, !alias.scope !859, !noalias !860
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863), !noalias !849
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !864, !noalias !849, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !865, !noalias !866, !noundef !4 ; 4 uses
  %i.ek = load i64, ptr %i.eh, align 8, !range !7, !alias.scope !865, !noalias !866, !noundef !4
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !867
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !865, !noalias !866, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ej ; 4 uses
  store i64 1, ptr %i.eo, align 8, !noalias !866
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4269.0..sroa_idx, align 8, !noalias !866
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5270.0..sroa_idx, align 8, !noalias !866
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6271.0..sroa_idx, align 8, !noalias !866
  %i.ep = add i64 %i.ej, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !865, !noalias !866
  %i.eq = load i64, ptr %i.eh, align 8, !range !7, !alias.scope !868, !noalias !866, !noundef !4
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !869
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !868, !noalias !866, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.ep ; 4 uses
  store i64 2, ptr %i.et, align 8, !noalias !866
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 128
  %i.xj = load ptr, ptr %i.xi, align 8, !alias.scope !903, !noalias !902, !nonnull !4, !noundef !4
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %i.xj, i64 %i.xf ; 4 uses
  store i64 2, ptr %i.xk, align 8, !noalias !902
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !902
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !902
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store i64 %i.xb, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !902
  %i.xl = add i64 %i.xf, 1
  store i64 %i.xl, ptr %i.xe, align 8, !alias.scope !903, !noalias !902
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.xm = load ptr, ptr %0, align 8, !alias.scope !907, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 120 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 136 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !908, !noalias !907, !noundef !4 ; 3 uses
  %i.xq = load i64, ptr %i.xn, align 8, !range !7, !alias.scope !908, !noalias !907, !noundef !4
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xn), !noalias !909
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155: ; preds = %bb.gx, %bb.gy
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !908, !noalias !907, !nonnull !4, !noundef !4
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.xt, i64 %i.xp ; 4 uses
  store i64 0, ptr %i.xu, align 8, !noalias !907
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 %i.l, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !907
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store i64 %i.m, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !907
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  store i64 %i.k, ptr %.sroa.6231.0..sroa_idx, align 8, !noalias !907
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !908, !noalias !907
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1031 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1034, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1035, !noalias !1034, !noundef !4 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !1035, !noalias !1034, !noundef !4
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !1036
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1035, !noalias !1034, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !1034
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1034
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1034
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1034
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !1035, !noalias !1034
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0188.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0188.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.ap = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0188.0, %i.m        ; 3 uses
  %or.cond305 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond305, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ap, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.as = sub nuw i64 %i.m, %.sroa.0188.0         ; 6 uses
  %i.at = icmp ult i64 %i.ar, 97
  %i.au = icmp ult i64 %i.as, 97
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.ar)
  %i.av = shl nuw i64 %.sroa.0.0.i53, 1
  %i.aw = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ax, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.as, %i.ar
  %i.ay = icmp ule i64 %i.ar, %i.as
  %.not.i.fr = freeze i1 %.not.i
  %i.az = sub i64 %.sroa.0188.0, %i.o             ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.q
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa478 = phi i64 [ %.sroa.525.2.i.ph629, %bb.o ], [ %.sroa.525.2.i.ph629, %bb.z ], [ %.sroa.525.2.i.ph629, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa471 = phi i64 [ %.sroa.023.1.i.ph630, %bb.o ], [ %.sroa.023.1.i.ph630, %bb.z ], [ %.sroa.023.1.i.ph630, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa464 = phi i64 [ %.sroa.9.2.i.ph631, %bb.o ], [ %.sroa.9.2.i.ph631, %bb.z ], [ %.sroa.9.2.i.ph631, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa457 = phi i64 [ %.sroa.12.2.i.ph632, %bb.o ], [ %.sroa.12.2.i.ph632, %bb.z ], [ %.sroa.12.2.i.ph632, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond311 = or i1 %i.bc, %.not.i57
  br i1 %or.cond311, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i637 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa457, %.loopexit ]
  %.sroa.9.0.i636 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.023.0.i635 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa471, %.loopexit ]
  %.sroa.525.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa478, %.loopexit ]
  %.sroa.0221.0633 = phi i64 [ 0, %bb.k ], [ %spec.select306, %.loopexit ] ; 11 uses
  %i.bc = icmp eq i64 %.sroa.0221.0633, 4         ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0221.0633, 1
  %spec.select306 = select i1 %i.bc, i64 4, i64 %i.bd ; 2 uses
  %i.be = icmp eq i64 %.sroa.0221.0633, 0
  %i.bf = add i64 %.sroa.0221.0633, %.sroa.0.0    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.u                     ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bg ; 2 uses
  %i.bj = sub i64 %i.l, %i.bf
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i64 %.sroa.023.1.i.ph.lcssa471 to i1
  br i1 %i.bk, label %.loopexit388, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit388:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa478, %bb.m ], [ %.sroa.0221.0633, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa464, %bb.m ], [ %.us-phi541, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa457, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.525.1.i, 0
  %i.bm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bl, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0222.0516 = phi i64 [ %spec.select308, %bb.o ], [ %.sroa.0222.0.ph628, %.lr.ph.split ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0222.0516, 4         ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0222.0516, 1
  %spec.select308 = select i1 %i.bn, i64 4, i64 %i.bo ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1037
  br i1 %i.bp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not640 = icmp eq i64 %.sroa.0222.0516, 0
  br i1 %.not640, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond312 = select i1 %i.bn, i1 true, i1 %.not.i59
  br i1 %or.cond312, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.ba, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1085

.split.loopexit1085:                              ; preds = %bb.p
  %i.bq = sub i64 %.sroa.0188.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1085
  %.us-phi = phi i64 [ %i.bq, %.split.loopexit1085 ], [ %i.ch, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1038
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split526

.split526:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1039
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bb, align 8, !noundef !4
  %.val50 = load i64, ptr %i.bi, align 8, !noundef !4
  %.not309 = icmp eq i64 %.val49, %.val50
  br i1 %.not309, label %.split530, label %bb.o

.split530.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre873 = sub i64 %i.m, %i.cg
  br label %.split530

.split530:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split530.loopexit
  %.pre-phi = phi i64 [ %.pre873, %.split530.loopexit ], [ %i.as, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi536 = phi i64 [ %i.cg, %.split530.loopexit ], [ %.sroa.0188.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi539 = phi i1 [ %i.cd, %.split530.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi540 = phi i64 [ %spec.select308.us, %.split530.loopexit ], [ %spec.select308, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi541 = phi i64 [ %.sroa.0222.0516.us, %.split530.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bj) ; 3 uses
  %.not641 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not641, label %.outer, label %.lr.ph625

.lr.ph625:                                        ; preds = %.split530
  %i.br = sub i64 %.us-phi536, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph625, %bb.v
  %.sroa.01.0.i624 = phi i64 [ 0, %.lr.ph625 ], [ %i.cb, %bb.v ] ; 5 uses
  %i.bs = and i64 %.sroa.01.0.i624, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1037
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = add nuw i64 %i.br, %.sroa.01.0.i624     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.q
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.br)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1040
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29: ; preds = %bb.s
  %i.bx = add nuw i64 %i.bg, %.sroa.01.0.i624     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.w
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %umax870 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bg)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax870, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !1041
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bv
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bx
  %.val47 = load i64, ptr %i.bz, align 8, !noundef !4
  %.val48 = load i64, ptr %i.ca, align 8, !noundef !4
  %.not310 = icmp eq i64 %.val47, %.val48
  br i1 %.not310, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.cb = add nuw i64 %.sroa.01.0.i624, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i624, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ] ; 8 uses
  %i.cc = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cc, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split530, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph629, %._crit_edge ], [ %.sroa.525.2.i.ph629, %.split530 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph630, %._crit_edge ], [ %.sroa.023.1.i.ph630, %.split530 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph631, %._crit_edge ], [ %.sroa.9.2.i.ph631, %.split530 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph632, %._crit_edge ], [ %.sroa.12.2.i.ph632, %.split530 ] ; 2 uses
  %.not.i59514 = icmp ugt i64 %.us-phi540, 4
  %or.cond312515 = select i1 %.us-phi539, i1 true, i1 %.not.i59514
  br i1 %or.cond312515, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph632 = phi i64 [ %.sroa.12.0.i637, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph631 = phi i64 [ %.sroa.9.0.i636, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph630 = phi i64 [ %.sroa.023.0.i635, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph629 = phi i64 [ %.sroa.525.0.i634, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0222.0.ph628 = phi i64 [ 0, %bb.l ], [ %.us-phi540, %.outer ] ; 3 uses
  br i1 %i.be, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0222.0516.us = phi i64 [ %spec.select308.us, %bb.y ], [ %.sroa.0222.0.ph628, %.lr.ph ] ; 5 uses
  %i.cd = icmp eq i64 %.sroa.0222.0516.us, 4      ; 3 uses
  %i.ce = add nuw nsw i64 %.sroa.0222.0516.us, 1
  %spec.select308.us = select i1 %i.cd, i64 4, i64 %i.ce ; 3 uses
  %i.cf = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1037
  br i1 %i.cf, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0222.0516.us, 0
  %or.cond639 = and i1 %or.cond2.i.us, %i.ay
  br i1 %or.cond639, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = add i64 %.sroa.0222.0516.us, %.sroa.0188.0 ; 3 uses
  %i.ch = sub i64 %i.cg, %i.o                     ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.q
  br i1 %i.ci, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us: ; preds = %bb.x
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, label %.split526

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ch
  %.val49.us = load i64, ptr %i.cj, align 8, !noundef !4
  %.val50.us = load i64, ptr %i.bi, align 8, !noundef !4
  %.not309.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not309.us, label %.split530.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select308.us, 4
  %or.cond312.us = select i1 %i.cd, i1 true, i1 %.not.i59.us
  br i1 %or.cond312.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0222.0516.us546 = phi i64 [ %spec.select308.us547, %bb.z ], [ %.sroa.0222.0.ph628, %.lr.ph.split ] ; 2 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1037
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cl = icmp eq i64 %.sroa.0222.0516.us546, 4   ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0222.0516.us546, 1
  %spec.select308.us547 = select i1 %i.cl, i64 4, i64 %i.cm ; 2 uses
  %.not.i59.us549 = icmp ugt i64 %spec.select308.us547, 4
  %or.cond312.us550 = select i1 %i.cl, i1 true, i1 %.not.i59.us549
  br i1 %or.cond312.us550, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.cn = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cn, label %.loopexit388, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi541, i64 %.sroa.0221.0633)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1042
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1042
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !1042
  store i64 %.sroa.0221.0633, ptr %i.aa, align 8, !noalias !1042
  store i64 %.us-phi541, ptr %i.ab, align 8, !noalias !1042
  %i.co = trunc nuw i64 %.sroa.023.1.i.ph630 to i1
  br i1 %i.co, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1042
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph631, i64 %.sroa.525.2.i.ph629)
  store i64 %.sroa.12.2.i.ph632, ptr %i.e, align 8, !noalias !1042
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !1042
  store i64 %.sroa.525.2.i.ph629, ptr %i.ad, align 8, !noalias !1042
  store i64 %.sroa.9.2.i.ph631, ptr %i.ae, align 8, !noalias !1042
  %i.cp = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph632
  %i.cq = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph632
  %i.cr = zext i1 %i.cq to i8
  br i1 %i.cp, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cs = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !1037 ; 2 uses
  %.not7.i = icmp eq i8 %i.cs, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ct = icmp eq i64 %.sroa.0221.0633, %.sroa.525.2.i.ph629
  %i.cu = icmp ugt i64 %.sroa.0221.0633, %.sroa.525.2.i.ph629
  %i.cv = zext i1 %i.cu to i8
  br i1 %i.ct, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.af:                                            ; preds = %bb.ae
  %i.cw = icmp ugt i64 %.us-phi541, %.sroa.9.2.i.ph631
  %i.cx = zext i1 %i.cw to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cr, %bb.ac ], [ %i.cs, %bb.ad ], [ %i.cx, %bb.af ], [ %i.cv, %bb.ae ]
  %i.cy = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1042
  br i1 %i.cy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph629, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0221.0633, %bb.ab ], [ %.sroa.0221.0633, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph631, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.us-phi541, %bb.ab ], [ %.us-phi541, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph632, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1042
  br label %.outer

bb.ai:                                            ; preds = %.loopexit388
  %.pre = load ptr, ptr %0, align 8, !noalias !1043 ; 6 uses
  br i1 %i.bm, label %._crit_edge871, label %bb.am

._crit_edge871:                                   ; preds = %bb.ai
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %.pre872 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1044, !noalias !1045
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit388
  br i1 %i.bm, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %._crit_edge871, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67
  %i.cz = phi i64 [ %i.eu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.ef, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %i.dv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre872, %._crit_edge871 ] ; 3 uses
  %i.da = phi ptr [ %i.eg, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.dw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %._crit_edge871 ] ; 3 uses
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0188.0     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %i.df = load i64, ptr %i.dd, align 8, !range !7, !alias.scope !1044, !noalias !1045, !noundef !4
  %i.dg = icmp eq i64 %i.cz, %i.df
  br i1 %i.dg, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd), !noalias !1046
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66: ; preds = %bb.ak, %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !1044, !noalias !1045, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.cz ; 4 uses
  store i64 0, ptr %i.dj, align 8, !noalias !1045
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.db, ptr %.sroa.4234.0..sroa_idx, align 8, !noalias !1045
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dc, ptr %.sroa.5235.0..sroa_idx, align 8, !noalias !1045
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6236.0..sroa_idx, align 8, !noalias !1045
  %i.dk = add i64 %i.cz, 1
  store i64 %i.dk, ptr %i.de, align 8, !alias.scope !1044, !noalias !1045
  %i.dl = add i64 %i.db, %.sroa.12.1.i
  %i.dm = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 120 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 136 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !1047, !noalias !1048, !noundef !4 ; 3 uses
  %i.dq = load i64, ptr %i.dn, align 8, !range !7, !alias.scope !1047, !noalias !1048, !noundef !4
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn), !noalias !1049
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.am, %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !1047, !noalias !1048, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dp ; 4 uses
  store i64 2, ptr %i.du, align 8, !noalias !1048
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4264.0..sroa_idx, align 8, !noalias !1048
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5265.0..sroa_idx, align 8, !noalias !1048
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6266.0..sroa_idx, align 8, !noalias !1048
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !1047, !noalias !1048
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1051), !noalias !1043
  %i.dw = load ptr, ptr %0, align 8, !alias.scope !1052, !noalias !1043, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 136 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1053, !noalias !1054, !noundef !4 ; 3 uses
  %i.ea = load i64, ptr %i.dx, align 8, !range !7, !alias.scope !1053, !noalias !1054, !noundef !4
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx), !noalias !1055
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !1053, !noalias !1054, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !1054
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4249.0..sroa_idx, align 8, !noalias !1054
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5250.0..sroa_idx, align 8, !noalias !1054
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6251.0..sroa_idx, align 8, !noalias !1054
  %i.ef = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.dy, align 8, !alias.scope !1053, !noalias !1054
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057), !noalias !1043
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !1058, !noalias !1043, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !1059, !noalias !1060, !noundef !4 ; 4 uses
  %i.ek = load i64, ptr %i.eh, align 8, !range !7, !alias.scope !1059, !noalias !1060, !noundef !4
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1061
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !1059, !noalias !1060, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ej ; 4 uses
  store i64 1, ptr %i.eo, align 8, !noalias !1060
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4269.0..sroa_idx, align 8, !noalias !1060
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5270.0..sroa_idx, align 8, !noalias !1060
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6271.0..sroa_idx, align 8, !noalias !1060
  %i.ep = add i64 %i.ej, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !1059, !noalias !1060
  %i.eq = load i64, ptr %i.eh, align 8, !range !7, !alias.scope !1062, !noalias !1060, !noundef !4
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1063
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !1062, !noalias !1060, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.ep ; 4 uses
  store i64 2, ptr %i.et, align 8, !noalias !1060
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %i.xj, i64 %i.xf ; 4 uses
  store i64 2, ptr %i.xk, align 8, !noalias !1096
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !1096
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !1096
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store i64 %i.xb, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !1096
  %i.xl = add i64 %i.xf, 1
  store i64 %i.xl, ptr %i.xe, align 8, !alias.scope !1097, !noalias !1096
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.xm = load ptr, ptr %0, align 8, !alias.scope !1101, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 120 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 136 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !1102, !noalias !1101, !noundef !4 ; 3 uses
  %i.xq = load i64, ptr %i.xn, align 8, !range !7, !alias.scope !1102, !noalias !1101, !noundef !4
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xn), !noalias !1103
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155: ; preds = %bb.gx, %bb.gy
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !1102, !noalias !1101, !nonnull !4, !noundef !4
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.xt, i64 %i.xp ; 4 uses
  store i64 0, ptr %i.xu, align 8, !noalias !1101
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 %i.l, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !1101
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store i64 %i.m, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !1101
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  store i64 %i.k, ptr %.sroa.6231.0..sroa_idx, align 8, !noalias !1101
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !1102, !noalias !1101
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1305 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1308, !nonnull !4, !align !6, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1309, !noalias !1308, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1310, !noalias !1311, !noundef !4 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !7, !alias.scope !1310, !noalias !1311, !noundef !4
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !1312
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1310, !noalias !1311, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !1311
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1311
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1311
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1311
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !1310, !noalias !1311
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0195.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0195.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0195.0, %i.m        ; 3 uses
  %or.cond312 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond312, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0195.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0195.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa485 = phi i64 [ %.sroa.525.2.i.ph636, %bb.o ], [ %.sroa.525.2.i.ph636, %bb.z ], [ %.sroa.525.2.i.ph636, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa478 = phi i64 [ %.sroa.023.1.i.ph637, %bb.o ], [ %.sroa.023.1.i.ph637, %bb.z ], [ %.sroa.023.1.i.ph637, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa471 = phi i64 [ %.sroa.9.2.i.ph638, %bb.o ], [ %.sroa.9.2.i.ph638, %bb.z ], [ %.sroa.9.2.i.ph638, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa464 = phi i64 [ %.sroa.12.2.i.ph639, %bb.o ], [ %.sroa.12.2.i.ph639, %bb.z ], [ %.sroa.12.2.i.ph639, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select313, 4
  %or.cond318 = or i1 %i.bd, %.not.i57
  br i1 %or.cond318, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i644 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.9.0.i643 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa471, %.loopexit ]
  %.sroa.023.0.i642 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa478, %.loopexit ]
  %.sroa.525.0.i641 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa485, %.loopexit ]
  %.sroa.0228.0640 = phi i64 [ 0, %bb.k ], [ %spec.select313, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0228.0640, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0228.0640, 1
  %spec.select313 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0228.0640, 0
  %i.bg = add i64 %.sroa.0228.0640, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa478 to i1
  br i1 %i.bl, label %.loopexit395, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit395:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa485, %bb.m ], [ %.sroa.0228.0640, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa471, %bb.m ], [ %.us-phi548, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa464, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0229.0523 = phi i64 [ %spec.select315, %bb.o ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0229.0523, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0229.0523, 1
  %spec.select315 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1313
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not647 = icmp eq i64 %.sroa.0229.0523, 0
  br i1 %.not647, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond319 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond319, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1078

.split.loopexit1078:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0195.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1078
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1078 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1314
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1315
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i32, ptr %i.bc, align 4, !noundef !4
  %.val50 = load i32, ptr %i.bj, align 4, !noundef !4
  %.not316 = icmp eq i32 %.val49, %.val50
  br i1 %.not316, label %.split537, label %bb.o

.split537.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre878 = sub i64 %i.m, %i.ch
  br label %.split537

.split537:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split537.loopexit
  %.pre-phi = phi i64 [ %.pre878, %.split537.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi543 = phi i64 [ %i.ch, %.split537.loopexit ], [ %.sroa.0195.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi546 = phi i1 [ %i.ce, %.split537.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi547 = phi i64 [ %spec.select315.us, %.split537.loopexit ], [ %spec.select315, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi548 = phi i64 [ %.sroa.0229.0523.us, %.split537.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not648 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not648, label %.outer, label %.lr.ph632

.lr.ph632:                                        ; preds = %.split537
  %i.bs = sub i64 %.us-phi543, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph632, %bb.v
  %.sroa.01.0.i631 = phi i64 [ 0, %.lr.ph632 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i631, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1313
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i631     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1316
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29: ; preds = %bb.s
  %i.by = add nuw i64 %i.bh, %.sroa.01.0.i631     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.w
  br i1 %i.bz, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %umax877 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bh)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax877, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !1317
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.by
  %.val47 = load i32, ptr %i.ca, align 4, !noundef !4
  %.val48 = load i32, ptr %i.cb, align 4, !noundef !4
  %.not317 = icmp eq i32 %.val47, %.val48
  br i1 %.not317, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.cc = add nuw i64 %.sroa.01.0.i631, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i631, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ] ; 8 uses
  %i.cd = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cd, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split537, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph636, %._crit_edge ], [ %.sroa.525.2.i.ph636, %.split537 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph637, %._crit_edge ], [ %.sroa.023.1.i.ph637, %.split537 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph638, %._crit_edge ], [ %.sroa.9.2.i.ph638, %.split537 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph639, %._crit_edge ], [ %.sroa.12.2.i.ph639, %.split537 ] ; 2 uses
  %.not.i59521 = icmp ugt i64 %.us-phi547, 4
  %or.cond319522 = select i1 %.us-phi546, i1 true, i1 %.not.i59521
  br i1 %or.cond319522, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph639 = phi i64 [ %.sroa.12.0.i644, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph638 = phi i64 [ %.sroa.9.0.i643, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph637 = phi i64 [ %.sroa.023.0.i642, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph636 = phi i64 [ %.sroa.525.0.i641, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0229.0.ph635 = phi i64 [ 0, %bb.l ], [ %.us-phi547, %.outer ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0229.0523.us = phi i64 [ %spec.select315.us, %bb.y ], [ %.sroa.0229.0.ph635, %.lr.ph ] ; 5 uses
  %i.ce = icmp eq i64 %.sroa.0229.0523.us, 4      ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.0229.0523.us, 1
  %spec.select315.us = select i1 %i.ce, i64 4, i64 %i.cf ; 3 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1313
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0229.0523.us, 0
  %or.cond646 = and i1 %or.cond2.i.us, %i.az
  br i1 %or.cond646, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = add i64 %.sroa.0229.0523.us, %.sroa.0195.0 ; 3 uses
  %i.ci = sub i64 %i.ch, %i.o                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.q
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us: ; preds = %bb.x
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, label %.split533

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ci
  %.val49.us = load i32, ptr %i.ck, align 4, !noundef !4
  %.val50.us = load i32, ptr %i.bj, align 4, !noundef !4
  %.not316.us = icmp eq i32 %.val49.us, %.val50.us
  br i1 %.not316.us, label %.split537.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select315.us, 4
  %or.cond319.us = select i1 %i.ce, i1 true, i1 %.not.i59.us
  br i1 %or.cond319.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0229.0523.us553 = phi i64 [ %spec.select315.us554, %bb.z ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 2 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1313
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = icmp eq i64 %.sroa.0229.0523.us553, 4   ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0229.0523.us553, 1
  %spec.select315.us554 = select i1 %i.cm, i64 4, i64 %i.cn ; 2 uses
  %.not.i59.us556 = icmp ugt i64 %spec.select315.us554, 4
  %or.cond319.us557 = select i1 %i.cm, i1 true, i1 %.not.i59.us556
  br i1 %or.cond319.us557, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.co = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.co, label %.loopexit395, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi548, i64 %.sroa.0228.0640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1318
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1318
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !1318
  store i64 %.sroa.0228.0640, ptr %i.aa, align 8, !noalias !1318
  store i64 %.us-phi548, ptr %i.ab, align 8, !noalias !1318
  %i.cp = trunc nuw i64 %.sroa.023.1.i.ph637 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1318
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph638, i64 %.sroa.525.2.i.ph636)
  store i64 %.sroa.12.2.i.ph639, ptr %i.e, align 8, !noalias !1318
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !1318
  store i64 %.sroa.525.2.i.ph636, ptr %i.ad, align 8, !noalias !1318
  store i64 %.sroa.9.2.i.ph638, ptr %i.ae, align 8, !noalias !1318
  %i.cq = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph639
  %i.cr = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph639
  %i.cs = zext i1 %i.cr to i8
  br i1 %i.cq, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !1313 ; 2 uses
  %.not7.i = icmp eq i8 %i.ct, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %.sroa.0228.0640, %.sroa.525.2.i.ph636
  %i.cv = icmp ugt i64 %.sroa.0228.0640, %.sroa.525.2.i.ph636
  %i.cw = zext i1 %i.cv to i8
  br i1 %i.cu, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ugt i64 %.us-phi548, %.sroa.9.2.i.ph638
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cy, %bb.af ], [ %i.cw, %bb.ae ]
  %i.cz = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1318
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph636, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0228.0640, %bb.ab ], [ %.sroa.0228.0640, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph638, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.us-phi548, %bb.ab ], [ %.us-phi548, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph639, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1318
  br label %.outer

bb.ai:                                            ; preds = %.loopexit395
  %.pre = load ptr, ptr %0, align 8, !noalias !1319 ; 3 uses
  br i1 %i.bn, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit395
  br i1 %i.bn, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.ai
  %i.da = phi ptr [ %i.ek, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70 ], [ %i.dz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %bb.ai ]
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0195.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1320), !noalias !1319
  %i.dd = load ptr, ptr %i.da, align 8, !alias.scope !1320, !noalias !1321, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !1322, !noalias !1323, !noundef !4 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !7, !alias.scope !1322, !noalias !1323, !noundef !4
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de), !noalias !1324
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66: ; preds = %bb.ak, %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !1322, !noalias !1323, !nonnull !4, !noundef !4
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !1323
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.db, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !1323
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dc, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !1323
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !1323
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.df, align 8, !alias.scope !1322, !noalias !1323
  %i.dn = add i64 %i.db, %.sroa.12.1.i
  %i.do = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1325), !noalias !1319
  %i.dp = load ptr, ptr %.pre, align 8, !alias.scope !1325, !noalias !1326, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !1327, !noalias !1328, !noundef !4 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !7, !alias.scope !1327, !noalias !1328, !noundef !4
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq), !noalias !1329
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.am, %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !1327, !noalias !1328, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.ds ; 4 uses
  store i64 2, ptr %i.dx, align 8, !noalias !1328
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !1328
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !1328
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !1328
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !1327, !noalias !1328
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331), !noalias !1319
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !1332, !noalias !1319, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1333), !noalias !1319
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !1333, !noalias !1334, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !1335, !noalias !1336, !noundef !4 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !7, !alias.scope !1335, !noalias !1336, !noundef !4
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !1337
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !1335, !noalias !1336, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !1336
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8, !noalias !1336
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5257.0..sroa_idx, align 8, !noalias !1336
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6258.0..sroa_idx, align 8, !noalias !1336
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339), !noalias !1319
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !1340, !noalias !1319, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1341), !noalias !1319
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !1341, !noalias !1342, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1343, !noalias !1344, !noundef !4 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !7, !alias.scope !1343, !noalias !1344, !noundef !4
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !1345
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !1343, !noalias !1344, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !1344
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !1344
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !1344
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !1344
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !1343, !noalias !1344
  %i.ev = load i64, ptr %i.em, align 8, !range !7, !alias.scope !1346, !noalias !1344, !noundef !4
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !1347
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
end_hunk_4
begin_hunk_5_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  store i64 2, ptr %i.zt, align 8, !noalias !1409
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !1409
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !1409
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !1409
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !1408, !noalias !1409
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !1413, !nonnull !4, !align !6, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !1414, !noalias !1413, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !1415, !noalias !1416, !noundef !4 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !7, !alias.scope !1415, !noalias !1416, !noundef !4
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !1417
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !1415, !noalias !1416, !nonnull !4, !noundef !4
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !1416
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !1416
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !1416
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6238.0..sroa_idx, align 8, !noalias !1416
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !1415, !noalias !1416
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1496 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4 ; 10 uses
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
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1497, !noundef !4 ; 3 uses
  %i.al = load i64, ptr %i.ai, align 8, !range !7, !alias.scope !1497, !noundef !4
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai), !noalias !1498
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1497, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.ak ; 4 uses
  store i64 0, ptr %i.ap, align 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %2, ptr %.sroa.4232.0..sroa_idx, align 8
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %5, ptr %.sroa.5233.0..sroa_idx, align 8
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.h, ptr %.sroa.6234.0..sroa_idx, align 8
  %i.aq = add i64 %i.ak, 1
  store i64 %i.aq, ptr %i.aj, align 8, !alias.scope !1497
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0186.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0186.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit ] ; 39 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit ] ; 31 uses
  %i.ar = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.as = icmp ult i64 %.sroa.0186.0, %i.m        ; 3 uses
  %or.cond303 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond303, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ar, label %bb.aq, label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.at = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.au = sub nuw i64 %i.m, %.sroa.0186.0         ; 6 uses
  %i.av = icmp ult i64 %i.at, 97
  %i.aw = icmp ult i64 %i.au, 97
  %or.cond.i = or i1 %i.aw, %i.av
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i51 = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.at) ; 2 uses
  %.sroa.0.0.i52 = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %i.at)
  %i.ax = shl nuw i64 %.sroa.0.0.i51, 1
  %i.ay = icmp slt i64 %.sroa.0.0.i51, 0
  br i1 %i.ay, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.ax, %bb.h ]
  %i.az = icmp ult i64 %.sroa.0.0.i52, %.sroa.052.0.i
  br i1 %i.az, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.au, %i.at
  %i.ba = icmp ule i64 %i.at, %i.au
  %.not.i.fr = freeze i1 %.not.i
  %i.bb = sub i64 %.sroa.0186.0, %i.o             ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.q
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bb
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa476 = phi i64 [ %.sroa.525.2.i.ph627, %bb.o ], [ %.sroa.525.2.i.ph627, %bb.z ], [ %.sroa.525.2.i.ph627, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa469 = phi i64 [ %.sroa.023.1.i.ph628, %bb.o ], [ %.sroa.023.1.i.ph628, %bb.z ], [ %.sroa.023.1.i.ph628, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa462 = phi i64 [ %.sroa.9.2.i.ph629, %bb.o ], [ %.sroa.9.2.i.ph629, %bb.z ], [ %.sroa.9.2.i.ph629, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa455 = phi i64 [ %.sroa.12.2.i.ph630, %bb.o ], [ %.sroa.12.2.i.ph630, %bb.z ], [ %.sroa.12.2.i.ph630, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i55 = icmp ugt i64 %spec.select304, 4
  %or.cond309 = or i1 %i.be, %.not.i55
  br i1 %or.cond309, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i635 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa455, %.loopexit ]
  %.sroa.9.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa462, %.loopexit ]
  %.sroa.023.0.i633 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa469, %.loopexit ]
  %.sroa.525.0.i632 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa476, %.loopexit ]
  %.sroa.0219.0631 = phi i64 [ 0, %bb.k ], [ %spec.select304, %.loopexit ] ; 11 uses
  %i.be = icmp eq i64 %.sroa.0219.0631, 4         ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.0219.0631, 1
  %spec.select304 = select i1 %i.be, i64 4, i64 %i.bf ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0219.0631, 0
  %i.bh = add i64 %.sroa.0219.0631, %.sroa.0.0    ; 2 uses
  %i.bi = sub i64 %i.bh, %i.u                     ; 5 uses
  %i.bj = icmp ult i64 %i.bi, %i.w                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bi ; 2 uses
  %i.bl = sub i64 %i.l, %i.bh
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bm = trunc nuw i64 %.sroa.023.1.i.ph.lcssa469 to i1
  br i1 %i.bm, label %.loopexit386, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit

.loopexit386:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa476, %bb.m ], [ %.sroa.0219.0631, %bb.aa ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa462, %bb.m ], [ %.us-phi539, %bb.aa ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa455, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.525.1.i, 0
  %i.bo = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre = load i64, ptr %i.ag, align 8, !noalias !1499 ; 10 uses
  br i1 %i.bn, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0220.0514 = phi i64 [ %spec.select306, %bb.o ], [ %.sroa.0220.0.ph626, %.lr.ph.split ] ; 3 uses
  %i.bp = icmp eq i64 %.sroa.0220.0514, 4         ; 3 uses
  %i.bq = add nuw nsw i64 %.sroa.0220.0514, 1
  %spec.select306 = select i1 %i.bp, i64 4, i64 %i.bq ; 3 uses
  %i.br = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1500
  br i1 %i.br, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not638 = icmp eq i64 %.sroa.0220.0514, 0
  br i1 %.not638, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond310 = select i1 %i.bp, i1 true, i1 %.not.i57
  br i1 %or.cond310, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1081

.split.loopexit1081:                              ; preds = %bb.p
  %i.bs = sub i64 %.sroa.0186.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1081
  %.us-phi = phi i64 [ %i.bs, %.split.loopexit1081 ], [ %i.cj, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1501
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split524

.split524:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1502
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i32, ptr %i.bd, align 4, !noundef !4
  %.val50 = load i32, ptr %i.bk, align 4, !noundef !4
  %.not307 = icmp eq i32 %.val49, %.val50
  br i1 %.not307, label %.split528, label %bb.o

.split528.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre869 = sub i64 %i.m, %i.ci
  br label %.split528

.split528:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split528.loopexit
  %.pre-phi = phi i64 [ %.pre869, %.split528.loopexit ], [ %i.au, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi534 = phi i64 [ %i.ci, %.split528.loopexit ], [ %.sroa.0186.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi537 = phi i1 [ %i.cf, %.split528.loopexit ], [ %i.bp, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi538 = phi i64 [ %spec.select306.us, %.split528.loopexit ], [ %spec.select306, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi539 = phi i64 [ %.sroa.0220.0514.us, %.split528.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i61 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bl) ; 3 uses
  %.not639 = icmp eq i64 %.sroa.0.0.i61, 0
  br i1 %.not639, label %.outer, label %.lr.ph623

.lr.ph623:                                        ; preds = %.split528
  %i.bt = sub i64 %.us-phi534, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph623, %bb.v
  %.sroa.01.0.i622 = phi i64 [ 0, %.lr.ph623 ], [ %i.cd, %bb.v ] ; 5 uses
  %i.bu = and i64 %.sroa.01.0.i622, 1023
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1500
  br i1 %i.bw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = add nuw i64 %i.bt, %.sroa.01.0.i622     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.q
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bt)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1503
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29: ; preds = %bb.s
  %i.bz = add nuw i64 %i.bi, %.sroa.01.0.i622     ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.w
  br i1 %i.ca, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %umax868 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bi)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax868, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !1504
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bx
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bz
  %.val47 = load i32, ptr %i.cb, align 4, !noundef !4
  %.val48 = load i32, ptr %i.cc, align 4, !noundef !4
  %.not308 = icmp eq i32 %.val47, %.val48
  br i1 %.not308, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.cd = add nuw i64 %.sroa.01.0.i622, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %.sroa.0.0.i61
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i61, %bb.v ], [ %.sroa.01.0.i622, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ] ; 8 uses
  %i.ce = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.ce, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split528, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph627, %._crit_edge ], [ %.sroa.525.2.i.ph627, %.split528 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph628, %._crit_edge ], [ %.sroa.023.1.i.ph628, %.split528 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph629, %._crit_edge ], [ %.sroa.9.2.i.ph629, %.split528 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph630, %._crit_edge ], [ %.sroa.12.2.i.ph630, %.split528 ] ; 2 uses
  %.not.i57512 = icmp ugt i64 %.us-phi538, 4
  %or.cond310513 = select i1 %.us-phi537, i1 true, i1 %.not.i57512
  br i1 %or.cond310513, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph630 = phi i64 [ %.sroa.12.0.i635, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph629 = phi i64 [ %.sroa.9.0.i634, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph628 = phi i64 [ %.sroa.023.0.i633, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph627 = phi i64 [ %.sroa.525.0.i632, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0220.0.ph626 = phi i64 [ 0, %bb.l ], [ %.us-phi538, %.outer ] ; 3 uses
  br i1 %i.bg, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0220.0514.us = phi i64 [ %spec.select306.us, %bb.y ], [ %.sroa.0220.0.ph626, %.lr.ph ] ; 5 uses
  %i.cf = icmp eq i64 %.sroa.0220.0514.us, 4      ; 3 uses
  %i.cg = add nuw nsw i64 %.sroa.0220.0514.us, 1
  %spec.select306.us = select i1 %i.cf, i64 4, i64 %i.cg ; 3 uses
  %i.ch = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1500
  br i1 %i.ch, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0220.0514.us, 0
  %or.cond637 = and i1 %or.cond2.i.us, %i.ba
  br i1 %or.cond637, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = add i64 %.sroa.0220.0514.us, %.sroa.0186.0 ; 3 uses
  %i.cj = sub i64 %i.ci, %i.o                     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.q
  br i1 %i.ck, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us: ; preds = %bb.x
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, label %.split524

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cj
  %.val49.us = load i32, ptr %i.cl, align 4, !noundef !4
  %.val50.us = load i32, ptr %i.bk, align 4, !noundef !4
  %.not307.us = icmp eq i32 %.val49.us, %.val50.us
  br i1 %.not307.us, label %.split528.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us, %bb.w
  %.not.i57.us = icmp ugt i64 %spec.select306.us, 4
  %or.cond310.us = select i1 %i.cf, i1 true, i1 %.not.i57.us
  br i1 %or.cond310.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0220.0514.us544 = phi i64 [ %spec.select306.us545, %bb.z ], [ %.sroa.0220.0.ph626, %.lr.ph.split ] ; 2 uses
  %i.cm = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1500
  br i1 %i.cm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cn = icmp eq i64 %.sroa.0220.0514.us544, 4   ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.0220.0514.us544, 1
  %spec.select306.us545 = select i1 %i.cn, i64 4, i64 %i.co ; 2 uses
  %.not.i57.us547 = icmp ugt i64 %spec.select306.us545, 4
  %or.cond310.us548 = select i1 %i.cn, i1 true, i1 %.not.i57.us547
  br i1 %or.cond310.us548, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.cp = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cp, label %.loopexit386, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i62 = call noundef i64 @llvm.umax.i64(i64 %.us-phi539, i64 %.sroa.0219.0631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1505
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1505
  store i64 %.sroa.0.0.i62, ptr %i.z, align 8, !noalias !1505
  store i64 %.sroa.0219.0631, ptr %i.aa, align 8, !noalias !1505
  store i64 %.us-phi539, ptr %i.ab, align 8, !noalias !1505
  %i.cq = trunc nuw i64 %.sroa.023.1.i.ph628 to i1
  br i1 %i.cq, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1505
  %.sroa.0.0.i63 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph629, i64 %.sroa.525.2.i.ph627)
  store i64 %.sroa.12.2.i.ph630, ptr %i.e, align 8, !noalias !1505
  store i64 %.sroa.0.0.i63, ptr %i.ac, align 8, !noalias !1505
  store i64 %.sroa.525.2.i.ph627, ptr %i.ad, align 8, !noalias !1505
  store i64 %.sroa.9.2.i.ph629, ptr %i.ae, align 8, !noalias !1505
  %i.cr = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph630
  %i.cs = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph630
  %i.ct = zext i1 %i.cs to i8
  br i1 %i.cr, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cu = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !1500 ; 2 uses
  %.not7.i = icmp eq i8 %i.cu, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cv = icmp eq i64 %.sroa.0219.0631, %.sroa.525.2.i.ph627
  %i.cw = icmp ugt i64 %.sroa.0219.0631, %.sroa.525.2.i.ph627
  %i.cx = zext i1 %i.cw to i8
  br i1 %i.cv, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp ugt i64 %.us-phi539, %.sroa.9.2.i.ph629
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.ct, %bb.ac ], [ %i.cu, %bb.ad ], [ %i.cz, %bb.af ], [ %i.cx, %bb.ae ]
  %i.da = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1505
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph627, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0219.0631, %bb.ab ], [ %.sroa.0219.0631, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph629, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.us-phi539, %bb.ab ], [ %.us-phi539, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph630, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1505
  br label %.outer

bb.ai:                                            ; preds = %.loopexit386
  br i1 %i.bo, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit386
  %i.db = load i64, ptr %i.af, align 8, !range !7, !noalias !1499, !noundef !4
  %i.dc = icmp eq i64 %.pre, %i.db                ; 2 uses
  br i1 %i.bo, label %bb.an, label %bb.ao

.sink.split.sink.split:                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.an, %bb.am
  %.pre.sink.ph = phi i64 [ %.pre, %bb.an ], [ %.pre, %bb.am ], [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sink1262.ph = phi i64 [ 1, %bb.an ], [ 2, %bb.am ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sroa.0186.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.an ], [ %.sroa.0186.0, %bb.am ], [ %.sroa.0186.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0186.0, %bb.an ], [ %.sroa.9.1.i, %bb.am ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sink1259.ph = phi i64 [ 1, %bb.an ], [ 1, %bb.am ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1499
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.an, %bb.am
  %.pre.sink = phi i64 [ %.pre, %bb.an ], [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %bb.am ], [ %.pre.sink.ph, %.sink.split.sink.split ]
  %.sink1262 = phi i64 [ 1, %bb.an ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ 2, %bb.am ], [ %.sink1262.ph, %.sink.split.sink.split ]
  %.sroa.0186.0.sink = phi i64 [ %.sroa.525.1.i, %bb.an ], [ %.sroa.0186.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.sroa.0186.0, %bb.am ], [ %.sroa.0186.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0186.0, %bb.an ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.sroa.9.1.i, %bb.am ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink1259 = phi i64 [ 1, %bb.an ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ 1, %bb.am ], [ %.sink1259.ph, %.sink.split.sink.split ]
  %i.dd = load ptr, ptr %i.ah, align 8, !noalias !1499, !nonnull !4, !noundef !4
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %.pre.sink ; 4 uses
  store i64 %.sink1262, ptr %i.de, align 8, !noalias !1499
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4252.0..sroa_idx, align 8, !noalias !1499
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.sroa.0186.0.sink, ptr %.sroa.5253.0..sroa_idx, align 8, !noalias !1499
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6254.0..sroa_idx, align 8, !noalias !1499
  %i.df = add i64 %.pre, %.sink1259               ; 2 uses
  store i64 %i.df, ptr %i.ag, align 8, !noalias !1499
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ai
  %i.dg = phi i64 [ %.pre, %bb.ai ], [ %i.df, %.sink.split ] ; 3 uses
  %i.dh = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.di = add i64 %.sroa.9.1.i, %.sroa.0186.0     ; 2 uses
  %i.dj = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1506, !noalias !1499, !noundef !4
  %i.dk = icmp eq i64 %i.dg, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1507
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64: ; preds = %bb.ak, %bb.al
  %i.dl = load ptr, ptr %i.ah, align 8, !alias.scope !1506, !noalias !1499, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dm, align 8, !noalias !1499
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.dh, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1499
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.di, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1499
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1499
  %i.dn = add i64 %i.dg, 1
  store i64 %i.dn, ptr %i.ag, align 8, !alias.scope !1506, !noalias !1499
  %i.do = add i64 %i.dh, %.sroa.12.1.i
  %i.dp = add i64 %i.di, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  %i.dq = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1508, !noalias !1499, !noundef !4
  %i.dr = icmp eq i64 %.pre, %i.dq
  br i1 %i.dr, label %.sink.split.sink.split, label %.sink.split

bb.an:                                            ; preds = %bb.aj
  br i1 %i.dc, label %.sink.split.sink.split, label %.sink.split

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.dc, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1509
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.ao, %bb.ap
  %i.ds = load ptr, ptr %i.ah, align 8, !alias.scope !1510, !noalias !1499, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %.pre ; 4 uses
  store i64 1, ptr %i.dt, align 8, !noalias !1499
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4267.0..sroa_idx, align 8, !noalias !1499
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5268.0..sroa_idx, align 8, !noalias !1499
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i64 %.sroa.0186.0, ptr %.sroa.6269.0..sroa_idx, align 8, !noalias !1499
  %i.du = add i64 %.pre, 1                        ; 4 uses
  store i64 %i.du, ptr %i.ag, align 8, !alias.scope !1510, !noalias !1499
  %i.dv = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1511, !noalias !1499, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64
  %.sroa.0186.2 = phi i64 [ %.sroa.0186.0, %bb.g ], [ %.sroa.0186.0, %bb.j ], [ %.sroa.0186.0, %bb.m ], [ %i.dp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64 ], [ %.sroa.0186.0, %.lr.ph.split.split ], [ %.sroa.0186.0, %.lr.ph.split.us ], [ %.sroa.0186.0, %bb.r ], [ %.sroa.0186.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.do, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.dx = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.dy = icmp eq i64 %.sroa.0186.2, %.sroa.0186.0
  %or.cond = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.aq:                                            ; preds = %bb.f
  br i1 %i.as, label %bb.av, label %bb.at

bb.ar:                                            ; preds = %bb.f
  br i1 %i.as, label %.thread, label %bb.as

bb.as:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread300, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit151, %bb.gn, %bb.ar
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gu, label %bb.gs

bb.at:                                            ; preds = %bb.aq
  %i.dz = sub nuw i64 %i.l, %.sroa.0.0
  %i.ea = load i64, ptr %i.ag, align 8, !alias.scope !1512, !noundef !4 ; 3 uses
  %i.eb = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1512, !noundef !4
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1513
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.at, %bb.au
  %i.ed = load ptr, ptr %i.ah, align 8, !alias.scope !1512, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.ea ; 4 uses
  store i64 1, ptr %i.ee, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %i.dz, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0186.0, ptr %.sroa.6244.0..sroa_idx, align 8
  %i.ef = add i64 %i.ea, 1
  store i64 %i.ef, ptr %i.ag, align 8, !alias.scope !1512
  br label %bb.as

bb.av:                                            ; preds = %bb.aq
  %i.eg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1514
  br i1 %i.eg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.aw
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest:bb.a
  %i.vf = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1537, !noundef !4
  %i.vg = icmp eq i64 %i.ve, %i.vf
  br i1 %i.vg, label %bb.gp, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit150

bb.gp:                                            ; preds = %bb.go
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1538
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit150

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit150: ; preds = %bb.go, %bb.gp
  %i.vh = load ptr, ptr %i.ah, align 8, !alias.scope !1537, !nonnull !4, !noundef !4
  %i.vi = getelementptr inbounds nuw [40 x i8], ptr %i.vh, i64 %i.ve ; 4 uses
  store i64 1, ptr %i.vi, align 8
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4247.0..sroa_idx, align 8
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store i64 %i.vd, ptr %.sroa.5248.0..sroa_idx, align 8
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store i64 %.sroa.0186.0, ptr %.sroa.6249.0..sroa_idx, align 8
  %i.vj = add i64 %i.ve, 1                        ; 3 uses
  store i64 %i.vj, ptr %i.ag, align 8, !alias.scope !1537
  %i.vk = sub nuw i64 %i.m, %.sroa.0186.0
  %i.vl = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1539, !noundef !4
  %i.vm = icmp eq i64 %i.vj, %i.vl
  br i1 %i.vm, label %bb.gq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit151

bb.gq:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit150
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1540
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit151

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit151: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit150, %bb.gq
  %i.vn = load ptr, ptr %i.ah, align 8, !alias.scope !1539, !nonnull !4, !noundef !4
  %i.vo = getelementptr inbounds nuw [40 x i8], ptr %i.vn, i64 %i.vj ; 4 uses
  store i64 2, ptr %i.vo, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4262.0..sroa_idx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store i64 %.sroa.0186.0, ptr %.sroa.5263.0..sroa_idx, align 8
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  store i64 %i.vk, ptr %.sroa.6264.0..sroa_idx, align 8
  %i.vp = add i64 %i.ve, 2
  store i64 %i.vp, ptr %i.ag, align 8, !alias.scope !1539
  br label %bb.as

.thread:                                          ; preds = %bb.ar
  %i.vq = sub nuw i64 %i.m, %.sroa.0186.0
  %i.vr = load i64, ptr %i.ag, align 8, !alias.scope !1541, !noundef !4 ; 3 uses
  %i.vs = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1541, !noundef !4
  %i.vt = icmp eq i64 %i.vr, %i.vs
  br i1 %i.vt, label %bb.gr, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152

bb.gr:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1542
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152: ; preds = %.thread, %bb.gr
  %i.vu = load ptr, ptr %i.ah, align 8, !alias.scope !1541, !nonnull !4, !noundef !4
  %i.vv = getelementptr inbounds nuw [40 x i8], ptr %i.vu, i64 %i.vr ; 4 uses
  store i64 2, ptr %i.vv, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4257.0..sroa_idx, align 8
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store i64 %.sroa.0186.0, ptr %.sroa.5258.0..sroa_idx, align 8
  %.sroa.6259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  store i64 %i.vq, ptr %.sroa.6259.0..sroa_idx, align 8
  %i.vw = add i64 %i.vr, 1
  store i64 %i.vw, ptr %i.ag, align 8, !alias.scope !1541
  br label %bb.as

bb.gs:                                            ; preds = %bb.as
  %i.vx = load i64, ptr %i.ag, align 8, !alias.scope !1543, !noundef !4 ; 3 uses
  %i.vy = load i64, ptr %i.af, align 8, !range !7, !alias.scope !1543, !noundef !4
  %i.vz = icmp eq i64 %i.vx, %i.vy
  br i1 %i.vz, label %bb.gt, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153

bb.gt:                                            ; preds = %bb.gs
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1544
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153: ; preds = %bb.gs, %bb.gt
  %i.wa = load ptr, ptr %i.ah, align 8, !alias.scope !1543, !nonnull !4, !noundef !4
  %i.wb = getelementptr inbounds nuw [40 x i8], ptr %i.wa, i64 %i.vx ; 4 uses
  store i64 0, ptr %i.wb, align 8
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %i.l, ptr %.sroa.4227.0..sroa_idx, align 8
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  store i64 %i.m, ptr %.sroa.5228.0..sroa_idx, align 8
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  store i64 %i.k, ptr %.sroa.6229.0..sroa_idx, align 8
  %i.wc = add i64 %i.vx, 1
  store i64 %i.wc, ptr %i.ag, align 8, !alias.scope !1543
  br label %bb.gu

bb.gu:                                            ; preds = %bb.as, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1780 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.t = load ptr, ptr %0, align 8, !alias.scope !1783, !nonnull !4, !align !6, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1784, !noalias !1783, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1785, !noalias !1786, !noundef !4 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !7, !alias.scope !1785, !noalias !1786, !noundef !4
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !1787
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1785, !noalias !1786, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  store i64 0, ptr %i.ac, align 8, !noalias !1786
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1786
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1786
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1786
  %i.ad = add i64 %i.x, 1
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !1785, !noalias !1786
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0220.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0220.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 35 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 35 uses
  %i.ae = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.af = icmp ult i64 %.sroa.0220.0, %i.m        ; 3 uses
  %or.cond339 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond339, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ae, label %bb.aq, label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.ag = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.ah = sub nuw i64 %i.m, %.sroa.0220.0         ; 5 uses
  %i.ai = icmp ult i64 %i.ag, 97
  %i.aj = icmp ult i64 %i.ah, 97
  %or.cond.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i46 = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag) ; 2 uses
  %.sroa.0.0.i47 = call noundef i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ag)
  %i.ak = shl nuw i64 %.sroa.0.0.i46, 1
  %i.al = icmp slt i64 %.sroa.0.0.i46, 0
  br i1 %i.al, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.ak, %bb.h ]
  %i.am = icmp ult i64 %.sroa.0.0.i47, %.sroa.052.0.i
  br i1 %i.am, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.ah, %i.ag
  %i.an = icmp ule i64 %i.ag, %i.ah
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread
  %.sroa.525.2.i.ph.lcssa447 = phi i64 [ %.sroa.525.2.i.ph480, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa444 = phi i64 [ %.sroa.023.1.i.ph481, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa441 = phi i64 [ %.sroa.9.2.i.ph482, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa438 = phi i64 [ %.sroa.12.2.i.ph483, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i50 = icmp ugt i64 %spec.select340, 4
  %or.cond345 = select i1 %i.ao, i1 true, i1 %.not.i50
  br i1 %or.cond345, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i488 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa438, %.loopexit ]
  %.sroa.9.0.i487 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa441, %.loopexit ]
  %.sroa.023.0.i486 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa444, %.loopexit ]
  %.sroa.525.0.i485 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa447, %.loopexit ]
  %.sroa.0253.0484 = phi i64 [ 0, %bb.k ], [ %spec.select340, %.loopexit ] ; 12 uses
  %i.ao = icmp eq i64 %.sroa.0253.0484, 4         ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0253.0484, 1
  %spec.select340 = select i1 %i.ao, i64 4, i64 %i.ap ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0253.0484, 0
  %i.ar = add i64 %.sroa.0253.0484, %.sroa.0.0    ; 3 uses
  %i.as = sub i64 %i.l, %i.ar
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.at = trunc nuw i64 %.sroa.023.1.i.ph.lcssa444 to i1
  br i1 %i.at, label %.loopexit421, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit421:                                     ; preds = %bb.x, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa447, %bb.m ], [ %.sroa.0253.0484, %bb.x ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa441, %bb.m ], [ %.sroa.0254.0465, %bb.x ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa438, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.x ] ; 3 uses
  %i.au = icmp eq i64 %.sroa.525.1.i, 0
  %i.av = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.au, label %bb.af, label %bb.ag

bb.n:                                             ; preds = %.lr.ph, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread
  %.sroa.0254.0465 = phi i64 [ %.sroa.0254.0.ph479, %.lr.ph ], [ %spec.select342, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ] ; 11 uses
  %i.aw = icmp eq i64 %.sroa.0254.0465, 4         ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.0254.0465, 1
  %spec.select342 = select i1 %i.aw, i64 4, i64 %i.ax ; 4 uses
  %i.ay = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1788
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp eq i64 %.sroa.0254.0465, 0         ; 2 uses
  %i.ba = or i64 %.sroa.0254.0465, %.sroa.0253.0484
  %or.cond2.i = icmp eq i64 %i.ba, 0
  br i1 %or.cond2.i, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.aq, label %bb.r, label %bb.q

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.s, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit, %bb.r, %bb.q, %bb.o
  %.not.i52 = icmp ugt i64 %spec.select342, 4
  %or.cond346 = select i1 %i.aw, i1 true, i1 %.not.i52
  br i1 %or.cond346, label %.loopexit, label %bb.n

bb.q:                                             ; preds = %bb.p
  %brmerge.i.not = and i1 %.not.i, %i.az
  br i1 %brmerge.i.not, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

bb.r:                                             ; preds = %bb.p
  %or.cond3.old.i = or i1 %i.an, %i.az
  br i1 %or.cond3.old.i, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = add i64 %.sroa.0254.0465, %.sroa.0220.0 ; 3 uses
  %i.bc = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !noalias !1788 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 1      ; 2 uses
  %i.be = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80), !noalias !1788 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 1
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.s
  %i.bh = extractvalue { ptr, i64 } %i.be, 0
  %i.bi = extractvalue { ptr, i64 } %i.bc, 0
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.bi, ptr nonnull readonly %i.bh, i64 %i.bd), !alias.scope !1789, !noalias !1788
  %.not343 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not343, label %bb.t, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

bb.t:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit
  %i.bj = sub i64 %i.m, %i.bb
  %.sroa.0.0.i56 = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.as) ; 3 uses
  %.not489 = icmp eq i64 %.sroa.0.0.i56, 0
  br i1 %.not489, label %.outer, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.t, %bb.w
  %.sroa.01.0.i473 = phi i64 [ %i.bw, %bb.w ], [ 0, %bb.t ] ; 6 uses
  %i.bk = and i64 %.sroa.01.0.i473, 1023
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph474
  %i.bm = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1788
  br i1 %i.bm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph474
  %i.bn = add i64 %.sroa.01.0.i473, %i.bb
  %i.bo = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81), !noalias !1788 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1      ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i473, %i.ar
  %i.br = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82), !noalias !1788 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 1
  %i.bt = icmp eq i64 %i.bp, %i.bs
  br i1 %i.bt, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59: ; preds = %bb.v
  %i.bu = extractvalue { ptr, i64 } %i.br, 0
  %i.bv = extractvalue { ptr, i64 } %i.bo, 0
  %bcmp.i.i58 = call i32 @bcmp(ptr nonnull readonly %i.bv, ptr nonnull readonly %i.bu, i64 %i.bp), !alias.scope !1790, !noalias !1788
  %.not344 = icmp eq i32 %bcmp.i.i58, 0
  br i1 %.not344, label %bb.w, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread

bb.w:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59
  %i.bw = add nuw i64 %.sroa.01.0.i473, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %.sroa.0.0.i56
  br i1 %exitcond.not, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread, label %.lr.ph474

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread: ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59, %bb.w, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i473, %bb.v ], [ %.sroa.01.0.i473, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59 ], [ %.sroa.0.0.i56, %bb.w ] ; 8 uses
  %i.bx = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.bx, label %bb.x, label %.outer

.outer:                                           ; preds = %bb.t, %bb.ae, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ae ], [ %.sroa.525.2.i.ph480, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread ], [ %.sroa.525.2.i.ph480, %bb.t ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ae ], [ %.sroa.023.1.i.ph481, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread ], [ %.sroa.023.1.i.ph481, %bb.t ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ae ], [ %.sroa.9.2.i.ph482, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread ], [ %.sroa.9.2.i.ph482, %bb.t ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ae ], [ %.sroa.12.2.i.ph483, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread ], [ %.sroa.12.2.i.ph483, %bb.t ] ; 2 uses
  %.not.i52463 = icmp ugt i64 %spec.select342, 4
  %or.cond346464 = select i1 %i.aw, i1 true, i1 %.not.i52463
  br i1 %or.cond346464, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph483 = phi i64 [ %.sroa.12.0.i488, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 7 uses
  %.sroa.9.2.i.ph482 = phi i64 [ %.sroa.9.0.i487, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 7 uses
  %.sroa.023.1.i.ph481 = phi i64 [ %.sroa.023.0.i486, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 4 uses
  %.sroa.525.2.i.ph480 = phi i64 [ %.sroa.525.0.i485, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 8 uses
  %.sroa.0254.0.ph479 = phi i64 [ 0, %bb.l ], [ %spec.select342, %.outer ]
  br label %bb.n

bb.x:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit59.thread
  %i.by = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.by, label %.loopexit421, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i60 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0254.0465, i64 %.sroa.0253.0484)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1791
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1791
  store i64 %.sroa.0.0.i60, ptr %i.n, align 8, !noalias !1791
  store i64 %.sroa.0253.0484, ptr %i.o, align 8, !noalias !1791
  store i64 %.sroa.0254.0465, ptr %i.p, align 8, !noalias !1791
  %i.bz = trunc nuw i64 %.sroa.023.1.i.ph481 to i1
  br i1 %i.bz, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1791
  %.sroa.0.0.i61 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph482, i64 %.sroa.525.2.i.ph480)
  store i64 %.sroa.12.2.i.ph483, ptr %i.e, align 8, !noalias !1791
  store i64 %.sroa.0.0.i61, ptr %i.q, align 8, !noalias !1791
  store i64 %.sroa.525.2.i.ph480, ptr %i.r, align 8, !noalias !1791
  store i64 %.sroa.9.2.i.ph482, ptr %i.s, align 8, !noalias !1791
  %i.ca = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph483
  %i.cb = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph483
  %i.cc = zext i1 %i.cb to i8
  br i1 %i.ca, label %bb.aa, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !1788 ; 2 uses
  %.not7.i = icmp eq i8 %i.cd, 2
  br i1 %.not7.i, label %bb.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ce = icmp eq i64 %.sroa.0253.0484, %.sroa.525.2.i.ph480
  %i.cf = icmp ugt i64 %.sroa.0253.0484, %.sroa.525.2.i.ph480
  %i.cg = zext i1 %i.cf to i8
  br i1 %i.ce, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = icmp ugt i64 %.sroa.0254.0465, %.sroa.9.2.i.ph482
  %i.ci = zext i1 %i.ch to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.2.i = phi i8 [ %i.cc, %bb.z ], [ %i.cd, %bb.aa ], [ %i.ci, %bb.ac ], [ %i.cg, %bb.ab ]
  %i.cj = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1791
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph480, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0253.0484, %bb.y ], [ %.sroa.0253.0484, %bb.ad ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph482, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0254.0465, %bb.y ], [ %.sroa.0254.0465, %bb.ad ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph483, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.y ], [ %.sroa.01.0.i.lcssa, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1791
  br label %.outer

bb.af:                                            ; preds = %.loopexit421
  %.pre = load ptr, ptr %0, align 8, !noalias !1792 ; 3 uses
  br i1 %i.av, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %.loopexit421
  br i1 %i.av, label %bb.al, label %bb.an

bb.ah:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63, %bb.af
  %i.ck = phi ptr [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %i.dj, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ], [ %.pre, %bb.af ]
  %i.cl = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.cm = add i64 %.sroa.9.1.i, %.sroa.0220.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1792
  %i.cn = load ptr, ptr %i.ck, align 8, !alias.scope !1793, !noalias !1794, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 120 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 136 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !1795, !noalias !1796, !noundef !4 ; 3 uses
  %i.cr = load i64, ptr %i.co, align 8, !range !7, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit62

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.co), !noalias !1797
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit62

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit62: ; preds = %bb.ah, %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1795, !noalias !1796, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.cu, i64 %i.cq ; 4 uses
  store i64 0, ptr %i.cv, align 8, !noalias !1796
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cl, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !1796
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.cm, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !1796
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !1796
  %i.cw = add i64 %i.cq, 1
  store i64 %i.cw, ptr %i.cp, align 8, !alias.scope !1795, !noalias !1796
  %i.cx = add i64 %i.cl, %.sroa.12.1.i
  %i.cy = add i64 %i.cm, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !1798), !noalias !1792
  %i.cz = load ptr, ptr %.pre, align 8, !alias.scope !1798, !noalias !1799, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 120 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 136 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1800, !noalias !1801, !noundef !4 ; 3 uses
  %i.dd = load i64, ptr %i.da, align 8, !range !7, !alias.scope !1800, !noalias !1801, !noundef !4
  %i.de = icmp eq i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.ak, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da), !noalias !1802
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63: ; preds = %bb.aj, %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1800, !noalias !1801, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dc ; 4 uses
  store i64 2, ptr %i.dh, align 8, !noalias !1801
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4296.0..sroa_idx, align 8, !noalias !1801
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %.sroa.0220.0, ptr %.sroa.5297.0..sroa_idx, align 8, !noalias !1801
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6298.0..sroa_idx, align 8, !noalias !1801
  %i.di = add i64 %i.dc, 1
  store i64 %i.di, ptr %i.db, align 8, !alias.scope !1800, !noalias !1801
  br label %bb.ah

bb.al:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804), !noalias !1792
  %i.dj = load ptr, ptr %0, align 8, !alias.scope !1805, !noalias !1792, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1806), !noalias !1792
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !1806, !noalias !1807, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 120 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 136 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !1808, !noalias !1809, !noundef !4 ; 3 uses
  %i.do = load i64, ptr %i.dl, align 8, !range !7, !alias.scope !1808, !noalias !1809, !noundef !4
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl), !noalias !1810
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64: ; preds = %bb.al, %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !1808, !noalias !1809, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %i.dn ; 4 uses
  store i64 1, ptr %i.ds, align 8, !noalias !1809
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !1809
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !1809
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i64 %.sroa.0220.0, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !1809
  %i.dt = add i64 %i.dn, 1
  store i64 %i.dt, ptr %i.dm, align 8, !alias.scope !1808, !noalias !1809
  br label %bb.ah

bb.an:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  call void @llvm.experimental.noalias.scope.decl(metadata !1812), !noalias !1792
  %i.du = load ptr, ptr %0, align 8, !alias.scope !1813, !noalias !1792, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1814), !noalias !1792
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1814, !noalias !1815, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 120 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 136 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !1816, !noalias !1817, !noundef !4 ; 4 uses
  %i.dz = load i64, ptr %i.dw, align 8, !range !7, !alias.scope !1816, !noalias !1817, !noundef !4
  %i.ea = icmp eq i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ao, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65

bb.ao:                                            ; preds = %bb.an
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw), !noalias !1818
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65: ; preds = %bb.an, %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 128 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !1816, !noalias !1817, !nonnull !4, !noundef !4
  %i.ed = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %i.dy ; 4 uses
  store i64 1, ptr %i.ed, align 8, !noalias !1817
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4301.0..sroa_idx, align 8, !noalias !1817
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5302.0..sroa_idx, align 8, !noalias !1817
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i64 %.sroa.0220.0, ptr %.sroa.6303.0..sroa_idx, align 8, !noalias !1817
  %i.ee = add i64 %i.dy, 1                        ; 3 uses
  store i64 %i.ee, ptr %i.dx, align 8, !alias.scope !1816, !noalias !1817
  %i.ef = load i64, ptr %i.dw, align 8, !range !7, !alias.scope !1819, !noalias !1817, !noundef !4
end_hunk_6
begin_hunk_7_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  %i.aag = sub nuw i64 %i.m, %.sroa.0220.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.aah = load ptr, ptr %i.zv, align 8, !alias.scope !1882, !noalias !1883, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 120 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 136 ; 2 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !1884, !noalias !1885, !noundef !4 ; 3 uses
  %i.aal = load i64, ptr %i.aai, align 8, !range !7, !alias.scope !1884, !noalias !1885, !noundef !4
  %i.aam = icmp eq i64 %i.aak, %i.aal
  br i1 %i.aam, label %bb.gm, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit185

bb.gm:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit184
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aai), !noalias !1886
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit185

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit185: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit184, %bb.gm
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 128
  %i.aao = load ptr, ptr %i.aan, align 8, !alias.scope !1884, !noalias !1885, !nonnull !4, !noundef !4
  %i.aap = getelementptr inbounds nuw [40 x i8], ptr %i.aao, i64 %i.aak ; 4 uses
  store i64 2, ptr %i.aap, align 8, !noalias !1885
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4286.0..sroa_idx, align 8, !noalias !1885
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  store i64 %.sroa.0220.0, ptr %.sroa.5287.0..sroa_idx, align 8, !noalias !1885
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  store i64 %i.aag, ptr %.sroa.6288.0..sroa_idx, align 8, !noalias !1885
  %i.aaq = add i64 %i.aak, 1
  store i64 %i.aaq, ptr %i.aaj, align 8, !alias.scope !1884, !noalias !1885
  br label %bb.as

.thread:                                          ; preds = %bb.ar
  %i.aar = sub nuw i64 %i.m, %.sroa.0220.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.aas = load ptr, ptr %0, align 8, !alias.scope !1889, !nonnull !4, !align !6, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.aat = load ptr, ptr %i.aas, align 8, !alias.scope !1890, !noalias !1889, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 120 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 136 ; 2 uses
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !1891, !noalias !1892, !noundef !4 ; 3 uses
  %i.aax = load i64, ptr %i.aau, align 8, !range !7, !alias.scope !1891, !noalias !1892, !noundef !4
  %i.aay = icmp eq i64 %i.aaw, %i.aax
  br i1 %i.aay, label %bb.gn, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit186

bb.gn:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aau), !noalias !1893
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit186

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit186: ; preds = %.thread, %bb.gn
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 128
  %i.aba = load ptr, ptr %i.aaz, align 8, !alias.scope !1891, !noalias !1892, !nonnull !4, !noundef !4
  %i.abb = getelementptr inbounds nuw [40 x i8], ptr %i.aba, i64 %i.aaw ; 4 uses
  store i64 2, ptr %i.abb, align 8, !noalias !1892
  %.sroa.4291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4291.0..sroa_idx, align 8, !noalias !1892
  %.sroa.5292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  store i64 %.sroa.0220.0, ptr %.sroa.5292.0..sroa_idx, align 8, !noalias !1892
  %.sroa.6293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  store i64 %i.aar, ptr %.sroa.6293.0..sroa_idx, align 8, !noalias !1892
  %i.abc = add i64 %i.aaw, 1
  store i64 %i.abc, ptr %i.aav, align 8, !alias.scope !1891, !noalias !1892
  br label %bb.as

bb.go:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  %i.abd = load ptr, ptr %0, align 8, !alias.scope !1896, !nonnull !4, !align !6, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.abe = load ptr, ptr %i.abd, align 8, !alias.scope !1897, !noalias !1896, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 120 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 136 ; 2 uses
  %i.abh = load i64, ptr %i.abg, align 8, !alias.scope !1898, !noalias !1899, !noundef !4 ; 3 uses
  %i.abi = load i64, ptr %i.abf, align 8, !range !7, !alias.scope !1898, !noalias !1899, !noundef !4
  %i.abj = icmp eq i64 %i.abh, %i.abi
  br i1 %i.abj, label %bb.gp, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit187

bb.gp:                                            ; preds = %bb.go
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abf), !noalias !1900
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit187

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit187: ; preds = %bb.go, %bb.gp
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 128
  %i.abl = load ptr, ptr %i.abk, align 8, !alias.scope !1898, !noalias !1899, !nonnull !4, !noundef !4
  %i.abm = getelementptr inbounds nuw [40 x i8], ptr %i.abl, i64 %i.abh ; 4 uses
  store i64 0, ptr %i.abm, align 8, !noalias !1899
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store i64 %i.l, ptr %.sroa.4261.0..sroa_idx, align 8, !noalias !1899
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  store i64 %i.m, ptr %.sroa.5262.0..sroa_idx, align 8, !noalias !1899
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  store i64 %i.k, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !1899
  %i.abn = add i64 %i.abh, 1
  store i64 %i.abn, ptr %i.abg, align 8, !alias.scope !1898, !noalias !1899
  br label %bb.gq

bb.gq:                                            ; preds = %bb.as, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit187
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2013 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
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
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2014, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !7, !alias.scope !2014, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !2015
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2014, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.y ; 4 uses
  store i64 0, ptr %i.ad, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %2, ptr %.sroa.4257.0..sroa_idx, align 8
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %5, ptr %.sroa.5258.0..sroa_idx, align 8
  %.sroa.6259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.h, ptr %.sroa.6259.0..sroa_idx, align 8
  %i.ae = add i64 %i.y, 1
  store i64 %i.ae, ptr %i.x, align 8, !alias.scope !2014
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0211.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0211.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit ] ; 38 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.af = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ag = icmp ult i64 %.sroa.0211.0, %i.m        ; 3 uses
  %or.cond330 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond330, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.af, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.ah = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.ai = sub nuw i64 %i.m, %.sroa.0211.0         ; 5 uses
  %i.aj = icmp ult i64 %i.ah, 97
  %i.ak = icmp ult i64 %i.ai, 97
  %or.cond.i = or i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i44 = call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ah) ; 2 uses
  %.sroa.0.0.i45 = call noundef i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ah)
  %i.al = shl nuw i64 %.sroa.0.0.i44, 1
  %i.am = icmp slt i64 %.sroa.0.0.i44, 0
  br i1 %i.am, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.al, %bb.h ]
  %i.an = icmp ult i64 %.sroa.0.0.i45, %.sroa.052.0.i
  br i1 %i.an, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.ai, %i.ah
  %i.ao = icmp ule i64 %i.ah, %i.ai
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread
  %.sroa.525.2.i.ph.lcssa438 = phi i64 [ %.sroa.525.2.i.ph471, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa435 = phi i64 [ %.sroa.023.1.i.ph472, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa432 = phi i64 [ %.sroa.9.2.i.ph473, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa429 = phi i64 [ %.sroa.12.2.i.ph474, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i48 = icmp ugt i64 %spec.select331, 4
  %or.cond336 = select i1 %i.ap, i1 true, i1 %.not.i48
  br i1 %or.cond336, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i479 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa429, %.loopexit ]
  %.sroa.9.0.i478 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa432, %.loopexit ]
  %.sroa.023.0.i477 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa435, %.loopexit ]
  %.sroa.525.0.i476 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa438, %.loopexit ]
  %.sroa.0244.0475 = phi i64 [ 0, %bb.k ], [ %spec.select331, %.loopexit ] ; 12 uses
  %i.ap = icmp eq i64 %.sroa.0244.0475, 4         ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.0244.0475, 1
  %spec.select331 = select i1 %i.ap, i64 4, i64 %i.aq ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0244.0475, 0
  %i.as = add i64 %.sroa.0244.0475, %.sroa.0.0    ; 3 uses
  %i.at = sub i64 %i.l, %i.as
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.au = trunc nuw i64 %.sroa.023.1.i.ph.lcssa435 to i1
  br i1 %i.au, label %.loopexit412, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit

.loopexit412:                                     ; preds = %bb.x, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa438, %bb.m ], [ %.sroa.0244.0475, %bb.x ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa432, %bb.m ], [ %.sroa.0245.0456, %bb.x ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa429, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.x ] ; 3 uses
  %i.av = icmp eq i64 %.sroa.525.1.i, 0
  %i.aw = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre = load i64, ptr %i.u, align 8, !noalias !2016 ; 10 uses
  br i1 %i.av, label %bb.af, label %bb.ag

bb.n:                                             ; preds = %.lr.ph, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread
  %.sroa.0245.0456 = phi i64 [ %.sroa.0245.0.ph470, %.lr.ph ], [ %spec.select333, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread ] ; 11 uses
  %i.ax = icmp eq i64 %.sroa.0245.0456, 4         ; 3 uses
  %i.ay = add nuw nsw i64 %.sroa.0245.0456, 1
  %spec.select333 = select i1 %i.ax, i64 4, i64 %i.ay ; 4 uses
  %i.az = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2017
  br i1 %i.az, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp eq i64 %.sroa.0245.0456, 0         ; 2 uses
  %i.bb = or i64 %.sroa.0245.0456, %.sroa.0244.0475
  %or.cond2.i = icmp eq i64 %i.bb, 0
  br i1 %or.cond2.i, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ar, label %bb.r, label %bb.q

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.s, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit, %bb.r, %bb.q, %bb.o
  %.not.i50 = icmp ugt i64 %spec.select333, 4
  %or.cond337 = select i1 %i.ax, i1 true, i1 %.not.i50
  br i1 %or.cond337, label %.loopexit, label %bb.n

bb.q:                                             ; preds = %bb.p
  %brmerge.i.not = and i1 %.not.i, %i.ba
  br i1 %brmerge.i.not, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

bb.r:                                             ; preds = %bb.p
  %or.cond3.old.i = or i1 %i.ao, %i.ba
  br i1 %or.cond3.old.i, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = add i64 %.sroa.0245.0456, %.sroa.0211.0 ; 3 uses
  %i.bd = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !noalias !2017 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  %i.bf = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80), !noalias !2017 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.s
  %i.bi = extractvalue { ptr, i64 } %i.bf, 0
  %i.bj = extractvalue { ptr, i64 } %i.bd, 0
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.bj, ptr nonnull readonly %i.bi, i64 %i.be), !alias.scope !2018, !noalias !2017
  %.not334 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not334, label %bb.t, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread

bb.t:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit
  %i.bk = sub i64 %i.m, %i.bc
  %.sroa.0.0.i54 = call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.at) ; 3 uses
  %.not480 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not480, label %.outer, label %.lr.ph465

.lr.ph465:                                        ; preds = %bb.t, %bb.w
  %.sroa.01.0.i464 = phi i64 [ %i.bx, %bb.w ], [ 0, %bb.t ] ; 6 uses
  %i.bl = and i64 %.sroa.01.0.i464, 1023
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph465
  %i.bn = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2017
  br i1 %i.bn, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph465
  %i.bo = add i64 %.sroa.01.0.i464, %i.bc
  %i.bp = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81), !noalias !2017 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 1      ; 2 uses
  %i.br = add i64 %.sroa.01.0.i464, %i.as
  %i.bs = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82), !noalias !2017 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 1
  %i.bu = icmp eq i64 %i.bq, %i.bt
  br i1 %i.bu, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57: ; preds = %bb.v
  %i.bv = extractvalue { ptr, i64 } %i.bs, 0
  %i.bw = extractvalue { ptr, i64 } %i.bp, 0
  %bcmp.i.i56 = call i32 @bcmp(ptr nonnull readonly %i.bw, ptr nonnull readonly %i.bv, i64 %i.bq), !alias.scope !2019, !noalias !2017
  %.not335 = icmp eq i32 %bcmp.i.i56, 0
  br i1 %.not335, label %bb.w, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread

bb.w:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57
  %i.bx = add nuw i64 %.sroa.01.0.i464, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %.sroa.0.0.i54
  br i1 %exitcond.not, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread, label %.lr.ph465

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread: ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57, %bb.w, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i464, %bb.v ], [ %.sroa.01.0.i464, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57 ], [ %.sroa.0.0.i54, %bb.w ] ; 8 uses
  %i.by = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.by, label %bb.x, label %.outer

.outer:                                           ; preds = %bb.t, %bb.ae, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ae ], [ %.sroa.525.2.i.ph471, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread ], [ %.sroa.525.2.i.ph471, %bb.t ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ae ], [ %.sroa.023.1.i.ph472, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread ], [ %.sroa.023.1.i.ph472, %bb.t ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ae ], [ %.sroa.9.2.i.ph473, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread ], [ %.sroa.9.2.i.ph473, %bb.t ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ae ], [ %.sroa.12.2.i.ph474, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread ], [ %.sroa.12.2.i.ph474, %bb.t ] ; 2 uses
  %.not.i50454 = icmp ugt i64 %spec.select333, 4
  %or.cond337455 = select i1 %i.ax, i1 true, i1 %.not.i50454
  br i1 %or.cond337455, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph474 = phi i64 [ %.sroa.12.0.i479, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 7 uses
  %.sroa.9.2.i.ph473 = phi i64 [ %.sroa.9.0.i478, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 7 uses
  %.sroa.023.1.i.ph472 = phi i64 [ %.sroa.023.0.i477, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 4 uses
  %.sroa.525.2.i.ph471 = phi i64 [ %.sroa.525.0.i476, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 8 uses
  %.sroa.0245.0.ph470 = phi i64 [ 0, %bb.l ], [ %spec.select333, %.outer ]
  br label %bb.n

bb.x:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit57.thread
  %i.bz = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.bz, label %.loopexit412, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i58 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0245.0456, i64 %.sroa.0244.0475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2020
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2020
  store i64 %.sroa.0.0.i58, ptr %i.n, align 8, !noalias !2020
  store i64 %.sroa.0244.0475, ptr %i.o, align 8, !noalias !2020
  store i64 %.sroa.0245.0456, ptr %i.p, align 8, !noalias !2020
  %i.ca = trunc nuw i64 %.sroa.023.1.i.ph472 to i1
  br i1 %i.ca, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2020
  %.sroa.0.0.i59 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph473, i64 %.sroa.525.2.i.ph471)
  store i64 %.sroa.12.2.i.ph474, ptr %i.e, align 8, !noalias !2020
  store i64 %.sroa.0.0.i59, ptr %i.q, align 8, !noalias !2020
  store i64 %.sroa.525.2.i.ph471, ptr %i.r, align 8, !noalias !2020
  store i64 %.sroa.9.2.i.ph473, ptr %i.s, align 8, !noalias !2020
  %i.cb = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph474
  %i.cc = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph474
  %i.cd = zext i1 %i.cc to i8
  br i1 %i.cb, label %bb.aa, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.aa:                                            ; preds = %bb.z
  %i.ce = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !2017 ; 2 uses
  %.not7.i = icmp eq i8 %i.ce, 2
  br i1 %.not7.i, label %bb.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cf = icmp eq i64 %.sroa.0244.0475, %.sroa.525.2.i.ph471
  %i.cg = icmp ugt i64 %.sroa.0244.0475, %.sroa.525.2.i.ph471
  %i.ch = zext i1 %i.cg to i8
  br i1 %i.cf, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp ugt i64 %.sroa.0245.0456, %.sroa.9.2.i.ph473
  %i.cj = zext i1 %i.ci to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.2.i = phi i8 [ %i.cd, %bb.z ], [ %i.ce, %bb.aa ], [ %i.cj, %bb.ac ], [ %i.ch, %bb.ab ]
  %i.ck = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2020
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph471, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0244.0475, %bb.y ], [ %.sroa.0244.0475, %bb.ad ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph473, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0245.0456, %bb.y ], [ %.sroa.0245.0456, %bb.ad ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph474, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.y ], [ %.sroa.01.0.i.lcssa, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2020
  br label %.outer

bb.af:                                            ; preds = %.loopexit412
  br i1 %i.aw, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %.loopexit412
  %i.cl = load i64, ptr %i.t, align 8, !range !7, !noalias !2016, !noundef !4
  %i.cm = icmp eq i64 %.pre, %i.cl                ; 2 uses
  br i1 %i.aw, label %bb.ak, label %bb.al

.sink.split.sink.split:                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63, %bb.ak, %bb.aj
  %.pre.sink.ph = phi i64 [ %.pre, %bb.ak ], [ %.pre, %bb.aj ], [ %i.de, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ]
  %.sink832.ph = phi i64 [ 1, %bb.ak ], [ 2, %bb.aj ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ]
  %.sroa.0211.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.ak ], [ %.sroa.0211.0, %bb.aj ], [ %.sroa.0211.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0211.0, %bb.ak ], [ %.sroa.9.1.i, %bb.aj ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ]
  %.sink829.ph = phi i64 [ 1, %bb.ak ], [ 1, %bb.aj ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ]
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2016
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63, %bb.ak, %bb.aj
  %.pre.sink = phi i64 [ %.pre, %bb.ak ], [ %i.de, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ], [ %.pre, %bb.aj ], [ %.pre.sink.ph, %.sink.split.sink.split ]
  %.sink832 = phi i64 [ 1, %bb.ak ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ], [ 2, %bb.aj ], [ %.sink832.ph, %.sink.split.sink.split ]
  %.sroa.0211.0.sink = phi i64 [ %.sroa.525.1.i, %bb.ak ], [ %.sroa.0211.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ], [ %.sroa.0211.0, %bb.aj ], [ %.sroa.0211.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0211.0, %bb.ak ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ], [ %.sroa.9.1.i, %bb.aj ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink829 = phi i64 [ 1, %bb.ak ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63 ], [ 1, %bb.aj ], [ %.sink829.ph, %.sink.split.sink.split ]
  %i.cn = load ptr, ptr %i.v, align 8, !noalias !2016, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %.pre.sink ; 4 uses
  store i64 %.sink832, ptr %i.co, align 8, !noalias !2016
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4277.0..sroa_idx, align 8, !noalias !2016
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %.sroa.0211.0.sink, ptr %.sroa.5278.0..sroa_idx, align 8, !noalias !2016
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6279.0..sroa_idx, align 8, !noalias !2016
  %i.cp = add i64 %.pre, %.sink829                ; 2 uses
  store i64 %i.cp, ptr %i.u, align 8, !noalias !2016
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af
  %i.cq = phi i64 [ %.pre, %bb.af ], [ %i.cp, %.sink.split ] ; 3 uses
  %i.cr = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.cs = add i64 %.sroa.9.1.i, %.sroa.0211.0     ; 2 uses
  %i.ct = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2021, !noalias !2016, !noundef !4
  %i.cu = icmp eq i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit60

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2022
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit60

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit60: ; preds = %bb.ah, %bb.ai
  %i.cv = load ptr, ptr %i.v, align 8, !alias.scope !2021, !noalias !2016, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cq ; 4 uses
  store i64 0, ptr %i.cw, align 8, !noalias !2016
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2016
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.cs, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2016
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2016
  %i.cx = add i64 %i.cq, 1
  store i64 %i.cx, ptr %i.u, align 8, !alias.scope !2021, !noalias !2016
  %i.cy = add i64 %i.cr, %.sroa.12.1.i
  %i.cz = add i64 %i.cs, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit

bb.aj:                                            ; preds = %bb.af
  %i.da = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2023, !noalias !2016, !noundef !4
  %i.db = icmp eq i64 %.pre, %i.da
  br i1 %i.db, label %.sink.split.sink.split, label %.sink.split

bb.ak:                                            ; preds = %bb.ag
  br i1 %i.cm, label %.sink.split.sink.split, label %.sink.split

bb.al:                                            ; preds = %bb.ag
  br i1 %i.cm, label %bb.am, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2024
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit63: ; preds = %bb.al, %bb.am
  %i.dc = load ptr, ptr %i.v, align 8, !alias.scope !2025, !noalias !2016, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %.pre ; 4 uses
  store i64 1, ptr %i.dd, align 8, !noalias !2016
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4292.0..sroa_idx, align 8, !noalias !2016
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5293.0..sroa_idx, align 8, !noalias !2016
  %.sroa.6294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6294.0..sroa_idx, align 8, !noalias !2016
  %i.de = add i64 %.pre, 1                        ; 4 uses
  store i64 %i.de, ptr %i.u, align 8, !alias.scope !2025, !noalias !2016
  %i.df = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2026, !noalias !2016, !noundef !4
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.n, %bb.u, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit60
  %.sroa.0211.2 = phi i64 [ %.sroa.0211.0, %bb.g ], [ %.sroa.0211.0, %bb.j ], [ %.sroa.0211.0, %bb.m ], [ %i.cz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit60 ], [ %.sroa.0211.0, %bb.u ], [ %.sroa.0211.0, %bb.n ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.cy, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit60 ], [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %bb.n ] ; 2 uses
  %i.dh = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.di = icmp eq i64 %.sroa.0211.2, %.sroa.0211.0
  %or.cond = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.an:                                            ; preds = %bb.f
  br i1 %i.ag, label %bb.as, label %bb.aq

bb.ao:                                            ; preds = %bb.f
  br i1 %i.ag, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread327, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit177, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit176, %bb.ge, %bb.ao
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gl, label %bb.gj

bb.aq:                                            ; preds = %bb.an
  %i.dj = sub nuw i64 %i.l, %.sroa.0.0
  %i.dk = load i64, ptr %i.u, align 8, !alias.scope !2027, !noundef !4 ; 3 uses
  %i.dl = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2027, !noundef !4
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2028
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit65: ; preds = %bb.aq, %bb.ar
  %i.dn = load ptr, ptr %i.v, align 8, !alias.scope !2027, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dn, i64 %i.dk ; 4 uses
  store i64 1, ptr %i.do, align 8
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4267.0..sroa_idx, align 8
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %i.dj, ptr %.sroa.5268.0..sroa_idx, align 8
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 24
end_hunk_7
begin_hunk_8_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest:bb.a

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %i.vs = phi ptr [ %i.vw, %bb.gb ], [ %i.vg, %bb.fz ]
  %i.vt = phi i64 [ %i.vk, %bb.gb ], [ %i.vh, %bb.fz ] ; 2 uses
  %.sroa.04.0.i169 = phi i8 [ %i.vz, %bb.gb ], [ %.sroa.0.0.i203.i168, %bb.fz ]
  %i.vu = add i64 %i.us, %i.up                    ; 3 uses
  %i.vv = icmp ult i64 %i.vu, %i.vt
  br i1 %i.vv, label %bb.gc, label %.invoke.i111

bb.gb:                                            ; preds = %bb.fx
  %i.vw = load ptr, ptr %i.nn, align 8, !noalias !2045, !nonnull !4, !noundef !4 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vj
  %i.vy = load i8, ptr %i.vx, align 1, !noundef !4
  %i.vz = add i8 %i.vy, 1
  br label %bb.ga

bb.gc:                                            ; preds = %bb.ga
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vu
  store i8 %.sroa.04.0.i169, ptr %i.wa, align 1
  %.not168.i170 = icmp eq i64 %i.us, 0
  br i1 %.not168.i170, label %..loopexit244_crit_edge.i171, label %bb.fr

.invoke.i111:                                     ; preds = %bb.ga, %bb.fy, %bb.fx, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i167, %bb.ed, %bb.eb, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i110, %bb.ea, %bb.fc, %bb.fa, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i121, %bb.ez, %bb.ep, %bb.en, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i144, %bb.em, %bb.fl, %bb.fk
  %i.wb = phi i64 [ %i.st, %bb.fc ], [ %i.ud, %bb.fl ], [ %i.pa, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i110 ], [ %i.rd, %bb.ep ], [ %i.tw, %bb.fk ], [ %i.qp, %bb.em ], [ %i.qv, %bb.en ], [ %i.qt, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i144 ], [ %i.sb, %bb.ez ], [ %i.sl, %bb.fa ], [ %i.sh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i121 ], [ %i.pq, %bb.ed ], [ %i.pf, %bb.eb ], [ %i.ou, %bb.ea ], [ %i.vu, %bb.ga ], [ %i.vf, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i167 ], [ %i.vm, %bb.fy ], [ %i.vj, %bb.fx ]
  %i.wc = phi i64 [ %i.sd, %bb.fc ], [ %i.ty, %bb.fl ], [ %i.ow, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i110 ], [ %i.qr, %bb.ep ], [ %i.ty, %bb.fk ], [ %.pre621.i148, %bb.em ], [ %.pre621.i148, %bb.en ], [ %i.qr, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i144 ], [ %.pre617.i134, %bb.ez ], [ %.pre617.i134, %bb.fa ], [ %i.sd, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i121 ], [ %i.ow, %bb.ed ], [ %.pre613.i152, %bb.eb ], [ %.pre613.i152, %bb.ea ], [ %i.vt, %bb.ga ], [ %i.vh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i167 ], [ %i.vh, %bb.fy ], [ %i.vk, %bb.fx ]
  %i.wd = phi ptr [ @68, %bb.fc ], [ @72, %bb.fl ], [ @55, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i110 ], [ @62, %bb.ep ], [ @71, %bb.fk ], [ @59, %bb.em ], [ @60, %bb.en ], [ @61, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i144 ], [ @65, %bb.ez ], [ @66, %bb.fa ], [ @67, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i121 ], [ @56, %bb.ed ], [ @54, %bb.eb ], [ @53, %bb.ea ], [ @78, %bb.ga ], [ @75, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i167 ], [ @76, %bb.fy ], [ @77, %bb.fx ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.wb, i64 noundef %i.wc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wd) #14
          to label %.cont.i112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i85.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i112:                                       ; preds = %.invoke.i111
  unreachable

bb.gd:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i85.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.loopexit229.i135
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2045
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.at, %bb.dn, %bb.aw, %bb.au, %bb.as, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0211.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.wf = load i64, ptr %i.g, align 8, !range !9, !noundef !4
  %i.wg = trunc nuw i64 %i.wf to i1
  br i1 %i.wg, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread
  %i.wh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !noundef !4 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.wk = load i64, ptr %i.wj, align 8, !noundef !4 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.wi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0211.0, i64 noundef %i.wk, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.wi, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.wk, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ap

bb.gf:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.wl = sub nuw i64 %i.l, %.sroa.0.0
  %i.wm = load i64, ptr %i.u, align 8, !alias.scope !2058, !noundef !4 ; 4 uses
  %i.wn = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2058, !noundef !4
  %i.wo = icmp eq i64 %i.wm, %i.wn
  br i1 %i.wo, label %bb.gg, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit175

bb.gg:                                            ; preds = %bb.gf
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2059
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit175

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit175: ; preds = %bb.gf, %bb.gg
  %i.wp = load ptr, ptr %i.v, align 8, !alias.scope !2058, !nonnull !4, !noundef !4
  %i.wq = getelementptr inbounds nuw [40 x i8], ptr %i.wp, i64 %i.wm ; 4 uses
  store i64 1, ptr %i.wq, align 8
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4272.0..sroa_idx, align 8
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store i64 %i.wl, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6274.0..sroa_idx, align 8
  %i.wr = add i64 %i.wm, 1                        ; 3 uses
  store i64 %i.wr, ptr %i.u, align 8, !alias.scope !2058
  %i.ws = sub nuw i64 %i.m, %.sroa.0211.0
  %i.wt = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2060, !noundef !4
  %i.wu = icmp eq i64 %i.wr, %i.wt
  br i1 %i.wu, label %bb.gh, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit176

bb.gh:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit175
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2061
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit176

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit176: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit175, %bb.gh
  %i.wv = load ptr, ptr %i.v, align 8, !alias.scope !2060, !nonnull !4, !noundef !4
  %i.ww = getelementptr inbounds nuw [40 x i8], ptr %i.wv, i64 %i.wr ; 4 uses
  store i64 2, ptr %i.ww, align 8
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4287.0..sroa_idx, align 8
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5288.0..sroa_idx, align 8
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  store i64 %i.ws, ptr %.sroa.6289.0..sroa_idx, align 8
  %i.wx = add i64 %i.wm, 2
  store i64 %i.wx, ptr %i.u, align 8, !alias.scope !2060
  br label %bb.ap

.thread:                                          ; preds = %bb.ao
  %i.wy = sub nuw i64 %i.m, %.sroa.0211.0
  %i.wz = load i64, ptr %i.u, align 8, !alias.scope !2062, !noundef !4 ; 3 uses
  %i.xa = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2062, !noundef !4
  %i.xb = icmp eq i64 %i.wz, %i.xa
  br i1 %i.xb, label %bb.gi, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit177

bb.gi:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2063
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit177

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit177: ; preds = %.thread, %bb.gi
  %i.xc = load ptr, ptr %i.v, align 8, !alias.scope !2062, !nonnull !4, !noundef !4
  %i.xd = getelementptr inbounds nuw [40 x i8], ptr %i.xc, i64 %i.wz ; 4 uses
  store i64 2, ptr %i.xd, align 8
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4282.0..sroa_idx, align 8
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5283.0..sroa_idx, align 8
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  store i64 %i.wy, ptr %.sroa.6284.0..sroa_idx, align 8
  %i.xe = add i64 %i.wz, 1
  store i64 %i.xe, ptr %i.u, align 8, !alias.scope !2062
  br label %bb.ap

bb.gj:                                            ; preds = %bb.ap
  %i.xf = load i64, ptr %i.u, align 8, !alias.scope !2064, !noundef !4 ; 3 uses
  %i.xg = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2064, !noundef !4
  %i.xh = icmp eq i64 %i.xf, %i.xg
  br i1 %i.xh, label %bb.gk, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit178

bb.gk:                                            ; preds = %bb.gj
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2065
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit178

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit178: ; preds = %bb.gj, %bb.gk
  %i.xi = load ptr, ptr %i.v, align 8, !alias.scope !2064, !nonnull !4, !noundef !4
  %i.xj = getelementptr inbounds nuw [40 x i8], ptr %i.xi, i64 %i.xf ; 4 uses
  store i64 0, ptr %i.xj, align 8
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 %i.l, ptr %.sroa.4252.0..sroa_idx, align 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store i64 %i.m, ptr %.sroa.5253.0..sroa_idx, align 8
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  store i64 %i.k, ptr %.sroa.6254.0..sroa_idx, align 8
  %i.xk = add i64 %i.xf, 1
  store i64 %i.xk, ptr %i.u, align 8, !alias.scope !2064
  br label %bb.gl

bb.gl:                                            ; preds = %bb.ap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit178
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2204 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
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
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0235.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0235.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 40 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 39 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0235.0, %i.l         ; 3 uses
  %or.cond307 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond307, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.d
  br i1 %i.w, label %bb.ar, label %bb.as

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0235.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %bb.ac, %bb.ab, %.outer, %bb.z
  %.sroa.525.2.i.ph.lcssa602 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i879, %bb.ab ], [ %.sroa.525.2.i.ph873, %bb.z ], [ %.sroa.525.0.i879, %bb.ac ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa591 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i880, %bb.ab ], [ %.sroa.023.1.i.ph874, %bb.z ], [ %.sroa.023.0.i880, %bb.ac ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa580 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i881, %bb.ab ], [ %.sroa.9.2.i.ph875, %bb.z ], [ %.sroa.9.0.i881, %bb.ac ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa569 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i882, %bb.ab ], [ %.sroa.12.2.i.ph876, %bb.z ], [ %.sroa.12.0.i882, %bb.ac ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select308, 4
  %or.cond313 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond313, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i882 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa569, %.loopexit ] ; 3 uses
  %.sroa.9.0.i881 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa580, %.loopexit ] ; 3 uses
  %.sroa.023.0.i880 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa591, %.loopexit ] ; 3 uses
  %.sroa.525.0.i879 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa602, %.loopexit ] ; 3 uses
  %.sroa.0269.0878 = phi i64 [ 0, %bb.j ], [ %spec.select308, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0269.0878, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0269.0878, 1
  %spec.select308 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0269.0878, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0269.0878, %.sroa.0.0    ; 6 uses
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
  %i.ap = trunc nuw i64 %.sroa.023.1.i.ph.lcssa591 to i1
  br i1 %i.ap, label %.loopexit393, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

.loopexit393:                                     ; preds = %bb.ad, %bb.l
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa602, %bb.l ], [ %.sroa.0269.0878, %bb.ad ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa580, %bb.l ], [ %.sroa.0271.0660.us, %bb.ad ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa569, %bb.l ], [ %.sroa.01.0.i.lcssa, %bb.ad ] ; 3 uses
  %i.aq = icmp eq i64 %.sroa.525.1.i, 0
  %i.ar = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.aq, label %bb.al, label %bb.am

.split820:                                        ; preds = %.lr.ph.split.split.split.preheader.a, %bb.aa
  %.us-phi825 = phi i64 [ %.sroa.0271.0660.us813, %bb.aa ], [ 0, %.lr.ph.split.split.split.preheader.a ]
  %i.as = add i64 %.us-phi825, %.sroa.0235.0      ; 2 uses
  %i.at = icmp ult i64 %i.as, %.val51
  br i1 %i.at, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %.split

.split:                                           ; preds = %bb.y, %.split820
  %.us-phi = phi i64 [ %i.as, %.split820 ], [ %i.ca, %bb.y ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !2205
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %.split820
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !2206
  unreachable

.lr.ph869:                                        ; preds = %.lr.ph869.preheader, %bb.s
  %.sroa.01.0.i868 = phi i64 [ %i.bt, %bb.s ], [ 0, %.lr.ph869.preheader ] ; 7 uses
  %i.au = and i64 %.sroa.01.0.i868, 1023
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph869
  %i.aw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2207
  br i1 %i.aw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph869
  %exitcond.not = icmp eq i64 %.sroa.01.0.i868, %i.cx
  br i1 %exitcond.not, label %bb.o, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !2208
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84: ; preds = %bb.n
  %i.ax = add nuw i64 %.sroa.01.0.i868, %i.aj     ; 2 uses
  %exitcond1199.not = icmp eq i64 %.sroa.01.0.i868, %i.ao
  br i1 %exitcond1199.not, label %bb.p, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85

bb.p:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !2209
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.01.0.i868 ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ax ; 2 uses
  %.val52 = load ptr, ptr %gep, align 8, !alias.scope !2210, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.az = getelementptr i8, ptr %gep, i64 8
  %.val53 = load i64, ptr %i.az, align 8, !alias.scope !2210, !noundef !4
  %.val54 = load ptr, ptr %i.ay, align 8          ; 4 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val55 = load i64, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val52, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2211, !noalias !2212, !noundef !4
  %i.bd = sub i64 %.val53, %i.bc                  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val52, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !2211, !noalias !2212, !noundef !4 ; 2 uses
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i86, label %bb.q

bb.q:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2213
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i86: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85
  %i.bh = getelementptr inbounds nuw i8, ptr %.val52, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2211, !noalias !2212, !nonnull !4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2214, !noalias !2212, !noundef !4
  %i.bl = sub i64 %.val55, %i.bk                  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !2214, !noalias !2212, !noundef !4 ; 2 uses
  %i.bo = icmp ult i64 %i.bl, %i.bn
  br i1 %i.bo, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit89, label %bb.r

bb.r:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i86
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2215
  unreachable

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit89: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i86
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !2214, !noalias !2212, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bl
  %.val.i87 = load i32, ptr %i.bp, align 4, !noundef !4
  %.val2.i88 = load i32, ptr %i.bs, align 4, !noundef !4
  %.not312 = icmp eq i32 %.val.i87, %.val2.i88
  br i1 %.not312, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit89
  %i.bt = add nuw i64 %.sroa.01.0.i868, 1         ; 2 uses
  %exitcond1200.not = icmp eq i64 %i.bt, %.sroa.0.0.i83
  br i1 %exitcond1200.not, label %._crit_edge, label %.lr.ph869

._crit_edge:                                      ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit89, %bb.s
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i83, %bb.s ], [ %.sroa.01.0.i868, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit89 ] ; 8 uses
  %i.bu = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.bu, label %bb.ad, label %.outer

.outer:                                           ; preds = %.split678.us, %bb.ak, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ak ], [ %.sroa.525.2.i.ph873, %._crit_edge ], [ %.sroa.525.2.i.ph873, %.split678.us ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ak ], [ %.sroa.023.1.i.ph874, %._crit_edge ], [ %.sroa.023.1.i.ph874, %.split678.us ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ak ], [ %.sroa.9.2.i.ph875, %._crit_edge ], [ %.sroa.9.2.i.ph875, %.split678.us ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ak ], [ %.sroa.12.2.i.ph876, %._crit_edge ], [ %.sroa.12.2.i.ph876, %.split678.us ] ; 2 uses
  %.not.i78658 = icmp ugt i64 %spec.select309.us, 4
  %or.cond314659 = select i1 %i.bv, i1 true, i1 %.not.i78658
  br i1 %or.cond314659, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.sroa.12.2.i.ph876 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i882, %.lr.ph.preheader ] ; 7 uses
  %.sroa.9.2.i.ph875 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i881, %.lr.ph.preheader ] ; 7 uses
  %.sroa.023.1.i.ph874 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i880, %.lr.ph.preheader ] ; 4 uses
  %.sroa.525.2.i.ph873 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i879, %.lr.ph.preheader ] ; 8 uses
  %.sroa.0271.0.ph872 = phi i64 [ %spec.select309.us, %.outer ], [ 0, %.lr.ph.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.lr.ph
  %.sroa.0271.0660.us = phi i64 [ %.sroa.0271.0.ph872, %.lr.ph ], [ %spec.select309.us, %bb.z ] ; 11 uses
  %i.bv = icmp eq i64 %.sroa.0271.0660.us, 4      ; 3 uses
  %i.bw = add nuw nsw i64 %.sroa.0271.0660.us, 1
  %spec.select309.us = select i1 %i.bv, i64 4, i64 %i.bw ; 4 uses
  %i.bx = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2207
  br i1 %i.bx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i64 %.sroa.0271.0660.us, 0      ; 2 uses
  %i.bz = or i64 %.sroa.0271.0660.us, %.sroa.0269.0878
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
  %i.ca = add i64 %.sroa.0271.0660.us, %.sroa.0235.0 ; 7 uses
  %i.cb = icmp ult i64 %i.ca, %.val51
  br i1 %i.cb, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us: ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.ca ; 2 uses
  %.val56.us = load ptr, ptr %i.cc, align 8, !alias.scope !2210, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val57.us = load i64, ptr %i.cd, align 8, !alias.scope !2210, !noundef !4
  %.val58.us = load ptr, ptr %i.al, align 8       ; 4 uses
  %.val59.us = load i64, ptr %i.am, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val56.us, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2216, !noalias !2217, !noundef !4
  %i.cg = sub i64 %.val57.us, %i.cf               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val56.us, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !2216, !noalias !2217, !noundef !4 ; 2 uses
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.us, label %.split670.us

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us
  %i.ck = getelementptr inbounds nuw i8, ptr %.val56.us, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !2216, !noalias !2217, !nonnull !4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val58.us, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !2218, !noalias !2217, !noundef !4
  %i.co = sub i64 %.val59.us, %i.cn               ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val58.us, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !2218, !noalias !2217, !noundef !4 ; 2 uses
  %i.cr = icmp ult i64 %i.co, %i.cq
  br i1 %i.cr, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us, label %.split674.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.us
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  %i.ct = getelementptr inbounds nuw i8, ptr %.val58.us, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !2218, !noalias !2217, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.co
  %.val.i.us = load i32, ptr %i.cs, align 4, !noundef !4
  %.val2.i.us = load i32, ptr %i.cv, align 4, !noundef !4
  %.not311.us = icmp eq i32 %.val.i.us, %.val2.i.us
  br i1 %.not311.us, label %.split678.us, label %bb.z

bb.z:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us, %bb.x, %bb.w, %bb.u
  %.not.i78.us = icmp ugt i64 %spec.select309.us, 4
  %or.cond314.us = select i1 %i.bv, i1 true, i1 %.not.i78.us
  br i1 %or.cond314.us, label %.loopexit, label %bb.t

.split670.us:                                     ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2219
  unreachable

.split674.us:                                     ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2220
  unreachable

.split678.us:                                     ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us
  %i.cw = sub i64 %i.l, %i.ca
  %.sroa.0.0.i83 = call noundef i64 @llvm.umin.i64(i64 %i.cw, i64 %i.an) ; 3 uses
  %.not886 = icmp eq i64 %.sroa.0.0.i83, 0
  br i1 %.not886, label %.outer, label %.lr.ph869.preheader

.lr.ph869.preheader:                              ; preds = %.split678.us
  %umax = call i64 @llvm.umax.i64(i64 %.val51, i64 %i.ca) ; 2 uses
  %i.cx = sub i64 %umax, %i.ca
  %invariant.gep = getelementptr [16 x i8], ptr %.val50, i64 %i.ca
  br label %.lr.ph869

.lr.ph.split.a:                                   ; preds = %bb.k
  br i1 %i.ai, label %.lr.ph.split.split.us, label %.lr.ph.split.split.a

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.a, %bb.ab
  %.sroa.0271.0660.us813 = phi i64 [ %spec.select309.us814, %bb.ab ], [ 0, %.lr.ph.split.a ] ; 4 uses
  %11 = icmp eq i64 %.sroa.0271.0660.us813, 4     ; 2 uses
  %12 = add nuw nsw i64 %.sroa.0271.0660.us813, 1
  %spec.select309.us814 = select i1 %11, i64 4, i64 %12 ; 2 uses
  %i.cy = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2207
  br i1 %i.cy, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.split.us
  %or.cond2.i.us815 = icmp ne i64 %.sroa.0271.0660.us813, 0
  %or.cond884 = and i1 %or.cond2.i.us815, %i.af
  br i1 %or.cond884, label %.split820, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i78.us817 = icmp ugt i64 %spec.select309.us814, 4
  %or.cond314.us818 = select i1 %11, i1 true, i1 %.not.i78.us817
  br i1 %or.cond314.us818, label %.loopexit, label %.lr.ph.split.split.us

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split.a
  br i1 %.not.i.fr, label %.lr.ph.split.split.split.preheader.a, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.preheader.a:             ; preds = %.lr.ph.split.split.a
  %i.cz = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2207
  br i1 %i.cz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %.split820

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.a, %bb.ac
  %.sroa.0271.0660.us854 = phi i64 [ %spec.select309.us855, %bb.ac ], [ 0, %.lr.ph.split.split.a ] ; 2 uses
  %i.da = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2207
  br i1 %i.da, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.split.split.us
  %13 = icmp eq i64 %.sroa.0271.0660.us854, 4     ; 2 uses
  %14 = add nuw nsw i64 %.sroa.0271.0660.us854, 1
  %spec.select309.us855 = select i1 %13, i64 4, i64 %14 ; 2 uses
  %.not.i78.us858 = icmp ugt i64 %spec.select309.us855, 4
  %or.cond314.us859 = select i1 %13, i1 true, i1 %.not.i78.us858
  br i1 %or.cond314.us859, label %.loopexit, label %.lr.ph.split.split.split.us

bb.ad:                                            ; preds = %._crit_edge
  %i.db = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.db, label %.loopexit393, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.i90 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0271.0660.us, i64 %.sroa.0269.0878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2221
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2221
  store i64 %.sroa.0.0.i90, ptr %i.q, align 8, !noalias !2221
  store i64 %.sroa.0269.0878, ptr %i.r, align 8, !noalias !2221
  store i64 %.sroa.0271.0660.us, ptr %i.s, align 8, !noalias !2221
  %i.dc = trunc nuw i64 %.sroa.023.1.i.ph874 to i1
  br i1 %i.dc, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2221
  %.sroa.0.0.i91 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph875, i64 %.sroa.525.2.i.ph873)
  store i64 %.sroa.12.2.i.ph876, ptr %i.e, align 8, !noalias !2221
  store i64 %.sroa.0.0.i91, ptr %i.t, align 8, !noalias !2221
  store i64 %.sroa.525.2.i.ph873, ptr %i.u, align 8, !noalias !2221
  store i64 %.sroa.9.2.i.ph875, ptr %i.v, align 8, !noalias !2221
  %i.dd = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph876
  %i.de = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph876
  %i.df = zext i1 %i.de to i8
  br i1 %i.dd, label %bb.ag, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ag:                                            ; preds = %bb.af
  %i.dg = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !2207 ; 2 uses
  %.not7.i = icmp eq i8 %i.dg, 2
  br i1 %.not7.i, label %bb.ah, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dh = icmp eq i64 %.sroa.0269.0878, %.sroa.525.2.i.ph873
  %i.di = icmp ugt i64 %.sroa.0269.0878, %.sroa.525.2.i.ph873
  %i.dj = zext i1 %i.di to i8
  br i1 %i.dh, label %bb.ai, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dk = icmp ugt i64 %.sroa.0271.0660.us, %.sroa.9.2.i.ph875
  %i.dl = zext i1 %i.dk to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.0.2.i = phi i8 [ %i.df, %bb.af ], [ %i.dg, %bb.ag ], [ %i.dl, %bb.ai ], [ %i.dj, %bb.ah ]
  %i.dm = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2221
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %bb.aj, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph873, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0269.0878, %bb.ae ], [ %.sroa.0269.0878, %bb.aj ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph875, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0271.0660.us, %bb.ae ], [ %.sroa.0271.0660.us, %bb.aj ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph876, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.ae ], [ %.sroa.01.0.i.lcssa, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2221
  br label %.outer

bb.al:                                            ; preds = %.loopexit393
  br i1 %i.ar, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %.loopexit393
  br i1 %i.ar, label %bb.ap, label %bb.aq

bb.an:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.al
  %i.dn = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.do = add i64 %.sroa.9.1.i, %.sroa.0235.0     ; 2 uses
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.dn, i64 noundef %i.do, i64 noundef %.sroa.12.1.i), !noalias !2222
  %i.dp = add i64 %i.dn, %.sroa.12.1.i
  %i.dq = add i64 %i.do, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

bb.ao:                                            ; preds = %bb.al
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0235.0, i64 noundef %.sroa.9.1.i), !noalias !2222
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0235.0), !noalias !2222
  br label %bb.an

bb.aq:                                            ; preds = %bb.am
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook7replaceCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0235.0, i64 noundef %.sroa.9.1.i), !noalias !2222
  br label %bb.an

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.us, %bb.t, %bb.m, %.lr.ph.split.split.split.preheader.a, %bb.f, %bb.i, %bb.l, %bb.an
  %.sroa.0235.2 = phi i64 [ %.sroa.0235.0, %bb.f ], [ %.sroa.0235.0, %bb.i ], [ %.sroa.0235.0, %bb.l ], [ %i.dq, %bb.an ], [ %.sroa.0235.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0235.0, %bb.m ], [ %.sroa.0235.0, %bb.t ], [ %.sroa.0235.0, %.lr.ph.split.split.us ], [ %.sroa.0235.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %bb.l ], [ %i.dp, %bb.an ], [ %.sroa.0.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.t ], [ %.sroa.0.0, %.lr.ph.split.split.us ], [ %.sroa.0.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.ds = icmp eq i64 %.sroa.0235.2, %.sroa.0235.0
  %or.cond = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.ar:                                            ; preds = %bb.e
  br i1 %i.x, label %bb.av, label %bb.au

bb.as:                                            ; preds = %bb.e
  br i1 %i.x, label %.thread, label %bb.at

bb.at:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread299, %bb.au, %.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECskXhPDodhyTq_6mdtest.exit, %bb.ji, %bb.as
  %.not26 = icmp eq i64 %i.j, 0
  br i1 %.not26, label %bb.jk, label %bb.jj

bb.au:                                            ; preds = %bb.ar
  %i.dt = sub nuw i64 %i.k, %.sroa.0.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %i.dt, i64 noundef %.sroa.0235.0)
  br label %bb.at

bb.av:                                            ; preds = %bb.ar
  %i.du = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2223
  %.pre = sub nuw i64 %i.k, %.sroa.0.0            ; 29 uses
  %.pre1201 = sub nuw i64 %i.l, %.sroa.0235.0     ; 27 uses
  br i1 %i.du, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.pre, i64 %.pre1201) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ax, !prof !8

bb.ax:                                            ; preds = %bb.aw
  %i.dx = extractvalue { i64, i1 } %i.dv, 0
  %.sroa.0.0.i94 = call noundef i64 @llvm.umax.i64(i64 %.pre1201, i64 %.pre)
  %.sroa.0.0.i93 = call noundef i64 @llvm.umin.i64(i64 %.pre1201, i64 %.pre)
  %i.dy = add i64 %.sroa.0.0.i93, -65
  %or.cond.i27 = icmp ult i64 %i.dy, -64
  %i.dz = icmp ult i64 %.sroa.0.0.i94, 512
  %or.cond1.i = or i1 %i.dz, %or.cond.i27
  %i.ea = icmp ugt i64 %i.dx, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.ea
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i28 = icmp ugt i64 %.pre, %.pre1201
  %i.eb = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !4 ; 2 uses
  br i1 %.not.i28, label %bb.az, label %bb.du

bb.az:                                            ; preds = %bb.ay
  br i1 %i.eb, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ec = add i64 %.pre, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2224
  %i.ed = add nuw i64 %.pre1201, 1
  %i.ee = mul i64 %i.ec, %i.ed                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2226
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ee, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2225
  %i.ef = load i64, ptr %i.c, align 8, !range !9, !noalias !2226, !noundef !4
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !10, !noalias !2226, !noundef !4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.eg, label %bb.bb, label %.lr.ph682.i, !prof !8

bb.bb:                                            ; preds = %bb.ba
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !2226
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ei, i64 %i.ek) #14, !noalias !2225
  unreachable

.lr.ph682.i:                                      ; preds = %bb.ba
  %i.el = load ptr, ptr %i.ej, align 8, !noalias !2226, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2226
  store i64 %i.ei, ptr %i.d, align 8, !alias.scope !2225, !noalias !2224
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !2225, !noalias !2224
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.ee, ptr %i.en, align 8, !alias.scope !2225, !noalias !2224
  br label %.lr.ph682.split.i

.lr.ph682.split.i:                                ; preds = %.lr.ph682.i, %..loopexit20_crit_edge.split.us.i
  %.sroa.0102.0681.i = phi i64 [ %i.eo, %..loopexit20_crit_edge.split.us.i ], [ %.pre1201, %.lr.ph682.i ] ; 2 uses
  %i.eo = add i64 %.sroa.0102.0681.i, -1          ; 4 uses
  %i.ep = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.eu = add i64 %.sroa.09.3.i, %.sroa.0235.0
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.es, i64 noundef %i.et, i64 noundef %i.eu)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc, %._crit_edge708.i
  br i1 %i.le, label %bb.be, label %.sink.split.i.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.de, %bb.bg, %._crit_edge.i, %._crit_edge2102, %._crit_edge694.i, %bb.cs, %bb.bs, %bb.cf, %.lr.ph682.split.i, %.split.us.invoke.i, %bb.dq, %bb.be, %bb.bc
  %lpad.loopexit.split-lp2211 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dt

bb.be:                                            ; preds = %bb.bd
  %i.ev = add i64 %.sroa.038.3.i, %.sroa.0.0
  %i.ew = add i64 %.sroa.09.3.i, %.sroa.0235.0
  %i.ex = sub nuw i64 %.pre1201, %.sroa.09.3.i
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ev, i64 noundef %i.ew, i64 noundef %i.ex)
          to label %.sink.split.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split.i.thread:                             ; preds = %bb.bd, %bb.be
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2224
  br label %bb.at

.sink.split.i:                                    ; preds = %.loopexit5.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2224
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bf:                                            ; preds = %bb.bh, %.lr.ph707.i
  %i.ey = mul i64 %.sroa.09.0705.i, %i.ec         ; 4 uses
  %i.ez = add i64 %.sroa.038.0704.i, %.sroa.0.0   ; 6 uses
  %i.fa = add i64 %.sroa.09.0705.i, %.sroa.0235.0 ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %.val51
  br i1 %i.fb, label %bb.bi, label %.split.us.invoke.i

bb.bg:                                            ; preds = %.lr.ph707.i
  %i.fc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fc, label %.loopexit5.i, label %bb.bf

bb.bi:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.fa ; 3 uses
  %i.fe = icmp ult i64 %i.ez, %.val49
  br i1 %i.fe, label %bb.bj, label %.split.us.invoke.i

bb.bj:                                            ; preds = %bb.bi
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ez ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  %i.fg = load ptr, ptr %i.fd, align 8, !alias.scope !2227, !noalias !2224, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !2227, !noalias !2224, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !2229, !noundef !4
  %i.fl = sub i64 %i.fi, %i.fk                    ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !2229, !noundef !4 ; 2 uses
  %i.fo = icmp ult i64 %i.fl, %i.fn
  br i1 %i.fo, label %.noexc195.i, label %.split.us.invoke.i

.noexc195.i:                                      ; preds = %bb.bj
  %i.fp = load ptr, ptr %i.ff, align 8, !alias.scope !2228, !noalias !2224, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !2228, !noalias !2224, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !2230, !noundef !4
  %i.fu = sub i64 %i.fr, %i.ft                    ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !2230, !noundef !4 ; 2 uses
  %i.fx = icmp ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %bb.bk, label %.split.us.invoke.i

bb.bk:                                            ; preds = %.noexc195.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !2229, !nonnull !4, !noundef !4
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fl
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !2230, !nonnull !4, !noundef !4
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.fu
  %.val.i96 = load i32, ptr %i.ga, align 4, !noundef !4
  %.val218.i = load i32, ptr %i.gd, align 4, !noundef !4
  %i.ge = icmp eq i32 %.val.i96, %.val218.i
  %.pre.i = load ptr, ptr %i.em, align 8, !noalias !2224 ; 4 uses
  %.pre1212.i = load i64, ptr %i.en, align 8, !noalias !2224 ; 8 uses
  br i1 %i.ge, label %bb.bl, label %._crit_edge1218.i

._crit_edge1218.i:                                ; preds = %bb.bk
  %.pre1219.i = add nuw i64 %.sroa.09.0705.i, 1
  %.pre1220.i = mul i64 %.pre1219.i, %i.ec
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gf = add i64 %i.ey, %.sroa.038.0704.i        ; 3 uses
  %i.gg = icmp ult i64 %i.gf, %.pre1212.i
end_hunk_8
begin_hunk_9_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
  %i.agt = add i64 %i.agl, %.sroa.0235.0          ; 3 uses
  %i.agu = sub i64 %i.k, %i.ags
  %i.agv = sub i64 %i.l, %i.agt
  %.sroa.0.0.i158.i = call noundef i64 @llvm.umin.i64(i64 %i.agv, i64 %i.agu) ; 3 uses
  %.not139.i = icmp eq i64 %.sroa.0.0.i158.i, 0
  br i1 %.not139.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %bb.it
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax215.i = call i64 @llvm.umax.i64(i64 %.val69, i64 %i.ags) ; 2 uses
  %i.agw = sub i64 %umax215.i, %i.ags
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val68, i64 %i.ags
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iz, %.lr.ph.i199
  %.sroa.0.0.i114.i = phi i64 [ 0, %.lr.ph.i199 ], [ %i.ahz, %bb.iz ] ; 5 uses
  %i.agx = add nuw i64 %.sroa.0.0.i114.i, %i.agt  ; 2 uses
  %i.agy = icmp ult i64 %i.agx, %.val71
  br i1 %i.agy, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit159.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %umax.i200 = call i64 @llvm.umax.i64(i64 %.val71, i64 %i.agt)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i200, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !2282
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit159.i: ; preds = %bb.iu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i201 = icmp eq i64 %.sroa.0.0.i114.i, %i.agw
  br i1 %exitcond.not.i201, label %bb.iw, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit160.i

bb.iw:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit159.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax215.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !2283
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit160.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit159.i
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.agx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %i.aha = load ptr, ptr %i.agz, align 8, !alias.scope !2284, !noalias !2272, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahc = load i64, ptr %i.ahb, align 8, !alias.scope !2284, !noalias !2272, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahe = load i64, ptr %i.ahd, align 8, !alias.scope !2286, !noalias !2287, !noundef !4
  %i.ahf = sub i64 %i.ahc, %i.ahe                 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.ahh = load i64, ptr %i.ahg, align 8, !alias.scope !2286, !noalias !2287, !noundef !4 ; 2 uses
  %i.ahi = icmp ult i64 %i.ahf, %i.ahh
  br i1 %i.ahi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit137.i, label %bb.ix

bb.ix:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit160.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahf, i64 noundef %i.ahh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2288
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit137.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit160.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.0.0.i114.i ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !alias.scope !2286, !noalias !2287, !nonnull !4, !noundef !4
  %i.ahl = load ptr, ptr %gep.i, align 8, !alias.scope !2285, !noalias !2272, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.ahn = load i64, ptr %i.ahm, align 8, !alias.scope !2285, !noalias !2272, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahl, i64 24
  %i.ahp = load i64, ptr %i.aho, align 8, !alias.scope !2289, !noalias !2287, !noundef !4
  %i.ahq = sub i64 %i.ahn, %i.ahp                 ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %i.ahs = load i64, ptr %i.ahr, align 8, !alias.scope !2289, !noalias !2287, !noundef !4 ; 2 uses
  %i.aht = icmp ult i64 %i.ahq, %i.ahs
  br i1 %i.aht, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i, label %bb.iy

bb.iy:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit137.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahq, i64 noundef %i.ahs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2290
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit137.i
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.ahf
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8, !alias.scope !2289, !noalias !2287, !nonnull !4, !noundef !4
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.ahq
  %.val.i202 = load i32, ptr %i.ahu, align 4, !noalias !2272, !noundef !4
  %.val140.i = load i32, ptr %i.ahx, align 4, !noalias !2272, !noundef !4
  %i.ahy = icmp eq i32 %.val.i202, %.val140.i
  br i1 %i.ahy, label %bb.iz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECskXhPDodhyTq_6mdtest.exit.i

bb.iz:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i
  %i.ahz = add nuw i64 %.sroa.0.0.i114.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.ahz, %.sroa.0.0.i158.i
  br i1 %exitcond216.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECskXhPDodhyTq_6mdtest.exit.i, label %bb.iu

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.iz, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i, %bb.it
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.it ], [ %.sroa.0.0.i114.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.0.0.i158.i, %bb.iz ]
  %i.aia = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i195
  br label %bb.is

bb.ja:                                            ; preds = %bb.is
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.agq
  store i64 %.sroa.04.1.i, ptr %i.aib, align 8, !noalias !2272
  br i1 %.not.i194, label %bb.jc, label %bb.jd

bb.jb:                                            ; preds = %bb.is
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agq, i64 noundef %i.aca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !2272
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
  %i.aig = load i64, ptr %i.aif, align 8, !noalias !2272, !noundef !4
  %i.aih = add i64 %i.aig, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.aih, %.pre
  br i1 %.not135.i, label %bb.jc, label %bb.jh

bb.jg:                                            ; preds = %bb.je
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aid, i64 noundef %i.acj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !2272
  unreachable

bb.jh:                                            ; preds = %bb.jf
  %i.aii = add i64 %.sroa.04.0.i195, %.sroa.0.0
  %i.aij = add i64 %i.agl, %.sroa.0235.0
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.ig
  %.sroa.7.0.ph = phi i64 [ %i.aij, %bb.jh ], [ %i.afx, %bb.ig ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.aii, %bb.jh ], [ %i.afw, %bb.ig ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0235.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.l, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.at

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECskXhPDodhyTq_6mdtest.exit: ; preds = %._crit_edge132.i, %bb.gx
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.pre, i64 noundef %.sroa.0235.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0235.0, i64 noundef %.pre1201)
  br label %bb.at

.thread:                                          ; preds = %bb.as
  %i.aik = sub nuw i64 %i.l, %.sroa.0235.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0235.0, i64 noundef %i.aik)
  br label %bb.at

bb.jj:                                            ; preds = %bb.at
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.j)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.at, %bb.jj
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2415 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
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
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0242.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0242.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 41 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 40 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0242.0, %i.l         ; 3 uses
  %or.cond316 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond316, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.d
  br i1 %i.w, label %bb.am, label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0242.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a, %.outer, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us
  %.sroa.525.2.i.ph.lcssa521 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i729, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a ], [ %.sroa.525.2.i.ph723, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us ], [ %.sroa.525.0.i729, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706 ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa514 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i730, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a ], [ %.sroa.023.1.i.ph724, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us ], [ %.sroa.023.0.i730, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706 ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa507 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i731, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a ], [ %.sroa.9.2.i.ph725, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us ], [ %.sroa.9.0.i731, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706 ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa500 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i732, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a ], [ %.sroa.12.2.i.ph726, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us ], [ %.sroa.12.0.i732, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706 ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select317, 4
  %or.cond322 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond322, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i732 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa500, %.loopexit ] ; 3 uses
  %.sroa.9.0.i731 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa507, %.loopexit ] ; 3 uses
  %.sroa.023.0.i730 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa514, %.loopexit ] ; 3 uses
  %.sroa.525.0.i729 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa521, %.loopexit ] ; 3 uses
  %.sroa.0276.0728 = phi i64 [ 0, %bb.j ], [ %spec.select317, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0276.0728, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0276.0728, 1
  %spec.select317 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0276.0728, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0276.0728, %.sroa.0.0    ; 6 uses
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
  %i.ap = trunc nuw i64 %.sroa.023.1.i.ph.lcssa514 to i1
  br i1 %i.ap, label %.loopexit404, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

.loopexit404:                                     ; preds = %bb.y, %bb.l
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa521, %bb.l ], [ %.sroa.0276.0728, %bb.y ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa507, %bb.l ], [ %.sroa.0278.0559.us, %bb.y ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa500, %bb.l ], [ %.sroa.01.0.i.lcssa, %bb.y ] ; 3 uses
  %i.aq = icmp eq i64 %.sroa.525.1.i, 0
  %i.ar = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.aq, label %bb.ag, label %bb.ah

.split672:                                        ; preds = %.lr.ph.split.split.split.preheader.a, %bb.x
  %.us-phi677 = phi i64 [ %.sroa.0278.0559.us664, %bb.x ], [ 0, %.lr.ph.split.split.split.preheader.a ]
  %i.as = add i64 %.us-phi677, %.sroa.0242.0      ; 2 uses
  %i.at = icmp ult i64 %i.as, %.val51
  br i1 %i.at, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %.split

.split:                                           ; preds = %bb.w, %.split672
  %.us-phi = phi i64 [ %i.as, %.split672 ], [ %i.br, %bb.w ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !2416
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %.split672
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !2417
  unreachable

.lr.ph718:                                        ; preds = %.lr.ph718.preheader, %bb.q
  %.sroa.01.0.i717 = phi i64 [ %i.bk, %bb.q ], [ 0, %.lr.ph718.preheader ] ; 8 uses
  %i.au = and i64 %.sroa.01.0.i717, 1023
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph718
  %i.aw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2418
  br i1 %i.aw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph718
  %i.ax = add nuw i64 %.sroa.01.0.i717, %i.br     ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0.i717, %i.cd
  br i1 %exitcond.not, label %bb.o, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !2419
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84: ; preds = %bb.n
  %i.ay = add nuw i64 %.sroa.01.0.i717, %i.aj     ; 2 uses
  %exitcond957.not = icmp eq i64 %.sroa.01.0.i717, %i.ao
  br i1 %exitcond957.not, label %bb.p, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85

bb.p:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !2420
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit84
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ay ; 2 uses
  %.val52 = load ptr, ptr %i.az, align 8, !alias.scope !2421, !nonnull !4, !align !6, !noundef !4
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val53 = load i64, ptr %i.bb, align 8, !alias.scope !2421, !noundef !4
  %.val54 = load ptr, ptr %i.ba, align 8          ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val55 = load i64, ptr %i.bc, align 8
  %i.bd = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val52, i64 noundef %.val53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2422 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  %i.bf = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val54, i64 noundef %.val55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2422 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85
  %i.bi = extractvalue { ptr, i64 } %i.bf, 0
  %i.bj = extractvalue { ptr, i64 } %i.bd, 0
  %bcmp.i.i87 = call i32 @bcmp(ptr nonnull readonly %i.bj, ptr nonnull readonly %i.bi, i64 %i.be), !alias.scope !2423, !noalias !2422
  %.not321 = icmp eq i32 %bcmp.i.i87, 0
  br i1 %.not321, label %bb.q, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread

bb.q:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88
  %i.bk = add nuw i64 %.sroa.01.0.i717, 1         ; 2 uses
  %exitcond958.not = icmp eq i64 %i.bk, %.sroa.0.0.i83
  br i1 %exitcond958.not, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread, label %.lr.ph718

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88, %bb.q, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i717, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit85 ], [ %.sroa.01.0.i717, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88 ], [ %.sroa.0.0.i83, %bb.q ] ; 8 uses
  %i.bl = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.bl, label %bb.y, label %.outer

.outer:                                           ; preds = %.split569.us, %bb.af, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.af ], [ %.sroa.525.2.i.ph723, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread ], [ %.sroa.525.2.i.ph723, %.split569.us ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.af ], [ %.sroa.023.1.i.ph724, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread ], [ %.sroa.023.1.i.ph724, %.split569.us ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.af ], [ %.sroa.9.2.i.ph725, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread ], [ %.sroa.9.2.i.ph725, %.split569.us ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.af ], [ %.sroa.12.2.i.ph726, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread ], [ %.sroa.12.2.i.ph726, %.split569.us ] ; 2 uses
  %.not.i78557 = icmp ugt i64 %spec.select318.us, 4
  %or.cond323558 = select i1 %i.bm, i1 true, i1 %.not.i78557
  br i1 %or.cond323558, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.sroa.12.2.i.ph726 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i732, %.lr.ph.preheader ] ; 7 uses
  %.sroa.9.2.i.ph725 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i731, %.lr.ph.preheader ] ; 7 uses
  %.sroa.023.1.i.ph724 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i730, %.lr.ph.preheader ] ; 4 uses
  %.sroa.525.2.i.ph723 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i729, %.lr.ph.preheader ] ; 8 uses
  %.sroa.0278.0.ph722 = phi i64 [ %spec.select318.us, %.outer ], [ 0, %.lr.ph.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us, %.lr.ph
  %.sroa.0278.0559.us = phi i64 [ %.sroa.0278.0.ph722, %.lr.ph ], [ %spec.select318.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us ] ; 11 uses
  %i.bm = icmp eq i64 %.sroa.0278.0559.us, 4      ; 3 uses
  %i.bn = add nuw nsw i64 %.sroa.0278.0559.us, 1
  %spec.select318.us = select i1 %i.bm, i64 4, i64 %i.bn ; 4 uses
  %i.bo = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2418
  br i1 %i.bo, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp eq i64 %.sroa.0278.0559.us, 0      ; 2 uses
  %i.bq = or i64 %.sroa.0278.0559.us, %.sroa.0276.0728
  %or.cond2.i.us = icmp eq i64 %i.bq, 0
  br i1 %or.cond2.i.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.ai, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %brmerge.i.not.us = and i1 %.not.i.fr, %i.bp
  br i1 %brmerge.i.not.us, label %bb.w, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us

bb.v:                                             ; preds = %bb.t
  %or.cond3.old.i.us = or i1 %i.af, %i.bp
  br i1 %or.cond3.old.i.us, label %bb.w, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = add i64 %.sroa.0278.0559.us, %.sroa.0242.0 ; 6 uses
  %i.bs = icmp ult i64 %i.br, %.val51
  br i1 %i.bs, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us: ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.br ; 2 uses
  %.val56.us = load ptr, ptr %i.bt, align 8, !alias.scope !2421, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val57.us = load i64, ptr %i.bu, align 8, !alias.scope !2421, !noundef !4
  %.val58.us = load ptr, ptr %i.al, align 8       ; 2 uses
  %.val59.us = load i64, ptr %i.am, align 8
  %i.bv = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val56.us, i64 noundef %.val57.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2424 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us) ]
  %i.bx = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val58.us, i64 noundef %.val59.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2424 ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 1
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us
  %i.ca = extractvalue { ptr, i64 } %i.bx, 0
  %i.cb = extractvalue { ptr, i64 } %i.bv, 0
  %bcmp.i.i.us = call i32 @bcmp(ptr nonnull readonly %i.cb, ptr nonnull readonly %i.ca, i64 %i.bw), !alias.scope !2425, !noalias !2424
  %.not320.us = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %.not320.us, label %.split569.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.us, %bb.v, %bb.u, %bb.s
  %.not.i78.us = icmp ugt i64 %spec.select318.us, 4
  %or.cond323.us = select i1 %i.bm, i1 true, i1 %.not.i78.us
  br i1 %or.cond323.us, label %.loopexit, label %bb.r

.split569.us:                                     ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.us
  %i.cc = sub i64 %i.l, %i.br
  %.sroa.0.0.i83 = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.an) ; 3 uses
  %.not736 = icmp eq i64 %.sroa.0.0.i83, 0
  br i1 %.not736, label %.outer, label %.lr.ph718.preheader

.lr.ph718.preheader:                              ; preds = %.split569.us
  %i.cd = call i64 @llvm.usub.sat.i64(i64 %.val51, i64 %i.br)
  br label %.lr.ph718

.lr.ph.split.a:                                   ; preds = %bb.k
  br i1 %i.ai, label %.lr.ph.split.split.us, label %.lr.ph.split.split.a

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.a, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a
  %.sroa.0278.0559.us664 = phi i64 [ %spec.select318.us665, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a ], [ 0, %.lr.ph.split.a ] ; 4 uses
  %11 = icmp eq i64 %.sroa.0278.0559.us664, 4     ; 2 uses
  %12 = add nuw nsw i64 %.sroa.0278.0559.us664, 1
  %spec.select318.us665 = select i1 %11, i64 4, i64 %12 ; 2 uses
  %i.ce = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2418
  br i1 %i.ce, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.split.us
  %or.cond2.i.us666 = icmp ne i64 %.sroa.0278.0559.us664, 0
  %or.cond734 = and i1 %or.cond2.i.us666, %i.af
  br i1 %or.cond734, label %.split672, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us668.a: ; preds = %bb.x
  %.not.i78.us669 = icmp ugt i64 %spec.select318.us665, 4
  %or.cond323.us670 = select i1 %11, i1 true, i1 %.not.i78.us669
  br i1 %or.cond323.us670, label %.loopexit, label %.lr.ph.split.split.us

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split.a
  br i1 %.not.i.fr, label %.lr.ph.split.split.split.preheader.a, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.preheader.a:             ; preds = %.lr.ph.split.split.a
  %i.cf = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2418
  br i1 %i.cf, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %.split672

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.a, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706
  %.sroa.0278.0559.us702 = phi i64 [ %spec.select318.us703, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706 ], [ 0, %.lr.ph.split.split.a ] ; 2 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2418
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit.thread.us706: ; preds = %.lr.ph.split.split.split.us
  %13 = icmp eq i64 %.sroa.0278.0559.us702, 4     ; 2 uses
  %14 = add nuw nsw i64 %.sroa.0278.0559.us702, 1
  %spec.select318.us703 = select i1 %13, i64 4, i64 %14 ; 2 uses
  %.not.i78.us707 = icmp ugt i64 %spec.select318.us703, 4
  %or.cond323.us708 = select i1 %13, i1 true, i1 %.not.i78.us707
  br i1 %or.cond323.us708, label %.loopexit, label %.lr.ph.split.split.split.us

bb.y:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCskXhPDodhyTq_6mdtest.exit88.thread
  %i.ch = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.ch, label %.loopexit404, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.i89 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0278.0559.us, i64 %.sroa.0276.0728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2426
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2426
  store i64 %.sroa.0.0.i89, ptr %i.q, align 8, !noalias !2426
  store i64 %.sroa.0276.0728, ptr %i.r, align 8, !noalias !2426
  store i64 %.sroa.0278.0559.us, ptr %i.s, align 8, !noalias !2426
  %i.ci = trunc nuw i64 %.sroa.023.1.i.ph724 to i1
  br i1 %i.ci, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2426
  %.sroa.0.0.i90 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph725, i64 %.sroa.525.2.i.ph723)
  store i64 %.sroa.12.2.i.ph726, ptr %i.e, align 8, !noalias !2426
  store i64 %.sroa.0.0.i90, ptr %i.t, align 8, !noalias !2426
  store i64 %.sroa.525.2.i.ph723, ptr %i.u, align 8, !noalias !2426
  store i64 %.sroa.9.2.i.ph725, ptr %i.v, align 8, !noalias !2426
  %i.cj = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph726
  %i.ck = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph726
  %i.cl = zext i1 %i.ck to i8
  br i1 %i.cj, label %bb.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cm = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !2418 ; 2 uses
  %.not7.i = icmp eq i8 %i.cm, 2
  br i1 %.not7.i, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp eq i64 %.sroa.0276.0728, %.sroa.525.2.i.ph723
  %i.co = icmp ugt i64 %.sroa.0276.0728, %.sroa.525.2.i.ph723
  %i.cp = zext i1 %i.co to i8
  br i1 %i.cn, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cq = icmp ugt i64 %.sroa.0278.0559.us, %.sroa.9.2.i.ph725
  %i.cr = zext i1 %i.cq to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0.2.i = phi i8 [ %i.cl, %bb.aa ], [ %i.cm, %bb.ab ], [ %i.cr, %bb.ad ], [ %i.cp, %bb.ac ]
  %i.cs = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2426
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.ae, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph723, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0276.0728, %bb.z ], [ %.sroa.0276.0728, %bb.ae ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph725, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.0278.0559.us, %bb.z ], [ %.sroa.0278.0559.us, %bb.ae ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph726, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCskXhPDodhyTq_6mdtest.exit ], [ %.sroa.01.0.i.lcssa, %bb.z ], [ %.sroa.01.0.i.lcssa, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2426
  br label %.outer

bb.ag:                                            ; preds = %.loopexit404
  br i1 %i.ar, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %.loopexit404
  br i1 %i.ar, label %bb.ak, label %bb.al

bb.ai:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag
  %i.ct = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.cu = add i64 %.sroa.9.1.i, %.sroa.0242.0     ; 2 uses
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ct, i64 noundef %i.cu, i64 noundef %.sroa.12.1.i), !noalias !2427
  %i.cv = add i64 %i.ct, %.sroa.12.1.i
  %i.cw = add i64 %i.cu, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0242.0, i64 noundef %.sroa.9.1.i), !noalias !2427
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0242.0), !noalias !2427
  br label %bb.ai

bb.al:                                            ; preds = %bb.ah
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook7replaceCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0242.0, i64 noundef %.sroa.9.1.i), !noalias !2427
  br label %bb.ai

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.us, %bb.r, %bb.m, %.lr.ph.split.split.split.preheader.a, %bb.f, %bb.i, %bb.l, %bb.ai
  %.sroa.0242.2 = phi i64 [ %.sroa.0242.0, %bb.f ], [ %.sroa.0242.0, %bb.i ], [ %.sroa.0242.0, %bb.l ], [ %i.cw, %bb.ai ], [ %.sroa.0242.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0242.0, %bb.m ], [ %.sroa.0242.0, %bb.r ], [ %.sroa.0242.0, %.lr.ph.split.split.us ], [ %.sroa.0242.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %bb.l ], [ %i.cv, %bb.ai ], [ %.sroa.0.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ], [ %.sroa.0.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.cy = icmp eq i64 %.sroa.0242.2, %.sroa.0242.0
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.am:                                            ; preds = %bb.e
  br i1 %i.x, label %bb.aq, label %bb.ap

bb.an:                                            ; preds = %bb.e
  br i1 %i.x, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread308, %bb.ap, %.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXhPDodhyTq_6mdtest.exit, %bb.ih, %bb.an
  %.not26 = icmp eq i64 %i.j, 0
  br i1 %.not26, label %bb.ij, label %bb.ii

bb.ap:                                            ; preds = %bb.am
  %i.cz = sub nuw i64 %i.k, %.sroa.0.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %i.cz, i64 noundef %.sroa.0242.0)
  br label %bb.ao

bb.aq:                                            ; preds = %bb.am
  %i.da = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2428
  %.pre = sub nuw i64 %i.k, %.sroa.0.0            ; 28 uses
  %.pre959 = sub nuw i64 %i.l, %.sroa.0242.0      ; 26 uses
  br i1 %i.da, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.pre, i64 %.pre959) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.as, !prof !8

bb.as:                                            ; preds = %bb.ar
  %i.dd = extractvalue { i64, i1 } %i.db, 0
  %.sroa.0.0.i92 = call noundef i64 @llvm.umax.i64(i64 %.pre959, i64 %.pre)
  %.sroa.0.0.i91 = call noundef i64 @llvm.umin.i64(i64 %.pre959, i64 %.pre)
  %i.de = add i64 %.sroa.0.0.i91, -65
  %or.cond.i27 = icmp ult i64 %i.de, -64
  %i.df = icmp ult i64 %.sroa.0.0.i92, 512
  %or.cond1.i = or i1 %i.df, %or.cond.i27
  %i.dg = icmp ugt i64 %i.dd, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.dg
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i28 = icmp ugt i64 %.pre, %.pre959
  %i.dh = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !4 ; 2 uses
  br i1 %.not.i28, label %bb.au, label %bb.dg

bb.au:                                            ; preds = %bb.at
  br i1 %i.dh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.di = add i64 %.pre, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2429
  %i.dj = add nuw i64 %.pre959, 1
  %i.dk = mul i64 %i.di, %i.dj                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2431
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dk, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2430
  %i.dl = load i64, ptr %i.c, align 8, !range !9, !noalias !2431, !noundef !4
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !10, !noalias !2431, !noundef !4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.aw, label %.lr.ph385.i, !prof !8

bb.aw:                                            ; preds = %bb.av
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !2431
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #14, !noalias !2430
  unreachable

.lr.ph385.i:                                      ; preds = %bb.av
  %i.dr = load ptr, ptr %i.dp, align 8, !noalias !2431, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2431
  store i64 %i.do, ptr %i.d, align 8, !alias.scope !2430, !noalias !2429
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !2430, !noalias !2429
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 10 uses
  store i64 %i.dk, ptr %i.dt, align 8, !alias.scope !2430, !noalias !2429
  br label %.lr.ph385.split.i

.lr.ph385.split.i:                                ; preds = %.lr.ph385.i, %..loopexit25_crit_edge.split.us.i
  %.sroa.0102.0384.i = phi i64 [ %i.du, %..loopexit25_crit_edge.split.us.i ], [ %.pre959, %.lr.ph385.i ] ; 2 uses
  %i.du = add i64 %.sroa.0102.0384.i, -1          ; 4 uses
  %i.dv = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.ea = add i64 %.sroa.09.3.i, %.sroa.0242.0
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.dy, i64 noundef %i.dz, i64 noundef %i.ea)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax, %._crit_edge411.i
  br i1 %i.jp, label %bb.az, label %.sink.split.i.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.cv, %.noexc.us.i, %bb.bb, %bb.be, %.noexc195.i, %._crit_edge.i, %._crit_edge1604, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit186.thread.i, %bb.ch, %bb.ck, %.noexc183.i, %bb.bl, %bb.bo, %.noexc191.i, %bb.bw, %bb.bz, %.noexc187.i, %.lr.ph385.split.i, %.split.us.invoke.i, %bb.dc, %bb.az, %bb.ax
  %lpad.loopexit.split-lp1683 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.df

bb.az:                                            ; preds = %bb.ay
  %i.eb = add i64 %.sroa.038.3.i, %.sroa.0.0
  %i.ec = add i64 %.sroa.09.3.i, %.sroa.0242.0
  %i.ed = sub nuw i64 %.pre959, %.sroa.09.3.i
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.eb, i64 noundef %i.ec, i64 noundef %i.ed)
          to label %.sink.split.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split.i.thread:                             ; preds = %bb.ay, %bb.az
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2429
  br label %bb.ao

.sink.split.i:                                    ; preds = %.loopexit10.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2429
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.ba:                                            ; preds = %bb.bc, %.lr.ph410.i
  %i.ee = mul i64 %.sroa.09.0408.i, %i.di         ; 4 uses
  %i.ef = add i64 %.sroa.038.0407.i, %.sroa.0.0   ; 7 uses
  %i.eg = add i64 %.sroa.09.0408.i, %.sroa.0242.0 ; 6 uses
  %i.eh = icmp ult i64 %i.eg, %.val51
  br i1 %i.eh, label %bb.bd, label %.split.us.invoke.i

bb.bb:                                            ; preds = %.lr.ph410.i
  %i.ei = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ei, label %.loopexit10.i, label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.eg ; 3 uses
  %i.ek = icmp ult i64 %i.ef, %.val49
  br i1 %i.ek, label %bb.be, label %.split.us.invoke.i

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ef ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  %i.em = load ptr, ptr %i.ej, align 8, !alias.scope !2432, !noalias !2429, !nonnull !4, !align !6, !noundef !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !2432, !noalias !2429, !noundef !4
  %i.ep = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %.noexc195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc195.i:                                      ; preds = %bb.be
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0
  %i.er = extractvalue { ptr, i64 } %i.ep, 1      ; 2 uses
  %i.es = load ptr, ptr %i.el, align 8, !alias.scope !2433, !noalias !2429, !nonnull !4, !align !6, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !2433, !noalias !2429, !noundef !4
  %i.ev = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es, i64 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %.noexc196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc196.i:                                      ; preds = %.noexc195.i
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1
  %i.ex = icmp eq i64 %i.er, %i.ew
  br i1 %i.ex, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.i, label %.noexc196._RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread_crit_edge.i

.noexc196._RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread_crit_edge.i: ; preds = %.noexc196.i
  %.pre.i = load ptr, ptr %i.ds, align 8, !noalias !2429
  %.pre646.i = load i64, ptr %i.dt, align 8, !noalias !2429
  br label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread.i

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.i: ; preds = %.noexc196.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0
  %bcmp.i.i95 = call i32 @bcmp(ptr nonnull readonly %i.eq, ptr nonnull readonly %i.ey, i64 %i.er), !alias.scope !2434
  %i.ez = icmp eq i32 %bcmp.i.i95, 0
  %.pre645.i = load ptr, ptr %i.ds, align 8, !noalias !2429 ; 4 uses
  %.pre647.i = load i64, ptr %i.dt, align 8, !noalias !2429 ; 6 uses
  br i1 %i.ez, label %bb.bf, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread.i

bb.bf:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.i
  %i.fa = add i64 %i.ee, %.sroa.038.0407.i        ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %.pre647.i
  br i1 %i.fb, label %bb.bg, label %.split.us.invoke.i

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread.i: ; preds = %bb.bh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.i, %.noexc196._RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread_crit_edge.i
  %i.fc = phi i64 [ %.pre646.i, %.noexc196._RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread_crit_edge.i ], [ %.pre647.i, %bb.bh ], [ %.pre647.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.i ] ; 4 uses
  %i.fd = phi ptr [ %.pre.i, %.noexc196._RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.thread_crit_edge.i ], [ %.pre645.i, %bb.bh ], [ %.pre645.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskXhPDodhyTq_6mdtest.exit198.i ] ; 2 uses
  %i.fe = add nuw i64 %.sroa.09.0408.i, 1
  %i.ff = mul i64 %i.fe, %i.di                    ; 3 uses
  %i.fg = add i64 %i.ff, %.sroa.038.0407.i        ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.fc
end_hunk_9
