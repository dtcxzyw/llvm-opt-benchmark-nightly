inline.NumInlined: 194
inline.NumDeleted: 135
begin_hunk_0_@_RNvCs5lJtbkSVYU0_6uu_yes4exec:_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit

default.unreachable.i28:                          ; preds = %._crit_edge194
  unreachable

bb.p:                                             ; preds = %._crit_edge194
  %i.by = icmp ult ptr %.sroa.07.1.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.bz = and i64 %i.bw, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %i.ca)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

bb.q:                                             ; preds = %._crit_edge194
  %i.cb = getelementptr i8, ptr %.sroa.07.1.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !69
  store i8 3, ptr %i.k, align 8, !alias.scope !69
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #15
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit: ; preds = %._crit_edge194, %._crit_edge194, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.e

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !72
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i) #15, !noalias !72
  %i.cd = load i32, ptr %i.i, align 8, !range !55, !noalias !72, !noundef !8
  %i.ce = trunc nuw i32 %i.cd to i1
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !72, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !72
  br label %bb.bj

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5lJtbkSVYU0_6uu_yes.exit31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !range !56, !noalias !72, !noundef !8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !range !56, !noalias !72, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !72
  store i32 %i.ci, ptr %i.j, align 4, !noalias !72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !noalias !72
  %i.cm = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j) #15, !noalias !72
  %i.cn = zext i32 %i.cm to i64
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.co, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #18, !noalias !75, !srcloc !51
  %i.cq = extractvalue { ptr, i32, i32 } %i.cp, 0 ; 3 uses
  %.not.i.i.i32 = icmp sgt ptr %i.cq, inttoptr (i64 -4096 to ptr)
  %i.cr = icmp slt ptr %i.cq, null
  %.sroa.0.0.i.i.i33 = and i1 %.not.i.i.i32, %i.cr
  br i1 %.sroa.0.0.i.i.i33, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !72
  %.not.i.i35 = icmp eq ptr %i.ct, @1
  br i1 %.not.i.i35, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i36, label %bb.u, !prof !60

bb.u:                                             ; preds = %bb.t
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !72
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i36

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i36: ; preds = %bb.u, %bb.t
  %.neg.i37 = mul i64 %i.cs, -4294967296
  %i.cu = or disjoint i64 %.neg.i37, 2
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = call noundef i32 @close(i32 noundef %i.ci) #15, !noalias !72 ; 0 uses
  %i.cx = call noundef i32 @close(i32 noundef %i.ck) #15, !noalias !72 ; 0 uses
  br label %bb.bj

.thread101:                                       ; preds = %bb.v, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdECs5lJtbkSVYU0_6uu_yes.exit
  %i.cy = call noundef i32 @close(i32 noundef %i.ck) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val15 = load i32, ptr %i.p, align 4, !range !56, !noundef !8
  %i.cz = call noundef i32 @close(i32 noundef %.val15) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.e

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 %i.ci, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %i.ck, ptr %i.o, align 4
  %i.da = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r) #15
  %i.db = call noundef i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o) #15
  %i.dc = zext i32 %i.da to i64
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = zext i32 %i.db to i64
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 276 to ptr), ptr %i.dd, ptr %i.df, ptr nonnull inttoptr (i64 1048576 to ptr), ptr null) #15, !noalias !78, !srcloc !81
  %i.dh = extractvalue { ptr, i32, i32 } %i.dg, 0 ; 3 uses
  %.not.i.i39 = icmp sle ptr %i.dh, inttoptr (i64 -4096 to ptr)
  %i.di = icmp sge ptr %i.dh, null
  %.sroa.0.0.i.i40.not155 = or i1 %.not.i.i39, %i.di
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = icmp eq i64 %1, %i.dj
  %or.cond = and i1 %.sroa.0.0.i.i40.not155, %i.dk
  br i1 %or.cond, label %bb.w, label %.thread101

bb.w:                                             ; preds = %bb.v
  br i1 %i.aq, label %.loopexit115, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.w, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i
  %.sroa.0.070.i = phi i64 [ %i.dv, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i ], [ %1, %bb.w ] ; 11 uses
  %i.dl = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p) #15, !noalias !82
  %i.dm = zext i32 %i.dl to i64
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = inttoptr i64 %.sroa.0.070.i to ptr
  %i.dp = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.dn, ptr null, ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull %i.do, ptr null) #15, !noalias !86, !srcloc !89
  %i.dq = extractvalue { ptr, i32, i32 } %i.dp, 0 ; 3 uses
  %.not.i.i.i43 = icmp sgt ptr %i.dq, inttoptr (i64 -4096 to ptr)
  %i.dr = icmp slt ptr %i.dq, null
  %.sroa.0.0.i.i.i44 = and i1 %.not.i.i.i43, %i.dr
  br i1 %.sroa.0.0.i.i.i44, label %bb.x, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i

bb.x:                                             ; preds = %.lr.ph.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !90
  %.not.i.i45 = icmp slt i64 %.sroa.0.070.i, 0
  br i1 %.not.i.i45, label %bb.y, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !92

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.x
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !93
  %i.ds = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.070.i, i64 noundef range(i64 1, 9) 1) #15, !noalias !93 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %bb.z

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i: ; preds = %.lr.ph.i42
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %.sroa.0.070.i, %i.du           ; 2 uses
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %.loopexit115, label %.lr.ph.i42

bb.y:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.x
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.x ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.0.070.i) #16, !noalias !82
  unreachable

bb.z:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %.sroa.0.070.i, ptr %i.h, align 8, !noalias !90
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.ds, ptr %i.dw, align 8, !noalias !90
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.dx, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !90
  store ptr %i.p, ptr %i.g, align 8, !noalias !90
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.070.i, ptr %i.dy, align 8, !noalias !90
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 %.sroa.0.070.i, ptr %i.dz, align 8, !noalias !90
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ea = icmp samesign ult i64 %.sroa.0.070.i, 32
  br i1 %i.ea, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge88.i.i, %bb.z
  %.pre81.i.i = phi i64 [ %.pre81.pre.i.i, %._crit_edge88.i.i ], [ %.sroa.0.070.i, %bb.z ]
  %.pre.i.i = phi i64 [ %.pr.pre.i, %._crit_edge88.i.i ], [ 0, %bb.z ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.ej = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #15, !noalias !82 ; 2 uses
  %i.ek = extractvalue { i64, ptr } %i.ej, 0
  %i.el = extractvalue { i64, ptr } %i.ej, 1      ; 2 uses
  %i.em = trunc nuw i64 %i.ek to i1
  br i1 %i.em, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = icmp eq ptr %i.el, null
  %.pr.pre.i = load i64, ptr %i.dx, align 8, !noalias !90 ; 2 uses
  br i1 %i.en, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread35.i, label %._crit_edge88.i.i

._crit_edge88.i.i:                                ; preds = %bb.ac
  %.pre81.pre.i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !99, !noalias !101
  br label %bb.aa

bb.ad:                                            ; preds = %bb.as, %bb.aa
  %i.eo = phi i64 [ %.pre81.i.i, %bb.aa ], [ %i.fi, %bb.as ] ; 3 uses
  %i.ep = phi i64 [ %.pre.i.i, %bb.aa ], [ %i.hk, %bb.as ] ; 2 uses
  %.sroa.037.3.i.i = phi i64 [ 8192, %bb.aa ], [ %.sroa.037.4.i.i, %bb.as ] ; 5 uses
  %i.eq = icmp eq i64 %i.ep, %i.eo
  %i.er = icmp eq i64 %i.eo, %.sroa.0.070.i
  %or.cond46.i.i = and i1 %i.er, %i.eq
  br i1 %or.cond46.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i, %bb.ad
  %i.es = phi i64 [ %.pre83.i.i, %._crit_edge.i.i ], [ %i.eo, %bb.ad ] ; 6 uses
  %i.et = phi i64 [ %.pre82.i.i, %._crit_edge.i.i ], [ %i.ep, %bb.ad ] ; 7 uses
  %i.eu = icmp sgt i64 %i.et, -1
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.et, %i.es
  %.pre84.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !99, !noalias !101 ; 2 uses
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.ew = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #15, !noalias !82 ; 2 uses
  %i.ex = extractvalue { i64, ptr } %i.ew, 0
  %i.ey = extractvalue { i64, ptr } %i.ew, 1      ; 2 uses
  %i.ez = trunc nuw i64 %i.ex to i1
  br i1 %i.ez, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = icmp eq ptr %i.ey, null
  %.pre82.i.i = load i64, ptr %i.dx, align 8, !noalias !90 ; 3 uses
  br i1 %i.fa, label %bb.ah, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ag
  %.pre83.i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !99, !noalias !101
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.fb = icmp sgt i64 %.pre82.i.i, -1
  call void @llvm.assume(i1 %i.fb)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread35.i

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.fc = add nuw i64 %i.es, 32
  %i.fd = shl nuw i64 %i.es, 1
  %..i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.fc, i64 range(i64 0, -1) %i.fd) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !108
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5lJtbkSVYU0_6uu_yes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, i64 %i.es, ptr %.pre84.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 1, i64 noundef 1) #15, !noalias !109
  %i.fe = load i64, ptr %i.e, align 8, !range !9, !noalias !108, !noundef !8
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.i.i, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i: ; preds = %bb.ai
  %i.fg = load ptr, ptr %i.eb, align 8, !noalias !108, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  store ptr %i.fg, ptr %i.dw, align 8, !alias.scope !110, !noalias !101
  %i.fh = icmp sgt i64 %..i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fh)
  store i64 %..i.i.i.i.i, ptr %i.h, align 8, !alias.scope !110, !noalias !101
  %.pre.i.i.i = sub nuw nsw i64 %..i.i.i.i.i, %i.es
  %2 = icmp samesign ugt i64 %.pre.i.i.i, 31
  call void @llvm.assume(i1 %2)
  br label %bb.aj

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread.i

bb.aj:                                            ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i, %bb.ae
  %i.fi = phi i64 [ %i.es, %bb.ae ], [ %..i.i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i ] ; 2 uses
  %i.fj = phi ptr [ %.pre84.i.i, %bb.ae ], [ %i.fg, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.et
  %i.fl = sub nsw i64 %i.fi, %i.et                ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i.i, i64 %i.fl) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !111
  store ptr %i.fk, ptr %i.f, align 8, !noalias !111
  store i64 %..i.i.i, ptr %i.ec, align 8, !noalias !111
  store i64 0, ptr %i.ed, align 8, !noalias !111
  store i8 0, ptr %i.ee, align 8, !noalias !111
  %i.fm = load i64, ptr %i.dz, align 8, !alias.scope !112, !noalias !115, !noundef !8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i: ; preds = %bb.aj
  store i64 %i.et, ptr %i.dx, align 8, !alias.scope !99, !noalias !101
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread39.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i
  %i.fo = phi i64 [ %i.hi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i ], [ %i.fm, %bb.aj ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.fp = load i64, ptr %i.ec, align 8, !alias.scope !119, !noalias !121, !noundef !8
  %i.fq = load i64, ptr %i.ed, align 8, !alias.scope !119, !noalias !121, !noundef !8 ; 4 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 2 uses
  %i.fs = icmp ult i64 %i.fo, %i.fr
  br i1 %i.fs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.ft = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #15, !noalias !122
  %i.fu = load i64, ptr %i.ed, align 8, !alias.scope !119, !noalias !121, !noundef !8 ; 2 uses
  %.neg.i.i.i = sub i64 %i.fq, %i.fu
  %i.fv = load i64, ptr %i.dz, align 8, !alias.scope !123, !noalias !124, !noundef !8
  %i.fw = add i64 %.neg.i.i.i, %i.fv
  store i64 %i.fw, ptr %i.dz, align 8, !alias.scope !123, !noalias !124
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.fx = load i8, ptr %i.ee, align 8, !range !125, !alias.scope !119, !noalias !121, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126
  %i.fy = load ptr, ptr %i.f, align 8, !alias.scope !119, !noalias !121, !nonnull !8, !noundef !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq ; 2 uses
  %i.ga = trunc nuw i8 %i.fx to i1
  store ptr %i.fz, ptr %i.d, align 8, !noalias !126
  store i64 %i.fo, ptr %i.ef, align 8, !noalias !126
  store i64 0, ptr %i.eg, align 8, !noalias !126
  store i8 0, ptr %i.eh, align 8, !noalias !126
  br i1 %i.ga, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gb = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #15, !noalias !127 ; 2 uses
  %i.gc = load i8, ptr %i.eh, align 8, !range !125, !noalias !126, !noundef !8
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = load i64, ptr %i.eg, align 8, !noalias !126, !noundef !8 ; 2 uses
  br i1 %i.gd, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i, label %bb.ao

bb.an:                                            ; preds = %bb.al
  store i8 1, ptr %i.eh, align 8, !noalias !126
  %i.gf = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #15, !noalias !127
  %i.gg = load i64, ptr %i.eg, align 8, !noalias !126, !noundef !8
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i, %bb.an, %bb.am
  %.sroa.09.0.i.i.i = phi i64 [ %i.gg, %bb.an ], [ %i.ge, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i ], [ %i.ge, %bb.am ] ; 2 uses
  %.sroa.01.0.i.i.i = phi ptr [ %i.gf, %bb.an ], [ %i.gb, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i ], [ %i.gb, %bb.am ]
  %i.gh = add i64 %.sroa.09.0.i.i.i, %i.fq        ; 2 uses
  store i64 %i.gh, ptr %i.ed, align 8, !alias.scope !119, !noalias !121
  %i.gi = load i64, ptr %i.dz, align 8, !alias.scope !123, !noalias !124, !noundef !8
  %i.gj = sub i64 %i.gi, %.sroa.09.0.i.i.i
  store i64 %i.gj, ptr %i.dz, align 8, !alias.scope !123, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !126
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5lJtbkSVYU0_6uu_yes.exit.i.i.i: ; preds = %bb.am
  %i.gk = sub nuw i64 %i.fr, %i.fo
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fo
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 range(i64 0, -9223372036854775808) %i.gk, i1 false), !alias.scope !128, !noalias !133
  store i8 1, ptr %i.ee, align 8, !alias.scope !119, !noalias !121
  br label %bb.ao

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i: ; preds = %bb.ao, %bb.ak
  %i.gm = phi i64 [ %i.fu, %bb.ak ], [ %i.gh, %bb.ao ]
  %.sroa.0.0.i48.i.i = phi ptr [ %i.ft, %bb.ak ], [ %.sroa.01.0.i.i.i, %bb.ao ] ; 7 uses
  %i.gn = ptrtoint ptr %.sroa.0.0.i48.i.i to i64  ; 4 uses
  %.not45.i.i = icmp eq ptr %.sroa.0.0.i48.i.i, null
  br i1 %.not45.i.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i
  %i.go = and i64 %i.gn, 3
  switch i64 %i.go, label %default.unreachable [
    i64 2, label %.split.i.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i
    i64 0, label %.split58.i.i
    i64 1, label %.split57.i.i
  ], !prof !17

.split.i.i:                                       ; preds = %bb.ap
  %i.gp = lshr i64 %i.gn, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  %i.gr = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #15, !noalias !122
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !122, !nonnull !8, !noundef !8
  %i.gu = call noundef zeroext i1 %i.gt(i32 noundef %i.gq) #15, !noalias !122, !inline_history !135
  br i1 %i.gu, label %.thread61.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

.split58.i.i:                                     ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i48.i.i, i64 16
  %i.gw = load i8, ptr %i.gv, align 8, !range !19, !noalias !122, !noundef !8
  %i.gx = icmp eq i8 %i.gw, 35
  br i1 %i.gx, label %.thread61.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

.split57.i.i:                                     ; preds = %bb.ap
  %i.gy = getelementptr i8, ptr %.sroa.0.0.i48.i.i, i64 31
  %i.gz = load i8, ptr %i.gy, align 8, !range !19, !noalias !122, !noundef !8
  %i.ha = icmp eq i8 %i.gz, 35
  br i1 %i.ha, label %bb.ar, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i: ; preds = %bb.ap
  %i.hb = lshr i64 %i.gn, 32
  %i.hc = icmp ult ptr %.sroa.0.0.i48.i.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.hb to i8
  %spec.select.i.i.i.i.i = select i1 %i.hc, i8 %switch.idx.cast.i.i.i.i.i, i8 -1 ; 2 uses
  %i.hd = icmp ne i8 %spec.select.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp eq i8 %spec.select.i.i.i.i.i, 35
  br i1 %i.he, label %bb.aq, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.i

.thread61.i.i:                                    ; preds = %.split58.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i

bb.aq:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111
  %i.hf = and i64 %i.gn, 1095216660480
  %i.hg = icmp ne i64 %i.hf, 1095216660480
  call void @llvm.assume(i1 %i.hc)
  call void @llvm.assume(i1 %i.hg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i

bb.ar:                                            ; preds = %.split57.i.i
  %i.hh = getelementptr i8, ptr %.sroa.0.0.i48.i.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hh) ]
  store ptr %i.hh, ptr %i.ei, align 8, !alias.scope !136, !noalias !111
  store i8 3, ptr %i.c, align 8, !alias.scope !136, !noalias !111
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ei) #15, !noalias !122
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i: ; preds = %bb.ar, %bb.aq, %.thread61.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111
  %i.hi = load i64, ptr %i.dz, align 8, !alias.scope !139, !noalias !141, !noundef !8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i, label %.lr.ph.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit.i.i
  %.pre86.pre.i.i = load i64, ptr %i.ed, align 8, !noalias !111
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i
  %.pre86.i.i = phi i64 [ %.pre86.pre.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5lJtbkSVYU0_6uu_yes.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.loopexit_crit_edge.i.i ], [ %i.gm, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.i.i ] ; 3 uses
  %.pre87.i.i = load i8, ptr %i.ee, align 8, !range !125, !noalias !111
  %i.hk = add i64 %.pre86.i.i, %i.et              ; 3 uses
  store i64 %i.hk, ptr %i.dx, align 8, !alias.scope !99, !noalias !101
  %i.hl = icmp eq i64 %.pre86.i.i, 0
  br i1 %i.hl, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread39.i, label %bb.at

bb.as:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %.sroa.037.4.i.i = phi i64 [ -1, %bb.aw ], [ %i.hp, %bb.av ], [ %.sroa.037.3.i.i, %bb.au ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !111
  br label %bb.ad

bb.at:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i
  %i.hm = trunc nuw i8 %.pre87.i.i to i1
  br i1 %i.hm, label %bb.au, label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.hn = icmp uge i64 %i.fl, %.sroa.037.3.i.i
  %i.ho = icmp eq i64 %.pre86.i.i, %..i.i.i
  %or.cond.i.i = and i1 %i.hn, %i.ho
  br i1 %or.cond.i.i, label %bb.av, label %bb.as

bb.av:                                            ; preds = %bb.au
  %i.hp = shl nuw i64 %.sroa.037.3.i.i, 1
  %i.hq = icmp slt i64 %.sroa.037.3.i.i, 0
  br i1 %i.hq, label %bb.aw, label %bb.as, !prof !16

bb.aw:                                            ; preds = %bb.av
  br label %bb.as

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread39.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i
  %.pr96.i = phi i64 [ %i.et, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.thread.i.i ], [ %i.hk, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5lJtbkSVYU0_6uu_yes.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !111
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5lJtbkSVYU0_6uu_yes.exit.thread35.i
end_hunk_0
