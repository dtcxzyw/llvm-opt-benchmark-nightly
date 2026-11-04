Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvCss03989lGqH_5uu_df11filesystems:bb.a
  %.not74298.i.i = icmp eq i8 %i.ajv, -1
  br i1 %.not74298.i.i, label %._crit_edge.i.i, label %.lr.ph.i59.i

_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.ajw = icmp eq i64 %i.ajd, 0
  br i1 %i.ajw, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.thread.i.i, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i

.lr.ph.i59.i:                                     ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i
  %.val.i112353.i.i = phi i64 [ %.val.i112352.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %.val.i112355.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ]
  %i.ajx = phi ptr [ %i.akc, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %i.aqo, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ]
  %i.ajy = phi i64 [ %..i.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %.sroa.0.0.i105.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ]
  %i.ajz = phi i64 [ %i.ake, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %i.aqp, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ] ; 2 uses
  %i.aka = phi i64 [ %i.aki, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %i.ajd, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1131
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.w) #28, !noalias !1132
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.akb = icmp eq i64 %i.aka, %i.ajz
  br i1 %i.akb, label %bb.jg, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i

bb.jg:                                            ; preds = %.lr.ph.i59.i
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af) #27, !noalias !1169
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1168, !noalias !1131 ; 2 uses
  %.pre5.i.i.i = load i64, ptr %i.zd, align 8, !alias.scope !1168, !noalias !1131
  %.pre.i65.i = load i64, ptr %i.zc, align 8, !alias.scope !1168, !noalias !1131
  %.pre349.i.i = load ptr, ptr %i.ze, align 8, !alias.scope !1168, !noalias !1131
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.jg, %.lr.ph.i59.i
  %.val.i112352.i.i = phi i64 [ %.pre.i.i.i, %bb.jg ], [ %.val.i112353.i.i, %.lr.ph.i59.i ] ; 2 uses
  %i.akc = phi ptr [ %.pre349.i.i, %bb.jg ], [ %i.ajx, %.lr.ph.i59.i ] ; 4 uses
  %i.akd = phi i64 [ %.pre.i65.i, %bb.jg ], [ %i.ajy, %.lr.ph.i59.i ]
  %i.ake = phi i64 [ %.pre.i.i.i, %bb.jg ], [ %i.ajz, %.lr.ph.i59.i ] ; 5 uses
  %i.akf = phi i64 [ %.pre5.i.i.i, %bb.jg ], [ %i.aka, %.lr.ph.i59.i ]
  %i.akg = add i64 %i.akd, -1                     ; 2 uses
  %i.akh = add i64 %i.akg, %i.ake                 ; 2 uses
  %.not.i109.i.i = icmp ult i64 %i.akh, %i.ake
  %..i.i.i = select i1 %.not.i109.i.i, i64 %i.akh, i64 %i.akg ; 3 uses
  store i64 %..i.i.i, ptr %i.zc, align 8, !alias.scope !1168, !noalias !1131
  %i.aki = add i64 %i.akf, 1                      ; 3 uses
  store i64 %i.aki, ptr %i.zd, align 8, !alias.scope !1168, !noalias !1131
  %i.akj = getelementptr inbounds nuw [32 x i8], ptr %i.akc, i64 %..i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1131
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y) #28, !noalias !1132
  %i.akk = load i8, ptr %i.x, align 8, !range !22, !noalias !1131, !noundef !6
  %.not74.i.i = icmp eq i8 %i.akk, -1
  br i1 %.not74.i.i, label %._crit_edge.i.i, label %.lr.ph.i59.i

._crit_edge.i.i:                                  ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i
  %.promoted359.i.i = phi i64 [ %i.ajd, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.aki, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ] ; 6 uses
  %.val.i112.i.i = phi i64 [ %.val.i112355.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %.val.i112352.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ] ; 8 uses
  %i.akl = phi ptr [ %i.aqo, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.akc, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  %i.akm = phi i64 [ %i.aqp, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.ake, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  %i.akn = phi ptr [ %i.aqq, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.akc, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  %i.ako = phi i64 [ %i.aqr, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.ake, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1131
  %i.akp = icmp slt i32 %.sroa.022.0.ph301.i.i, 20
  br i1 %i.akp, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5183.i.i)
  %i.akq = load ptr, ptr %.sroa.358.0..sroa_idx.i.i, align 8, !noalias !1131, !nonnull !6, !noundef !6
  %i.akr = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !1131, !noundef !6
  %i.aks = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akq, i64 noundef %i.akr) #28, !noalias !1132 ; 2 uses
  %i.akt = extractvalue { ptr, i64 } %i.aks, 0    ; 3 uses
  %.not75.i.i = icmp eq ptr %i.akt, null
  br i1 %.not75.i.i, label %bb.ju, label %bb.jj, !prof !11

bb.ji:                                            ; preds = %._crit_edge.i.i
  %i.aku = add nsw i32 %.sroa.022.0.ph301.i.i, 1
  br label %bb.ki

bb.jj:                                            ; preds = %bb.jh
  %i.akv = extractvalue { ptr, i64 } %i.aks, 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1131
  %i.akw = icmp samesign ugt i64 %i.akv, 255
  br i1 %i.akw, label %bb.jl, label %bb.jk, !prof !11

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1171
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %i.akt, i64 range(i64 0, -9223372036854775808) %i.akv, i1 false), !noalias !1172
  %i.akx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.akv
  store i8 0, ptr %i.akx, align 1, !noalias !1171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1171
  %i.aky = add nuw nsw i64 %i.akv, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.aky) #28, !noalias !1173
  %i.akz = load i64, ptr %i.f, align 8, !range !18, !noalias !1171, !noundef !6
  %i.ala = trunc nuw i64 %i.akz to i1
  br i1 %i.ala, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.thread.i.i.i, label %bb.jm

bb.jl:                                            ; preds = %bb.jj
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akt, i64 noundef range(i64 0, -9223372036854775808) %i.akv) #28, !noalias !1174
  %.pre.i111.i.i = load i16, ptr %i.h, align 8, !range !1175, !noalias !1176
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.thread.i.i.i: ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1171
  br label %.loopexit.i63.i

bb.jm:                                            ; preds = %bb.jk
  %i.alb = load ptr, ptr %i.zj, align 8, !noalias !1171, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1177
  %i.alc = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.alb, ptr nonnull %i.e, ptr nonnull inttoptr (i64 256 to ptr)) #28, !noalias !1178, !srcloc !17
  %i.ald = extractvalue { ptr, i32, i32 } %i.alc, 0 ; 2 uses
  %.not.i.i.i.i110.i.i = icmp eq ptr %i.ald, null
  br i1 %.not.i.i.i.i110.i.i, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.zl, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false), !noalias !1176
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCss03989lGqH_5uu_df.exit.i.i.i.i

bb.jo:                                            ; preds = %bb.jm
  %i.ale = ptrtoint ptr %i.ald to i64
  %i.alf = trunc i64 %i.ale to i16
  store i16 %i.alf, ptr %i.zk, align 2, !noalias !1176
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCss03989lGqH_5uu_df.exit.i.i.i.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCss03989lGqH_5uu_df.exit.i.i.i.i: ; preds = %bb.jo, %bb.jn
  %.sink.i.i.i.i.i.i = phi i16 [ 0, %bb.jn ], [ 1, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1171
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.i.i.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCss03989lGqH_5uu_df.exit.i.i.i.i, %bb.jl
  %i.alg = phi i16 [ %.pre.i111.i.i, %bb.jl ], [ %.sink.i.i.i.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCss03989lGqH_5uu_df.exit.i.i.i.i ]
  %i.alh = trunc nuw i16 %i.alg to i1
  br i1 %i.alh, label %.loopexit.loopexit.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i

.loopexit.loopexit.i.i:                           ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.i.i.i
  %.pre356.i.i = load i16, ptr %i.zk, align 2, !noalias !1176
  %i.ali = sext i16 %.pre356.i.i to i64
  %i.alj = mul nsw i64 %i.ali, -4294967296
  %i.alk = or disjoint i64 %i.alj, 2
  br label %.loopexit.i63.i

.loopexit.i63.i:                                  ; preds = %.loopexit.loopexit.i.i, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.thread.i.i.i
  %.neg.i.i.i = phi i64 [ %i.alk, %.loopexit.loopexit.i.i ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.thread.i.i.i ]
  %i.all = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !1176
  %.not.i.i.i64.i = icmp eq ptr %i.all, @21
  br i1 %.not.i.i.i64.i, label %bb.jq, label %bb.jp, !prof !10

bb.jp:                                            ; preds = %.loopexit.i63.i
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28, !noalias !1174
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %.loopexit.i63.i
  %i.alm = inttoptr i64 %.neg.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1179
  store ptr %i.alm, ptr %i.s, align 8, !noalias !1179
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 43, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #29, !noalias !1180
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.i.i.i
  %.sroa.4179.8.copyload180.i.i = load ptr, ptr %i.zl, align 8, !noalias !1181 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5183.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8.8..sroa_idx181.i.i, i64 136, i1 false), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1131
  store i64 0, ptr %i.u, align 8, !noalias !1131
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59.i.i, align 8, !noalias !1131
  store i64 0, ptr %.sroa.461.0..sroa_idx62.i.i, align 8, !noalias !1131
  %i.aln = icmp eq i64 %.promoted359.i.i, 0
  br i1 %i.aln, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i, label %bb.jr

bb.jr:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i
  %.val2.i113.i.i = load i64, ptr %i.zc, align 8, !alias.scope !1182, !noalias !1131 ; 2 uses
  %.not.i.i114.i.i = icmp ult i64 %.val2.i113.i.i, %.val.i112.i.i
  %i.alo = select i1 %.not.i.i114.i.i, i64 0, i64 %.val.i112.i.i
  %.sroa.04.0.i.i.i.i = sub nuw i64 %.val2.i113.i.i, %i.alo ; 4 uses
  %i.alp = sub i64 %.val.i112.i.i, %.sroa.04.0.i.i.i.i ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.alp, %.promoted359.i.i
  br i1 %.not11.i.i.i.i, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.alq = sub nuw i64 %.promoted359.i.i, %i.alp
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i

bb.jt:                                            ; preds = %bb.jr
  %i.alr = add i64 %.sroa.04.0.i.i.i.i, %.promoted359.i.i
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.jt, %bb.js, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i
  %.sroa.0.0.i115.i.i = phi i64 [ %.sroa.04.0.i.i.i.i, %bb.jt ], [ %.sroa.04.0.i.i.i.i, %bb.js ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i ]
  %.sroa.5.0.i116.i.i = phi i64 [ %i.alr, %bb.jt ], [ %.val.i112.i.i, %bb.js ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i ]
  %.sroa.11.0.i.i.i = phi i64 [ 0, %bb.jt ], [ %i.alq, %bb.js ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCss03989lGqH_5uu_df.exit.i.i ]
  %i.als = load ptr, ptr %i.ze, align 8, !alias.scope !1182, !noalias !1131, !nonnull !6, !noundef !6 ; 6 uses
  %i.alt = getelementptr inbounds nuw [32 x i8], ptr %i.als, i64 %.sroa.0.0.i115.i.i
  %i.alu = getelementptr inbounds nuw [32 x i8], ptr %i.als, i64 %.sroa.5.0.i116.i.i
  %i.alv = getelementptr inbounds nuw [32 x i8], ptr %i.als, i64 %.sroa.11.0.i.i.i
  %4 = ptrtoint ptr %i.alu to i64
  %5 = ptrtoint ptr %i.als to i64
  %6 = ptrtoint ptr %i.alv to i64
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jh
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #29, !noalias !1132
  unreachable

bb.jv:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i
  %.sroa.7191.0.i.i = phi i64 [ %4, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i ], [ %.sroa.7191.1384.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i ] ; 3 uses
  %.sroa.10193.sroa.5.0.i.i = phi ptr [ %i.alt, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i ], [ %i.aly, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i ] ; 3 uses
  %.sroa.11.0.i.i = phi i64 [ %5, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i ], [ %.sroa.11.1385.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i ] ; 4 uses
  %.sroa.14193.0.i.i = phi i64 [ %6, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCss03989lGqH_5uu_df.exit.i.i ], [ %.sroa.14193.1386.i.i, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i ] ; 3 uses
  %7 = inttoptr i64 %.sroa.7191.0.i.i to ptr
  %i.alw = icmp eq ptr %.sroa.10193.sroa.5.0.i.i, %7
  br i1 %i.alw, label %bb.jw, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i

bb.jw:                                            ; preds = %bb.jv
  %.sroa.0189.0.i.i = ptrtoint ptr %.sroa.10193.sroa.5.0.i.i to i64
  %8 = inttoptr i64 %.sroa.11.0.i.i to ptr
  %9 = icmp eq i64 %.sroa.11.0.i.i, %.sroa.14193.0.i.i
  %i.alx = icmp eq i64 %.sroa.11.0.i.i, 0
  %or.cond.i60.i = or i1 %i.alx, %9
  br i1 %or.cond.i60.i, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread218.i.i: ; preds = %bb.jw, %bb.jv
  %.sink6.i227.i.i = phi ptr [ %8, %bb.jw ], [ %.sroa.10193.sroa.5.0.i.i, %bb.jv ] ; 2 uses
  %.sroa.14193.1386.i.i = phi i64 [ %.sroa.7191.0.i.i, %bb.jw ], [ %.sroa.14193.0.i.i, %bb.jv ]
  %.sroa.11.1385.i.i = phi i64 [ %.sroa.0189.0.i.i, %bb.jw ], [ %.sroa.11.0.i.i, %bb.jv ]
  %.sroa.7191.1384.i.i = phi i64 [ %.sroa.14193.0.i.i, %bb.jw ], [ %.sroa.7191.0.i.i, %bb.jv ]
  %i.aly = getelementptr inbounds nuw i8, ptr %.sink6.i227.i.i, i64 32
  %i.alz = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i227.i.i) #28, !noalias !1132 ; 2 uses
  %i.ama = extractvalue { ptr, i64 } %i.alz, 0
  %i.amb = extractvalue { ptr, i64 } %i.alz, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ama, i64 noundef %i.amb) #28, !noalias !1132
  br label %bb.jv

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i: ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zm, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1131
  store ptr %.sroa.4179.8.copyload180.i.i, ptr %i.t, align 8, !noalias !1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5183.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5183.i.i, i64 136, i1 false), !noalias !1131
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %.val.i118.i.i = load i64, ptr %.sroa.468.0..sroa_idx.i.i, align 8, !alias.scope !1183, !noalias !1131, !noundef !6
  %.val6.i.i.i = load i64, ptr %.sroa.569.0..sroa_idx.i.i, align 8, !alias.scope !1183, !noalias !1131, !noundef !6
  %i.amc = call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECss03989lGqH_5uu_df(i64 %.val.i118.i.i, i64 %.val6.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.t) #28, !noalias !1185 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %i.amd = load i64, ptr %i.zn, align 8, !alias.scope !1188, !noalias !1131, !noundef !6
  %i.ame = icmp eq i64 %i.amd, 0
  %i.amf = ptrtoint ptr %.sroa.4179.8.copyload180.i.i to i64
  br i1 %i.ame, label %bb.jx, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i, !prof !11

bb.jx:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i
  %i.amg = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ab, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.468.0..sroa_idx.i.i, i1 noundef zeroext true) #27, !noalias !1189 ; 0 uses
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i: ; preds = %bb.jx, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1190, !noalias !1131, !nonnull !6, !noundef !6 ; 8 uses
  %.val5.i.i.i.i = load i64, ptr %i.zo, align 8, !alias.scope !1190, !noalias !1131, !noundef !6 ; 4 uses
  %i.amh = lshr i64 %i.amc, 57
  %i.ami = trunc nuw nsw i64 %i.amh to i8         ; 3 uses
  %i.amj = insertelement <16 x i8> poison, i8 %i.ami, i64 0
  %i.amk = shufflevector <16 x i8> %i.amj, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5183.0..sroa_idx.i.i, align 8, !alias.scope !1191, !noalias !1131
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zp, align 8, !alias.scope !1191, !noalias !1131 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i60.i = load i64, ptr %i.zq, align 8, !alias.scope !1191, !noalias !1131
  br label %bb.jy

bb.jy:                                            ; preds = %bb.ka, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.amc, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i ], [ %i.ano, %bb.ka ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i ], [ %.sroa.4.125.i.i.i.i.i, %bb.ka ]
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i ], [ %.sroa.04.127.i.i.i.i.i, %bb.ka ]
  %i.aml = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df.exit.i.i.i.i ], [ %i.ann, %bb.ka ]
  %.sroa.0.021.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val5.i.i.i.i ; 4 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i.i.i = load <16 x i8>, ptr %i.amm, align 1, !noalias !1192 ; 3 uses
  %i.amn = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i, %i.amk
  %i.amo = bitcast <16 x i1> %i.amn to i16        ; 2 uses
  %.not33.i.i.i.i.i = icmp eq i16 %i.amo, 0
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.jy, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.thread.i.i.i.i.i
  %.sroa.01.034.i.i.i.i.i = phi i16 [ %i.and, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.thread.i.i.i.i.i ], [ %i.amo, %bb.jy ] ; 3 uses
  %i.amp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.034.i.i.i.i.i, i1 true)
  %i.amq = zext nneg i16 %i.amp to i64
  %i.amr = add i64 %.sroa.0.021.i.i.i.i.i, %i.amq
  %i.ams = and i64 %i.amr, %.val5.i.i.i.i
  %i.amt = sub nsw i64 0, %i.ams
  %i.amu = getelementptr inbounds [168 x i8], ptr %.val.i.i.i.i, i64 %i.amt ; 4 uses
  %i.amv = getelementptr inbounds i8, ptr %i.amu, i64 -168
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %.val6.i.i.i.i.i.i.i.i.i = load i64, ptr %i.amv, align 8, !alias.scope !1196, !noalias !1197, !noundef !6
  %i.amw = getelementptr inbounds i8, ptr %i.amu, i64 -160
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.amw, align 8, !alias.scope !1196, !noalias !1197
  %i.amx = icmp eq i64 %.val6.i.i.i.i.i.i.i.i.i, %i.amf
  %i.amy = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i61.i = select i1 %i.amx, i1 %i.amy, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i61.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.i.i.i.i.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.thread.i.i.i.i.i, !prof !1198

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.amz = getelementptr inbounds i8, ptr %i.amu, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.amz, align 8, !alias.scope !1196, !noalias !1197 ; 2 uses
  %i.ana = getelementptr inbounds i8, ptr %i.amu, i64 -8
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ana, align 8, !alias.scope !1196, !noalias !1197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1199
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i60.i) #28, !noalias !1200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i.i.i.i) #28, !noalias !1200
  %i.anb = call fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c) #30, !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1199
  br i1 %i.anb, label %bb.kd, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.thread.i.i.i.i.i, !prof !1201

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.thread.i.i.i.i.i, %bb.jy
  %.not12.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.jz, !prof !11

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.thread.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.anc = add i16 %.sroa.01.034.i.i.i.i.i, -1
  %i.and = and i16 %i.anc, %.sroa.01.034.i.i.i.i.i ; 2 uses
  %.not.i.i.i119.i.i = icmp eq i16 %i.and, 0
  br i1 %.not.i.i.i119.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.jz:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ane = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i, zeroinitializer
  %i.anf = bitcast <16 x i1> %i.ane to i16        ; 2 uses
  %.not.i.i.i.i120.i.i = icmp eq i16 %i.anf, 0
  br i1 %.not.i.i.i.i120.i.i, label %bb.ka, label %.thread29.i.i.i.i.i, !prof !11

.thread29.i.i.i.i.i:                              ; preds = %bb.jz
  %i.ang = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.anf, i1 true)
  %i.anh = zext nneg i16 %i.ang to i64
  %i.ani = add i64 %.sroa.0.021.i.i.i.i.i, %i.anh
  %i.anj = and i64 %i.ani, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread29.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.4.126.i.i.i.i.i = phi i64 [ %i.anj, %.thread29.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ank = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i, splat (i8 -1)
  %i.anl = bitcast <16 x i1> %i.ank to i16
  %i.anm = icmp eq i16 %i.anl, 0
  br i1 %i.anm, label %bb.ka, label %bb.kb, !prof !11

bb.ka:                                            ; preds = %.thread.i.i.i.i.i, %bb.jz
  %.sroa.04.127.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.jz ]
  %.sroa.4.125.i.i.i.i.i = phi i64 [ %.sroa.4.126.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.jz ]
  %i.ann = add i64 %i.aml, 16                     ; 2 uses
  %i.ano = add i64 %i.ann, %.sroa.0.021.i.i.i.i.i
  br label %bb.jy

bb.kb:                                            ; preds = %.thread.i.i.i.i.i
  %i.anp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.4.126.i.i.i.i.i
  %i.anq = load i8, ptr %i.anp, align 1, !noalias !1202, !noundef !6 ; 2 uses
  %i.anr = icmp sgt i8 %i.anq, -1
  br i1 %i.anr, label %bb.kc, label %bb.kh, !prof !11

bb.kc:                                            ; preds = %bb.kb
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !1202
  %i.ans = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.ant = bitcast <16 x i1> %i.ans to i16        ; 2 uses
  %.not.i23.i.i.i.i.i = icmp ne i16 %i.ant, 0
  %i.anu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ant, i1 true)
  %i.anv = zext nneg i16 %i.anu to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.anv
  %.pre.i122.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !1203
  br label %bb.kh

bb.kd:                                            ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Css03989lGqH_5uu_df.exit.i.i.i.i.i
  %.val7.i.i62.i = load i64, ptr %i.zm, align 8, !range !7, !alias.scope !1184, !noalias !1131, !noundef !6 ; 2 uses
  %i.anw = icmp eq i64 %.val7.i.i62.i, 0
  br i1 %i.anw, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %.val7.i.i62.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1204
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1131
  %i.anx = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newReECs2vKOLqTMYjT_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 33) #27, !noalias !1132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5183.i.i)
  %i.any = icmp eq i64 %i.ajs, 0
  br i1 %i.any, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit123.i.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aju, i64 noundef %i.ajs, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1132
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit123.i.i

bb.kh:                                            ; preds = %bb.kc, %bb.kb
  %i.anz = phi i8 [ %.pre.i122.i.i, %bb.kc ], [ %i.anq, %bb.kb ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.anv, %bb.kc ], [ %.sroa.4.126.i.i.i.i.i, %bb.kb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.aoa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.aob = and i8 %i.anz, 1
  %i.aoc = zext nneg i8 %i.aob to i64
  %i.aod = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.aoe = and i64 %i.aod, %.val5.i.i.i.i
  store i8 %i.ami, ptr %i.aoa, align 1, !noalias !1203
  %i.aof = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.aoe
  %i.aog = getelementptr i8, ptr %i.aof, i64 16
  store i8 %i.ami, ptr %i.aog, align 1, !noalias !1203
  %i.aoh = load <2 x i64>, ptr %i.zn, align 8, !alias.scope !1206, !noalias !1131
  %i.aoi = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aoc, i64 0
  %i.aoj = sub <2 x i64> %i.aoh, %i.aoi
  store <2 x i64> %i.aoj, ptr %i.zn, align 8, !alias.scope !1206, !noalias !1131
  %i.aok = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i
  %i.aol = getelementptr inbounds [168 x i8], ptr %.val.i.i.i.i, i64 %i.aok
  %i.aom = getelementptr inbounds i8, ptr %i.aol, i64 -168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aom, ptr noundef nonnull readonly align 8 dereferenceable(168) %i.t, i64 168, i1 false), !noalias !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5183.i.i)
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.ji
  %i.aon = phi ptr [ %i.akl, %bb.ji ], [ %i.als, %bb.kh ] ; 2 uses
  %i.aoo = phi i64 [ %i.akm, %bb.ji ], [ %.val.i112.i.i, %bb.kh ] ; 2 uses
  %i.aop = phi ptr [ %i.akn, %bb.ji ], [ %i.als, %bb.kh ] ; 2 uses
  %i.aoq = phi i64 [ %i.ako, %bb.ji ], [ %.val.i112.i.i, %bb.kh ] ; 2 uses
  %.sroa.022.2.i.i = phi i32 [ %i.aku, %bb.ji ], [ %.sroa.022.0.ph301.i.i, %bb.kh ] ; 2 uses
  %i.aor = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #28, !noalias !1132 ; 0 uses
  %i.aos = icmp eq i64 %i.ajs, 0
  br i1 %i.aos, label %bb.ku, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aju, i64 noundef %i.ajs, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1132
end_hunk_0
