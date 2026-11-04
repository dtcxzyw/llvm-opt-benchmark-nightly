Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_realpath-02df678cbd717777.uu_realpath.37d68b573cc76a51-cgu.0?download=true
inline.NumInlined: 631
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeRNtNtCs2vKOLqTMYjT_3std4path4PathECs4NdVKWkRqHB_11uu_realpath:bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %.val.i.i112, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !480
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECs4NdVKWkRqHB_11uu_realpath.exit

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit.thread: ; preds = %bb.ac, %bb.z
  %.sroa.9177.0213 = phi ptr [ %i.ec, %bb.z ], [ %i.eh, %bb.ac ] ; 4 uses
  switch i8 %3, label %bb.bu [
    i8 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit126.thread
    i8 0, label %bb.bj
  ]

.lr.ph:                                           ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit
  %.val.i116359 = phi i64 [ %.val.i116358, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ], [ %.val.i116361, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.el = phi ptr [ %i.eq, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.di, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.em = phi i64 [ %..i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ], [ %.sroa.0.0.i110, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.en = phi i64 [ %i.es, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.dj, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ] ; 2 uses
  %i.eo = phi i64 [ %i.ew, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.dq, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.aa) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.ep = icmp eq i64 %i.eo, %i.en
  br i1 %i.ep, label %bb.ae, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit

bb.ae:                                            ; preds = %.lr.ph
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj) #28, !noalias !483
  %.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !482 ; 2 uses
  %.pre5.i = load i64, ptr %i.cj, align 8, !alias.scope !482
  %.pre = load i64, ptr %i.ci, align 8, !alias.scope !482
  %.pre355 = load ptr, ptr %i.ck, align 8, !alias.scope !482
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %.lr.ph, %bb.ae
  %.val.i116358 = phi i64 [ %.pre.i, %bb.ae ], [ %.val.i116359, %.lr.ph ] ; 2 uses
  %i.eq = phi ptr [ %.pre355, %bb.ae ], [ %i.el, %.lr.ph ] ; 4 uses
  %i.er = phi i64 [ %.pre, %bb.ae ], [ %i.em, %.lr.ph ]
  %i.es = phi i64 [ %.pre.i, %bb.ae ], [ %i.en, %.lr.ph ] ; 5 uses
  %i.et = phi i64 [ %.pre5.i, %bb.ae ], [ %i.eo, %.lr.ph ]
  %i.eu = add i64 %i.er, -1                       ; 2 uses
  %i.ev = add i64 %i.eu, %i.es                    ; 2 uses
  %.not.i113 = icmp ult i64 %i.ev, %i.es
  %..i = select i1 %.not.i113, i64 %i.ev, i64 %i.eu ; 3 uses
  store i64 %..i, ptr %i.ci, align 8, !alias.scope !482
  %i.ew = add i64 %i.et, 1                        ; 3 uses
  store i64 %i.ew, ptr %i.cj, align 8, !alias.scope !482
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %..i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ac) #25
  %i.ey = load i8, ptr %i.ab, align 8, !range !15, !noundef !6
  %.not77 = icmp eq i8 %i.ey, -1
  br i1 %.not77, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit
  %.val.i116 = phi i64 [ %.val.i116361, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ], [ %.val.i116358, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ] ; 8 uses
  %i.ez = phi i64 [ %i.dq, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.ew, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ] ; 6 uses
  %i.fa = phi ptr [ %i.di, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.eq, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.fb = phi i64 [ %i.dj, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.es, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.fc = phi ptr [ %i.dk, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.eq, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.fd = phi i64 [ %i.dl, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.es, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCs4NdVKWkRqHB_11uu_realpath.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.fe = icmp slt i32 %.sroa.022.0.ph316, 20
  br i1 %i.fe, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5186)
  %i.ff = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.fg = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !noundef !6
  %i.fh = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ff, i64 noundef %i.fg) #25 ; 2 uses
  %i.fi = extractvalue { ptr, i64 } %i.fh, 0      ; 3 uses
  %.not78 = icmp eq ptr %i.fi, null
  br i1 %.not78, label %bb.as, label %bb.ah, !prof !9

bb.ag:                                            ; preds = %._crit_edge
  %i.fj = add nsw i32 %.sroa.022.0.ph316, 1
  br label %bb.bh

bb.ah:                                            ; preds = %bb.af
  %i.fk = extractvalue { ptr, i64 } %i.fh, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fl = icmp samesign ugt i64 %i.fk, 255
  br i1 %i.fl, label %bb.aj, label %bb.ai, !prof !9

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !484
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %i.fi, i64 range(i64 0, -9223372036854775808) %i.fk, i1 false), !noalias !485
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fk
  store i8 0, ptr %i.fm, align 1, !noalias !484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !484
  %i.fn = add nuw nsw i64 %i.fk, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.fn) #25, !noalias !484
  %i.fo = load i64, ptr %i.i, align 8, !range !18, !noalias !484, !noundef !6
  %i.fp = trunc nuw i64 %i.fo to i1
  br i1 %i.fp, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.thread.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.fk) #25, !noalias !486
  %.pre.i115 = load i16, ptr %i.k, align 8, !range !487, !noalias !488
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.thread.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !484
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ai
  %i.fq = load ptr, ptr %i.cz, align 8, !noalias !484, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !489
  %i.fr = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.fq, ptr nonnull %i.h, ptr nonnull inttoptr (i64 256 to ptr)) #25, !noalias !490, !srcloc !14
  %i.fs = extractvalue { ptr, i32, i32 } %i.fr, 0 ; 2 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i114, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.db, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 144, i1 false), !noalias !488
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs4NdVKWkRqHB_11uu_realpath.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = trunc i64 %i.ft to i16
  store i16 %i.fu, ptr %i.da, align 2, !noalias !488
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs4NdVKWkRqHB_11uu_realpath.exit.i.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs4NdVKWkRqHB_11uu_realpath.exit.i.i: ; preds = %bb.am, %bb.al
  %.sink.i.i.i.i = phi i16 [ 0, %bb.al ], [ 1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !484
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs4NdVKWkRqHB_11uu_realpath.exit.i.i, %bb.aj
  %i.fv = phi i16 [ %.pre.i115, %bb.aj ], [ %.sink.i.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs4NdVKWkRqHB_11uu_realpath.exit.i.i ]
  %i.fw = trunc nuw i16 %i.fv to i1
  br i1 %i.fw, label %.loopexit.loopexit, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit

.loopexit.loopexit:                               ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.i
  %.pre362 = load i16, ptr %i.da, align 2, !noalias !488
  %i.fx = sext i16 %.pre362 to i64
  %i.fy = mul nsw i64 %i.fx, -4294967296
  %i.fz = or disjoint i64 %i.fy, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.thread.i
  %.neg.i = phi i64 [ %i.fz, %.loopexit.loopexit ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.thread.i ]
  %i.ga = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !488
  %.not.i.i = icmp eq ptr %i.ga, @8
  br i1 %.not.i.i, label %bb.ao, label %bb.an, !prof !8

bb.an:                                            ; preds = %.loopexit
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !486
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.an
  %i.gb = inttoptr i64 %.neg.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !491
  store ptr %i.gb, ptr %i.v, align 8, !noalias !491
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !noalias !491
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECs4NdVKWkRqHB_11uu_realpath.exit.i
  %.sroa.4182.8.copyload183 = load ptr, ptr %i.db, align 8, !noalias !492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5186, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.8..sroa_idx184, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59, align 8
  store i64 0, ptr %.sroa.461.0..sroa_idx62, align 8
  %i.gc = icmp eq i64 %i.ez, 0
  br i1 %i.gc, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit, label %bb.ap

bb.ap:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit
  %.val2.i = load i64, ptr %i.ci, align 8, !alias.scope !493 ; 2 uses
  %.not.i.i117 = icmp ult i64 %.val2.i, %.val.i116
  %i.gd = select i1 %.not.i.i117, i64 0, i64 %.val.i116
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.gd   ; 4 uses
  %i.ge = sub i64 %.val.i116, %.sroa.04.0.i.i     ; 2 uses
  %.not11.i.i = icmp ult i64 %i.ge, %i.ez
  br i1 %.not11.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gf = sub nuw i64 %i.ez, %i.ge
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gg = add i64 %.sroa.04.0.i.i, %i.ez
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit, %bb.aq, %bb.ar
  %.sroa.0.0.i118 = phi i64 [ %.sroa.04.0.i.i, %bb.ar ], [ %.sroa.04.0.i.i, %bb.aq ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit ]
  %.sroa.5.0.i119 = phi i64 [ %i.gg, %bb.ar ], [ %.val.i116, %bb.aq ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.ar ], [ %i.gf, %bb.aq ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCs4NdVKWkRqHB_11uu_realpath.exit ]
  %i.gh = load ptr, ptr %i.ck, align 8, !alias.scope !493, !nonnull !6, !noundef !6 ; 6 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.sroa.0.0.i118
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.sroa.5.0.i119
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.sroa.11.0.i
  br label %bb.at

bb.as:                                            ; preds = %bb.af
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
  unreachable

bb.at:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit
  %.sroa.0191.sroa.7.0 = phi ptr [ %i.gj, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit ], [ %.sroa.0191.sroa.7.1242, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236 ] ; 4 uses
  %.sroa.0191.sroa.0.0 = phi ptr [ %i.gi, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit ], [ %i.gn, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236 ] ; 2 uses
  %.sroa.10196.sroa.5.0 = phi ptr [ %i.gk, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit ], [ %.sroa.10196.sroa.5.1243, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236 ] ; 3 uses
  %.sroa.10196.sroa.0.0 = phi ptr [ %i.gh, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCs4NdVKWkRqHB_11uu_realpath.exit ], [ %.sroa.10196.sroa.0.1244, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236 ] ; 3 uses
  %i.gl = icmp eq ptr %.sroa.0191.sroa.0.0, %.sroa.0191.sroa.7.0
  br i1 %i.gl, label %bb.au, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236

bb.au:                                            ; preds = %bb.at
  %i.gm = icmp eq ptr %.sroa.10196.sroa.0.0, %.sroa.10196.sroa.5.0
  br i1 %i.gm, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread236: ; preds = %bb.at, %bb.au
  %.sink6.i245 = phi ptr [ %.sroa.10196.sroa.0.0, %bb.au ], [ %.sroa.0191.sroa.0.0, %bb.at ] ; 2 uses
  %.sroa.10196.sroa.0.1244 = phi ptr [ %.sroa.0191.sroa.7.0, %bb.au ], [ %.sroa.10196.sroa.0.0, %bb.at ]
  %.sroa.10196.sroa.5.1243 = phi ptr [ %.sroa.0191.sroa.7.0, %bb.au ], [ %.sroa.10196.sroa.5.0, %bb.at ]
  %.sroa.0191.sroa.7.1242 = phi ptr [ %.sroa.10196.sroa.5.0, %bb.au ], [ %.sroa.0191.sroa.7.0, %bb.at ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.sink6.i245, i64 32
  %i.go = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i245) #25 ; 2 uses
  %i.gp = extractvalue { ptr, i64 } %i.go, 0
  %i.gq = extractvalue { ptr, i64 } %i.go, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef %i.gq) #25
  br label %bb.at

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  store ptr %.sroa.4182.8.copyload183, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5186.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5186, i64 136, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %.val.i121 = load i64, ptr %.sroa.468.0..sroa_idx, align 8, !alias.scope !494, !noundef !6
  %.val6.i = load i64, ptr %.sroa.569.0..sroa_idx, align 8, !alias.scope !494, !noundef !6
  %i.gr = call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECs4NdVKWkRqHB_11uu_realpath(i64 %.val.i121, i64 %.val6.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.x) #25, !noalias !494 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !497
  store ptr %i.x, ptr %i.f, align 8, !noalias !498
  %i.gs = load i64, ptr %i.dd, align 8, !alias.scope !499, !noundef !6
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.av, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i, !prof !9

bb.av:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread
  %i.gu = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.468.0..sroa_idx, i1 noundef zeroext true) #28 ; 0 uses
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i: ; preds = %bb.av, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs4NdVKWkRqHB_11uu_realpath.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !498
  store ptr %i.f, ptr %i.e, align 8, !noalias !498
  store ptr %i.af, ptr %i.de, align 8, !noalias !498
  %.val.i.i122 = load ptr, ptr %i.af, align 8, !alias.scope !500, !nonnull !6, !noundef !6 ; 3 uses
  %.val5.i.i = load i64, ptr %i.df, align 8, !alias.scope !500, !noundef !6 ; 3 uses
  %i.gv = lshr i64 %i.gr, 57
  %i.gw = trunc nuw nsw i64 %i.gv to i8           ; 3 uses
  %i.gx = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.gr, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i ], [ %i.hu, %bb.az ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.az ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i ], [ %.sroa.04.122.i.i.i, %bb.az ]
  %i.gz = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECs4NdVKWkRqHB_11uu_realpath.exit.i.i ], [ %i.ht, %bb.az ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val.i.i122, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.ha, align 1, !noalias !501 ; 3 uses
  %i.hb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.gy
  %i.hc = bitcast <16 x i1> %i.hb to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.hc, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aw, %bb.ax
  %.sroa.01.029.i.i.i = phi i16 [ %i.hj, %bb.ax ], [ %i.hc, %bb.aw ] ; 3 uses
  %i.hd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i, i1 true)
  %i.he = zext nneg i16 %i.hd to i64
  %i.hf = add i64 %.sroa.0.017.i.i.i, %i.he
  %i.hg = and i64 %i.hf, %.val5.i.i
  %i.hh = call fastcc noundef zeroext i1 @_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Cs4NdVKWkRqHB_11uu_realpath(ptr noundef nonnull readonly %i.e, i64 noundef %i.hg) #26, !noalias !502
  br i1 %i.hh, label %bb.bc, label %bb.ax, !prof !8

._crit_edge.i.i.i:                                ; preds = %bb.ax, %bb.aw
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.ay, !prof !9

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  %i.hi = add i16 %.sroa.01.029.i.i.i, -1
  %i.hj = and i16 %i.hi, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i123 = icmp eq i16 %i.hj, 0
  br i1 %.not.i.i.i123, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ay:                                            ; preds = %._crit_edge.i.i.i
  %i.hk = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.hl = bitcast <16 x i1> %i.hk to i16          ; 2 uses
  %.not.i.i.i.i124 = icmp eq i16 %i.hl, 0
  br i1 %.not.i.i.i.i124, label %bb.az, label %.thread24.i.i.i, !prof !9

.thread24.i.i.i:                                  ; preds = %bb.ay
  %i.hm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hl, i1 true)
  %i.hn = zext nneg i16 %i.hm to i64
  %i.ho = add i64 %.sroa.0.017.i.i.i, %i.hn
  %i.hp = and i64 %i.ho, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.hp, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.hq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = icmp eq i16 %i.hr, 0
  br i1 %i.hs, label %bb.az, label %bb.ba, !prof !9

bb.az:                                            ; preds = %.thread.i.i.i, %bb.ay
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.ay ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.ay ]
  %i.ht = add i64 %i.gz, 16                       ; 2 uses
  %i.hu = add i64 %i.ht, %.sroa.0.017.i.i.i
  br label %bb.aw

bb.ba:                                            ; preds = %.thread.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i.i122, i64 %.sroa.4.121.i.i.i
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !502, !noundef !6
  %i.hx = icmp sgt i8 %i.hw, -1
  br i1 %i.hx, label %bb.bb, label %bb.bg, !prof !9

bb.bb:                                            ; preds = %bb.ba
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i122, align 16, !noalias !502
  %i.hy = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.hz = bitcast <16 x i1> %i.hy to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.hz, 0
  %i.ia = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hz, i1 true)
  %i.ib = zext nneg i16 %i.ia to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  br label %bb.bg

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !497
  %.val7.i = load i64, ptr %i.dc, align 8, !range !12, !alias.scope !503, !noundef !6 ; 2 uses
  %i.ic = icmp eq i64 %.val7.i, 0
  br i1 %i.ic, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.id = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %.val8.i = load ptr, ptr %i.id, align 8, !alias.scope !495, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %.val7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !504
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ie = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newReECs2vKOLqTMYjT_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 33) #28
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ie, ptr %i.if, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5186)
  %i.ig = icmp eq i64 %i.ef, 0
  br i1 %i.ig, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit126, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eh, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !505
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit126

bb.bg:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.ib, %bb.bb ], [ %.sroa.4.121.i.i.i, %bb.ba ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef nonnull align 8 dereferenceable(168) %i.x, i64 168, i1 false), !noalias !494
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.ih = load ptr, ptr %i.af, align 8, !alias.scope !507, !nonnull !6, !noundef !6 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.3.0.i.ph.i.i ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !508, !noundef !6
  %i.ik = and i8 %i.ij, 1
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.in = load i64, ptr %i.df, align 8, !alias.scope !507, !noundef !6
  %i.io = and i64 %i.in, %i.im
  store i8 %i.gw, ptr %i.ii, align 1, !noalias !508
  %i.ip = getelementptr i8, ptr %i.ih, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  store i8 %i.gw, ptr %i.iq, align 1, !noalias !508
  %i.ir = load <2 x i64>, ptr %i.dd, align 8, !alias.scope !507
  %i.is = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.il, i64 0
  %i.it = sub <2 x i64> %i.ir, %i.is
  store <2 x i64> %i.it, ptr %i.dd, align 8, !alias.scope !507
  %i.iu = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.iv = getelementptr inbounds [168 x i8], ptr %i.ih, i64 %i.iu
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.iw, ptr noundef nonnull readonly align 8 dereferenceable(168) %i.g, i64 168, i1 false), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5186)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ag
  %i.ix = phi ptr [ %i.fa, %bb.ag ], [ %i.gh, %bb.bg ] ; 2 uses
  %i.iy = phi i64 [ %i.fb, %bb.ag ], [ %.val.i116, %bb.bg ] ; 2 uses
  %i.iz = phi ptr [ %i.fc, %bb.ag ], [ %i.gh, %bb.bg ] ; 2 uses
  %i.ja = phi i64 [ %i.fd, %bb.ag ], [ %.val.i116, %bb.bg ] ; 2 uses
  %.sroa.022.2 = phi i32 [ %i.fj, %bb.ag ], [ %.sroa.022.0.ph316, %bb.bg ] ; 2 uses
  %i.jb = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #25 ; 0 uses
  %i.jc = icmp eq i64 %i.ef, 0
  br i1 %i.jc, label %bb.bx, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eh, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !509
  br label %bb.bx

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit126.thread: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit.thread, %bb.bj
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9177.0213, ptr %i.jd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit.thread
  %i.je = icmp eq i64 %i.dq, 0
  br i1 %i.je, label %bb.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit126.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs4NdVKWkRqHB_11uu_realpath.exit126: ; preds = %bb.bf, %bb.be
  %i.jf = icmp eq i64 %.sroa.0169.0.copyload170, 0
end_hunk_0
