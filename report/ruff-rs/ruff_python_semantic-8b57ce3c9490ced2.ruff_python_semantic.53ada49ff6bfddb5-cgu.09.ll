Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.09?download=true
inline.NumInlined: 140
inline.NumDeleted: 85
begin_hunk_0_@_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17module_visibility:bb.a
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.z

bb.q:                                             ; preds = %bb.l, %.noexc, %bb.n
  %.pn14.i = phi i64 [ %i.ag, %bb.l ], [ %i.ag, %.noexc ], [ %i.al, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  store i32 95, ptr %i.a, align 4, !noalias !139
  %i.ao = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.pn14.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139
  br i1 %i.ao, label %bb.r, label %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread17

bb.r:                                             ; preds = %.noexc6
  %i.ap = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.pn14.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.r
  br i1 %i.ap, label %bb.s, label %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread

bb.s:                                             ; preds = %.noexc7
  %i.aq = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.pn14.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
          to label %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit unwind label %.loopexit.split-lp

_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit: ; preds = %bb.s
  br i1 %i.aq, label %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread17, label %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread

_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread17: ; preds = %.noexc6, %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit
  %i.ar = load i64, ptr %i.d, align 8, !range !3, !alias.scope !140, !noundef !4
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %bb.t

bb.t:                                             ; preds = %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread17
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7bpTdHNYxeX_20ruff_python_semantic.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.x, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.x ], [ %i.at, %bb.u ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17module_visibility0EB2j_.exit.sink.split

_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread: ; preds = %.noexc7, %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit
  %i.av = load i64, ptr %i.d, align 8, !range !3, !alias.scope !141, !noundef !4
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic.exit11, label %bb.w

bb.w:                                             ; preds = %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7bpTdHNYxeX_20ruff_python_semantic.exit.i10 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7bpTdHNYxeX_20ruff_python_semantic.exit.i10: ; preds = %bb.w
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs7bpTdHNYxeX_20ruff_python_semantic.exit11: ; preds = %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17is_private_module.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7bpTdHNYxeX_20ruff_python_semantic.exit.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility17module_visibility0EB2j_.exit.sink.split

bb.z:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility19function_visibility(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.d = load i8, ptr %i.c, align 1, !range !9, !alias.scope !144, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !144, !noundef !4
  %i.g = and i64 %i.f, 72057594037927935
  %i.h = icmp ult i8 %i.d, -48
  %i.i = zext i8 %i.d to i64
  %i.j = add nsw i64 %i.i, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %.sroa.0.0.i = select i1 %i.h, i64 %spec.store.select.i, i64 %i.g
  %i.k = icmp ugt i8 %i.d, -49
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !144
  %.sroa.01.0.i = select i1 %i.k, ptr %i.l, ptr %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 95, ptr %i.a, align 4
  %i.m = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility7is_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = xor i32 %i.b, 1416525170
  %i.d = getelementptr i8, ptr %0, i64 3
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 1953719636
  %i.g = or i32 %i.c, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.k, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility8is_final(ptr noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %1, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility8is_final0EB2x_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %2, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 5), !noalias !147 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.d, %i.a
  %or.cond = select i1 %i.c, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility8is_final0EB2x_.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility8is_final0EB2x_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.c, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility8is_magic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidate(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.513.i.i.i.i = alloca [24 x i8], align 8  ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i.i = alloca [24 x i8], align 8    ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [136 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [144 x i8], align 8               ; 4 uses
  %i.k = alloca [144 x i8], align 8               ; 16 uses
  %i.l = alloca [144 x i8], align 8               ; 8 uses
  %i.m = alloca [144 x i8], align 8               ; 9 uses
  %i.n = alloca [144 x i8], align 8               ; 11 uses
  %i.o = alloca [144 x i8], align 8               ; 7 uses
  %i.p = alloca [144 x i8], align 8               ; 14 uses
  %i.q = alloca [144 x i8], align 8               ; 6 uses
  %i.r = alloca [144 x i8], align 8               ; 5 uses
  %i.s = load i32, ptr %0, align 8, !range !8, !noundef !4
  %i.t = icmp eq i32 %i.s, 25
  br i1 %i.t, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !range !8, !noundef !4
  %i.x = icmp eq i32 %i.w, 16
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.z)
  %i.aa = load i64, ptr %i.r, align 8, !range !7, !noundef !4
  %.not31 = icmp eq i64 %i.aa, 2
  br i1 %.not31, label %bb.n, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.v)
  %i.ab = load i64, ptr %i.q, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %i.ab, 2
  br i1 %.not, label %bb.q, label %bb.p

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(144) %i.r, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ac = load i64, ptr %i.m, align 8, !range !5, !alias.scope !239, !noundef !4 ; 2 uses
  %i.ad = trunc nuw i64 %i.ac to i1               ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !239, !nonnull !4 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !239
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !239
  %i.ak = zext i32 %i.aj to i64
  %.sroa.8.0.i = select i1 %i.ad, i64 %i.ah, i64 %i.ak
  %.sroa.01.0.i = select i1 %i.ad, ptr %i.af, ptr %i.ae
  %i.al = icmp eq i64 %.sroa.8.0.i, 2
  br i1 %i.al, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.01.0.i.sroa.sel = select i1 %i.ad, ptr %.sroa.gep62, ptr %i.ag
  %i.am = load i64, ptr %.sroa.01.0.i.sroa.sel, align 8, !noundef !4
  %i.an = icmp eq i64 %i.am, 7
  br i1 %i.an, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = xor i32 %i.ap, 1734831980
  %i.ar = getelementptr i8, ptr %i.ao, i64 3
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 1735289191
  %i.au = or i32 %i.aq, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %.sroa.gep64 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.01.0.i.sroa.sel66 = select i1 %i.ad, ptr %.sroa.gep64, ptr %.sroa.gep65 ; 2 uses
  %.sroa.gep67 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.01.0.i.sroa.sel69 = select i1 %i.ad, ptr %.sroa.gep67, ptr %.sroa.gep68
  %i.ay = load i64, ptr %.sroa.01.0.i.sroa.sel69, align 8, !noundef !4
  switch i64 %i.ay, label %.thread.i [
    i64 9, label %bb.i
    i64 6, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %.sroa.01.0.i.sroa.sel66, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = xor i64 %i.ba, 7306922648153646439
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.be, 114
  %i.bg = or i64 %i.bb, %i.bf
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %.sroa.01.0.i.sroa.sel66, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 1734831948
  %i.bn = getelementptr i8, ptr %i.bk, i64 4
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i32
  %i.bq = xor i32 %i.bp, 29285
  %i.br = or i32 %i.bm, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i = phi i1 [ false, %bb.e ], [ %i.bj, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ %i.bu, %bb.j ], [ false, %bb.h ]
  %i.bv = icmp eq i64 %i.ac, 0
  br i1 %i.bv, label %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidate0B7_.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.cq, %bb.cj, %.body, %bb.cl, %bb.cb, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.lf, %bb.cj ], [ %i.bw, %bb.l ], [ %i.kl, %bb.cb ], [ %i.lh, %bb.cl ], [ %eh.lpad-body, %.body ], [ %i.ln, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i: ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidate0B7_.exit

_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidate0B7_.exit: ; preds = %.thread.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidate0B7_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i, %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidate0B7_.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.o

bb.o:                                             ; preds = %bb.cf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit, %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit45, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit, %bb.n
  %.sroa.0.1 = phi i1 [ %.sroa.0.0, %bb.n ], [ %.sroa.0.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit45 ], [ false, %bb.a ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit ], [ false, %bb.cf ]
  ret i1 %.sroa.0.1

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 144, i1 false)
  %i.by = load i64, ptr %i.p, align 8, !range !5, !noundef !4 ; 2 uses
  %i.bz = trunc nuw i64 %i.by to i1               ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !4 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = zext i32 %i.cf to i64
  %.sroa.11.0 = select i1 %i.bz, i64 %i.cd, i64 %i.cg
  %.sroa.02.0 = select i1 %i.bz, ptr %i.cb, ptr %i.ca ; 2 uses
  switch i64 %.sroa.11.0, label %bb.t [
    i64 1, label %bb.r
    i64 3, label %bb.bu
  ]

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ch = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  call void @_RNvMsv_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_15UnqualifiedName9from_expr(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.o, ptr noundef nonnull align 8 %i.ch)
  %i.ci = load i64, ptr %i.o, align 8, !range !7, !noundef !4
  %.not25 = icmp eq i64 %i.ci, 2
  br i1 %.not25, label %bb.cf, label %bb.ce

bb.r:                                             ; preds = %bb.p
  %.sroa.gep59 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.02.0.sroa.sel61 = select i1 %i.bz, ptr %.sroa.gep59, ptr %i.cc
  %i.cj = load i64, ptr %.sroa.02.0.sroa.sel61, align 8, !noundef !4
  %i.ck = icmp eq i64 %i.cj, 7
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %.sroa.02.0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = xor i32 %i.cm, 1734831980
  %i.co = getelementptr i8, ptr %i.cl, i64 3
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = xor i32 %i.cp, 1735289191
  %i.cr = or i32 %i.cn, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  br label %bb.bt

bb.t:                                             ; preds = %bb.p, %bb.by, %bb.bw, %bb.bu, %bb.bv, %bb.bx, %bb.r, %bb.bt
  %.idx = mul nuw nsw i64 %3, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.461.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 19 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.151.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %.sroa.5.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx40.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx40.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx40.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx40.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx40.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx40.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.7.0..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.8.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %.not.not.not.i.not.not335.not = icmp eq i64 %3, 0
  br i1 %.not.not.not.i.not.not335.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidates_0EB2j_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidates_0B7_.exit.i, %bb.t
  %i.dl = phi ptr [ %i.dm, %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7logging19is_logger_candidates_0B7_.exit.i ], [ %2, %bb.t ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dl, i64 8
  %.val3.i = load ptr, ptr %i.dn, align 8, !noalias !240, !nonnull !4, !noundef !4 ; 9 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 16
  %.val4.i = load i64, ptr %i.do, align 8, !noalias !240, !noundef !4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !241
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !241
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %.lr.ph
  %i.dp = phi i64 [ 0, %.lr.ph ], [ %i.ee, %.backedge.i.i.i.i.backedge ] ; 4 uses
  %i.dq = sub nuw i64 %.val4.i, %i.dp             ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.dp ; 2 uses
  %i.ds = icmp samesign ult i64 %i.dq, 16
  br i1 %i.ds, label %.preheader.i.i.i.i.i.i, label %bb.u

.preheader.i.i.i.i.i.i:                           ; preds = %.backedge.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.u:                                             ; preds = %.backedge.i.i.i.i
  %i.dt = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef range(i64 0, -9223372036854775808) %i.dq)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.dq, %bb.v ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.v ]
  %i.du = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.dv = insertvalue { i64, i64 } %i.du, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.v
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.dz, %bb.v ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !244, !noalias !245, !noundef !4
  %i.dy = icmp eq i8 %i.dx, 46
  br i1 %i.dy, label %._crit_edge.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dz = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dz, %i.dq
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %bb.u, %._crit_edge.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ %i.dt, %bb.u ] ; 2 uses
  %i.ea = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %bb.w, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i

bb.w:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ec = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %i.ed = add i64 %i.dp, 1
  %i.ee = add i64 %i.ed, %i.ec                    ; 2 uses
  %.not13.i.i.i.i.i = icmp ugt i64 %i.ee, %.val4.i ; 2 uses
  %i.ef = add i64 %i.ec, %i.dp                    ; 6 uses
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.ef, %.val4.i
  br i1 %or.cond.i.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not13.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i, label %.backedge.i.i.i.i.backedge

bb.y:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.ef
  %lhsc.i.i.i.i = load i8, ptr %i.eg, align 1, !alias.scope !246, !noalias !247
  %i.eh = icmp eq i8 %lhsc.i.i.i.i, 46            ; 2 uses
  %brmerge.i.i.i.i = or i1 %.not13.i.i.i.i.i, %i.eh
  br i1 %brmerge.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i, label %.backedge.i.i.i.i.backedge

.backedge.i.i.i.i.backedge:                       ; preds = %bb.y, %bb.x
  br label %.backedge.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i: ; preds = %bb.y
  br i1 %i.eh, label %bb.z, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i

bb.z:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !248
  invoke void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVecNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.j)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false), !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !248
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.ei = load i64, ptr %i.k, align 8, !range !5, !alias.scope !249, !noalias !250, !noundef !4
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.aa, label %bb.ac

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i: ; preds = %bb.x, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !248
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !noalias !248
  store i64 0, ptr %i.cv, align 8, !noalias !248
  store ptr %.val3.i, ptr %i.cw, align 8, !noalias !248
  store i64 %.val4.i, ptr %i.cx, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !251
  store ptr %i.i, ptr %i.g, align 8, !noalias !251
  store ptr %i.cy, ptr %4, align 8, !noalias !251
  %i.ek = invoke { ptr, i64 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc33:                                         ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i
  %i.el = extractvalue { ptr, i64 } %i.ek, 0      ; 2 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc33, %.noexc34
  %i.em = phi ptr [ %i.et, %.noexc34 ], [ %i.el, %.noexc33 ]
  %i.en = phi { ptr, i64 } [ %i.eq, %.noexc34 ], [ %i.ek, %.noexc33 ]
  %.sroa.0.0.i.i.i3.i.i.i.i = phi ptr [ %i.es, %.noexc34 ], [ %i.cz, %.noexc33 ] ; 3 uses
  %.sroa.5.0.i.i.i2.i.i.i.i = phi i32 [ %i.er, %.noexc34 ], [ 0, %.noexc33 ]
  %i.eo = extractvalue { ptr, i64 } %i.en, 1
  store ptr %i.em, ptr %.sroa.0.0.i.i.i3.i.i.i.i, align 8, !noalias !248
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i3.i.i.i.i, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !noalias !248
  %i.eq = invoke { ptr, i64 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc34 unwind label %.loopexit ; 2 uses

.noexc34:                                         ; preds = %.lr.ph.i.i.i.i
  %i.er = add i32 %.sroa.5.0.i.i.i2.i.i.i.i, 1    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i3.i.i.i.i, i64 16
  %i.et = extractvalue { ptr, i64 } %i.eq, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit.i.i.i, label %.lr.ph.i.i.i.i

_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit.i.i.i: ; preds = %.noexc34, %.noexc33
  %.sroa.5.0.i.i.i.lcssa.i.i.i.i = phi i32 [ 0, %.noexc33 ], [ %i.er, %.noexc34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !251
  store i32 %.sroa.5.0.i.i.i.lcssa.i.i.i.i, ptr %i.h, align 8, !noalias !248
  store i64 0, ptr %i.l, align 8, !alias.scope !242, !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.461.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.h, i64 136, i1 false), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !248
  br label %_RNvMsr_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_13QualifiedName16from_dotted_name.exit.i.i

.loopexit.i.i.i:                                  ; preds = %bb.au
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.loopexit.i:                ; preds = %.split.us.i.i.i.i, %bb.at, %bb.ad, %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.loopexit.split-lp.i:       ; preds = %bb.as, %.invoke.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i25.i.i.i, %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i.i, %.loopexit.split-lp.i.i.loopexit.split-lp.i, %.loopexit.split-lp.i.i.loopexit.i, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i.i ], [ %i.io, %bb.bk ], [ %i.gf, %bb.an ], [ %eh.lpad-body.i26.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i25.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.i.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i.i.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name20QualifiedNameBuilderECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(144) %i.k) #16
          to label %.body unwind label %bb.bm, !noalias !247

bb.aa:                                            ; preds = %.noexc32
  %i.eu = load i64, ptr %i.dg, align 8, !alias.scope !253, !noalias !254, !noundef !4 ; 3 uses
  %i.ev = load i64, ptr %i.da, align 8, !range !255, !alias.scope !253, !noalias !254, !noundef !4
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ab, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i, !noalias !247

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.ex = load ptr, ptr %i.df, align 8, !alias.scope !253, !noalias !254, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.eu ; 2 uses
  store ptr %.val3.i, ptr %i.ey, align 8, !noalias !256
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.ef, ptr %i.ez, align 8, !noalias !247
  %i.fa = add i64 %i.eu, 1
  store i64 %i.fa, ptr %i.dg, align 8, !alias.scope !253, !noalias !254
  br label %bb.aq

bb.ac:                                            ; preds = %.noexc32
  %.val.i.i.i.i.i = load i32, ptr %i.da, align 8, !alias.scope !257, !noalias !258, !noundef !4 ; 4 uses
  %i.fb = icmp ult i32 %.val.i.i.i.i.i, 8
  br i1 %i.fb, label %_RNvYINtNtCs5FdkxsZ6Z9m_8arrayvec8arrayvec8ArrayVecReKj8_ENtNtB7_13arrayvec_impl12ArrayVecImpl8try_pushCs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i.i, label %bb.ad

_RNvYINtNtCs5FdkxsZ6Z9m_8arrayvec8arrayvec8ArrayVecReKj8_ENtNtB7_13arrayvec_impl12ArrayVecImpl8try_pushCs7bpTdHNYxeX_20ruff_python_semantic.exit.thread.i.i.i.i: ; preds = %bb.ac
  %i.fc = zext nneg i32 %.val.i.i.i.i.i to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.fc ; 2 uses
  store ptr %.val3.i, ptr %i.fd, align 8, !alias.scope !259, !noalias !260
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.ef, ptr %i.fe, align 8, !alias.scope !259, !noalias !260
  %i.ff = add nuw nsw i32 %.val.i.i.i.i.i, 1
  store i32 %i.ff, ptr %i.da, align 8, !alias.scope !261, !noalias !260
  br label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !262
  %i.fg = zext i32 %.val.i.i.i.i.i to i64
  %i.fh = shl nuw nsw i64 %i.fg, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !262
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.fh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.i, !noalias !247

.noexc16.i.i.i:                                   ; preds = %bb.ad
  %i.fi = load i64, ptr %i.e, align 8, !range !5, !noalias !262, !noundef !4
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = load i64, ptr %i.db, align 8, !range !263, !noalias !262, !noundef !4 ; 3 uses
  br i1 %i.fj, label %bb.ae, label %bb.af, !prof !264

bb.ae:                                            ; preds = %.noexc16.i.i.i
  %i.fl = load i64, ptr %i.dc, align 8, !noalias !262
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.az, %bb.ae
  %i.fm = phi i64 [ %i.fk, %bb.ae ], [ %i.hv, %bb.az ]
  %i.fn = phi i64 [ %i.fl, %bb.ae ], [ %i.hw, %bb.az ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fm, i64 %i.fn) #15
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp.i, !noalias !247

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.af:                                            ; preds = %.noexc16.i.i.i
  %i.fo = load ptr, ptr %i.dc, align 8, !noalias !262, !nonnull !4, !noundef !4
  %i.fp = icmp samesign ule i64 %i.fh, %i.fk
  call void @llvm.assume(i1 %i.fp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !262
  store i64 %i.fk, ptr %i.f, align 8, !noalias !262
  store ptr %i.fo, ptr %i.dd, align 8, !noalias !262
  store i64 0, ptr %i.de, align 8, !noalias !262
  %i.fq = load i32, ptr %i.da, align 8, !alias.scope !249, !noalias !250, !noundef !4
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.fr
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4IterBF_EEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.df, ptr noundef nonnull %i.fs)
          to label %bb.ag unwind label %bb.an, !noalias !265

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.ak
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ge, %bb.am ], [ %i.gc, %bb.ak ]
  store i64 1, ptr %i.k, align 8, !alias.scope !249, !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, i64 24, i1 false), !noalias !250
  br label %.body.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ft = load i64, ptr %i.de, align 8, !alias.scope !266, !noalias !267, !noundef !4 ; 3 uses
  %i.fu = load i64, ptr %i.f, align 8, !range !255, !alias.scope !266, !noalias !267, !noundef !4
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ai unwind label %bb.an, !noalias !265

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fw = load ptr, ptr %i.dd, align 8, !alias.scope !266, !noalias !267, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.ft ; 2 uses
  store ptr %.val3.i, ptr %i.fx, align 8, !noalias !268
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.ef, ptr %i.fy, align 8, !noalias !247
  %i.fz = add i64 %i.ft, 1
  store i64 %i.fz, ptr %i.de, align 8, !alias.scope !266, !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !262
  %i.ga = load i64, ptr %i.k, align 8, !range !5, !alias.scope !269, !noalias !250, !noundef !4
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i unwind label %bb.ak, !noalias !247

bb.ak:                                            ; preds = %bb.aj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i.i unwind label %bb.al, !noalias !247

bb.al:                                            ; preds = %bb.ak
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !247
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i unwind label %bb.am, !noalias !247

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i.i, %bb.ai
  store i64 1, ptr %i.k, align 8, !alias.scope !249, !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, i64 24, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !262
  br label %bb.aq

bb.an:                                            ; preds = %bb.ah, %bb.af
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %.body.i.i.i unwind label %bb.ao, !noalias !265

end_hunk_0
