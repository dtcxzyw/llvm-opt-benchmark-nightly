Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_comm-2ef8f67d084a0db4.uu_comm.a9b36663a67daf58-cgu.0?download=true
inline.NumInlined: 443
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCsezjqemSh5Uq_7uu_comm4comm:bb.a
bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !352
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !352
  %i.de = icmp samesign ugt i64 %.val128, 255
  br i1 %i.de, label %bb.w, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !354
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %.val127, i64 range(i64 0, -9223372036854775808) %.val128, i1 false), !noalias !355
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 %.val128
  store i8 0, ptr %i.df, align 1, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !354
  %i.dg = add nuw nsw i64 %.val128, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.dg) #23, !noalias !354
  %i.dh = load i64, ptr %i.u, align 8, !range !14, !noalias !354, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i.i, label %bb.x

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls4statECsezjqemSh5Uq_7uu_comm(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val127, i64 noundef range(i64 0, -9223372036854775808) %.val128) #23, !noalias !356
  %.pre.i.i = load i16, ptr %i.w, align 8, !range !357, !noalias !358
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !354
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !354, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !359
  %i.dl = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.dk, ptr nonnull %i.t, ptr null) #23, !noalias !360, !srcloc !13
  %i.dm = extractvalue { ptr, i32, i32 } %i.dl, 0 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dn, ptr noundef nonnull align 8 dereferenceable(144) %i.t, i64 144, i1 false), !noalias !358
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = trunc i64 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 %i.dp, ptr %i.dq, align 2, !noalias !358
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sink.i.i.i.i.i = phi i16 [ 0, %bb.y ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !354
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i.i, %bb.w
  %i.dr = phi i16 [ %.pre.i.i, %bb.w ], [ %.sink.i.i.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i.i ]
  %i.ds = trunc nuw i16 %i.dr to i1
  br i1 %i.ds, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i._crit_edge.i, label %bb.ac

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i._crit_edge.i: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !noalias !358
  %i.dt = sext i16 %.pre.i to i64
  %i.du = mul nsw i64 %i.dt, -4294967296
  %i.dv = or disjoint i64 %i.du, 2
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i._crit_edge.i, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i.i
  %.neg.i.i = phi i64 [ %i.dv, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i._crit_edge.i ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i.i ]
  %i.dw = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !358
  %.not.i.i.i174 = icmp eq ptr %i.dw, @3
  br i1 %.not.i.i.i174, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !356
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.dx = inttoptr i64 %.neg.i.i to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !353, !noalias !352
  br label %_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit.i

bb.ac:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ea, ptr noundef nonnull align 8 dereferenceable(144) %i.dz, i64 144, i1 false), !noalias !361
  br label %_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit.i

_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit.i: ; preds = %bb.ac, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i
  %.sink.i.i = phi i64 [ 0, %bb.ac ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i ]
  store i64 %.sink.i.i, ptr %i.y, align 8, !alias.scope !353, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !352
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !352
  %i.eb = icmp samesign ugt i64 %.val130, 255
  br i1 %i.eb, label %bb.ae, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !363
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %.val129, i64 range(i64 0, -9223372036854775808) %.val130, i1 false), !noalias !364
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 %.val130
  store i8 0, ptr %i.ec, align 1, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !363
  %i.ed = add nuw nsw i64 %.val130, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.ed) #23, !noalias !365
  %i.ee = load i64, ptr %i.q, align 8, !range !14, !noalias !363, !noundef !5
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i9.i, label %bb.af

bb.ae:                                            ; preds = %_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit.i
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls4statECsezjqemSh5Uq_7uu_comm(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val129, i64 noundef range(i64 0, -9223372036854775808) %.val130) #23, !noalias !362
  %.pre.i10.i = load i16, ptr %i.s, align 8, !range !357, !noalias !366
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i9.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !363
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !363, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !367
  %i.ei = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.eh, ptr nonnull %i.p, ptr null) #23, !noalias !368, !srcloc !13
  %i.ej = extractvalue { ptr, i32, i32 } %i.ei, 0 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i1.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ek, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false), !noalias !366
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i2.i

bb.ah:                                            ; preds = %bb.af
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = trunc i64 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.em, ptr %i.en, align 2, !noalias !366
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i2.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i2.i: ; preds = %bb.ah, %bb.ag
  %.sink.i.i.i.i3.i = phi i16 [ 0, %bb.ag ], [ 1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !363
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i2.i, %bb.ae
  %i.eo = phi i16 [ %.pre.i10.i, %bb.ae ], [ %.sink.i.i.i.i3.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsezjqemSh5Uq_7uu_comm.exit.i.i2.i ]
  %i.ep = trunc nuw i16 %i.eo to i1
  br i1 %i.ep, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4._crit_edge.i, label %bb.ak

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4._crit_edge.i: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4.i
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.pre13.i = load i16, ptr %.phi.trans.insert12.i, align 2, !noalias !366
  %i.eq = sext i16 %.pre13.i to i64
  %i.er = mul nsw i64 %i.eq, -4294967296
  %i.es = or disjoint i64 %i.er, 2
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4._crit_edge.i, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i9.i
  %.neg.i8.i = phi i64 [ %i.es, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4._crit_edge.i ], [ 94489280514, %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.thread.i9.i ]
  %i.et = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !366
  %.not.i.i6.i = icmp eq ptr %i.et, @3
  br i1 %.not.i.i6.i, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i7.i, label %bb.aj, !prof !6

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !362
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i7.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i7.i: ; preds = %bb.aj, %bb.ai
  %i.eu = inttoptr i64 %.neg.i8.i to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !alias.scope !362, !noalias !352
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs24paths_refer_to_same_fileRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit

bb.ak:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls4statECsezjqemSh5Uq_7uu_comm.exit.i4.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ex, ptr noundef nonnull align 8 dereferenceable(144) %i.ew, i64 144, i1 false), !noalias !369
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs24paths_refer_to_same_fileRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs24paths_refer_to_same_fileRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i7.i, %bb.ak
  %.sink.i5.i = phi i64 [ 0, %bb.ak ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i7.i ]
  store i64 %.sink.i5.i, ptr %i.x, align 8, !alias.scope !362, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !352
  %i.ey = call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features2fs24infos_refer_to_same_file(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !352
  br i1 %i.ey, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs24paths_refer_to_same_fileRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvCsezjqemSh5Uq_7uu_comm19are_files_identical(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val127, i64 noundef %.val128, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val129, i64 noundef %.val130) #23
  %i.ez = load i8, ptr %i.an, align 8, !range !11, !noundef !5
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.am, label %7

7:                                                ; preds = %bb.al
  %8 = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %9 = load i8, ptr %8, align 1, !range !11, !noundef !5
  %10 = trunc nuw i8 %9 to i1
  %11 = xor i1 %10, true
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val132 = load ptr, ptr %i.fb, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsezjqemSh5Uq_7uu_comm(i8 1, ptr %.val132) #23
  br label %bb.an

bb.an:                                            ; preds = %7, %bb.am
  %.sroa.016.0280 = phi i1 [ true, %bb.am ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.t, %bb.an, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs24paths_refer_to_same_fileRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit
  %.sroa.012.0 = phi i1 [ false, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs24paths_refer_to_same_fileRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECsezjqemSh5Uq_7uu_comm.exit ], [ %not., %bb.t ], [ %.sroa.016.0280, %bb.an ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 0, ptr %i.am, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.am, i64 25
  %i.fe = zext i1 %i.dc to i8                     ; 2 uses
  store i8 %i.fe, ptr %i.fd, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.am, i64 26 ; 3 uses
  store i8 0, ptr %i.ff, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8
  %.sroa.3.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx64, align 8
  %.sroa.4.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx66, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 1, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.al, i64 25
  store i8 %i.fe, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.al, i64 26 ; 3 uses
  store i8 0, ptr %i.fi, align 2
  %i.fj = icmp eq ptr %i.cc, null                 ; 2 uses
  %i.fk = icmp eq ptr %i.cr, null                 ; 2 uses
  %or.cond7325 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond7325, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.aw, %bb.bi, %bb.bj, %bb.by, %bb.bg
  %.sroa.017.0.lcssa.ph = phi i8 [ %.sroa.017.1, %bb.bg ], [ %.sroa.017.0328, %bb.by ], [ %.sroa.017.0328, %bb.bj ], [ %.sroa.017.0328, %bb.bi ], [ %.sroa.017.0328, %bb.aw ]
  %i.fl = trunc nuw i8 %.sroa.017.0.lcssa.ph to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ao
  %.sroa.017.0.lcssa = phi i1 [ false, %bb.ao ], [ %i.fl, %._crit_edge.loopexit ]
  %i.fm = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 5) #23
  br i1 %i.fm, label %bb.bz, label %bb.ci

.lr.ph:                                           ; preds = %bb.ao, %bb.bg
  %i.fn = phi i1 [ %i.hk, %bb.bg ], [ %i.fk, %bb.ao ]
  %i.fo = phi i1 [ %i.hj, %bb.bg ], [ %i.fj, %bb.ao ]
  %.sroa.017.0328 = phi i8 [ %.sroa.017.1, %bb.bg ], [ 0, %bb.ao ] ; 6 uses
  %.sroa.044.0327 = phi i64 [ %.sroa.044.1, %bb.bg ], [ %i.cm, %bb.ao ]
  %.sroa.048.0326 = phi i64 [ %.sroa.048.1, %bb.bg ], [ %i.db, %bb.ao ]
  br i1 %i.fo, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  br i1 %i.fn, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph, %bb.ar
  br i1 %.sroa.012.0, label %bb.by, label %bb.bx

bb.ar:                                            ; preds = %bb.ap
  %i.fp = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = load i64, ptr %i.bz, align 8, !noundef !5 ; 3 uses
  %i.fr = load ptr, ptr %i.cn, align 8, !nonnull !5, !noundef !5
  %i.fs = load i64, ptr %i.co, align 8, !noundef !5 ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fs)
  %i.ft = call i32 @memcmp(ptr nonnull %i.fp, ptr nonnull %i.fr, i64 %spec.store.select) ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp eq i32 %i.ft, 0
  %i.fw = sub i64 %i.fq, %i.fs
  %spec.select = select i1 %i.fv, i64 %i.fw, i64 %i.fu
  %i.fx = call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  switch i8 %i.fx, label %bb.at [
    i8 -1, label %bb.as
    i8 0, label %bb.au
    i8 1, label %bb.aq
  ]

bb.as:                                            ; preds = %bb.ap, %bb.ar
  br i1 %.sroa.012.0, label %bb.aw, label %bb.av

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.ar
  br i1 %.sroa.012.0, label %bb.bi, label %bb.bh

bb.av:                                            ; preds = %bb.aw, %bb.as
  %i.fy = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 1) #23
  br i1 %i.fy, label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit.thread, label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.fz = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5
  %i.ga = load i64, ptr %i.bz, align 8, !noundef !5
  %i.gb = call fastcc noundef zeroext i1 @_RNvMs1_CsezjqemSh5Uq_7uu_commNtB5_12OrderChecker12verify_order(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef %i.ga) #23
  br i1 %i.gb, label %bb.av, label %._crit_edge.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.gc = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gd = load i64, ptr %i.bz, align 8, !noundef !5 ; 4 uses
  %i.ge = load i64, ptr %i.au, align 8, !range !4, !noundef !5
  %i.gf = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !5 ; 4 uses
  %i.gg = icmp sgt i64 %i.gf, -1
  call void @llvm.assume(i1 %i.gg)
  %i.gh = sub nsw i64 %i.ge, %i.gf
  %i.gi = icmp ult i64 %i.gd, %i.gh
  br i1 %i.gi, label %.thread, label %bb.ay, !prof !6

.thread:                                          ; preds = %bb.ax
  %i.gj = load ptr, ptr %.sroa.4.0..sroa_idx.i165, align 8, !nonnull !5, !noundef !5
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull align 1 %i.gc, i64 %i.gd, i1 false)
  %i.gl = add i64 %i.gf, %i.gd
  store i64 %i.gl, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.gm = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCsezjqemSh5Uq_7uu_comm(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd) #22 ; 2 uses
  %.not.i176 = icmp eq ptr %i.gm, null
  br i1 %.not.i176, label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i175)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i175, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 16) #23
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !370
  %i.gn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #23, !noalias !370 ; 4 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.ba, label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit, !prof !7

bb.ba:                                            ; preds = %bb.az
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24, !noalias !370
  unreachable

_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit: ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i175, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr %i.gm, ptr %.sroa.4.0..sroa_idx.i178, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i175)
  br label %bb.da

_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit.thread: ; preds = %.thread, %bb.ay, %bb.av
  store i64 0, ptr %i.bz, align 8
  %i.gp = call fastcc { i64, ptr } @_RNvMs0_CsezjqemSh5Uq_7uu_commNtB5_10LineReader9read_line(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #23 ; 2 uses
  %i.gq = extractvalue { i64, ptr } %i.gp, 0
  %i.gr = extractvalue { i64, ptr } %i.gp, 1      ; 2 uses
  %i.gs = trunc nuw i64 %i.gq to i1
  br i1 %i.gs, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !371
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val127) ]
  store i64 1, ptr %i.o, align 8, !noalias !371
  %.sroa.4.0..sroa_idx.i.i180 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.val127, ptr %.sroa.4.0..sroa_idx.i.i180, align 8, !noalias !371
  %.sroa.5.0..sroa_idx.i.i181 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val128, ptr %.sroa.5.0..sroa_idx.i.i181, align 8, !noalias !371
  %i.gt = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 0, ptr %i.gt, align 8, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !372
  store i64 0, ptr %i.n, align 8, !noalias !372
  %.sroa.4.0..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i182, align 8, !noalias !372
  %.sroa.5.0..sroa_idx.i.i.i183 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i183, align 8, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !372
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1610612768, ptr %i.gu, align 8, !noalias !372
  store ptr %i.n, ptr %i.m, align 8, !noalias !372
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @51, ptr %i.gv, align 8, !noalias !372
  %i.gw = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !noalias !373
  br i1 %i.gw, label %bb.bc, label %_RNCNvCsezjqemSh5Uq_7uu_comm4comms1_0B3_.exit.i, !prof !7

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #25, !noalias !373
  unreachable

_RNCNvCsezjqemSh5Uq_7uu_comm4comms1_0B3_.exit.i:  ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i179, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !371
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !375
  %i.gx = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #23, !noalias !375 ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.bd, label %bb.be, !prof !7

bb.bd:                                            ; preds = %_RNCNvCsezjqemSh5Uq_7uu_comm4comms1_0B3_.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24, !noalias !375
  unreachable

bb.be:                                            ; preds = %_RNCNvCsezjqemSh5Uq_7uu_comm4comms1_0B3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i179, i64 24, i1 false), !noalias !374
  %.sroa.4.0..sroa_idx.i185 = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr %i.gr, ptr %.sroa.4.0..sroa_idx.i185, align 8, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i179)
  br label %bb.da

bb.bf:                                            ; preds = %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsezjqemSh5Uq_7uu_comm4comms0_0EB3d_.exit.thread
  %i.gz = ptrtoint ptr %i.gr to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.dk, %bb.bw, %bb.bf
  %.sink = phi ptr [ %i.ap, %bb.dk ], [ %i.ao, %bb.bw ], [ %i.aq, %bb.bf ] ; 2 uses
  %.sroa.048.1 = phi i64 [ %i.lc, %bb.dk ], [ %i.iq, %bb.bw ], [ %.sroa.048.0326, %bb.bf ] ; 2 uses
end_hunk_0
