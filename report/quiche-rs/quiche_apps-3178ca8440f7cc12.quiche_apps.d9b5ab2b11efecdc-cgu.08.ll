Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.08?download=true
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3JBf551F2Kj_4qlog6events5http315PriorityUpdatedECsiGRwBGCeC5s_11quiche_apps:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d, !dbg !11201

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !11198
  unreachable, !dbg !11198

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.b
    #dbg_value(ptr %i.a, !7988, !DIExpression(), !11202)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.e, !dbg !11204

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !11187

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11187
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #15
          to label %common.resume unwind label %bb.h, !dbg !11187

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11187 ; 3 uses
    #dbg_value(ptr %i.h, !7971, !DIExpression(), !11205)
    #dbg_value(ptr %i.h, !7979, !DIExpression(), !11207)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.f, !dbg !11209

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiGRwBGCeC5s_11quiche_apps.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !7988, !DIExpression(), !11210)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.g, !dbg !11212

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !11209
  unreachable, !dbg !11209

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !11187

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiGRwBGCeC5s_11quiche_apps.exit
    #dbg_value(ptr %i.h, !7988, !DIExpression(), !11213)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !11215
  ret void, !dbg !11187

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !11187
  unreachable, !dbg !11187
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection14dgram_send_bufCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 16 dereferenceable(15552) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11216 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11235, !DIExpression(), !11252)
    #dbg_declare(ptr %1, !11236, !DIExpression(), !11253)
    #dbg_value(i8 0, !11254, !DIExpression(), !11269)
    #dbg_value(i8 0, !11271, !DIExpression(), !11279)
    #dbg_value(i8 0, !11282, !DIExpression(), !11290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11292), !dbg !11295
    #dbg_value(ptr %0, !11296, !DIExpression(), !11324)
    #dbg_declare(ptr %i.d, !11305, !DIExpression(), !11326)
    #dbg_value(i64 4, !11327, !DIExpression(), !11332)
    #dbg_value(i64 3, !11334, !DIExpression(), !11340)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11342
  %i.g = load i64, ptr %i.f, align 16, !dbg !11342, !range !5676, !alias.scope !11292, !noundef !504
  %i.h = trunc nuw i64 %i.g to i1, !dbg !11343
  br i1 %i.h, label %bb.b, label %.thread, !dbg !11343

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11342
  %i.j = load i64, ptr %i.i, align 8, !dbg !11344, !alias.scope !11292, !noundef !504
    #dbg_value(i64 %i.j, !11303, !DIExpression(), !11345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11346, !noalias !11292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11347), !dbg !11350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11351), !dbg !11350
    #dbg_value(ptr %0, !11353, !DIExpression(), !11369)
    #dbg_value(i64 poison, !11371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11407)
    #dbg_value(i64 poison, !11371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11419), !dbg !11422
    #dbg_value(ptr %0, !11423, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11446)
    #dbg_value(ptr %0, !11448, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11471)
    #dbg_declare(ptr poison, !11473, !DIExpression(), !11518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11520, !noalias !11521
    #dbg_value(ptr %0, !11523, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11531)
    #dbg_value(ptr %0, !11533, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11546)
    #dbg_value(ptr %0, !11548, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11552)
    #dbg_value(ptr %0, !11554, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11560)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13416, !dbg !11562 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !11562, !alias.scope !11583, !noalias !11584, !nonnull !504, !noundef !504 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13424, !dbg !11585 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !dbg !11585, !alias.scope !11583, !noalias !11584, !noundef !504
    #dbg_value(i64 %i.n, !11586, !DIExpression(), !11603)
    #dbg_value(i64 %i.n, !11611, !DIExpression(), !11617)
    #dbg_value(ptr %i.l, !11609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11619)
    #dbg_value(ptr %i.l, !11594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11620)
    #dbg_value(i64 %i.n, !11609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11619)
    #dbg_value(i64 %i.n, !11594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11620)
    #dbg_value(ptr %i.l, !11599, !DIExpression(), !11621)
    #dbg_value(ptr %i.l, !11616, !DIExpression(), !11617)
  %i.o = getelementptr inbounds nuw [2792 x i8], ptr %i.l, i64 %i.n, !dbg !11622 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13432, !dbg !11623 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !11623, !alias.scope !11583, !noalias !11584, !noundef !504 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !dbg !11624, !noalias !11521
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11624
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !11624, !noalias !11521
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11624
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !11624, !noalias !11521
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !11624
  store i64 %i.q, ptr %i.r, align 8, !dbg !11624, !noalias !11521
    #dbg_value(ptr %i.c, !11514, !DIExpression(), !11625)
    #dbg_value(ptr %i.c, !11626, !DIExpression(), !11682)
    #dbg_declare(ptr poison, !11654, !DIExpression(), !11684)
    #dbg_declare(ptr poison, !11655, !DIExpression(), !11685)
    #dbg_declare(ptr poison, !11656, !DIExpression(), !11686)
  br label %bb.c, !dbg !11687

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.s = invoke { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc unwind label %.body.thread49.loopexit, !dbg !11688

.noexc:                                           ; preds = %bb.c
  %i.t = extractvalue { i64, ptr } %i.s, 1, !dbg !11688 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null, !dbg !11689
  br i1 %.not.i.i.i.i, label %_RNvMs2_NtCs3f36owOmepS_6quiche4pathNtB5_7PathMap10get_active.exit.i.i, label %bb.d, !dbg !11690

bb.d:                                             ; preds = %.noexc
    #dbg_value(i64 poison, !11658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %i.t, !11658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(i64 poison, !11692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %i.t, !11692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_declare(ptr poison, !11699, !DIExpression(), !11704)
    #dbg_value(ptr poison, !11705, !DIExpression(), !11716)
    #dbg_value(ptr poison, !11715, !DIExpression(), !11716)
    #dbg_value(ptr poison, !11712, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11718)
    #dbg_value(ptr %i.t, !11719, !DIExpression(), !11725)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2784, !dbg !11727
  %i.v = load i8, ptr %i.u, align 8, !dbg !11727, !range !5441, !alias.scope !11728, !noalias !11521, !noundef !504
  %i.w = trunc nuw i8 %i.v to i1, !dbg !11727
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 2791
  %i.y = load i8, ptr %i.x, align 1, !range !11731, !alias.scope !11728, !noalias !11521
  %.not.i.i.i.i.i.i = icmp ne i8 %i.y, 0
  %or.cond.not.i.i.i.i.i = select i1 %i.w, i1 %.not.i.i.i.i.i.i, i1 false, !dbg !11727
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !11727
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11727, !range !5676, !alias.scope !11728, !noalias !11521
  %.fr.i.i.i.i.i = freeze i64 %i.aa, !dbg !11727
  %i.ab = trunc i64 %.fr.i.i.i.i.i to i1, !dbg !11727
  %i.ac = and i1 %or.cond.not.i.i.i.i.i, %i.ab, !dbg !11727
  br i1 %i.ac, label %bb.f, label %bb.c, !dbg !11732

_RNvMs2_NtCs3f36owOmepS_6quiche4pathNtB5_7PathMap10get_active.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11733, !noalias !11521
  br label %bb.e, !dbg !11734

bb.e:                                             ; preds = %.noexc41, %bb.f, %_RNvMs2_NtCs3f36owOmepS_6quiche4pathNtB5_7PathMap10get_active.exit.i.i
    #dbg_value(ptr %0, !11735, !DIExpression(DW_OP_plus_uconst, 14424, DW_OP_stack_value), !11741)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 14424, !dbg !11743
  %i.ae = invoke noundef nonnull align 16 ptr @_RNvMs_NtCs3f36owOmepS_6quiche3cidNtB4_35BoundedNonEmptyConnectionIdVecDeque10get_oldest(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad)
          to label %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection14destination_idCsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %.body.thread49.loopexit.split-lp, !dbg !11744

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11733, !noalias !11521
    #dbg_value(ptr %i.t, !11359, !DIExpression(), !11745)
  %i.ag = load i64, ptr %i.af, align 8, !dbg !11746, !range !5676, !noalias !11747, !noundef !504
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !11748
  br i1 %i.ah, label %bb.g, label %bb.e, !dbg !11748

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !11746
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !11749, !noalias !11747, !noundef !504
    #dbg_value(i64 %i.aj, !11362, !DIExpression(), !11750)
    #dbg_value(i64 %i.aj, !11417, !DIExpression(), !11751)
    #dbg_value(ptr %0, !11416, !DIExpression(DW_OP_plus_uconst, 14424, DW_OP_stack_value), !11752)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 14424, !dbg !11753
  %i.al = invoke noundef align 16 ptr @_RNvMs_NtCs3f36owOmepS_6quiche3cidNtB4_35BoundedNonEmptyConnectionIdVecDeque3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, i64 noundef %i.aj)
          to label %.noexc41 unwind label %.body.thread49.loopexit.split-lp, !dbg !11754 ; 2 uses

.noexc41:                                         ; preds = %bb.g
    #dbg_value(ptr %i.al, !11404, !DIExpression(), !11407)
  %.not18.i.i = icmp eq ptr %i.al, null, !dbg !11755
  br i1 %.not18.i.i, label %bb.e, label %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection14destination_idCsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !11756

_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection14destination_idCsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.e, %.noexc41
  %.pn.i.i = phi ptr [ %i.al, %.noexc41 ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.33.0.sink.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 64, !dbg !11757
  %.sroa.33.0.sink.i.i = load i64, ptr %.sroa.33.0.sink.in.i.i, align 16, !dbg !11757, !noalias !11347, !noundef !504
  %.sroa.02.0.sink.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 56, !dbg !11757
  %.sroa.02.0.sink.i.i = load ptr, ptr %.sroa.02.0.sink.in.i.i, align 8, !dbg !11757, !noalias !11347, !nonnull !504, !noundef !504
  store i64 -1, ptr %i.d, align 8, !dbg !11777, !alias.scope !11347, !noalias !11784
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11777
  store ptr %.sroa.02.0.sink.i.i, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !dbg !11777, !alias.scope !11347, !noalias !11784
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11777 ; 2 uses
  store i64 %.sroa.33.0.sink.i.i, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !dbg !11777, !alias.scope !11347, !noalias !11784
  call void @llvm.experimental.noalias.scope.decl(metadata !11785), !dbg !11788
    #dbg_value(ptr %0, !11789, !DIExpression(), !11799)
    #dbg_value(ptr %0, !11801, !DIExpression(), !11807)
    #dbg_declare(ptr poison, !11809, !DIExpression(), !11834)
    #dbg_value(i64 16383, !11836, !DIExpression(), !11840)
    #dbg_value(ptr %0, !11423, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11842)
    #dbg_value(ptr %0, !11448, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11844)
    #dbg_declare(ptr poison, !11473, !DIExpression(), !11846)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11848, !noalias !11849
    #dbg_value(ptr %0, !11523, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11853)
    #dbg_value(ptr %0, !11533, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11855)
    #dbg_value(ptr %0, !11548, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11857)
    #dbg_value(ptr %0, !11554, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11859)
    #dbg_value(i64 %i.n, !11586, !DIExpression(), !11861)
    #dbg_value(i64 %i.n, !11611, !DIExpression(), !11864)
    #dbg_value(ptr %i.l, !11609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11866)
    #dbg_value(ptr %i.l, !11594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11867)
    #dbg_value(i64 %i.n, !11609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11866)
    #dbg_value(i64 %i.n, !11594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11867)
    #dbg_value(ptr %i.l, !11599, !DIExpression(), !11868)
    #dbg_value(ptr %i.l, !11616, !DIExpression(), !11864)
  store ptr %i.l, ptr %i.b, align 8, !dbg !11869, !noalias !11849
  %.sroa.4.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11869
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i33.i, align 8, !dbg !11869, !noalias !11849
  %.sroa.5.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11869
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i34.i, align 8, !dbg !11869, !noalias !11849
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11869
  store i64 %i.q, ptr %i.am, align 8, !dbg !11869, !noalias !11849
    #dbg_value(ptr %i.b, !11514, !DIExpression(), !11870)
    #dbg_value(ptr %i.b, !11626, !DIExpression(), !11871)
    #dbg_declare(ptr poison, !11654, !DIExpression(), !11873)
    #dbg_declare(ptr poison, !11655, !DIExpression(), !11874)
    #dbg_declare(ptr poison, !11656, !DIExpression(), !11875)
  br label %bb.h, !dbg !11876

bb.h:                                             ; preds = %bb.i, %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection14destination_idCsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.an = invoke { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i unwind label %bb.m, !dbg !11877

.noexc.i:                                         ; preds = %bb.h
  %i.ao = extractvalue { i64, ptr } %i.an, 1, !dbg !11877 ; 6 uses
  %.not.i.i.i35.i = icmp eq ptr %i.ao, null, !dbg !11878
  br i1 %.not.i.i.i35.i, label %bb.j, label %bb.i, !dbg !11879

bb.i:                                             ; preds = %.noexc.i
    #dbg_value(i64 poison, !11658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11880)
    #dbg_value(ptr %i.ao, !11658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11880)
    #dbg_value(i64 poison, !11692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11881)
    #dbg_value(ptr %i.ao, !11692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11881)
    #dbg_declare(ptr poison, !11699, !DIExpression(), !11883)
    #dbg_value(ptr poison, !11705, !DIExpression(), !11884)
    #dbg_value(ptr poison, !11715, !DIExpression(), !11884)
    #dbg_value(ptr poison, !11712, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11886)
    #dbg_value(ptr %i.ao, !11719, !DIExpression(), !11887)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2784, !dbg !11889
  %i.aq = load i8, ptr %i.ap, align 8, !dbg !11889, !range !5441, !alias.scope !11890, !noalias !11893, !noundef !504
  %i.ar = trunc nuw i8 %i.aq to i1, !dbg !11889
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 2791
  %i.at = load i8, ptr %i.as, align 1, !range !11731, !alias.scope !11890, !noalias !11893
  %.not.i.i.i.i.i36.i = icmp ne i8 %i.at, 0
  %or.cond.not.i.i.i.i37.i = select i1 %i.ar, i1 %.not.i.i.i.i.i36.i, i1 false, !dbg !11889
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !11889
  %i.av = load i64, ptr %i.au, align 8, !dbg !11889, !range !5676, !alias.scope !11890, !noalias !11893
  %.fr.i.i.i.i38.i = freeze i64 %i.av, !dbg !11889
  %i.aw = trunc i64 %.fr.i.i.i.i38.i to i1, !dbg !11889
  %i.ax = and i1 %or.cond.not.i.i.i.i37.i, %i.aw, !dbg !11889
  br i1 %i.ax, label %bb.k, label %bb.h, !dbg !11894

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11895, !noalias !11849
    #dbg_value(ptr null, !11831, !DIExpression(), !11896)
    #dbg_value(i64 poison, !11795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11897)
    #dbg_value(i64 poison, !11795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11897)
  br label %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection25max_send_udp_payload_sizeCsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !11898

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11895, !noalias !11849
    #dbg_value(ptr %i.ao, !11831, !DIExpression(), !11896)
    #dbg_value(ptr %i.ao, !11832, !DIExpression(), !11899)
    #dbg_value(ptr %i.ao, !11900, !DIExpression(), !11905)
    #dbg_value(ptr %i.ao, !11907, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11919)
    #dbg_value(i64 poison, !11795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11897)
    #dbg_value(i64 1, !11795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11897)
    #dbg_value(i64 poison, !11797, !DIExpression(), !11921)
    #dbg_value(i64 poison, !11839, !DIExpression(), !11840)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 15526, !dbg !11922
  %i.az = load i8, ptr %i.ay, align 2, !dbg !11922, !range !5441, !alias.scope !11923, !noundef !504
  %i.ba = trunc nuw i8 %i.az to i1, !dbg !11922
  br i1 %i.ba, label %bb.l, label %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection25max_send_udp_payload_sizeCsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !11924

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !11925
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !11925, !range !9109, !noalias !11785, !noundef !504
  %.not9.i.i = icmp eq i64 %i.bc, 2, !dbg !11925
  %.sroa.03.0.in.v.i.i = select i1 %.not9.i.i, i64 1648, i64 2432, !dbg !11925
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.03.0.in.v.i.i, !dbg !11925
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8, !dbg !11925, !noalias !11785, !noundef !504
    #dbg_value(i64 %.sroa.03.0.i.i, !11795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11897)
    #dbg_value(i64 %.sroa.03.0.i.i, !11797, !DIExpression(), !11921)
    #dbg_value(i64 %.sroa.03.0.i.i, !11839, !DIExpression(), !11840)
    #dbg_value(ptr undef, !11926, !DIExpression(DW_OP_deref), !11933)
    #dbg_value(ptr undef, !11930, !DIExpression(DW_OP_deref), !11933)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.03.0.i.i, i64 16383), !dbg !11935
  br label %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection25max_send_udp_payload_sizeCsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !11936

.sink.split.sink.split.i:                         ; preds = %bb.s, %bb.o
  %.sroa.5.0.ph.ph.i = phi i64 [ undef, %bb.o ], [ %i.bp, %bb.s ]
  %.sroa.0.0.ph.ph.i = phi i1 [ false, %bb.o ], [ %i.bo, %bb.s ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.w unwind label %.body.thread49.loopexit.split-lp, !dbg !11937

bb.m:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #15
          to label %.body.thread unwind label %bb.v, !dbg !11942

_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection25max_send_udp_payload_sizeCsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %..i.i.i, %bb.l ], [ 1200, %bb.k ], [ 1200, %bb.j ], !dbg !11897
    #dbg_value(i64 %.sroa.0.0.i.i, !11307, !DIExpression(), !11943)
    #dbg_value(i64 %.sroa.0.0.i.i, !11330, !DIExpression(), !11944)
    #dbg_value(i64 %.sroa.0.0.i.i, !11330, !DIExpression(), !11332)
    #dbg_value(i64 %.sroa.0.0.i.i, !11330, !DIExpression(), !11946)
    #dbg_value(i64 %.sroa.0.0.i.i, !11948, !DIExpression(), !11952)
    #dbg_value(i64 %.sroa.0.0.i.i, !11339, !DIExpression(), !11340)
    #dbg_value(ptr %i.d, !11954, !DIExpression(), !11962)
  %i.be = load i64, ptr %i.d, align 8, !dbg !11964, !range !5771, !noalias !11292, !noundef !504
  %i.bf = icmp eq i64 %i.be, -1, !dbg !11964      ; 2 uses
    #dbg_value(i64 poison, !11331, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11944)
    #dbg_value(i64 poison, !11307, !DIExpression(), !11943)
    #dbg_value(i64 poison, !11330, !DIExpression(), !11944)
    #dbg_value(i64 poison, !11330, !DIExpression(), !11332)
    #dbg_value(i64 poison, !11330, !DIExpression(), !11946)
    #dbg_value(i64 poison, !11948, !DIExpression(), !11952)
    #dbg_value(i64 poison, !11339, !DIExpression(), !11340)
    #dbg_value(ptr %0, !11965, !DIExpression(DW_OP_plus_uconst, 9200, DW_OP_stack_value), !11977)
    #dbg_value(ptr %0, !11979, !DIExpression(DW_OP_plus_uconst, 11440, DW_OP_stack_value), !12001)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11440, !dbg !12003
  %i.bh = load i64, ptr %i.bg, align 16, !dbg !12003, !range !5771, !alias.scope !11292, !noundef !504
  %.not.i = icmp eq i64 %i.bh, -1, !dbg !12003
  br i1 %.not.i, label %bb.n, label %bb.r, !dbg !12004

bb.n:                                             ; preds = %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection25max_send_udp_payload_sizeCsiGRwBGCeC5s_11quiche_apps.exit.i
    #dbg_value(ptr %i.d, !9137, !DIExpression(), !12005)
    #dbg_value(ptr %i.d, !9139, !DIExpression(), !12007)
  br i1 %i.bf, label %.thread54, label %bb.o, !dbg !12009

.thread54:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11942, !noalias !11292
  br label %.thread, !dbg !12010

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.d, !7979, !DIExpression(), !12011)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.sink.split.i unwind label %bb.p, !dbg !12013

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !7988, !DIExpression(), !12014)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread unwind label %bb.q, !dbg !12016

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !12013
  unreachable, !dbg !12013

bb.r:                                             ; preds = %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection25max_send_udp_payload_sizeCsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.bk = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !dbg !12017, !noalias !11292
    #dbg_value(i64 %i.bk, !11331, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11944)
  %i.bl = add i64 %i.bk, 1, !dbg !12018
    #dbg_value(i64 %i.bl, !11331, !DIExpression(), !11944)
  %i.bm = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i.i, i64 %i.bl), !dbg !12019
    #dbg_value(i64 poison, !11307, !DIExpression(), !11943)
    #dbg_value(i64 poison, !11330, !DIExpression(), !11944)
    #dbg_value(i64 poison, !11330, !DIExpression(), !11332)
    #dbg_value(i64 poison, !11330, !DIExpression(), !11946)
    #dbg_value(i64 poison, !11948, !DIExpression(), !11952)
    #dbg_value(i64 poison, !11339, !DIExpression(), !11340)
    #dbg_value(i64 16, !11331, !DIExpression(), !11946)
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.bm, i64 20), !dbg !12020
    #dbg_value(i64 %i.bn, !11307, !DIExpression(), !11943)
    #dbg_value(i64 %i.bn, !11330, !DIExpression(), !11944)
    #dbg_value(i64 %i.bn, !11330, !DIExpression(), !11332)
    #dbg_value(i64 %i.bn, !11330, !DIExpression(), !11946)
    #dbg_value(i64 %i.bn, !11948, !DIExpression(), !11952)
    #dbg_value(i64 %i.bn, !11339, !DIExpression(), !11340)
    #dbg_value(i64 %i.j, !11951, !DIExpression(), !11952)
    #dbg_value(ptr undef, !11926, !DIExpression(DW_OP_deref), !12021)
    #dbg_value(ptr undef, !11930, !DIExpression(DW_OP_deref), !12021)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.j), !dbg !12023 ; 2 uses
    #dbg_value(i64 %..i.i, !11307, !DIExpression(), !11943)
    #dbg_value(i64 %..i.i, !11330, !DIExpression(), !11944)
    #dbg_value(i64 %..i.i, !11330, !DIExpression(), !11332)
    #dbg_value(i64 %..i.i, !11330, !DIExpression(), !11946)
    #dbg_value(i64 %..i.i, !11948, !DIExpression(), !11952)
    #dbg_value(i64 %..i.i, !11339, !DIExpression(), !11340)
  %i.bo = icmp samesign ugt i64 %..i.i, 2, !dbg !12024 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection5closeCsiGRwBGCeC5s_11quiche_apps:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche5error15ConnectionErrorEECsiGRwBGCeC5s_11quiche_apps.exit76 unwind label %bb.r, !dbg !14275

bb.q:                                             ; preds = %bb.l
    #dbg_value(ptr %3, !14190, !DIExpression(), !14192)
    #dbg_value(ptr %3, !14197, !DIExpression(), !14199)
    #dbg_value(ptr %i.aj, !14191, !DIExpression(), !14192)
    #dbg_value(ptr %i.aj, !14198, !DIExpression(), !14199)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %3, i64 %4, i1 false), !dbg !14276
    #dbg_value(i64 %4, !14095, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14256)
  br label %bb.m, !dbg !14277

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5error15ConnectionErrorECsiGRwBGCeC5s_11quiche_apps.exit.i72
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body73, !dbg !14278

.body73:                                          ; preds = %bb.o, %bb.r
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.aq, %bb.r ], [ %i.ao, %bb.o ]
  store i64 %i.x, ptr %i.n, align 8, !dbg !14278
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14800, !dbg !14278
  store ptr %i.aj, ptr %.sroa.025.sroa.5.0..sroa_idx, align 16, !dbg !14278
  %.sroa.025.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14808, !dbg !14278
  store i64 %4, ptr %.sroa.025.sroa.6.0..sroa_idx, align 8, !dbg !14278
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14816, !dbg !14278
  store i64 %2, ptr %.sroa.526.0..sroa_idx, align 16, !dbg !14278
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14824, !dbg !14278
  store i8 %i.al, ptr %.sroa.629.0..sroa_idx, align 8, !dbg !14278
  br label %common.resume, !dbg !14278

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche5error15ConnectionErrorEECsiGRwBGCeC5s_11quiche_apps.exit76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14279), !dbg !14282
    #dbg_value(ptr %0, !14283, !DIExpression(), !14310)
    #dbg_value(ptr %0, !14312, !DIExpression(), !14315)
    #dbg_declare(ptr %i.g, !14287, !DIExpression(), !14317)
    #dbg_declare(ptr %i.e, !14308, !DIExpression(), !14318)
    #dbg_value(ptr @0, !14319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(i64 12, !14319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(ptr @0, !14328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14336)
    #dbg_value(i64 12, !14328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14336)
    #dbg_value(ptr @0, !14332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14338)
    #dbg_value(i64 12, !14332, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14338)
    #dbg_value(ptr @0, !14339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14344)
    #dbg_value(i64 12, !14339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14344)
    #dbg_value(ptr @0, !14346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14353)
    #dbg_value(i64 12, !14346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14353)
    #dbg_declare(ptr poison, !14355, !DIExpression(), !14359)
    #dbg_declare(ptr poison, !14370, !DIExpression(), !14390)
    #dbg_declare(ptr poison, !14392, !DIExpression(), !14396)
    #dbg_declare(ptr poison, !14398, !DIExpression(), !14402)
    #dbg_declare(ptr poison, !14404, !DIExpression(), !14425)
    #dbg_value(i64 0, !14427, !DIExpression(), !14433)
    #dbg_value(ptr @1, !14319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14435)
    #dbg_value(i64 30, !14319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14435)
    #dbg_value(ptr @1, !14328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14437)
    #dbg_value(i64 30, !14328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14437)
    #dbg_value(ptr @1, !14334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14440)
    #dbg_value(i64 30, !14334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14440)
    #dbg_value(ptr @1, !14339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14441)
    #dbg_value(i64 30, !14339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14441)
    #dbg_value(ptr @1, !14346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14444)
    #dbg_value(i64 30, !14346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14444)
    #dbg_declare(ptr poison, !14355, !DIExpression(), !14447)
    #dbg_declare(ptr poison, !14370, !DIExpression(), !14454)
    #dbg_declare(ptr poison, !14392, !DIExpression(), !14457)
    #dbg_declare(ptr poison, !14398, !DIExpression(), !14460)
    #dbg_declare(ptr poison, !14404, !DIExpression(), !14463)
    #dbg_value(i64 0, !14427, !DIExpression(), !14466)
    #dbg_declare(ptr poison, !14355, !DIExpression(), !14469)
    #dbg_declare(ptr poison, !14370, !DIExpression(), !14497)
    #dbg_declare(ptr poison, !14392, !DIExpression(), !14500)
    #dbg_declare(ptr poison, !14398, !DIExpression(), !14503)
    #dbg_declare(ptr poison, !14404, !DIExpression(), !14506)
    #dbg_value(i64 0, !14427, !DIExpression(), !14509)
    #dbg_declare(ptr poison, !14355, !DIExpression(), !14512)
    #dbg_declare(ptr poison, !14370, !DIExpression(), !14526)
    #dbg_declare(ptr poison, !14392, !DIExpression(), !14529)
    #dbg_declare(ptr poison, !14398, !DIExpression(), !14532)
    #dbg_declare(ptr poison, !14404, !DIExpression(), !14535)
    #dbg_value(i64 0, !14427, !DIExpression(), !14538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14541, !noalias !14279
  %i.ar = load i8, ptr %i.p, align 2, !dbg !14542, !range !5441, !alias.scope !14279, !noundef !504
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !14542
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 14832, !dbg !14543
  br i1 %i.as, label %bb.u, label %bb.t, !dbg !14544

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr @1, !14368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(ptr @1, !14363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14546)
    #dbg_value(ptr @1, !14358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(ptr @1, !14373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14548)
    #dbg_value(i64 30, !14368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14545)
    #dbg_value(i64 30, !14363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14546)
    #dbg_value(i64 30, !14358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14547)
    #dbg_value(i64 30, !14373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14548)
    #dbg_value(i64 30, !14378, !DIExpression(), !14549)
    #dbg_value(i64 30, !14395, !DIExpression(), !14550)
    #dbg_value(i64 30, !14401, !DIExpression(), !14551)
    #dbg_value(i64 30, !14552, !DIExpression(), !14557)
    #dbg_value(i64 30, !14560, !DIExpression(), !14565)
    #dbg_value(i64 30, !14407, !DIExpression(), !14568)
    #dbg_value(i64 30, !14431, !DIExpression(), !14466)
    #dbg_value(i64 1, !14408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14568)
    #dbg_value(i64 1, !14432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14466)
    #dbg_value(i64 1, !14408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14568)
    #dbg_value(i64 1, !14432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14569, !noalias !14279
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !14569, !noalias !14279
  %i.au = load i64, ptr %i.c, align 8, !dbg !14569, !range !5676, !noalias !14279, !noundef !504
  %i.av = trunc nuw i64 %i.au to i1, !dbg !14570
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14568
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !14568, !range !14204, !noalias !14279, !noundef !504 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14568 ; 2 uses
  br i1 %i.av, label %bb.v, label %bb.w, !dbg !14570, !prof !12622

bb.u:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 15533, !dbg !14571
  %i.ba = load i8, ptr %i.az, align 1, !dbg !14571, !range !5441, !alias.scope !14279, !noundef !504
  %i.bb = trunc nuw i8 %i.ba to i1, !dbg !14571
  br i1 %i.bb, label %bb.z, label %bb.y, !dbg !14544

bb.v:                                             ; preds = %bb.t
  %i.bc = load i64, ptr %i.ay, align 8, !dbg !14572, !noalias !14279
    #dbg_value(i64 %i.ax, !14415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14573)
    #dbg_value(i64 %i.bc, !14415, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14573)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.bc) #18, !dbg !14574, !noalias !14279
  unreachable, !dbg !14574

bb.w:                                             ; preds = %bb.t
  %i.bd = load ptr, ptr %i.ay, align 8, !dbg !14575, !noalias !14279, !nonnull !504, !noundef !504 ; 2 uses
    #dbg_value(i64 %i.ax, !14413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14576)
    #dbg_value(ptr %i.bd, !14413, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14576)
    #dbg_value(ptr poison, !14430, !DIExpression(), !14577)
  %i.be = icmp samesign ugt i64 %i.ax, 29, !dbg !14578
    #dbg_value(i1 true, !14579, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14582)
  tail call void @llvm.assume(i1 %i.be), !dbg !14584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14585, !noalias !14279
    #dbg_value(i64 %i.ax, !14380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14586)
    #dbg_value(ptr %i.bd, !14380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14586)
    #dbg_value(i64 0, !14380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14586)
    #dbg_value(ptr @1, !14555, !DIExpression(), !14557)
    #dbg_value(ptr @1, !14563, !DIExpression(), !14565)
    #dbg_value(ptr %i.bd, !14556, !DIExpression(), !14557)
    #dbg_value(ptr %i.bd, !14564, !DIExpression(), !14565)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bd, ptr noundef nonnull align 1 dereferenceable(30) @1, i64 30, i1 false), !dbg !14587, !noalias !14279
    #dbg_value(i64 30, !14380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14586)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14588
  store i64 0, ptr %i.g, align 8, !dbg !14588, !noalias !14279
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14588
  store i64 0, ptr %i.bg, align 8, !dbg !14588, !noalias !14279
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14588
  store i64 %i.ax, ptr %i.bh, align 8, !dbg !14588, !noalias !14279
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !14588
  store ptr %i.bd, ptr %.sroa.423.0..sroa_idx.i, align 8, !dbg !14588, !noalias !14279
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !14588
  store i64 30, ptr %.sroa.524.0..sroa_idx.i, align 8, !dbg !14588, !noalias !14279
  store <4 x i8> <i8 0, i8 1, i8 -1, i8 -2>, ptr %i.bf, align 8, !dbg !14588, !noalias !14279
  br label %bb.x, !dbg !14589

bb.x:                                             ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiGRwBGCeC5s_11quiche_apps.exit.i, %bb.ab, %bb.w
  %i.bi = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 2)
          to label %bb.aq unwind label %bb.ap, !dbg !14590, !noalias !14279 ; 2 uses

bb.y:                                             ; preds = %bb.u
  %i.bj = load i64, ptr %i.at, align 16, !dbg !14591, !range !5771, !alias.scope !14279, !noundef !504
  %.not.i = icmp eq i64 %i.bj, -1, !dbg !14591
  br i1 %.not.i, label %bb.aa, label %bb.ab, !dbg !14544

bb.z:                                             ; preds = %bb.u
    #dbg_value(ptr @0, !14368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14592)
    #dbg_value(ptr @0, !14363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14593)
    #dbg_value(ptr @0, !14358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14594)
    #dbg_value(ptr @0, !14373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14595)
    #dbg_value(i64 12, !14368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14592)
    #dbg_value(i64 12, !14363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14593)
    #dbg_value(i64 12, !14358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14594)
    #dbg_value(i64 12, !14373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14595)
    #dbg_value(i64 12, !14374, !DIExpression(), !14596)
    #dbg_value(i64 12, !14395, !DIExpression(), !14597)
    #dbg_value(i64 12, !14401, !DIExpression(), !14598)
    #dbg_value(i64 12, !14552, !DIExpression(), !14599)
    #dbg_value(i64 12, !14560, !DIExpression(), !14601)
    #dbg_value(i64 12, !14407, !DIExpression(), !14603)
    #dbg_value(i64 12, !14431, !DIExpression(), !14433)
    #dbg_value(i64 1, !14408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14603)
    #dbg_value(i64 1, !14432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14433)
    #dbg_value(i64 1, !14408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14603)
    #dbg_value(i64 1, !14432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14604, !noalias !14279
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !14604, !noalias !14279
  %i.bk = load i64, ptr %i.d, align 8, !dbg !14604, !range !5676, !noalias !14279, !noundef !504
  %i.bl = trunc nuw i64 %i.bk to i1, !dbg !14605
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14603
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !14603, !range !14204, !noalias !14279, !noundef !504 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14603 ; 2 uses
  br i1 %i.bl, label %bb.an, label %bb.ao, !dbg !14605, !prof !12622

bb.aa:                                            ; preds = %bb.y
    #dbg_value(ptr %i.n, !14298, !DIExpression(), !14606)
  %i.bp = icmp eq i64 %.sink81, 0, !dbg !14607
  %..i = select i1 %i.bp, i8 0, i8 3, !dbg !14607
  %.sroa.049.0.i.a = select i1 %i.ae, i8 -2, i8 17, !dbg !14607
  %.sroa.050.0.i = select i1 %i.ae, i8 17, i8 -1, !dbg !14607
  %.sroa.01.1.i = select i1 %i.ae, i8 -1, i8 %..i, !dbg !14607
    #dbg_value(i8 %.sroa.01.1.i, !14303, !DIExpression(), !14608)
    #dbg_value(i8 %.sroa.050.0.i, !14302, !DIExpression(), !14608)
    #dbg_value(i8 %.sroa.049.0.i.a, !14300, !DIExpression(), !14608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14609, !noalias !14279
  call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink83, i64 noundef %.sink82), !dbg !14609, !noalias !14279
    #dbg_value(ptr %i.f, !14495, !DIExpression(), !14610)
    #dbg_value(ptr %i.f, !14487, !DIExpression(), !14611)
    #dbg_value(ptr %i.f, !14612, !DIExpression(), !14628)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14631
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !14631, !noalias !14279, !nonnull !504
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14631
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !14631, !noalias !14279 ; 5 uses
    #dbg_value(i64 %i.bt, !14352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14632)
    #dbg_value(i64 %i.bt, !14343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14633)
    #dbg_value(i64 %i.bt, !14489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14634)
    #dbg_value(ptr %i.br, !14352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14632)
    #dbg_value(ptr %i.br, !14343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14633)
    #dbg_value(ptr %i.br, !14489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14634)
    #dbg_value(ptr %i.br, !14368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr %i.br, !14363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14636)
    #dbg_value(ptr %i.br, !14358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14637)
    #dbg_value(ptr %i.br, !14373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14638)
    #dbg_value(i64 %i.bt, !14368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14635)
    #dbg_value(i64 %i.bt, !14363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14636)
    #dbg_value(i64 %i.bt, !14358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14637)
    #dbg_value(i64 %i.bt, !14373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14638)
    #dbg_value(i64 %i.bt, !14386, !DIExpression(), !14639)
    #dbg_value(i64 %i.bt, !14395, !DIExpression(), !14640)
    #dbg_value(i64 %i.bt, !14401, !DIExpression(), !14641)
    #dbg_value(i64 %i.bt, !14552, !DIExpression(), !14642)
    #dbg_value(i64 %i.bt, !14560, !DIExpression(), !14645)
    #dbg_value(i64 %i.bt, !14407, !DIExpression(), !14648)
    #dbg_value(i64 %i.bt, !14431, !DIExpression(), !14538)
    #dbg_value(i64 1, !14408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i64 1, !14432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14538)
    #dbg_value(i64 1, !14408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(i64 1, !14432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14649, !noalias !14279
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.bt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac, !dbg !14649, !noalias !14279

bb.ab:                                            ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14650
  store i64 0, ptr %i.g, align 8, !dbg !14650, !noalias !14279
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14650
  store i64 0, ptr %i.bv, align 8, !dbg !14650, !noalias !14279
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14650
  store i64 -1, ptr %i.bw, align 8, !dbg !14650, !noalias !14279
  store <4 x i8> <i8 2, i8 -1, i8 -1, i8 -2>, ptr %i.bu, align 8, !dbg !14650, !noalias !14279
  br label %bb.x, !dbg !14651

bb.ac:                                            ; preds = %bb.ae, %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #15
          to label %common.resume unwind label %bb.am, !dbg !14652, !noalias !14279

bb.ad:                                            ; preds = %bb.aa
  %i.by = load i64, ptr %i.b, align 8, !dbg !14649, !range !5676, !noalias !14279, !noundef !504
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !14653
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14648
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !14648, !range !14204, !noalias !14279, !noundef !504 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14648 ; 2 uses
  br i1 %i.bz, label %bb.ae, label %bb.af, !dbg !14653, !prof !12622

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !14654, !noalias !14279
    #dbg_value(i64 %i.cb, !14423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14655)
    #dbg_value(i64 %i.cd, !14423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14655)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cb, i64 %i.cd) #18
          to label %bb.al unwind label %bb.ac, !dbg !14656, !noalias !14279

bb.af:                                            ; preds = %bb.ad
  %i.ce = load ptr, ptr %i.cc, align 8, !dbg !14657, !noalias !14279, !nonnull !504, !noundef !504 ; 2 uses
    #dbg_value(i64 %i.cb, !14421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14658)
    #dbg_value(ptr %i.ce, !14421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14658)
    #dbg_value(ptr poison, !14430, !DIExpression(), !14659)
  %i.cf = icmp ule i64 %i.bt, %i.cb, !dbg !14660
    #dbg_value(i1 true, !14579, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14661)
  tail call void @llvm.assume(i1 %i.cf), !dbg !14663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14664, !noalias !14279
    #dbg_value(i64 %i.cb, !14388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14665)
    #dbg_value(ptr %i.ce, !14388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14665)
    #dbg_value(i64 0, !14388, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14665)
  %.not151.i = icmp eq i64 %i.bt, 0, !dbg !14666
  br i1 %.not151.i, label %bb.ag, label %bb.ak, !dbg !14666

bb.ag:                                            ; preds = %bb.ak, %bb.af
    #dbg_value(i64 %i.bt, !14388, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14665)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14667
  store i8 0, ptr %i.cg, align 8, !dbg !14667, !noalias !14279
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 59, !dbg !14667
  store i8 %.sroa.049.0.i.a, ptr %i.ch, align 1, !dbg !14667, !noalias !14279
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 58, !dbg !14667
  store i8 %.sroa.050.0.i, ptr %i.ci, align 2, !dbg !14667, !noalias !14279
  store i64 1, ptr %i.g, align 8, !dbg !14667, !noalias !14279
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14667
  store i64 %.sink81, ptr %i.cj, align 8, !dbg !14667, !noalias !14279
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14667
  store i64 0, ptr %i.ck, align 8, !dbg !14667, !noalias !14279
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14667
  store i64 %i.cb, ptr %i.cl, align 8, !dbg !14667, !noalias !14279
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !14667
  store ptr %i.ce, ptr %.sroa.445.0..sroa_idx.i, align 8, !dbg !14667, !noalias !14279
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !14667
  store i64 %i.bt, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !14667, !noalias !14279
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 57, !dbg !14667
  store i8 %.sroa.01.1.i, ptr %i.cm, align 1, !dbg !14667, !noalias !14279
    #dbg_value(ptr %i.f, !8838, !DIExpression(), !14668)
  %i.cn = load i64, ptr %i.f, align 8, !dbg !14670, !range !5771, !alias.scope !14671, !noalias !14279, !noundef !504
  %i.co = icmp eq i64 %i.cn, -1, !dbg !14670
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiGRwBGCeC5s_11quiche_apps.exit.i, label %bb.ah, !dbg !14670

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.f, !7971, !DIExpression(), !14674)
    #dbg_value(ptr %i.f, !7979, !DIExpression(), !14676)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit.i.i unwind label %bb.ai, !dbg !14678, !noalias !14279

bb.ai:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !7988, !DIExpression(), !14679)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.aj, !dbg !14681, !noalias !14279

bb.aj:                                            ; preds = %bb.ai
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !14678, !noalias !14279
  unreachable, !dbg !14678

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit.i.i: ; preds = %bb.ah
    #dbg_value(ptr %i.f, !7988, !DIExpression(), !14682)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !14684, !noalias !14279
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !14670

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiGRwBGCeC5s_11quiche_apps.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14652, !noalias !14279
  br label %bb.x, !dbg !14652

bb.ak:                                            ; preds = %bb.af
    #dbg_value(ptr %i.br, !14555, !DIExpression(), !14642)
    #dbg_value(ptr %i.br, !14563, !DIExpression(), !14645)
    #dbg_value(ptr %i.ce, !14556, !DIExpression(), !14642)
    #dbg_value(ptr %i.ce, !14564, !DIExpression(), !14645)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 1 %i.br, i64 %i.bt, i1 false), !dbg !14685, !noalias !14279
    #dbg_value(i64 %i.bt, !14388, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14665)
  br label %bb.ag, !dbg !14686

bb.al:                                            ; preds = %bb.ae
  unreachable

bb.am:                                            ; preds = %bb.be, %bb.ac
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !14687
  unreachable, !dbg !14687

bb.an:                                            ; preds = %bb.z
  %i.cs = load i64, ptr %i.bo, align 8, !dbg !14688, !noalias !14279
    #dbg_value(i64 %i.bn, !14411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14689)
    #dbg_value(i64 %i.cs, !14411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14689)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.cs) #18, !dbg !14690, !noalias !14279
  unreachable, !dbg !14690

bb.ao:                                            ; preds = %bb.z
  %i.ct = load ptr, ptr %i.bo, align 8, !dbg !14691, !noalias !14279, !nonnull !504, !noundef !504 ; 2 uses
    #dbg_value(i64 %i.bn, !14409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14692)
    #dbg_value(ptr %i.ct, !14409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14692)
    #dbg_value(ptr poison, !14430, !DIExpression(), !14693)
  %i.cu = icmp samesign ugt i64 %i.bn, 11, !dbg !14694
    #dbg_value(i1 true, !14579, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14695)
  tail call void @llvm.assume(i1 %i.cu), !dbg !14697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14698, !noalias !14279
    #dbg_value(i64 %i.bn, !14376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14699)
    #dbg_value(ptr %i.ct, !14376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14699)
    #dbg_value(i64 0, !14376, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14699)
    #dbg_value(ptr @0, !14555, !DIExpression(), !14599)
    #dbg_value(ptr @0, !14563, !DIExpression(), !14601)
    #dbg_value(ptr %i.ct, !14556, !DIExpression(), !14599)
    #dbg_value(ptr %i.ct, !14564, !DIExpression(), !14601)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ct, ptr noundef nonnull align 1 dereferenceable(12) @0, i64 12, i1 false), !dbg !14700, !noalias !14279
    #dbg_value(i64 12, !14376, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14699)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14701
  store i64 0, ptr %i.g, align 8, !dbg !14701, !noalias !14279
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14701
  store i64 0, ptr %i.cw, align 8, !dbg !14701, !noalias !14279
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14701
  store i64 %i.bn, ptr %i.cx, align 8, !dbg !14701, !noalias !14279
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !14701
  store ptr %i.ct, ptr %.sroa.414.0..sroa_idx.i, align 8, !dbg !14701, !noalias !14279
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !14701
  store i64 12, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !14701, !noalias !14279
  store <4 x i8> <i8 0, i8 2, i8 -1, i8 -2>, ptr %i.cv, align 8, !dbg !14701, !noalias !14279
  br label %bb.x, !dbg !14702

bb.ap:                                            ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be, !dbg !14703

bb.aq:                                            ; preds = %bb.x
    #dbg_value(ptr poison, !14704, !DIExpression(), !14708)
    #dbg_value(ptr %0, !14707, !DIExpression(DW_OP_plus_uconst, 14041, DW_OP_stack_value), !14710)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 13648, !dbg !14711 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 14041, !dbg !14711
  %i.da = load i8, ptr %i.cz, align 1, !dbg !14711, !range !5768, !alias.scope !14279, !noundef !504
  switch i8 %i.da, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
  ], !dbg !14712

default.unreachable:                              ; preds = %bb.aw, %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.db = icmp eq i8 %i.bi, 0, !dbg !14712
  br i1 %i.db, label %bb.at, label %bb.au, !dbg !14590

bb.as:                                            ; preds = %bb.aq
  %i.dc = icmp eq i8 %i.bi, 2, !dbg !14712
  br i1 %i.dc, label %bb.au, label %bb.at, !dbg !14712

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.dd = load i64, ptr %i.cy, align 16, !dbg !14713, !range !5771, !alias.scope !14279, !noundef !504
  %.not155.i = icmp eq i64 %i.dd, -1, !dbg !14713
  br i1 %.not155.i, label %bb.au, label %bb.av, !dbg !14714

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(392) %i.cy)
          to label %bb.ba unwind label %.split.thread.i, !dbg !14715

.split.thread.i:                                  ; preds = %bb.au
  %i.de = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.cy, align 16, !dbg !14715, !alias.scope !14279
  br label %bb.be, !dbg !14703

bb.av:                                            ; preds = %bb.at
    #dbg_value(ptr %i.cy, !14306, !DIExpression(), !14716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14717, !noalias !14279
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !dbg !14719, !noalias !14279
  store i64 4, ptr %i.e, align 8, !dbg !14718, !noalias !14279
  %i.dg = call { i64, ptr } @_RNvMNtCs3JBf551F2Kj_4qlog8streamerNtB2_12QlogStreamer18add_event_data_now(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.e), !dbg !14720 ; 2 uses
  %i.dh = extractvalue { i64, ptr } %i.dg, 0, !dbg !14721
  %i.di = extractvalue { i64, ptr } %i.dg, 1, !dbg !14721 ; 4 uses
    #dbg_value(i64 %i.dh, !14722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14727)
    #dbg_value(ptr %i.di, !14722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14727)
  %cond.i = icmp eq i64 %i.dh, 3, !dbg !14729
  br i1 %cond.i, label %bb.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3JBf551F2Kj_4qlog5ErrorEECsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !14729

bb.aw:                                            ; preds = %bb.av
    #dbg_value(ptr poison, !5924, !DIExpression(), !14730)
    #dbg_value(ptr poison, !5952, !DIExpression(), !14734)
    #dbg_value(ptr poison, !5962, !DIExpression(), !14736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14738, !noalias !14279
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
    #dbg_value(ptr %i.di, !5970, !DIExpression(), !14739)
    #dbg_declare(ptr poison, !5977, !DIExpression(), !14741)
    #dbg_value(i64 1, !5994, !DIExpression(), !14742)
    #dbg_value(i64 1, !6006, !DIExpression(), !14744)
    #dbg_value(i64 -1, !6015, !DIExpression(), !14746)
    #dbg_value(ptr %i.di, !6024, !DIExpression(), !14748)
    #dbg_value(ptr %i.di, !6003, !DIExpression(), !14742)
  %i.dj = ptrtoint ptr %i.di to i64, !dbg !14750  ; 2 uses
    #dbg_value(i64 %i.dj, !5978, !DIExpression(), !14751)
  %i.dk = and i64 %i.dj, 3, !dbg !14752
  switch i64 %i.dk, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsiGRwBGCeC5s_11quiche_apps.exit.i.i.i
    i64 3, label %bb.ax
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsiGRwBGCeC5s_11quiche_apps.exit.i.i.i
    i64 1, label %bb.ay
  ], !dbg !14753, !prof !6035

bb.ax:                                            ; preds = %bb.aw
    #dbg_value(i64 %i.dj, !5982, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14754)
    #dbg_value(i64 %i.dj, !6037, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14755)
  %i.dl = icmp ult ptr %i.di, inttoptr (i64 188978561024 to ptr), !dbg !14757
    #dbg_value(i8 poison, !6193, !DIExpression(), !14758)
    #dbg_value(ptr poison, !6206, !DIExpression(), !14760)
  %i.dm = and i64 %i.dj, 1095216660480, !dbg !14761
  %i.dn = icmp ne i64 %i.dm, 1095216660480, !dbg !14761
  call void @llvm.assume(i1 %i.dl), !dbg !14762
  call void @llvm.assume(i1 %i.dn), !dbg !14762
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsiGRwBGCeC5s_11quiche_apps.exit.i.i.i, !dbg !14763

bb.ay:                                            ; preds = %bb.aw
    #dbg_value(ptr %i.di, !6012, !DIExpression(), !14744)
    #dbg_value(ptr %i.di, !6021, !DIExpression(), !14746)
  %i.do = getelementptr i8, ptr %i.di, i64 -1, !dbg !14764 ; 2 uses
    #dbg_value(ptr %i.do, !5986, !DIExpression(), !14765)
    #dbg_declare(ptr poison, !6217, !DIExpression(), !14766)
end_hunk_1
