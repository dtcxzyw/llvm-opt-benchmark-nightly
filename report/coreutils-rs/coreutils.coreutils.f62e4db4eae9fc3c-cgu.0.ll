Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCs8wA1yfRHUlj_11uu_readlink6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBF_6cloned6ClonedINtNtNtBJ_5slice4iter4IterB2g_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !6002
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ba) #45, !noalias !6002
  %i.kt = load i8, ptr %i.az, align 8, !range !51, !noalias !6002, !noundef !12
  %.not77306.i.i = icmp eq i8 %i.kt, -1
  br i1 %.not77306.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9170.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9170.i.i)
  %i.ku = load i64, ptr %i.gu, align 8, !alias.scope !6039, !noalias !6002, !noundef !12 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %bb.br, %bb.bo
  %.sroa.9177.0213.i.i = phi ptr [ %i.kn, %bb.bo ], [ %i.ks, %bb.br ] ; 4 uses
  switch i8 %.sroa.015.0.i, label %bb.eg [
    i8 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit117.thread.i.i
    i8 0, label %bb.dw
  ]

.lr.ph.i.i:                                       ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !6002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !noalias !6002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !6002
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ay) #45, !noalias !6002
  %i.kw = load i64, ptr %i.gu, align 8, !alias.scope !6040, !noalias !6002, !noundef !12 ; 2 uses
  %i.kx = load i64, ptr %i.bh, align 8, !range !19, !alias.scope !6040, !noalias !6002, !noundef !12 ; 2 uses
  %i.ky = icmp eq i64 %i.kw, %i.kx
  br i1 %i.ky, label %bb.bs, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh) #53, !noalias !6041
  %.pre.i.i.i = load i64, ptr %i.bh, align 8, !range !19, !alias.scope !6040, !noalias !6002
  %.pre5.i.i.i = load i64, ptr %i.gu, align 8, !alias.scope !6040, !noalias !6002
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.bs, %.lr.ph.i.i
  %i.kz = phi i64 [ %.pre5.i.i.i, %bb.bs ], [ %i.kw, %.lr.ph.i.i ]
  %i.la = phi i64 [ %.pre.i.i.i, %bb.bs ], [ %i.kx, %.lr.ph.i.i ] ; 2 uses
  %i.lb = load i64, ptr %i.gt, align 8, !alias.scope !6040, !noalias !6002, !noundef !12
  %i.lc = add i64 %i.lb, -1                       ; 2 uses
  %i.ld = add i64 %i.lc, %i.la                    ; 2 uses
  %.not.i99.i.i = icmp ult i64 %i.ld, %i.la
  %..i.i.i = select i1 %.not.i99.i.i, i64 %i.ld, i64 %i.lc ; 2 uses
  store i64 %..i.i.i, ptr %i.gt, align 8, !alias.scope !6040, !noalias !6002
  %i.le = add i64 %i.kz, 1
  store i64 %i.le, ptr %i.gu, align 8, !alias.scope !6040, !noalias !6002
  %i.lf = load ptr, ptr %i.gv, align 8, !alias.scope !6040, !noalias !6002, !nonnull !12, !noundef !12
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.lf, i64 %..i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !6002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !6002
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ba) #45, !noalias !6002
  %i.lh = load i8, ptr %i.az, align 8, !range !51, !noalias !6002, !noundef !12
  %.not77.i.i = icmp eq i8 %i.lh, -1
  br i1 %.not77.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !6002
  %i.li = icmp slt i32 %.sroa.022.0.ph307.i.i, 20
  br i1 %i.li, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5186.i.i)
  %i.lj = load ptr, ptr %.sroa.358.0..sroa_idx.i.i, align 8, !noalias !6002, !nonnull !12, !noundef !12
  %i.lk = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !6002, !noundef !12
  %i.ll = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lj, i64 noundef %i.lk) #45, !noalias !6002 ; 2 uses
  %i.lm = extractvalue { ptr, i64 } %i.ll, 0      ; 3 uses
  %.not78.i.i = icmp eq ptr %i.lm, null
  br i1 %.not78.i.i, label %bb.cg, label %bb.bv, !prof !18

bb.bu:                                            ; preds = %._crit_edge.i.i
  %i.ln = add nsw i32 %.sroa.022.0.ph307.i.i, 1
  br label %bb.du

bb.bv:                                            ; preds = %bb.bt
  %i.lo = extractvalue { ptr, i64 } %i.ll, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6002
  %i.lp = icmp samesign ugt i64 %i.lo, 255
  br i1 %i.lp, label %bb.bx, label %bb.bw, !prof !18

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6042
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.lm, i64 range(i64 0, -9223372036854775808) %i.lo, i1 false), !noalias !6043
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.lo
  store i8 0, ptr %i.lq, align 1, !noalias !6042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6042
  %i.lr = add nuw nsw i64 %i.lo, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.lr) #45, !noalias !6042
  %i.ls = load i64, ptr %i.ag, align 8, !range !16, !noalias !6042, !noundef !12
  %i.lt = trunc nuw i64 %i.ls to i1
  br i1 %i.lt, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %bb.by

bb.bx:                                            ; preds = %bb.bv
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lm, i64 noundef range(i64 0, -9223372036854775808) %i.lo) #45, !noalias !6044
  %.pre.i101.i.i = load i16, ptr %i.ai, align 8, !range !6045, !noalias !6046
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6042
  br label %.loopexit.i.i

bb.by:                                            ; preds = %bb.bw
  %i.lu = load ptr, ptr %i.hb, align 8, !noalias !6042, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6047
  %i.lv = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.lu, ptr nonnull %i.af, ptr nonnull inttoptr (i64 256 to ptr)) #45, !noalias !6048, !srcloc !52
  %i.lw = extractvalue { ptr, i32, i32 } %i.lv, 0 ; 2 uses
  %.not.i.i.i.i100.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i100.i.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hd, ptr noundef nonnull align 8 dereferenceable(144) %i.af, i64 144, i1 false), !noalias !6046
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = trunc i64 %i.lx to i16
  store i16 %i.ly, ptr %i.hc, align 2, !noalias !6046
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %.sink.i.i.i.i.i.i = phi i16 [ 0, %bb.bz ], [ 1, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6042
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.bx
  %i.lz = phi i16 [ %.pre.i101.i.i, %bb.bx ], [ %.sink.i.i.i.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %i.ma = trunc nuw i16 %i.lz to i1
  br i1 %i.ma, label %.loopexit.loopexit.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i

.loopexit.loopexit.i.i:                           ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.pre338.i.i = load i16, ptr %i.hc, align 2, !noalias !6046
  %i.mb = sext i16 %.pre338.i.i to i64
  %i.mc = mul nsw i64 %i.mb, -4294967296
  %i.md = or disjoint i64 %i.mc, 2
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %.neg.i.i.i = phi i64 [ %i.md, %.loopexit.loopexit.i.i ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ]
  %i.me = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !6046
  %.not.i.i.i.i = icmp eq ptr %i.me, @232
  br i1 %.not.i.i.i.i, label %bb.cc, label %bb.cb, !prof !11

bb.cb:                                            ; preds = %.loopexit.i.i
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #45, !noalias !6044
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit.i.i
  %i.mf = inttoptr i64 %.neg.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6049
  store ptr %i.mf, ptr %i.at, align 8, !noalias !6049
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @887, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #50, !noalias !6049
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.4182.8.copyload183.i.i = load ptr, ptr %i.hd, align 8, !noalias !6050 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5186.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.8..sroa_idx184.i.i, i64 136, i1 false), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !6002
  store i64 0, ptr %i.aw, align 8, !noalias !6002
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59.i.i, align 8, !noalias !6002
  store i64 0, ptr %.sroa.461.0..sroa_idx62.i.i, align 8, !noalias !6002
  %i.mg = load i64, ptr %i.gu, align 8, !alias.scope !6051, !noalias !6002, !noundef !12 ; 4 uses
  %.val.i102.i.i = load i64, ptr %i.bh, align 8, !alias.scope !6051, !noalias !6002 ; 4 uses
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.gt, align 8, !alias.scope !6051, !noalias !6002 ; 2 uses
  %.not.i.i103.i.i = icmp ult i64 %.val2.i.i.i, %.val.i102.i.i
  %i.mi = select i1 %.not.i.i103.i.i, i64 0, i64 %.val.i102.i.i
  %.sroa.04.0.i.i.i.i = sub nuw i64 %.val2.i.i.i, %i.mi ; 4 uses
  %i.mj = sub i64 %.val.i102.i.i, %.sroa.04.0.i.i.i.i ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.mj, %i.mg
  br i1 %.not11.i.i.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.mk = sub nuw i64 %i.mg, %i.mj
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ml = add i64 %.sroa.04.0.i.i.i.i, %i.mg
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.cf, %bb.ce, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.0.0.i104.i.i = phi i64 [ %.sroa.04.0.i.i.i.i, %bb.cf ], [ %.sroa.04.0.i.i.i.i, %bb.ce ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.5.0.i105.i.i = phi i64 [ %i.ml, %bb.cf ], [ %.val.i102.i.i, %bb.ce ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.11.0.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.mk, %bb.ce ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.mm = load ptr, ptr %i.gv, align 8, !alias.scope !6051, !noalias !6002, !nonnull !12, !noundef !12 ; 4 uses
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.0.0.i104.i.i
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.5.0.i105.i.i
  %i.mp = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %.sroa.11.0.i.i.i
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bt
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #50, !noalias !6002
  unreachable

bb.ch:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.0191.sroa.7.0.i.i = phi ptr [ %i.mo, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.0191.sroa.7.1242.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i ] ; 4 uses
  %.sroa.0191.sroa.0.0.i.i = phi ptr [ %i.mn, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.ms, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i ] ; 2 uses
  %.sroa.10196.sroa.5.0.i.i = phi ptr [ %i.mp, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.10196.sroa.5.1243.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i ] ; 3 uses
  %.sroa.10196.sroa.0.0.i.i = phi ptr [ %i.mm, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.10196.sroa.0.1244.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i ] ; 3 uses
  %i.mq = icmp eq ptr %.sroa.0191.sroa.0.0.i.i, %.sroa.0191.sroa.7.0.i.i
  br i1 %i.mq, label %bb.ci, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.mr = icmp eq ptr %.sroa.10196.sroa.0.0.i.i, %.sroa.10196.sroa.5.0.i.i
  br i1 %i.mr, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread236.i.i: ; preds = %bb.ci, %bb.ch
  %.sink6.i245.i.i = phi ptr [ %.sroa.10196.sroa.0.0.i.i, %bb.ci ], [ %.sroa.0191.sroa.0.0.i.i, %bb.ch ] ; 2 uses
  %.sroa.10196.sroa.0.1244.i.i = phi ptr [ %.sroa.0191.sroa.7.0.i.i, %bb.ci ], [ %.sroa.10196.sroa.0.0.i.i, %bb.ch ]
  %.sroa.10196.sroa.5.1243.i.i = phi ptr [ %.sroa.0191.sroa.7.0.i.i, %bb.ci ], [ %.sroa.10196.sroa.5.0.i.i, %bb.ch ]
  %.sroa.0191.sroa.7.1242.i.i = phi ptr [ %.sroa.10196.sroa.5.0.i.i, %bb.ci ], [ %.sroa.0191.sroa.7.0.i.i, %bb.ch ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.sink6.i245.i.i, i64 32
  %i.mt = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i245.i.i) #45, !noalias !6002 ; 2 uses
  %i.mu = extractvalue { ptr, i64 } %i.mt, 0
  %i.mv = extractvalue { ptr, i64 } %i.mt, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mu, i64 noundef %i.mv) #45, !noalias !6002
  br label %bb.ch

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !6002
  store ptr %.sroa.4182.8.copyload183.i.i, ptr %i.av, align 8, !noalias !6002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5186.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5186.i.i, i64 136, i1 false), !noalias !6002
  call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  call void @llvm.experimental.noalias.scope.decl(metadata !6053)
  call void @llvm.experimental.noalias.scope.decl(metadata !6054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6055
  %i.mw = load <2 x i64>, ptr %.sroa.468.0..sroa_idx.i.i, align 8, !alias.scope !6052, !noalias !6002 ; 3 uses
  %i.mx = shufflevector <2 x i64> %i.mw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.my = xor <2 x i64> %i.mx, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.my, ptr %i.ad, align 16, !alias.scope !6056, !noalias !6055
  %i.mz = shufflevector <2 x i64> %i.mw, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.na = xor <2 x i64> %i.mz, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.na, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !6056, !noalias !6055
  store <2 x i64> %i.mw, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !6056, !noalias !6055
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6056, !noalias !6055
  call void @llvm.experimental.noalias.scope.decl(metadata !6057)
  %i.nb = ptrtoint ptr %.sroa.4182.8.copyload183.i.i to i64
  %.val1.i.i.i.i109.i.i = load i64, ptr %.sroa.5186.0..sroa_idx.i.i, align 8, !alias.scope !6058, !noalias !6059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6060
  store i64 %i.nb, ptr %i.ac, align 8, !noalias !6060
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #51, !noalias !6061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6062
  store i64 %.val1.i.i.i.i109.i.i, ptr %i.ab, align 8, !noalias !6062
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #51, !noalias !6061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6062
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !6058, !noalias !6059, !nonnull !12, !noundef !12 ; 12 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %i.hg, align 8, !alias.scope !6058, !noalias !6059, !noundef !12 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6063)
  switch i64 %.val3.i.i.i.i.i.i, label %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i:     ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i
  %i.nc = add i64 %.val3.i.i.i.i.i.i, -3          ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i: ; preds = %bb.cz
  %i.nd = add i64 %.val3.i.i.i.i.i.i, -1          ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %i.pb
  %i.nf = load i8, ptr %i.ne, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.ng = icmp eq i8 %i.nf, 47
  br i1 %i.ng, label %bb.cj, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i
  %i.nh = load i8, ptr %.val2.i.i.i.i.i.i, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.ni = icmp eq i8 %i.nh, 47
  br i1 %i.ni, label %.thread.i.i.i.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i
  %i.nj = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %i.nd, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ] ; 2 uses
  %i.nk = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %i.pb, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %i.nl = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %i.nm = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %i.nj
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 1, !alias.scope !6063, !noalias !6064
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.nc, %.sroa.0.1.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nn = sub nuw i64 %i.pb, %.sroa.0.1.i.i.i.i.i.i.i.i ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i
  %i.np = add i64 %i.nn, %.sroa.012.2.i.i.i.i.i.i.i.i ; 2 uses
  %i.nq = call noundef i64 @llvm.fshl.i64(i64 %i.np, i64 %i.np, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.no, i64 noundef %i.nn) #51, !noalias !6061
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ck, %bb.cj, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i
  %i.nr = phi i64 [ %i.pb, %bb.ck ], [ %i.pb, %bb.cj ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ]
  %i.ns = phi i64 [ %i.nd, %bb.ck ], [ %i.nd, %bb.cj ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i.i.i.i.i = phi i64 [ %i.nq, %bb.ck ], [ %.sroa.012.2.i.i.i.i.i.i.i.i, %bb.cj ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ]
  %i.nt = sub nuw i64 %.val3.i.i.i.i.i.i, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %i.ns ; 2 uses
  %i.nv = icmp eq i64 %i.nt, 1
  %i.nw = load i8, ptr %i.nu, align 1, !alias.scope !6063, !noalias !6064, !noundef !12 ; 2 uses
  %i.nx = icmp eq i8 %i.nw, 46                    ; 2 uses
  br i1 %i.nv, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.thread.i.i.i.i.i.i.i
  br i1 %i.nx, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.oa = icmp eq i8 %i.nz, 47
  br i1 %i.oa, label %bb.cp, label %bb.co

bb.cn:                                            ; preds = %.thread.i.i.i.i.i.i.i
  br i1 %i.nx, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.sroa.024.0.i.peel.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cn ], [ 0, %bb.co ], [ 1, %bb.cm ]
  %i.ob = add i64 %.sroa.024.0.i.peel.i.i.i.i.i.i.i, %i.ns
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i: ; preds = %bb.cp, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i
  %i.oc = phi i64 [ %i.ns, %bb.cp ], [ %i.nj, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ]
  %i.od = phi i64 [ %i.nr, %bb.cp ], [ %i.nk, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.oe = phi i8 [ %i.nw, %bb.cp ], [ %.pre.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ]
  %.sroa.012.2.i.peel.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i.i.i.i.i.i, %bb.cp ], [ %i.nl, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i.i.i.i.i.i = phi i64 [ %i.ob, %bb.cp ], [ %i.nm, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %i.of = add nuw i64 %i.od, 2                    ; 8 uses
  %i.og = icmp eq i8 %i.oe, 47
  br i1 %i.og, label %bb.cq, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i
  %i.oh = load i8, ptr %.val2.i.i.i.i.i.i, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.oi = icmp eq i8 %i.oh, 47
  br i1 %i.oi, label %.thread48.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i114.i.i = icmp ult i64 %i.od, %.sroa.0.1.i.peel.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i114.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oj = sub nuw i64 %i.oc, %.sroa.0.1.i.peel.i.i.i.i.i.i.i ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %.sroa.0.1.i.peel.i.i.i.i.i.i.i
  %i.ol = add i64 %i.oj, %.sroa.012.2.i.peel.i.i.i.i.i.i.i ; 2 uses
  %i.om = call noundef i64 @llvm.fshl.i64(i64 %i.ol, i64 %i.ol, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ok, i64 noundef %i.oj) #51, !noalias !6061
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.012.3.peel.i.i.i.i.i.i.i.i = phi i64 [ %i.om, %bb.cr ], [ %.sroa.012.2.i.peel.i.i.i.i.i.i.i, %bb.cq ] ; 6 uses
  %i.on = sub nuw i64 %.val3.i.i.i.i.i.i, %i.of
  %i.oo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %i.of ; 3 uses
  %i.op = icmp eq i64 %i.on, 1
  br i1 %i.op, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not27.peel.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i, %i.of
  br i1 %.not27.peel.i.i.i.i.i.i.i.i, label %.thread48.i.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.oq = load i8, ptr %i.oo, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.or = icmp eq i8 %i.oq, 46
  br i1 %i.or, label %bb.cv, label %.thread48.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.ou = icmp eq i8 %i.ot, 47
  br i1 %i.ou, label %bb.cx, label %.thread48.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cs
  %i.ov = load i8, ptr %i.oo, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.ow = icmp eq i8 %i.ov, 46
  br i1 %i.ow, label %bb.cx, label %.thread48.i.i.i.i.i.i.i.i

.thread48.i.i.i.i.i.i.i.i:                        ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i
  %.sroa.012.3.peel45.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %bb.cw ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %bb.cv ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %bb.cu ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %bb.ct ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ]
  %i.ox = phi i64 [ %i.of, %bb.cw ], [ %i.of, %bb.cv ], [ %i.of, %bb.cu ], [ %.val3.i.i.i.i.i.i, %bb.ct ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ]
  br label %bb.cx

bb.cx:                                            ; preds = %.thread48.i.i.i.i.i.i.i.i, %bb.cw, %bb.cv
  %.sroa.012.3.peel44.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %bb.cw ], [ %.sroa.012.3.peel45.i.i.i.i.i.i.i.i, %.thread48.i.i.i.i.i.i.i.i ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %bb.cv ]
  %i.oy = phi i64 [ %i.of, %bb.cw ], [ %i.ox, %.thread48.i.i.i.i.i.i.i.i ], [ %i.of, %bb.cv ]
  %.sroa.024.0.peel.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cw ], [ 0, %.thread48.i.i.i.i.i.i.i.i ], [ 1, %bb.cv ]
  %i.oz = add i64 %.sroa.024.0.peel.i.i.i.i.i.i.i.i, %i.oy
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.cx, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i
  %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.val3.i.i.i.i.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i ], [ %.sroa.012.3.peel44.i.i.i.i.i.i.i.i, %bb.cx ], [ %.sroa.012.2.i.peel.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.val3.i.i.i.i.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.i ], [ %i.oz, %bb.cx ], [ %.sroa.0.1.i.peel.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.pa = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.pa, label %bb.cy, label %_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cz, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i
  %.sroa.0.032.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i.i.i.i, %bb.cz ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.2.i.i.i.i.i.i.i.i, %bb.cz ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i.i.i.i.i.i = phi i64 [ %i.pb, %bb.cz ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i ] ; 5 uses
  %i.pb = add nuw i64 %.sroa.019.030.i.i.i.i.i.i.i.i, 1 ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %.sroa.019.030.i.i.i.i.i.i.i.i
  %i.pd = load i8, ptr %i.pc, align 1, !alias.scope !6063, !noalias !6064, !noundef !12
  %i.pe = icmp eq i8 %i.pd, 47
  br i1 %i.pe, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.pf = sub nuw i64 %.val3.i.i.i.i.i.i, %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i
  %i.ph = add i64 %i.pf, %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i ; 2 uses
  %i.pi = call noundef i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pg, i64 noundef %i.pf) #51, !noalias !6061
  br label %_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
end_hunk_0
begin_hunk_1_@_RINvCsl8pJiQOn4hA_9coreutils5usageINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEEB2_:.split
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.eo = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @215, ptr noundef nonnull %i.i) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.eo) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCslbrwWrVtb7E_5uu_tr6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [264 x i8], align 8               ; 7 uses
  %i.r = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.0378.i = alloca [24 x i8], align 8       ; 4 uses
  %.sroa.0375.i = alloca [24 x i8], align 8       ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [72 x i8], align 8                ; 12 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [256 x i8], align 1              ; 5 uses
  %i.ab = alloca [514 x i8], align 1              ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [258 x i8], align 1              ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [256 x i8], align 1              ; 5 uses
  %i.aj = alloca [514 x i8], align 1              ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [48 x i8], align 8               ; 10 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 12 uses
  %i.ap = alloca [16 x i8], align 8               ; 12 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 10 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 10 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 10 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 8 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 10 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 10 uses
  %i.bx = alloca [24 x i8], align 8               ; 16 uses
  %i.by = alloca [712 x i8], align 8              ; 4 uses
  %i.bz = alloca [56 x i8], align 8               ; 8 uses
  %i.ca = alloca [56 x i8], align 8               ; 14 uses
  %i.cb = alloca [4 x i8], align 4                ; 3 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [8 x i8], align 8                ; 6 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 4 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 9 uses
  %i.co = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.co, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cp = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cq = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.cq, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !17491
  store i32 %i.cq, ptr %i.cb, align 4, !noalias !17491
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !17492
  call void @_RNvCslbrwWrVtb7E_5uu_tr6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.by) #45, !noalias !17492
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bz, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17492
  %i.cr = load i64, ptr %i.bz, align 8, !range !13, !noalias !17492, !noundef !12 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !17492 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !17492 ; 2 uses
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17492
  br label %.split

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.691.0..sroa_idx.i, i64 32, i1 false), !noalias !17492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17492
  store i64 %i.cr, ptr %i.ca, align 8, !noalias !17492
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17492
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cw, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !17492
  %i.cx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @697, i64 noundef 6) #45, !noalias !17492 ; 4 uses
  %i.cy = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 10) #45, !noalias !17492
  %i.cz = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @698, i64 noundef 15) #45, !noalias !17492 ; 5 uses
  %i.da = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @699, i64 noundef 13) #45, !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17492
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 4) #45, !noalias !17492
  call void @llvm.experimental.noalias.scope.decl(metadata !17493)
  call void @llvm.experimental.noalias.scope.decl(metadata !17494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17492
  store ptr @700, ptr %i.p, align 8, !noalias !17495
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 4, ptr %i.db, align 8, !noalias !17495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17495
  %i.dc = load i64, ptr %i.x, align 8, !range !16, !alias.scope !17494, !noalias !17492, !noundef !12
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.dd, label %bb.g, label %.split.us.preheader.i.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.de, i64 40, i1 false), !noalias !17496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17495
  store ptr %i.p, ptr %i.n, align 8, !noalias !17495
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !17495
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.df, align 8, !noalias !17495
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !17495
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !17497
  unreachable

.split.us.preheader.i.i.i:                        ; preds = %bb.f
  %.sroa.0352.0.copyload.i = load ptr, ptr %i.de, align 8, !alias.scope !17498, !noalias !17492
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4353.0.copyload.i = load ptr, ptr %.sroa.4353.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.5354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5354.0.copyload.i = load ptr, ptr %.sroa.5354.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.6355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.6355.0.copyload.i = load ptr, ptr %.sroa.6355.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.7356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.7356.0.copyload.i = load ptr, ptr %.sroa.7356.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.8357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.8357.0.copyload.i = load ptr, ptr %.sroa.8357.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.9358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.9358.0.copyload.i = load ptr, ptr %.sroa.9358.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.10359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.10359.0.copyload.i = load i64, ptr %.sroa.10359.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17492
  call void @llvm.experimental.noalias.scope.decl(metadata !17499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17500
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, %.split.us.preheader.i.i.i
  %.sroa.23.sroa.31.2.i = phi i64 [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.10359.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ]
  %.sroa.23.sroa.28.2.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.9358.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 2 uses
  %.sroa.23.sroa.23.3.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.8357.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 5 uses
  %.sroa.23.sroa.18.3.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.7356.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.23.sroa.11.4.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.6355.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.23.sroa.8.2.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.5354.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.23.sroa.0.3.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.4353.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 5 uses
  %.sroa.17.2.i = phi ptr [ null, %.split.us.preheader.i.i.i ], [ %.sroa.5.2.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.5.2.i = phi ptr [ %.sroa.0352.0.copyload.i, %.split.us.preheader.i.i.i ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.not.i.us.i.i.i = icmp eq ptr %.sroa.17.2.i, null
  br i1 %.not.i.us.i.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.split.us.i.i.i
  %.not.i.i.i.i.i.us.i.i.i191 = icmp eq ptr %.sroa.23.sroa.11.4.i, null
  %1 = icmp eq ptr %.sroa.23.sroa.11.4.i, %.sroa.23.sroa.18.3.i
  %or.cond875.i192 = select i1 %.not.i.i.i.i.i.us.i.i.i191, i1 true, i1 %1
  br i1 %or.cond875.i192, label %select.unfold.i.i.i.i.us.i.i.i.preheader, label %.loopexit437.i

select.unfold.i.i.i.i.us.i.i.i.preheader:         ; preds = %.preheader.i.preheader
  %.not.i5.i.i.i.i.us.i.i.i776 = icmp eq ptr %.sroa.23.sroa.0.3.i, null
  %2 = icmp eq ptr %.sroa.23.sroa.0.3.i, %.sroa.23.sroa.8.2.i
  %or.cond.i.i.i.i.i.us.i.i.i777 = select i1 %.not.i5.i.i.i.i.us.i.i.i776, i1 true, i1 %2
  br i1 %or.cond.i.i.i.i.i.us.i.i.i777, label %select.unfold.i.i.i.i.us.i.i.i._crit_edge, label %.preheader.i

select.unfold.i.i.i.i.us.i.i.i.a:                 ; preds = %.preheader.i
  %i.dg = icmp eq ptr %3, %.sroa.23.sroa.8.2.i
  br i1 %i.dg, label %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %select.unfold.i.i.i.i.us.i.i.i.preheader, %select.unfold.i.i.i.i.us.i.i.i.a
  %.sroa.23.sroa.0.4.i194778 = phi ptr [ %3, %select.unfold.i.i.i.i.us.i.i.i.a ], [ %.sroa.23.sroa.0.3.i, %select.unfold.i.i.i.i.us.i.i.i.preheader ] ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.23.sroa.0.4.i194778, i64 24 ; 4 uses
  %4 = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 16
  %.val4.i.i.i.i.us.i.i.i = load i64, ptr %4, align 8, !noalias !17501, !noundef !12 ; 3 uses
  %5 = icmp eq i64 %.val4.i.i.i.i.us.i.i.i, 0
  br i1 %5, label %select.unfold.i.i.i.i.us.i.i.i.a, label %.loopexit437.i.loopexit

select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i.i.a
  %i.dh = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 8
  %.val.i.i.i.i.us.i.i.i.le1084 = load ptr, ptr %i.dh, align 8, !noalias !17501, !nonnull !12, !noundef !12
  %.idx.le1081 = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i.i, 5
  %6 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.i.le1084, i64 %.idx.le1081
  br label %select.unfold.i.i.i.i.us.i.i.i._crit_edge

select.unfold.i.i.i.i.us.i.i.i._crit_edge:        ; preds = %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.us.i.i.i.preheader
  %.sroa.23.sroa.0.4.i194.lcssa = phi ptr [ %.sroa.23.sroa.0.3.i, %select.unfold.i.i.i.i.us.i.i.i.preheader ], [ %3, %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit ]
  %.sroa.23.sroa.18.4.i193.lcssa = phi ptr [ %.sroa.23.sroa.18.3.i, %select.unfold.i.i.i.i.us.i.i.i.preheader ], [ %6, %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.us.i.i.i = icmp eq ptr %.sroa.23.sroa.23.3.i, null
  %i.di = icmp eq ptr %.sroa.23.sroa.23.3.i, %.sroa.23.sroa.28.2.i
  %or.cond420.i = select i1 %.not.i7.i.i.i.i.us.i.i.i, i1 true, i1 %i.di
  br i1 %or.cond420.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, label %.loopexit438.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i.i._crit_edge, %.split.us.i.i.i
  %.not1.us.i.i.i = icmp eq ptr %.sroa.5.2.i, null
  br i1 %.not1.us.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %.split.us.i.i.i

.loopexit437.i.loopexit:                          ; preds = %.preheader.i
  %7 = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 8
  %.val.i.i.i.i.us.i.i.i.le = load ptr, ptr %7, align 8, !noalias !17501, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i.i, 5
  %8 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.i.le, i64 %.idx.le
  br label %.loopexit437.i

.loopexit437.i:                                   ; preds = %.preheader.i.preheader, %.loopexit437.i.loopexit
  %.sroa.23.sroa.18.4.i.lcssa = phi ptr [ %8, %.loopexit437.i.loopexit ], [ %.sroa.23.sroa.18.3.i, %.preheader.i.preheader ]
  %.sroa.23.sroa.11.5.i.lcssa = phi ptr [ %.val.i.i.i.i.us.i.i.i.le, %.loopexit437.i.loopexit ], [ %.sroa.23.sroa.11.4.i, %.preheader.i.preheader ] ; 2 uses
  %.sroa.23.sroa.0.4.i.lcssa = phi ptr [ %3, %.loopexit437.i.loopexit ], [ %.sroa.23.sroa.0.3.i, %.preheader.i.preheader ]
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.23.sroa.11.5.i.lcssa, i64 32
  br label %bb.h

.loopexit438.i:                                   ; preds = %select.unfold.i.i.i.i.us.i.i.i._crit_edge
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.23.sroa.23.3.i, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.loopexit438.i, %.loopexit437.i
  %.sroa.23.sroa.18.4.i173 = phi ptr [ %.sroa.23.sroa.18.4.i.lcssa, %.loopexit437.i ], [ %.sroa.23.sroa.18.4.i193.lcssa, %.loopexit438.i ]
  %.sroa.23.sroa.0.4.i170 = phi ptr [ %.sroa.23.sroa.0.4.i.lcssa, %.loopexit437.i ], [ %.sroa.23.sroa.0.4.i194.lcssa, %.loopexit438.i ]
  %.sroa.23.sroa.23.0.i = phi ptr [ %.sroa.23.sroa.23.3.i, %.loopexit437.i ], [ %10, %.loopexit438.i ]
  %.sroa.23.sroa.11.1.i = phi ptr [ %9, %.loopexit437.i ], [ null, %.loopexit438.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.23.sroa.11.5.i.lcssa, %.loopexit437.i ], [ %.sroa.23.sroa.23.3.i, %.loopexit438.i ]
  %i.dj = call noundef nonnull align 8 ptr %.sroa.17.2.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i) #45, !noalias !17502, !inline_history !17311 ; 2 uses
  %i.dk = add i64 %.sroa.23.sroa.31.2.i, -1       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !17503, !nonnull !12, !noundef !12
  %i.dm = getelementptr i8, ptr %i.dj, i64 16
  %.val2.i.i.i = load i64, ptr %i.dm, align 8, !noalias !17503, !noundef !12 ; 7 uses
  %i.dn = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dn, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17504
  %i.do = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !17504 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.j, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i) #52, !noalias !17505
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull readonly align 1 %.val.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i, i1 false), !noalias !17506
  %.not.i.i = icmp eq i64 %.val2.i.i.i, -1
  br i1 %.not.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.h
  %.sroa.7.0169.i.i = phi ptr [ %i.do, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %i.dq = call i64 @llvm.uadd.sat.i64(i64 %i.dk, i64 1) ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.dq, i64 4) ; 3 uses
  %i.dr = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.dq, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !27

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17507
  %i.dt = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dr, i64 noundef range(i64 1, 9) 8) #45, !noalias !17507 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dr) #52, !noalias !17500
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.dt, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %..i.i.i, %bb.l ] ; 2 uses
  %i.dv = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.dv)
  store i64 %.val2.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !17500
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.0169.i.i, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !17500
  %.sroa.580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.580.0..sroa_idx.i.i, align 8, !noalias !17500
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8, !noalias !17500
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !17500
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !17500
  call void @llvm.experimental.noalias.scope.decl(metadata !17508)
  call void @llvm.experimental.noalias.scope.decl(metadata !17509)
  br label %.split.us.i.i51.i.i

.split.us.i.i51.i.i:                              ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.20.sroa.49.7.i.i = phi i64 [ %.sroa.10359.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %i.dk, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.45.7.i.i = phi ptr [ %.sroa.9358.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.28.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.20.sroa.37.11.i.i = phi ptr [ %.sroa.8357.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.23.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.20.sroa.29.11.i.i = phi ptr [ %.sroa.7356.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.18.4.i173, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.20.sroa.17.14.i.i = phi ptr [ %.sroa.6355.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.11.1.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.20.sroa.13.7.i.i = phi ptr [ %.sroa.5354.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.8.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.20.sroa.0.11.i.i = phi ptr [ %.sroa.4353.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.0.4.i170, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.11.8.i.i = phi ptr [ %.sroa.583.7.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.17.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.583.7.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.5.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.not.i.i.i.i.i.us.i.i59.i520.i = icmp eq ptr %.sroa.20.sroa.17.14.i.i, null
  %i.dw = icmp eq ptr %.sroa.20.sroa.17.14.i.i, %.sroa.20.sroa.29.11.i.i
  %or.cond384.i521.i = select i1 %.not.i.i.i.i.i.us.i.i59.i520.i, i1 true, i1 %i.dw
  br i1 %or.cond384.i521.i, label %select.unfold.i.i.i.i.us.i.i62.i.i.preheader, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i

select.unfold.i.i.i.i.us.i.i62.i.i.preheader:     ; preds = %.split.us.i.i51.i.i
  %.not.i5.i.i.i.i.us.i.i63.i.i212 = icmp eq ptr %.sroa.20.sroa.0.11.i.i, null
  %i.dx = icmp eq ptr %.sroa.20.sroa.0.11.i.i, %.sroa.20.sroa.13.7.i.i
  %or.cond.i.i.i.i.i.us.i.i64.i.i213 = select i1 %.not.i5.i.i.i.i.us.i.i63.i.i212, i1 true, i1 %i.dx
  br i1 %or.cond.i.i.i.i.i.us.i.i64.i.i213, label %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge, label %.preheader217.i.i

select.unfold.i.i.i.i.us.i.i62.i.i:               ; preds = %.preheader217.i.i
  %i.dy = icmp eq ptr %i.dz, %.sroa.20.sroa.13.7.i.i
  br i1 %i.dy, label %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit, label %.preheader217.i.i

.preheader217.i.i:                                ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i.preheader, %select.unfold.i.i.i.i.us.i.i62.i.i
  %.sroa.20.sroa.0.12.i523.i214 = phi ptr [ %i.dz, %select.unfold.i.i.i.i.us.i.i62.i.i ], [ %.sroa.20.sroa.0.11.i.i, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 24 ; 4 uses
  %i.ea = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 16
  %.val4.i.i.i.i.us.i.i66.i.i = load i64, ptr %i.ea, align 8, !noalias !17510, !noundef !12 ; 2 uses
  %i.eb = icmp eq i64 %.val4.i.i.i.i.us.i.i66.i.i, 0
  br i1 %i.eb, label %select.unfold.i.i.i.i.us.i.i62.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit

select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i
  %i.ec = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 8
  %.val.i.i.i.i.us.i.i65.i.i.le608 = load ptr, ptr %i.ec, align 8, !noalias !17510, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge

select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge:    ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader
  %.sroa.20.sroa.0.12.i523.i.lcssa = phi ptr [ %.sroa.20.sroa.0.11.i.i, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader ], [ %i.dz, %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit ]
  %.sroa.20.sroa.29.12.i522.i.lcssa = phi ptr [ %.sroa.20.sroa.29.11.i.i, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader ], [ %.val.i.i.i.i.us.i.i65.i.i.le608, %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.us.i.i67.i.i = icmp eq ptr %.sroa.20.sroa.37.11.i.i, null
  %i.ed = icmp eq ptr %.sroa.20.sroa.37.11.i.i, %.sroa.20.sroa.45.7.i.i
  %or.cond.i.i = select i1 %.not.i7.i.i.i.i.us.i.i67.i.i, i1 true, i1 %i.ed
  br i1 %or.cond.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge
  %.not1.us.i.i71.i.i = icmp eq ptr %.sroa.583.7.i.i, null
  br i1 %.not1.us.i.i71.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %.split.us.i.i51.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit: ; preds = %.preheader217.i.i
  %i.ee = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 8
  %.val.i.i.i.i.us.i.i65.i.i.le = load ptr, ptr %i.ee, align 8, !noalias !17510, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i66.i.i, 5
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i65.i.i.le, i64 %.idx.i.le
  br label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i: ; preds = %.split.us.i.i51.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit
  %.sroa.20.sroa.29.12.i.lcssa.i = phi ptr [ %i.ef, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.29.11.i.i, %.split.us.i.i51.i.i ]
  %.sroa.20.sroa.17.15.i.lcssa.i = phi ptr [ %.val.i.i.i.i.us.i.i65.i.i.le, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.17.14.i.i, %.split.us.i.i51.i.i ] ; 2 uses
  %.sroa.20.sroa.0.12.i.lcssa.i = phi ptr [ %i.dz, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.0.11.i.i, %.split.us.i.i51.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.17.15.i.lcssa.i, i64 32
  br label %.lr.ph.i.i.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.37.11.i.i, i64 32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i
  %.sroa.20.sroa.29.12.i475.i = phi ptr [ %.sroa.20.sroa.29.12.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %.sroa.20.sroa.29.12.i522.i.lcssa, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.20.sroa.0.12.i471.i = phi ptr [ %.sroa.20.sroa.0.12.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %.sroa.20.sroa.0.12.i523.i.lcssa, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.20.sroa.37.8.i.i = phi ptr [ %.sroa.20.sroa.37.11.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %i.eh, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.20.sroa.17.11.i.i = phi ptr [ %i.eg, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ null, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.0.0.i.i.i.i.i.i20.i.i = phi ptr [ %.sroa.20.sroa.17.15.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %.sroa.20.sroa.37.11.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %i.ei = call noundef nonnull align 8 ptr %.sroa.11.8.i.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i20.i.i) #45, !noalias !17511, !inline_history !17346
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.lr.ph.i.i.i.i
  %i.ej = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ev, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.ek = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.ex, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.20.sroa.49.0.i.in.i = phi i64 [ %.sroa.20.sroa.49.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.49.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.45.0.i.i = phi ptr [ %.sroa.20.sroa.45.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.45.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.37.0.i.i = phi ptr [ %.sroa.20.sroa.37.8.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.37.1.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.29.0.i.i = phi ptr [ %.sroa.20.sroa.29.12.i475.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.29.5.i450.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.17.0.i.i = phi ptr [ %.sroa.20.sroa.17.11.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.17.2.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.13.0.i.i = phi ptr [ %.sroa.20.sroa.13.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.13.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.0.0.i.i = phi ptr [ %.sroa.20.sroa.0.12.i471.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.0.5.i447.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.11.0.i.i = phi ptr [ %.sroa.11.8.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.11.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.583.0.i.i = phi ptr [ %.sroa.583.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.583.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.el = phi ptr [ %i.ei, %.lr.ph.i.i.i.i ], [ %i.fk, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.20.sroa.49.0.i.i = add i64 %.sroa.20.sroa.49.0.i.in.i, -1 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %.val.i.i.i2.i.i = load ptr, ptr %i.em, align 8, !noalias !17512, !nonnull !12, !noundef !12
  %i.en = getelementptr i8, ptr %i.el, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.en, align 8, !noalias !17512, !noundef !12 ; 7 uses
  %i.eo = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.eo, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17513
  %i.ep = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !17513 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.p, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i) #52, !noalias !17514
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull readonly align 1 %.val.i.i.i2.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i1 false), !noalias !17515
  %.not.i.i3.i.i = icmp eq i64 %.val2.i.i.i.i.i, -1
  br i1 %.not.i.i3.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.n
  %.sroa.7.018.i.i.i.i = phi ptr [ %i.ep, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.n ]
  %i.er = icmp samesign ult i64 %i.ek, 384307168202282326
  call void @llvm.assume(i1 %i.er)
  %i.es = load i64, ptr %i.m, align 8, !range !19, !alias.scope !17516, !noalias !17500, !noundef !12
  %i.et = icmp eq i64 %i.ek, %i.es
  br i1 %i.et, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.eu = call i64 @llvm.uadd.sat.i64(i64 %.sroa.20.sroa.49.0.i.i, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ek, i64 noundef %i.eu, i64 noundef 8, i64 noundef 24) #45, !noalias !17517
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !17516, !noalias !17500
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.ev = phi ptr [ %.pre.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.ej, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.ek ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.ew, align 8, !noalias !17518
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.sroa.7.018.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !17518
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !17518
  %i.ex = add nuw nsw i64 %i.ek, 1                ; 2 uses
  store i64 %i.ex, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !17516, !noalias !17500
  br label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.20.sroa.49.3.i.i = phi i64 [ %.sroa.10359.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.49.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.20.sroa.45.3.i.i = phi ptr [ %.sroa.9358.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.45.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.20.sroa.37.4.i.i = phi ptr [ %.sroa.8357.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.37.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 5 uses
  %.sroa.20.sroa.29.4.i.i = phi ptr [ %.sroa.7356.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.29.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.sroa.17.5.i.i = phi ptr [ %.sroa.6355.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.17.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.sroa.13.3.i.i = phi ptr [ %.sroa.5354.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.13.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.sroa.0.4.i.i = phi ptr [ %.sroa.4353.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.0.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 5 uses
  %.sroa.11.3.i.i = phi ptr [ %.sroa.583.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.11.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.583.3.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.583.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.us.i.i.i541.i = icmp eq ptr %.sroa.20.sroa.17.5.i.i, null
  %i.ey = icmp eq ptr %.sroa.20.sroa.17.5.i.i, %.sroa.20.sroa.29.4.i.i
  %or.cond387.i542.i = select i1 %.not.i.i.i.i.i.us.i.i.i541.i, i1 true, i1 %i.ey
  br i1 %or.cond387.i542.i, label %select.unfold.i.i.i.i.us.i.i.i.i.preheader, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i

select.unfold.i.i.i.i.us.i.i.i.i.preheader:       ; preds = %.preheader.i.preheader.i
  %.not.i5.i.i.i.i.us.i.i.i.i217 = icmp eq ptr %.sroa.20.sroa.0.4.i.i, null
  %i.ez = icmp eq ptr %.sroa.20.sroa.0.4.i.i, %.sroa.20.sroa.13.3.i.i
  %or.cond.i.i.i.i.i.us.i.i.i.i218 = select i1 %.not.i5.i.i.i.i.us.i.i.i.i217, i1 true, i1 %i.ez
  br i1 %or.cond.i.i.i.i.i.us.i.i.i.i218, label %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge, label %.preheader.i.i

select.unfold.i.i.i.i.us.i.i.i.i:                 ; preds = %.preheader.i.i
  %i.fa = icmp eq ptr %i.fb, %.sroa.20.sroa.13.3.i.i
  br i1 %i.fa, label %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %select.unfold.i.i.i.i.us.i.i.i.i.preheader, %select.unfold.i.i.i.i.us.i.i.i.i
  %.sroa.20.sroa.0.5.i544.i219 = phi ptr [ %i.fb, %select.unfold.i.i.i.i.us.i.i.i.i ], [ %.sroa.20.sroa.0.4.i.i, %select.unfold.i.i.i.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.0.5.i544.i219, i64 24 ; 4 uses
  %i.fc = getelementptr i8, ptr %.sroa.20.sroa.0.5.i544.i219, i64 16
  %.val4.i.i.i.i.us.i.i.i.i = load i64, ptr %i.fc, align 8, !noalias !17519, !noundef !12 ; 2 uses
  %i.fd = icmp eq i64 %.val4.i.i.i.i.us.i.i.i.i, 0
  br i1 %i.fd, label %select.unfold.i.i.i.i.us.i.i.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.us.i.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i.i.i
  %i.fe = getelementptr i8, ptr %.sroa.20.sroa.0.5.i544.i219, i64 8
  %.val.i.i.i.i.us.i.i.i.i.le617 = load ptr, ptr %i.fe, align 8, !noalias !17519, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge

select.unfold.i.i.i.i.us.i.i.i.i._crit_edge:      ; preds = %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.us.i.i.i.i.preheader
  %.sroa.20.sroa.0.5.i544.i.lcssa = phi ptr [ %.sroa.20.sroa.0.4.i.i, %select.unfold.i.i.i.i.us.i.i.i.i.preheader ], [ %i.fb, %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge.loopexit ]
  %.sroa.20.sroa.29.5.i543.i.lcssa = phi ptr [ %.sroa.20.sroa.29.4.i.i, %select.unfold.i.i.i.i.us.i.i.i.i.preheader ], [ %.val.i.i.i.i.us.i.i.i.i.le617, %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.us.i.i.i.i = icmp eq ptr %.sroa.20.sroa.37.4.i.i, null
  %i.ff = icmp eq ptr %.sroa.20.sroa.37.4.i.i, %.sroa.20.sroa.45.3.i.i
  %or.cond207.i.i = select i1 %.not.i7.i.i.i.i.us.i.i.i.i, i1 true, i1 %i.ff
  br i1 %or.cond207.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge
  %.not1.us.i.i.i.i = icmp eq ptr %.sroa.583.3.i.i, null
  br i1 %.not1.us.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %.preheader.i.preheader.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i.loopexit: ; preds = %.preheader.i.i
  %i.fg = getelementptr i8, ptr %.sroa.20.sroa.0.5.i544.i219, i64 8
  %.val.i.i.i.i.us.i.i.i.i.le = load ptr, ptr %i.fg, align 8, !noalias !17519, !nonnull !12, !noundef !12 ; 2 uses
  %.idx563.i.le = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i.i.i, 5
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.i.i.le, i64 %.idx563.i.le
  br label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i: ; preds = %.preheader.i.preheader.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i.loopexit
  %.sroa.20.sroa.29.5.i.lcssa.i = phi ptr [ %i.fh, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.29.4.i.i, %.preheader.i.preheader.i ]
  %.sroa.20.sroa.17.6.i.lcssa.i = phi ptr [ %.val.i.i.i.i.us.i.i.i.i.le, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.17.5.i.i, %.preheader.i.preheader.i ] ; 2 uses
  %.sroa.20.sroa.0.5.i.lcssa.i = phi ptr [ %i.fb, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.0.4.i.i, %.preheader.i.preheader.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.17.6.i.lcssa.i, i64 32
  br label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.37.4.i.i, i64 32
  br label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i
  %.sroa.20.sroa.29.5.i450.i = phi ptr [ %.sroa.20.sroa.29.5.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i ], [ %.sroa.20.sroa.29.5.i543.i.lcssa, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i ]
  %.sroa.20.sroa.0.5.i447.i = phi ptr [ %.sroa.20.sroa.0.5.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i ], [ %.sroa.20.sroa.0.5.i544.i.lcssa, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i ]
  %.sroa.20.sroa.37.1.i.i = phi ptr [ %.sroa.20.sroa.37.4.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i ], [ %i.fj, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i ]
  %.sroa.20.sroa.17.2.i.i = phi ptr [ %i.fi, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i ], [ null, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.20.sroa.17.6.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i ], [ %.sroa.20.sroa.37.4.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit213.i.i ]
  %i.fk = call noundef nonnull align 8 ptr %.sroa.11.3.i.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i.i) #45, !noalias !17520, !inline_history !17346
  br label %bb.n

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i
  store i64 0, ptr %i.bx, align 8, !alias.scope !17499, !noalias !17492
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fl, align 8, !alias.scope !17499, !noalias !17492
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  store i64 0, ptr %i.fm, align 8, !alias.scope !17499, !noalias !17492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17500
  br label %bb.r

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !17521
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !17492 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17500
  %i.fn = icmp ult i64 %.pre.i, 384307168202282326
  call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp eq i64 %.pre.i, 0
  br i1 %i.fo, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  %brmerge.i = or i1 %i.cx, %i.cz
  %brmerge.not.i = xor i1 %brmerge.i, true
  %i.fp = icmp eq i64 %.pre.i, 1                  ; 6 uses
  %or.cond.i = and i1 %i.fp, %brmerge.not.i
  br i1 %or.cond.i, label %bb.u, label %bb.t

bb.r:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.fq = phi ptr [ %i.fm, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %.phi.trans.insert.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ]
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @709, i64 noundef 24) #45, !noalias !17492
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17522
  %i.fr = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !17522 ; 4 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.s, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !17522
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !17492
  %.sroa.4361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i32 1, ptr %.sroa.4361.0..sroa_idx.i, align 8, !noalias !17492
  %.phi.trans.insert699.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val2.i.pre.i = load ptr, ptr %.phi.trans.insert699.i, align 8, !alias.scope !17523, !noalias !17492
  %.val3.i.i.pre = load i64, ptr %i.fq, align 8, !alias.scope !17523, !noalias !17492
  br label %bb.ed

bb.t:                                             ; preds = %bb.q
  %.not.i28 = xor i1 %i.cx, true                  ; 2 uses
  %brmerge2.not154.i = and i1 %i.cx, %i.cz
  %or.cond3.i = and i1 %brmerge2.not154.i, %i.fp
  br i1 %or.cond3.i, label %bb.ap, label %bb.ao

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !17492
  store i64 0, ptr %i.bw, align 8, !noalias !17492
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !17492
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 0, ptr %.sroa.5111.0..sroa_idx.i, align 8, !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !17492
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !17492, !nonnull !12, !noundef !12 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !17492, !nonnull !12, !noundef !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !17492, !noundef !12
  store i64 1, ptr %i.bv, align 8, !noalias !17492
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.fw, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !17492
  %.sroa.5114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.fy, ptr %.sroa.5114.0..sroa_idx.i, align 8, !noalias !17492
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i8 1, ptr %i.fz, align 8, !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17524
  store i64 0, ptr %i.l, align 8, !noalias !17524
  %.sroa.4.0..sroa_idx.i173.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i173.i, align 8, !noalias !17524
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !17524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17524
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1610612768, ptr %i.ga, align 8, !noalias !17524
  store ptr %i.l, ptr %i.k, align 8, !noalias !17524
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @113, ptr %i.gb, align 8, !noalias !17524
  %i.gc = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #45, !noalias !17525
  br i1 %i.gc, label %bb.v, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1323, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #50, !noalias !17525
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.u
  %.sroa.0270.0.copyload271.i = load i64, ptr %i.l, align 8, !noalias !17526 ; 3 uses
  %.sroa.5272.0.copyload274.i = load ptr, ptr %.sroa.4.0..sroa_idx.i173.i, align 8, !noalias !17526, !nonnull !12, !noundef !12 ; 8 uses
  %.sroa.8.0.copyload277.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !17526 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17492
  switch i64 %.sroa.8.0.copyload277.i, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  %i.gd = load i8, ptr %.sroa.5272.0.copyload274.i, align 1, !alias.scope !17527, !noalias !17492, !noundef !12 ; 2 uses
  switch i8 %i.gd, label %bb.x [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  %.pr.i.i = load i8, ptr %.sroa.5272.0.copyload274.i, align 1, !alias.scope !17527, !noalias !17492
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split.i.i, %bb.w
  %i.ge = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.gd, %bb.w ]
  switch i8 %i.ge, label %bb.ae [
    i8 43, label %bb.y
    i8 45, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.5272.0.copyload274.i, i64 1
  %i.gg = add nsw i64 %.sroa.8.0.copyload277.i, -1
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.5272.0.copyload274.i, i64 1 ; 2 uses
  %i.gi = add nsw i64 %.sroa.8.0.copyload277.i, -1 ; 3 uses
end_hunk_1
