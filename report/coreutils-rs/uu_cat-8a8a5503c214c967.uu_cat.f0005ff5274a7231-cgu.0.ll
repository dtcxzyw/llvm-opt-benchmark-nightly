Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cat-8a8a5503c214c967.uu_cat.f0005ff5274a7231-cgu.0?download=true
inline.NumInlined: 454
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCskBwnbTnIhiv_6uu_cat8cat_path:bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvCskBwnbTnIhiv_6uu_cat8cat_path, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 %switch.load, ptr %i.at, align 8, !alias.scope !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !642
  br label %bb.j

_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit:   ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !642
  store ptr %i.v, ptr %i.u, align 8, !noalias !642
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsv_NtCs2vKOLqTMYjT_3std2fsNtB5_8FileTypeNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !642
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull @28, ptr noundef nonnull %i.u) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !642
  %.pr.pre.pre = load i64, ptr %i.aa, align 8     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !642
  %.not = icmp eq i64 %.pr.pre.pre, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385, %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit
  %.pr388 = phi i64 [ %.pr341, %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit.thread385 ], [ %.pr.pre.pre, %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit ]
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.420.0.copyload = load i8, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.521.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %.pr388, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.420.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  br label %bb.en

bb.j:                                             ; preds = %_RNvCskBwnbTnIhiv_6uu_cat14get_input_type.exit, %switch.lookup
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  switch i8 %.pre, label %bb.k [
    i8 0, label %bb.l
    i8 2, label %bb.m
    i8 7, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !647
  store i128 18446745954905227264, ptr %i.s, align 16, !noalias !647
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val28) #23, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !647
  %i.au = load i32, ptr %i.x, align 8, !range !22, !noundef !8
  %i.av = trunc nuw i32 %i.au to i1
  br i1 %i.av, label %bb.bz, label %bb.ca

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.en

bb.m:                                             ; preds = %.thread, %bb.j
  %i.aw = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #23
  %i.ax = call noundef i32 @isatty(i32 noundef 0) #23
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !649
  %i.ba = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr null, ptr nonnull %i.q) #23, !noalias !649, !srcloc !650
  %i.bb = extractvalue { ptr, i32, i32 } %i.ba, 0
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !649
  %i.bc = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !651
  %.not.i2.i.i = icmp eq ptr %i.bc, @19
  br i1 %.not.i2.i.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !651
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.m
  %.sroa.71.i.sroa.3.4.copyload.i = load i64, ptr %i.q, align 8, !noalias !651
  %.sroa.71.i.sroa.5.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.71.i.sroa.5.4.copyload.i = load i64, ptr %.sroa.71.i.sroa.5.4..sroa_idx.i, align 8, !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !652
  %i.bd = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %i.p) #23, !noalias !652, !srcloc !650
  %i.be = extractvalue { ptr, i32, i32 } %i.bd, 0
  %.not.i.i21.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i21.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit28.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !652
  %i.bf = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !653
  %.not.i2.i22.i = icmp eq ptr %i.bf, @19
  br i1 %.not.i2.i22.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !653
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit28.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i
  %.sroa.71.i19.sroa.3.4.copyload.i = load ptr, ptr %i.p, align 8, !noalias !653 ; 2 uses
  %.sroa.71.i19.sroa.5.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.138.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.138.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.71.i19.sroa.5.4..sroa_idx.i, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !652
  store ptr %.sroa.71.i19.sroa.3.4.copyload.i, ptr %i.r, align 8
  %.cast.i = ptrtoint ptr %.sroa.71.i19.sroa.3.4.copyload.i to i64
  %i.bg = icmp eq i64 %.sroa.71.i.sroa.3.4.copyload.i, %.cast.i
  %i.bh = load i64, ptr %.sroa.138.8..sroa_idx.i, align 8
  %.not.i = icmp eq i64 %.sroa.71.i.sroa.5.4.copyload.i, %i.bh
  %or.cond.i = select i1 %i.bg, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %.split.thread

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit28.i
  %i.bi = call noundef i64 @_RNvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB2_15FileInformation9file_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r) #23 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.split.thread, label %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECskBwnbTnIhiv_6uu_cat.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.r
  %i.bk = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 8 to ptr), ptr null, ptr null, ptr nonnull inttoptr (i64 1 to ptr)) #24, !noalias !654, !srcloc !16
  %i.bl = extractvalue { ptr, i32, i32 } %i.bk, 0 ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %.not.i.i.i.i = icmp sle ptr %i.bl, inttoptr (i64 -4096 to ptr)
  %i.bn = icmp sge ptr %i.bl, null
  %.sroa.0.0.i.i.i.not.i = or i1 %.not.i.i.i.i, %i.bn ; 2 uses
  %i.bo = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 8 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull inttoptr (i64 1 to ptr)) #24, !noalias !655, !srcloc !16
  %i.bp = extractvalue { ptr, i32, i32 } %i.bo, 0 ; 3 uses
  %.not.i.i.i29.i = icmp sgt ptr %i.bp, inttoptr (i64 -4096 to ptr)
  %i.bq = icmp slt ptr %i.bp, null
  %.sroa.0.0.i.i.i30.i = and i1 %.not.i.i.i29.i, %i.bq
  %i.br = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 3 to ptr)) #24
  %i.bs = extractvalue { ptr, i32, i32 } %i.br, 0 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %.not.i.i.i32.i = icmp sle ptr %i.bs, inttoptr (i64 -4096 to ptr)
  %i.bu = icmp sge ptr %i.bs, null
  %.sroa.0.0.i.i.not.i.i = or i1 %.not.i.i.i32.i, %i.bu
  %i.bv = and i64 %i.bt, 1024
  %.sroa.02.01.i.i = icmp ne i64 %i.bv, 0
  %.sroa.02.0.i.i = and i1 %.sroa.0.0.i.i.not.i.i, %.sroa.02.01.i.i ; 2 uses
  br i1 %.sroa.0.0.i.i.i30.i, label %bb.s, label %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i

bb.s:                                             ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECskBwnbTnIhiv_6uu_cat.exit.i
  br i1 %.sroa.02.0.i.i, label %.split, label %.split.thread

_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECskBwnbTnIhiv_6uu_cat.exit.i
  br i1 %.sroa.02.0.i.i, label %.split, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i
  br i1 %.sroa.0.0.i.i.i.not.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit, label %.split.thread

.split.thread:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit28.i, %bb.r, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread

.split:                                           ; preds = %bb.s, %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i
  %i.bw = icmp sgt ptr %i.bl, inttoptr (i64 -1 to ptr)
  %i.bx = icmp ule i64 %i.bi, %i.bm
  %i.by = and i1 %i.bw, %i.bx
  %.sroa.0.0.i.i = and i1 %.sroa.0.0.i.i.i.not.i, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %.sroa.0.0.i.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread, label %bb.v

_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit: ; preds = %bb.t
  %.not122 = icmp slt ptr %i.bl, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %.not122, label %bb.v, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread

bb.u:                                             ; preds = %bb.j
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.en

bb.v:                                             ; preds = %.split, %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.en

_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread: ; preds = %bb.p, %bb.q, %bb.o, %bb.n, %.split.thread, %.split, %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.aw, ptr %i.z, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ca = zext i1 %i.ay to i8
  store i8 %i.ca, ptr %i.bz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !range !7, !alias.scope !658, !noundef !8 ; 2 uses
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !range !7, !alias.scope !658 ; 2 uses
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond.i31 = select i1 %i.cd, i1 true, i1 %i.cg
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !range !7, !alias.scope !658
  %i.cj = trunc nuw i8 %i.ci to i1                ; 3 uses
  %or.cond5.i = select i1 %or.cond.i31, i1 true, i1 %i.cj
  %i.ck = load i8, ptr %2, align 1, !range !7, !alias.scope !658
  %i.cl = trunc nuw i8 %i.ck to i1
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !range !9, !alias.scope !658
  %4 = icmp ne i8 %i.cn, 0                        ; 2 uses
  %or.cond10.not.i = select i1 %or.cond7.i, i1 true, i1 %4
  br i1 %or.cond10.not.i, label %bb.w, label %bb.bs

bb.w:                                             ; preds = %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinNtB10_6StdoutEB6_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31744) %i.o, i8 0, i64 31744, i1 false), !noalias !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !663
  %i.co = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23, !noalias !664
  store ptr %i.co, ptr %i.n, align 8, !noalias !663
  %i.cp = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #23, !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !663
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !666
  %i.cq = call noundef dereferenceable_or_null(32768) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32768, i64 noundef range(i64 1, 9) 1) #23, !noalias !666 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.x, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCskBwnbTnIhiv_6uu_cat.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 32768) #26, !noalias !667
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCskBwnbTnIhiv_6uu_cat.exit.i.i: ; preds = %bb.w
  store i64 32768, ptr %i.m, align 8, !alias.scope !665, !noalias !663
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.cq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !665, !noalias !663
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !665, !noalias !663
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 0, ptr %i.cs, align 8, !alias.scope !665, !noalias !663
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  store ptr %i.cp, ptr %i.ct, align 8, !alias.scope !665, !noalias !663
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 57 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 58 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %..i.i = select i1 %i.cj, ptr @4, ptr @3        ; 2 uses
  %.45.i.i = select i1 %i.cj, i64 2, i64 1        ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br label %.backedge80.i.i

.backedge80.i.i:                                  ; preds = %.backedge80.i.i.backedge, %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCskBwnbTnIhiv_6uu_cat.exit.i.i
  %i.db = call { i64, ptr } @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull %i.o, i64 noundef 31744) #23, !noalias !668 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = extractvalue { i64, ptr } %i.db, 1      ; 10 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 10 uses
  %i.df = trunc nuw i64 %i.dc to i1
  br i1 %i.df, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %.backedge80.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.dg = and i64 %i.de, 3                        ; 2 uses
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.aa
    i64 0, label %bb.ab
    i64 1, label %bb.ac
  ], !prof !13

bb.z:                                             ; preds = %bb.y
  %i.dh = lshr i64 %i.de, 32
  %i.di = trunc nuw i64 %i.dh to i32
  %i.dj = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23, !noalias !668
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !668, !nonnull !8, !noundef !8
  %i.dm = call noundef i8 %i.dl(i32 noundef %i.di) #23, !noalias !668, !inline_history !544
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dn = lshr i64 %i.de, 32
  %i.do = icmp ult ptr %i.dd, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.dn to i8 ; 2 uses
  %i.dp = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.do)
  call void @llvm.assume(i1 %i.dp)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ab:                                            ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dr = load i8, ptr %i.dq, align 8, !range !14, !noalias !668, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ac:                                            ; preds = %bb.y
  %i.ds = getelementptr i8, ptr %i.dd, i64 31
  %i.dt = load i8, ptr %i.ds, align 8, !range !14, !noalias !668, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sroa.0.0.i.i.i = phi i8 [ %i.dm, %bb.z ], [ %switch.idx.cast.i.i.i.i.i, %bb.aa ], [ %i.dr, %bb.ab ], [ %i.dt, %bb.ac ]
  %i.du = icmp eq i8 %.sroa.0.0.i.i.i, 35
  br i1 %i.du, label %bb.bp, label %bb.bo

bb.ad:                                            ; preds = %.backedge80.i.i
  %i.dv = icmp eq ptr %i.dd, null
  br i1 %i.dv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 -1, ptr %0, align 8, !alias.scope !669
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.dw = icmp ult ptr %i.dd, inttoptr (i64 31745 to ptr)
  br i1 %i.dw, label %.preheader.i.i, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.de, i64 noundef 31744, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !noalias !668
  unreachable

.loopexit.i.i:                                    ; preds = %.backedge.i.i, %bb.bf
  %i.dx = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m) #23, !noalias !668 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i32, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i: ; preds = %.loopexit.i.i
  %i.dy = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct) #23, !noalias !668 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.dy, null
  br i1 %.not41.i.i, label %.backedge80.i.i.backedge, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i

.preheader.i.i:                                   ; preds = %bb.af, %.backedge.i.i
  %.sroa.01.0162.i.i = phi i64 [ %.sroa.01.0.be.i.i, %.backedge.i.i ], [ 0, %bb.af ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0162.i.i ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !663, !noundef !8
  %i.eb = icmp eq i8 %i.ea, 10
  br i1 %i.eb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !663
  %i.ec = load i8, ptr %i.bz, align 8, !range !7, !alias.scope !670, !noundef !8
  %i.ed = trunc nuw i8 %i.ec to i1
  call fastcc void @_RINvCskBwnbTnIhiv_6uu_cat14write_new_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext %i.ed) #23, !noalias !669
  %i.ee = load i64, ptr %i.l, align 8, !range !671, !noalias !663, !noundef !8
  %.not42.i.i = icmp eq i64 %i.ee, -1
  br i1 %.not42.i.i, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %.preheader.i.i
  %i.ef = load i8, ptr %i.cu, align 1, !range !7, !alias.scope !672, !noundef !8
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.am, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !663
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit.i

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !663
  store i8 1, ptr %i.cv, align 8, !alias.scope !672
  %i.eh = add nuw nsw i64 %.sroa.01.0162.i.i, 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.bj, %bb.ak
  %.sroa.01.0.be.i.i = phi i64 [ %i.gh, %bb.bj ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.ei = icmp ult i64 %.sroa.01.0.be.i.i, %i.de
  br i1 %i.ei, label %.preheader.i.i, label %.loopexit.i.i

bb.al:                                            ; preds = %bb.ai
  %.pre.i.i = load i8, ptr %i.cv, align 8, !range !7, !alias.scope !672
  %5 = trunc nuw i8 %.pre.i.i to i1
  %i.ej = select i1 %5, i1 %4, i1 false
  store i8 0, ptr %i.cw, align 2, !alias.scope !672
  br i1 %i.ej, label %bb.ar, label %bb.aq

bb.am:                                            ; preds = %bb.ai
  %i.ek = load i64, ptr %i.m, align 8, !range !11, !noalias !663, !noundef !8
  %i.el = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !663, !noundef !8 ; 4 uses
  %i.em = icmp sgt i64 %i.el, -1
  call void @llvm.assume(i1 %i.em)
  %i.en = sub nsw i64 %i.ek, %i.el
  %i.eo = icmp ugt i64 %i.en, 1
  br i1 %i.eo, label %bb.ao, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %i.ep = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1) #22, !noalias !668 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !663, !nonnull !8, !noundef !8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.el
  store i8 13, ptr %i.er, align 1, !noalias !668
  %i.es = add nuw i64 %i.el, 1
  store i64 %i.es, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !663
  br label %.thread.i.i

bb.ap:                                            ; preds = %bb.an
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !669
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ep, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !alias.scope !669
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit.i

.thread.i.i:                                      ; preds = %bb.ao, %bb.an
  store i8 0, ptr %i.cu, align 1, !alias.scope !672
  store i8 0, ptr %i.cv, align 8, !alias.scope !672
  store i8 0, ptr %i.cw, align 2, !alias.scope !672
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i, %.thread.i.i, %bb.al
  %i.et = sub nuw nsw i64 %i.de, %.sroa.01.0162.i.i
  %i.eu = call fastcc { i64, ptr } @_RINvCskBwnbTnIhiv_6uu_cat9write_endINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.et, i8 %i.cc, i8 %i.cf) #23, !noalias !668 ; 2 uses
  %i.ev = extractvalue { i64, ptr } %i.eu, 0
  %i.ew = extractvalue { i64, ptr } %i.eu, 1      ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = trunc nuw i64 %i.ev to i1
  br i1 %i.ey, label %bb.bc, label %bb.bd

bb.ar:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.ez = load i64, ptr %i.cx, align 8, !alias.scope !676, !noundef !8 ; 4 uses
  %i.fa = icmp ugt i64 %i.ez, 32
  br i1 %i.fa, label %bb.at, label %bb.as, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.fb = sub nuw nsw i64 32, %i.ez               ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 %i.ez ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.fd = load i64, ptr %i.m, align 8, !range !11, !alias.scope !678, !noalias !663, !noundef !8
  %i.fe = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !678, !noalias !663, !noundef !8 ; 4 uses
  %i.ff = icmp sgt i64 %i.fe, -1
  call void @llvm.assume(i1 %i.ff)
  %i.fg = sub nsw i64 %i.fd, %i.fe
  %i.fh = icmp ult i64 %i.fb, %i.fg
  br i1 %i.fh, label %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.thread.i.i, label %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i, !prof !12

_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.thread.i.i: ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.fi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !680, !noalias !663, !nonnull !8, !noundef !8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull readonly align 1 %i.fc, i64 range(i64 0, 31745) %i.fb, i1 false), !noalias !681
  %i.fk = add nuw i64 %i.fe, %i.fb
  store i64 %i.fk, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !680, !noalias !663
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ez, i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !noalias !682
  unreachable

_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i: ; preds = %bb.as
  %i.fl = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef range(i64 0, 31745) %i.fb) #22, !noalias !668 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.fl, null
  br i1 %.not39.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !669
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !alias.scope !669
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit.i

bb.av:                                            ; preds = %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i, %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.fm = load i64, ptr %i.cz, align 8, !alias.scope !684, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.fn = load i64, ptr %i.cy, align 8, !alias.scope !687, !noundef !8 ; 3 uses
  %i.fo = icmp ugt i64 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ba, %bb.av
  %i.fp = add i64 %i.fn, -1                       ; 5 uses
  %i.fq = icmp ult i64 %i.fp, 32
  br i1 %i.fq, label %bb.aw, label %bb.ax

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.ba
  %.sroa.0.020.i.i.i.i = phi i64 [ %i.fr, %bb.ba ], [ %i.fm, %bb.av ] ; 2 uses
  %i.fr = add i64 %.sroa.0.020.i.i.i.i, -1        ; 4 uses
  %i.fs = icmp ult i64 %.sroa.0.020.i.i.i.i, 33
  br i1 %i.fs, label %bb.ay, label %bb.az

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 %i.fp
  store i8 49, ptr %i.ft, align 1, !alias.scope !688
  store i64 %i.fp, ptr %i.cy, align 8, !alias.scope !687
  br label %_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #21, !noalias !689
  unreachable

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 %i.fr ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !688, !noundef !8 ; 2 uses
  %i.fw = icmp eq i8 %i.fv, 57
  br i1 %i.fw, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #21, !noalias !689
  unreachable

bb.ba:                                            ; preds = %bb.ay
  store i8 48, ptr %i.fu, align 1, !alias.scope !688
  %i.fx = icmp ugt i64 %i.fr, %i.fn
  br i1 %i.fx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.fy = add i8 %i.fv, 1
  store i8 %i.fy, ptr %i.fu, align 1, !alias.scope !688
  %.pre.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !684
  br label %_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i

_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i: ; preds = %bb.bb, %bb.aw
  %i.fz = phi i64 [ %i.fp, %bb.aw ], [ %.pre.i.i.i, %bb.bb ]
  %i.ga = load i64, ptr %i.cx, align 8, !alias.scope !684, !noundef !8
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.fz, i64 %i.ga)
  store i64 %..i.i.i.i, ptr %i.cx, align 8, !alias.scope !684
  br label %bb.aq

bb.bc:                                            ; preds = %bb.aq
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !669
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ew, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !alias.scope !669
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit.i

bb.bd:                                            ; preds = %bb.aq
  %i.gb = add i64 %.sroa.01.0162.i.i, %i.ex       ; 5 uses
  %i.gc = icmp eq i64 %i.gb, %i.de
  br i1 %i.gc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gd = icmp ult i64 %i.gb, %i.de
  br i1 %i.gd, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  store i8 0, ptr %i.cv, align 8, !alias.scope !672
  br label %.loopexit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ge = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gb
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !663, !noundef !8
  switch i8 %i.gf, label %bb.bn [
    i8 13, label %bb.bi
    i8 10, label %bb.bk
  ], !prof !690

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.gb, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !668
  unreachable

bb.bi:                                            ; preds = %bb.bg
  store i8 1, ptr %i.cu, align 1, !alias.scope !672
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvCskBwnbTnIhiv_6uu_cat17write_end_of_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit.i.i, %bb.bi
  %i.gg = add nuw nsw i64 %.sroa.01.0162.i.i, 1
  %i.gh = add i64 %i.gg, %i.ex
  br label %.backedge.i.i

bb.bk:                                            ; preds = %bb.bg
  %i.gi = load i8, ptr %i.bz, align 8, !range !7, !alias.scope !670, !noundef !8
  %i.gj = trunc nuw i8 %i.gi to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.gk = load i64, ptr %i.m, align 8, !range !11, !alias.scope !693, !noalias !663, !noundef !8
  %i.gl = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !693, !noalias !663, !noundef !8 ; 4 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  call void @llvm.assume(i1 %i.gm)
  %i.gn = sub nsw i64 %i.gk, %i.gl
  %i.go = icmp ult i64 %.45.i.i, %i.gn
  br i1 %i.go, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.i.i.i, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i: ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
end_hunk_0
begin_hunk_1_@_RNvCskBwnbTnIhiv_6uu_cat8cat_path:bb.a
  %i.hl = extractvalue { ptr, i32, i32 } %i.hk, 0 ; 4 uses
  %i.hm = ptrtoint ptr %i.hl to i64
  %.not.i.i3.i.i.i = icmp sgt ptr %i.hl, inttoptr (i64 -4096 to ptr)
  %i.hn = icmp slt ptr %i.hl, null
  %.sroa.0.0.i.i4.i.i.i = and i1 %.not.i.i3.i.i.i, %i.hn
  br i1 %.sroa.0.0.i.i4.i.i.i, label %.loopexit.i12.i, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i: ; preds = %bb.bu
  %i.ho = icmp eq ptr %i.hl, null
  br i1 %i.ho, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !701
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.j, i64 noundef %i.hm) #25
  %i.hp = load i8, ptr %i.j, align 8, !range !7, !noalias !701, !noundef !8
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hr = load i8, ptr %i.hg, align 1, !range !7, !noalias !701, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !701
  %.not2.i.i.i = icmp eq i8 %i.hr, 0
  br i1 %.not2.i.i.i, label %bb.bu, label %.loopexit.i12.i

bb.bx:                                            ; preds = %bb.bv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !701, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !701
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !706
  %.sroa.4.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %.sroa.4.0..sroa_idx.i13.i, align 8, !alias.scope !706
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit

.loopexit.i12.i:                                  ; preds = %bb.bw, %bb.bu, %_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB7_2io4pipe10PipeReaderNtB1y_10PipeWriterEEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoNtNtB1A_5stdio5StdinNtB44_6StdoutE0E0zECskBwnbTnIhiv_6uu_cat.exit.i.i.i
  call fastcc void @_RINvCskBwnbTnIhiv_6uu_cat16print_unbufferedNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #22
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit

bb.by:                                            ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !706
  br label %_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit

_RINvCskBwnbTnIhiv_6uu_cat10cat_handleNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit: ; preds = %bb.bx, %.loopexit.i12.i, %bb.by, %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEB2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.en

bb.bz:                                            ; preds = %bb.k
  %i.hu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hv, ptr %.sroa.426.0..sroa_idx, align 8
  br label %bb.em

bb.ca:                                            ; preds = %bb.k
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !range !23, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i32 %i.hx, ptr %i.y, align 4
  %i.hy = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23 ; 0 uses
  %i.hz = call noundef range(i32 0, -1) i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.y) #23, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !708
  %i.ia = zext i32 %i.hz to i64
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr %i.ib, ptr nonnull %i.h) #23, !noalias !709, !srcloc !650
  %i.id = extractvalue { ptr, i32, i32 } %i.ic, 0
  %.not.i.i.i35 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i35, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i38, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !708
  %i.ie = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !710
  %.not.i2.i.i36 = icmp eq ptr %i.ie, @19
  br i1 %.not.i2.i.i36, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread, label %bb.cc, !prof !12

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !707
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i38: ; preds = %bb.ca
  %.sroa.73.i.sroa.3.4.copyload.i = load i64, ptr %i.h, align 8, !noalias !710
  %.sroa.73.i.sroa.5.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.73.i.sroa.5.4.copyload.i = load i64, ptr %.sroa.73.i.sroa.5.4..sroa_idx.i, align 8, !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !711
  %i.if = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %i.g) #23, !noalias !712, !srcloc !650
  %i.ig = extractvalue { ptr, i32, i32 } %i.if, 0
  %.not.i.i20.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i20.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit26.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !711
  %i.ih = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !713
  %.not.i2.i21.i = icmp eq ptr %i.ih, @19
  br i1 %.not.i2.i21.i, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread, label %bb.ce, !prof !12

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !714
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit26.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit.i38
  %.sroa.71.i.sroa.3.4.copyload.i39 = load ptr, ptr %i.g, align 8, !noalias !713 ; 2 uses
  %.sroa.71.i.sroa.5.4..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.138.8..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.138.8..sroa_idx.i41, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.71.i.sroa.5.4..sroa_idx.i40, i64 136, i1 false), !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !711
  store ptr %.sroa.71.i.sroa.3.4.copyload.i39, ptr %i.i, align 8, !noalias !715
  %.cast.i42 = ptrtoint ptr %.sroa.71.i.sroa.3.4.copyload.i39 to i64
  %i.ii = icmp eq i64 %.sroa.73.i.sroa.3.4.copyload.i, %.cast.i42
  %i.ij = load i64, ptr %.sroa.138.8..sroa_idx.i41, align 8, !noalias !715
  %.not.i43 = icmp eq i64 %.sroa.73.i.sroa.5.4.copyload.i, %i.ij
  %or.cond.i44 = select i1 %i.ii, i1 %.not.i43, i1 false
  br i1 %or.cond.i44, label %bb.cf, label %.split119.thread

bb.cf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit26.i
  %i.ik = call noundef i64 @_RNvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB2_15FileInformation9file_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.i) #23 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %.split119.thread, label %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtCs2vKOLqTMYjT_3std2fs4FileECskBwnbTnIhiv_6uu_cat.exit.i

_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtCs2vKOLqTMYjT_3std2fs4FileECskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.cf
  %i.im = call noundef range(i32 0, -1) i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.y) #23, !noalias !716
  %i.in = zext i32 %i.im to i64
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 8 to ptr), ptr %i.io, ptr null, ptr nonnull inttoptr (i64 1 to ptr)) #24, !noalias !717, !srcloc !16
  %i.iq = extractvalue { ptr, i32, i32 } %i.ip, 0 ; 5 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %.not.i.i.i.i46 = icmp sle ptr %i.iq, inttoptr (i64 -4096 to ptr)
  %i.is = icmp sge ptr %i.iq, null
  %.sroa.0.0.i.i.i.not.i47 = or i1 %.not.i.i.i.i46, %i.is ; 2 uses
  %i.it = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 8 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr null, ptr nonnull inttoptr (i64 1 to ptr)) #24, !noalias !718, !srcloc !16
  %i.iu = extractvalue { ptr, i32, i32 } %i.it, 0 ; 3 uses
  %.not.i.i.i27.i = icmp sgt ptr %i.iu, inttoptr (i64 -4096 to ptr)
  %i.iv = icmp slt ptr %i.iu, null
  %.sroa.0.0.i.i.i28.i = and i1 %.not.i.i.i27.i, %i.iv
  %i.iw = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 3 to ptr)) #24
  %i.ix = extractvalue { ptr, i32, i32 } %i.iw, 0 ; 3 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %.not.i.i.i30.i = icmp sle ptr %i.ix, inttoptr (i64 -4096 to ptr)
  %i.iz = icmp sge ptr %i.ix, null
  %.sroa.0.0.i.i.not.i.i48 = or i1 %.not.i.i.i30.i, %i.iz
  %i.ja = and i64 %i.iy, 1024
  %.sroa.02.01.i.i49 = icmp ne i64 %i.ja, 0
  %.sroa.02.0.i.i50 = and i1 %.sroa.0.0.i.i.not.i.i48, %.sroa.02.01.i.i49 ; 2 uses
  br i1 %.sroa.0.0.i.i.i28.i, label %bb.cg, label %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i51

bb.cg:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtCs2vKOLqTMYjT_3std2fs4FileECskBwnbTnIhiv_6uu_cat.exit.i
  br i1 %.sroa.02.0.i.i50, label %.split119, label %.split119.thread

_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i51: ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtCs2vKOLqTMYjT_3std2fs4FileECskBwnbTnIhiv_6uu_cat.exit.i
  br i1 %.sroa.02.0.i.i50, label %.split119, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i51
  br i1 %.sroa.0.0.i.i.i.not.i47, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit, label %.split119.thread

.split119.thread:                                 ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorEECskBwnbTnIhiv_6uu_cat.exit26.i, %bb.cf, %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !715
  br label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread

.split119:                                        ; preds = %bb.cg, %_RINvNtNtCscC7ZI6NG8RX_6rustix2fs2fd4seekRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECskBwnbTnIhiv_6uu_cat.exit.i51
  %i.jb = icmp sgt ptr %i.iq, inttoptr (i64 -1 to ptr)
  %i.jc = icmp ule i64 %i.ik, %i.ir
  %i.jd = and i1 %i.jb, %i.jc
  %.sroa.0.0.i.i52 = and i1 %.sroa.0.0.i.i.i.not.i47, %i.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !715
  br i1 %.sroa.0.0.i.i52, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread, label %bb.ci

_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit: ; preds = %bb.ch
  %.not123 = icmp slt ptr %i.iq, %i.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !715
  br i1 %.not123, label %bb.ci, label %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread

bb.ci:                                            ; preds = %.split119, %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit
  store i64 -9223372036854775804, ptr %0, align 8
  %i.je = call noundef i32 @close(i32 noundef %i.hx) #23 ; 0 uses
  br label %bb.em

_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread: ; preds = %bb.cd, %bb.ce, %bb.cc, %bb.cb, %.split119.thread, %.split119, %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 %i.hx, ptr %i.w, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store i8 0, ptr %i.jf, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !range !7, !alias.scope !721, !noundef !8 ; 2 uses
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !range !7, !alias.scope !721 ; 2 uses
  %i.jl = trunc nuw i8 %i.jk to i1
  %or.cond.i53 = select i1 %i.ji, i1 true, i1 %i.jl
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.jn = load i8, ptr %i.jm, align 1, !range !7, !alias.scope !721
  %i.jo = trunc nuw i8 %i.jn to i1                ; 3 uses
  %or.cond5.i54 = select i1 %or.cond.i53, i1 true, i1 %i.jo
  %i.jp = load i8, ptr %2, align 1, !range !7, !alias.scope !721
  %i.jq = trunc nuw i8 %i.jp to i1
  %or.cond7.i55 = select i1 %or.cond5.i54, i1 true, i1 %i.jq
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.js = load i8, ptr %i.jr, align 1, !range !9, !alias.scope !721
  %6 = icmp ne i8 %i.js, 0                        ; 2 uses
  %or.cond10.not.i56 = select i1 %or.cond7.i55, i1 true, i1 %6
  br i1 %or.cond10.not.i56, label %bb.cj, label %bb.ef

bb.cj:                                            ; preds = %_RINvNtNtCskBwnbTnIhiv_6uu_cat8platform4unix17is_safe_overwriteNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB12_2io5stdio6StdoutEB6_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31744) %i.f, i8 0, i64 31744, i1 false), !noalias !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !726
  %i.jt = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23, !noalias !727
  store ptr %i.jt, ptr %i.e, align 8, !noalias !726
  %i.ju = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #23, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !726
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !729
  %i.jv = call noundef dereferenceable_or_null(32768) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32768, i64 noundef range(i64 1, 9) 1) #23, !noalias !729 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.ck, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCskBwnbTnIhiv_6uu_cat.exit.i.i65

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 32768) #26, !noalias !730
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCskBwnbTnIhiv_6uu_cat.exit.i.i65: ; preds = %bb.cj
  store i64 32768, ptr %i.d, align 8, !alias.scope !728, !noalias !726
  %.sroa.4.0..sroa_idx.i.i.i66 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.jv, ptr %.sroa.4.0..sroa_idx.i.i.i66, align 8, !alias.scope !728, !noalias !726
  %.sroa.5.0..sroa_idx.i.i.i67 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i67, align 8, !alias.scope !728, !noalias !726
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.jx, align 8, !alias.scope !728, !noalias !726
  %i.jy = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.ju, ptr %i.jy, align 8, !alias.scope !728, !noalias !726
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 57 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 58 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 48
  %..i.i68 = select i1 %i.jo, ptr @4, ptr @3      ; 2 uses
  %.45.i.i69 = select i1 %i.jo, i64 2, i64 1      ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.backedge80.i.i88

.backedge80.i.i88:                                ; preds = %.backedge80.i.i88.backedge, %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCskBwnbTnIhiv_6uu_cat.exit.i.i65
  %i.kg = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull %i.f, i64 noundef 31744) #23, !noalias !731 ; 2 uses
  %i.kh = extractvalue { i64, ptr } %i.kg, 0
  %i.ki = extractvalue { i64, ptr } %i.kg, 1      ; 10 uses
  %i.kj = ptrtoint ptr %i.ki to i64               ; 10 uses
  %i.kk = trunc nuw i64 %i.kh to i1
  br i1 %i.kk, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %.backedge80.i.i88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
  %i.kl = and i64 %i.kj, 3                        ; 2 uses
  switch i64 %i.kl, label %default.unreachable [
    i64 2, label %bb.cm
    i64 3, label %bb.cn
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ], !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.km = lshr i64 %i.kj, 32
  %i.kn = trunc nuw i64 %i.km to i32
  %i.ko = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23, !noalias !731
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !731, !nonnull !8, !noundef !8
  %i.kr = call noundef i8 %i.kq(i32 noundef %i.kn) #23, !noalias !731, !inline_history !609
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108

bb.cn:                                            ; preds = %bb.cl
  %i.ks = lshr i64 %i.kj, 32
  %i.kt = icmp ult ptr %i.ki, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i113 = trunc i64 %i.ks to i8 ; 2 uses
  %i.ku = icmp ne i8 %switch.idx.cast.i.i.i.i.i113, -1
  call void @llvm.assume(i1 %i.kt)
  call void @llvm.assume(i1 %i.ku)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108

bb.co:                                            ; preds = %bb.cl
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kw = load i8, ptr %i.kv, align 8, !range !14, !noalias !731, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108

bb.cp:                                            ; preds = %bb.cl
  %i.kx = getelementptr i8, ptr %i.ki, i64 31
  %i.ky = load i8, ptr %i.kx, align 8, !range !14, !noalias !731, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i108: ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.sroa.0.0.i.i.i109 = phi i8 [ %i.kr, %bb.cm ], [ %switch.idx.cast.i.i.i.i.i113, %bb.cn ], [ %i.kw, %bb.co ], [ %i.ky, %bb.cp ]
  %i.kz = icmp eq i8 %.sroa.0.0.i.i.i109, 35
  br i1 %i.kz, label %bb.ec, label %bb.eb

bb.cq:                                            ; preds = %.backedge80.i.i88
  %i.la = icmp eq ptr %i.ki, null
  br i1 %i.la, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i64 -1, ptr %0, align 8, !alias.scope !732
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

bb.cs:                                            ; preds = %bb.cq
  %i.lb = icmp ult ptr %i.ki, inttoptr (i64 31745 to ptr)
  br i1 %i.lb, label %.preheader.i.i70, label %bb.ct, !prof !15

bb.ct:                                            ; preds = %bb.cs
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kj, i64 noundef 31744, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !noalias !731
  unreachable

.loopexit.i.i81:                                  ; preds = %.backedge.i.i79, %bb.ds
  %i.lc = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #23, !noalias !731 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i82, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i86, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i83

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.i.i86: ; preds = %.loopexit.i.i81
  %i.ld = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jy) #23, !noalias !731 ; 2 uses
  %.not41.i.i87 = icmp eq ptr %i.ld, null
  br i1 %.not41.i.i87, label %.backedge80.i.i88.backedge, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskBwnbTnIhiv_6uu_cat.exit.thread.i.i83

.preheader.i.i70:                                 ; preds = %bb.cs, %.backedge.i.i79
  %.sroa.01.0162.i.i71 = phi i64 [ %.sroa.01.0.be.i.i80, %.backedge.i.i79 ], [ 0, %bb.cs ] ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.0162.i.i71 ; 2 uses
  %i.lf = load i8, ptr %i.le, align 1, !noalias !726, !noundef !8
  %i.lg = icmp eq i8 %i.lf, 10
  br i1 %i.lg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.preheader.i.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !726
  %i.lh = load i8, ptr %i.jf, align 4, !range !7, !alias.scope !733, !noundef !8
  %i.li = trunc nuw i8 %i.lh to i1
  call fastcc void @_RINvCskBwnbTnIhiv_6uu_cat14write_new_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext %i.li) #23, !noalias !732
  %i.lj = load i64, ptr %i.c, align 8, !range !671, !noalias !726, !noundef !8
  %.not42.i.i107 = icmp eq i64 %i.lj, -1
  br i1 %.not42.i.i107, label %bb.cx, label %bb.cw

bb.cv:                                            ; preds = %.preheader.i.i70
  %i.lk = load i8, ptr %i.jz, align 1, !range !7, !alias.scope !734, !noundef !8
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.cz, label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !726
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

bb.cx:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !726
  store i8 1, ptr %i.ka, align 8, !alias.scope !734
  %i.lm = add nuw nsw i64 %.sroa.01.0162.i.i71, 1
  br label %.backedge.i.i79

.backedge.i.i79:                                  ; preds = %bb.dw, %bb.cx
  %.sroa.01.0.be.i.i80 = phi i64 [ %i.nm, %bb.dw ], [ %i.lm, %bb.cx ] ; 2 uses
  %i.ln = icmp ult i64 %.sroa.01.0.be.i.i80, %i.kj
  br i1 %i.ln, label %.preheader.i.i70, label %.loopexit.i.i81

bb.cy:                                            ; preds = %bb.cv
  %.pre.i.i72 = load i8, ptr %i.ka, align 8, !range !7, !alias.scope !734
  %7 = trunc nuw i8 %.pre.i.i72 to i1
  %i.lo = select i1 %7, i1 %6, i1 false
  store i8 0, ptr %i.kb, align 2, !alias.scope !734
  br i1 %i.lo, label %bb.de, label %bb.dd

bb.cz:                                            ; preds = %bb.cv
  %i.lp = load i64, ptr %i.d, align 8, !range !11, !noalias !726, !noundef !8
  %i.lq = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i67, align 8, !noalias !726, !noundef !8 ; 4 uses
  %i.lr = icmp sgt i64 %i.lq, -1
  call void @llvm.assume(i1 %i.lr)
  %i.ls = sub nsw i64 %i.lp, %i.lq
  %i.lt = icmp ugt i64 %i.ls, 1
  br i1 %i.lt, label %bb.db, label %bb.da, !prof !12

bb.da:                                            ; preds = %bb.cz
  %i.lu = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1) #22, !noalias !731 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i104, label %.thread.i.i106, label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.lv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i66, align 8, !noalias !726, !nonnull !8, !noundef !8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lq
  store i8 13, ptr %i.lw, align 1, !noalias !731
  %i.lx = add nuw i64 %i.lq, 1
  store i64 %i.lx, ptr %.sroa.5.0..sroa_idx.i.i.i67, align 8, !noalias !726
  br label %.thread.i.i106

bb.dc:                                            ; preds = %bb.da
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !732
  %.sroa.425.0..sroa_idx.i.i105 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lu, ptr %.sroa.425.0..sroa_idx.i.i105, align 8, !alias.scope !732
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

.thread.i.i106:                                   ; preds = %bb.db, %bb.da
  store i8 0, ptr %i.jz, align 1, !alias.scope !734
  store i8 0, ptr %i.ka, align 8, !alias.scope !734
  store i8 0, ptr %i.kb, align 2, !alias.scope !734
  br label %bb.dd

bb.dd:                                            ; preds = %_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i98, %.thread.i.i106, %bb.cy
  %i.ly = sub nuw nsw i64 %i.kj, %.sroa.01.0162.i.i71
  %i.lz = call fastcc { i64, ptr } @_RINvCskBwnbTnIhiv_6uu_cat9write_endINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.le, i64 noundef %i.ly, i8 %i.jh, i8 %i.jk) #23, !noalias !731 ; 2 uses
  %i.ma = extractvalue { i64, ptr } %i.lz, 0
  %i.mb = extractvalue { i64, ptr } %i.lz, 1      ; 2 uses
  %i.mc = ptrtoint ptr %i.mb to i64               ; 2 uses
  %i.md = trunc nuw i64 %i.ma to i1
  br i1 %i.md, label %bb.dp, label %bb.dq

bb.de:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.me = load i64, ptr %i.kc, align 8, !alias.scope !738, !noundef !8 ; 4 uses
  %i.mf = icmp ugt i64 %i.me, 32
  br i1 %i.mf, label %bb.dg, label %bb.df, !prof !10

bb.df:                                            ; preds = %bb.de
  %i.mg = sub nuw nsw i64 32, %i.me               ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 %i.me ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.mi = load i64, ptr %i.d, align 8, !range !11, !alias.scope !740, !noalias !726, !noundef !8
  %i.mj = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i67, align 8, !alias.scope !740, !noalias !726, !noundef !8 ; 4 uses
  %i.mk = icmp sgt i64 %i.mj, -1
  call void @llvm.assume(i1 %i.mk)
  %i.ml = sub nsw i64 %i.mi, %i.mj
  %i.mm = icmp ult i64 %i.mg, %i.ml
  br i1 %i.mm, label %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.thread.i.i103, label %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i94, !prof !12

_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.thread.i.i103: ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.mn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i66, align 8, !alias.scope !742, !noalias !726, !nonnull !8, !noundef !8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mo, ptr nonnull readonly align 1 %i.mh, i64 range(i64 0, 31745) %i.mg, i1 false), !noalias !743
  %i.mp = add nuw i64 %i.mj, %i.mg
  store i64 %i.mp, ptr %.sroa.5.0..sroa_idx.i.i.i67, align 8, !alias.scope !742, !noalias !726
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.me, i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !noalias !744
  unreachable

_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i94: ; preds = %bb.df
  %i.mq = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mh, i64 noundef range(i64 0, 31745) %i.mg) #22, !noalias !731 ; 2 uses
  %.not39.i.i95 = icmp eq ptr %i.mq, null
  br i1 %.not39.i.i95, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i94
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !732
  %.sroa.428.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mq, ptr %.sroa.428.0..sroa_idx.i.i96, align 8, !alias.scope !732
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

bb.di:                                            ; preds = %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.i.i94, %_RINvMCskBwnbTnIhiv_6uu_catNtB3_10LineNumber5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB3_.exit.thread.i.i103
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.mr = load i64, ptr %i.ke, align 8, !alias.scope !746, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.ms = load i64, ptr %i.kd, align 8, !alias.scope !749, !noundef !8 ; 3 uses
  %i.mt = icmp ugt i64 %i.mr, %i.ms
  br i1 %i.mt, label %.lr.ph.i.i.i.i100, label %._crit_edge.i.i.i.i97

._crit_edge.i.i.i.i97:                            ; preds = %bb.dn, %bb.di
  %i.mu = add i64 %i.ms, -1                       ; 5 uses
  %i.mv = icmp ult i64 %i.mu, 32
  br i1 %i.mv, label %bb.dj, label %bb.dk

.lr.ph.i.i.i.i100:                                ; preds = %bb.di, %bb.dn
  %.sroa.0.020.i.i.i.i101 = phi i64 [ %i.mw, %bb.dn ], [ %i.mr, %bb.di ] ; 2 uses
  %i.mw = add i64 %.sroa.0.020.i.i.i.i101, -1     ; 4 uses
  %i.mx = icmp ult i64 %.sroa.0.020.i.i.i.i101, 33
  br i1 %i.mx, label %bb.dl, label %bb.dm

bb.dj:                                            ; preds = %._crit_edge.i.i.i.i97
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 %i.mu
  store i8 49, ptr %i.my, align 1, !alias.scope !750
  store i64 %i.mu, ptr %i.kd, align 8, !alias.scope !749
  br label %_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i98

bb.dk:                                            ; preds = %._crit_edge.i.i.i.i97
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.mu, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #21, !noalias !751
  unreachable

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i100
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 %i.mw ; 3 uses
  %i.na = load i8, ptr %i.mz, align 1, !alias.scope !750, !noundef !8 ; 2 uses
  %i.nb = icmp eq i8 %i.na, 57
  br i1 %i.nb, label %bb.dn, label %bb.do

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i100
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.mw, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #21, !noalias !751
  unreachable

bb.dn:                                            ; preds = %bb.dl
  store i8 48, ptr %i.mz, align 1, !alias.scope !750
  %i.nc = icmp ugt i64 %i.mw, %i.ms
  br i1 %i.nc, label %.lr.ph.i.i.i.i100, label %._crit_edge.i.i.i.i97

bb.do:                                            ; preds = %bb.dl
  %i.nd = add i8 %i.na, 1
  store i8 %i.nd, ptr %i.mz, align 1, !alias.scope !750
  %.pre.i.i.i102 = load i64, ptr %i.kd, align 8, !alias.scope !746
  br label %_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i98

_RNvMCskBwnbTnIhiv_6uu_catNtB2_10LineNumber9increment.exit.i.i98: ; preds = %bb.do, %bb.dj
  %i.ne = phi i64 [ %i.mu, %bb.dj ], [ %.pre.i.i.i102, %bb.do ]
  %i.nf = load i64, ptr %i.kc, align 8, !alias.scope !746, !noundef !8
  %..i.i.i.i99 = call noundef i64 @llvm.umin.i64(i64 %i.ne, i64 %i.nf)
  store i64 %..i.i.i.i99, ptr %i.kc, align 8, !alias.scope !746
  br label %bb.dd

bb.dp:                                            ; preds = %bb.dd
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !732
  %.sroa.431.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mb, ptr %.sroa.431.0..sroa_idx.i.i93, align 8, !alias.scope !732
  br label %_RINvCskBwnbTnIhiv_6uu_cat11print_linesNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i

bb.dq:                                            ; preds = %bb.dd
  %i.ng = add i64 %.sroa.01.0162.i.i71, %i.mc     ; 5 uses
  %i.nh = icmp eq i64 %i.ng, %i.kj
  br i1 %i.nh, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ni = icmp ult i64 %i.ng, %i.kj
  br i1 %i.ni, label %bb.dt, label %bb.du

bb.ds:                                            ; preds = %bb.dq
  store i8 0, ptr %i.ka, align 8, !alias.scope !734
  br label %.loopexit.i.i81

bb.dt:                                            ; preds = %bb.dr
  %i.nj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ng
  %i.nk = load i8, ptr %i.nj, align 1, !noalias !726, !noundef !8
  switch i8 %i.nk, label %bb.ea [
    i8 13, label %bb.dv
    i8 10, label %bb.dx
  ], !prof !690

bb.du:                                            ; preds = %bb.dr
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ng, i64 noundef %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !731
  unreachable

bb.dv:                                            ; preds = %bb.dt
  store i8 1, ptr %i.jz, align 1, !alias.scope !734
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvCskBwnbTnIhiv_6uu_cat17write_end_of_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit.i.i78, %bb.dv
  %i.nl = add nuw nsw i64 %.sroa.01.0162.i.i71, 1
  %i.nm = add i64 %i.nl, %i.mc
  br label %.backedge.i.i79

bb.dx:                                            ; preds = %bb.dt
  %i.nn = load i8, ptr %i.jf, align 4, !range !7, !alias.scope !733, !noundef !8
  %i.no = trunc nuw i8 %i.nn to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.np = load i64, ptr %i.d, align 8, !range !11, !alias.scope !754, !noalias !726, !noundef !8
  %i.nq = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i67, align 8, !alias.scope !754, !noalias !726, !noundef !8 ; 4 uses
  %i.nr = icmp sgt i64 %i.nq, -1
  call void @llvm.assume(i1 %i.nr)
  %i.ns = sub nsw i64 %i.np, %i.nq
  %i.nt = icmp ult i64 %.45.i.i69, %i.ns
  br i1 %i.nt, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i92, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.i.i.i73, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskBwnbTnIhiv_6uu_cat.exit.thread.i.i.i92: ; preds = %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
end_hunk_1
