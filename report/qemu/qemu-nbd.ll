Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-nbd?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %.1232 = phi ptr [ %i.bb, %bb.aa ], [ %.0231, %bb.b ], [ %.0231, %bb.z ]
  %i.bd = load i32, ptr %i.e, align 4
  %i.be = and i32 %i.bd, -3
  store i32 %i.be, ptr %i.e, align 4
  br label %.backedge

bb.ad:                                            ; preds = %bb.b
  br label %.backedge

g_strdup_inline.exit343:                          ; preds = %bb.b
  %i.bf = call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #16 ; 5 uses
  %i.bg = load ptr, ptr @optarg, align 8
  %i.bh = call noalias ptr @g_strdup(ptr noundef %i.bg) #14
  store i32 3, ptr %i.bf, align 8
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 0, ptr %.sroa.287.0..sroa_idx, align 4
  %.sroa.388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %.sroa.388.0..sroa_idx, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr null, ptr %.sroa.489.0..sroa_idx, align 8
  %i.bi = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bf, ptr %i.bj, align 8
  store ptr %.0255, ptr %i.bi, align 8
  br label %.backedge

bb.ae:                                            ; preds = %bb.b
  %i.bk = load ptr, ptr @optarg, align 8          ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1
  %.not322 = icmp eq i8 %i.bl, 47
  br i1 %.not322, label %.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.48) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.ag:                                            ; preds = %bb.b
  br label %.backedge

bb.ah:                                            ; preds = %bb.b
  %i.bm = load ptr, ptr @optarg, align 8          ; 2 uses
  store ptr %i.bm, ptr %3, align 8
  br label %.backedge

bb.ai:                                            ; preds = %bb.b
  %i.bn = load ptr, ptr @optarg, align 8
  %i.bo = call i32 @qemu_strtoi(ptr noundef %i.bn, ptr noundef null, i32 noundef 0, ptr noundef nonnull @shared) #14
  %i.bp = icmp slt i32 %i.bo, 0
  %i.bq = load i32, ptr @shared, align 4
  %i.br = icmp slt i32 %i.bq, 0
  %or.cond = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond, label %bb.aj, label %.backedge

bb.aj:                                            ; preds = %bb.ai
  %i.bs = load ptr, ptr @optarg, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.49, ptr noundef %i.bs) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.ak:                                            ; preds = %bb.b
  %i.bt = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.al:                                            ; preds = %bb.b
  store i1 true, ptr @persistent, align 4
  br label %.backedge

bb.am:                                            ; preds = %bb.b
  %i.bu = load ptr, ptr @optarg, align 8          ; 3 uses
  %i.bv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #17
  %i.bw = icmp ugt i64 %i.bv, 4096
  br i1 %i.bw, label %bb.an, label %.backedge

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.bu) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.ao:                                            ; preds = %bb.b
  %i.bx = load ptr, ptr @optarg, align 8          ; 3 uses
  %i.by = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #17
  %i.bz = icmp ugt i64 %i.by, 4096
  br i1 %i.bz, label %bb.ap, label %.backedge

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.bx) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.aq:                                            ; preds = %bb.b
  store i8 1, ptr %i.r, align 1
  br label %.backedge

bb.ar:                                            ; preds = %bb.b
  %i.ca = load ptr, ptr %1, align 8
  call fastcc void @version(ptr noundef %i.ca)
  call void @exit(i32 noundef 0) #18
  unreachable

bb.as:                                            ; preds = %bb.b
  %i.cb = load ptr, ptr %1, align 8
  call fastcc void @usage(ptr noundef %i.cb)
  call void @exit(i32 noundef 0) #18
  unreachable

bb.at:                                            ; preds = %bb.b
  %i.cc = load ptr, ptr %1, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.52, ptr noundef %i.cc) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.au:                                            ; preds = %bb.b
  %i.cd = load ptr, ptr @optarg, align 8
  call void @user_creatable_process_cmdline(ptr noundef %i.cd) #14
  br label %.backedge

bb.av:                                            ; preds = %bb.b
  %i.ce = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.aw:                                            ; preds = %bb.b
  %i.cf = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.ax:                                            ; preds = %bb.b
  br label %.backedge

bb.ay:                                            ; preds = %bb.b
  %i.cg = load ptr, ptr @optarg, align 8
  call void @trace_opt_parse(ptr noundef %i.cg) #14
  br label %.backedge

bb.az:                                            ; preds = %bb.b
  %i.ch = load ptr, ptr @optarg, align 8
  store ptr %i.ch, ptr @tlsauthz, align 8
  br label %.backedge

bb.ba:                                            ; preds = %bb.b
  store i8 1, ptr %i.q, align 4
  br label %.backedge

bb.bb:                                            ; preds = %bb.b
  br label %.backedge

bb.bc:                                            ; preds = %bb.b
  %i.ci = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.bd:                                            ; preds = %bb.b
  %i.cj = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.be:                                            ; preds = %bb.b
  %i.ck = load ptr, ptr @optarg, align 8
  %i.cl = call i32 @qemu_strtoi(ptr noundef %i.ck, ptr noundef null, i32 noundef 0, ptr noundef nonnull @handshake_limit) #14
  %i.cm = icmp slt i32 %i.cl, 0
  %i.cn = load i32, ptr @handshake_limit, align 4
  %i.co = icmp slt i32 %i.cn, 0
  %or.cond3 = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond3, label %bb.bf, label %.backedge

bb.bf:                                            ; preds = %bb.be
  %i.cp = load ptr, ptr @optarg, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.53, ptr noundef %i.cp) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.bg:                                            ; preds = %bb.b
  %i.cq = load i32, ptr @optind, align 4          ; 2 uses
  br i1 %.0267, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %.not296 = icmp eq i32 %0, %i.cq
  br i1 %.not296, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.54) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.cr = icmp ne ptr %.0250, null
  %i.cs = icmp ne ptr %.0253, null
  %or.cond5 = or i1 %i.cr, %i.cs
  %i.ct = load i64, ptr %i.c, align 8
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.cu
  %i.cv = icmp ne ptr %i.t, null
  %or.cond10 = select i1 %or.cond7, i1 true, i1 %i.cv
  %i.cw = trunc nuw i8 %.0227 to i1
  %or.cond12 = or i1 %or.cond10, %i.cw
  %i.cx = icmp ne ptr %.0245, null
  %or.cond14 = select i1 %or.cond12, i1 true, i1 %i.cx
  %i.cy = icmp ne ptr %.0234, null
  %or.cond16 = select i1 %or.cond14, i1 true, i1 %i.cy
  %i.cz = icmp ne ptr %.0255, null
  %or.cond18 = or i1 %or.cond16, %i.cz
  %i.da = or i8 %.0243, %.0257
  %i.db = or i8 %.0241, %i.da
  %i.dc = or i8 %i.db, %.0239
  %i.dd = icmp ne i8 %i.dc, 0
  %or.cond26 = or i1 %or.cond18, %i.dd
  br i1 %or.cond26, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.55) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.de = trunc nuw i8 %i.s to i1
  br i1 %i.de, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.56) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.bn:                                            ; preds = %bb.bg
  %i.df = sub i32 %0, %i.cq
  %.not294 = icmp eq i32 %i.df, 1
  br i1 %.not294, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.57) #14
  %i.dg = load ptr, ptr %1, align 8
  %i.dh = call i32 (ptr, ...) @error_printf(ptr noundef nonnull @.str.58, ptr noundef %i.dg) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %.not295 = icmp eq ptr %.0250, null
  %spec.store.select = select i1 %.not295, ptr @.str.59, ptr %.0250
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bl, %bb.bp
  %.2252 = phi ptr [ null, %bb.bl ], [ %spec.store.select, %bb.bp ]
  %i.di = call zeroext i1 @qemu_set_log(i32 noundef 32768, ptr noundef nonnull @error_fatal) #14 ; 0 uses
  %i.dj = call i32 @check_socket_activation() #14 ; 3 uses
  %i.dk = icmp eq i32 %i.dj, 0                    ; 2 uses
  br i1 %i.dk, label %setup_address_and_port.exit, label %bb.br

setup_address_and_port.exit:                      ; preds = %bb.bq
  %.not299 = icmp eq ptr %.0229, null             ; 2 uses
  %i.dl = icmp eq ptr %.0360, null
  %i.dm = icmp eq ptr %.0357, null
  %i.dn = select i1 %.not299, i1 %i.dl, i1 false
  %.2362 = select i1 %i.dn, ptr @.str.97, ptr %.0360 ; 2 uses
  %i.do = select i1 %.not299, i1 %i.dm, i1 false
  %.2359 = select i1 %i.do, ptr @.str.98, ptr %.0357 ; 2 uses
  %.not300 = icmp eq ptr %.0260, null
  br i1 %.not300, label %bb.ck, label %bb.by

bb.br:                                            ; preds = %bb.bq
  %.not.i344 = icmp eq ptr %i.t, null
  br i1 %.not.i344, label %bb.bs, label %socket_activation_validate_opts.exit.thread

bb.bs:                                            ; preds = %bb.br
  %.not6.i = icmp eq ptr %.0229, null
  br i1 %.not6.i, label %bb.bt, label %socket_activation_validate_opts.exit.thread

bb.bt:                                            ; preds = %bb.bs
  %.not7.i = icmp eq ptr %.0360, null
  br i1 %.not7.i, label %bb.bu, label %socket_activation_validate_opts.exit.thread

bb.bu:                                            ; preds = %bb.bt
  %.not8.i = icmp eq ptr %.0357, null
  br i1 %.not8.i, label %bb.bv, label %socket_activation_validate_opts.exit.thread

bb.bv:                                            ; preds = %bb.bu
  %.not9.i = icmp ne ptr %.0273, null             ; 2 uses
  %brmerge = or i1 %.not9.i, %.0267
  %.str.103.mux = select i1 %.not9.i, ptr @.str.103, ptr @.str.104
  br i1 %brmerge, label %socket_activation_validate_opts.exit.thread, label %bb.bw

socket_activation_validate_opts.exit.thread:      ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.0.i345366 = phi ptr [ %.str.103.mux, %bb.bv ], [ @.str.102, %bb.bu ], [ @.str.101, %bb.bt ], [ @.str.100, %bb.bs ], [ @.str.99, %bb.br ]
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.60, ptr noundef nonnull %.0.i345366) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %.not298 = icmp eq i32 %i.dj, 1
  br i1 %.not298, label %setup_address_and_port.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #14
  call void @exit(i32 noundef 1) #15
  unreachable

setup_address_and_port.exit.thread:               ; preds = %bb.bw
  %.not3001248 = icmp eq ptr %.0260, null
  br i1 %.not3001248, label %bb.ck, label %.thread1255

bb.by:                                            ; preds = %setup_address_and_port.exit
  %.not303 = icmp eq ptr %i.t, null
  br i1 %.not303, label %.thread1255, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.63) #14
  call void @exit(i32 noundef 1) #15
  unreachable

.thread1255:                                      ; preds = %setup_address_and_port.exit.thread, %bb.by
  %.236212501260 = phi ptr [ %.2362, %bb.by ], [ null, %setup_address_and_port.exit.thread ]
  %.235912531259 = phi ptr [ %.2359, %bb.by ], [ null, %setup_address_and_port.exit.thread ]
  %i.dp = load ptr, ptr @tlsauthz, align 8
  %i.dq = icmp ne ptr %i.dp, null
  %or.cond28 = and i1 %.0267, %i.dq
  br i1 %or.cond28, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.thread1255
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.64) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.cb:                                            ; preds = %.thread1255
  %i.dr = icmp eq ptr %.0263, null
  %or.cond30 = or i1 %.0267, %i.dr
  br i1 %or.cond30, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.65) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.ds = call ptr @object_get_objects_root() #14
  %i.dt = call ptr @object_resolve_path_component(ptr noundef %i.ds, ptr noundef nonnull %.0260) #14 ; 3 uses
  %.not.i346 = icmp eq ptr %i.dt, null
  br i1 %.not.i346, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.105, i32 noundef 456, ptr noundef nonnull @__func__.nbd_get_tls_creds, ptr noundef nonnull @.str.106, ptr noundef nonnull %.0260) #14
  br label %nbd_get_tls_creds.exit

bb.cf:                                            ; preds = %bb.cd
  %i.du = call ptr @object_dynamic_cast(ptr noundef nonnull %i.dt, ptr noundef nonnull @.str.28) #14 ; 3 uses
  %.not15.i = icmp eq ptr %i.du, null
  br i1 %.not15.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.105, i32 noundef 463, ptr noundef nonnull @__func__.nbd_get_tls_creds, ptr noundef nonnull @.str.107, ptr noundef nonnull %.0260) #14
  br label %nbd_get_tls_creds.exit

bb.ch:                                            ; preds = %bb.cf
  %not..i = xor i1 %.0267, true
  %i.dv = zext i1 %not..i to i32
  %i.dw = call zeroext i1 @qcrypto_tls_creds_check_endpoint(ptr noundef nonnull %i.du, i32 noundef %i.dv, ptr noundef nonnull %i.g) #14
  br i1 %i.dw, label %bb.ci, label %nbd_get_tls_creds.exit

bb.ci:                                            ; preds = %bb.ch
  %i.dx = call ptr @object_ref(ptr noundef nonnull %i.dt) #14 ; 0 uses
  br label %nbd_get_tls_creds.exit

nbd_get_tls_creds.exit:                           ; preds = %bb.ce, %bb.cg, %bb.ch, %bb.ci
  %.0.i347 = phi ptr [ %i.du, %bb.ci ], [ null, %bb.ce ], [ null, %bb.cg ], [ null, %bb.ch ]
  store ptr %.0.i347, ptr @tlscreds, align 8
  %i.dy = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not304 = icmp eq ptr %i.dy, null
  br i1 %.not304, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %nbd_get_tls_creds.exit
  call void (ptr, ptr, ...) @error_reportf_err(ptr noundef nonnull %i.dy, ptr noundef nonnull @.str.66) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.ck:                                            ; preds = %setup_address_and_port.exit.thread, %setup_address_and_port.exit
  %.23591254 = phi ptr [ null, %setup_address_and_port.exit.thread ], [ %.2359, %setup_address_and_port.exit ]
  %.23621251 = phi ptr [ null, %setup_address_and_port.exit.thread ], [ %.2362, %setup_address_and_port.exit ]
  %i.dz = load ptr, ptr @tlsauthz, align 8
  %.not301 = icmp eq ptr %i.dz, null
  br i1 %.not301, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.67) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %.not302 = icmp eq ptr %.0263, null
  br i1 %.not302, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.68) #14
  call void @exit(i32 noundef 1) #15
  unreachable

bb.co:                                            ; preds = %bb.cm, %nbd_get_tls_creds.exit
  %.23591252 = phi ptr [ %.23591254, %bb.cm ], [ %.235912531259, %nbd_get_tls_creds.exit ] ; 2 uses
  %.23621249 = phi ptr [ %.23621251, %bb.cm ], [ %.236212501260, %nbd_get_tls_creds.exit ] ; 3 uses
  %.not305 = icmp eq ptr %.0273, null             ; 3 uses
  br i1 %.not305, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ea = icmp eq ptr %.0229, null
  %i.eb = load ptr, ptr %3, align 8
  %i.ec = icmp eq ptr %i.eb, null
  %or.cond33 = select i1 %i.ea, i1 %i.ec, i1 false
  br i1 %or.cond33, label %bb.cq, label %bb.cr
end_hunk_0
