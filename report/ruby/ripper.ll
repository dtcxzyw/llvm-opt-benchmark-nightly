inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ripper_yyparse:bb.a
  %i.dry = and i16 %i.drx, 1024
  %i.drz = and i16 %i.drw, -1025
  %i.dsa = or disjoint i16 %i.drz, %i.dry         ; 2 uses
  store i16 %i.dsa, ptr %i.z, align 8
  %i.dsb = load i16, ptr %i.drr, align 8
  %i.dsc = and i16 %i.dsb, 192
  %i.dsd = and i16 %i.dsa, -193
  %i.dse = or disjoint i16 %i.dsd, %i.dsc
  store i16 %i.dse, ptr %i.z, align 8
  br label %bb.ajq

bb.ro:                                            ; preds = %yy_reduce_print.exit
  %i.dsf = getelementptr inbounds i8, ptr %.36321, i64 -32 ; 2 uses
  %i.dsg = load ptr, ptr %i.dsf, align 8, !tbaa !10
  call fastcc void @restore_defun(ptr noundef nonnull %0, ptr noundef %i.dsg)
  %i.dsh = load ptr, ptr %i.dsf, align 8, !tbaa !10
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.dsh, i64 32
  %i.dsj = load ptr, ptr %i.dsi, align 8, !tbaa !86 ; 3 uses
  store ptr %i.dsj, ptr %5, align 8, !tbaa !10
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.dsj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dsk, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !13
  %i.dsl = getelementptr inbounds i8, ptr %.36321, i64 -24
  %i.dsm = load ptr, ptr %i.dsl, align 8, !tbaa !10
  %i.dsn = getelementptr inbounds i8, ptr %.36321, i64 -8 ; 2 uses
  %i.dso = load ptr, ptr %i.dsn, align 8, !tbaa !10
  %i.dsp = call fastcc ptr @new_scope_body(ptr noundef nonnull %0, ptr noundef %i.dsm, ptr noundef %i.dso, ptr noundef %i.dsj, ptr noundef %6) ; 2 uses
  store ptr %i.dsp, ptr %i.dsn, align 8, !tbaa !10
  %i.dsq = load ptr, ptr %5, align 8, !tbaa !10
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsq, i64 40
  store ptr %i.dsp, ptr %i.dsr, align 8, !tbaa !87
  %i.dss = load i64, ptr %i.w, align 8, !tbaa !57 ; 3 uses
  %i.dst = call i64 @rb_ary_entry(i64 noundef %i.dss, i64 noundef -5) #32
  %i.dsu = call i64 @rb_ary_entry(i64 noundef %i.dss, i64 noundef -4) #32
  %i.dsv = call i64 @rb_ary_entry(i64 noundef %i.dss, i64 noundef -2) #32
  %.val6957 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dsw = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6957, i64 noundef %i.el, i32 noundef 3, i64 noundef %i.dst, i64 noundef %i.dsu, i64 noundef %i.dsv) #29
  store i64 %i.dsw, ptr %i.x, align 8, !tbaa !58
  call fastcc void @local_pop(ptr noundef nonnull %0)
  br label %bb.ajq

bb.rp:                                            ; preds = %yy_reduce_print.exit
  %i.dsx = getelementptr inbounds i8, ptr %.36321, i64 -32 ; 2 uses
  %i.dsy = load ptr, ptr %i.dsx, align 8, !tbaa !10
  call fastcc void @restore_defun(ptr noundef nonnull %0, ptr noundef %i.dsy)
  %i.dsz = load ptr, ptr %i.dsx, align 8, !tbaa !10
  %i.dta = getelementptr inbounds nuw i8, ptr %i.dsz, i64 32
  %i.dtb = load ptr, ptr %i.dta, align 8, !tbaa !86 ; 3 uses
  store ptr %i.dtb, ptr %5, align 8, !tbaa !10
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dtb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dtc, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !13
  %i.dtd = getelementptr inbounds i8, ptr %.36321, i64 -24
  %i.dte = load ptr, ptr %i.dtd, align 8, !tbaa !10
  %i.dtf = getelementptr inbounds i8, ptr %.36321, i64 -8 ; 2 uses
  %i.dtg = load ptr, ptr %i.dtf, align 8, !tbaa !10
  %i.dth = call fastcc ptr @new_scope_body(ptr noundef nonnull %0, ptr noundef %i.dte, ptr noundef %i.dtg, ptr noundef %i.dtb, ptr noundef %6) ; 2 uses
  store ptr %i.dth, ptr %i.dtf, align 8, !tbaa !10
  %i.dti = load ptr, ptr %5, align 8, !tbaa !10
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dti, i64 48
  store ptr %i.dth, ptr %i.dtj, align 8, !tbaa !89
  %i.dtk = load i64, ptr %i.w, align 8, !tbaa !57 ; 3 uses
  %i.dtl = call i64 @rb_ary_entry(i64 noundef %i.dtk, i64 noundef -5) #32 ; 3 uses
  %i.dtm = call i64 @rb_ary_entry(i64 noundef %i.dtk, i64 noundef -4) #32
  %i.dtn = call i64 @rb_ary_entry(i64 noundef %i.dtk, i64 noundef -2) #32
  %i.dto = call i64 @rb_ary_entry(i64 noundef %i.dtl, i64 noundef 0) #32
  %i.dtp = call i64 @rb_ary_entry(i64 noundef %i.dtl, i64 noundef 1) #32
  %i.dtq = call i64 @rb_ary_entry(i64 noundef %i.dtl, i64 noundef 2) #32
  %.val7019 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dtr = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val7019, i64 noundef %i.ek, i32 noundef 5, i64 noundef %i.dto, i64 noundef %i.dtp, i64 noundef %i.dtq, i64 noundef %i.dtm, i64 noundef %i.dtn) #29
  store i64 %i.dtr, ptr %i.x, align 8, !tbaa !58
  call fastcc void @local_pop(ptr noundef nonnull %0)
  br label %bb.ajq

bb.rq:                                            ; preds = %yy_reduce_print.exit
  %i.dts = call fastcc ptr @rb_node_break_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6, ptr noundef %.36334) ; 2 uses
  %i.dtt = call fastcc ptr @add_block_exit(ptr noundef nonnull %0, ptr noundef %i.dts) ; 0 uses
  store ptr %i.dts, ptr %5, align 8, !tbaa !10
  %.val6861 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dtu = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6861, i64 noundef %i.dc, i32 noundef 0) #29
  %.val6600 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dtv = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6600, i64 noundef %i.ej, i32 noundef 1, i64 noundef %i.dtu) #29
  store i64 %i.dtv, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.rr:                                            ; preds = %yy_reduce_print.exit
  %i.dtw = call fastcc ptr @rb_node_next_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6, ptr noundef %.36334) ; 2 uses
  %i.dtx = call fastcc ptr @add_block_exit(ptr noundef nonnull %0, ptr noundef %i.dtw) ; 0 uses
  store ptr %i.dtw, ptr %5, align 8, !tbaa !10
  %.val6860 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dty = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6860, i64 noundef %i.dc, i32 noundef 0) #29
  %.val6599 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dtz = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6599, i64 noundef %i.ei, i32 noundef 1, i64 noundef %i.dty) #29
  store i64 %i.dtz, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.rs:                                            ; preds = %yy_reduce_print.exit
  %i.dua = call fastcc ptr @rb_node_redo_new(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %.36334) ; 2 uses
  %i.dub = call fastcc ptr @add_block_exit(ptr noundef nonnull %0, ptr noundef %i.dua) ; 0 uses
  store ptr %i.dua, ptr %5, align 8, !tbaa !10
  %.val6859 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.duc = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6859, i64 noundef %i.eh, i32 noundef 0) #29
  store i64 %i.duc, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.rt:                                            ; preds = %yy_reduce_print.exit
  %i.dud = load i16, ptr %i.z, align 8            ; 2 uses
  %i.due = and i16 %i.dud, 1
  %.not6494 = icmp eq i16 %i.due, 0
  br i1 %.not6494, label %bb.ru, label %bb.rx

bb.ru:                                            ; preds = %bb.rt
  %i.duf = lshr i16 %i.dud, 8
  %i.dug = and i16 %i.duf, 3
  switch i16 %i.dug, label %default.unreachable7934 [
    i16 0, label %.sink.split7980
    i16 3, label %bb.rw
    i16 2, label %bb.rv
    i16 1, label %bb.rx
  ]

bb.rv:                                            ; preds = %bb.ru
  br label %.sink.split7980

bb.rw:                                            ; preds = %bb.ru
  br label %.sink.split7980

default.unreachable7934:                          ; preds = %bb.ru
  unreachable

.sink.split7980:                                  ; preds = %bb.ru, %bb.rw, %bb.rv
  %.str.26.sink = phi ptr [ @.str.28, %bb.rw ], [ @.str.27, %bb.rv ], [ @.str.26, %bb.ru ]
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.36334, ptr noundef %.str.26.sink)
  br label %bb.rx

bb.rx:                                            ; preds = %.sink.split7980, %bb.ru, %bb.rt
  %i.duh = call fastcc ptr @rb_node_retry_new(ptr noundef nonnull %0, ptr noundef %6)
  store ptr %i.duh, ptr %5, align 8, !tbaa !10
  %.val6858 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dui = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6858, i64 noundef %i.eg, i32 noundef 0) #29
  store i64 %i.dui, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.ry:                                            ; preds = %yy_reduce_print.exit
  %i.duj = load ptr, ptr %.36321, align 8, !tbaa !10
  call fastcc void @value_expr(ptr noundef nonnull %0, ptr noundef %i.duj)
  %i.duk = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.duk, ptr %5, align 8, !tbaa !10
  br label %bb.ajq

bb.rz:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef %6)
  br label %bb.ajq

bb.sa:                                            ; preds = %yy_reduce_print.exit
  %i.dul = call fastcc i32 @looking_at_eol_p(ptr noundef nonnull %0)
  %.not6488 = icmp eq i32 %i.dul, 0
  br i1 %.not6488, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.dum = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dun = call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.30, i64 noundef 45) #29
  %i.duo = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dum, i64 noundef %i.ed, i32 noundef 1, i64 noundef %i.dun) #29 ; 0 uses
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sa, %bb.sb
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef %6)
  %i.dup = load ptr, ptr %i.ee, align 8, !tbaa !132 ; 3 uses
  %.not6489 = icmp eq ptr %i.dup, null
  br i1 %.not6489, label %bb.ajq, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.duq = getelementptr inbounds nuw i8, ptr %i.dup, i64 20 ; 2 uses
  %i.dur = load i32, ptr %i.duq, align 4, !tbaa !133
  %.not6490 = icmp eq i32 %i.dur, 0
  br i1 %.not6490, label %bb.ajq, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.dus = getelementptr inbounds nuw i8, ptr %i.dup, i64 24
  %i.dut = load ptr, ptr %i.dus, align 8, !tbaa !135 ; 3 uses
  %.not6491 = icmp eq ptr %i.dut, null
  br i1 %.not6491, label %bb.ajq, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.duu = load ptr, ptr %i.dut, align 8, !tbaa !136
  %i.duv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.duu, ptr noundef nonnull dereferenceable(5) @.str.32) #32
  %.not6492 = icmp eq i32 %i.duv, 0
  br i1 %.not6492, label %bb.sg, label %bb.ajq

bb.sg:                                            ; preds = %bb.sf
  %i.duw = load ptr, ptr %i.k, align 8, !tbaa !41 ; 2 uses
  %i.dux = getelementptr inbounds i8, ptr %i.duw, i64 -2 ; 3 uses
  %i.duy = load ptr, ptr %i.n, align 8, !tbaa !44 ; 3 uses
  %i.duz = getelementptr inbounds nuw i8, ptr %i.dut, i64 12
  %i.dva = load i32, ptr %i.duz, align 4, !tbaa !137
  %i.dvb = sext i32 %i.dva to i64
  %i.dvc = getelementptr inbounds i8, ptr %i.duy, i64 %i.dvb
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dvc, i64 4 ; 3 uses
  %i.dve = icmp ult ptr %i.dvd, %i.dux
  br i1 %i.dve, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.sg
  %24 = ptrtoint ptr %i.duy to i64
  %25 = ptrtoint ptr %i.duw to i64
  %scevgep = getelementptr i8, ptr %i.duy, i64 -2
  %i.dvf = sub i64 %25, %24
  %scevgep7704 = getelementptr i8, ptr %scevgep, i64 %i.dvf
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.sh
  %.063567663 = phi ptr [ %i.dvl, %bb.sh ], [ %i.dvd, %.lr.ph.preheader ] ; 3 uses
  %i.dvg = load i8, ptr %.063567663, align 1, !tbaa !10 ; 2 uses
  %i.dvh = sext i8 %i.dvg to i32
  %i.dvi = icmp ne i8 %i.dvg, 32
  %i.dvj = add nsw i32 %i.dvh, -14
  %i.dvk = icmp ult i32 %i.dvj, -5
  %narrow.i.not = select i1 %i.dvi, i1 %i.dvk, i1 false
  br i1 %narrow.i.not, label %.critedge, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph
  %i.dvl = getelementptr inbounds nuw i8, ptr %.063567663, i64 1 ; 2 uses
  %i.dvm = icmp ult ptr %i.dvl, %i.dux
  br i1 %i.dvm, label %.lr.ph, label %.critedge, !llvm.loop !138

.critedge:                                        ; preds = %.lr.ph, %bb.sh, %bb.sg
  %.06356.lcssa = phi ptr [ %i.dvd, %bb.sg ], [ %scevgep7704, %bb.sh ], [ %.063567663, %.lr.ph ]
  %i.dvn = icmp eq ptr %.06356.lcssa, %i.dux
  br i1 %i.dvn, label %bb.si, label %bb.ajq

bb.si:                                            ; preds = %.critedge
  store i32 0, ptr %i.duq, align 4, !tbaa !133
  br label %bb.ajq

bb.sj:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef %6)
  br label %bb.ajq

bb.sk:                                            ; preds = %yy_reduce_print.exit
  %i.dvo = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.dvo, ptr %5, align 8, !tbaa !10
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %6)
  br label %bb.ajq

bb.sl:                                            ; preds = %yy_reduce_print.exit
  %i.dvp = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.dvp, ptr %5, align 8, !tbaa !10
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef %6)
  br label %bb.ajq

bb.sm:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef %6)
  br label %bb.ajq

bb.sn:                                            ; preds = %yy_reduce_print.exit
  %i.dvq = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.dvq, ptr %5, align 8, !tbaa !10
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef %6)
  br label %bb.ajq

bb.so:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef %6)
  %i.dvr = load i32, ptr %i.z, align 8            ; 2 uses
  store i32 %i.dvr, ptr %5, align 8
  %i.dvs = trunc i32 %i.dvr to i16
  %i.dvt = and i16 %i.dvs, -769
  store i16 %i.dvt, ptr %i.z, align 8
  br label %bb.ajq

bb.sp:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %6)
  %i.dvu = load i32, ptr %i.z, align 8            ; 2 uses
  store i32 %i.dvu, ptr %5, align 8
  %i.dvv = trunc i32 %i.dvu to i16
  %i.dvw = and i16 %i.dvv, -769
  store i16 %i.dvw, ptr %i.z, align 8
  br label %bb.ajq

bb.sq:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, ptr noundef %6)
  %i.dvx = call fastcc ptr @rb_node_def_temp_new(ptr noundef nonnull %0, ptr noundef %6)
  store ptr %i.dvx, ptr %5, align 8, !tbaa !10
  %i.dvy = load i16, ptr %i.z, align 8
  %i.dvz = or i16 %i.dvy, 4
  store i16 %i.dvz, ptr %i.z, align 8
  br label %bb.ajq

bb.sr:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %6)
  br label %bb.ajq

bb.ss:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %6)
  br label %bb.ajq

bb.st:                                            ; preds = %yy_reduce_print.exit
  %i.dwa = load ptr, ptr %i.ee, align 8, !tbaa !132
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef %i.dwa, i32 noundef 1, ptr noundef %6)
  %i.dwb = load i32, ptr %i.z, align 8            ; 2 uses
  store i32 %i.dwb, ptr %5, align 8
  %i.dwc = trunc i32 %i.dwb to i16
  %i.dwd = and i16 %i.dwc, -769
  %i.dwe = or disjoint i16 %i.dwd, 256
  store i16 %i.dwe, ptr %i.z, align 8
  br label %bb.ajq

bb.su:                                            ; preds = %yy_reduce_print.exit
  %i.dwf = load ptr, ptr %i.ee, align 8, !tbaa !132
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef %i.dwf, i32 noundef 1, ptr noundef %6)
  %i.dwg = load i32, ptr %i.z, align 8
  store i32 %i.dwg, ptr %5, align 8
  br label %bb.ajq

bb.sv:                                            ; preds = %yy_reduce_print.exit
  %i.dwh = load ptr, ptr %i.ee, align 8, !tbaa !132
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef %i.dwh, i32 noundef 0, ptr noundef %6)
  br label %bb.ajq

bb.sw:                                            ; preds = %yy_reduce_print.exit
  %i.dwi = load ptr, ptr %i.ee, align 8, !tbaa !132 ; 7 uses
  %.not6486 = icmp eq ptr %i.dwi, null
  br i1 %.not6486, label %.critedge6547, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.dwj = load ptr, ptr %i.dwi, align 8, !tbaa !136
  %i.dwk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dwj, ptr noundef nonnull dereferenceable(5) @.str.36) #32
  %i.dwl = icmp ne i32 %i.dwk, 0                  ; 2 uses
  %i.dwm = zext i1 %i.dwl to i32
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.dwi, i32 noundef %i.dwm, ptr noundef %6)
  br i1 %i.dwl, label %bb.sy, label %bb.ajq

bb.sy:                                            ; preds = %bb.sx
  %i.dwn = load i32, ptr %i.ef, align 4, !tbaa !54 ; 2 uses
  %i.dwo = icmp sgt i32 %i.dwn, 0
  br i1 %i.dwo, label %.lr.ph.i7276.preheader, label %token_info_setup.exit.thread

.lr.ph.i7276.preheader:                           ; preds = %bb.sy
  %i.dwp = load ptr, ptr %i.n, align 8, !tbaa !44
  br label %.lr.ph.i7276

.lr.ph.i7276:                                     ; preds = %.lr.ph.i7276.preheader, %bb.ta
  %.024.i = phi i32 [ %i.dwy, %bb.ta ], [ 0, %.lr.ph.i7276.preheader ]
  %.01423.i = phi i32 [ %.1.i, %bb.ta ], [ 0, %.lr.ph.i7276.preheader ] ; 2 uses
  %.01522.i = phi i32 [ %i.dwx, %bb.ta ], [ 1, %.lr.ph.i7276.preheader ] ; 2 uses
  %.01721.i = phi ptr [ %i.dwz, %bb.ta ], [ %i.dwp, %.lr.ph.i7276.preheader ] ; 2 uses
  %i.dwq = load i8, ptr %.01721.i, align 1, !tbaa !10 ; 2 uses
  %i.dwr = icmp eq i8 %i.dwq, 9
  br i1 %i.dwr, label %.thread.i, label %bb.sz

.thread.i:                                        ; preds = %.lr.ph.i7276
  %i.dws = add nsw i32 %.01522.i, -1
  %i.dwt = sdiv i32 %i.dws, 8
  %i.dwu = shl nsw i32 %i.dwt, 3
  %i.dwv = add i32 %i.dwu, 9
  br label %bb.ta

bb.sz:                                            ; preds = %.lr.ph.i7276
  %i.dww = add nsw i32 %.01522.i, 1
  %cond.i = icmp eq i8 %i.dwq, 32
  %spec.select.i = select i1 %cond.i, i32 %.01423.i, i32 1
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %.thread.i
  %i.dwx = phi i32 [ %i.dww, %bb.sz ], [ %i.dwv, %.thread.i ] ; 2 uses
  %.1.i = phi i32 [ %spec.select.i, %bb.sz ], [ %.01423.i, %.thread.i ] ; 2 uses
  %i.dwy = add nuw nsw i32 %.024.i, 1             ; 2 uses
  %i.dwz = getelementptr inbounds nuw i8, ptr %.01721.i, i64 1
  %exitcond.not.i7277 = icmp eq i32 %i.dwy, %i.dwn
  br i1 %exitcond.not.i7277, label %token_info_setup.exit, label %.lr.ph.i7276, !llvm.loop !139

token_info_setup.exit:                            ; preds = %bb.ta
  %.not6487 = icmp eq i32 %.1.i, 0
  br i1 %.not6487, label %token_info_setup.exit.thread, label %bb.ajq

token_info_setup.exit.thread:                     ; preds = %bb.sy, %token_info_setup.exit
  %.015.lcssa.i7544 = phi i32 [ %i.dwx, %token_info_setup.exit ], [ 1, %bb.sy ]
  %i.dxa = load i64, ptr %6, align 8
  store ptr @.str.32, ptr %i.dwi, align 8, !tbaa !50
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dwi, i64 8
  store i64 %i.dxa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dwi, i64 16
  store i32 %.015.lcssa.i7544, ptr %.sroa.57488.0..sroa_idx, align 8, !tbaa !6
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dwi, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !6
  br label %bb.ajq

.critedge6547:                                    ; preds = %bb.sw
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, ptr noundef %6)
  br label %bb.ajq

bb.tb:                                            ; preds = %yy_reduce_print.exit
  %i.dxb = call fastcc i32 @looking_at_eol_p(ptr noundef nonnull %0)
  %.not6485 = icmp eq i32 %i.dxb, 0
  br i1 %.not6485, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.dxc = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dxd = call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.43, i64 noundef 48) #29
  %i.dxe = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dxc, i64 noundef %i.ed, i32 noundef 1, i64 noundef %i.dxd) #29 ; 0 uses
  br label %bb.td

bb.td:                                            ; preds = %bb.tb, %bb.tc
  %i.dxf = load ptr, ptr %i.ee, align 8, !tbaa !132
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, ptr noundef %i.dxf, i32 noundef 1, ptr noundef %6)
  br label %bb.ajq
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a
bb.r:                                             ; preds = %bb.q
  %i.cc = call nonnull ptr @rb_ascii8bit_encoding() #29 ; 2 uses
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !500
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cd = phi ptr [ %i.cc, %bb.r ], [ %.pre377.i, %bb.q ], [ %.pre377.i, %bb.p ], [ %.pre377.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  %.pre375.i = load ptr, ptr %i.at, align 8, !tbaa !40
  %.pre376.i = load ptr, ptr %i.l, align 8, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ %.pre377.i, %bb.n ]
  %i.cf = phi ptr [ %.pre376.i, %bb.s ], [ %i.bq, %bb.n ]
  %i.cg = phi ptr [ %.pre375.i, %bb.s ], [ %i.au, %bb.n ]
  %i.ch = call fastcc ptr @rb_parser_enc_cr_str_buf_cat(ptr noundef nonnull %0, ptr noundef %i.cg, ptr noundef %i.cf, i64 noundef range(i64 1, -9223372036854775808) %i.bt, ptr noundef %i.ce, i32 noundef 0, ptr noundef null) ; 0 uses
  %.pre378.i = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %.not.i212.i = icmp eq ptr %.pre378.i, null
  br i1 %.not.i212.i, label %ripper_dispatch_delayed_token.exit.i, label %..thread.i_crit_edge

..thread.i_crit_edge:                             ; preds = %bb.t
  %.pre = load i32, ptr %i.bm, align 4, !tbaa !42
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.m
  %i.ci = phi i32 [ %.pre, %..thread.i_crit_edge ], [ %i.bl, %bb.m ]
  %i.cj = phi ptr [ %.pre378.i, %..thread.i_crit_edge ], [ %i.au, %bb.m ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !43
  store i32 %i.cl, ptr %i.bm, align 4, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !45
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %i.cq
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !41
  %i.cs = call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.cj) #29
  %i.ct = load ptr, ptr %i.at, align 8, !tbaa !40
  call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef %i.ct) #29
  %i.cu = call i64 @ripper_token2eventid(i32 noundef 321) #29
  %i.cv = getelementptr i8, ptr %0, i64 368
  %.val.i213.i = load i64, ptr %i.cv, align 8, !tbaa !46
  %i.cw = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i213.i, i64 noundef %i.cu, i32 noundef 1, i64 noundef %i.cs) #29
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !47
  store ptr null, ptr %i.at, align 8, !tbaa !40
  store i32 %i.ci, ptr %i.bm, align 4, !tbaa !42
  br label %ripper_dispatch_delayed_token.exit.i

ripper_dispatch_delayed_token.exit.i:             ; preds = %.thread.i, %bb.t
  %i.cy = trunc i64 %i.bt to i32
  br label %ripper_dispatch_scan_event.exit.i

ripper_dispatch_delayed_token.exit216.i:          ; preds = %bb.l
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !41  ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.db = load i32, ptr %i.da, align 8, !tbaa !43
  store i32 %i.db, ptr %i.bm, align 4, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.df = load i32, ptr %i.de, align 4, !tbaa !45
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  store ptr %i.dh, ptr %i.l, align 8, !tbaa !41
  %i.di = tail call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.au) #29
  %i.dj = load ptr, ptr %i.at, align 8, !tbaa !40
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef %i.dj) #29
  %i.dk = tail call i64 @ripper_token2eventid(i32 noundef 321) #29
  %i.dl = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i215.i = load i64, ptr %i.dl, align 8, !tbaa !46
  %i.dm = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i215.i, i64 noundef %i.dk, i32 noundef 1, i64 noundef %i.di) #29
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !47
  store ptr null, ptr %i.at, align 8, !tbaa !40
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !42
  store ptr %i.cz, ptr %i.l, align 8, !tbaa !41
  %.val.i217.i = load ptr, ptr %i.j, align 8, !tbaa !48 ; 3 uses
  %i.do = icmp ult ptr %.val.i217.i, %i.cz
  br i1 %i.do, label %bb.u, label %ripper_has_scan_event.exit.i219.i

bb.u:                                             ; preds = %ripper_dispatch_delayed_token.exit216.i
  %i.dp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dp, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i219.i:                ; preds = %ripper_dispatch_delayed_token.exit216.i
  %.not.i220.i = icmp ugt ptr %.val.i217.i, %i.cz
  br i1 %.not.i220.i, label %bb.v, label %ripper_dispatch_scan_event.exit.i

bb.v:                                             ; preds = %ripper_has_scan_event.exit.i219.i
  %i.dq = ptrtoint ptr %.val.i217.i to i64
  %i.dr = ptrtoint ptr %i.cz to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.du = tail call i64 @rb_enc_str_new(ptr noundef %i.cz, i64 noundef %i.ds, ptr noundef %i.dt) #29
  %i.dv = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i221.i = load i64, ptr %i.dl, align 8, !tbaa !46
  %i.dw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i221.i, i64 noundef %i.dv, i32 noundef 1, i64 noundef %i.du) #29
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !39
  %i.dz = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.dy) #29 ; 0 uses
  store i64 %i.dw, ptr %i.dn, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit.i

ripper_dispatch_scan_event.exit.i:                ; preds = %bb.v, %ripper_has_scan_event.exit.i219.i, %ripper_dispatch_delayed_token.exit.i, %bb.k, %ripper_has_scan_event.exit.i.i
  %.0177.i = phi i32 [ %i.cy, %ripper_dispatch_delayed_token.exit.i ], [ %i.w, %bb.k ], [ %i.w, %ripper_has_scan_event.exit.i.i ], [ %i.w, %ripper_has_scan_event.exit.i219.i ], [ %i.w, %bb.v ]
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !171 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !171
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !501 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !488
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !451 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !44
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !453
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  store ptr %i.ej, ptr %i.ad, align 8, !tbaa !413
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !503
  %i.em = getelementptr inbounds i8, ptr %i.ef, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !504
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.es = load i8, ptr %i.er, align 8, !tbaa !508
  %i.et = zext i8 %i.es to i64                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et
  store ptr %i.eu, ptr %i.j, align 8, !tbaa !48
  %i.ev = sub nsw i64 0, %i.et
  %i.ew = getelementptr inbounds i8, ptr %i.em, i64 %i.ev
  store ptr %i.ew, ptr %i.l, align 8, !tbaa !41
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !42
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !509
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !510
  store i32 %i.fb, ptr %i.ex, align 4, !tbaa !42
  %i.fc = load i16, ptr %i.f, align 8             ; 2 uses
  %i.fd = and i16 %i.fc, 8
  %.not.i223.i = icmp eq i16 %i.fd, 0
  br i1 %.not.i223.i, label %heredoc_restore.exit.i, label %bb.w

bb.w:                                             ; preds = %ripper_dispatch_scan_event.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.fe, align 8, !tbaa !487
  br label %heredoc_restore.exit.i

heredoc_restore.exit.i:                           ; preds = %bb.w, %ripper_dispatch_scan_event.exit.i
  %i.ff = and i16 %i.fc, -9
  store i16 %i.ff, ptr %i.f, align 8
  call void @ruby_xfree(ptr noundef nonnull %i.ea) #29
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.605, i32 noundef %.0177.i, ptr noundef %i.u) #29
  %i.fg = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.fg, ptr %i.l, align 8, !tbaa !41
  %i.fh = load i16, ptr %i.f, align 8
  %i.fi = and i16 %i.fh, 32
  %.not.i224.i = icmp eq i16 %i.fi, 0
  br i1 %.not.i224.i, label %parser_set_lex_state.exit.i, label %bb.x

bb.x:                                             ; preds = %heredoc_restore.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !60
  %i.fl = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.fk, i32 noundef 2, i32 noundef 9081) #29
  br label %parser_set_lex_state.exit.i

parser_set_lex_state.exit.i:                      ; preds = %bb.x, %heredoc_restore.exit.i
  %.0.i.i = phi i32 [ %i.fl, %bb.x ], [ 2, %heredoc_restore.exit.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i.i, ptr %i.fm, align 8, !tbaa !60
  br label %here_document.exit

bb.y:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.fn = phi ptr [ %i.al, %bb.g ], [ %i.as, %bb.h ], [ %i.al, %bb.f ], [ %i.al, %bb.e ]
  %.011.i.ph.i = phi i32 [ 13, %bb.g ], [ 10, %bb.h ], [ 13, %bb.f ], [ %i.an, %bb.e ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 8 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fr = icmp eq ptr %i.fn, %i.fq
  br i1 %i.fr, label %bb.z, label %whole_match_p.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !173
  %i.fu = icmp eq i32 %i.ft, -1
  br i1 %i.fu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fs, align 8, !tbaa !173
  br label %whole_match_p.exit.thread.i

bb.ab:                                            ; preds = %bb.z
  %.val210.i = load ptr, ptr %i.ad, align 8, !tbaa !413 ; 6 uses
  %i.fv = ptrtoint ptr %.val210.i to i64          ; 3 uses
  %i.fw = ptrtoint ptr %i.fp to i64               ; 3 uses
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp slt i64 %i.fx, %i.x
  br i1 %i.fy, label %whole_match_p.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fz = icmp ugt ptr %.val210.i, %i.fp
  br i1 %i.fz, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds i8, ptr %.val210.i, i64 -1 ; 4 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !10
  %i.gc = icmp eq i8 %i.gb, 10
  br i1 %i.gc, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.gd = icmp ugt ptr %i.ga, %i.fp
  br i1 %i.gd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds i8, ptr %.val210.i, i64 -2 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !10
  %i.gg = icmp eq i8 %i.gf, 13
  %spec.select.i.i = select i1 %i.gg, ptr %i.ge, ptr %i.ga
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i227.i = phi ptr [ %i.ga, %bb.ae ], [ %spec.select.i.i, %bb.af ] ; 2 uses
  %i.gh = ptrtoint ptr %.0.i227.i to i64          ; 2 uses
  %i.gi = sub i64 %i.gh, %i.fw
  %i.gj = icmp slt i64 %i.gi, %i.x
  br i1 %i.gj, label %whole_match_p.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %.16.pre-phi.i.i = phi i64 [ %i.gh, %bb.ag ], [ %i.fv, %bb.ad ], [ %i.fv, %bb.ac ]
  %.1.i.i = phi ptr [ %.0.i227.i, %bb.ag ], [ %.val210.i, %bb.ad ], [ %.val210.i, %bb.ac ]
  %i.gk = getelementptr inbounds i8, ptr %.1.i.i, i64 %i.y ; 3 uses
  %i.gl = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.gk, i64 noundef range(i64 0, 4294967296) %i.x) #32
  %.not.i225.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i225.i, label %bb.ai, label %whole_match_p.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %.not35.i.i = icmp ne i32 %i.ac, 0
  %i.gm = icmp ult ptr %i.fp, %i.gk
  %or.cond.i.i = and i1 %.not35.i.i, %i.gm
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %whole_match_p.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ai
  %i.gn = add i64 %i.fw, %i.x
  %i.go = sub i64 %.16.pre-phi.i.i, %i.gn
  %scevgep.i.i = getelementptr i8, ptr %i.fp, i64 %i.go ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.preheader.i.i
  %.0263.i.i = phi ptr [ %i.gu, %bb.aj ], [ %i.fp, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.gp = load i8, ptr %.0263.i.i, align 1, !tbaa !10 ; 2 uses
  %i.gq = sext i8 %i.gp to i32
  %i.gr = icmp ne i8 %i.gp, 32
  %i.gs = add nsw i32 %i.gq, -14
  %i.gt = icmp ult i32 %i.gs, -5
  %narrow.i.not.i.i = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %narrow.i.not.i.i, label %whole_match_p.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.0263.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.gu, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %whole_match_p.exit.i, label %.lr.ph.i.i, !llvm.loop !511

whole_match_p.exit.i:                             ; preds = %bb.aj, %.lr.ph.i.i, %bb.ai
  %.127.i.i = phi ptr [ %i.fp, %bb.ai ], [ %.0263.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.aj ]
  %.not.i = icmp eq ptr %.127.i.i, %i.gk
  br i1 %.not.i, label %bb.ak, label %whole_match_p.exit.thread.i

bb.ak:                                            ; preds = %whole_match_p.exit.i
  tail call fastcc void @parser_dispatch_heredoc_end(ptr noundef %0)
  %.pre.i = load i16, ptr %i.f, align 8           ; 2 uses
  %.pre380.i = and i16 %.pre.i, 8
  %i.gv = icmp eq i16 %.pre380.i, 0
  br label %bb.al

bb.al:                                            ; preds = %bb.cr, %bb.ak
  %.pre-phi.i = phi i1 [ true, %bb.cr ], [ %i.gv, %bb.ak ]
  %i.gw = phi i16 [ %i.or, %bb.cr ], [ %.pre.i, %bb.ak ]
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !171 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !171
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !501 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !488
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !451 ; 3 uses
  store ptr %i.hc, ptr %i.fo, align 8, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !453
  %i.hf = getelementptr inbounds i8, ptr %i.hc, i64 %i.he
  store ptr %i.hf, ptr %i.ad, align 8, !tbaa !413
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !503
  %i.hi = getelementptr inbounds i8, ptr %i.hc, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !504
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !508
  %i.hp = zext i8 %i.ho to i64                    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hp
  store ptr %i.hq, ptr %i.j, align 8, !tbaa !48
  %i.hr = sub nsw i64 0, %i.hp
  %i.hs = getelementptr inbounds i8, ptr %i.hi, i64 %i.hr
  store ptr %i.hs, ptr %i.l, align 8, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !509
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !510
  store i32 %i.hx, ptr %i.ht, align 4, !tbaa !42
  br i1 %.pre-phi.i, label %heredoc_restore.exit229.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.hy, align 8, !tbaa !487
  br label %heredoc_restore.exit229.i

heredoc_restore.exit229.i:                        ; preds = %bb.am, %bb.al
  %i.hz = and i16 %i.gw, -9
  store i16 %i.hz, ptr %i.f, align 8
  tail call void @ruby_xfree(ptr noundef nonnull %i.gx) #29
  %i.ia = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.ia, ptr %i.l, align 8, !tbaa !41
  %i.ib = load i16, ptr %i.f, align 8
  %i.ic = and i16 %i.ib, 32
  %.not.i230.i = icmp eq i16 %i.ic, 0
  br i1 %.not.i230.i, label %parser_set_lex_state.exit232.i, label %bb.an

bb.an:                                            ; preds = %heredoc_restore.exit229.i
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !60
  %i.if = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ie, i32 noundef 2, i32 noundef 9100) #29
  br label %parser_set_lex_state.exit232.i

parser_set_lex_state.exit232.i:                   ; preds = %bb.an, %heredoc_restore.exit229.i
  %.0.i231.i = phi i32 [ %i.if, %bb.an ], [ 2, %heredoc_restore.exit229.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i231.i, ptr %i.ig, align 8, !tbaa !60
  br label %here_document.exit

whole_match_p.exit.thread.i:                      ; preds = %whole_match_p.exit.i, %bb.ah, %bb.ag, %bb.ab, %bb.aa, %bb.y
  %i.ih = and i32 %i.ab, 2
  %.not189.i = icmp eq i32 %i.ih, 0
  br i1 %.not189.i, label %.preheader346.i, label %bb.bx

.preheader346.i:                                  ; preds = %whole_match_p.exit.thread.i
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.not35.i261.i = icmp ne i32 %i.ac, 0
  %.pre374.i = load ptr, ptr %i.ad, align 8, !tbaa !413
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader346.i
  %i.il = phi ptr [ %.pre374.i, %.preheader346.i ], [ %.val208.pre.i, %.backedge.i.backedge ] ; 8 uses
  %.0174.i = phi ptr [ null, %.preheader346.i ], [ %.1175.i, %.backedge.i.backedge ] ; 7 uses
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !488
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !451 ; 12 uses
  %4 = ptrtoint ptr %i.io to i64                  ; 3 uses
  %i.ip = icmp ugt ptr %i.il, %i.io
  br i1 %i.ip, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.backedge.i
  %i.iq = getelementptr inbounds i8, ptr %i.il, i64 -1 ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !10
  switch i8 %i.ir, label %bb.as [
    i8 10, label %bb.ap
    i8 13, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.is = icmp eq ptr %i.iq, %i.io
  br i1 %i.is, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.it = getelementptr inbounds i8, ptr %i.il, i64 -2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !10
  %.not190.i = icmp eq i8 %i.iu, 13
  br i1 %.not190.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.0178.i = phi ptr [ %i.iq, %bb.aq ], [ %i.il, %bb.ao ]
  %i.iv = getelementptr inbounds i8, ptr %.0178.i, i64 -1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.backedge.i
  %.1179.i = phi ptr [ %i.il, %bb.ao ], [ %i.il, %.backedge.i ], [ %i.iv, %bb.ar ], [ %i.il, %bb.aq ], [ %i.il, %bb.ap ] ; 5 uses
  %.1179373.i = ptrtoint ptr %.1179.i to i64      ; 2 uses
  %i.iw = load i32, ptr %i.ij, align 4, !tbaa !170 ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.preheader.i, label %bb.ba

.preheader.i:                                     ; preds = %bb.as
  %i.iy = icmp ult ptr %i.io, %.1179.i
  br i1 %i.iy, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i32, ptr %i.ik, align 8, !tbaa !173
  %i.iz = sub i64 %.1179373.i, %4
  br label %bb.at

bb.at:                                            ; preds = %bb.az, %.lr.ph.i
  %.sink.i361.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.sink.i.i, %bb.az ] ; 5 uses
  %.0170360.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ji, %bb.az ] ; 2 uses
  %i.ja = icmp eq i32 %.sink.i361.i, -1
  br i1 %i.ja, label %.critedge.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 %.0170360.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !10
  switch i8 %i.jc, label %bb.ax [
    i8 32, label %bb.av
    i8 9, label %bb.aw
    i8 10, label %.critedge.i
  ]

bb.av:                                            ; preds = %bb.au
  %i.jd = add nuw nsw i32 %.sink.i361.i, 1
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  %i.je = sdiv i32 %.sink.i361.i, 8
  %i.jf = shl nsw i32 %i.je, 3
  %i.jg = add i32 %i.jf, 8
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.jh = icmp sgt i32 %i.iw, %.sink.i361.i
  br i1 %i.jh, label %bb.ay, label %.critedge.i

bb.ay:                                            ; preds = %bb.ax
  store i32 %.sink.i361.i, ptr %i.ij, align 4, !tbaa !170
  br label %.critedge.i

bb.az:                                            ; preds = %bb.aw, %bb.av
  %.sink.i.i = phi i32 [ %i.jd, %bb.av ], [ %i.jg, %bb.aw ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.ik, align 8, !tbaa !173
  %i.ji = add nuw i64 %.0170360.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ji, %i.iz
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.at, !llvm.loop !512

.critedge.i:                                      ; preds = %bb.az, %bb.au, %bb.at, %bb.ay, %bb.ax, %.preheader.i
  store i32 0, ptr %i.ik, align 8, !tbaa !173
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge.i, %bb.as
  %.not192.i = icmp eq ptr %.0174.i, null
  %i.jj = sub i64 %.1179373.i, %4                 ; 9 uses
  br i1 %.not192.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %.0174.i, align 8, !tbaa !454
  %i.jk = icmp eq ptr %.1179.i, %i.io
  br i1 %i.jk, label %rb_parser_str_buf_cat.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jl = getelementptr inbounds nuw i8, ptr %.0174.i, i64 16 ; 3 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !453 ; 4 uses
  %i.jn = sub nsw i64 9223372036854775807, %i.jj
  %i.jo = icmp sgt i64 %i.jm, %i.jn
  br i1 %i.jo, label %bb.bd, label %ruby_nonempty_memcpy.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.582) #29
  br label %rb_parser_str_buf_cat.exit.i

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %bb.bc
  %i.jp = getelementptr inbounds nuw i8, ptr %.0174.i, i64 24 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !451 ; 4 uses
  %.not.i234.i = icmp ult ptr %i.io, %i.jq
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %i.jm
  %.not40.i.i = icmp ugt ptr %i.io, %i.jr
  %or.cond.i235.i = select i1 %.not.i234.i, i1 true, i1 %.not40.i.i
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %4, %i.js
  %.034.i.i = select i1 %or.cond.i235.i, i64 -1, i64 %i.jt ; 2 uses
  %i.ju = add nsw i64 %i.jm, %i.jj                ; 4 uses
  %i.jv = add i64 %i.ju, 1
  %i.jw = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.jq, i64 noundef %i.jv, i64 noundef 1) #36 ; 3 uses
  store ptr %i.jw, ptr %i.jp, align 8, !tbaa !451
  store i64 %i.ju, ptr %i.jl, align 8, !tbaa !453
  %.not41.i.i = icmp eq i64 %.034.i.i, -1
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %.034.i.i
  %spec.select.i236.i = select i1 %.not41.i.i, ptr %i.io, ptr %i.jx
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr readonly align 1 %spec.select.i236.i, i64 %i.jj, i1 false)
  store i64 %i.ju, ptr %i.jl, align 8, !tbaa !453
  %i.jz = load ptr, ptr %i.jp, align 8, !tbaa !451
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.ju
  store i8 0, ptr %i.ka, align 1, !tbaa !10
  br label %rb_parser_str_buf_cat.exit.i

bb.be:                                            ; preds = %bb.ba
  %i.kb = icmp slt i64 %i.jj, 0
  br i1 %i.kb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.567, i64 noundef %i.jj) #34
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.kc = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.kd = add nuw nsw i64 %i.jj, 1
  %i.ke = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.kd, i64 noundef 1) #33 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !451
  %.not.i.i238.i = icmp eq ptr %i.io, null
  %.not.i.i.i.i = icmp eq ptr %.1179.i, %i.io
  %or.cond.i.i.i = or i1 %.not.i.i238.i, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %rb_parser_encoding_string_new.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr nonnull readonly align 1 %i.io, i64 %i.jj, i1 false)
  br label %rb_parser_encoding_string_new.exit.i

rb_parser_encoding_string_new.exit.i:             ; preds = %bb.bh, %bb.bg
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store i64 %i.jj, ptr %i.kg, align 8, !tbaa !453
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jj
  store i8 0, ptr %i.kh, align 1, !tbaa !10
  store i32 0, ptr %i.kc, align 8, !tbaa !454
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.o, ptr %i.ki, align 8, !tbaa !455
  br label %rb_parser_str_buf_cat.exit.i

rb_parser_str_buf_cat.exit.i:                     ; preds = %rb_parser_encoding_string_new.exit.i, %ruby_nonempty_memcpy.exit.i.i, %bb.bd, %bb.bb
  %.1175.i = phi ptr [ %i.kc, %rb_parser_encoding_string_new.exit.i ], [ %.0174.i, %bb.bb ], [ %.0174.i, %bb.bd ], [ %.0174.i, %ruby_nonempty_memcpy.exit.i.i ] ; 7 uses
  %i.kj = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not193.i = icmp ult ptr %.1179.i, %i.kj
  br i1 %.not193.i, label %bb.bi, label %rb_parser_str_buf_cat.exit247.i

bb.bi:                                            ; preds = %rb_parser_str_buf_cat.exit.i
  store i32 0, ptr %.1175.i, align 8, !tbaa !454
  %i.kk = getelementptr inbounds nuw i8, ptr %.1175.i, i64 16 ; 3 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !453 ; 5 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775807
  br i1 %i.km, label %bb.bj, label %ruby_nonempty_memcpy.exit.i239.i

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.582) #29
  br label %rb_parser_str_buf_cat.exit247.i

ruby_nonempty_memcpy.exit.i239.i:                 ; preds = %bb.bi
  %i.kn = getelementptr inbounds nuw i8, ptr %.1175.i, i64 24 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !451 ; 4 uses
  %.not.i240.i = icmp ugt ptr %i.ko, @.str.7
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kl
  %.not40.i241.i = icmp ult ptr %i.kp, @.str.7
  %or.cond.i242.i = select i1 %.not.i240.i, i1 true, i1 %.not40.i241.i
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 ptrtoint (ptr @.str.7 to i64), %i.kq
  %.034.i243.i = select i1 %or.cond.i242.i, i64 -1, i64 %i.kr ; 2 uses
  %i.ks = add nsw i64 %i.kl, 1                    ; 3 uses
  %i.kt = add i64 %i.kl, 2
  %i.ku = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ko, i64 noundef %i.kt, i64 noundef 1) #36 ; 3 uses
  store ptr %i.ku, ptr %i.kn, align 8, !tbaa !451
  store i64 %i.ks, ptr %i.kk, align 8, !tbaa !453
  %.not41.i244.i = icmp eq i64 %.034.i243.i, -1
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %.034.i243.i
  %spec.select.i245.i = select i1 %.not41.i244.i, ptr @.str.7, ptr %i.kv
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 %i.kl
  %i.kx = load i8, ptr %spec.select.i245.i, align 1
  store i8 %i.kx, ptr %i.kw, align 1
  store i64 %i.ks, ptr %i.kk, align 8, !tbaa !453
  %i.ky = load ptr, ptr %i.kn, align 8, !tbaa !451
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.ks
  store i8 0, ptr %i.kz, align 1, !tbaa !10
  br label %rb_parser_str_buf_cat.exit247.i

rb_parser_str_buf_cat.exit247.i:                  ; preds = %ruby_nonempty_memcpy.exit.i239.i, %bb.bj, %rb_parser_str_buf_cat.exit.i
  %i.la = load ptr, ptr %i.ad, align 8, !tbaa !413
  store ptr %i.la, ptr %i.j, align 8, !tbaa !48
  %i.lb = load i32, ptr %i.ij, align 4, !tbaa !170
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.loopexit.i, label %.critedge.i249.i

.critedge.i249.i:                                 ; preds = %rb_parser_str_buf_cat.exit247.i
  %i.ld = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i250.i = icmp eq i32 %i.ld, 0
  br i1 %.not14.i250.i, label %bb.bk, label %nextc0.exit256.i

bb.bk:                                            ; preds = %.critedge.i249.i
  %.pre.i253.i = load ptr, ptr %i.j, align 8, !tbaa !48 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.pre.i253.i, i64 1 ; 3 uses
  store ptr %i.le, ptr %i.j, align 8, !tbaa !48
  %i.lf = load i8, ptr %.pre.i253.i, align 1, !tbaa !10
  %i.lg = icmp eq i8 %i.lf, 13
  %.val208.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !413 ; 8 uses
  br i1 %i.lg, label %bb.bl, label %bb.bo, !prof !196

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i254.i = icmp ult ptr %i.le, %.val208.pre.i
  br i1 %.not.i.i254.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.lh = load i8, ptr %i.le, align 1, !tbaa !10
  %i.li = icmp eq i8 %i.lh, 10
  br i1 %i.li, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre.i253.i, i64 2
  store ptr %i.lj, ptr %i.j, align 8, !tbaa !48
  br label %bb.bo

nextc0.exit256.i:                                 ; preds = %.critedge.i249.i
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef nonnull %.1175.i) #29
  br label %nextc0.exit.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.val207.i = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 7 uses
  %i.lk = ptrtoint ptr %.val208.pre.i to i64      ; 3 uses
  %i.ll = ptrtoint ptr %.val207.i to i64          ; 3 uses
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = icmp slt i64 %i.lm, %i.x
  br i1 %i.ln, label %.backedge.i.backedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lo = icmp ugt ptr %.val208.pre.i, %.val207.i
  br i1 %i.lo, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.lp = getelementptr inbounds i8, ptr %.val208.pre.i, i64 -1 ; 4 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !10
  %i.lr = icmp eq i8 %i.lq, 10
  br i1 %i.lr, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ls = icmp ugt ptr %i.lp, %.val207.i
  br i1 %i.ls, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lt = getelementptr inbounds i8, ptr %.val208.pre.i, i64 -2 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !10
  %i.lv = icmp eq i8 %i.lu, 13
  %spec.select.i272.i = select i1 %i.lv, ptr %i.lt, ptr %i.lp
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0.i271.i = phi ptr [ %i.lp, %bb.br ], [ %spec.select.i272.i, %bb.bs ] ; 2 uses
  %i.lw = ptrtoint ptr %.0.i271.i to i64          ; 2 uses
  %i.lx = sub i64 %i.lw, %i.ll
  %i.ly = icmp slt i64 %i.lx, %i.x
  br i1 %i.ly, label %.backedge.i.backedge, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq, %bb.bp
  %.16.pre-phi.i257.i = phi i64 [ %i.lw, %bb.bt ], [ %i.lk, %bb.bq ], [ %i.lk, %bb.bp ]
  %.1.i258.i = phi ptr [ %.0.i271.i, %bb.bt ], [ %.val208.pre.i, %bb.bq ], [ %.val208.pre.i, %bb.bp ]
  %i.lz = getelementptr inbounds i8, ptr %.1.i258.i, i64 %i.y ; 3 uses
  %i.ma = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.lz, i64 noundef range(i64 0, 4294967296) %i.x) #32
  %.not.i259.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i259.i, label %bb.bv, label %.backedge.i.backedge

bb.bv:                                            ; preds = %bb.bu
  %i.mb = icmp ult ptr %.val207.i, %i.lz
  %or.cond.i262.i = and i1 %.not35.i261.i, %i.mb
  br i1 %or.cond.i262.i, label %.lr.ph.preheader.i265.i, label %.critedge.i263.i

.lr.ph.preheader.i265.i:                          ; preds = %bb.bv
  %i.mc = add i64 %i.ll, %i.x
  %i.md = sub i64 %.16.pre-phi.i257.i, %i.mc
  %scevgep.i266.i = getelementptr i8, ptr %.val207.i, i64 %i.md ; 2 uses
  br label %.lr.ph.i267.i

.lr.ph.i267.i:                                    ; preds = %bb.bw, %.lr.ph.preheader.i265.i
  %.0263.i268.i = phi ptr [ %i.mj, %bb.bw ], [ %.val207.i, %.lr.ph.preheader.i265.i ] ; 3 uses
  %i.me = load i8, ptr %.0263.i268.i, align 1, !tbaa !10 ; 2 uses
  %i.mf = sext i8 %i.me to i32
  %i.mg = icmp ne i8 %i.me, 32
  %i.mh = add nsw i32 %i.mf, -14
  %i.mi = icmp ult i32 %i.mh, -5
  %narrow.i.not.i269.i = select i1 %i.mg, i1 %i.mi, i1 false
  br i1 %narrow.i.not.i269.i, label %.critedge.i263.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i267.i
  %i.mj = getelementptr inbounds nuw i8, ptr %.0263.i268.i, i64 1 ; 2 uses
  %exitcond.not.i270.i = icmp eq ptr %i.mj, %scevgep.i266.i
  br i1 %exitcond.not.i270.i, label %.critedge.i263.i, label %.lr.ph.i267.i, !llvm.loop !511

.critedge.i263.i:                                 ; preds = %bb.bw, %.lr.ph.i267.i, %bb.bv
  %.127.i264.i = phi ptr [ %.val207.i, %bb.bv ], [ %.0263.i268.i, %.lr.ph.i267.i ], [ %scevgep.i266.i, %bb.bw ]
  %.not363.i = icmp eq ptr %.127.i264.i, %i.lz
  br i1 %.not363.i, label %.loopexit347.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.critedge.i263.i, %bb.bu, %bb.bt, %bb.bo
  br label %.backedge.i, !llvm.loop !513

bb.bx:                                            ; preds = %whole_match_p.exit.thread.i
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  store i32 0, ptr %i.mk, align 8, !tbaa !514
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 11 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !471 ; 2 uses
  %.not.i274.i = icmp eq ptr %i.mm, null
  br i1 %.not.i274.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.mn, align 4, !tbaa !480
  %i.mo = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.mo, ptr %i.ml, align 8, !tbaa !471
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.mp = phi ptr [ %i.mo, %bb.by ], [ %i.mm, %bb.bx ]
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 6 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !480
  %i.ms = icmp sgt i32 %i.mr, 4096
  br i1 %i.ms, label %bb.ca, label %newtok.exit.i

bb.ca:                                            ; preds = %bb.bz
  store i32 60, ptr %i.mq, align 4, !tbaa !480
  %i.mt = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.mp, i64 noundef 60, i64 noundef 1) #36
  store ptr %i.mt, ptr %i.ml, align 8, !tbaa !471
  br label %newtok.exit.i

newtok.exit.i:                                    ; preds = %bb.ca, %bb.bz
  %i.mu = icmp eq i32 %.011.i.ph.i, 35
  br i1 %i.mu, label %bb.cb, label %nextc0.exit284.i

bb.cb:                                            ; preds = %newtok.exit.i
  %i.mv = tail call fastcc i32 @parser_peek_variable_name(ptr noundef nonnull %0) ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !173 ; 3 uses
  %.not195.i = icmp eq i32 %i.mx, -1
  br i1 %.not195.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !170
  %i.na = icmp sgt i32 %i.mz, %i.mx
  br i1 %i.na, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !170
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  store i32 -1, ptr %i.mw, align 8, !tbaa !173
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb
  %.not196.i = icmp eq i32 %i.mv, 0
  br i1 %.not196.i, label %bb.cg, label %here_document.exit

bb.cg:                                            ; preds = %bb.cf
  %i.nb = load ptr, ptr %i.ml, align 8, !tbaa !471
  %i.nc = load i32, ptr %i.mk, align 8, !tbaa !514 ; 2 uses
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.mk, align 8, !tbaa !514
  %i.ne = sext i32 %i.nc to i64
  %i.nf = getelementptr inbounds i8, ptr %i.nb, i64 %i.ne
  store i8 35, ptr %i.nf, align 1, !tbaa !10
  %i.ng = load i32, ptr %i.mk, align 8, !tbaa !514
  %i.nh = load i32, ptr %i.mq, align 4, !tbaa !480 ; 2 uses
  %.not.i275.i = icmp slt i32 %i.ng, %i.nh
  br i1 %.not.i275.i, label %tokadd.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ni = shl nsw i32 %i.nh, 1                    ; 2 uses
  store i32 %i.ni, ptr %i.mq, align 4, !tbaa !480
  %i.nj = load ptr, ptr %i.ml, align 8, !tbaa !471
  %i.nk = sext i32 %i.ni to i64
  %i.nl = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.nj, i64 noundef %i.nk, i64 noundef 1) #36
  store ptr %i.nl, ptr %i.ml, align 8, !tbaa !471
  br label %tokadd.exit.i

tokadd.exit.i:                                    ; preds = %bb.ch, %bb.cg
  %i.nm = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.nn = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i276.i = icmp ult ptr %i.nm, %i.nn
  br i1 %.not.i276.i, label %bb.ci, label %.critedge.i277.i, !prof !486

bb.ci:                                            ; preds = %tokadd.exit.i
  %i.no = load i16, ptr %i.f, align 8
  %i.np = and i16 %i.no, 8
  %.not13.i283.i = icmp eq i16 %i.np, 0
  br i1 %.not13.i283.i, label %bb.cj, label %.critedge.i277.i, !prof !486

bb.cj:                                            ; preds = %bb.ci
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !487
  %i.ns = icmp ugt ptr %i.nr, inttoptr (i64 1 to ptr)
  br i1 %i.ns, label %.critedge.i277.i, label %bb.ck, !prof !196

.critedge.i277.i:                                 ; preds = %bb.cj, %bb.ci, %tokadd.exit.i
  %i.nt = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i278.i = icmp eq i32 %i.nt, 0
  br i1 %.not14.i278.i, label %.critedge._crit_edge.i280.i, label %nextc0.exit284.i

.critedge._crit_edge.i280.i:                      ; preds = %.critedge.i277.i
  %.pre.i281.i = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.ck

bb.ck:                                            ; preds = %.critedge._crit_edge.i280.i, %bb.cj
  %i.nu = phi ptr [ %.pre.i281.i, %.critedge._crit_edge.i280.i ], [ %i.nm, %bb.cj ] ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1 ; 3 uses
  store ptr %i.nv, ptr %i.j, align 8, !tbaa !48
  %i.nw = load i8, ptr %i.nu, align 1, !tbaa !10
  %i.nx = icmp eq i8 %i.nw, 13
  br i1 %i.nx, label %bb.cl, label %nextc0.exit284.i, !prof !196

bb.cl:                                            ; preds = %bb.ck
  %i.ny = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i.i282.i = icmp ult ptr %i.nv, %i.ny
  br i1 %.not.i.i282.i, label %bb.cm, label %nextc0.exit284.i

bb.cm:                                            ; preds = %bb.cl
  %i.nz = load i8, ptr %i.nv, align 1, !tbaa !10
  %i.oa = icmp eq i8 %i.nz, 10
  br i1 %i.oa, label %bb.cn, label %nextc0.exit284.i

bb.cn:                                            ; preds = %bb.cm
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  store ptr %i.ob, ptr %i.j, align 8, !tbaa !48
  br label %nextc0.exit284.i

nextc0.exit284.i:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %.critedge.i277.i, %newtok.exit.i
  %.1173.i = phi i1 [ false, %newtok.exit.i ], [ true, %.critedge.i277.i ], [ false, %bb.ck ], [ false, %bb.cl ], [ false, %bb.cn ], [ false, %bb.cm ]
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.not35.i310.i = icmp ne i32 %i.ac, 0
  br i1 %.1173.i, label %pushback.exit.i, label %.backedge349.i

.backedge349.i:                                   ; preds = %bb.dj, %bb.do, %bb.dp, %.critedge.i312.i, %nextc0.exit284.i
  %i.oe = load i16, ptr %i.f, align 8
  %i.of = and i16 %i.oe, -9
  store i16 %i.of, ptr %i.f, align 8
  %i.og = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -1 ; 3 uses
  store ptr %i.oh, ptr %i.j, align 8, !tbaa !48
  %i.oi = load ptr, ptr %i.fo, align 8, !tbaa !44
  %i.oj = icmp ugt ptr %i.oh, %i.oi
  br i1 %i.oj, label %bb.co, label %pushback.exit.i

bb.co:                                            ; preds = %.backedge349.i
  %i.ok = load i8, ptr %i.oh, align 1, !tbaa !10
  %i.ol = icmp eq i8 %i.ok, 10
  br i1 %i.ol, label %bb.cp, label %pushback.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.om = getelementptr inbounds i8, ptr %i.og, i64 -2 ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !10
  %i.oo = icmp eq i8 %i.on, 13
  br i1 %i.oo, label %bb.cq, label %pushback.exit.i

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.om, ptr %i.j, align 8, !tbaa !48
  br label %pushback.exit.i

pushback.exit.i:                                  ; preds = %bb.cq, %bb.cp, %bb.co, %.backedge349.i, %nextc0.exit284.i
  %i.op = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr %i.op, ptr %i.c, align 8, !tbaa !500
  %i.oq = call fastcc i32 @tokadd_string(ptr noundef %0, i32 noundef %i.ab, i32 noundef 10, i32 noundef 0, ptr noundef null, ptr noundef %i.c, ptr noundef %i.d)
  switch i32 %i.oq, label %.loopexit348.i [
    i32 -1, label %bb.cr
    i32 10, label %bb.ct
    i32 92, label %bb.cs
  ]

bb.cr:                                            ; preds = %pushback.exit.i
  %i.or = load i16, ptr %i.f, align 8             ; 2 uses
  %i.os = and i16 %i.or, 8
  %.not199.i = icmp eq i16 %i.os, 0
  br i1 %.not199.i, label %bb.al, label %nextc0.exit.i

bb.cs:                                            ; preds = %pushback.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 -1, ptr %i.ot, align 8, !tbaa !173
  br label %.loopexit348.i

.loopexit348.i:                                   ; preds = %pushback.exit.i, %bb.db, %bb.cs
  %i.ou = load ptr, ptr %i.ml, align 8, !tbaa !471
  %i.ov = load i32, ptr %i.mk, align 8, !tbaa !514
  %i.ow = sext i32 %i.ov to i64
  %i.ox = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.oy = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.oz = tail call fastcc ptr @parser_str_new(ptr noundef %i.ou, i64 noundef %i.ow, ptr noundef %i.ox, i32 noundef %i.ab, ptr noundef %i.oy)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %rb_parser_str_buf_cat.exit247.i, %.loopexit348.i
  %.2176.i = phi ptr [ %i.oz, %.loopexit348.i ], [ %.1175.i, %rb_parser_str_buf_cat.exit247.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.pa = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %i.pb = getelementptr i8, ptr %0, i64 288
  %.val.i.i285.i = load ptr, ptr %i.pb, align 8, !tbaa !122
  %i.pc = call ptr @rb_ast_newnode(ptr noundef %.val.i.i285.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.pc, i32 noundef range(i32 0, 115) 63) #29
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.pe = load i32, ptr %2, align 4, !tbaa !51
  %i.pf = sext i32 %i.pe to i64
  %i.pg = load i64, ptr %i.pc, align 8, !tbaa !61
  %i.ph = and i64 %i.pg, 32767
  %i.pi = shl nsw i64 %i.pf, 15
  %i.pj = or disjoint i64 %i.ph, %i.pi
  store i64 %i.pj, ptr %i.pc, align 8, !tbaa !61
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !208 ; 2 uses
  %i.pm = add nsw i32 %i.pl, 1
  store i32 %i.pm, ptr %i.pk, align 8, !tbaa !208
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  store i32 %i.pl, ptr %i.pn, align 8, !tbaa !209
  %i.po = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  store ptr %.2176.i, ptr %i.po, align 8, !tbaa !432
  %i.pp = load ptr, ptr %0, align 8, !tbaa !18
  store ptr %i.pc, ptr %i.pp, align 8, !tbaa !10
  %i.pq = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.pr = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.pq to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.pw = call i64 @rb_enc_str_new(ptr noundef %i.pq, i64 noundef %i.pu, ptr noundef %i.pv) #29
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.py = call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %.2176.i) #29
  store i64 %i.py, ptr %i.px, align 8, !tbaa !47
  %i.pz = load ptr, ptr %i.c, align 8, !tbaa !500
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.pz, i64 noundef 0)
  br label %here_document.exit

bb.ct:                                            ; preds = %pushback.exit.i
  %i.qa = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.qb = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i286.i = icmp ult ptr %i.qa, %i.qb
  br i1 %.not.i286.i, label %bb.cu, label %.critedge.i287.i, !prof !486

bb.cu:                                            ; preds = %bb.ct
  %i.qc = load i16, ptr %i.f, align 8
  %i.qd = and i16 %i.qc, 8
  %.not13.i293.i = icmp eq i16 %i.qd, 0
  br i1 %.not13.i293.i, label %bb.cv, label %.critedge.i287.i, !prof !486

bb.cv:                                            ; preds = %bb.cu
  %i.qe = load ptr, ptr %i.oc, align 8, !tbaa !487
  %i.qf = icmp ugt ptr %i.qe, inttoptr (i64 1 to ptr)
  br i1 %i.qf, label %.critedge.i287.i, label %bb.cw, !prof !196

.critedge.i287.i:                                 ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.qg = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i288.i = icmp eq i32 %i.qg, 0
  br i1 %.not14.i288.i, label %.critedge._crit_edge.i290.i, label %nextc0.exit294.i

.critedge._crit_edge.i290.i:                      ; preds = %.critedge.i287.i
  %.pre.i291.i = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.cw

bb.cw:                                            ; preds = %.critedge._crit_edge.i290.i, %bb.cv
  %i.qh = phi ptr [ %.pre.i291.i, %.critedge._crit_edge.i290.i ], [ %i.qa, %bb.cv ] ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1 ; 3 uses
  store ptr %i.qi, ptr %i.j, align 8, !tbaa !48
  %i.qj = load i8, ptr %i.qh, align 1, !tbaa !10  ; 2 uses
  %i.qk = icmp eq i8 %i.qj, 13
  br i1 %i.qk, label %bb.cx, label %nextc0.exit294.i, !prof !196

bb.cx:                                            ; preds = %bb.cw
  %i.ql = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i.i292.i = icmp ult ptr %i.qi, %i.ql
  br i1 %.not.i.i292.i, label %bb.cy, label %nextc0.exit294.i

bb.cy:                                            ; preds = %bb.cx
  %i.qm = load i8, ptr %i.qi, align 1, !tbaa !10
  %i.qn = icmp eq i8 %i.qm, 10
  br i1 %i.qn, label %bb.cz, label %nextc0.exit294.i

bb.cz:                                            ; preds = %bb.cy
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  store ptr %i.qo, ptr %i.j, align 8, !tbaa !48
  br label %nextc0.exit294.i

nextc0.exit294.i:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw, %.critedge.i287.i
  %.011.i289.i = phi i8 [ -1, %.critedge.i287.i ], [ %i.qj, %bb.cw ], [ 13, %bb.cx ], [ 10, %bb.cz ], [ 13, %bb.cy ]
  %i.qp = load ptr, ptr %i.ml, align 8, !tbaa !471
  %i.qq = load i32, ptr %i.mk, align 8, !tbaa !514 ; 2 uses
  %i.qr = add nsw i32 %i.qq, 1
  store i32 %i.qr, ptr %i.mk, align 8, !tbaa !514
  %i.qs = sext i32 %i.qq to i64
  %i.qt = getelementptr inbounds i8, ptr %i.qp, i64 %i.qs
  store i8 %.011.i289.i, ptr %i.qt, align 1, !tbaa !10
  %i.qu = load i32, ptr %i.mk, align 8, !tbaa !514
  %i.qv = load i32, ptr %i.mq, align 4, !tbaa !480 ; 2 uses
  %.not.i295.i = icmp slt i32 %i.qu, %i.qv
  br i1 %.not.i295.i, label %tokadd.exit296.i, label %bb.da

bb.da:                                            ; preds = %nextc0.exit294.i
  %i.qw = shl nsw i32 %i.qv, 1                    ; 2 uses
  store i32 %i.qw, ptr %i.mq, align 4, !tbaa !480
  %i.qx = load ptr, ptr %i.ml, align 8, !tbaa !471
  %i.qy = sext i32 %i.qw to i64
  %i.qz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.qx, i64 noundef %i.qy, i64 noundef 1) #36
  store ptr %i.qz, ptr %i.ml, align 8, !tbaa !471
  br label %tokadd.exit296.i

tokadd.exit296.i:                                 ; preds = %bb.da, %nextc0.exit294.i
  %i.ra = load i32, ptr %i.od, align 4, !tbaa !170
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %tokadd.exit296.i
  %i.rc = load ptr, ptr %i.ad, align 8, !tbaa !413
  store ptr %i.rc, ptr %i.j, align 8, !tbaa !48
  br label %.loopexit348.i

bb.dc:                                            ; preds = %tokadd.exit296.i
  %i.rd = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.re = load ptr, ptr %i.ad, align 8, !tbaa !413 ; 2 uses
  %.not.i297.i = icmp ult ptr %i.rd, %i.re
  br i1 %.not.i297.i, label %bb.dd, label %.critedge.i298.i, !prof !486

bb.dd:                                            ; preds = %bb.dc
  %i.rf = load i16, ptr %i.f, align 8
  %i.rg = and i16 %i.rf, 8
  %.not13.i304.i = icmp eq i16 %i.rg, 0
  br i1 %.not13.i304.i, label %bb.de, label %.critedge.i298.i, !prof !486

bb.de:                                            ; preds = %bb.dd
  %i.rh = load ptr, ptr %i.oc, align 8, !tbaa !487
  %i.ri = icmp ugt ptr %i.rh, inttoptr (i64 1 to ptr)
  br i1 %i.ri, label %.critedge.i298.i, label %bb.df, !prof !196

.critedge.i298.i:                                 ; preds = %bb.de, %bb.dd, %bb.dc
  %i.rj = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i299.i = icmp eq i32 %i.rj, 0
  br i1 %.not14.i299.i, label %.critedge._crit_edge.i301.i, label %nextc0.exit.i

.critedge._crit_edge.i301.i:                      ; preds = %.critedge.i298.i
  %.pre.i302.i = load ptr, ptr %i.j, align 8, !tbaa !48
  %.val206.pre.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !413
  br label %bb.df

bb.df:                                            ; preds = %.critedge._crit_edge.i301.i, %bb.de
  %.val206.pre.i = phi ptr [ %.val206.pre.pre.i, %.critedge._crit_edge.i301.i ], [ %i.re, %bb.de ] ; 7 uses
  %i.rk = phi ptr [ %.pre.i302.i, %.critedge._crit_edge.i301.i ], [ %i.rd, %bb.de ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 1 ; 3 uses
  store ptr %i.rl, ptr %i.j, align 8, !tbaa !48
  %i.rm = load i8, ptr %i.rk, align 1, !tbaa !10
  %i.rn = icmp eq i8 %i.rm, 13
  br i1 %i.rn, label %bb.dg, label %bb.dj, !prof !196

bb.dg:                                            ; preds = %bb.df
  %.not.i.i303.i = icmp ult ptr %i.rl, %.val206.pre.i
  br i1 %.not.i.i303.i, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.ro = load i8, ptr %i.rl, align 1, !tbaa !10
  %i.rp = icmp eq i8 %i.ro, 10
  br i1 %i.rp, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 2
  store ptr %i.rq, ptr %i.j, align 8, !tbaa !48
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.val.i = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 7 uses
  %i.rr = ptrtoint ptr %.val206.pre.i to i64      ; 3 uses
  %i.rs = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = icmp slt i64 %i.rt, %i.x
  br i1 %i.ru, label %.backedge349.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rv = icmp ugt ptr %.val206.pre.i, %.val.i
  br i1 %i.rv, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.rw = getelementptr inbounds i8, ptr %.val206.pre.i, i64 -1 ; 4 uses
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !10
  %i.ry = icmp eq i8 %i.rx, 10
  br i1 %i.ry, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.rz = icmp ugt ptr %i.rw, %.val.i
  br i1 %i.rz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.sa = getelementptr inbounds i8, ptr %.val206.pre.i, i64 -2 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !10
  %i.sc = icmp eq i8 %i.sb, 13
  %spec.select.i321.i = select i1 %i.sc, ptr %i.sa, ptr %i.rw
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0.i320.i = phi ptr [ %i.rw, %bb.dm ], [ %spec.select.i321.i, %bb.dn ] ; 2 uses
  %i.sd = ptrtoint ptr %.0.i320.i to i64          ; 2 uses
  %i.se = sub i64 %i.sd, %i.rs
  %i.sf = icmp slt i64 %i.se, %i.x
  br i1 %i.sf, label %.backedge349.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl, %bb.dk
  %.16.pre-phi.i306.i = phi i64 [ %i.sd, %bb.do ], [ %i.rr, %bb.dl ], [ %i.rr, %bb.dk ]
  %.1.i307.i = phi ptr [ %.0.i320.i, %bb.do ], [ %.val206.pre.i, %bb.dl ], [ %.val206.pre.i, %bb.dk ]
  %i.sg = getelementptr inbounds i8, ptr %.1.i307.i, i64 %i.y ; 3 uses
  %i.sh = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.sg, i64 noundef range(i64 0, 4294967296) %i.x) #32
  %.not.i308.i = icmp eq i32 %i.sh, 0
  br i1 %.not.i308.i, label %bb.dq, label %.backedge349.i

bb.dq:                                            ; preds = %bb.dp
  %i.si = icmp ult ptr %.val.i, %i.sg
  %or.cond.i311.i = and i1 %.not35.i310.i, %i.si
  br i1 %or.cond.i311.i, label %.lr.ph.preheader.i314.i, label %.critedge.i312.i

.lr.ph.preheader.i314.i:                          ; preds = %bb.dq
  %i.sj = add i64 %i.rs, %i.x
  %i.sk = sub i64 %.16.pre-phi.i306.i, %i.sj
  %scevgep.i315.i = getelementptr i8, ptr %.val.i, i64 %i.sk ; 2 uses
  br label %.lr.ph.i316.i

.lr.ph.i316.i:                                    ; preds = %bb.dr, %.lr.ph.preheader.i314.i
  %.0263.i317.i = phi ptr [ %i.sq, %bb.dr ], [ %.val.i, %.lr.ph.preheader.i314.i ] ; 3 uses
  %i.sl = load i8, ptr %.0263.i317.i, align 1, !tbaa !10 ; 2 uses
  %i.sm = sext i8 %i.sl to i32
  %i.sn = icmp ne i8 %i.sl, 32
  %i.so = add nsw i32 %i.sm, -14
  %i.sp = icmp ult i32 %i.so, -5
  %narrow.i.not.i318.i = select i1 %i.sn, i1 %i.sp, i1 false
  br i1 %narrow.i.not.i318.i, label %.critedge.i312.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i316.i
  %i.sq = getelementptr inbounds nuw i8, ptr %.0263.i317.i, i64 1 ; 2 uses
  %exitcond.not.i319.i = icmp eq ptr %i.sq, %scevgep.i315.i
  br i1 %exitcond.not.i319.i, label %.critedge.i312.i, label %.lr.ph.i316.i, !llvm.loop !511

.critedge.i312.i:                                 ; preds = %bb.dr, %.lr.ph.i316.i, %bb.dq
  %.127.i313.i = phi ptr [ %.val.i, %bb.dq ], [ %.0263.i317.i, %.lr.ph.i316.i ], [ %scevgep.i315.i, %bb.dr ]
  %.not362.i = icmp eq ptr %.127.i313.i, %i.sg
  br i1 %.not362.i, label %bb.ds, label %.backedge349.i

bb.ds:                                            ; preds = %.critedge.i312.i
  %i.sr = load ptr, ptr %i.ml, align 8, !tbaa !471
  %i.ss = load i32, ptr %i.mk, align 8, !tbaa !514
  %i.st = sext i32 %i.ss to i64
  %i.su = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.sv = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.sw = tail call fastcc ptr @parser_str_new(ptr noundef %i.sr, i64 noundef %i.st, ptr noundef %i.su, i32 noundef %i.ab, ptr noundef %i.sv)
  br label %.loopexit347.i

.loopexit347.i:                                   ; preds = %.critedge.i263.i, %bb.ds
  %.3.i = phi ptr [ %i.sw, %bb.ds ], [ %.1175.i, %.critedge.i263.i ] ; 2 uses
  tail call fastcc void @parser_dispatch_heredoc_end(ptr noundef %0)
  %i.sx = load ptr, ptr %i.h, align 8, !tbaa !171 ; 6 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !171
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !501 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.sz, ptr %i.ta, align 8, !tbaa !488
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !451 ; 3 uses
  store ptr %i.tc, ptr %i.fo, align 8, !tbaa !44
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.te = load i64, ptr %i.td, align 8, !tbaa !453
  %i.tf = getelementptr inbounds i8, ptr %i.tc, i64 %i.te
  store ptr %i.tf, ptr %i.ad, align 8, !tbaa !413
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !503
  %i.ti = getelementptr inbounds i8, ptr %i.tc, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sx, i64 28
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !504
  %i.tl = zext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.to = load i8, ptr %i.tn, align 8, !tbaa !508
  %i.tp = zext i8 %i.to to i64                    ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tp
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !48
  %i.tr = sub nsw i64 0, %i.tp
  %i.ts = getelementptr inbounds i8, ptr %i.ti, i64 %i.tr
  store ptr %i.ts, ptr %i.l, align 8, !tbaa !41
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !42
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.tu, ptr %i.tv, align 8, !tbaa !509
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !510
  store i32 %i.tx, ptr %i.tt, align 4, !tbaa !42
  %i.ty = load i16, ptr %i.f, align 8             ; 2 uses
  %i.tz = and i16 %i.ty, 8
  %.not.i323.i = icmp eq i16 %i.tz, 0
  br i1 %.not.i323.i, label %heredoc_restore.exit324.i, label %bb.dt

bb.dt:                                            ; preds = %.loopexit347.i
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.ua, align 8, !tbaa !487
  br label %heredoc_restore.exit324.i

heredoc_restore.exit324.i:                        ; preds = %bb.dt, %.loopexit347.i
  %i.ub = and i16 %i.ty, -9
  store i16 %i.ub, ptr %i.f, align 8
  tail call void @ruby_xfree(ptr noundef nonnull %i.sx) #29
  %i.uc = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.uc, ptr %i.l, align 8, !tbaa !41
  %i.ud = or disjoint i32 %i.ab, 32768
  %i.ue = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i32 %i.ud, ptr %i.uf, align 8, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i32 0, ptr %i.ug, align 8, !tbaa !10
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 20
  store i32 0, ptr %i.uh, align 4, !tbaa !10
  store ptr %i.ue, ptr %i.h, align 8, !tbaa !171
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.uk = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %3) #29 ; 0 uses
  %i.ul = getelementptr i8, ptr %0, i64 288
  %.val.i.i325.i = load ptr, ptr %i.ul, align 8, !tbaa !122
  %i.um = call ptr @rb_ast_newnode(ptr noundef %.val.i.i325.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.um, i32 noundef range(i32 0, 115) 63) #29
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.un, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.uo = load i32, ptr %3, align 4, !tbaa !51
  %i.up = sext i32 %i.uo to i64
  %i.uq = load i64, ptr %i.um, align 8, !tbaa !61
  %i.ur = and i64 %i.uq, 32767
  %i.us = shl nsw i64 %i.up, 15
  %i.ut = or disjoint i64 %i.ur, %i.us
  store i64 %i.ut, ptr %i.um, align 8, !tbaa !61
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !208 ; 2 uses
  %i.uw = add nsw i32 %i.uv, 1
  store i32 %i.uw, ptr %i.uu, align 8, !tbaa !208
  %i.ux = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  store i32 %i.uv, ptr %i.ux, align 8, !tbaa !209
  %i.uy = getelementptr inbounds nuw i8, ptr %i.um, i64 32
  store ptr %.3.i, ptr %i.uy, align 8, !tbaa !432
  %i.uz = load ptr, ptr %0, align 8, !tbaa !18
  store ptr %i.um, ptr %i.uz, align 8, !tbaa !10
  %i.va = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.vb = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.vc = ptrtoint ptr %i.vb to i64
  %i.vd = ptrtoint ptr %i.va to i64
  %i.ve = sub i64 %i.vc, %i.vd
  %i.vf = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.vg = call i64 @rb_enc_str_new(ptr noundef %i.va, i64 noundef %i.ve, ptr noundef %i.vf) #29
  store i64 %i.vg, ptr %i.ui, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.vh = call i64 @rb_str_new_mutable_parser_string(ptr noundef %.3.i) #29 ; 0 uses
  store i64 %i.uj, ptr %i.ui, align 8, !tbaa !47
  br label %here_document.exit

here_document.exit:                               ; preds = %parser_set_lex_state.exit.i, %parser_set_lex_state.exit232.i, %bb.cf, %.loopexit.i, %heredoc_restore.exit324.i
  %.1.i = phi i32 [ 345, %parser_set_lex_state.exit.i ], [ 345, %parser_set_lex_state.exit232.i ], [ 321, %.loopexit.i ], [ 321, %heredoc_restore.exit324.i ], [ %i.mv, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %pushback.exit1061

bb.du:                                            ; preds = %bb.b
  %i.vi = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !515 ; 11 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !517 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !49
  store ptr %i.vp, ptr %i.a, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr null, ptr %i.b, align 8, !tbaa !500
  %i.vq = and i32 %i.vj, 32768
  %.not.i854 = icmp eq i32 %i.vq, 0
  br i1 %.not.i854, label %bb.ed, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vr = and i32 %i.vj, 8
  %.not99.i = icmp eq i32 %i.vr, 0
  br i1 %.not99.i, label %nextc0.exit.i858, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !413
  %.not.i.i855 = icmp ult ptr %i.k, %i.vt
  %i.vu = and i16 %i.g, 8
  %.not13.i.i865 = icmp eq i16 %i.vu, 0
  %or.cond1306 = select i1 %.not.i.i855, i1 %.not13.i.i865, i1 false, !prof !506
  br i1 %or.cond1306, label %bb.dx, label %.critedge.i.i856, !prof !506

bb.dx:                                            ; preds = %bb.dw
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !487
  %i.vx = icmp ugt ptr %i.vw, inttoptr (i64 1 to ptr)
  br i1 %i.vx, label %.critedge.i.i856, label %bb.dy, !prof !196

.critedge.i.i856:                                 ; preds = %bb.dx, %bb.dw
  %i.vy = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i.i857 = icmp eq i32 %i.vy, 0
  br i1 %.not14.i.i857, label %.critedge._crit_edge.i.i862, label %nextc0.exit.i858

.critedge._crit_edge.i.i862:                      ; preds = %.critedge.i.i856
  %.pre.i.i863 = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.dy

bb.dy:                                            ; preds = %.critedge._crit_edge.i.i862, %bb.dx
  %i.vz = phi ptr [ %.pre.i.i863, %.critedge._crit_edge.i.i862 ], [ %i.k, %bb.dx ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1 ; 3 uses
  store ptr %i.wa, ptr %i.j, align 8, !tbaa !48
  %i.wb = load i8, ptr %i.vz, align 1, !tbaa !10
  %i.wc = icmp eq i8 %i.wb, 13
  br i1 %i.wc, label %bb.dz, label %nextc0.exit.i858, !prof !196

bb.dz:                                            ; preds = %bb.dy
  %i.wd = load ptr, ptr %i.vs, align 8, !tbaa !413
  %.not.i.i.i864 = icmp ult ptr %i.wa, %i.wd
  br i1 %.not.i.i.i864, label %bb.ea, label %nextc0.exit.i858

end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  br label %.loopexit.i902

bb.iy:                                            ; preds = %.preheader.i900
  %i.aug = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.629, ptr noundef %i.aoj, i64 noundef %i.anv) #32
  %i.auh = icmp eq i32 %i.aug, 0
  %.not219.1.i = icmp eq i64 %i.anv, 8
  %or.cond509.i = and i1 %.not219.1.i, %i.auh
  br i1 %or.cond509.i, label %bb.iq, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aui = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.630, ptr noundef %i.aoj, i64 noundef %i.anv) #32
  %i.auj = icmp eq i32 %i.aui, 0
  %.not219.2.i = icmp eq i64 %i.anv, 21
  %or.cond510.i = and i1 %.not219.2.i, %i.auj
  br i1 %or.cond510.i, label %bb.iq, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.auk = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.631, ptr noundef %i.aoj, i64 noundef %i.anv) #32
  %i.aul = icmp eq i32 %i.auk, 0
  %.not219.3.i = icmp eq i64 %i.anv, 24
  %or.cond511.i = and i1 %.not219.3.i, %i.aul
  br i1 %or.cond511.i, label %bb.iq, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aum = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.632, ptr noundef %i.aoj, i64 noundef %i.anv) #32
  %i.aun = icmp eq i32 %i.aum, 0
  %.not219.4.i = icmp eq i64 %i.anv, 11
  %or.cond512.i = and i1 %.not219.4.i, %i.aun
  br i1 %or.cond512.i, label %bb.iq, label %..loopexit.i902_crit_edge

..loopexit.i902_crit_edge:                        ; preds = %bb.jb
  %.pre2167 = ptrtoint ptr %.0171454.i to i64
  %.pre2169 = ptrtoint ptr %.0172451.i to i64
  %.pre2171 = sub i64 %.pre2167, %.pre2169
  br label %.loopexit.i902

.loopexit.i902:                                   ; preds = %..loopexit.i902_crit_edge, %RSTRING_PTR.exit247.i
  %.pre-phi2172 = phi i64 [ %.pre2171, %..loopexit.i902_crit_edge ], [ %i.atm, %RSTRING_PTR.exit247.i ] ; 3 uses
  %.2175.i = phi i64 [ %.0173376.i, %..loopexit.i902_crit_edge ], [ %.1174.i, %RSTRING_PTR.exit247.i ] ; 5 uses
  %.not222.i = icmp eq i64 %.2175.i, 0
  br i1 %.not222.i, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %.loopexit.i902
  %i.auo = tail call i64 @rb_str_resize(i64 noundef %.2175.i, i64 noundef %.pre-phi2172) #29 ; 0 uses
  %i.aup = inttoptr i64 %.2175.i to ptr           ; 2 uses
  %i.auq = load i64, ptr %i.aup, align 8, !tbaa !431
  %i.aur = and i64 %i.auq, 8192
  %.not.i248.i = icmp eq i64 %i.aur, 0
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aup, i64 24 ; 2 uses
  br i1 %.not.i248.i, label %RSTRING_PTR.exit249.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !10
  br label %RSTRING_PTR.exit249.i

RSTRING_PTR.exit249.i:                            ; preds = %bb.jd, %bb.jc
  %i.auu = phi ptr [ %i.aut, %bb.jd ], [ %i.aus, %bb.jc ]
  %.not.i250.i = icmp eq ptr %.0171454.i, %.0172451.i
  br i1 %.not.i250.i, label %ruby_nonempty_memcpy.exit251.i, label %bb.je

bb.je:                                            ; preds = %RSTRING_PTR.exit249.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auu, ptr nonnull readonly align 1 %.0172451.i, i64 %.pre-phi2172, i1 false)
  br label %ruby_nonempty_memcpy.exit251.i

bb.jf:                                            ; preds = %.loopexit.i902
  %i.auv = load ptr, ptr %i.afw, align 8, !tbaa !49
  %i.auw = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0172451.i, i64 noundef %.pre-phi2172, ptr noundef %i.auv) #29
  br label %ruby_nonempty_memcpy.exit251.i

ruby_nonempty_memcpy.exit251.i:                   ; preds = %bb.jf, %bb.je, %RSTRING_PTR.exit249.i
  %.3176.i = phi i64 [ %i.auw, %bb.jf ], [ %.2175.i, %RSTRING_PTR.exit249.i ], [ %.2175.i, %bb.je ] ; 2 uses
  %.val.i903 = load i64, ptr %i.afx, align 8, !tbaa !46
  %i.aux = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i903, i64 noundef %i.agc, i32 noundef 2, i64 noundef %.1180.i, i64 noundef %.3176.i) #29 ; 0 uses
  br label %bb.jg

bb.jg:                                            ; preds = %ruby_nonempty_memcpy.exit251.i, %bb.ib
  %.3182.i = phi i64 [ %.1180.i, %ruby_nonempty_memcpy.exit251.i ], [ %.0179375.i, %bb.ib ]
  %.5178.i = phi i64 [ %.3176.i, %ruby_nonempty_memcpy.exit251.i ], [ %.0173376.i, %bb.ib ]
  %.14167.i = phi i64 [ %.12165.i, %ruby_nonempty_memcpy.exit251.i ], [ %.4157333.i, %bb.ib ] ; 2 uses
  %.14.i = phi ptr [ %.12.i, %ruby_nonempty_memcpy.exit251.i ], [ %.4334.i, %bb.ib ]
  %i.auy = icmp sgt i64 %.14167.i, 0
  br i1 %i.auy, label %.preheader284.i, label %parser_magic_comment.exit

.loopexit:                                        ; preds = %bb.hr, %bb.hu, %bb.ib, %.critedge14.i, %.lr.ph370.i, %bb.hi, %magic_comment_marker.exit.i
  %i.auz = load i16, ptr %i.f, align 8            ; 2 uses
  %i.ava = and i16 %i.auz, 128
  %.not.i906 = icmp eq i16 %i.ava, 0
  br i1 %.not.i906, label %comment_at_top.exit, label %parser_magic_comment.exit

comment_at_top.exit:                              ; preds = %.loopexit
  %i.avb = load i32, ptr %i.agd, align 8, !tbaa !541
  %i.avc = and i16 %i.auz, 64
  %.not4.i = icmp eq i16 %i.avc, 0
  %i.avd = select i1 %.not4.i, i32 1, i32 2
  %i.ave = icmp eq i32 %i.avb, %i.avd
  br i1 %i.ave, label %bb.jh, label %parser_magic_comment.exit

bb.jh:                                            ; preds = %comment_at_top.exit
  %i.avf = load ptr, ptr %i.afs, align 8, !tbaa !48 ; 2 uses
  %i.avg = load ptr, ptr %i.aft, align 8, !tbaa !413 ; 4 uses
  %i.avh = ptrtoint ptr %i.avg to i64             ; 3 uses
  %i.avi = ptrtoint ptr %i.avf to i64
  %i.avj = sub i64 %i.avh, %i.avi
  %i.avk = icmp slt i64 %i.avj, 7
  br i1 %i.avk, label %parser_magic_comment.exit, label %.lr.ph.i907

.lr.ph.i907:                                      ; preds = %bb.jh, %.backedge.i908
  %.065.i = phi ptr [ %.0.be.i, %.backedge.i908 ], [ %i.avf, %bb.jh ] ; 8 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %.065.i, i64 6 ; 6 uses
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.avm, label %bb.jn [
    i8 67, label %.backedge.i908
    i8 99, label %.backedge.i908
    i8 79, label %bb.ji
    i8 111, label %bb.ji
    i8 68, label %bb.jj
    i8 100, label %bb.jj
    i8 73, label %bb.jk
    i8 105, label %bb.jk
    i8 78, label %bb.jl
    i8 110, label %bb.jl
    i8 71, label %bb.jm
    i8 103, label %bb.jm
    i8 61, label %bb.jo
    i8 58, label %bb.jo
  ]

.backedge.i908:                                   ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %.lr.ph.i907, %.lr.ph.i907
  %.0.be.i = phi ptr [ %i.avu, %bb.jm ], [ %i.avl, %bb.jn ], [ %i.avl, %bb.jo ], [ %i.avq, %bb.ji ], [ %i.avr, %bb.jj ], [ %i.avs, %bb.jk ], [ %i.avt, %bb.jl ], [ %i.avl, %.lr.ph.i907 ], [ %i.avl, %.lr.ph.i907 ] ; 2 uses
  %i.avn = ptrtoint ptr %.0.be.i to i64
  %i.avo = sub i64 %i.avh, %i.avn
  %i.avp = icmp slt i64 %i.avo, 7
  br i1 %i.avp, label %parser_magic_comment.exit, label %.lr.ph.i907

bb.ji:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avq = getelementptr inbounds nuw i8, ptr %.065.i, i64 5
  br label %.backedge.i908

bb.jj:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avr = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  br label %.backedge.i908

bb.jk:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avs = getelementptr inbounds nuw i8, ptr %.065.i, i64 3
  br label %.backedge.i908

bb.jl:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avt = getelementptr inbounds nuw i8, ptr %.065.i, i64 2
  br label %.backedge.i908

bb.jm:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avu = getelementptr inbounds nuw i8, ptr %.065.i, i64 1
  br label %.backedge.i908

bb.jn:                                            ; preds = %.lr.ph.i907
  %i.avv = sext i8 %i.avm to i32
  %i.avw = icmp ne i8 %i.avm, 32
  %i.avx = add nsw i32 %i.avv, -14
  %i.avy = icmp ult i32 %i.avx, -5
  %narrow.i.not.i918 = select i1 %i.avw, i1 %i.avy, i1 false
  br i1 %narrow.i.not.i918, label %.backedge.i908, label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.lr.ph.i907, %.lr.ph.i907
  %i.avz = phi i1 [ true, %bb.jn ], [ false, %.lr.ph.i907 ], [ false, %.lr.ph.i907 ]
  %i.awa = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull %.065.i, ptr noundef nonnull @.str.628, i64 noundef 6) #32
  %i.awb = icmp eq i32 %i.awa, 0
  br i1 %i.awb, label %.preheader58.i.preheader, label %.backedge.i908

.preheader58.i.preheader:                         ; preds = %bb.jo
  %i.awc = getelementptr inbounds nuw i8, ptr %.065.i, i64 7 ; 2 uses
  %.not47.i30653068 = icmp ult ptr %i.awc, %i.avg
  br i1 %.not47.i30653068, label %.lr.ph3067, label %parser_magic_comment.exit

.lr.ph3067:                                       ; preds = %.preheader58.i.preheader, %.preheader58.i
  %i.awd = phi ptr [ %i.awn, %.preheader58.i ], [ %i.awc, %.preheader58.i.preheader ]
  %.2.i9103070 = phi ptr [ %i.awm, %.preheader58.i ], [ %i.avl, %.preheader58.i.preheader ] ; 3 uses
  %.240.i3069 = phi i1 [ false, %.preheader58.i ], [ %i.avz, %.preheader58.i.preheader ]
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jq
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awf, i64 1 ; 2 uses
  %.not47.i = icmp ult ptr %i.awe, %i.avg
  br i1 %.not47.i, label %bb.jq, label %parser_magic_comment.exit, !llvm.loop !542

bb.jq:                                            ; preds = %.lr.ph3067, %bb.jp
  %i.awf = phi ptr [ %i.awd, %.lr.ph3067 ], [ %i.awe, %bb.jp ] ; 8 uses
  %.3.i9113066 = phi ptr [ %.2.i9103070, %.lr.ph3067 ], [ %i.awf, %bb.jp ] ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !10 ; 3 uses
  %i.awh = sext i8 %i.awg to i32
  %i.awi = icmp ne i8 %i.awg, 32
  %i.awj = add nsw i32 %i.awh, -14
  %i.awk = icmp ult i32 %i.awj, -5
  %narrow.i53.not.i = select i1 %i.awi, i1 %i.awk, i1 false
  br i1 %narrow.i53.not.i, label %bb.jr, label %bb.jp, !llvm.loop !542

bb.jr:                                            ; preds = %bb.jq
  br i1 %.240.i3069, label %bb.js, label %.preheader.i912

.preheader.i912:                                  ; preds = %bb.jr
  %scevgep.i = getelementptr i8, ptr %.2.i9103070, i64 %i.avh
  %.2.lcssa7375.i = ptrtoint ptr %.2.i9103070 to i64
  %i.awl = sub i64 0, %.2.lcssa7375.i
  %scevgep76.i = getelementptr i8, ptr %scevgep.i, i64 %i.awl ; 2 uses
  br label %bb.jt

bb.js:                                            ; preds = %bb.jr
  switch i8 %i.awg, label %parser_magic_comment.exit [
    i8 61, label %.preheader58.i
    i8 58, label %.preheader58.i
  ]

.preheader58.i:                                   ; preds = %bb.js, %bb.js
  %i.awm = getelementptr inbounds nuw i8, ptr %.3.i9113066, i64 2
  %i.awn = getelementptr inbounds nuw i8, ptr %.3.i9113066, i64 3 ; 2 uses
  %.not47.i3065 = icmp ult ptr %i.awn, %i.avg
  br i1 %.not47.i3065, label %.lr.ph3067, label %parser_magic_comment.exit

bb.jt:                                            ; preds = %bb.jv, %.preheader.i912
  %.4.i = phi ptr [ %i.awu, %bb.jv ], [ %i.awf, %.preheader.i912 ] ; 3 uses
  %i.awo = load i8, ptr %.4.i, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.awo, label %bb.ju [
    i8 45, label %bb.jv
    i8 95, label %bb.jv
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.awp = sext i8 %i.awo to i32                  ; 2 uses
  %i.awq = and i32 %i.awp, -33
  %i.awr = add nsw i32 %i.awq, -91
  %narrow.i.i.i = icmp ult i32 %i.awr, -26
  %i.aws = add nsw i32 %i.awp, -58
  %i.awt = icmp ult i32 %i.aws, -10
  %narrow.i54.not.i = select i1 %narrow.i.i.i, i1 %i.awt, i1 false
  br i1 %narrow.i54.not.i, label %.critedge.i914, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jt
  %i.awu = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i913 = icmp eq ptr %i.awu, %scevgep76.i
  br i1 %exitcond.not.i913, label %.critedge.i914, label %bb.jt, !llvm.loop !543

.critedge.i914:                                   ; preds = %bb.jv, %bb.ju
  %.5.i915 = phi ptr [ %scevgep76.i, %bb.jv ], [ %.4.i, %bb.ju ] ; 2 uses
  %i.awv = ptrtoint ptr %.5.i915 to i64
  %i.aww = ptrtoint ptr %i.awf to i64
  %i.awx = sub i64 %i.awv, %i.aww
  %i.awy = tail call i64 @parser_encode_length(ptr poison, ptr noundef nonnull %i.awf, i64 noundef %i.awx)
  %i.awz = tail call i64 @rb_str_new(ptr noundef nonnull %i.awf, i64 noundef %i.awy) #29 ; 2 uses
  store ptr %i.awf, ptr %i.afv, align 8, !tbaa !41
  store ptr %.5.i915, ptr %i.afs, align 8, !tbaa !48
  %i.axa = inttoptr i64 %i.awz to ptr             ; 2 uses
  %i.axb = load i64, ptr %i.axa, align 8, !tbaa !431
  %i.axc = and i64 %i.axb, 8192
  %.not.i.i916 = icmp eq i64 %i.axc, 0
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axa, i64 24 ; 2 uses
  br i1 %.not.i.i916, label %RSTRING_PTR.exit.i917, label %bb.jw

bb.jw:                                            ; preds = %.critedge.i914
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !10
  br label %RSTRING_PTR.exit.i917

RSTRING_PTR.exit.i917:                            ; preds = %bb.jw, %.critedge.i914
  %i.axf = phi ptr [ %i.axe, %bb.jw ], [ %i.axd, %.critedge.i914 ]
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %i.axf)
  %i.axg = tail call i64 @rb_str_resize(i64 noundef %i.awz, i64 noundef 0) #29 ; 0 uses
  br label %parser_magic_comment.exit

parser_magic_comment.exit:                        ; preds = %bb.jg, %.preheader283.i.preheader, %.backedge.i908, %bb.js, %.preheader58.i, %bb.hx, %bb.hz, %bb.ia, %.preheader283.i, %bb.jp, %.preheader58.i.preheader, %.loopexit, %RSTRING_PTR.exit.i917, %bb.jh, %magic_comment_marker.exit.thread.i, %comment_at_top.exit
  store ptr %i.ajk, ptr %i.afv, align 8, !tbaa !41
  %i.axh = load ptr, ptr %i.aft, align 8, !tbaa !413 ; 5 uses
  store ptr %i.axh, ptr %i.afs, align 8, !tbaa !48
  %i.axi = icmp ult ptr %i.axh, %i.ajk
  br i1 %i.axi, label %bb.jx, label %ripper_has_scan_event.exit.i921

bb.jx:                                            ; preds = %parser_magic_comment.exit
  %i.axj = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.axj, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i921:                  ; preds = %parser_magic_comment.exit
  %.not.i922 = icmp ugt ptr %i.axh, %i.ajk
  br i1 %.not.i922, label %bb.jy, label %ripper_dispatch_scan_event.exit924

bb.jy:                                            ; preds = %ripper_has_scan_event.exit.i921
  %i.axk = ptrtoint ptr %i.axh to i64
  %i.axl = ptrtoint ptr %i.ajk to i64
  %i.axm = sub i64 %i.axk, %i.axl
  %i.axn = load ptr, ptr %i.afw, align 8, !tbaa !49
  %i.axo = tail call i64 @rb_enc_str_new(ptr noundef %i.ajk, i64 noundef %i.axm, ptr noundef %i.axn) #29
  %i.axp = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 352) #29
  %.val.i.i923 = load i64, ptr %i.afx, align 8, !tbaa !46
  %i.axq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i923, i64 noundef %i.axp, i32 noundef 1, i64 noundef %i.axo) #29
  %i.axr = load ptr, ptr %i.afy, align 8, !tbaa !39
  %i.axs = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.axr) #29 ; 0 uses
  %i.axt = load ptr, ptr %i.afs, align 8, !tbaa !48 ; 2 uses
  store ptr %i.axt, ptr %i.afv, align 8, !tbaa !41
  store i64 %i.axq, ptr %i.afz, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit924

ripper_dispatch_scan_event.exit924:               ; preds = %bb.gv, %bb.jy, %ripper_has_scan_event.exit.i921, %nextc0.exit.thread1220
  %.val.i925 = phi ptr [ %i.aha, %nextc0.exit.thread1220 ], [ %i.agu, %bb.gv ], [ %i.axh, %ripper_has_scan_event.exit.i921 ], [ %i.axt, %bb.jy ] ; 5 uses
  %.1665 = phi i32 [ %.0664, %nextc0.exit.thread1220 ], [ %.0664, %bb.gv ], [ 1, %ripper_has_scan_event.exit.i921 ], [ 1, %bb.jy ] ; 7 uses
  %i.axu = load i16, ptr %i.f, align 8            ; 2 uses
  %i.axv = and i16 %i.axu, -129
  %i.axw = or disjoint i16 %i.axv, %i.afl
  store i16 %i.axw, ptr %i.f, align 8
  %i.axx = load ptr, ptr %i.agf, align 8, !tbaa !488 ; 3 uses
  %i.axy = load i32, ptr %i.afr, align 8, !tbaa !60 ; 3 uses
  %i.axz = and i32 %i.axy, 897
  %.not808 = icmp ne i32 %i.axz, 0
  %i.aya = and i32 %i.axy, 2048
  %.not809 = icmp eq i32 %i.aya, 0
  %i.ayb = and i1 %.not808, %.not809              ; 2 uses
  %i.ayc = and i32 %i.axy, 2064
  %i.ayd = icmp eq i32 %i.ayc, 2064
  %or.cond1309 = or i1 %i.ayd, %i.ayb
  br i1 %or.cond1309, label %bb.kd, label %.preheader.preheader

.preheader.preheader:                             ; preds = %ripper_dispatch_scan_event.exit924
  %i.aye = load ptr, ptr %i.aft, align 8, !tbaa !413
  %.not.i931.peel = icmp ult ptr %.val.i925, %i.aye
  %i.ayf = and i16 %i.axu, 8
  %.not13.i938.peel = icmp eq i16 %i.ayf, 0
  %or.cond2716 = select i1 %.not.i931.peel, i1 %.not13.i938.peel, i1 false, !prof !506
  br i1 %or.cond2716, label %bb.jz, label %.critedge.i932.peel, !prof !506

bb.jz:                                            ; preds = %.preheader.preheader
  %i.ayg = load ptr, ptr %i.afu, align 8, !tbaa !487
  %i.ayh = icmp ugt ptr %i.ayg, inttoptr (i64 1 to ptr)
  br i1 %i.ayh, label %.critedge.i932.peel, label %bb.ka, !prof !196

.critedge.i932.peel:                              ; preds = %bb.jz, %.preheader.preheader
  %i.ayi = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i933.peel = icmp eq i32 %i.ayi, 0
  br i1 %.not14.i933.peel, label %.critedge._crit_edge.i935.peel, label %.loopexit2107

.critedge._crit_edge.i935.peel:                   ; preds = %.critedge.i932.peel
  %.pre.i936.peel = load ptr, ptr %i.afs, align 8, !tbaa !48
  br label %bb.ka

bb.ka:                                            ; preds = %.critedge._crit_edge.i935.peel, %bb.jz
  %i.ayj = phi ptr [ %.pre.i936.peel, %.critedge._crit_edge.i935.peel ], [ %.val.i925, %bb.jz ] ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 1 ; 8 uses
  store ptr %i.ayk, ptr %i.afs, align 8, !tbaa !48
  %i.ayl = load i8, ptr %i.ayj, align 1, !tbaa !10
  switch i8 %i.ayl, label %.loopexit1360 [
    i8 13, label %bb.kb
    i8 32, label %.preheader.preheader3212
    i8 9, label %.preheader.preheader3212
    i8 12, label %.preheader.preheader3212
    i8 46, label %.loopexit1361
    i8 11, label %.preheader.preheader3212
    i8 35, label %.loopexit2108
    i8 97, label %.loopexit2109
    i8 111, label %.loopexit2110
    i8 124, label %.loopexit2111
    i8 38, label %.loopexit2112
  ], !prof !544

.preheader.preheader3212:                         ; preds = %bb.kc, %bb.kb, %bb.ka, %bb.ka, %bb.ka, %bb.ka
  br label %.preheader

bb.kb:                                            ; preds = %bb.ka
  %i.aym = load ptr, ptr %i.aft, align 8, !tbaa !413
  %.not.i.i937.peel = icmp ult ptr %i.ayk, %i.aym
  br i1 %.not.i.i937.peel, label %bb.kc, label %.preheader.preheader3212

bb.kc:                                            ; preds = %bb.kb
  %i.ayn = load i8, ptr %i.ayk, align 1, !tbaa !10
  %i.ayo = icmp eq i8 %i.ayn, 10
  br i1 %i.ayo, label %.loopexit1360, label %.preheader.preheader3212

bb.kd:                                            ; preds = %ripper_dispatch_scan_event.exit924
  %.not815 = icmp eq i32 %.1665, 0
  br i1 %.not815, label %bb.ke, label %ripper_dispatch_scan_event.exit930

bb.ke:                                            ; preds = %bb.kd
  %.val3.i926 = load ptr, ptr %i.afv, align 8, !tbaa !41 ; 4 uses
  %i.ayp = icmp ult ptr %.val.i925, %.val3.i926
  br i1 %i.ayp, label %bb.kf, label %ripper_has_scan_event.exit.i927

bb.kf:                                            ; preds = %bb.ke
  %i.ayq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ayq, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i927:                  ; preds = %bb.ke
  %.not.i928 = icmp ugt ptr %.val.i925, %.val3.i926
  br i1 %.not.i928, label %bb.kg, label %ripper_dispatch_scan_event.exit930

bb.kg:                                            ; preds = %ripper_has_scan_event.exit.i927
  %i.ayr = ptrtoint ptr %.val.i925 to i64
  %i.ays = ptrtoint ptr %.val3.i926 to i64
  %i.ayt = sub i64 %i.ayr, %i.ays
  %i.ayu = load ptr, ptr %i.afw, align 8, !tbaa !49
  %i.ayv = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i926, i64 noundef %i.ayt, ptr noundef %i.ayu) #29
  %i.ayw = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 351) #29
  %.val.i.i929 = load i64, ptr %i.afx, align 8, !tbaa !46
  %i.ayx = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i929, i64 noundef %i.ayw, i32 noundef 1, i64 noundef %i.ayv) #29
  %i.ayy = load ptr, ptr %i.afy, align 8, !tbaa !39
  %i.ayz = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.ayy) #29 ; 0 uses
  %i.aza = load ptr, ptr %i.afs, align 8, !tbaa !48
end_hunk_2
begin_hunk_3_@parse_atmark:bb.a

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !413
  %.not.i.i58 = icmp ult ptr %i.bm, %i.bq
  br i1 %.not.i.i58, label %bb.r, label %nextc0.exit60

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bs = icmp eq i8 %i.br, 10
  br i1 %i.bs, label %bb.s, label %nextc0.exit60

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !48
  br label %nextc0.exit60

nextc0.exit60:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %.critedge.i53, %tokadd.exit
  %.040 = phi i32 [ 310, %tokadd.exit ], [ 312, %.critedge.i53 ], [ 312, %bb.p ], [ 312, %bb.q ], [ 312, %bb.r ], [ 312, %bb.s ] ; 3 uses
  %.0 = phi i32 [ %.011.i, %tokadd.exit ], [ -1, %.critedge.i53 ], [ %i.bo, %bb.p ], [ 13, %bb.q ], [ 13, %bb.r ], [ 10, %bb.s ] ; 4 uses
  %i.bu = and i32 %1, 128
  %.not = icmp eq i32 %i.bu, 0
  %i.bv = select i1 %.not, i32 2, i32 8           ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = and i16 %i.bx, 32
  %.not.i61 = icmp eq i16 %i.by, 0
  br i1 %.not.i61, label %parser_set_lex_state.exit, label %bb.t

bb.t:                                             ; preds = %nextc0.exit60
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !60
  %i.cb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ca, i32 noundef %i.bv, i32 noundef 10305) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %nextc0.exit60, %bb.t
  %.0.i = phi i32 [ %i.cb, %bb.t ], [ %i.bv, %nextc0.exit60 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  store i32 %.0.i, ptr %i.cc, align 8, !tbaa !60
  %i.cd = icmp eq i32 %.0, -1
  br i1 %i.cd, label %.split, label %bb.u

bb.u:                                             ; preds = %parser_set_lex_state.exit
  %i.ce = load i16, ptr %i.bw, align 8            ; 2 uses
  %i.cf = and i16 %i.ce, 8
  %.not.i62 = icmp eq i16 %i.cf, 0
  %.pre75 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  br i1 %.not.i62, label %bb.v, label %.split42

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %.pre75, i64 -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !49 ; 2 uses
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !552
  %i.cn = tail call i32 %i.cm(i32 noundef range(i32 -1, 256) %i.ck, i32 noundef 13, ptr noundef %i.ci) #29, !inline_history !555
  %.not.i.i63 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i63, label %bb.w, label %parser_is_identchar.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !10  ; 2 uses
  %i.cp = icmp ne i8 %i.co, 95
  %.not44 = icmp sgt i8 %i.co, -1
  %or.cond = and i1 %i.cp, %.not44
  br i1 %or.cond, label %..split42_crit_edge, label %parser_is_identchar.exit.thread

..split42_crit_edge:                              ; preds = %bb.w
  %.pre = load i16, ptr %i.bw, align 8
  %.pre74 = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %.split42

.split42:                                         ; preds = %..split42_crit_edge, %bb.u
  %i.cq = phi ptr [ %.pre74, %..split42_crit_edge ], [ %.pre75, %bb.u ] ; 2 uses
  %i.cr = phi i16 [ %.pre, %..split42_crit_edge ], [ %i.ce, %bb.u ]
  %i.cs = and i16 %i.cr, -9
  store i16 %i.cs, ptr %i.bw, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 3 uses
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp ugt ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %.split

bb.x:                                             ; preds = %.split42
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !10
  %i.cy = icmp eq i8 %i.cx, 10
  br i1 %i.cy, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cq, i64 -2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !10
  %i.db = icmp eq i8 %i.da, 13
  br i1 %i.db, label %bb.z, label %.split

bb.z:                                             ; preds = %bb.y
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !48
  br label %.split

.split:                                           ; preds = %bb.z, %bb.y, %bb.x, %.split42, %parser_set_lex_state.exit
  %i.dc = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %.str.669..str.668 = select i1 %.not47.not, ptr @.str.669, ptr @.str.668
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull %.str.669..str.668) #29
  %i.dd = load ptr, ptr %0, align 8, !tbaa !18
  store i64 289, ptr %i.dd, align 8, !tbaa !10
  %i.de = load i16, ptr %i.bw, align 8
  %i.df = and i16 %i.de, 32
  %.not.i64 = icmp eq i16 %i.df, 0
  br i1 %.not.i64, label %parser_set_lex_state.exit66, label %bb.aa

bb.aa:                                            ; preds = %.split
  %i.dg = load i32, ptr %i.cc, align 8, !tbaa !60
  %i.dh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef 2, i32 noundef 10317) #29
  br label %parser_set_lex_state.exit66

parser_set_lex_state.exit66:                      ; preds = %.split, %bb.aa
  %.0.i65 = phi i32 [ %i.dh, %bb.aa ], [ 2, %.split ]
  store i32 %.0.i65, ptr %i.cc, align 8, !tbaa !60
  br label %bb.ah

parser_is_identchar.exit.thread:                  ; preds = %bb.v, %bb.w
  %i.di = add nsw i32 %.0, -58
  %i.dj = icmp ult i32 %i.di, -10
  br i1 %i.dj, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %parser_is_identchar.exit.thread
  %i.dk = load i16, ptr %i.bw, align 8
  %i.dl = and i16 %i.dk, -9
  store i16 %i.dl, ptr %i.bw, align 8
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -1 ; 3 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !48
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !44
  %i.dq = icmp ugt ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.ac, label %pushback.exit67

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !10
  %i.ds = icmp eq i8 %i.dr, 10
  br i1 %i.ds, label %bb.ad, label %pushback.exit67

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds i8, ptr %i.dm, i64 -2 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = icmp eq i8 %i.du, 13
  br i1 %i.dv, label %bb.ae, label %pushback.exit67

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !48
  br label %pushback.exit67

pushback.exit67:                                  ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.dw = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %.str.671..str.670 = select i1 %.not47.not, ptr @.str.671, ptr @.str.670
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull %.str.671..str.670, i32 noundef %.0) #29
  %i.dx = load ptr, ptr %0, align 8, !tbaa !18
  store i64 289, ptr %i.dx, align 8, !tbaa !10
  %i.dy = load i16, ptr %i.bw, align 8
  %i.dz = and i16 %i.dy, 32
  %.not.i68 = icmp eq i16 %i.dz, 0
  br i1 %.not.i68, label %parser_set_lex_state.exit70, label %bb.af

bb.af:                                            ; preds = %pushback.exit67
  %i.ea = load i32, ptr %i.cc, align 8, !tbaa !60
  %i.eb = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ea, i32 noundef 2, i32 noundef 10331) #29
  br label %parser_set_lex_state.exit70

parser_set_lex_state.exit70:                      ; preds = %pushback.exit67, %bb.af
  %.0.i69 = phi i32 [ %i.eb, %bb.af ], [ 2, %pushback.exit67 ]
  store i32 %.0.i69, ptr %i.cc, align 8, !tbaa !60
  br label %bb.ah

bb.ag:                                            ; preds = %parser_is_identchar.exit.thread
  %i.ec = tail call fastcc i32 @tokadd_ident(ptr noundef nonnull %0, i32 noundef %.0)
  %.not46 = icmp eq i32 %i.ec, 0
  br i1 %.not46, label %tokenize_ident.exit, label %bb.ah

tokenize_ident.exit:                              ; preds = %bb.ag
  %i.ed = load ptr, ptr %i.x, align 8, !tbaa !471
  %i.ee = load i32, ptr %i.w, align 8, !tbaa !514
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.ch, align 8, !tbaa !49
  %i.eh = tail call i64 @rb_intern3(ptr noundef %i.ed, i64 noundef %i.ef, ptr noundef %i.eg) #29 ; 2 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !18
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !10
  %i.ej = tail call i64 @rb_id2sym(i64 noundef %i.eh) #29
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !47
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %tokenize_ident.exit, %parser_set_lex_state.exit70, %parser_set_lex_state.exit66
  %.041 = phi i32 [ %.040, %parser_set_lex_state.exit66 ], [ %.040, %parser_set_lex_state.exit70 ], [ %.040, %tokenize_ident.exit ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %.041
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @whole_match_p(ptr %.72.val, ptr %.88.val, ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 33) %2) unnamed_addr #20 {
bb.a:
  %i.a = ptrtoint ptr %.88.val to i64             ; 3 uses
  %i.b = ptrtoint ptr %.72.val to i64             ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, %1
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt ptr %.88.val, %.72.val
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.88.val, i64 -1 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt ptr %i.f, %.72.val
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %.88.val, i64 -2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = icmp eq i8 %i.k, 13
  %spec.select = select i1 %i.l, ptr %i.j, ptr %i.f
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.m = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.n = sub i64 %i.m, %i.b
  %i.o = icmp slt i64 %i.n, %1
  br i1 %i.o, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %.16.pre-phi = phi i64 [ %i.m, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %.1 = phi ptr [ %.0, %bb.f ], [ %.88.val, %bb.c ], [ %.88.val, %bb.b ]
  %i.p = sub nsw i64 0, %1
  %i.q = getelementptr inbounds i8, ptr %.1, i64 %i.p ; 3 uses
  %i.r = tail call i32 @strncmp(ptr noundef %0, ptr noundef %i.q, i64 noundef %1) #32
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not35 = icmp ne i32 %2, 0
  %i.s = icmp ult ptr %.72.val, %i.q
  %or.cond = and i1 %.not35, %i.s
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.t = add i64 %1, %i.b
  %i.u = sub i64 %.16.pre-phi, %i.t
  %scevgep = getelementptr i8, ptr %.72.val, i64 %i.u ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.0263 = phi ptr [ %i.aa, %bb.i ], [ %.72.val, %.lr.ph.preheader ] ; 3 uses
  %i.v = load i8, ptr %.0263, align 1, !tbaa !10  ; 2 uses
  %i.w = sext i8 %i.v to i32
  %i.x = icmp ne i8 %i.v, 32
  %i.y = add nsw i32 %i.w, -14
  %i.z = icmp ult i32 %i.y, -5
  %narrow.i.not = select i1 %i.x, i1 %i.z, i1 false
  br i1 %narrow.i.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.0263, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !511

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.h
  %.127 = phi ptr [ %.72.val, %bb.h ], [ %.0263, %.lr.ph ], [ %scevgep, %bb.i ]
  %i.ab = icmp eq ptr %.127, %i.q
  %i.ac = zext i1 %i.ab to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.a, %.critedge
  %.028 = phi i32 [ %i.ac, %.critedge ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal fastcc void @newtok(ptr nofree noundef captures(none) initializes((136, 140)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.a, align 8, !tbaa !514
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !471  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.d, align 4, !tbaa !480
  %i.e = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !471
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !480
  %i.i = icmp sgt i32 %i.h, 4096
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 60, ptr %i.g, align 4, !tbaa !480
  %i.j = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.f, i64 noundef 60, i64 noundef 1) #36
  store ptr %i.j, ptr %i.b, align 8, !tbaa !471
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -32768, 32768) i32 @parse_ident(ptr noundef %0, i32 noundef range(i32 -1, 256) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.thread204, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp ult i32 %1, 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %spec.select228 = phi i1 [ %i.e, %.lr.ph ], [ %spec.select, %.critedge.backedge ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !486

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.h, align 8
  %i.n = and i16 %i.m, 8
  %.not13.i = icmp eq i16 %i.n, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !486

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !487
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.e, !prof !196

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.q = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !48
  %i.t = load i8, ptr %i.r, align 1, !tbaa !10    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 13
  br i1 %i.v, label %bb.f, label %nextc0.exit, !prof !196

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !10
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.f, align 8, !tbaa !48
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.u, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 5 uses
  %i.aa = load i16, ptr %i.h, align 8
  %i.ab = and i16 %i.aa, 8
  %.not.i156 = icmp eq i16 %i.ab, 0
  br i1 %.not.i156, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !552
  %i.aj = tail call i32 %i.ai(i32 noundef range(i32 -1, 256) %i.ag, i32 noundef 13, ptr noundef %i.ae) #29, !inline_history !555
  %.not.i.i157 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i157, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !10  ; 2 uses
  %i.al = icmp ne i8 %i.ak, 95
  %i.am = icmp sgt i8 %i.ak, -1
  %spec.select217 = and i1 %i.al, %i.am
  br i1 %spec.select217, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.an = icmp ult i32 %.011.i, 128
  %spec.select = select i1 %i.an, i1 %spec.select228, i1 false
  %i.ao = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread204, label %bb.b, !llvm.loop !566

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.aq = add nsw i32 %.011.i, 1                  ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 31)
  switch i32 %i.ar, label %parser_is_identchar.exit.thread..thread202_crit_edge [
    i32 32, label %bb.j
    i32 17, label %bb.j
    i32 31, label %parser_is_identchar.exit.thread._crit_edge
    i32 0, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre236.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.o

parser_is_identchar.exit.thread..thread202_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %.thread202

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not131 = icmp ult ptr %i.as, %i.at
  br i1 %.not131, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !10
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = trunc nuw nsw i32 %.011.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !471
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !514 ; 2 uses
end_hunk_3
