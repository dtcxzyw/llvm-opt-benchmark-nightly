Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_mv-284af5adeefb2277.uu_mv.aa9a6e8a58e22077-cgu.0?download=true
inline.NumInlined: 1919
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv:bb.a
  %.not76324 = icmp eq i8 %i.dm, -1
  br i1 %.not76324, label %._crit_edge, label %.lr.ph

_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.dn = icmp eq i64 %i.ci, 0
  br i1 %i.dn, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCseE7g6nXQLt3_5uu_mv.exit.thread.sink.split, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCseE7g6nXQLt3_5uu_mv.exit

.lr.ph:                                           ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit
  %i.do = phi ptr [ %i.dt, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ], [ %i.ii, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ]
  %i.dp = phi i64 [ %..i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.0.0.i113, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ]
  %i.dq = phi i64 [ %i.dv, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ], [ %i.ij, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ] ; 2 uses
  %i.dr = phi i64 [ %i.dz, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ], [ %i.ci, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.p) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.ds = icmp eq i64 %i.dr, %i.dq
  br i1 %i.ds, label %bb.x, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit

bb.x:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x) #34, !noalias !938
  %.pre.i = load i64, ptr %i.x, align 8, !range !8, !alias.scope !937
  %.pre5.i = load i64, ptr %i.bt, align 8, !alias.scope !937
  %.pre375 = load i64, ptr %i.bv, align 8, !alias.scope !937
  %.pre376 = load ptr, ptr %i.bw, align 8, !alias.scope !937
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit: ; preds = %.lr.ph, %bb.x
  %i.dt = phi ptr [ %.pre376, %bb.x ], [ %i.do, %.lr.ph ] ; 4 uses
  %i.du = phi i64 [ %.pre375, %bb.x ], [ %i.dp, %.lr.ph ]
  %i.dv = phi i64 [ %.pre.i, %bb.x ], [ %i.dq, %.lr.ph ] ; 5 uses
  %i.dw = phi i64 [ %.pre5.i, %bb.x ], [ %i.dr, %.lr.ph ]
  %i.dx = add i64 %i.du, -1                       ; 2 uses
  %i.dy = add i64 %i.dx, %i.dv                    ; 2 uses
  %.not.i118 = icmp ult i64 %i.dy, %i.dv
  %..i = select i1 %.not.i118, i64 %i.dy, i64 %i.dx ; 4 uses
  store i64 %..i, ptr %i.bv, align 8, !alias.scope !937
  %i.dz = add i64 %i.dw, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.bt, align 8, !alias.scope !937
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %..i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.r) #33
  %i.eb = load i8, ptr %i.q, align 8, !range !31, !noundef !7
  %.not76 = icmp eq i8 %i.eb, -1
  br i1 %.not76, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit
  %.promoted380 = phi i64 [ %i.ci, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ], [ %i.dz, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ] ; 6 uses
  %i.ec = phi ptr [ %i.ii, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ], [ %i.dt, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ]
  %i.ed = phi i64 [ %i.ij, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ], [ %i.dv, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ]
  %.promoted314373 = phi i64 [ %.sroa.0.0.i113, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ], [ %..i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ] ; 2 uses
  %i.ee = phi ptr [ %i.ik, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ], [ %i.dt, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ]
  %i.ef = phi i64 [ %i.il, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit ], [ %i.dv, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.eg = icmp slt i32 %.sroa.022.0.ph326, 20
  br i1 %i.eg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5184)
  %i.eh = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.ei = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !noundef !7
  %i.ej = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ei) #33 ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0      ; 3 uses
  %.not77 = icmp eq ptr %i.ek, null
  br i1 %.not77, label %bb.al, label %bb.aa, !prof !10

bb.z:                                             ; preds = %._crit_edge
  %i.el = add nsw i32 %.sroa.022.0.ph326, 1
  br label %bb.ar

bb.aa:                                            ; preds = %bb.y
  %i.em = extractvalue { ptr, i64 } %i.ej, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.en = icmp samesign ugt i64 %i.em, 255
  br i1 %i.en, label %bb.ac, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %i.ek, i64 range(i64 0, -9223372036854775808) %i.em, i1 false), !noalias !940
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !noalias !939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !939
  %i.ep = add nuw nsw i64 %i.em, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.ep) #33, !noalias !939
  %i.eq = load i64, ptr %i.d, align 8, !range !23, !noalias !939, !noundef !7
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.em) #33, !noalias !941
  %.pre.i119 = load i16, ptr %i.f, align 8, !range !32, !noalias !942
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !939
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.by, align 8, !noalias !939, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !943
  %i.et = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.es, ptr nonnull %i.c, ptr nonnull inttoptr (i64 256 to ptr)) #33, !noalias !944, !srcloc !26
  %i.eu = extractvalue { ptr, i32, i32 } %i.et, 0 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ca, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !942
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = trunc i64 %i.ev to i16
  store i16 %i.ew, ptr %i.bz, align 2, !noalias !942
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i: ; preds = %bb.af, %bb.ae
  %.sink.i.i.i.i = phi i16 [ 0, %bb.ae ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !939
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i, %bb.ac
  %i.ex = phi i16 [ %.pre.i119, %bb.ac ], [ %.sink.i.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i ]
  %i.ey = trunc nuw i16 %i.ex to i1
  br i1 %i.ey, label %.loopexit.loopexit, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit

.loopexit.loopexit:                               ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i
  %.pre377 = load i16, ptr %i.bz, align 2, !noalias !942
  %i.ez = sext i16 %.pre377 to i64
  %i.fa = mul nsw i64 %i.ez, -4294967296
  %i.fb = or disjoint i64 %i.fa, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i
  %.neg.i = phi i64 [ %i.fb, %.loopexit.loopexit ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i ]
  %i.fc = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !942
  %.not.i.i = icmp eq ptr %i.fc, @5
  br i1 %.not.i.i, label %bb.ah, label %bb.ag, !prof !9

bb.ag:                                            ; preds = %.loopexit
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #33, !noalias !941
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.ag
  %i.fd = inttoptr i64 %.neg.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !945
  store ptr %i.fd, ptr %i.k, align 8, !noalias !945
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35, !noalias !945
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i
  %.sroa.4180.8.copyload181 = load ptr, ptr %i.ca, align 8, !noalias !946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5184, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.8..sroa_idx182, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59, align 8
  store i64 0, ptr %.sroa.461.0..sroa_idx62, align 8
  %.val.i120 = load i64, ptr %i.x, align 8, !alias.scope !947 ; 6 uses
  %i.fe = icmp eq i64 %.promoted380, 0
  br i1 %i.fe, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit, label %bb.ai

bb.ai:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit
  %.val2.i121 = load i64, ptr %i.bv, align 8, !alias.scope !947 ; 4 uses
  %.not.i.i122 = icmp ult i64 %.val2.i121, %.val.i120
  %i.ff = select i1 %.not.i.i122, i64 0, i64 %.val.i120
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i121, %i.ff ; 4 uses
  %i.fg = sub i64 %.val.i120, %.sroa.04.0.i.i     ; 2 uses
  %.not11.i.i = icmp ult i64 %i.fg, %.promoted380
  br i1 %.not11.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fh = sub nuw i64 %.promoted380, %i.fg
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fi = add i64 %.sroa.04.0.i.i, %.promoted380
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit, %bb.aj, %bb.ak
  %.promoted314372 = phi i64 [ %.val2.i121, %bb.ak ], [ %.val2.i121, %bb.aj ], [ %.promoted314373, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit ]
  %.sroa.0.0.i123 = phi i64 [ %.sroa.04.0.i.i, %bb.ak ], [ %.sroa.04.0.i.i, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit ]
  %.sroa.5.0.i = phi i64 [ %i.fi, %bb.ak ], [ %.val.i120, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.ak ], [ %i.fh, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit ]
  %i.fj = load ptr, ptr %i.bw, align 8, !alias.scope !947, !nonnull !7, !noundef !7 ; 6 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.sroa.0.0.i123
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.sroa.5.0.i
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.sroa.11.0.i
  br label %bb.am

bb.al:                                            ; preds = %bb.y
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #35
  unreachable

bb.am:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit
  %.sroa.0189.sroa.7.0 = phi ptr [ %i.fl, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.0189.sroa.7.1247, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241 ] ; 4 uses
  %.sroa.0189.sroa.0.0 = phi ptr [ %i.fk, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit ], [ %i.fp, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241 ] ; 2 uses
  %.sroa.10194.sroa.5.0 = phi ptr [ %i.fm, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.10194.sroa.5.1248, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241 ] ; 3 uses
  %.sroa.10194.sroa.0.0 = phi ptr [ %i.fj, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.10194.sroa.0.1249, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241 ] ; 3 uses
  %i.fn = icmp eq ptr %.sroa.0189.sroa.0.0, %.sroa.0189.sroa.7.0
  br i1 %i.fn, label %bb.an, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241

bb.an:                                            ; preds = %bb.am
  %i.fo = icmp eq ptr %.sroa.10194.sroa.0.0, %.sroa.10194.sroa.5.0
  br i1 %i.fo, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread241: ; preds = %bb.am, %bb.an
  %.sink6.i250 = phi ptr [ %.sroa.10194.sroa.0.0, %bb.an ], [ %.sroa.0189.sroa.0.0, %bb.am ] ; 2 uses
  %.sroa.10194.sroa.0.1249 = phi ptr [ %.sroa.0189.sroa.7.0, %bb.an ], [ %.sroa.10194.sroa.0.0, %bb.am ]
  %.sroa.10194.sroa.5.1248 = phi ptr [ %.sroa.0189.sroa.7.0, %bb.an ], [ %.sroa.10194.sroa.5.0, %bb.am ]
  %.sroa.0189.sroa.7.1247 = phi ptr [ %.sroa.10194.sroa.5.0, %bb.an ], [ %.sroa.0189.sroa.7.0, %bb.am ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.sink6.i250, i64 32
  %i.fq = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i250) #33 ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fr, i64 noundef %i.fs) #33
  br label %bb.am

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread: ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store ptr %.sroa.4180.8.copyload181, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5184.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5184, i64 136, i1 false)
  %i.ft = call fastcc noundef zeroext i1 @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuNtNtNtB1M_4hash6random11RandomStateE6insertCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.ft, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread
  %i.fu = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newReECs2vKOLqTMYjT_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 33) #34
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fu, ptr %i.fv, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5184)
  %i.fw = icmp eq i64 %i.dj, 0
  br i1 %i.fw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125

bb.aq:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5184)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.z
  %i.fx = phi ptr [ %i.ec, %bb.z ], [ %i.fj, %bb.aq ] ; 2 uses
  %i.fy = phi i64 [ %i.ed, %bb.z ], [ %.val.i120, %bb.aq ] ; 2 uses
  %.promoted314371 = phi i64 [ %.promoted314373, %bb.z ], [ %.promoted314372, %bb.aq ] ; 2 uses
  %i.fz = phi ptr [ %i.ee, %bb.z ], [ %i.fj, %bb.aq ] ; 2 uses
  %i.ga = phi i64 [ %i.ef, %bb.z ], [ %.val.i120, %bb.aq ] ; 2 uses
  %.sroa.022.2 = phi i32 [ %i.el, %bb.z ], [ %.sroa.022.0.ph326, %bb.aq ] ; 2 uses
  %i.gb = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #33 ; 0 uses
  %i.gc = icmp eq i64 %i.dj, 0
  br i1 %i.gc, label %bb.bh, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %bb.bh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125.thread: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9175.0218, ptr %i.gd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.at

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.thread: ; preds = %bb.w, %bb.t
  %.sroa.9175.0218 = phi ptr [ %i.dg, %bb.t ], [ %i.dl, %bb.w ] ; 4 uses
  %i.ge = icmp eq i64 %i.ci, 0
  br i1 %i.ge, label %bb.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125: ; preds = %bb.ap, %bb.ao
  %i.gf = icmp eq i64 %.sroa.0167.0.copyload168, 0
  br i1 %i.gf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit132, label %bb.at

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit132: ; preds = %bb.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i128, %bb.au, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.av

bb.at:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit125
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %.sroa.0167.0.copyload168.off = add i64 %.sroa.0167.0.copyload168, -1
  %switch = icmp ult i64 %.sroa.0167.0.copyload168.off, 3
  br i1 %switch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit132, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val2.i131 = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !range !8, !alias.scope !948, !noundef !7 ; 2 uses
  %i.gg = icmp eq i64 %.val2.i131, 0
  br i1 %i.gg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit132, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i128

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i128: ; preds = %bb.au
  %.val1.i130 = load ptr, ptr %.sroa.4171.0..sroa_idx, align 8, !alias.scope !948, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i130, i64 noundef %.val2.i131, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !948
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit132

bb.av:                                            ; preds = %bb.bu, %bb.by, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit132
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !955, !noundef !7 ; 4 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !957, !noundef !7 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = load ptr, ptr %i.u, align 8, !alias.scope !957, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gn, align 16, !noalias !958
  %i.go = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gq = bitcast <16 x i1> %i.go to i16
  br label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, %bb.ax
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.gn, %bb.ax ], [ %.sroa.06.1.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.gp, %bb.ax ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.gq, %bb.ax ], [ %i.gz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.gl, %bb.ax ], [ %i.hc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.ay ] ; 2 uses
  %i.gs = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.ay ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gr, align 16, !noalias !959
  %i.gt = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -2688 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gt to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i

_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ay
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.ay ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.ay ], [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.ay ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gw = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.gx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.gy = zext nneg i16 %i.gx to i64
  %i.gz = and i16 %i.gw, %.lcssa.i.i.i.i.i.i.i.i
  %i.ha = sub nsw i64 0, %i.gy
  %i.hb = getelementptr inbounds [168 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.ha ; 2 uses
  %i.hc = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hb, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.hd, align 8, !range !8, !noalias !957, !noundef !7 ; 2 uses
  %i.he = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.he, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i
  %i.hf = getelementptr i8, ptr %i.hb, i64 -16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.hf, align 8, !noalias !957, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !957
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i
  %i.hg = icmp eq i64 %i.hc, 0
  br i1 %i.hg, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, label %bb.ay

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, %bb.aw
  %i.hh = mul i64 %i.gi, 168
  %i.hi = icmp slt i64 %i.gi, 109802048057794950
  call void @llvm.assume(i1 %i.hi)
  %i.hj = and i64 %i.hh, -16                      ; 2 uses
  %i.hk = add i64 %i.hj, 176                      ; 2 uses
  %i.hl = add nsw i64 %i.gi, 17
  %i.hm = add i64 %i.hl, %i.hk                    ; 4 uses
  %i.hn = icmp uge i64 %i.hm, %i.hk
  %i.ho = icmp ult i64 %i.hm, 9223372036854775793
  call void @llvm.assume(i1 %i.hn)
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp eq i64 %i.hm, 0
  br i1 %i.hp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i
  %i.hq = load ptr, ptr %i.u, align 8, !alias.scope !955, !nonnull !7, !noundef !7
  %i.hr = sub i64 -176, %i.hj
  %i.hs = getelementptr inbounds i8, ptr %i.hq, i64 %i.hr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hs, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !955
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.av, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val88 = load i64, ptr %i.v, align 8, !range !8, !noundef !7 ; 2 uses
  %i.ht = icmp eq i64 %.val88, 0
  br i1 %i.ht, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit133, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit
  %.val89 = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val89, i64 noundef %.val88, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit133

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit133: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val86 = load i64, ptr %i.y, align 8, !range !8, !noundef !7 ; 2 uses
  %i.hu = icmp eq i64 %.val86, 0
  br i1 %i.hu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit134, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit133
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %.val86, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit134
end_hunk_0
begin_hunk_1_@_RNvCseE7g6nXQLt3_5uu_mv20assert_not_same_file:bb.a
  %.not76319.i = icmp eq i8 %i.go, -1
  br i1 %.not76319.i, label %._crit_edge.i, label %.lr.ph.i

_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.gp = icmp eq i64 %i.fk, 0
  br i1 %i.gp, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCseE7g6nXQLt3_5uu_mv.exit.thread.sink.split.i, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCseE7g6nXQLt3_5uu_mv.exit.i

.lr.ph.i:                                         ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i
  %i.gq = phi ptr [ %i.gv, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.li, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ]
  %i.gr = phi i64 [ %..i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.0.0.i108.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ]
  %i.gs = phi i64 [ %i.gx, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.lj, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ] ; 2 uses
  %i.gt = phi i64 [ %i.hb, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.fk, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false), !noalias !2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2928
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.z) #33, !noalias !2929
  call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %i.gu = icmp eq i64 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ar, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i

bb.ar:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah) #34, !noalias !2951
  %.pre.i.i = load i64, ptr %i.ah, align 8, !range !8, !alias.scope !2950, !noalias !2928
  %.pre5.i.i = load i64, ptr %i.ew, align 8, !alias.scope !2950, !noalias !2928
  %.pre370.i = load i64, ptr %i.ey, align 8, !alias.scope !2950, !noalias !2928
  %.pre371.i = load ptr, ptr %i.ez, align 8, !alias.scope !2950, !noalias !2928
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %bb.ar, %.lr.ph.i
  %i.gv = phi ptr [ %.pre371.i, %bb.ar ], [ %i.gq, %.lr.ph.i ] ; 4 uses
  %i.gw = phi i64 [ %.pre370.i, %bb.ar ], [ %i.gr, %.lr.ph.i ]
  %i.gx = phi i64 [ %.pre.i.i, %bb.ar ], [ %i.gs, %.lr.ph.i ] ; 5 uses
  %i.gy = phi i64 [ %.pre5.i.i, %bb.ar ], [ %i.gt, %.lr.ph.i ]
  %i.gz = add i64 %i.gw, -1                       ; 2 uses
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  %.not.i113.i = icmp ult i64 %i.ha, %i.gx
  %..i.i = select i1 %.not.i113.i, i64 %i.ha, i64 %i.gz ; 4 uses
  store i64 %..i.i, ptr %i.ey, align 8, !alias.scope !2950, !noalias !2928
  %i.hb = add i64 %i.gy, 1                        ; 3 uses
  store i64 %i.hb, ptr %i.ew, align 8, !alias.scope !2950, !noalias !2928
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.gv, i64 %..i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !2952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2928
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ab) #33, !noalias !2929
  %i.hd = load i8, ptr %i.aa, align 8, !range !31, !noalias !2928, !noundef !7
  %.not76.i = icmp eq i8 %i.hd, -1
  br i1 %.not76.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i
  %.promoted375.i = phi i64 [ %i.fk, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.hb, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ] ; 6 uses
  %i.he = phi ptr [ %i.li, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.gv, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ]
  %i.hf = phi i64 [ %i.lj, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.gx, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ]
  %.promoted309368.i = phi i64 [ %.sroa.0.0.i108.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ], [ %..i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ] ; 2 uses
  %i.hg = phi ptr [ %i.lk, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.gv, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ]
  %i.hh = phi i64 [ %i.ll, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.gx, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCseE7g6nXQLt3_5uu_mv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2928
  %i.hi = icmp slt i32 %.sroa.022.0.ph321.i, 20
  br i1 %i.hi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5179.i)
  %i.hj = load ptr, ptr %.sroa.358.0..sroa_idx.i, align 8, !noalias !2928, !nonnull !7, !noundef !7
  %i.hk = load i64, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !2928, !noundef !7
  %i.hl = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hj, i64 noundef %i.hk) #33, !noalias !2929 ; 2 uses
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0      ; 3 uses
  %.not77.i = icmp eq ptr %i.hm, null
  br i1 %.not77.i, label %bb.bf, label %bb.au, !prof !10

bb.at:                                            ; preds = %._crit_edge.i
  %i.hn = add nsw i32 %.sroa.022.0.ph321.i, 1
  br label %bb.bl

bb.au:                                            ; preds = %bb.as
  %i.ho = extractvalue { ptr, i64 } %i.hl, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2928
  %i.hp = icmp samesign ugt i64 %i.ho, 255
  br i1 %i.hp, label %bb.aw, label %bb.av, !prof !10

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2953
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.hm, i64 range(i64 0, -9223372036854775808) %i.ho, i1 false), !noalias !2954
  %i.hq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !noalias !2953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2953
  %i.hr = add nuw nsw i64 %i.ho, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.hr) #33, !noalias !2955
  %i.hs = load i64, ptr %i.n, align 8, !range !23, !noalias !2953, !noundef !7
  %i.ht = trunc nuw i64 %i.hs to i1
  br i1 %i.ht, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i.i, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hm, i64 noundef range(i64 0, -9223372036854775808) %i.ho) #33, !noalias !2956
  %.pre.i114.i = load i16, ptr %i.p, align 8, !range !32, !noalias !2957
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2953
  br label %.loopexit.i

bb.ax:                                            ; preds = %bb.av
  %i.hu = load ptr, ptr %i.fb, align 8, !noalias !2953, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2958
  %i.hv = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.hu, ptr nonnull %i.m, ptr nonnull inttoptr (i64 256 to ptr)) #33, !noalias !2959, !srcloc !26
  %i.hw = extractvalue { ptr, i32, i32 } %i.hv, 0 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fd, ptr noundef nonnull align 8 dereferenceable(144) %i.m, i64 144, i1 false), !noalias !2957
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = trunc i64 %i.hx to i16
  store i16 %i.hy, ptr %i.fc, align 2, !noalias !2957
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %.sink.i.i.i.i.i = phi i16 [ 0, %bb.ay ], [ 1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2953
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i.i, %bb.aw
  %i.hz = phi i16 [ %.pre.i114.i, %bb.aw ], [ %.sink.i.i.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCseE7g6nXQLt3_5uu_mv.exit.i.i.i ]
  %i.ia = trunc nuw i16 %i.hz to i1
  br i1 %i.ia, label %.loopexit.loopexit.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i

.loopexit.loopexit.i:                             ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i.i
  %.pre372.i = load i16, ptr %i.fc, align 2, !noalias !2957
  %i.ib = sext i16 %.pre372.i to i64
  %i.ic = mul nsw i64 %i.ib, -4294967296
  %i.id = or disjoint i64 %i.ic, 2
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i.i
  %.neg.i.i = phi i64 [ %i.id, %.loopexit.loopexit.i ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.thread.i.i ]
  %i.ie = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !2957
  %.not.i.i.i = icmp eq ptr %i.ie, @5
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba, !prof !9

bb.ba:                                            ; preds = %.loopexit.i
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #33, !noalias !2956
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit.i
  %i.if = inttoptr i64 %.neg.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2960
  store ptr %i.if, ptr %i.u, align 8, !noalias !2960
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35, !noalias !2961
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECseE7g6nXQLt3_5uu_mv.exit.i.i
  %.sroa.4175.8.copyload176.i = load ptr, ptr %i.fd, align 8, !noalias !2962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5179.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.8..sroa_idx177.i, i64 136, i1 false), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2928
  store i64 0, ptr %i.x, align 8, !noalias !2928
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59.i, align 8, !noalias !2928
  store i64 0, ptr %.sroa.461.0..sroa_idx62.i, align 8, !noalias !2928
  %.val.i115.i = load i64, ptr %i.ah, align 8, !alias.scope !2963, !noalias !2928 ; 6 uses
  %i.ig = icmp eq i64 %.promoted375.i, 0
  br i1 %i.ig, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i
  %.val2.i116.i = load i64, ptr %i.ey, align 8, !alias.scope !2963, !noalias !2928 ; 4 uses
  %.not.i.i117.i = icmp ult i64 %.val2.i116.i, %.val.i115.i
  %i.ih = select i1 %.not.i.i117.i, i64 0, i64 %.val.i115.i
  %.sroa.04.0.i.i.i = sub nuw i64 %.val2.i116.i, %i.ih ; 4 uses
  %i.ii = sub i64 %.val.i115.i, %.sroa.04.0.i.i.i ; 2 uses
  %.not11.i.i.i = icmp ult i64 %i.ii, %.promoted375.i
  br i1 %.not11.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ij = sub nuw i64 %.promoted375.i, %i.ii
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.ik = add i64 %.sroa.04.0.i.i.i, %.promoted375.i
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %bb.be, %bb.bd, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i
  %.promoted309367.i = phi i64 [ %.val2.i116.i, %bb.be ], [ %.val2.i116.i, %bb.bd ], [ %.promoted309368.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i ]
  %.sroa.0.0.i118.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.be ], [ %.sroa.04.0.i.i.i, %bb.bd ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i ]
  %.sroa.5.0.i.i = phi i64 [ %i.ik, %bb.be ], [ %.val.i115.i, %bb.bd ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i ]
  %.sroa.11.0.i.i = phi i64 [ 0, %bb.be ], [ %i.ij, %bb.bd ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i ]
  %i.il = load ptr, ptr %i.ez, align 8, !alias.scope !2963, !noalias !2928, !nonnull !7, !noundef !7 ; 6 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.sroa.0.0.i118.i
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.sroa.5.0.i.i
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.sroa.11.0.i.i
  br label %bb.bg

bb.bf:                                            ; preds = %bb.as
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #35, !noalias !2929
  unreachable

bb.bg:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i
  %.sroa.0184.sroa.7.0.i = phi ptr [ %i.in, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.0184.sroa.7.1242.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i ] ; 4 uses
  %.sroa.0184.sroa.0.0.i = phi ptr [ %i.im, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.ir, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i ] ; 2 uses
  %.sroa.10189.sroa.5.0.i = phi ptr [ %i.io, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.10189.sroa.5.1243.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i ] ; 3 uses
  %.sroa.10189.sroa.0.0.i = phi ptr [ %i.il, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.10189.sroa.0.1244.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i ] ; 3 uses
  %i.ip = icmp eq ptr %.sroa.0184.sroa.0.0.i, %.sroa.0184.sroa.7.0.i
  br i1 %i.ip, label %bb.bh, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i

bb.bh:                                            ; preds = %bb.bg
  %i.iq = icmp eq ptr %.sroa.10189.sroa.0.0.i, %.sroa.10189.sroa.5.0.i
  br i1 %i.iq, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread.i, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread236.i: ; preds = %bb.bh, %bb.bg
  %.sink6.i245.i = phi ptr [ %.sroa.10189.sroa.0.0.i, %bb.bh ], [ %.sroa.0184.sroa.0.0.i, %bb.bg ] ; 2 uses
  %.sroa.10189.sroa.0.1244.i = phi ptr [ %.sroa.0184.sroa.7.0.i, %bb.bh ], [ %.sroa.10189.sroa.0.0.i, %bb.bg ]
  %.sroa.10189.sroa.5.1243.i = phi ptr [ %.sroa.0184.sroa.7.0.i, %bb.bh ], [ %.sroa.10189.sroa.5.0.i, %bb.bg ]
  %.sroa.0184.sroa.7.1242.i = phi ptr [ %.sroa.10189.sroa.5.0.i, %bb.bh ], [ %.sroa.0184.sroa.7.0.i, %bb.bg ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.sink6.i245.i, i64 32
  %i.is = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i245.i) #33, !noalias !2929 ; 2 uses
  %i.it = extractvalue { ptr, i64 } %i.is, 0
  %i.iu = extractvalue { ptr, i64 } %i.is, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.iu) #33, !noalias !2929
  br label %bb.bg

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread.i: ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !2928
  store ptr %.sroa.4175.8.copyload176.i, ptr %i.w, align 8, !noalias !2928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5179.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5179.i, i64 136, i1 false), !noalias !2928
  %i.iv = call fastcc noundef zeroext i1 @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuNtNtNtB1M_4hash6random11RandomStateE6insertCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.w) #33, !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2928
  br i1 %i.iv, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread.i
  %i.iw = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newReECs2vKOLqTMYjT_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 33) #34, !noalias !2929 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5179.i)
  %i.ix = icmp eq i64 %i.gl, 0
  br i1 %i.ix, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2929
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i

bb.bk:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5179.i)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.at
  %i.iy = phi ptr [ %i.he, %bb.at ], [ %i.il, %bb.bk ] ; 2 uses
  %i.iz = phi i64 [ %i.hf, %bb.at ], [ %.val.i115.i, %bb.bk ] ; 2 uses
  %.promoted309366.i = phi i64 [ %.promoted309368.i, %bb.at ], [ %.promoted309367.i, %bb.bk ] ; 2 uses
  %i.ja = phi ptr [ %i.hg, %bb.at ], [ %i.il, %bb.bk ] ; 2 uses
  %i.jb = phi i64 [ %i.hh, %bb.at ], [ %.val.i115.i, %bb.bk ] ; 2 uses
  %.sroa.022.2.i = phi i32 [ %i.hn, %bb.at ], [ %.sroa.022.0.ph321.i, %bb.bk ] ; 2 uses
  %i.jc = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #33, !noalias !2929 ; 0 uses
  %i.jd = icmp eq i64 %i.gl, 0
  br i1 %i.jd, label %bb.ca, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2929
  br label %bb.ca

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.thread.i: ; preds = %bb.aq, %bb.an
  %.sroa.9170.0213.i = phi ptr [ %i.gi, %bb.an ], [ %i.gn, %bb.aq ] ; 4 uses
  %i.je = icmp eq i64 %i.fk, 0
  br i1 %i.je, label %bb.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.thread.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i: ; preds = %bb.bj, %bb.bi
  %i.jf = icmp eq i64 %.sroa.0162.0.copyload163.i, 0
  br i1 %i.jf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.thread.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i123.i, %bb.bn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.thread.i ], [ %.sroa.11.1, %bb.bn ], [ %.sroa.11.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i123.i ], [ %i.iw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.bo

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.thread.i: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i
  %.sroa.11.1 = phi ptr [ %i.iw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.i ], [ %.sroa.9170.0213.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit.thread.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  %.sroa.0162.0.copyload163.off.i = add i64 %.sroa.0162.0.copyload163.i, -1
  %switch.i = icmp ult i64 %.sroa.0162.0.copyload163.off.i, 3
  br i1 %switch.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit120.thread.i
  %.val2.i126.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !range !8, !alias.scope !2964, !noalias !2928, !noundef !7 ; 2 uses
  %i.jg = icmp eq i64 %.val2.i126.i, 0
  br i1 %i.jg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i123.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.sink.split.i123.i: ; preds = %bb.bn
  %.val1.i125.i = load ptr, ptr %.sroa.4166.0..sroa_idx.i, align 8, !alias.scope !2964, !noalias !2928, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i125.i, i64 noundef %.val2.i126.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2965
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i

bb.bo:                                            ; preds = %bb.cq, %bb.cn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i
  %.sroa.11.2 = phi ptr [ %.sink2.i.i, %bb.cn ], [ %.sroa.11.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECseE7g6nXQLt3_5uu_mv.exit127.i ], [ %i.ns, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !2972, !noalias !2928, !noundef !7 ; 4 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !2974, !noalias !2928, !noundef !7 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jn = load ptr, ptr %i.ae, align 8, !alias.scope !2974, !noalias !2928, !nonnull !7, !noundef !7 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jn, align 16, !noalias !2975
  %i.jo = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jq = bitcast <16 x i1> %i.jo to i16
  br label %bb.br

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i, %bb.bq
  %.sroa.06.017.i.i.i.i.i.i.i.i = phi ptr [ %i.jn, %bb.bq ], [ %.sroa.06.1.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i = phi ptr [ %i.jp, %bb.bq ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i = phi i16 [ %i.jq, %bb.bq ], [ %i.jz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i = phi i64 [ %i.jl, %bb.bq ], [ %i.kc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.br, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.jr = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i, %bb.br ] ; 2 uses
  %i.js = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i, %bb.br ]
  %.val9.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jr, align 16, !noalias !2976
  %i.jt = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -2688 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.jt to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.br
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i, %bb.br ], [ %i.jv, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i, %bb.br ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i, %bb.br ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jw = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.jx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jy = zext nneg i16 %i.jx to i64
  %i.jz = and i16 %i.jw, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ka = sub nsw i64 0, %i.jy
  %i.kb = getelementptr inbounds [168 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i, i64 %i.ka ; 2 uses
  %i.kc = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kb, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kd, align 8, !range !8, !noalias !2977, !noundef !7 ; 2 uses
  %i.ke = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ke, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i
  %i.kf = getelementptr i8, ptr %i.kb, i64 -16
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.kf, align 8, !noalias !2977, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2977
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bs, %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i
  %i.kg = icmp eq i64 %i.kc, 0
  br i1 %i.kg, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, label %bb.br

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i, %bb.bp
  %i.kh = mul i64 %i.ji, 168
  %i.ki = icmp slt i64 %i.ji, 109802048057794950
  call void @llvm.assume(i1 %i.ki)
  %i.kj = and i64 %i.kh, -16                      ; 2 uses
  %i.kk = add i64 %i.kj, 176                      ; 2 uses
  %i.kl = add nsw i64 %i.ji, 17
  %i.km = add i64 %i.kl, %i.kk                    ; 4 uses
  %i.kn = icmp uge i64 %i.km, %i.kk
  %i.ko = icmp ult i64 %i.km, 9223372036854775793
  call void @llvm.assume(i1 %i.kn)
  call void @llvm.assume(i1 %i.ko)
  %i.kp = icmp eq i64 %i.km, 0
  br i1 %i.kp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i
  %i.kq = load ptr, ptr %i.ae, align 8, !alias.scope !2972, !noalias !2928, !nonnull !7, !noundef !7
  %i.kr = sub i64 -176, %i.kj
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 %i.kr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ks, i64 noundef %i.km, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !2978
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %bb.bt, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2928
  %.val86.i = load i64, ptr %i.af, align 8, !range !8, !noalias !2928, !noundef !7 ; 2 uses
  %i.kt = icmp eq i64 %.val86.i, 0
  br i1 %i.kt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit128.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit.i
  %.val87.i = load ptr, ptr %.sroa.358.0..sroa_idx.i, align 8, !noalias !2928, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val87.i, i64 noundef %.val86.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2929
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit128.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit128.i: ; preds = %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtBK_4path7PathBufEEECseE7g6nXQLt3_5uu_mv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2928
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #33, !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2928
  %.val84.i = load i64, ptr %i.ai, align 8, !range !8, !noalias !2928, !noundef !7 ; 2 uses
  %i.ku = icmp eq i64 %.val84.i, 0
  br i1 %i.ku, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit129.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit128.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef %.val84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2929
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit129.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit129.i: ; preds = %bb.bv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2928
  %.val80.i = load i64, ptr %i.al, align 8, !range !8, !noalias !2928, !noundef !7 ; 2 uses
  %i.kv = icmp eq i64 %.val80.i, 0
  br i1 %i.kv, label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.thread, label %bb.bw
end_hunk_1
