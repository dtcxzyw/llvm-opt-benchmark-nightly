Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17h92f20486b3c30776E":bb.a
  %.pr.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !3316, !noalias !3317
  %.not2.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, 3
  br i1 %.not2.i.i.i.i, label %.thread.thread.i.i.i.i, label %.thread.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.c = load i64, ptr %i.b, align 8, !range !31, !alias.scope !3316, !noalias !3317, !noundef !14
  %.not.i.i.i.i = icmp eq i64 %i.c, 3
  br i1 %.not.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit", label %.thread.thread.i.thread.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.c
  switch i128 %i.a, label %.thread.thread.i.i.i.i [
    i128 17836847231819991356905156008130232076, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"
    i128 41510313511093538954419904852774947439, label %bb.e
    i128 -53771249964019845474254937595496175140, label %bb.f
    i128 -35968050485481711247146577900764590327, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"
  ]

bb.e:                                             ; preds = %.thread.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1816
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"

bb.f:                                             ; preds = %.thread.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1828
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"

.thread.thread.i.i.i.i:                           ; preds = %.thread.i.i.i.i, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 3 uses
  switch i128 %i.a, label %.thread.thread.i.thread.i.i.i [
    i128 70198297207569611815778585104362185, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"
    i128 105252485296479740925328056072217941766, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"
    i128 41510313511093538954419904852774947439, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"
    i128 -53771249964019845474254937595496175140, label %bb.g
    i128 61308018241562176210446271307816537485, label %bb.h
  ]

bb.g:                                             ; preds = %.thread.thread.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1852
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"

bb.h:                                             ; preds = %.thread.thread.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1840
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"

.thread.thread.i.thread.i.i.i:                    ; preds = %.thread.thread.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.j = icmp eq i128 %i.a, -160407974001627958773645380409272343318
  %..i.i.i.i.i.i.i.i.i = zext i1 %i.j to i64
  %i.k = insertvalue { i64, ptr } poison, i64 %..i.i.i.i.i.i.i.i.i, 0
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h6c4e569adc7aa5f7E.exit": ; preds = %bb.a, %.thread.thread.i.thread.i.i.i, %bb.h, %bb.g, %.thread.thread.i.i.i.i, %.thread.thread.i.i.i.i, %.thread.thread.i.i.i.i, %bb.f, %bb.e, %.thread.i.i.i.i, %.thread.i.i.i.i, %bb.d, %bb.b, %bb.b, %bb.a
  %.pn = phi { i64, ptr } [ { i64 1, ptr poison }, %bb.b ], [ { i64 1, ptr poison }, %bb.a ], [ { i64 1, ptr poison }, %.thread.i.i.i.i ], [ { i64 1, ptr poison }, %.thread.thread.i.i.i.i ], [ { i64 1, ptr poison }, %bb.h ], [ %i.k, %.thread.thread.i.thread.i.i.i ], [ { i64 1, ptr poison }, %.thread.thread.i.i.i.i ], [ { i64 1, ptr poison }, %.thread.thread.i.i.i.i ], [ { i64 1, ptr poison }, %bb.g ], [ { i64 1, ptr poison }, %bb.d ], [ { i64 1, ptr poison }, %bb.b ], [ { i64 1, ptr poison }, %bb.e ], [ { i64 1, ptr poison }, %bb.f ], [ { i64 1, ptr poison }, %.thread.i.i.i.i ], [ { i64 1, ptr poison }, %bb.a ]
  %.pn4 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ], [ %i.b, %.thread.i.i.i.i ], [ %i.f, %.thread.thread.i.i.i.i ], [ %i.h, %bb.h ], [ %i.i, %.thread.thread.i.thread.i.i.i ], [ %i.f, %.thread.thread.i.i.i.i ], [ %i.f, %.thread.thread.i.i.i.i ], [ %i.g, %bb.g ], [ @_ZN18tracing_subscriber5layer17NONE_LAYER_MARKER17hfb6f812a5d068741E, %bb.d ], [ %i.b, %bb.b ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.b, %.thread.i.i.i.i ], [ %0, %bb.a ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.pn4, 1
  ret { i64, ptr } %.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17hc25be6e2423e7e36E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !14 ; 2 uses
  switch i128 %i.a, label %bb.d [
    i128 70198297207569611815778585104362185, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit"
    i128 105252485296479740925328056072217941766, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit"
    i128 41510313511093538954419904852774947439, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit"
    i128 -53771249964019845474254937595496175140, label %bb.b
    i128 61308018241562176210446271307816537485, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit"

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = icmp eq i128 %i.a, -160407974001627958773645380409272343318
  %..i.i.i = zext i1 %i.e to i64
  %i.f = insertvalue { i64, ptr } poison, i64 %..i.i.i, 0
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17hb0111b53368e2125E.exit": ; preds = %bb.a, %bb.d, %bb.b, %bb.c, %bb.a, %bb.a
  %.pn = phi { i64, ptr } [ { i64 1, ptr poison }, %bb.c ], [ %i.f, %bb.d ], [ { i64 1, ptr poison }, %bb.a ], [ { i64 1, ptr poison }, %bb.a ], [ { i64 1, ptr poison }, %bb.b ], [ { i64 1, ptr poison }, %bb.a ]
  %.pn6 = phi ptr [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %0, %bb.a ], [ %0, %bb.a ], [ %i.b, %bb.b ], [ %0, %bb.a ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.pn6, 1
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$13event_enabled17h0b7993c839de72f6E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef zeroext i1 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$13event_enabled17h925a014a21a6029bE"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$13event_enabled17he855fb881729aa5bE"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef zeroext i1 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$13event_enabled17h925a014a21a6029bE"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$13event_enabled17hef698b17f1b2c315E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.b = tail call noundef zeroext i1 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$13event_enabled17h925a014a21a6029bE"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 5, 7) i64 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$14max_level_hint17h2ae290dd36cade1aE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17hc25be6e2423e7e36E.exit":
  %.val = load i64, ptr %0, align 8, !range !31, !noundef !14
  %.not.i = icmp eq i64 %.val, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = and i1 %.not.i, %i.c
  %.sroa.07.1.i = select i1 %i.d, i64 5, i64 6
  ret i64 %.sroa.07.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 7) i64 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$14max_level_hint17ha3d2b8c59d174910E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17h42fc40c8f9bba5d8E.exit":
  %i.a = tail call noundef range(i64 0, 7) i64 @_ZN18tracing_subscriber6filter3env9EnvFilter14max_level_hint17hc9965771431915caE(ptr noundef nonnull align 8 %0) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %.val.i = load i64, ptr %i.b, align 8, !range !31, !noundef !14
  %.not.i.i = icmp eq i64 %.val.i, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.d = load i8, ptr %i.c, align 8, !range !38, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = and i1 %.not.i.i, %i.e                   ; 3 uses
  %.sroa.07.1.i.i = select i1 %i.f, i64 5, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.h = load i8, ptr %i.g, align 8, !range !38, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17h8cba3e3e1fa68ccbE.exit", label %bb.a

bb.a:                                             ; preds = %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17h42fc40c8f9bba5d8E.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2417
  %i.k = load i8, ptr %i.j, align 1, !range !38, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select4 = select i1 %i.f, i64 %i.a, i64 6
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17h8cba3e3e1fa68ccbE.exit"

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 2418
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !range !38
  %i.m = trunc nuw i8 %.pre.i to i1
  %.not11.i = icmp eq i64 %i.a, 6
  %or.cond16.i = and i1 %.not11.i, %i.m
  %brmerge = select i1 %or.cond16.i, i1 true, i1 %i.f
  br i1 %brmerge, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17h8cba3e3e1fa68ccbE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not2.i.i.i22.i.not = icmp eq i64 %i.a, 6
  %.sroa.0.0.i25.i = select i1 %.not2.i.i.i22.i.not, i64 %.sroa.07.1.i.i, i64 %i.a
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17h8cba3e3e1fa68ccbE.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$15pick_level_hint17h8cba3e3e1fa68ccbE.exit": ; preds = %bb.b, %bb.c, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17h42fc40c8f9bba5d8E.exit", %bb.d
  %.sroa.07.1.i = phi i64 [ %.sroa.0.0.i25.i, %bb.d ], [ %spec.select4, %bb.b ], [ %i.a, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$12downcast_raw17h42fc40c8f9bba5d8E.exit" ], [ %i.a, %bb.c ]
  ret i64 %.sroa.07.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 7) i64 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$14max_level_hint17hd4e18297cde1dc7fE"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  ret i64 6
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h1b237148addfd9e4E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef range(i8 0, 3) i8 @_ZN18tracing_subscriber6filter3env9EnvFilter17register_callsite17hb13080754c9a9e74E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2417
  %i.c = load i8, ptr %i.b, align 1, !range !38, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.a, 0
  br i1 %i.e, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2409
  %i.h = load i8, ptr %i.g, align 1, !range !38, !noalias !3326, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2401
  %i.k = load i8, ptr %i.j, align 1, !range !38, !noalias !3326, !noundef !14
  %2 = trunc nuw i8 %i.k to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.m = tail call noundef range(i8 0, 3) i8 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h8ef2bac54d0b96fdE"(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 3 uses
  %3 = icmp ne i8 %i.m, 0
  %or.cond.not.i.i.i.i.i.i.i = or i1 %3, %2       ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit", label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i.i"

bb.e:                                             ; preds = %bb.c
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2402
  %i.o = load i8, ptr %i.n, align 2, !range !38, !noalias !3327, !noundef !14
  br label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i"

"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i8.i.i.i.i = phi i8 [ %i.o, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %i.p = icmp eq i8 %.sroa.0.0.i.i.i8.i.i.i.i, 0
  br i1 %i.p, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i.i", label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i.i": ; preds = %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i", %bb.d
  %.sink4.i.i.i = phi i64 [ 618, %bb.d ], [ 626, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i" ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink4.i.i.i
  %i.r = load i8, ptr %i.q, align 2, !range !38, !noalias !3326, !noundef !14
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit"

bb.g:                                             ; preds = %bb.b
  %i.s = tail call noundef i8 @_ZN18tracing_subscriber6filter13layer_filters11FilterState13take_interest17hc4890375aa2c8695E() ; 0 uses
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit"

bb.h:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2409
  %i.v = load i8, ptr %i.u, align 1, !range !38, !noalias !3328, !noundef !14
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2401
  %i.y = load i8, ptr %i.x, align 1, !range !38, !noalias !3328, !noundef !14
  %4 = trunc nuw i8 %i.y to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.aa = tail call noundef range(i8 0, 3) i8 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h8ef2bac54d0b96fdE"(ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 3 uses
  %5 = icmp ne i8 %i.aa, 0
  %or.cond.not.i.i.i.i.i.i7.i = or i1 %5, %4      ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %or.cond.not.i.i.i.i.i.i7.i, label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i", label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i11.i"

bb.j:                                             ; preds = %bb.h
  br i1 %or.cond.not.i.i.i.i.i.i7.i, label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2402
  %i.ac = load i8, ptr %i.ab, align 2, !range !38, !noalias !3329, !noundef !14
  br label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i"

"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i": ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i8.i.i.i9.i = phi i8 [ %i.ac, %bb.k ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ad = icmp eq i8 %.sroa.0.0.i.i.i8.i.i.i9.i, 0
  br i1 %i.ad, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i11.i", label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i11.i": ; preds = %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i", %bb.i
  %.sink4.i.i12.i = phi i64 [ 618, %bb.i ], [ 626, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i" ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink4.i.i12.i
  %i.af = load i8, ptr %i.ae, align 2, !range !38, !noalias !3328, !noundef !14
  br label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i"

"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i": ; preds = %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i11.i", %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i", %bb.i
  %.sroa.0.0.i.i.i10.i = phi i8 [ %i.aa, %bb.i ], [ %.sroa.0.0.i.i.i8.i.i.i9.i, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i8.i" ], [ %i.af, %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i11.i" ] ; 2 uses
  %i.ag = icmp eq i8 %i.a, 1
  br i1 %i.ag, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i"
  %i.ah = icmp eq i8 %.sroa.0.0.i.i.i10.i, 0
  br i1 %i.ah, label %bb.m, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit"

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2418
  %i.aj = load i8, ptr %i.ai, align 2, !range !38, !noundef !14
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h3d341a9e125f1b70E.exit": ; preds = %bb.d, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i", %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i.i", %bb.g, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i", %bb.l, %bb.m
  %.sroa.0.0.i = phi i8 [ %i.aj, %bb.m ], [ 0, %bb.g ], [ %.sroa.0.0.i.i.i10.i, %bb.l ], [ 1, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17heaf07d3d3b54be88E.exit13.i" ], [ %i.m, %bb.d ], [ %.sroa.0.0.i.i.i8.i.i.i.i, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i.i.i.i" ], [ %i.r, %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split.i.i.i" ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17hb39e43d2872c641bE"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.b = load i8, ptr %i.a, align 1, !range !38, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 617
  %i.e = load i8, ptr %i.d, align 1, !range !38, !noalias !14, !noundef !14
  %2 = trunc nuw i8 %i.e to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = tail call noundef range(i8 0, 3) i8 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h8ef2bac54d0b96fdE"(ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 3 uses
  %3 = icmp ne i8 %i.g, 0
  %or.cond.not.i.i.i.i = or i1 %3, %2             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond.not.i.i.i.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit", label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split"

bb.c:                                             ; preds = %bb.a
  br i1 %or.cond.not.i.i.i.i, label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 618
  %i.i = load i8, ptr %i.h, align 2, !range !38, !noalias !3332, !noundef !14
  br label %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i"

"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i": ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i8.i = phi i8 [ %i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = icmp eq i8 %.sroa.0.0.i.i.i8.i, 0
  br i1 %i.j, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split", label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split": ; preds = %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i", %bb.b
  %.sink4 = phi i64 [ 618, %bb.b ], [ 626, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i" ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4
  %i.l = load i8, ptr %i.k, align 2, !range !38, !noundef !14
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit": ; preds = %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split", %bb.b, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i"
  %.sroa.0.0.i = phi i8 [ %i.g, %bb.b ], [ %.sroa.0.0.i.i.i8.i, %"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite28_$u7b$$u7b$closure$u7d$$u7d$17hf45b47097536b92aE.exit9.i" ], [ %i.l, %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17h04c23b529da82a60E.exit.sink.split" ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17hf06bc142f0da9d6dE"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.b = load i8, ptr %i.a, align 1, !range !38, !noundef !14
  %2 = trunc nuw i8 %i.b to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call noundef range(i8 0, 3) i8 @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$17register_callsite17h8ef2bac54d0b96fdE"(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %3 = icmp ne i8 %i.d, 0
  %or.cond.not.i = or i1 %3, %2
  br i1 %or.cond.not.i, label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17he09b140e35934824E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.f = load i8, ptr %i.e, align 2, !range !38, !noundef !14
  br label %"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17he09b140e35934824E.exit"

"_ZN18tracing_subscriber5layer7layered24Layered$LT$A$C$B$C$S$GT$13pick_interest17he09b140e35934824E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$19record_follows_from17h413d6dd55051b55bE"(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$19record_follows_from17hb0ec63db1641b03cE"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$19record_follows_from17hd8850fe33de5c3aaE"(ptr nofree nonnull readonly align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$4exit17h38d138901889ea64E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  tail call void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$4exit17hc9cecd545df198b0E"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @_ZN18tracing_subscriber6filter3env9EnvFilter7on_exit17he70cfe19584d125eE(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.a, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$4exit17hba467e981dcfa3efE"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @"_ZN104_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_core..subscriber..Subscriber$GT$4exit17hb3c8a204c3a0ae4aE"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !3339, !noalias !3340, !noundef !14 ; 2 uses
  %i.q = and i8 %i.p, 4
  %.not.i = icmp eq i8 %i.q, 0                    ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = and i8 %i.p, 8
  %i.t = icmp ne i8 %i.s, 0
  %i.u = load i8, ptr %i.r, align 8, !range !38, !alias.scope !3339, !noalias !3340
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.c, label %"_ZN124_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$C$N$C$E$C$W$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$7on_exit17h4baff4237ffc99fbE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3342
  call void @_ZN18tracing_subscriber8registry10LookupSpan4span17hb5d09d09703ea29aE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !3343
  %i.w = load ptr, ptr %i.a, align 8, !noalias !3342, !noundef !14 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx46.i, i64 24, i1 false), !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3342
  store ptr %i.w, ptr %i.m, align 8, !noalias !3341
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3341
  %i.x = invoke { ptr, i1 } @"_ZN102_$LT$tracing_subscriber..registry..sharded..Data$u20$as$u20$tracing_subscriber..registry..SpanData$GT$14extensions_mut17hb548493e2cd2ff64E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.8.0..sroa_idx.i)
          to label %bb.g unwind label %.thread.i, !noalias !3339 ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3342
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #33, !noalias !3339
  unreachable

bb.f:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp42.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr76drop_in_place$LT$tracing_subscriber..registry..extensions..ExtensionsMut$GT$17hc487f4a4440139c1E.exit23.i"

.thread.i:                                        ; preds = %bb.o, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr76drop_in_place$LT$tracing_subscriber..registry..extensions..ExtensionsMut$GT$17hc487f4a4440139c1E.exit23.i"

bb.g:                                             ; preds = %bb.d
  %i.z = extractvalue { ptr, i1 } %i.x, 0         ; 2 uses
  %i.aa = extractvalue { ptr, i1 } %i.x, 1
  store ptr %i.z, ptr %i.l, align 8, !noalias !3341
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 8, !noalias !3341
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = invoke noundef align 8 dereferenceable_or_null(40) ptr @_ZN18tracing_subscriber8registry10extensions15ExtensionsInner7get_mut17h53dde07f00a7db17E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.h unwind label %bb.r, !noalias !3339 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %.not17.i = icmp eq ptr %i.ae, null
  br i1 %.not17.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !3339, !noundef !14
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !noalias !3339
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i, %bb.h
  br i1 %.not.i, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aj = invoke { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE()
          to label %bb.l unwind label %bb.r, !noalias !3339 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ak = extractvalue { i64, i32 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { i64, i32 } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !3339, !noundef !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !range !44, !noalias !3339, !noundef !14
  %i.aq = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.ak, i32 noundef %i.al, i64 noundef %i.an, i32 noundef %i.ap)
          to label %bb.m unwind label %bb.r, !noalias !3339 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1      ; 2 uses
  %i.at = mul i64 %i.ar, 1000000000
  %i.au = icmp ult i32 %i.as, 1000000000
  call void @llvm.assume(i1 %i.au)
  %i.av = zext nneg i32 %i.as to i64
  %i.aw = add i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !3339, !noundef !14
  %i.az = add i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ax, align 8, !noalias !3339
  store i64 %i.ak, ptr %i.am, align 8, !noalias !3339
  store i32 %i.al, ptr %i.ao, align 8, !noalias !3339
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  %.val21.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !3341, !nonnull !14, !noundef !14
  %i.ba = load ptr, ptr %.val21.i, align 8, !noalias !3339, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr @37, ptr %i.k, align 8, !noalias !3341
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.bc, align 8, !noalias !3341
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !noalias !3339
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !3341
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !3341
  store ptr %i.i, ptr %i.j, align 8, !noalias !3341
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @44, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3341
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @40, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3341
  store ptr %i.j, ptr %i.h, align 8, !noalias !3341
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.bf, align 8, !noalias !3341
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.bg, align 8, !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3341
  %i.bh = load i64, ptr %1, align 8, !range !45, !alias.scope !3340, !noalias !3339, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bi, align 8, !noalias !3341
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ba, ptr %i.bj, align 8, !noalias !3341
  store i64 2, ptr %i.g, align 8, !noalias !3341
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.bh, ptr %i.bk, align 8, !noalias !3341
end_hunk_0
