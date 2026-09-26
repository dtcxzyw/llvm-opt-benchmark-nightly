Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.15?download=true
inline.NumInlined: 5376
inline.NumDeleted: 2519
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvMs8_NtCshVaWp8U3tmP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsdtH0xi6p5qe_10rayon_core3job6JobRefE5stealCs6u1mgJOKDyY_13rust_analyzer:bb.a
bb.b:                                             ; preds = %_RINvNtCs42rJDHPiiam_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs6u1mgJOKDyY_13rust_analyzer.exit
  fence seq_cst
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer(ptr %i.u) #55
          to label %bb.q unwind label %bb.p

bb.d:                                             ; preds = %_RINvNtCs42rJDHPiiam_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.b, %_RINvNtCs42rJDHPiiam_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %i.u = tail call fastcc noundef ptr @_RINvNtCs42rJDHPiiam_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs6u1mgJOKDyY_13rust_analyzer() #53 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = sub i64 %i.w, %i.d
  %i.y = icmp slt i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs42rJDHPiiam_15crossbeam_epoch6atomicINtB5_6SharedINtNtCshVaWp8U3tmP_15crossbeam_deque5deque6BufferNtNtCsdtH0xi6p5qe_10rayon_core3job6JobRefEE5derefCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !13
  %i.af = add i64 %i.ae, -1
  %i.ag = and i64 %i.af, %i.d
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load volatile i128, ptr %i.ah, align 8  ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i128 %i.ai to i64 ; 2 uses
  %i.aj = inttoptr i64 %.sroa.01.0.extract.trunc to ptr
  %.sroa.2.0.extract.shift = lshr i128 %i.ai, 64
  %.sroa.2.0.extract.trunc = trunc nuw i128 %.sroa.2.0.extract.shift to i64
  %i.ak = inttoptr i64 %.sroa.2.0.extract.trunc to ptr
  %i.al = load atomic i64, ptr %i.z acquire, align 8
  %.not = icmp eq i64 %i.al, %i.aa
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.am = add i64 %i.d, 1
  %i.an = cmpxchg ptr %i.c, i64 %i.d, i64 %i.am seq_cst monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ne i64 %.sroa.01.0.extract.trunc, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.ar, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = icmp eq ptr %i.u, null
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 2072 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !13 ; 2 uses
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8
  %i.aw = icmp eq i64 %i.au, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 2176
  store atomic i64 0, ptr %i.ax release, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 2080
  %i.az = load i64, ptr %i.ay, align 8, !noundef !13
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit, !prof !18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split: ; preds = %bb.l, %bb.o
  call void @_RNvMs6_NtCs42rJDHPiiam_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.u)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  ret void

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.bb = icmp eq ptr %i.u, null
  br i1 %i.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 2072 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !13 ; 2 uses
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.bc, align 8
  %i.bf = icmp eq i64 %i.bd, 1
  br i1 %i.bf, label %bb.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 2176
  store atomic i64 0, ptr %i.bg release, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 2080
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !13
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs42rJDHPiiam_15crossbeam_epoch5guard5GuardECs6u1mgJOKDyY_13rust_analyzer.exit, !prof !18

bb.p:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.q:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6u1mgJOKDyY_13rust_analyzer(ptr %.0.val, i64 %.16.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.16.val ; 5 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %i.d) #55
          to label %common.resume unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.h = load i64, ptr %i.d, align 8, !range !21, !alias.scope !8637, !noundef !13
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  ret void

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueEE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 728, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueEE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 632, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE13new_zeroed_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 24, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics3FixE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(560) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 560, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 560) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 48, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 152, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 136, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 48, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 72, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtBL_18build_dependencies21WorkspaceBuildScriptsEE13new_uninit_inCs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 208, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEIBN_SBM_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEIBQ_SBP_EEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtCs2vT3jxLudSK_3url3UrlINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs2vT3jxLudSK_3url3UrlINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBM_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_EE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBM_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBP_EEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures16ChangeAnnotationNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures16ChangeAnnotationEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures25MessageActionItemPropertyNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures25MessageActionItemPropertyEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtectedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1v_6ClauseEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtectedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1v_6ClauseEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE9drop_slowB2E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1z_9predicate20ExistentialPredicateB2m_EEEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1z_9predicate20ExistentialPredicateB2m_EEEE9drop_slowB2s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEE9drop_slowB2G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2F_11generic_arg10GenericArgEEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2F_11generic_arg10GenericArgEEE9drop_slowB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1x_5LocalEEEE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1x_5LocalEEEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #58
  br label %bb.c

end_hunk_0
begin_hunk_1_@_RNvNtCs6u1mgJOKDyY_13rust_analyzer7session11run_session:bb.a
          to label %bb.ia unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.oj = landingpad { ptr, i32 }
          cleanup
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ok) #55
          to label %bb.ib unwind label %bb.id

bb.ia:                                            ; preds = %bb.hy
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ol)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server5stdio9IoThreadsECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.ic

bb.ib:                                            ; preds = %bb.ic, %bb.hz
  %.pn.i.i = phi { ptr, i32 } [ %i.on, %bb.ic ], [ %i.oj, %bb.hz ]
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std6thread11join_handle10JoinHandleuEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.om) #55
          to label %.body347 unwind label %bb.id

bb.ic:                                            ; preds = %bb.ia
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.id:                                            ; preds = %bb.ib, %bb.hz
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server5stdio9IoThreadsECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.ia
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std6thread11join_handle10JoinHandleuEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.op)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer7session9IoThreadsEBF_.exit unwind label %bb.ie

.body347:                                         ; preds = %bb.ie, %bb.ib, %bb.ii, %.body330
  %.sroa.098.20 = phi i8 [ %.sroa.098.19, %.body330 ], [ %.sroa.098.19, %bb.ii ], [ %.sroa.098.17, %bb.ib ], [ %.sroa.098.17, %bb.ie ]
  %.pn220 = phi { ptr, i32 } [ %.pn218, %.body330 ], [ %.pn218, %bb.ii ], [ %.pn.i.i, %bb.ib ], [ %i.or, %bb.ie ]
  %i.oq = trunc nuw i8 %.sroa.098.20 to i1
  br i1 %i.oq, label %bb.ik, label %bb.ij

bb.ie:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server5stdio9IoThreadsECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body347

bb.if:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer7session9IoThreadsEBF_.exit
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfgt47Ct1nzL_10lsp_server10ConnectionECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  br label %bb.gb

bb.ig:                                            ; preds = %bb.hr, %bb.hq
  %lpad.thr_comm607 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server5error13ProtocolErrorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cr) #55
          to label %.body327 unwind label %bb.dj

bb.ih:                                            ; preds = %.body327
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #55
          to label %.body330 unwind label %bb.dj

bb.ii:                                            ; preds = %.body330
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer7session9IoThreadsEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #55
          to label %.body347 unwind label %bb.dj

bb.ij:                                            ; preds = %bb.ik, %.body347
  resume { ptr, i32 } %.pn220

bb.ik:                                            ; preds = %.body347
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfgt47Ct1nzL_10lsp_server10ConnectionECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #55
          to label %bb.ij unwind label %bb.dj
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4640) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4640 x i8], align 8              ; 4 uses
  %i.b = alloca [1632 x i8], align 8              ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.i, label %bb.c [
    i8 0, label %bb.g
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !77

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop10___CALLSITE)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.06.0 = phi i8 [ %i.j, %bb.e ], [ %i.i, %bb.b ], [ %i.i, %bb.b ]
  %i.k = load ptr, ptr @_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop10___CALLSITE, align 8, !nonnull !13, !align !14, !noundef !13
  %i.l = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
          to label %bb.f unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.j, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.a, %_RNCNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop0B5_.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = load i64, ptr %1, align 8, !range !17, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4640) %i.a, ptr noundef nonnull align 8 dereferenceable(4640) %0, i64 4640, i1 false)
  invoke void @_RNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB4_11GlobalState3new(ptr noalias nofree noundef nonnull sret([1632 x i8]) align 8 captures(none) dereferenceable(1632) %i.b, i64 noundef %i.n, ptr noundef %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(4640) %i.a)
          to label %bb.i unwind label %.thread39

.thread39:                                        ; preds = %bb.g
  %lpad.thr_comm.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.thread31

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = load ptr, ptr @_RNvNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop10___CALLSITE, align 8, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs6u1mgJOKDyY_13rust_analyzer6configNtB2_6ConfigNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  store ptr @133, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.s, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @74, ptr %i.t, align 8
  store i64 1, ptr %i.f, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %_RNCNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop0B5_.exit unwind label %bb.j

_RNCNvNtCs6u1mgJOKDyY_13rust_analyzer9main_loop9main_loop0B5_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !37, !noundef !13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef ptr @_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB7_12global_state11GlobalState3run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1632) %i.b, i64 noundef %i.v, ptr %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.y

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.thread31 unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.n, %.thread31
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.l:                                             ; preds = %.thread31
  br i1 %.sroa.010.02538, label %bb.n, label %bb.m

.thread31:                                        ; preds = %bb.j, %.thread39
  %.sroa.010.02538 = phi i1 [ false, %.thread39 ], [ true, %bb.j ]
  %lpad.phi2936 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp41, %.thread39 ], [ %lpad.thr_comm, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aa) #55
          to label %bb.l unwind label %bb.k

bb.m:                                             ; preds = %bb.n, %bb.l
  resume { ptr, i32 } %lpad.phi2936

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(4640) %0) #55
          to label %bb.m unwind label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit(i64 noundef range(i64 16, 1553) %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) %0, i64 noundef 8) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = tail call noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error3msgReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.f = call noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error3msgNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !13
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %.val = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1), !alias.scope !8886
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit

_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCs4sl5YdnrCxp_3vfs6FileIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !13
  %.val1 = load i32, ptr %1, align 4, !noundef !13
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCs8Xq8PKFYOms_3hir4TypeINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1v_Cs8Xq8PKFYOms_3hirNtB6_4TypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCscA5P7HRgTCP_15ide_diagnostics14DiagnosticCodeINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #26 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs8_CscA5P7HRgTCP_15ide_diagnosticsNtB5_14DiagnosticCodeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #53
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !13
  %.val1 = load i32, ptr %1, align 4, !noundef !13
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCslLuZgPVt6hg_3ide12static_index7TokenIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #11 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !13
  %.val1 = load i64, ptr %1, align 8, !noundef !13
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownTNtCs4sl5YdnrCxp_3vfs6FileIdbEINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val1 = load i8, ptr %i.a, align 4
  %.val2 = load i32, ptr %1, align 4, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i8, ptr %i.b, align 4
  %i.c = icmp eq i32 %.val, %.val2
  %i.d = icmp eq i8 %.val1, %.val3
  %spec.select.i = select i1 %i.c, i1 %i.d, i1 false
  ret i1 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtB2_5EventNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !78, !noundef !13
  %i.b = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !13, !nonnull !13 ; 8 uses
  switch i64 %i.a, label %default.unreachable96 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
  ]

default.unreachable96:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 10) #53
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.k, %bb.g ], [ %i.h, %bb.d ], [ %i.n, %bb.j ], [ %i.i, %bb.e ], [ %i.l, %bb.h ], [ %i.j, %bb.f ], [ %i.m, %bb.i ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 11) #53
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 19) #53
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 10) #53
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 15) #53
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 17) #53
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 22) #53
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 22) #53
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEuEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEIBL_SBK_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEIBQ_SBP_EEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEtEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE0INtB7_5FnMutTRNtBX_8ScopeDefEE8call_mutCs6u1mgJOKDyY_13rust_analyzer:bb.a

.backedge.us.us.i.i.i.i:                          ; preds = %.split.us.us.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.bw, %i.bf
  br i1 %.not17.i.i.i.i, label %_RNCNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE000Cs6u1mgJOKDyY_13rust_analyzer.exit.preheader.i.i.i.i, label %.split.us.us.i.i.i.i

_RNCNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE000Cs6u1mgJOKDyY_13rust_analyzer.exit.preheader.i.i.i.i: ; preds = %.backedge.us.us.i.i.i.i, %.backedge.us.us.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i, %.lr.ph.i.i.i.i, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !9015, !noalias !9014, !nonnull !13, !noundef !13 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !9015, !noalias !9014, !noundef !13 ; 3 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.ca, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx3.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9019)
  %.not.i2.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i2.i.i.i, label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.i3.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %_RNCNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE000Cs6u1mgJOKDyY_13rust_analyzer.exit.preheader.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !9019, !noalias !9020, !noundef !13
  %i.ce = icmp ugt i64 %i.cd, %i.ax
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !9019, !noalias !9020, !nonnull !13
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ax ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  br i1 %i.ce, label %.lr.ph.split.us.i8.i.i.i, label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

.lr.ph.split.us.i8.i.i.i:                         ; preds = %.lr.ph.i3.i.i.i
  %i.cj = load i32, ptr %i.ch, align 4, !range !53, !noalias !9021, !noundef !13
  %i.ck = trunc nuw i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.split.us.split.us.i9.i.i.i, label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i

.lr.ph.split.us.split.us.i9.i.i.i:                ; preds = %.lr.ph.split.us.i8.i.i.i
  %i.cl = load i32, ptr %i.ci, align 4, !noalias !9021, !noundef !13 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.by, i64 24
  %.val3.us.us14.i.i.i.i = load i32, ptr %i.cm, align 4, !noalias !9021
  %i.cn = getelementptr i8, ptr %i.by, i64 28
  %.val4.us.us15.i.i.i.i = load i8, ptr %i.cn, align 4, !noalias !9021
  %i.co = icmp eq i32 %.val3.us.us14.i.i.i.i, %i.cl
  %i.cp = icmp ne i8 %.val4.us.us15.i.i.i.i, 3
  %spec.select.i.us.us16.i.i.i.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %spec.select.i.us.us16.i.i.i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00ECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %.backedge.us.us.i10.i.i.i.preheader

.backedge.us.us.i10.i.i.i.preheader:              ; preds = %.lr.ph.split.us.split.us.i9.i.i.i
  %.not20.i.not.i.i.i14 = icmp eq i64 %i.ca, 1
  br i1 %.not20.i.not.i.i.i14, label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.split.us.us.i11.i.i.i.lr.ph

.split.us.us.i11.i.i.i.lr.ph:                     ; preds = %.backedge.us.us.i10.i.i.i.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  br label %.split.us.us.i11.i.i.i

.split.us.us.i11.i.i.i:                           ; preds = %.split.us.us.i11.i.i.i.lr.ph, %.backedge.us.us.i10.i.i.i
  %i.cr = phi ptr [ %i.cq, %.split.us.us.i11.i.i.i.lr.ph ], [ %i.cw, %.backedge.us.us.i10.i.i.i ] ; 2 uses
  %.pn4.i.i.i15 = phi ptr [ %i.by, %.split.us.us.i11.i.i.i.lr.ph ], [ %i.cr, %.backedge.us.us.i10.i.i.i ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.pn4.i.i.i15, i64 56
  %.val3.us.us.i12.i.i.i = load i32, ptr %i.cs, align 4, !noalias !9021
  %i.ct = getelementptr i8, ptr %.pn4.i.i.i15, i64 60
  %.val4.us.us.i.i.i.i = load i8, ptr %i.ct, align 4, !noalias !9021
  %i.cu = icmp eq i32 %.val3.us.us.i12.i.i.i, %i.cl
  %i.cv = icmp ne i8 %.val4.us.us.i.i.i.i, 3
  %spec.select.i.us.us.i.i.i.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %spec.select.i.us.us.i.i.i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00ECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %.backedge.us.us.i10.i.i.i

.backedge.us.us.i10.i.i.i:                        ; preds = %.split.us.us.i11.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %.not20.i.not.i.i.i = icmp eq ptr %i.cw, %i.cb
  br i1 %.not20.i.not.i.i.i, label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.split.us.us.i11.i.i.i

_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.backedge.us.us.i10.i.i.i, %.backedge.us.us.i10.i.i.i.preheader, %.lr.ph.split.us.i8.i.i.i, %.lr.ph.i3.i.i.i, %_RNCNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE000Cs6u1mgJOKDyY_13rust_analyzer.exit.preheader.i.i.i.i
  %.not10.i.i = icmp eq ptr %i.az, %i.ar
  br i1 %.not10.i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00ECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.j

bb.k:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !9006, !noalias !9010, !nonnull !13, !align !14, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9008
  call void @llvm.experimental.noalias.scope.decl(metadata !9022)
  call void @llvm.experimental.noalias.scope.decl(metadata !9023)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.da, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.cz, i64 12, i1 false), !alias.scope !9024, !noalias !9008
  %i.db = load ptr, ptr %i.f, align 8, !alias.scope !9023, !noalias !9025, !nonnull !13, !noundef !13
  store ptr %i.db, ptr %i.e, align 8, !alias.scope !9022, !noalias !9026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9008
  invoke fastcc void @_RNvXs0_NtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB5_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i)
          to label %bb.l unwind label %bb.y, !noalias !9008

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9008
  invoke void @_RINvMs_NtCs8Xq8PKFYOms_3hir11term_searchNtB5_11LookupTable6insertINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceNtNtB5_4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.m unwind label %bb.y, !noalias !9008

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9008
  %i.dc = load i64, ptr %i.i, align 8, !range !48, !noalias !9008, !noundef !13 ; 2 uses
  %i.dd = icmp ne i64 %i.dc, -9223372036854775802
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp eq i64 %i.dc, -9223372036854775806
  br i1 %i.de, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9008
  invoke void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type23instantiate_with_errors(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.s unwind label %bb.y, !noalias !9008

bb.o:                                             ; preds = %bb.m
  %i.df = invoke noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18contains_reference(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.p unwind label %bb.y, !noalias !9008

bb.p:                                             ; preds = %bb.o
  br i1 %i.df, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.j, align 8, !alias.scope !9006, !noalias !9010, !nonnull !13, !align !14, !noundef !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load i8, ptr %i.dh, align 8, !range !24, !noalias !9008, !noundef !13
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.r, label %bb.n

bb.r:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8, !alias.scope !9005, !noalias !9027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9008
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !9008
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.s:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %i.j, align 8, !alias.scope !9006, !noalias !9010, !nonnull !13, !align !14, !noundef !13
  %i.dl = invoke noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type23could_unify_with_deeply(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk)
          to label %bb.t unwind label %bb.y, !noalias !9008

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !9008
  br i1 %i.dl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %0, align 8, !alias.scope !9005, !noalias !9027
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a), !noalias !9008
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !9027
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9008
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %lpad.thr_comm.i

bb.y:                                             ; preds = %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #55
          to label %bb.x unwind label %bb.z, !noalias !9008

bb.z:                                             ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !9008
  unreachable

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00ECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %.lr.ph.split.us.split.us.i9.i.i.i, %.lr.ph.split.us.split.us.i.i.i.i, %.split.us.us.i.i.i.i, %.split.us.us.i11.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRSNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultNtNtB13_5lower13MirLowerErrorEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c, %bb.b, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !9005, !noalias !9027
  br label %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit

_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.r, %bb.w, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics7trivialNtCs6oosyzwIepl_6ide_db12RootDatabaseE00ECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9008
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.9.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s_0INtB7_5FnMutTRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBX_4expr4ExprEEE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !13, !align !14, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !13, !nonnull !13
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val) #53, !inline_history !9028
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0INtB7_5FnMutTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBZ_4TypeEEE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.45.i = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.67.i = alloca [12 x i8], align 8         ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [12 x i8], align 4                ; 4 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !nonnull !13, !align !14, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9034)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9035
  %i.x = icmp ult i64 %.sroa.3.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  store ptr %.sroa.2.0.copyload, ptr %i.v, align 8, !noalias !9035
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.z, align 8, !noalias !9035
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.aa, align 8, !noalias !9035
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.y, ptr %i.ab, align 8, !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9035
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !9034, !noalias !9036, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !9035, !nonnull !13, !noundef !13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noalias !9035, !noundef !13
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9034, !noalias !9036, !nonnull !13, !align !14, !noundef !13 ; 10 uses
  store ptr %i.ae, ptr %i.s, align 8, !noalias !9035
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !noalias !9035
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.aj, ptr %i.al, align 8, !noalias !9035
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.v, ptr %i.am, align 8, !noalias !9035
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtCs8Xq8PKFYOms_3hir9TypeParamENCNCNCINvNtNtB1y_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_00ENtB1y_4TypeINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B3P_IB3N_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB3B_EEINtNtNtB4_6traits7collect12FromIteratorIB3N_B3B_EE9from_iterBQ_E0B4S_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.s)
          to label %bb.c unwind label %bb.b, !noalias !9035

.body.i:                                          ; preds = %bb.at, %bb.ab, %bb.f, %bb.b
  %.pn22.i = phi { ptr, i32 } [ %.pn20.i, %bb.f ], [ %.pn20.i, %bb.at ], [ %i.an, %bb.b ], [ %i.cq, %bb.ab ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.ar, !noalias !9035

bb.b:                                             ; preds = %bb.aq, %bb.ac, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9035
  %i.ao = load i64, ptr %i.t, align 8, !range !21, !noalias !9035, !noundef !13
  %.not.i = icmp eq i64 %i.ao, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9035
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !9034, !noalias !9036, !nonnull !13, !align !64, !noundef !13 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !9035
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.p, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.h unwind label %bb.g, !noalias !9035

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9035
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.ar, align 8, !alias.scope !9033, !noalias !9037
  br label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.f:                                             ; preds = %bb.as, %bb.ag, %bb.g
  %.sroa.013.0.i = phi i8 [ %.sroa.013.1.i, %bb.g ], [ %.sroa.013.2.i, %bb.as ], [ %.sroa.013.2.i, %bb.ag ]
  %.pn20.i = phi { ptr, i32 } [ %i.at, %bb.g ], [ %.pn.i, %bb.as ], [ %.pn.i, %bb.ag ] ; 2 uses
  %i.as = trunc nuw i8 %.sroa.013.0.i to i1
  br i1 %i.as, label %bb.at, label %.body.i

bb.g:                                             ; preds = %bb.ap, %bb.w, %bb.v, %bb.t, %bb.p, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h, %bb.d
  %.sroa.013.1.i = phi i8 [ %.sroa.013.3.i, %bb.ap ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.t ], [ 1, %bb.p ], [ 1, %bb.n ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.d ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9035
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !9035, !nonnull !13, !noundef !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !9035, !noundef !13
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ax
  invoke void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtBV_5slice4iter4IterBp_EEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noundef nonnull %i.av, ptr noundef nonnull %i.ay)
          to label %bb.i unwind label %bb.g, !noalias !9035

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9035
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !9034, !noalias !9036, !nonnull !13, !align !64, !noundef !13 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !range !29, !noalias !9035, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !9035, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9035
  invoke void @_RNvXsv_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_13HasVisibility10visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.aq, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.j unwind label %bb.g, !noalias !9035

bb.j:                                             ; preds = %bb.i
  %i.be = invoke noundef zeroext i1 @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility15is_visible_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @46, i32 noundef %i.bb, i32 noundef %i.bd)
          to label %bb.k unwind label %bb.g, !noalias !9035

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9035
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9035
  store i8 2, ptr %i.n, align 4, !noalias !9035
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !9034, !noalias !9036, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !9035, !nonnull !13, !align !14, !noundef !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !9035, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load i32, ptr %i.bl, align 8, !range !29, !noalias !9035, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 84
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !9035, !noundef !13
  %i.bp = invoke noundef i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.n unwind label %bb.g, !noalias !9035

bb.m:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.bq, align 8, !alias.scope !9033, !noalias !9037
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.br = invoke noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function17is_unsafe_to_call(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.o, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.n, i8 noundef %i.bp)
          to label %bb.o unwind label %bb.g, !noalias !9035

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9035
  br i1 %i.br, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !9035
  %i.bs = invoke noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function11is_unstable(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.m, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.q unwind label %bb.g, !noalias !9035

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9035
  br i1 %i.bs, label %bb.m, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bu = load i8, ptr %i.bt, align 8, !range !24, !noalias !9035, !noundef !13
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.bw = load ptr, ptr %i.r, align 8, !noalias !9035, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.015.0.copyload.i = load i32, ptr %i.bw, align 8, !noalias !9035 ; 2 uses
  %i.bx = icmp ne i32 %.sroa.015.0.copyload.i, 27
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp eq i32 %.sroa.015.0.copyload.i, 13
  br i1 %i.by, label %bb.m, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = invoke noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18contains_reference(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.u unwind label %bb.g, !noalias !9035

bb.u:                                             ; preds = %bb.t
  br i1 %i.bz, label %bb.m, label %bb.s

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !9035
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function19params_without_self(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46)
          to label %bb.w unwind label %bb.g, !noalias !9035

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9035
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !9035, !nonnull !13, !noundef !13 ; 3 uses
  %i.cc = load i64, ptr %i.i, align 8, !range !39, !noalias !9035, !noundef !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !9035, !noundef !13 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 164703072086692426
  call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.cb, i64 %i.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9035
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !9034, !noalias !9036, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  store ptr %i.cb, ptr %i.j, align 8, !noalias !9035
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9035
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cc, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9035
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cg, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9035
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.u, ptr %i.cj, align 8, !noalias !9035
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.ci, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9035
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.aj, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9035
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB1W_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtB1b_3VecNtNtB2w_4expr4ExprEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B4u_IB4s_IB3Y_B3X_EEINtNtNtB4_6traits7collect12FromIteratorIB4s_B3X_EE9from_iterBQ_E0B5x_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j)
          to label %bb.x unwind label %bb.g, !noalias !9035

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9035
  %i.ck = load i64, ptr %i.k, align 8, !range !21, !noalias !9035, !noundef !13
  %.not18.i = icmp eq i64 %i.ck, -1
  br i1 %.not18.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9035
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !9035, !noundef !13 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 384307168202282326
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %bb.af, label %bb.ae

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9035
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.cp, align 8, !alias.scope !9033, !noalias !9037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9035
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9035
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ac unwind label %bb.ab, !noalias !9035

bb.ab:                                            ; preds = %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body.i unwind label %bb.ad, !noalias !9035

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0Cs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.b, !noalias !9035

bb.ad:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !9035
  unreachable

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9035
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !9035, !nonnull !13, !noundef !13 ; 3 uses
  %i.cu = load i64, ptr %i.l, align 8, !range !39, !noalias !9035, !noundef !13
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cm
  store ptr %i.ct, ptr %i.d, align 8, !noalias !9035
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cu, ptr %i.cw, align 8, !noalias !9035
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ct, ptr %i.cx, align 8, !noalias !9035
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cv, ptr %i.cy, align 8, !noalias !9035
  invoke void @_RINvNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.ah, !noalias !9035

bb.af:                                            ; preds = %bb.y
  %i.cz = invoke fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit(i64 noundef 72)
          to label %bb.al unwind label %bb.ah     ; 8 uses

bb.ag:                                            ; preds = %bb.am, %bb.ah
  %.sroa.011.0.i = phi i8 [ %.sroa.011.2.i, %bb.am ], [ %.sroa.011.1.i, %bb.ah ]
  %.sroa.013.2.i = phi i8 [ %.sroa.013.3.i, %bb.am ], [ 1, %bb.ah ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.dl, %bb.am ], [ %i.db, %bb.ah ] ; 2 uses
  %i.da = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.da, label %bb.as, label %bb.f

bb.ah:                                            ; preds = %bb.af, %bb.ai, %bb.ae
  %.sroa.011.1.i = phi i8 [ 1, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.ae ]
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !9035
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.aq, ptr %i.dc, align 8, !noalias !9035
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.u, ptr %i.dd, align 8, !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9035
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtB4_9into_iter8IntoIterBU_EENCNCNCINvNtBY_7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s0_0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f)
          to label %bb.aj unwind label %bb.ah, !noalias !9035

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9035
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre24.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !9035
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !noalias !9035
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.de = phi i64 [ 1, %bb.al ], [ %.pre26.i, %bb.aj ]
  %i.df = phi ptr [ %i.cz, %bb.al ], [ %.pre24.i, %bb.aj ] ; 2 uses
  %3 = phi ptr [ %.pre.i, %bb.al ], [ %i.bw, %bb.aj ]
  %.sroa.011.2.i = phi i8 [ 1, %bb.al ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.013.3.i = phi i8 [ 0, %bb.al ], [ 1, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9035
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.dg, i64 12, i1 false), !noalias !9035
  store ptr %3, ptr %i.c, align 8, !noalias !9035
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %i.de
  invoke void @_RINvMs_NtCs8Xq8PKFYOms_3hir11term_searchNtB5_11LookupTable6insertINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtB1a_5slice4iter4IterNtNtB5_4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.df, ptr noundef nonnull %i.di)
          to label %bb.an unwind label %bb.am, !noalias !9035

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.67.i, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !9035
  store i64 -9223372036854775803, ptr %i.cz, align 8, !noalias !9035
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.i, i64 24, i1 false), !noalias !9035
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !9035
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !noalias !9035
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i64 0, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !noalias !9035
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.67.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.67.i, i64 12, i1 false), !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i)
  store i64 1, ptr %i.g, align 8, !noalias !9035
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cz, ptr %i.dj, align 8, !noalias !9035
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %i.dk, align 8, !noalias !9035
  %.pre.i = load ptr, ptr %i.r, align 8, !noalias !9035
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #55
          to label %bb.ag unwind label %bb.ar, !noalias !9035

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !9035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !9037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9035
  %i.dn = trunc nuw i8 %.sroa.011.2.i to i1
  br i1 %i.dn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9035
  %i.do = trunc nuw i8 %.sroa.013.3.i to i1
  br i1 %i.do, label %bb.aq, label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %bb.ao unwind label %bb.g, !noalias !9035

bb.aq:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0Cs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.b, !noalias !9035

bb.ar:                                            ; preds = %bb.at, %bb.as, %bb.am, %.body.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !9035
  unreachable

bb.as:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #55
          to label %bb.f unwind label %bb.ar, !noalias !9035

bb.at:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #55
          to label %.body.i unwind label %bb.ar, !noalias !9035

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn22.i

_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.e, %bb.ac, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9035
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v), !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9035
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s1_0INtB7_5FnMutTNtBZ_11EnumVariantEE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 4                 ; 5 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !13, !align !14, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %2, ptr %i.k, align 4, !noalias !9043
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %3, ptr %i.m, align 4, !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9043
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !9042, !noalias !9041, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  call void @_RNvMsg_Cs8Xq8PKFYOms_3hirNtB5_11EnumVariant6fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @46), !noalias !9043
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !9043, !nonnull !13, !noundef !13 ; 3 uses
  %i.q = load i64, ptr %i.g, align 8, !range !39, !noalias !9043, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !9043, !noundef !13 ; 2 uses
  %i.t = icmp ult i64 %i.s, 576460752303423488
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9043
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !9042, !noalias !9041, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !9042, !noalias !9041, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  store ptr %i.p, ptr %i.h, align 8, !noalias !9043
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9043
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9043
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9043
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.w, ptr %i.z, align 8, !noalias !9043
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.n, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9043
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.y, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9043
  call void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNCNCINvNtNtB1W_11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s1_00EINtB1b_3VecNtNtB2w_4expr4ExprEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B4y_IB4w_IB42_B41_EEINtNtNtB4_6traits7collect12FromIteratorIB4w_B41_EE9from_iterBQ_E0B5B_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !noalias !9043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9043
  %i.aa = load i64, ptr %i.i, align 8, !range !21, !noalias !9043, !noundef !13
  %.not.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !9043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9043
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !9043, !noundef !13 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 384307168202282326
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9043
  store i64 -1, ptr %0, align 8, !alias.scope !9041, !noalias !9042
  br label %_RNCNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s1_0Cs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9043
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !9043, !nonnull !13, !noundef !13 ; 3 uses
  %i.ah = load i64, ptr %i.j, align 8, !range !39, !noalias !9043, !noundef !13
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ac
  store ptr %i.ag, ptr %i.b, align 8, !noalias !9043
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ah, ptr %i.aj, align 8, !noalias !9043
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ak, align 8, !noalias !9043
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !noalias !9043
  invoke void @_RINvNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product23multi_cartesian_productINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !9043

bb.e:                                             ; preds = %bb.b
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !9043
  %i.am = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1553) 72, i64 noundef 8) #59, !noalias !9043 ; 11 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.f, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i, !prof !18

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #57
          to label %.noexc.i unwind label %bb.h, !noalias !9043

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.m, %bb.h
  %.sroa.011.0.i = phi i8 [ %.sroa.011.2.i, %bb.m ], [ %.sroa.011.1.i, %bb.h ]
  %.pn.i = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.ap, %bb.h ] ; 2 uses
  %i.ao = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.ao, label %bb.s, label %common.resume.i

bb.h:                                             ; preds = %bb.i, %bb.f, %bb.d
  %.sroa.011.1.i = phi i8 [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.d ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !9043
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.k, ptr %i.aq, align 8, !noalias !9043
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.y, ptr %i.ar, align 8, !noalias !9043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9043
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtB4_9into_iter8IntoIterBU_EENCNCNCINvNtBY_7tactics16data_constructorNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0s1_0s_0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.j unwind label %bb.h, !noalias !9043

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9043
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !9043
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre22.i = load i64, ptr %.phi.trans.insert21.i, align 8, !noalias !9043
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.as = phi i64 [ 1, %bb.l ], [ %.pre22.i, %bb.j ]
  %i.at = phi ptr [ %i.am, %bb.l ], [ %.pre.i, %bb.j ] ; 2 uses
  %.sroa.011.2.i = phi i8 [ 1, %bb.l ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9043
end_hunk_2
