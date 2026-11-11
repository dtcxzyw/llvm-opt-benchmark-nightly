Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.05?download=true
inline.NumInlined: 815
inline.NumDeleted: 283
begin_hunk_0_@_RNvMNtNtCs98D8VPWzHuM_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter6memmem6MemmemE3newB6_:bb.a

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1272
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1272, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(288) %i.l, ptr noundef nonnull align 32 dereferenceable(288) %0, i64 288, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 32
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1273
  %i.m = call noundef align 32 dereferenceable_or_null(352) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 5169) 352, i64 noundef range(i64 8, 33) 32) #26, !noalias !1273 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %bb.l, !prof !21

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 32, i64 noundef 352) #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtB1k_4util9prefilter6memmem6MemmemEEEB1k_(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.b) #25
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(352) %i.m, ptr noundef nonnull align 32 dereferenceable(352) %i.b, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr @16, 1
  ret { ptr, ptr } %i.r

.body:                                            ; preds = %bb.m, %bb.j
  %eh.lpad-body13 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.m ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body13

bb.m:                                             ; preds = %bb.b, %bb.e
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.g, %bb.e ]
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter6memmem6MemmemEBJ_(ptr noalias noundef nonnull align 32 dereferenceable(288) %0) #25
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4meta8strategyINtB2_3PreNtNtNtNtB6_4util9prefilter7byteset7ByteSetE3newB6_(ptr noalias noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(256) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1288 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [280 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  call void @_RINvMs5_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB6_9GroupInfo3newAAINtNtCs4NRVxsYgnAr_4core6option6OptionReEj1_B1S_B1c_B1P_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.e = load i64, ptr %i.d, align 8, !range !19, !alias.scope !1289, !noundef !6
  %.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %bb.d unwind label %bb.c, !noalias !1289

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #25
          to label %common.resume unwind label %bb.e, !noalias !1289

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1289
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1289, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.j, ptr noundef nonnull align 1 dereferenceable(256) %0, i64 256, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1290
  %i.l = call noundef align 8 dereferenceable_or_null(280) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 5169) 280, i64 noundef range(i64 8, 33) 8) #26, !noalias !1290 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtB16_4util9prefilter7byteset7ByteSetEEE3newB16_.exit, !prof !21

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #23
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !1291
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.42.0..sroa_idx)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3PreNtNtNtNtB16_4util9prefilter7byteset7ByteSetEEE3newB16_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoNtBJ_14GroupInfoErrorE6unwrapBN_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.l, ptr noundef nonnull align 8 dereferenceable(280) %i.b, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = insertvalue { ptr, ptr } poison, ptr %i.l, 0
  %i.s = insertvalue { ptr, ptr } %i.r, ptr @17, 1
  ret { ptr, ptr } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata6hybrid5regexNtB5_5Regex10try_search(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %1, ptr noalias noundef nonnull align 8 dereferenceable(704) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 !guid !1308 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.k = load ptr, ptr %i.j, align 16, !alias.scope !1309, !nonnull !6, !noundef !6 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 386
  %i.m = load i8, ptr %i.l, align 2, !range !22, !noalias !1310, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 387
  %i.p = load i8, ptr %i.o, align 1, !range !22, !noalias !1310, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i1 [ %i.q, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1310
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_fwd(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull align 8 dereferenceable(352) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !1311
  %i.r = load i64, ptr %i.e, align 8, !range !12, !noalias !1310, !noundef !6 ; 2 uses
  %i.s = icmp eq i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1310 ; 3 uses
  br i1 %i.s, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread67, label %bb.d

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread67: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1310
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1310 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1310
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.w = trunc nuw i64 %i.r to i1
  br i1 %i.w, label %bb.e, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread77

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.0.0.i, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread, !prof !21

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread77: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit: ; preds = %bb.e
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.v, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull align 8 dereferenceable(352) %2)
  %.pr = load i64, ptr %i.h, align 8              ; 2 uses
  %i.x = icmp eq i64 %.pr, 2
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8 ; 3 uses
  br i1 %i.x, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread67
  %i.y = phi ptr [ %i.u, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread67 ], [ %.pre90, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.g

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.540.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aa = trunc nuw i64 %.pr to i1
  br i1 %i.aa, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread._crit_edge, label %bb.g

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread
  %.pre91 = ptrtoint ptr %.pre90 to i64
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread._crit_edge, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread
  %.pre-phi.a = phi i64 [ %.pre91, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread._crit_edge ], [ %i.v, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread ] ; 10 uses
  %.sroa.4.16.extract.trunc76.in = phi i64 [ %.sroa.540.0.copyload, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread._crit_edge ], [ %.sroa.5.0.copyload.i, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread ]
  %.in = phi ptr [ %.pre90, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread._crit_edge ], [ %i.u, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread ]
  %.sroa.4.16.extract.trunc76 = trunc i64 %.sroa.4.16.extract.trunc76.in to i32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6 ; 6 uses
  %i.ad = icmp eq i64 %i.ac, %.pre-phi.a
  br i1 %i.ad, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread77, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge
  %storemerge = phi i64 [ 2, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit._crit_edge ], [ 0, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread ], [ 0, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_fwd.exit.thread.thread77 ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %3, align 8, !range !17, !noundef !6
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.q

bb.i:                                             ; preds = %bb.f
  store i64 1, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre-phi.a, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi.a, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.16.extract.trunc76, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.ah = load i32, ptr %i.ag, align 16, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 372
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !6
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.059.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.460.0.copyload = load i64, ptr %.sroa.460.0..sroa_idx, align 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.059.sroa.3.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1312
  store i64 %i.ac, ptr %i.d, align 8, !noalias !1312
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.pre-phi.a, ptr %i.am, align 8, !noalias !1312
  %.not.i = icmp ult i64 %.sroa.460.0.copyload, %.pre-phi.a
  %i.an = add i64 %.pre-phi.a, 1
  %.not8.i = icmp ugt i64 %i.ac, %i.an
  %or.cond.i = or i1 %.not8.i, %.not.i
  br i1 %or.cond.i, label %bb.l, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1312
  store i64 %.sroa.460.0.copyload, ptr %i.c, align 8, !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1312
  store ptr %i.d, ptr %i.b, align 8, !noalias !1312
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ao, align 8, !noalias !1312
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1312
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !1312
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1312
  %.sroa.7.1.extract.shift = lshr i64 %.sroa.7.0.copyload, 8
  %.sroa.7.1.extract.trunc = trunc nuw i64 %.sroa.7.1.extract.shift to i56
  store i32 1, ptr %i.g, align 8
  %.sroa.418.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <2 x i64> %i.al, ptr %.sroa.418.0..sroa_idx19, align 8
  %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ac, ptr %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx19.sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.pre-phi.a, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx19.sroa_idx, align 8
  %.sroa.420.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i8 0, ptr %.sroa.420.0..sroa_idx21, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  store i56 %.sroa.7.1.extract.trunc, ptr %.sroa.5.0..sroa_idx23, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.ar = load ptr, ptr %i.aq, align 16, !alias.scope !1313, !nonnull !6, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 386
  %i.at = load i8, ptr %i.as, align 2, !range !22, !noalias !1314, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 387
  %i.aw = load i8, ptr %i.av, align 1, !range !22, !noalias !1314, !noundef !6
  %i.ax = trunc nuw i8 %i.aw to i1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  %.sroa.0.0.i45 = phi i1 [ %i.ax, %bb.m ], [ false, %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1314
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata6hybrid6search8find_rev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g), !noalias !1315
  %i.ay = load i64, ptr %i.a, align 8, !range !12, !noalias !1314, !noundef !6 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1314 ; 3 uses
  br i1 %i.az, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread70, label %bb.o

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread70: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1314
  br label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge

bb.o:                                             ; preds = %bb.n
  %.sroa.5.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i47 = load i64, ptr %.sroa.5.0..sroa_idx.i46, align 8, !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1314
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = trunc nuw i64 %i.ay to i1
  br i1 %i.bd, label %bb.p, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread86

bb.p:                                             ; preds = %bb.o
  br i1 %.sroa.0.0.i45, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread, !prof !21

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread86: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit: ; preds = %bb.p
  %.sroa.69.16.extract.trunc11.i50 = trunc i64 %.sroa.5.0.copyload.i47 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_rev0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i64 noundef %i.bc, i32 noundef %.sroa.69.16.extract.trunc11.i50, i64 noundef %i.bc, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(352) %i.i)
  %.pr68 = load i64, ptr %i.f, align 8            ; 2 uses
  %i.be = icmp eq i64 %.pr68, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.be, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread

bb.q:                                             ; preds = %bb.h, %bb.j
  %.not.i51 = icmp ugt i64 %i.ac, %.pre-phi.a
  br i1 %.not.i51, label %bb.r, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, !prof !21

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !1316
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.q
  store i64 1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi.a, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.16.extract.trunc76, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread70
  %i.bf = phi ptr [ %i.bb, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread70 ], [ %.pre, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bh = trunc nuw i64 %.pr68 to i1
  br i1 %i.bh, label %bb.s, label %bb.u, !prof !23

bb.s:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread
  %.sroa.442.0.copyload85 = phi ptr [ %i.bb, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread ], [ %.pre, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread ] ; 2 uses
  %.not.i52 = icmp ugt ptr %.sroa.442.0.copyload85, %.in
  br i1 %.not.i52, label %bb.t, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit53, !prof !21

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !1317
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit53: ; preds = %bb.s
  %i.bi = ptrtoint ptr %.sroa.442.0.copyload85 to i64
  store i64 1, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi.a, ptr %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.16.extract.trunc76, ptr %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread.thread86, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
  unreachable

bb.v:                                             ; preds = %bb.g, %bb.i, %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._crit_edge, %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit53
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(3584) %1, ptr noalias noundef align 8 dereferenceable(1400) initializes((1080, 1084)) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1340 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1080 ; 2 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.g = load i64, ptr %i.f, align 8, !range !15, !alias.scope !1341, !noundef !6
  %.not.i11 = icmp eq i64 %i.g, -1
  br i1 %.not.i11, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %3, align 8, !range !17, !alias.scope !1342, !noundef !6
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3248
  %i.k = load ptr, ptr %i.j, align 16, !alias.scope !1341, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.m = load i32, ptr %i.l, align 16, !noalias !1343, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 372
  %i.o = load i32, ptr %i.n, align 4, !noalias !1343, !noundef !6
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit, label %bb.d

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit: ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.t = load i64, ptr %i.s, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1368 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !11, !noundef !6
  %.not7 = icmp eq i64 %i.v, -1
  br i1 %.not7, label %bb.n, label %bb.j, !prof !21

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.x = load i64, ptr %i.w, align 16, !range !12, !alias.scope !1344, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.x, 2
  br i1 %.not.i, label %select.unfold17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load i8, ptr %i.y, align 8, !range !22, !alias.scope !1345, !noundef !6
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1345
  %i.ad = icmp ugt i64 %i.ac, 128
  %or.cond.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %select.unfold17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1345, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1345, !noundef !6
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %i.ah, i64 %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.aj = trunc nuw i64 %i.x to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3128
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1346, !noalias !1345
  %i.am = shl i64 %i.al, 3
  %.sroa.0.0.i13 = select i1 %i.aj, i64 %i.am, i64 2097152 ; 2 uses
  %i.an = and i64 %.sroa.0.0.i13, 56
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = lshr i64 %.sroa.0.0.i13, 6
  %i.aq = zext i1 %i.ao to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.ap, %i.aq   ; 2 uses
  %i.ar = shl nuw i64 %.sroa.0.0.i.i, 6
  %i.as = icmp samesign ugt i64 %.sroa.0.0.i.i, 288230376151711743
  br i1 %i.as, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.03.0.i = phi i64 [ -1, %bb.g ], [ %i.ar, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.au = load ptr, ptr %i.at, align 16, !alias.scope !1346, !noalias !1345, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  %i.aw = load i64, ptr %i.av, align 16, !noalias !1347, !noundef !6 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #23, !noalias !1347
  unreachable

_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit: ; preds = %bb.h
  %i.ay = udiv i64 %.sroa.03.0.i, %i.aw
  %i.az = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 %i.ay, i64 1)
  %i.ba = icmp ugt i64 %i.ai, %i.az
  br i1 %i.ba, label %select.unfold17, label %_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit

bb.j:                                             ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit
  call fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA16try_search_slots(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.f, ptr noalias noundef align 8 dereferenceable(32) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %i.r, i64 noundef %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.bb = load i32, ptr %i.d, align 8, !range !24, !alias.scope !1348, !noundef !6
  %i.bc = trunc nuw i32 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit10, !prof !21

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1349
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1348, !nonnull !6, !align !25, !noundef !6
  store ptr %i.be, ptr %i.a, align 8, !noalias !1349
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #23
          to label %bb.l unwind label %bb.m, !noalias !1348

bb.l:                                             ; preds = %bb.k
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.m
  %.sink = phi ptr [ %i.b, %bb.z ], [ %i.a, %bb.m ]
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.z ], [ %i.bf, %bb.m ]
  %.val.i14 = load ptr, ptr %.sink, align 8, !noalias !6, !nonnull !6, !noundef !6
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14, i64 noundef 16, i64 noundef 8) #26, !noalias !6
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit10: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !range !24, !alias.scope !1348, !noundef !6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !1348
  %i.bk = insertvalue { i32, i32 } poison, i32 %i.bh, 0
  %i.bl = insertvalue { i32, i32 } %i.bk, i32 %i.bj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.n:                                             ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23
  unreachable

bb.o:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit, %select.unfold17, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit10
  %.pn8 = phi { i32, i32 } [ %i.bl, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit10 ], [ %i.da, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtB17_6search10MatchErrorE6unwrapB19_.exit ], [ %i.di, %select.unfold17 ] ; 2 uses
  %.sroa.0.0 = extractvalue { i32, i32 } %.pn8, 0 ; 2 uses
  %.sroa.4.0 = extractvalue { i32, i32 } %.pn8, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 1084
  store i32 %.sroa.0.0, ptr %i.e, align 8
  store i32 %.sroa.4.0, ptr %i.bm, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.bn = trunc nuw i32 %.sroa.0.0 to i1
  br i1 %i.bn, label %bb.p, label %_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures9get_match.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1353, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1354, !noundef !6 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = zext i32 %.sroa.4.0 to i64              ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.br, %i.bu
  br i1 %.not.i.i.i, label %bb.s, label %_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures9get_match.exit

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.038.0.i.i = phi i64 [ %i.ca, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %.sroa.040.0.i.i = phi i64 [ %i.cb, %bb.s ], [ 1, %bb.p ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1353, !nonnull !6, !noundef !6 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1353, !noundef !6 ; 2 uses
  %i.bz = icmp ult i64 %.sroa.038.0.i.i, %i.by
  br i1 %i.bz, label %bb.t, label %_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures9get_match.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = shl nuw nsw i64 %i.bu, 1                ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs98D8VPWzHuM_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail:bb.a
  br label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5regexNtB5_5Regex10try_searchB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1600) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 !guid !1433 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !1436
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.n = load i8, ptr %i.m, align 8, !range !22, !alias.scope !1437, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 793
  %i.q = load i8, ptr %i.p, align 1, !range !22, !alias.scope !1435
  %i.r = trunc nuw i8 %i.q to i1
  %.sroa.0.0.i = select i1 %i.o, i1 %i.r, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1436
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_fwdRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !1434
  %i.s = load i64, ptr %i.e, align 8, !range !12, !noalias !1436, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1436 ; 2 uses
  br i1 %i.t, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread68, label %bb.b

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread68: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1436 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1436
  %i.w = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.x = trunc nuw i64 %i.s to i1
  br i1 %i.x, label %bb.c, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread

bb.c:                                             ; preds = %bb.b
  br i1 %.sroa.0.0.i, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.w, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1434
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1434
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread: ; preds = %bb.b, %bb.d
  %.ph = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit: ; preds = %bb.c
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_fwd0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %i.w, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  %.pr = load i64, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.y = icmp eq i64 %.pr, 2
  br i1 %i.y, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, label %bb.f

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre86 = load ptr, ptr %.phi.trans.insert85, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread68
  %i.z = phi ptr [ %.pre86, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit._crit_edge ], [ %i.v, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.h

bb.f:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit
  %i.ab = phi i64 [ %.ph, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit.thread ], [ %.pr, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_.exit ]
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.439.0.copyload = load ptr, ptr %.sroa.439.0..sroa_idx, align 8 ; 2 uses
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.540.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ac = ptrtoint ptr %.sroa.439.0.copyload to i64 ; 10 uses
  %.sroa.4.16.extract.trunc = trunc i64 %.sroa.540.0.copyload to i32 ; 5 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !6 ; 6 uses
  %i.ag = icmp eq i64 %i.af, %i.ac
  br i1 %i.ag, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi i64 [ 2, %bb.e ], [ 0, %bb.f ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %2, align 8, !range !17, !noundef !6
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 794
  %i.ak = load i8, ptr %i.aj, align 2, !range !22
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond = select i1 %i.ai, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.o, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 1, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.16.extract.trunc, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.060.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.461.0.copyload = load i64, ptr %.sroa.461.0..sroa_idx, align 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.060.sroa.3.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1438
  store i64 %i.af, ptr %i.d, align 8, !noalias !1438
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ac, ptr %i.an, align 8, !noalias !1438
  %.not.i = icmp ult i64 %.sroa.461.0.copyload, %i.ac
  %i.ao = add i64 %i.ac, 1
  %.not8.i = icmp ugt i64 %i.af, %i.ao
  %or.cond.i = or i1 %.not8.i, %.not.i
  br i1 %or.cond.i, label %bb.l, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1438
  store i64 %.sroa.461.0.copyload, ptr %i.c, align 8, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1438
  store ptr %i.d, ptr %i.b, align 8, !noalias !1438
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1438
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ap, align 8, !noalias !1438
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1438
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !1438
  unreachable

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1438
  %.sroa.7.1.extract.shift = lshr i64 %.sroa.7.0.copyload, 8
  %.sroa.7.1.extract.trunc = trunc nuw i64 %.sroa.7.1.extract.shift to i56
  store i32 1, ptr %i.j, align 8
  %.sroa.418.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store <2 x i64> %i.am, ptr %.sroa.418.0..sroa_idx19, align 8
  %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.af, ptr %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx19.sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.ac, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx19.sroa_idx, align 8
  %.sroa.420.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 0, ptr %.sroa.420.0..sroa_idx21, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.j, i64 41
  store i56 %.sroa.7.1.extract.trunc, ptr %.sroa.5.0..sroa_idx23, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.ar = load i8, ptr %i.aq, align 8, !range !22, !alias.scope !1440, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1593
  %i.au = load i8, ptr %i.at, align 1, !range !22, !alias.scope !1439
  %i.av = trunc nuw i8 %i.au to i1
  %.sroa.0.0.i46 = select i1 %i.as, i1 %i.av, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1441
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j), !noalias !1442
  %i.aw = load i64, ptr %i.a, align 8, !range !12, !noalias !1441, !noundef !6 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1441 ; 3 uses
  br i1 %i.ax, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread71, label %bb.m

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread71: ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1441
  br label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge

bb.m:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB7_.exit
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i48 = load i64, ptr %.sroa.5.0..sroa_idx.i47, align 8, !noalias !1441 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1441
  %i.ba = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bb = trunc nuw i64 %i.aw to i1
  br i1 %i.bb, label %bb.n, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread78

bb.n:                                             ; preds = %bb.m
  br i1 %.sroa.0.0.i46, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread, !prof !21

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread78: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.q

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit: ; preds = %bb.n
  %.sroa.69.16.extract.trunc11.i51 = trunc i64 %.sroa.5.0.copyload.i48 to i32
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvYINtNtNtB6_3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB1A_9automaton9Automaton14try_search_rev0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, i64 noundef %i.ba, i32 noundef %.sroa.69.16.extract.trunc11.i51, i64 noundef %i.ba, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.l)
  %.pr69 = load i64, ptr %i.i, align 8            ; 2 uses
  %i.bc = icmp eq i64 %.pr69, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %i.bc, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread

bb.o:                                             ; preds = %bb.i
  %.not.i52 = icmp ugt i64 %i.af, %i.ac
  br i1 %.not.i52, label %bb.p, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, !prof !21

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !1443
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.o
  store i64 1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.16.extract.trunc, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread71
  %i.bd = phi ptr [ %i.az, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread71 ], [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.v

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.543.0.copyload = load i64, ptr %.sroa.543.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bf = trunc nuw i64 %.pr69 to i1
  br i1 %i.bf, label %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread._crit_edge, label %bb.r, !prof !23

_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread._crit_edge: ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread
  %.pre87 = ptrtoint ptr %.pre to i64
  br label %bb.q

bb.q:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread._crit_edge, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread
  %.pre-phi.a = phi i64 [ %.pre87, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread._crit_edge ], [ %i.ba, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread ]
  %.sroa.543.0.copyload77 = phi i64 [ %.sroa.543.0.copyload, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread._crit_edge ], [ %.sroa.5.0.copyload.i48, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread ]
  %.sroa.442.0.copyload76 = phi ptr [ %.pre, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread._crit_edge ], [ %i.az, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread ]
  %.sroa.434.16.extract.trunc = trunc i64 %.sroa.543.0.copyload77 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.434.16.extract.trunc, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.4.16.extract.trunc, ptr %i.g, align 4
  %i.bg = icmp eq i32 %.sroa.434.16.extract.trunc, %.sroa.4.16.extract.trunc
  br i1 %i.bg, label %bb.t, label %bb.s, !prof !20

bb.r:                                             ; preds = %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread.thread78, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDBM_EBS_(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noundef nonnull @32, ptr nonnull inttoptr (i64 101 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #23
  unreachable

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp ugt ptr %.sroa.442.0.copyload76, %.sroa.439.0.copyload
  br i1 %.not, label %bb.u, label %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit54, !prof !21

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #23
  unreachable

_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit54: ; preds = %bb.t
  store i64 1, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre-phi.a, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.16.extract.trunc, ptr %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %bb.j, %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, %_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_revB9_.exit._crit_edge, %_RINvMsb_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB6_5Match3newINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit54
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA16try_search_slots(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1444 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 386
  %i.h = load i8, ptr %i.g, align 2, !range !22, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 387
  %i.k = load i8, ptr %i.j, align 1, !range !22, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5)
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.q = icmp ult i64 %i.p, 1152921504606846976
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i64 %i.p, 1                  ; 2 uses
  %.not = icmp samesign ult i64 %5, %i.r
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 2 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5)
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %i.d, i64 noundef 2)
  %i.w = load i32, ptr %i.c, align 8, !range !24, !noundef !6
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1s_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6 ; 3 uses
  invoke void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA20try_search_slots_imp(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %i.z, i64 noundef %i.ab)
          to label %bb.o unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !align !25, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ag = load <2 x i32>, ptr %i.af, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = icmp samesign ult i64 %5, 3
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias noundef nonnull align 8 %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.ag, ptr %i.ai, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %storemerge = phi i32 [ 0, %bb.l ], [ 1, %bb.i ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y

bb.n:                                             ; preds = %bb.u, %bb.t, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.aa

bb.o:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.a, align 8, !range !24, !noundef !6
  %i.al = trunc nuw i32 %i.ak to i1
  br i1 %i.al, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !6, !align !25, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  store i32 1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.w, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.ap, %bb.q ], [ %i.aj, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit: ; preds = %bb.p
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.s:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load <2 x i32>, ptr %i.ar, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not9 = icmp ugt i64 %5, %i.ab
  br i1 %.not9, label %bb.t, label %bb.u, !prof !7

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #23
          to label %bb.z unwind label %bb.n

bb.u:                                             ; preds = %bb.s
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias noundef nonnull align 8 %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.as, ptr %i.at, align 4
  store i32 0, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit11 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit11: ; preds = %bb.v
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEEB1z_.exit11
  ret void

bb.z:                                             ; preds = %bb.t
  unreachable

bb.aa:                                            ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
end_hunk_1
