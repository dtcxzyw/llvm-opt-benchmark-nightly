Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/init_wslua?download=true
inline.NumInlined: 49
inline.NumDeleted: 20
loop-unroll.NumUnrolled: 1
begin_hunk_0_@wslua_init:bb.a
  tail call void @lua_setglobal(ptr noundef %i.nh, ptr noundef nonnull @.str.127)
  %i.ni = load ptr, ptr @L, align 8
  %i.nj = tail call i32 @lua_getglobal(ptr noundef %i.ni, ptr noundef nonnull @.str.128) ; 0 uses
  %i.nk = load ptr, ptr @L, align 8
  %i.nl = tail call i32 @lua_getfield(ptr noundef %i.nk, i32 noundef -1, ptr noundef nonnull @.str.129) ; 0 uses
  %i.nm = load ptr, ptr @L, align 8
  tail call void @lua_setglobal(ptr noundef %i.nm, ptr noundef nonnull @.str.130)
  %i.nn = load ptr, ptr @L, align 8
  %i.no = tail call i32 @lua_getfield(ptr noundef %i.nn, i32 noundef -1, ptr noundef nonnull @.str.131) ; 0 uses
  %i.np = load ptr, ptr @L, align 8
  tail call void @lua_setglobal(ptr noundef %i.np, ptr noundef nonnull @.str.132)
  %i.nq = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.nq, i32 noundef -2)
  %.b53 = load i1, ptr @wslua_init.first_time, align 1
  br i1 %.b53, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %wslua_add_introspection.exit
  tail call void @funnel_register_console_menu(ptr noundef nonnull @.str, ptr noundef nonnull @lua_funnel_console_eval, ptr noundef nonnull @lua_funnel_console_open, ptr noundef nonnull @lua_funnel_console_close, ptr noundef null, ptr noundef null)
  br label %bb.ac

bb.aa:                                            ; preds = %wslua_add_introspection.exit
  %i.nr = load ptr, ptr @wslua_gui_print_func_ptr, align 8 ; 2 uses
  %.not57 = icmp eq ptr %i.nr, null
  br i1 %.not57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ns = load ptr, ptr @wslua_gui_print_data_ptr, align 8
  %i.nt = load ptr, ptr @L, align 8
  %i.nu = tail call i32 @lua_getglobal(ptr noundef %i.nt, ptr noundef nonnull @.str.143) ; 0 uses
  %i.nv = load ptr, ptr @L, align 8
  %i.nw = tail call i32 @luaL_ref(ptr noundef %i.nv, i32 noundef -1001000)
  store i32 %i.nw, ptr @wslua_lua_print_func_ref, align 4
  %i.nx = load ptr, ptr @L, align 8
  tail call void @lua_pushcclosure(ptr noundef %i.nx, ptr noundef nonnull @wslua_console_print, i32 noundef 0)
  %i.ny = load ptr, ptr @L, align 8
  tail call void @lua_setglobal(ptr noundef %i.ny, ptr noundef nonnull @.str.143)
  store ptr %i.nr, ptr @wslua_gui_print_func_ptr, align 8
  store ptr %i.ns, ptr @wslua_gui_print_data_ptr, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.nz = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.oa = tail call ptr @get_plugins_dir(ptr noundef %i.nz) ; 2 uses
  %i.ob = load ptr, ptr @L, align 8
  %i.oc = tail call i32 @lua_getglobal(ptr noundef %i.ob, ptr noundef nonnull @.str.144) ; 0 uses
  %i.od = load ptr, ptr @L, align 8
  %i.oe = tail call i32 @lua_getfield(ptr noundef %i.od, i32 noundef -1, ptr noundef nonnull @.str.145) ; 0 uses
  %i.of = load ptr, ptr @L, align 8
  %i.og = tail call ptr @luaL_checklstring(ptr noundef %i.of, i32 noundef -1, ptr noundef null)
  %i.oh = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.oh, i32 noundef -2)
  %i.oi = load ptr, ptr @L, align 8
  %i.oj = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %i.oi, ptr noundef nonnull @.str.146, ptr noundef %i.oa, ptr noundef %i.oa, ptr noundef %i.og) ; 0 uses
  %i.ok = load ptr, ptr @L, align 8
  tail call void @lua_setfield(ptr noundef %i.ok, i32 noundef -2, ptr noundef nonnull @.str.145)
  %i.ol = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.ol, i32 noundef -2)
  %i.om = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.on = tail call ptr @get_plugins_dir(ptr noundef %i.om)
  %i.oo = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.on, ptr noundef nonnull @.str.48, ptr noundef null) ; 3 uses
  %i.op = tail call zeroext i1 @file_exists(ptr noundef %i.oo)
  br i1 %i.op, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.oq = tail call fastcc noundef zeroext i1 @lua_load_script(ptr noundef %i.oo, ptr noundef null, i32 noundef 0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @g_free(ptr noundef %i.oo)
  %i.or = tail call zeroext i1 @started_with_special_privs()
  br i1 %i.or, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.os = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.ot = tail call ptr @get_persconffile_path(ptr noundef nonnull @.str.49, i1 noundef zeroext false, ptr noundef %i.os) ; 4 uses
  %i.ou = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.ov = tail call ptr @get_plugins_pers_dir(ptr noundef %i.ou)
  %i.ow = tail call i32 @strcmp(ptr noundef %i.ov, ptr noundef %i.ot) #17
  %.not = icmp eq i32 %i.ow, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ox = load ptr, ptr @L, align 8
  %i.oy = tail call i32 @lua_getglobal(ptr noundef %i.ox, ptr noundef nonnull @.str.144) ; 0 uses
  %i.oz = load ptr, ptr @L, align 8
  %i.pa = tail call i32 @lua_getfield(ptr noundef %i.oz, i32 noundef -1, ptr noundef nonnull @.str.145) ; 0 uses
  %i.pb = load ptr, ptr @L, align 8
  %i.pc = tail call ptr @luaL_checklstring(ptr noundef %i.pb, i32 noundef -1, ptr noundef null)
  %i.pd = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.pd, i32 noundef -2)
  %i.pe = load ptr, ptr @L, align 8
  %i.pf = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %i.pe, ptr noundef nonnull @.str.146, ptr noundef %i.ot, ptr noundef %i.ot, ptr noundef %i.pc) ; 0 uses
  %i.pg = load ptr, ptr @L, align 8
  tail call void @lua_setfield(ptr noundef %i.pg, i32 noundef -2, ptr noundef nonnull @.str.145)
  %i.ph = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.ph, i32 noundef -2)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void @g_free(ptr noundef %i.ot)
  %i.pi = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.pj = tail call ptr @get_plugins_pers_dir(ptr noundef %i.pi) ; 2 uses
  %i.pk = load ptr, ptr @L, align 8
  %i.pl = tail call i32 @lua_getglobal(ptr noundef %i.pk, ptr noundef nonnull @.str.144) ; 0 uses
  %i.pm = load ptr, ptr @L, align 8
  %i.pn = tail call i32 @lua_getfield(ptr noundef %i.pm, i32 noundef -1, ptr noundef nonnull @.str.145) ; 0 uses
  %i.po = load ptr, ptr @L, align 8
  %i.pp = tail call ptr @luaL_checklstring(ptr noundef %i.po, i32 noundef -1, ptr noundef null)
  %i.pq = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.pq, i32 noundef -2)
  %i.pr = load ptr, ptr @L, align 8
  %i.ps = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %i.pr, ptr noundef nonnull @.str.146, ptr noundef %i.pj, ptr noundef %i.pj, ptr noundef %i.pp) ; 0 uses
  %i.pt = load ptr, ptr @L, align 8
  tail call void @lua_setfield(ptr noundef %i.pt, i32 noundef -2, ptr noundef nonnull @.str.145)
  %i.pu = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.pu, i32 noundef -2)
  %i.pv = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.pw = tail call ptr @get_plugins_pers_dir(ptr noundef %i.pv)
  %i.px = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.pw, ptr noundef nonnull @.str.48, ptr noundef null) ; 3 uses
  %i.py = tail call zeroext i1 @file_exists(ptr noundef %i.px)
  br i1 %i.py, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pz = tail call fastcc noundef zeroext i1 @lua_load_script(ptr noundef %i.px, ptr noundef null, i32 noundef 0) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @g_free(ptr noundef %i.px)
  %i.qa = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.qb = tail call ptr @get_persconffile_path(ptr noundef nonnull @.str.48, i1 noundef zeroext false, ptr noundef %i.qa) ; 4 uses
  %i.qc = tail call zeroext i1 @file_exists(ptr noundef %i.qb)
  br i1 %i.qc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef %i.qb)
  %i.qd = tail call fastcc noundef zeroext i1 @lua_load_script(ptr noundef %i.qb, ptr noundef null, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void @g_free(ptr noundef %i.qb)
  br label %bb.am

bb.am:                                            ; preds = %bb.ae, %bb.al
  %i.qe = load ptr, ptr @L, align 8
  %i.qf = tail call i32 @lua_getglobal(ptr noundef %i.qe, ptr noundef nonnull @.str.51) ; 0 uses
  %i.qg = load ptr, ptr @L, align 8
  %i.qh = tail call i32 @lua_type(ptr noundef %i.qg, i32 noundef -1)
  %i.qi = icmp eq i32 %i.qh, 1
  br i1 %i.qi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qj = load ptr, ptr @L, align 8
  %i.qk = tail call i32 @lua_toboolean(ptr noundef %i.qj, i32 noundef -1)
  %.not58 = icmp eq i32 %i.qk, 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.048 = phi i1 [ %.not58, %bb.an ], [ true, %bb.am ]
  %i.ql = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.ql, i32 noundef -2)
  %i.qm = load ptr, ptr @L, align 8
  %i.qn = tail call i32 @lua_getglobal(ptr noundef %i.qm, ptr noundef nonnull @.str.52) ; 0 uses
  %i.qo = load ptr, ptr @L, align 8
  %i.qp = tail call i32 @lua_type(ptr noundef %i.qo, i32 noundef -1)
  %i.qq = icmp eq i32 %i.qp, 1
  %i.qr = load ptr, ptr @L, align 8               ; 2 uses
  br i1 %i.qq, label %.split, label %bb.ap

.split:                                           ; preds = %bb.ao
  %i.qs = tail call i32 @lua_toboolean(ptr noundef %i.qr, i32 noundef -1)
  %.not67 = icmp eq i32 %i.qs, 0
  %i.qt = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.qt, i32 noundef -2)
  br i1 %.not67, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  tail call void @lua_settop(ptr noundef %i.qr, i32 noundef -2)
  br i1 %.048, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.split, %bb.ap
  %i.qu = load ptr, ptr @L, align 8
  tail call void @lua_close(ptr noundef %i.qu)
  store ptr null, ptr @L, align 8
  br label %bb.bf

bb.ar:                                            ; preds = %.split, %bb.ap
  %i.qv = load ptr, ptr @lua_app_env_var_prefix, align 8
  %i.qw = tail call ptr @get_plugins_dir(ptr noundef %i.qv)
  %i.qx = tail call fastcc i32 @lua_load_plugins(ptr noundef %i.qw, ptr noundef readonly %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) ; 0 uses
  %i.qy = load ptr, ptr @L, align 8
  %i.qz = tail call i32 @lua_getglobal(ptr noundef %i.qy, ptr noundef nonnull @.str.53) ; 0 uses
  %i.ra = load ptr, ptr @L, align 8
  %i.rb = tail call i32 @lua_type(ptr noundef %i.ra, i32 noundef -1)
  %i.rc = icmp eq i32 %i.rb, 1
  br i1 %i.rc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rd = load ptr, ptr @L, align 8
  %i.re = tail call i32 @lua_toboolean(ptr noundef %i.rd, i32 noundef -1)
  %.not59 = icmp eq i32 %i.re, 0
  br i1 %.not59, label %bb.at, label %3

3:                                                ; preds = %bb.as
  br label %bb.at

bb.at:                                            ; preds = %3, %bb.as, %bb.ar
  %.047.not = phi i1 [ false, %3 ], [ true, %bb.as ], [ true, %bb.ar ]
  %i.rf = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.rf, i32 noundef -2)
  %i.rg = tail call zeroext i1 @started_with_special_privs()
  %or.cond4.not = and i1 %.047.not, %i.rg
  br i1 %or.cond4.not, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rh = tail call fastcc i32 @lua_load_pers_plugins(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) ; 0 uses
  %i.ri = tail call i32 @ex_opt_count(ptr noundef nonnull @.str.12)
  %i.rj = icmp sgt i32 %i.ri, 0
  br i1 %i.rj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.au
  %.not62 = icmp eq ptr %0, null
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %.lr.ph, %bb.ay
  %.069 = phi i32 [ 0, %.lr.ph ], [ %i.sb, %bb.ay ] ; 2 uses
  %.04668 = phi i32 [ 1, %.lr.ph ], [ %i.sa, %bb.ay ] ; 2 uses
  %i.rk = tail call ptr @ex_opt_get_nth(ptr noundef nonnull @.str.12, i32 noundef %.069) ; 4 uses
  %i.rl = tail call noalias ptr @g_strdup(ptr noundef %i.rk) ; 2 uses
  %i.rm = tail call ptr @get_dirname(ptr noundef %i.rl) ; 3 uses
  %.not61 = icmp eq ptr %i.rm, null               ; 2 uses
  br i1 %.not61, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %g_strdup_inline.exit
  %i.rn = load ptr, ptr @L, align 8
  %i.ro = tail call i32 @lua_getglobal(ptr noundef %i.rn, ptr noundef nonnull @.str.144) ; 0 uses
  %i.rp = load ptr, ptr @L, align 8
  %i.rq = tail call i32 @lua_getfield(ptr noundef %i.rp, i32 noundef -1, ptr noundef nonnull @.str.145) ; 0 uses
  %i.rr = load ptr, ptr @L, align 8
  %i.rs = tail call ptr @luaL_checklstring(ptr noundef %i.rr, i32 noundef -1, ptr noundef null)
  %i.rt = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.rt, i32 noundef -2)
  %i.ru = load ptr, ptr @L, align 8
  %i.rv = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %i.ru, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.rm, ptr noundef %i.rs) ; 0 uses
  %i.rw = load ptr, ptr @L, align 8
  tail call void @lua_setfield(ptr noundef %i.rw, i32 noundef -2, ptr noundef nonnull @.str.145)
  %i.rx = load ptr, ptr @L, align 8
  tail call void @lua_settop(ptr noundef %i.rx, i32 noundef -2)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %g_strdup_inline.exit
  br i1 %.not62, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ry = tail call ptr @get_basename(ptr noundef %i.rk)
  tail call void %0(i32 noundef 8, ptr noundef %i.ry, ptr noundef %1)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.rz = select i1 %.not61, ptr @.str.17, ptr %i.rm
  tail call fastcc void @lua_load_plugin_script(ptr noundef %i.rk, ptr noundef %i.rk, ptr noundef nonnull %i.rz, i32 noundef %.04668)
  %i.sa = add nuw i32 %.04668, 1
  tail call void @g_free(ptr noundef %i.rl)
  %i.sb = add nuw nsw i32 %.069, 1                ; 2 uses
  %i.sc = tail call i32 @ex_opt_count(ptr noundef nonnull @.str.12)
  %i.sd = icmp slt i32 %i.sb, %i.sc
  br i1 %i.sd, label %g_strdup_inline.exit, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.ay, %bb.au, %bb.at
  %.b = load i1, ptr @wslua_init.first_time, align 1
  br i1 %.b, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.loopexit
  tail call void @register_init_routine(ptr noundef nonnull @wslua_init_routine)
  tail call void @register_cleanup_routine(ptr noundef nonnull @wslua_cleanup_routine)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit
  %i.se = load ptr, ptr @L, align 8
  tail call void @lua_pushcclosure(ptr noundef %i.se, ptr noundef nonnull @wslua_not_register_menu, i32 noundef 0)
  %i.sf = load ptr, ptr @L, align 8
  tail call void @lua_setglobal(ptr noundef %i.sf, ptr noundef nonnull @.str.54)
  store ptr null, ptr @lua_pinfo, align 8
  store ptr null, ptr @lua_tree, align 8
  store ptr null, ptr @lua_tvb, align 8
  %i.sg = load ptr, ptr @L, align 8
  tail call void @lua_pushcclosure(ptr noundef %i.sg, ptr noundef nonnull @Proto_commit, i32 noundef 0)
  %i.sh = load ptr, ptr @L, align 8
  %i.si = tail call i32 @lua_pcallk(ptr noundef %i.sh, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null) ; 2 uses
  switch i32 %i.si, label %bb.be [
    i32 0, label %bb.bf
    i32 2, label %bb.bb
    i32 4, label %bb.bc
    i32 5, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.sj = load ptr, ptr @L, align 8
  %i.sk = tail call ptr @lua_tolstring(ptr noundef %i.sj, i32 noundef -1, ptr noundef null)
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.55, ptr noundef %i.sk)
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.56)
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.57)
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.58, i32 noundef %i.si)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.aq
  store i1 true, ptr @wslua_init.first_time, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @lua_newstate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @wslua_allocf(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 %2, i64 noundef %3) #1 {
bb.a:
  %i.a = tail call ptr @g_realloc(ptr noundef %1, i64 noundef %3)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @luaL_openlibs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wslua_register_classes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wslua_register_functions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @lua_atpanic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @wslua_panic(ptr noundef %0) #6 {
bb.a:
  %i.a = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null)
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.1, i64 noundef 961, ptr noundef nonnull @__func__.wslua_panic, ptr noundef nonnull @.str.73, ptr noundef %i.a) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare void @wslua_debugger_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @luaL_ref(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @started_with_special_privs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @funnel_register_console_menu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 -1, 2) i32 @lua_funnel_console_eval(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = load ptr, ptr @L, align 8
  %i.b = tail call i32 @lua_gettop(ptr noundef %i.a) ; 5 uses
  %i.c = load ptr, ptr @g_ascii_table, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.037 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.b ]  ; 4 uses
  %i.d = load i8, ptr %.037, align 1              ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  %i.h = and i16 %i.g, 256
  %.not = icmp eq i16 %i.h, 0
  %i.i = getelementptr i8, ptr %.037, i64 1       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i8 %i.d, 61
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = load ptr, ptr @L, align 8
  %i.l = tail call i32 @luaL_loadstring(ptr noundef %i.k, ptr noundef %.037)
end_hunk_0
