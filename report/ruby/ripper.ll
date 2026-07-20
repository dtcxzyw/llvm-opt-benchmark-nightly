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
  %24 = ptrtoaddr ptr %i.duy to i64
  %25 = ptrtoaddr ptr %i.duw to i64
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
  %i.fv = ptrtoint ptr %.val210.i to i64
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
  %i.gh = ptrtoint ptr %.0.i227.i to i64
  %i.gi = sub i64 %i.gh, %i.fw
  %i.gj = icmp slt i64 %i.gi, %i.x
  br i1 %i.gj, label %whole_match_p.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %.1.i.i = phi ptr [ %.0.i227.i, %bb.ag ], [ %.val210.i, %bb.ad ], [ %.val210.i, %bb.ac ] ; 2 uses
  %.16.i.i = ptrtoaddr ptr %.1.i.i to i64
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
  %i.go = sub i64 %.16.i.i, %i.gn
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
  %i.gw = phi i16 [ %i.os, %bb.cr ], [ %.pre.i, %bb.ak ]
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
  %i.ip = ptrtoint ptr %i.io to i64               ; 3 uses
  %i.iq = icmp ugt ptr %i.il, %i.io
  br i1 %i.iq, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.backedge.i
  %i.ir = getelementptr inbounds i8, ptr %i.il, i64 -1 ; 3 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !10
  switch i8 %i.is, label %bb.as [
    i8 10, label %bb.ap
    i8 13, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.it = icmp eq ptr %i.ir, %i.io
  br i1 %i.it, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iu = getelementptr inbounds i8, ptr %i.il, i64 -2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !10
  %.not190.i = icmp eq i8 %i.iv, 13
  br i1 %.not190.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.0178.i = phi ptr [ %i.ir, %bb.aq ], [ %i.il, %bb.ao ]
  %i.iw = getelementptr inbounds i8, ptr %.0178.i, i64 -1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.backedge.i
  %.1179.i = phi ptr [ %i.il, %bb.ao ], [ %i.il, %.backedge.i ], [ %i.iw, %bb.ar ], [ %i.il, %bb.aq ], [ %i.il, %bb.ap ] ; 5 uses
  %.1179373.i = ptrtoint ptr %.1179.i to i64      ; 2 uses
  %i.ix = load i32, ptr %i.ij, align 4, !tbaa !170 ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.preheader.i, label %bb.ba

.preheader.i:                                     ; preds = %bb.as
  %i.iz = icmp ult ptr %i.io, %.1179.i
  br i1 %i.iz, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i32, ptr %i.ik, align 8, !tbaa !173
  %i.ja = sub i64 %.1179373.i, %i.ip
  br label %bb.at

bb.at:                                            ; preds = %bb.az, %.lr.ph.i
  %.sink.i361.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.sink.i.i, %bb.az ] ; 5 uses
  %.0170360.i = phi i64 [ 0, %.lr.ph.i ], [ %i.jj, %bb.az ] ; 2 uses
  %i.jb = icmp eq i32 %.sink.i361.i, -1
  br i1 %i.jb, label %.critedge.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 %.0170360.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !10
  switch i8 %i.jd, label %bb.ax [
    i8 32, label %bb.av
    i8 9, label %bb.aw
    i8 10, label %.critedge.i
  ]

bb.av:                                            ; preds = %bb.au
  %i.je = add nuw nsw i32 %.sink.i361.i, 1
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  %i.jf = sdiv i32 %.sink.i361.i, 8
  %i.jg = shl nsw i32 %i.jf, 3
  %i.jh = add i32 %i.jg, 8
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.ji = icmp sgt i32 %i.ix, %.sink.i361.i
  br i1 %i.ji, label %bb.ay, label %.critedge.i

bb.ay:                                            ; preds = %bb.ax
  store i32 %.sink.i361.i, ptr %i.ij, align 4, !tbaa !170
  br label %.critedge.i

bb.az:                                            ; preds = %bb.aw, %bb.av
  %.sink.i.i = phi i32 [ %i.je, %bb.av ], [ %i.jh, %bb.aw ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.ik, align 8, !tbaa !173
  %i.jj = add nuw i64 %.0170360.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jj, %i.ja
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.at, !llvm.loop !512

.critedge.i:                                      ; preds = %bb.az, %bb.au, %bb.at, %bb.ay, %bb.ax, %.preheader.i
  store i32 0, ptr %i.ik, align 8, !tbaa !173
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge.i, %bb.as
  %.not192.i = icmp eq ptr %.0174.i, null
  %i.jk = sub i64 %.1179373.i, %i.ip              ; 9 uses
  br i1 %.not192.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %.0174.i, align 8, !tbaa !454
  %i.jl = icmp eq ptr %.1179.i, %i.io
  br i1 %i.jl, label %rb_parser_str_buf_cat.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jm = getelementptr inbounds nuw i8, ptr %.0174.i, i64 16 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !453 ; 4 uses
  %i.jo = sub nsw i64 9223372036854775807, %i.jk
  %i.jp = icmp sgt i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.bd, label %ruby_nonempty_memcpy.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.582) #29
  br label %rb_parser_str_buf_cat.exit.i

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %bb.bc
  %i.jq = getelementptr inbounds nuw i8, ptr %.0174.i, i64 24 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !451 ; 4 uses
  %.not.i234.i = icmp ult ptr %i.io, %i.jr
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %i.jn
  %.not40.i.i = icmp ugt ptr %i.io, %i.js
  %or.cond.i235.i = select i1 %.not.i234.i, i1 true, i1 %.not40.i.i
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.ip, %i.jt
  %.034.i.i = select i1 %or.cond.i235.i, i64 -1, i64 %i.ju ; 2 uses
  %i.jv = add nsw i64 %i.jn, %i.jk                ; 4 uses
  %i.jw = add i64 %i.jv, 1
  %i.jx = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.jr, i64 noundef %i.jw, i64 noundef 1) #36 ; 3 uses
  store ptr %i.jx, ptr %i.jq, align 8, !tbaa !451
  store i64 %i.jv, ptr %i.jm, align 8, !tbaa !453
  %.not41.i.i = icmp eq i64 %.034.i.i, -1
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %.034.i.i
  %spec.select.i236.i = select i1 %.not41.i.i, ptr %i.io, ptr %i.jy
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 %i.jn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jz, ptr readonly align 1 %spec.select.i236.i, i64 %i.jk, i1 false)
  store i64 %i.jv, ptr %i.jm, align 8, !tbaa !453
  %i.ka = load ptr, ptr %i.jq, align 8, !tbaa !451
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.jv
  store i8 0, ptr %i.kb, align 1, !tbaa !10
  br label %rb_parser_str_buf_cat.exit.i

bb.be:                                            ; preds = %bb.ba
  %i.kc = icmp slt i64 %i.jk, 0
  br i1 %i.kc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.567, i64 noundef %i.jk) #34
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.kd = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.ke = add nuw nsw i64 %i.jk, 1
  %i.kf = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.ke, i64 noundef 1) #33 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !451
  %.not.i.i238.i = icmp eq ptr %i.io, null
  %.not.i.i.i.i = icmp eq ptr %.1179.i, %i.io
  %or.cond.i.i.i = or i1 %.not.i.i238.i, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %rb_parser_encoding_string_new.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kf, ptr nonnull readonly align 1 %i.io, i64 %i.jk, i1 false)
  br label %rb_parser_encoding_string_new.exit.i

rb_parser_encoding_string_new.exit.i:             ; preds = %bb.bh, %bb.bg
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 %i.jk, ptr %i.kh, align 8, !tbaa !453
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.jk
  store i8 0, ptr %i.ki, align 1, !tbaa !10
  store i32 0, ptr %i.kd, align 8, !tbaa !454
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.o, ptr %i.kj, align 8, !tbaa !455
  br label %rb_parser_str_buf_cat.exit.i

rb_parser_str_buf_cat.exit.i:                     ; preds = %rb_parser_encoding_string_new.exit.i, %ruby_nonempty_memcpy.exit.i.i, %bb.bd, %bb.bb
  %.1175.i = phi ptr [ %i.kd, %rb_parser_encoding_string_new.exit.i ], [ %.0174.i, %bb.bb ], [ %.0174.i, %bb.bd ], [ %.0174.i, %ruby_nonempty_memcpy.exit.i.i ] ; 7 uses
  %i.kk = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not193.i = icmp ult ptr %.1179.i, %i.kk
  br i1 %.not193.i, label %bb.bi, label %rb_parser_str_buf_cat.exit247.i

bb.bi:                                            ; preds = %rb_parser_str_buf_cat.exit.i
  store i32 0, ptr %.1175.i, align 8, !tbaa !454
  %i.kl = getelementptr inbounds nuw i8, ptr %.1175.i, i64 16 ; 3 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !453 ; 5 uses
  %i.kn = icmp eq i64 %i.km, 9223372036854775807
  br i1 %i.kn, label %bb.bj, label %ruby_nonempty_memcpy.exit.i239.i

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.582) #29
  br label %rb_parser_str_buf_cat.exit247.i

ruby_nonempty_memcpy.exit.i239.i:                 ; preds = %bb.bi
  %i.ko = getelementptr inbounds nuw i8, ptr %.1175.i, i64 24 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !451 ; 4 uses
  %.not.i240.i = icmp ugt ptr %i.kp, @.str.7
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %i.km
  %.not40.i241.i = icmp ult ptr %i.kq, @.str.7
  %or.cond.i242.i = select i1 %.not.i240.i, i1 true, i1 %.not40.i241.i
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 ptrtoint (ptr @.str.7 to i64), %i.kr
  %.034.i243.i = select i1 %or.cond.i242.i, i64 -1, i64 %i.ks ; 2 uses
  %i.kt = add nsw i64 %i.km, 1                    ; 3 uses
  %i.ku = add i64 %i.km, 2
  %i.kv = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.kp, i64 noundef %i.ku, i64 noundef 1) #36 ; 3 uses
  store ptr %i.kv, ptr %i.ko, align 8, !tbaa !451
  store i64 %i.kt, ptr %i.kl, align 8, !tbaa !453
  %.not41.i244.i = icmp eq i64 %.034.i243.i, -1
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 %.034.i243.i
  %spec.select.i245.i = select i1 %.not41.i244.i, ptr @.str.7, ptr %i.kw
  %i.kx = getelementptr inbounds i8, ptr %i.kv, i64 %i.km
  %i.ky = load i8, ptr %spec.select.i245.i, align 1
  store i8 %i.ky, ptr %i.kx, align 1
  store i64 %i.kt, ptr %i.kl, align 8, !tbaa !453
  %i.kz = load ptr, ptr %i.ko, align 8, !tbaa !451
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.kt
  store i8 0, ptr %i.la, align 1, !tbaa !10
  br label %rb_parser_str_buf_cat.exit247.i

rb_parser_str_buf_cat.exit247.i:                  ; preds = %ruby_nonempty_memcpy.exit.i239.i, %bb.bj, %rb_parser_str_buf_cat.exit.i
  %i.lb = load ptr, ptr %i.ad, align 8, !tbaa !413
  store ptr %i.lb, ptr %i.j, align 8, !tbaa !48
  %i.lc = load i32, ptr %i.ij, align 4, !tbaa !170
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.loopexit.i, label %.critedge.i249.i

.critedge.i249.i:                                 ; preds = %rb_parser_str_buf_cat.exit247.i
  %i.le = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i250.i = icmp eq i32 %i.le, 0
  br i1 %.not14.i250.i, label %bb.bk, label %nextc0.exit256.i

bb.bk:                                            ; preds = %.critedge.i249.i
  %.pre.i253.i = load ptr, ptr %i.j, align 8, !tbaa !48 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.pre.i253.i, i64 1 ; 3 uses
  store ptr %i.lf, ptr %i.j, align 8, !tbaa !48
  %i.lg = load i8, ptr %.pre.i253.i, align 1, !tbaa !10
  %i.lh = icmp eq i8 %i.lg, 13
  %.val208.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !413 ; 8 uses
  br i1 %i.lh, label %bb.bl, label %bb.bo, !prof !196

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i254.i = icmp ult ptr %i.lf, %.val208.pre.i
  br i1 %.not.i.i254.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.li = load i8, ptr %i.lf, align 1, !tbaa !10
  %i.lj = icmp eq i8 %i.li, 10
  br i1 %i.lj, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lk = getelementptr inbounds nuw i8, ptr %.pre.i253.i, i64 2
  store ptr %i.lk, ptr %i.j, align 8, !tbaa !48
  br label %bb.bo

nextc0.exit256.i:                                 ; preds = %.critedge.i249.i
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef nonnull %.1175.i) #29
  br label %nextc0.exit.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.val207.i = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 7 uses
  %i.ll = ptrtoint ptr %.val208.pre.i to i64
  %i.lm = ptrtoint ptr %.val207.i to i64          ; 3 uses
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = icmp slt i64 %i.ln, %i.x
  br i1 %i.lo, label %.backedge.i.backedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lp = icmp ugt ptr %.val208.pre.i, %.val207.i
  br i1 %i.lp, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.lq = getelementptr inbounds i8, ptr %.val208.pre.i, i64 -1 ; 4 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !10
  %i.ls = icmp eq i8 %i.lr, 10
  br i1 %i.ls, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.lt = icmp ugt ptr %i.lq, %.val207.i
  br i1 %i.lt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lu = getelementptr inbounds i8, ptr %.val208.pre.i, i64 -2 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !10
  %i.lw = icmp eq i8 %i.lv, 13
  %spec.select.i272.i = select i1 %i.lw, ptr %i.lu, ptr %i.lq
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0.i271.i = phi ptr [ %i.lq, %bb.br ], [ %spec.select.i272.i, %bb.bs ] ; 2 uses
  %i.lx = ptrtoint ptr %.0.i271.i to i64
  %i.ly = sub i64 %i.lx, %i.lm
  %i.lz = icmp slt i64 %i.ly, %i.x
  br i1 %i.lz, label %.backedge.i.backedge, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq, %bb.bp
  %.1.i257.i = phi ptr [ %.0.i271.i, %bb.bt ], [ %.val208.pre.i, %bb.bq ], [ %.val208.pre.i, %bb.bp ] ; 2 uses
  %.16.i258.i = ptrtoaddr ptr %.1.i257.i to i64
  %i.ma = getelementptr inbounds i8, ptr %.1.i257.i, i64 %i.y ; 3 uses
  %i.mb = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.ma, i64 noundef range(i64 0, 4294967296) %i.x) #32
  %.not.i259.i = icmp eq i32 %i.mb, 0
  br i1 %.not.i259.i, label %bb.bv, label %.backedge.i.backedge

bb.bv:                                            ; preds = %bb.bu
  %i.mc = icmp ult ptr %.val207.i, %i.ma
  %or.cond.i262.i = and i1 %.not35.i261.i, %i.mc
  br i1 %or.cond.i262.i, label %.lr.ph.preheader.i265.i, label %.critedge.i263.i

.lr.ph.preheader.i265.i:                          ; preds = %bb.bv
  %i.md = add i64 %i.lm, %i.x
  %i.me = sub i64 %.16.i258.i, %i.md
  %scevgep.i266.i = getelementptr i8, ptr %.val207.i, i64 %i.me ; 2 uses
  br label %.lr.ph.i267.i

.lr.ph.i267.i:                                    ; preds = %bb.bw, %.lr.ph.preheader.i265.i
  %.0263.i268.i = phi ptr [ %i.mk, %bb.bw ], [ %.val207.i, %.lr.ph.preheader.i265.i ] ; 3 uses
  %i.mf = load i8, ptr %.0263.i268.i, align 1, !tbaa !10 ; 2 uses
  %i.mg = sext i8 %i.mf to i32
  %i.mh = icmp ne i8 %i.mf, 32
  %i.mi = add nsw i32 %i.mg, -14
  %i.mj = icmp ult i32 %i.mi, -5
  %narrow.i.not.i269.i = select i1 %i.mh, i1 %i.mj, i1 false
  br i1 %narrow.i.not.i269.i, label %.critedge.i263.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i267.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.0263.i268.i, i64 1 ; 2 uses
  %exitcond.not.i270.i = icmp eq ptr %i.mk, %scevgep.i266.i
  br i1 %exitcond.not.i270.i, label %.critedge.i263.i, label %.lr.ph.i267.i, !llvm.loop !511

.critedge.i263.i:                                 ; preds = %bb.bw, %.lr.ph.i267.i, %bb.bv
  %.127.i264.i = phi ptr [ %.val207.i, %bb.bv ], [ %.0263.i268.i, %.lr.ph.i267.i ], [ %scevgep.i266.i, %bb.bw ]
  %.not363.i = icmp eq ptr %.127.i264.i, %i.ma
  br i1 %.not363.i, label %.loopexit347.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.critedge.i263.i, %bb.bu, %bb.bt, %bb.bo
  br label %.backedge.i, !llvm.loop !513

bb.bx:                                            ; preds = %whole_match_p.exit.thread.i
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  store i32 0, ptr %i.ml, align 8, !tbaa !514
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 11 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !471 ; 2 uses
  %.not.i274.i = icmp eq ptr %i.mn, null
  br i1 %.not.i274.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.mo, align 4, !tbaa !480
  %i.mp = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.mp, ptr %i.mm, align 8, !tbaa !471
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.mq = phi ptr [ %i.mp, %bb.by ], [ %i.mn, %bb.bx ]
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 6 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !480
  %i.mt = icmp sgt i32 %i.ms, 4096
  br i1 %i.mt, label %bb.ca, label %newtok.exit.i

bb.ca:                                            ; preds = %bb.bz
  store i32 60, ptr %i.mr, align 4, !tbaa !480
  %i.mu = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.mq, i64 noundef 60, i64 noundef 1) #36
  store ptr %i.mu, ptr %i.mm, align 8, !tbaa !471
  br label %newtok.exit.i

newtok.exit.i:                                    ; preds = %bb.ca, %bb.bz
  %i.mv = icmp eq i32 %.011.i.ph.i, 35
  br i1 %i.mv, label %bb.cb, label %nextc0.exit284.i

bb.cb:                                            ; preds = %newtok.exit.i
  %i.mw = tail call fastcc i32 @parser_peek_variable_name(ptr noundef nonnull %0) ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !173 ; 3 uses
  %.not195.i = icmp eq i32 %i.my, -1
  br i1 %.not195.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !170
  %i.nb = icmp sgt i32 %i.na, %i.my
  br i1 %i.nb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !170
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  store i32 -1, ptr %i.mx, align 8, !tbaa !173
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb
  %.not196.i = icmp eq i32 %i.mw, 0
  br i1 %.not196.i, label %bb.cg, label %here_document.exit

bb.cg:                                            ; preds = %bb.cf
  %i.nc = load ptr, ptr %i.mm, align 8, !tbaa !471
  %i.nd = load i32, ptr %i.ml, align 8, !tbaa !514 ; 2 uses
  %i.ne = add nsw i32 %i.nd, 1
  store i32 %i.ne, ptr %i.ml, align 8, !tbaa !514
  %i.nf = sext i32 %i.nd to i64
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 %i.nf
  store i8 35, ptr %i.ng, align 1, !tbaa !10
  %i.nh = load i32, ptr %i.ml, align 8, !tbaa !514
  %i.ni = load i32, ptr %i.mr, align 4, !tbaa !480 ; 2 uses
  %.not.i275.i = icmp slt i32 %i.nh, %i.ni
  br i1 %.not.i275.i, label %tokadd.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nj = shl nsw i32 %i.ni, 1                    ; 2 uses
  store i32 %i.nj, ptr %i.mr, align 4, !tbaa !480
  %i.nk = load ptr, ptr %i.mm, align 8, !tbaa !471
  %i.nl = sext i32 %i.nj to i64
  %i.nm = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.nk, i64 noundef %i.nl, i64 noundef 1) #36
  store ptr %i.nm, ptr %i.mm, align 8, !tbaa !471
  br label %tokadd.exit.i

tokadd.exit.i:                                    ; preds = %bb.ch, %bb.cg
  %i.nn = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.no = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i276.i = icmp ult ptr %i.nn, %i.no
  br i1 %.not.i276.i, label %bb.ci, label %.critedge.i277.i, !prof !486

bb.ci:                                            ; preds = %tokadd.exit.i
  %i.np = load i16, ptr %i.f, align 8
  %i.nq = and i16 %i.np, 8
  %.not13.i283.i = icmp eq i16 %i.nq, 0
  br i1 %.not13.i283.i, label %bb.cj, label %.critedge.i277.i, !prof !486

bb.cj:                                            ; preds = %bb.ci
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !487
  %i.nt = icmp ugt ptr %i.ns, inttoptr (i64 1 to ptr)
  br i1 %i.nt, label %.critedge.i277.i, label %bb.ck, !prof !196

.critedge.i277.i:                                 ; preds = %bb.cj, %bb.ci, %tokadd.exit.i
  %i.nu = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i278.i = icmp eq i32 %i.nu, 0
  br i1 %.not14.i278.i, label %.critedge._crit_edge.i280.i, label %nextc0.exit284.i

.critedge._crit_edge.i280.i:                      ; preds = %.critedge.i277.i
  %.pre.i281.i = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.ck

bb.ck:                                            ; preds = %.critedge._crit_edge.i280.i, %bb.cj
  %i.nv = phi ptr [ %.pre.i281.i, %.critedge._crit_edge.i280.i ], [ %i.nn, %bb.cj ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1 ; 3 uses
  store ptr %i.nw, ptr %i.j, align 8, !tbaa !48
  %i.nx = load i8, ptr %i.nv, align 1, !tbaa !10
  %i.ny = icmp eq i8 %i.nx, 13
  br i1 %i.ny, label %bb.cl, label %nextc0.exit284.i, !prof !196

bb.cl:                                            ; preds = %bb.ck
  %i.nz = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i.i282.i = icmp ult ptr %i.nw, %i.nz
  br i1 %.not.i.i282.i, label %bb.cm, label %nextc0.exit284.i

bb.cm:                                            ; preds = %bb.cl
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !10
  %i.ob = icmp eq i8 %i.oa, 10
  br i1 %i.ob, label %bb.cn, label %nextc0.exit284.i

bb.cn:                                            ; preds = %bb.cm
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  store ptr %i.oc, ptr %i.j, align 8, !tbaa !48
  br label %nextc0.exit284.i

nextc0.exit284.i:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %.critedge.i277.i, %newtok.exit.i
  %.1173.i = phi i1 [ false, %newtok.exit.i ], [ true, %.critedge.i277.i ], [ false, %bb.ck ], [ false, %bb.cl ], [ false, %bb.cn ], [ false, %bb.cm ]
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.not35.i310.i = icmp ne i32 %i.ac, 0
  br i1 %.1173.i, label %pushback.exit.i, label %.backedge349.i

.backedge349.i:                                   ; preds = %bb.dj, %bb.do, %bb.dp, %.critedge.i312.i, %nextc0.exit284.i
  %i.of = load i16, ptr %i.f, align 8
  %i.og = and i16 %i.of, -9
  store i16 %i.og, ptr %i.f, align 8
  %i.oh = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 -1 ; 3 uses
  store ptr %i.oi, ptr %i.j, align 8, !tbaa !48
  %i.oj = load ptr, ptr %i.fo, align 8, !tbaa !44
  %i.ok = icmp ugt ptr %i.oi, %i.oj
  br i1 %i.ok, label %bb.co, label %pushback.exit.i

bb.co:                                            ; preds = %.backedge349.i
  %i.ol = load i8, ptr %i.oi, align 1, !tbaa !10
  %i.om = icmp eq i8 %i.ol, 10
  br i1 %i.om, label %bb.cp, label %pushback.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.on = getelementptr inbounds i8, ptr %i.oh, i64 -2 ; 2 uses
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !10
  %i.op = icmp eq i8 %i.oo, 13
  br i1 %i.op, label %bb.cq, label %pushback.exit.i

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.on, ptr %i.j, align 8, !tbaa !48
  br label %pushback.exit.i

pushback.exit.i:                                  ; preds = %bb.cq, %bb.cp, %bb.co, %.backedge349.i, %nextc0.exit284.i
  %i.oq = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr %i.oq, ptr %i.c, align 8, !tbaa !500
  %i.or = call fastcc i32 @tokadd_string(ptr noundef %0, i32 noundef %i.ab, i32 noundef 10, i32 noundef 0, ptr noundef null, ptr noundef %i.c, ptr noundef %i.d)
  switch i32 %i.or, label %.loopexit348.i [
    i32 -1, label %bb.cr
    i32 10, label %bb.ct
    i32 92, label %bb.cs
  ]

bb.cr:                                            ; preds = %pushback.exit.i
  %i.os = load i16, ptr %i.f, align 8             ; 2 uses
  %i.ot = and i16 %i.os, 8
  %.not199.i = icmp eq i16 %i.ot, 0
  br i1 %.not199.i, label %bb.al, label %nextc0.exit.i

bb.cs:                                            ; preds = %pushback.exit.i
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 -1, ptr %i.ou, align 8, !tbaa !173
  br label %.loopexit348.i

.loopexit348.i:                                   ; preds = %pushback.exit.i, %bb.db, %bb.cs
  %i.ov = load ptr, ptr %i.mm, align 8, !tbaa !471
  %i.ow = load i32, ptr %i.ml, align 8, !tbaa !514
  %i.ox = sext i32 %i.ow to i64
  %i.oy = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.oz = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.pa = tail call fastcc ptr @parser_str_new(ptr noundef %i.ov, i64 noundef %i.ox, ptr noundef %i.oy, i32 noundef %i.ab, ptr noundef %i.oz)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %rb_parser_str_buf_cat.exit247.i, %.loopexit348.i
  %.2176.i = phi ptr [ %i.pa, %.loopexit348.i ], [ %.1175.i, %rb_parser_str_buf_cat.exit247.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.pb = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %i.pc = getelementptr i8, ptr %0, i64 288
  %.val.i.i285.i = load ptr, ptr %i.pc, align 8, !tbaa !122
  %i.pd = call ptr @rb_ast_newnode(ptr noundef %.val.i.i285.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.pd, i32 noundef range(i32 0, 115) 63) #29
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.pf = load i32, ptr %2, align 4, !tbaa !51
  %i.pg = sext i32 %i.pf to i64
  %i.ph = load i64, ptr %i.pd, align 8, !tbaa !61
  %i.pi = and i64 %i.ph, 32767
  %i.pj = shl nsw i64 %i.pg, 15
  %i.pk = or disjoint i64 %i.pi, %i.pj
  store i64 %i.pk, ptr %i.pd, align 8, !tbaa !61
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !208 ; 2 uses
  %i.pn = add nsw i32 %i.pm, 1
  store i32 %i.pn, ptr %i.pl, align 8, !tbaa !208
  %i.po = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  store i32 %i.pm, ptr %i.po, align 8, !tbaa !209
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pd, i64 32
  store ptr %.2176.i, ptr %i.pp, align 8, !tbaa !432
  %i.pq = load ptr, ptr %0, align 8, !tbaa !18
  store ptr %i.pd, ptr %i.pq, align 8, !tbaa !10
  %i.pr = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.ps = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pr to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.px = call i64 @rb_enc_str_new(ptr noundef %i.pr, i64 noundef %i.pv, ptr noundef %i.pw) #29
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store i64 %i.px, ptr %i.py, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.pz = call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %.2176.i) #29
  store i64 %i.pz, ptr %i.py, align 8, !tbaa !47
  %i.qa = load ptr, ptr %i.c, align 8, !tbaa !500
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.qa, i64 noundef 0)
  br label %here_document.exit

bb.ct:                                            ; preds = %pushback.exit.i
  %i.qb = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.qc = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i286.i = icmp ult ptr %i.qb, %i.qc
  br i1 %.not.i286.i, label %bb.cu, label %.critedge.i287.i, !prof !486

bb.cu:                                            ; preds = %bb.ct
  %i.qd = load i16, ptr %i.f, align 8
  %i.qe = and i16 %i.qd, 8
  %.not13.i293.i = icmp eq i16 %i.qe, 0
  br i1 %.not13.i293.i, label %bb.cv, label %.critedge.i287.i, !prof !486

bb.cv:                                            ; preds = %bb.cu
  %i.qf = load ptr, ptr %i.od, align 8, !tbaa !487
  %i.qg = icmp ugt ptr %i.qf, inttoptr (i64 1 to ptr)
  br i1 %i.qg, label %.critedge.i287.i, label %bb.cw, !prof !196

.critedge.i287.i:                                 ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.qh = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i288.i = icmp eq i32 %i.qh, 0
  br i1 %.not14.i288.i, label %.critedge._crit_edge.i290.i, label %nextc0.exit294.i

.critedge._crit_edge.i290.i:                      ; preds = %.critedge.i287.i
  %.pre.i291.i = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.cw

bb.cw:                                            ; preds = %.critedge._crit_edge.i290.i, %bb.cv
  %i.qi = phi ptr [ %.pre.i291.i, %.critedge._crit_edge.i290.i ], [ %i.qb, %bb.cv ] ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 1 ; 3 uses
  store ptr %i.qj, ptr %i.j, align 8, !tbaa !48
  %i.qk = load i8, ptr %i.qi, align 1, !tbaa !10  ; 2 uses
  %i.ql = icmp eq i8 %i.qk, 13
  br i1 %i.ql, label %bb.cx, label %nextc0.exit294.i, !prof !196

bb.cx:                                            ; preds = %bb.cw
  %i.qm = load ptr, ptr %i.ad, align 8, !tbaa !413
  %.not.i.i292.i = icmp ult ptr %i.qj, %i.qm
  br i1 %.not.i.i292.i, label %bb.cy, label %nextc0.exit294.i

bb.cy:                                            ; preds = %bb.cx
  %i.qn = load i8, ptr %i.qj, align 1, !tbaa !10
  %i.qo = icmp eq i8 %i.qn, 10
  br i1 %i.qo, label %bb.cz, label %nextc0.exit294.i

bb.cz:                                            ; preds = %bb.cy
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  store ptr %i.qp, ptr %i.j, align 8, !tbaa !48
  br label %nextc0.exit294.i

nextc0.exit294.i:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw, %.critedge.i287.i
  %.011.i289.i = phi i8 [ -1, %.critedge.i287.i ], [ %i.qk, %bb.cw ], [ 13, %bb.cx ], [ 10, %bb.cz ], [ 13, %bb.cy ]
  %i.qq = load ptr, ptr %i.mm, align 8, !tbaa !471
  %i.qr = load i32, ptr %i.ml, align 8, !tbaa !514 ; 2 uses
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.ml, align 8, !tbaa !514
  %i.qt = sext i32 %i.qr to i64
  %i.qu = getelementptr inbounds i8, ptr %i.qq, i64 %i.qt
  store i8 %.011.i289.i, ptr %i.qu, align 1, !tbaa !10
  %i.qv = load i32, ptr %i.ml, align 8, !tbaa !514
  %i.qw = load i32, ptr %i.mr, align 4, !tbaa !480 ; 2 uses
  %.not.i295.i = icmp slt i32 %i.qv, %i.qw
  br i1 %.not.i295.i, label %tokadd.exit296.i, label %bb.da

bb.da:                                            ; preds = %nextc0.exit294.i
  %i.qx = shl nsw i32 %i.qw, 1                    ; 2 uses
  store i32 %i.qx, ptr %i.mr, align 4, !tbaa !480
  %i.qy = load ptr, ptr %i.mm, align 8, !tbaa !471
  %i.qz = sext i32 %i.qx to i64
  %i.ra = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.qy, i64 noundef %i.qz, i64 noundef 1) #36
  store ptr %i.ra, ptr %i.mm, align 8, !tbaa !471
  br label %tokadd.exit296.i

tokadd.exit296.i:                                 ; preds = %bb.da, %nextc0.exit294.i
  %i.rb = load i32, ptr %i.oe, align 4, !tbaa !170
  %i.rc = icmp sgt i32 %i.rb, 0
  br i1 %i.rc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %tokadd.exit296.i
  %i.rd = load ptr, ptr %i.ad, align 8, !tbaa !413
  store ptr %i.rd, ptr %i.j, align 8, !tbaa !48
  br label %.loopexit348.i

bb.dc:                                            ; preds = %tokadd.exit296.i
  %i.re = load ptr, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.rf = load ptr, ptr %i.ad, align 8, !tbaa !413 ; 2 uses
  %.not.i297.i = icmp ult ptr %i.re, %i.rf
  br i1 %.not.i297.i, label %bb.dd, label %.critedge.i298.i, !prof !486

bb.dd:                                            ; preds = %bb.dc
  %i.rg = load i16, ptr %i.f, align 8
  %i.rh = and i16 %i.rg, 8
  %.not13.i304.i = icmp eq i16 %i.rh, 0
  br i1 %.not13.i304.i, label %bb.de, label %.critedge.i298.i, !prof !486

bb.de:                                            ; preds = %bb.dd
  %i.ri = load ptr, ptr %i.od, align 8, !tbaa !487
  %i.rj = icmp ugt ptr %i.ri, inttoptr (i64 1 to ptr)
  br i1 %i.rj, label %.critedge.i298.i, label %bb.df, !prof !196

.critedge.i298.i:                                 ; preds = %bb.de, %bb.dd, %bb.dc
  %i.rk = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i299.i = icmp eq i32 %i.rk, 0
  br i1 %.not14.i299.i, label %.critedge._crit_edge.i301.i, label %nextc0.exit.i

.critedge._crit_edge.i301.i:                      ; preds = %.critedge.i298.i
  %.pre.i302.i = load ptr, ptr %i.j, align 8, !tbaa !48
  %.val206.pre.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !413
  br label %bb.df

bb.df:                                            ; preds = %.critedge._crit_edge.i301.i, %bb.de
  %.val206.pre.i = phi ptr [ %.val206.pre.pre.i, %.critedge._crit_edge.i301.i ], [ %i.rf, %bb.de ] ; 7 uses
  %i.rl = phi ptr [ %.pre.i302.i, %.critedge._crit_edge.i301.i ], [ %i.re, %bb.de ] ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1 ; 3 uses
  store ptr %i.rm, ptr %i.j, align 8, !tbaa !48
  %i.rn = load i8, ptr %i.rl, align 1, !tbaa !10
  %i.ro = icmp eq i8 %i.rn, 13
  br i1 %i.ro, label %bb.dg, label %bb.dj, !prof !196

bb.dg:                                            ; preds = %bb.df
  %.not.i.i303.i = icmp ult ptr %i.rm, %.val206.pre.i
  br i1 %.not.i.i303.i, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.rp = load i8, ptr %i.rm, align 1, !tbaa !10
  %i.rq = icmp eq i8 %i.rp, 10
  br i1 %i.rq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  store ptr %i.rr, ptr %i.j, align 8, !tbaa !48
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.val.i = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 7 uses
  %i.rs = ptrtoint ptr %.val206.pre.i to i64
  %i.rt = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = icmp slt i64 %i.ru, %i.x
  br i1 %i.rv, label %.backedge349.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rw = icmp ugt ptr %.val206.pre.i, %.val.i
  br i1 %i.rw, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.rx = getelementptr inbounds i8, ptr %.val206.pre.i, i64 -1 ; 4 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !10
  %i.rz = icmp eq i8 %i.ry, 10
  br i1 %i.rz, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.sa = icmp ugt ptr %i.rx, %.val.i
  br i1 %i.sa, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.sb = getelementptr inbounds i8, ptr %.val206.pre.i, i64 -2 ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !10
  %i.sd = icmp eq i8 %i.sc, 13
  %spec.select.i321.i = select i1 %i.sd, ptr %i.sb, ptr %i.rx
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0.i320.i = phi ptr [ %i.rx, %bb.dm ], [ %spec.select.i321.i, %bb.dn ] ; 2 uses
  %i.se = ptrtoint ptr %.0.i320.i to i64
  %i.sf = sub i64 %i.se, %i.rt
  %i.sg = icmp slt i64 %i.sf, %i.x
  br i1 %i.sg, label %.backedge349.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl, %bb.dk
  %.1.i306.i = phi ptr [ %.0.i320.i, %bb.do ], [ %.val206.pre.i, %bb.dl ], [ %.val206.pre.i, %bb.dk ] ; 2 uses
  %.16.i307.i = ptrtoaddr ptr %.1.i306.i to i64
  %i.sh = getelementptr inbounds i8, ptr %.1.i306.i, i64 %i.y ; 3 uses
  %i.si = tail call i32 @strncmp(ptr noundef readonly %i.u, ptr noundef %i.sh, i64 noundef range(i64 0, 4294967296) %i.x) #32
  %.not.i308.i = icmp eq i32 %i.si, 0
  br i1 %.not.i308.i, label %bb.dq, label %.backedge349.i

bb.dq:                                            ; preds = %bb.dp
  %i.sj = icmp ult ptr %.val.i, %i.sh
  %or.cond.i311.i = and i1 %.not35.i310.i, %i.sj
  br i1 %or.cond.i311.i, label %.lr.ph.preheader.i314.i, label %.critedge.i312.i

.lr.ph.preheader.i314.i:                          ; preds = %bb.dq
  %i.sk = add i64 %i.rt, %i.x
  %i.sl = sub i64 %.16.i307.i, %i.sk
  %scevgep.i315.i = getelementptr i8, ptr %.val.i, i64 %i.sl ; 2 uses
  br label %.lr.ph.i316.i

.lr.ph.i316.i:                                    ; preds = %bb.dr, %.lr.ph.preheader.i314.i
  %.0263.i317.i = phi ptr [ %i.sr, %bb.dr ], [ %.val.i, %.lr.ph.preheader.i314.i ] ; 3 uses
  %i.sm = load i8, ptr %.0263.i317.i, align 1, !tbaa !10 ; 2 uses
  %i.sn = sext i8 %i.sm to i32
  %i.so = icmp ne i8 %i.sm, 32
  %i.sp = add nsw i32 %i.sn, -14
  %i.sq = icmp ult i32 %i.sp, -5
  %narrow.i.not.i318.i = select i1 %i.so, i1 %i.sq, i1 false
  br i1 %narrow.i.not.i318.i, label %.critedge.i312.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i316.i
  %i.sr = getelementptr inbounds nuw i8, ptr %.0263.i317.i, i64 1 ; 2 uses
  %exitcond.not.i319.i = icmp eq ptr %i.sr, %scevgep.i315.i
  br i1 %exitcond.not.i319.i, label %.critedge.i312.i, label %.lr.ph.i316.i, !llvm.loop !511

.critedge.i312.i:                                 ; preds = %bb.dr, %.lr.ph.i316.i, %bb.dq
  %.127.i313.i = phi ptr [ %.val.i, %bb.dq ], [ %.0263.i317.i, %.lr.ph.i316.i ], [ %scevgep.i315.i, %bb.dr ]
  %.not362.i = icmp eq ptr %.127.i313.i, %i.sh
  br i1 %.not362.i, label %bb.ds, label %.backedge349.i

bb.ds:                                            ; preds = %.critedge.i312.i
  %i.ss = load ptr, ptr %i.mm, align 8, !tbaa !471
  %i.st = load i32, ptr %i.ml, align 8, !tbaa !514
  %i.su = sext i32 %i.st to i64
  %i.sv = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.sw = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.sx = tail call fastcc ptr @parser_str_new(ptr noundef %i.ss, i64 noundef %i.su, ptr noundef %i.sv, i32 noundef %i.ab, ptr noundef %i.sw)
  br label %.loopexit347.i

.loopexit347.i:                                   ; preds = %.critedge.i263.i, %bb.ds
  %.3.i = phi ptr [ %i.sx, %bb.ds ], [ %.1175.i, %.critedge.i263.i ] ; 2 uses
  tail call fastcc void @parser_dispatch_heredoc_end(ptr noundef %0)
  %i.sy = load ptr, ptr %i.h, align 8, !tbaa !171 ; 6 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !171
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !501 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ta, ptr %i.tb, align 8, !tbaa !488
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !451 ; 3 uses
  store ptr %i.td, ptr %i.fo, align 8, !tbaa !44
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !453
  %i.tg = getelementptr inbounds i8, ptr %i.td, i64 %i.tf
  store ptr %i.tg, ptr %i.ad, align 8, !tbaa !413
  %i.th = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !503
  %i.tj = getelementptr inbounds i8, ptr %i.td, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sy, i64 28
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !504
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.tp = load i8, ptr %i.to, align 8, !tbaa !508
  %i.tq = zext i8 %i.tp to i64                    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tq
  store ptr %i.tr, ptr %i.j, align 8, !tbaa !48
  %i.ts = sub nsw i64 0, %i.tq
  %i.tt = getelementptr inbounds i8, ptr %i.tj, i64 %i.ts
  store ptr %i.tt, ptr %i.l, align 8, !tbaa !41
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !42
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.tv, ptr %i.tw, align 8, !tbaa !509
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !510
  store i32 %i.ty, ptr %i.tu, align 4, !tbaa !42
  %i.tz = load i16, ptr %i.f, align 8             ; 2 uses
  %i.ua = and i16 %i.tz, 8
  %.not.i323.i = icmp eq i16 %i.ua, 0
  br i1 %.not.i323.i, label %heredoc_restore.exit324.i, label %bb.dt

bb.dt:                                            ; preds = %.loopexit347.i
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.ub, align 8, !tbaa !487
  br label %heredoc_restore.exit324.i

heredoc_restore.exit324.i:                        ; preds = %bb.dt, %.loopexit347.i
  %i.uc = and i16 %i.tz, -9
  store i16 %i.uc, ptr %i.f, align 8
  tail call void @ruby_xfree(ptr noundef nonnull %i.sy) #29
  %i.ud = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.ud, ptr %i.l, align 8, !tbaa !41
  %i.ue = or disjoint i32 %i.ab, 32768
  %i.uf = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store i32 %i.ue, ptr %i.ug, align 8, !tbaa !10
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  store i32 0, ptr %i.uh, align 8, !tbaa !10
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 20
  store i32 0, ptr %i.ui, align 4, !tbaa !10
  store ptr %i.uf, ptr %i.h, align 8, !tbaa !171
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ul = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %3) #29 ; 0 uses
  %i.um = getelementptr i8, ptr %0, i64 288
  %.val.i.i325.i = load ptr, ptr %i.um, align 8, !tbaa !122
  %i.un = call ptr @rb_ast_newnode(ptr noundef %.val.i.i325.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.un, i32 noundef range(i32 0, 115) 63) #29
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uo, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.up = load i32, ptr %3, align 4, !tbaa !51
  %i.uq = sext i32 %i.up to i64
  %i.ur = load i64, ptr %i.un, align 8, !tbaa !61
  %i.us = and i64 %i.ur, 32767
  %i.ut = shl nsw i64 %i.uq, 15
  %i.uu = or disjoint i64 %i.us, %i.ut
  store i64 %i.uu, ptr %i.un, align 8, !tbaa !61
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !208 ; 2 uses
  %i.ux = add nsw i32 %i.uw, 1
  store i32 %i.ux, ptr %i.uv, align 8, !tbaa !208
  %i.uy = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  store i32 %i.uw, ptr %i.uy, align 8, !tbaa !209
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  store ptr %.3.i, ptr %i.uz, align 8, !tbaa !432
  %i.va = load ptr, ptr %0, align 8, !tbaa !18
  store ptr %i.un, ptr %i.va, align 8, !tbaa !10
  %i.vb = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.vc = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.vb to i64
  %i.vf = sub i64 %i.vd, %i.ve
  %i.vg = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.vh = call i64 @rb_enc_str_new(ptr noundef %i.vb, i64 noundef %i.vf, ptr noundef %i.vg) #29
  store i64 %i.vh, ptr %i.uj, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.vi = call i64 @rb_str_new_mutable_parser_string(ptr noundef %.3.i) #29 ; 0 uses
  store i64 %i.uk, ptr %i.uj, align 8, !tbaa !47
  br label %here_document.exit

here_document.exit:                               ; preds = %parser_set_lex_state.exit.i, %parser_set_lex_state.exit232.i, %bb.cf, %.loopexit.i, %heredoc_restore.exit324.i
  %.1.i = phi i32 [ 345, %parser_set_lex_state.exit.i ], [ 345, %parser_set_lex_state.exit232.i ], [ 321, %.loopexit.i ], [ 321, %heredoc_restore.exit324.i ], [ %i.mw, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %pushback.exit1061

bb.du:                                            ; preds = %bb.b
  %i.vj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !515 ; 11 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !517 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !49
  store ptr %i.vq, ptr %i.a, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr null, ptr %i.b, align 8, !tbaa !500
  %i.vr = and i32 %i.vk, 32768
  %.not.i854 = icmp eq i32 %i.vr, 0
  br i1 %.not.i854, label %bb.ed, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vs = and i32 %i.vk, 8
  %.not99.i = icmp eq i32 %i.vs, 0
  br i1 %.not99.i, label %nextc0.exit.i858, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !413
  %.not.i.i855 = icmp ult ptr %i.k, %i.vu
  %i.vv = and i16 %i.g, 8
  %.not13.i.i865 = icmp eq i16 %i.vv, 0
  %or.cond1306 = select i1 %.not.i.i855, i1 %.not13.i.i865, i1 false, !prof !506
  br i1 %or.cond1306, label %bb.dx, label %.critedge.i.i856, !prof !506

bb.dx:                                            ; preds = %bb.dw
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !487
  %i.vy = icmp ugt ptr %i.vx, inttoptr (i64 1 to ptr)
  br i1 %i.vy, label %.critedge.i.i856, label %bb.dy, !prof !196

.critedge.i.i856:                                 ; preds = %bb.dx, %bb.dw
  %i.vz = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i.i857 = icmp eq i32 %i.vz, 0
  br i1 %.not14.i.i857, label %.critedge._crit_edge.i.i862, label %nextc0.exit.i858

.critedge._crit_edge.i.i862:                      ; preds = %.critedge.i.i856
  %.pre.i.i863 = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.dy

bb.dy:                                            ; preds = %.critedge._crit_edge.i.i862, %bb.dx
  %i.wa = phi ptr [ %.pre.i.i863, %.critedge._crit_edge.i.i862 ], [ %i.k, %bb.dx ] ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1 ; 3 uses
  store ptr %i.wb, ptr %i.j, align 8, !tbaa !48
  %i.wc = load i8, ptr %i.wa, align 1, !tbaa !10
  %i.wd = icmp eq i8 %i.wc, 13
  br i1 %i.wd, label %bb.dz, label %nextc0.exit.i858, !prof !196

bb.dz:                                            ; preds = %bb.dy
  %i.we = load ptr, ptr %i.vt, align 8, !tbaa !413
  %.not.i.i.i864 = icmp ult ptr %i.wb, %i.we
  br i1 %.not.i.i.i864, label %bb.ea, label %nextc0.exit.i858

end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  br label %.loopexit.i902

bb.iy:                                            ; preds = %.preheader.i900
  %i.auh = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.629, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.aui = icmp eq i32 %i.auh, 0
  %.not219.1.i = icmp eq i64 %i.anw, 8
  %or.cond509.i = and i1 %.not219.1.i, %i.aui
  br i1 %or.cond509.i, label %bb.iq, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.auj = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.630, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.auk = icmp eq i32 %i.auj, 0
  %.not219.2.i = icmp eq i64 %i.anw, 21
  %or.cond510.i = and i1 %.not219.2.i, %i.auk
  br i1 %or.cond510.i, label %bb.iq, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aul = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.631, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.aum = icmp eq i32 %i.aul, 0
  %.not219.3.i = icmp eq i64 %i.anw, 24
  %or.cond511.i = and i1 %.not219.3.i, %i.aum
  br i1 %or.cond511.i, label %bb.iq, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aun = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.632, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.auo = icmp eq i32 %i.aun, 0
  %.not219.4.i = icmp eq i64 %i.anw, 11
  %or.cond512.i = and i1 %.not219.4.i, %i.auo
  br i1 %or.cond512.i, label %bb.iq, label %..loopexit.i902_crit_edge

..loopexit.i902_crit_edge:                        ; preds = %bb.jb
  %.pre2167 = ptrtoint ptr %.0171454.i to i64
  %.pre2169 = ptrtoint ptr %.0172451.i to i64
  %.pre2171 = sub i64 %.pre2167, %.pre2169
  br label %.loopexit.i902

.loopexit.i902:                                   ; preds = %..loopexit.i902_crit_edge, %RSTRING_PTR.exit247.i
  %.pre-phi2172 = phi i64 [ %.pre2171, %..loopexit.i902_crit_edge ], [ %i.atn, %RSTRING_PTR.exit247.i ] ; 3 uses
  %.2175.i = phi i64 [ %.0173376.i, %..loopexit.i902_crit_edge ], [ %.1174.i, %RSTRING_PTR.exit247.i ] ; 5 uses
  %.not222.i = icmp eq i64 %.2175.i, 0
  br i1 %.not222.i, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %.loopexit.i902
  %i.aup = tail call i64 @rb_str_resize(i64 noundef %.2175.i, i64 noundef %.pre-phi2172) #29 ; 0 uses
  %i.auq = inttoptr i64 %.2175.i to ptr           ; 2 uses
  %i.aur = load i64, ptr %i.auq, align 8, !tbaa !431
  %i.aus = and i64 %i.aur, 8192
  %.not.i248.i = icmp eq i64 %i.aus, 0
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 24 ; 2 uses
  br i1 %.not.i248.i, label %RSTRING_PTR.exit249.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !10
  br label %RSTRING_PTR.exit249.i

RSTRING_PTR.exit249.i:                            ; preds = %bb.jd, %bb.jc
  %i.auv = phi ptr [ %i.auu, %bb.jd ], [ %i.aut, %bb.jc ]
  %.not.i250.i = icmp eq ptr %.0171454.i, %.0172451.i
  br i1 %.not.i250.i, label %ruby_nonempty_memcpy.exit251.i, label %bb.je

bb.je:                                            ; preds = %RSTRING_PTR.exit249.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auv, ptr nonnull readonly align 1 %.0172451.i, i64 %.pre-phi2172, i1 false)
  br label %ruby_nonempty_memcpy.exit251.i

bb.jf:                                            ; preds = %.loopexit.i902
  %i.auw = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.aux = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0172451.i, i64 noundef %.pre-phi2172, ptr noundef %i.auw) #29
  br label %ruby_nonempty_memcpy.exit251.i

ruby_nonempty_memcpy.exit251.i:                   ; preds = %bb.jf, %bb.je, %RSTRING_PTR.exit249.i
  %.3176.i = phi i64 [ %i.aux, %bb.jf ], [ %.2175.i, %RSTRING_PTR.exit249.i ], [ %.2175.i, %bb.je ] ; 2 uses
  %.val.i903 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.auy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i903, i64 noundef %i.agd, i32 noundef 2, i64 noundef %.1180.i, i64 noundef %.3176.i) #29 ; 0 uses
  br label %bb.jg

bb.jg:                                            ; preds = %ruby_nonempty_memcpy.exit251.i, %bb.ib
  %.3182.i = phi i64 [ %.1180.i, %ruby_nonempty_memcpy.exit251.i ], [ %.0179375.i, %bb.ib ]
  %.5178.i = phi i64 [ %.3176.i, %ruby_nonempty_memcpy.exit251.i ], [ %.0173376.i, %bb.ib ]
  %.14167.i = phi i64 [ %.12165.i, %ruby_nonempty_memcpy.exit251.i ], [ %.4157333.i, %bb.ib ] ; 2 uses
  %.14.i = phi ptr [ %.12.i, %ruby_nonempty_memcpy.exit251.i ], [ %.4334.i, %bb.ib ]
  %i.auz = icmp sgt i64 %.14167.i, 0
  br i1 %i.auz, label %.preheader284.i, label %parser_magic_comment.exit

.loopexit:                                        ; preds = %bb.hr, %bb.hu, %bb.ib, %.critedge14.i, %.lr.ph370.i, %bb.hi, %magic_comment_marker.exit.i
  %i.ava = load i16, ptr %i.f, align 8            ; 2 uses
  %i.avb = and i16 %i.ava, 128
  %.not.i906 = icmp eq i16 %i.avb, 0
  br i1 %.not.i906, label %comment_at_top.exit, label %parser_magic_comment.exit

comment_at_top.exit:                              ; preds = %.loopexit
  %i.avc = load i32, ptr %i.age, align 8, !tbaa !541
  %i.avd = and i16 %i.ava, 64
  %.not4.i = icmp eq i16 %i.avd, 0
  %i.ave = select i1 %.not4.i, i32 1, i32 2
  %i.avf = icmp eq i32 %i.avc, %i.ave
  br i1 %i.avf, label %bb.jh, label %parser_magic_comment.exit

bb.jh:                                            ; preds = %comment_at_top.exit
  %i.avg = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 2 uses
  %i.avh = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 4 uses
  %i.avi = ptrtoint ptr %i.avh to i64             ; 3 uses
  %i.avj = ptrtoint ptr %i.avg to i64
  %i.avk = sub i64 %i.avi, %i.avj
  %i.avl = icmp slt i64 %i.avk, 7
  br i1 %i.avl, label %parser_magic_comment.exit, label %.lr.ph.i907

.lr.ph.i907:                                      ; preds = %bb.jh, %.backedge.i908
  %.065.i = phi ptr [ %.0.be.i, %.backedge.i908 ], [ %i.avg, %bb.jh ] ; 8 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.065.i, i64 6 ; 6 uses
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.avn, label %bb.jn [
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
  %.0.be.i = phi ptr [ %i.avv, %bb.jm ], [ %i.avm, %bb.jn ], [ %i.avm, %bb.jo ], [ %i.avr, %bb.ji ], [ %i.avs, %bb.jj ], [ %i.avt, %bb.jk ], [ %i.avu, %bb.jl ], [ %i.avm, %.lr.ph.i907 ], [ %i.avm, %.lr.ph.i907 ] ; 2 uses
  %i.avo = ptrtoint ptr %.0.be.i to i64
  %i.avp = sub i64 %i.avi, %i.avo
  %i.avq = icmp slt i64 %i.avp, 7
  br i1 %i.avq, label %parser_magic_comment.exit, label %.lr.ph.i907

bb.ji:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avr = getelementptr inbounds nuw i8, ptr %.065.i, i64 5
  br label %.backedge.i908

bb.jj:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avs = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  br label %.backedge.i908

bb.jk:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avt = getelementptr inbounds nuw i8, ptr %.065.i, i64 3
  br label %.backedge.i908

bb.jl:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avu = getelementptr inbounds nuw i8, ptr %.065.i, i64 2
  br label %.backedge.i908

bb.jm:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avv = getelementptr inbounds nuw i8, ptr %.065.i, i64 1
  br label %.backedge.i908

bb.jn:                                            ; preds = %.lr.ph.i907
  %i.avw = sext i8 %i.avn to i32
  %i.avx = icmp ne i8 %i.avn, 32
  %i.avy = add nsw i32 %i.avw, -14
  %i.avz = icmp ult i32 %i.avy, -5
  %narrow.i.not.i918 = select i1 %i.avx, i1 %i.avz, i1 false
  br i1 %narrow.i.not.i918, label %.backedge.i908, label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.lr.ph.i907, %.lr.ph.i907
  %i.awa = phi i1 [ true, %bb.jn ], [ false, %.lr.ph.i907 ], [ false, %.lr.ph.i907 ]
  %i.awb = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull %.065.i, ptr noundef nonnull @.str.628, i64 noundef 6) #32
  %i.awc = icmp eq i32 %i.awb, 0
  br i1 %i.awc, label %.preheader58.i.preheader, label %.backedge.i908

.preheader58.i.preheader:                         ; preds = %bb.jo
  %i.awd = getelementptr inbounds nuw i8, ptr %.065.i, i64 7 ; 2 uses
  %.not47.i30653068 = icmp ult ptr %i.awd, %i.avh
  br i1 %.not47.i30653068, label %.lr.ph3067, label %parser_magic_comment.exit

.lr.ph3067:                                       ; preds = %.preheader58.i.preheader, %.preheader58.i
  %i.awe = phi ptr [ %i.awo, %.preheader58.i ], [ %i.awd, %.preheader58.i.preheader ]
  %.2.i9103070 = phi ptr [ %i.awn, %.preheader58.i ], [ %i.avm, %.preheader58.i.preheader ] ; 3 uses
  %.240.i3069 = phi i1 [ false, %.preheader58.i ], [ %i.awa, %.preheader58.i.preheader ]
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jq
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awg, i64 1 ; 2 uses
  %.not47.i = icmp ult ptr %i.awf, %i.avh
  br i1 %.not47.i, label %bb.jq, label %parser_magic_comment.exit, !llvm.loop !542

bb.jq:                                            ; preds = %.lr.ph3067, %bb.jp
  %i.awg = phi ptr [ %i.awe, %.lr.ph3067 ], [ %i.awf, %bb.jp ] ; 8 uses
  %.3.i9113066 = phi ptr [ %.2.i9103070, %.lr.ph3067 ], [ %i.awg, %bb.jp ] ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !10 ; 3 uses
  %i.awi = sext i8 %i.awh to i32
  %i.awj = icmp ne i8 %i.awh, 32
  %i.awk = add nsw i32 %i.awi, -14
  %i.awl = icmp ult i32 %i.awk, -5
  %narrow.i53.not.i = select i1 %i.awj, i1 %i.awl, i1 false
  br i1 %narrow.i53.not.i, label %bb.jr, label %bb.jp, !llvm.loop !542

bb.jr:                                            ; preds = %bb.jq
  br i1 %.240.i3069, label %bb.js, label %.preheader.i912

.preheader.i912:                                  ; preds = %bb.jr
  %scevgep.i = getelementptr i8, ptr %.2.i9103070, i64 %i.avi
  %.2.lcssa7375.i = ptrtoaddr ptr %.2.i9103070 to i64
  %i.awm = sub i64 0, %.2.lcssa7375.i
  %scevgep76.i = getelementptr i8, ptr %scevgep.i, i64 %i.awm ; 2 uses
  br label %bb.jt

bb.js:                                            ; preds = %bb.jr
  switch i8 %i.awh, label %parser_magic_comment.exit [
    i8 61, label %.preheader58.i
    i8 58, label %.preheader58.i
  ]

.preheader58.i:                                   ; preds = %bb.js, %bb.js
  %i.awn = getelementptr inbounds nuw i8, ptr %.3.i9113066, i64 2
  %i.awo = getelementptr inbounds nuw i8, ptr %.3.i9113066, i64 3 ; 2 uses
  %.not47.i3065 = icmp ult ptr %i.awo, %i.avh
  br i1 %.not47.i3065, label %.lr.ph3067, label %parser_magic_comment.exit

bb.jt:                                            ; preds = %bb.jv, %.preheader.i912
  %.4.i = phi ptr [ %i.awv, %bb.jv ], [ %i.awg, %.preheader.i912 ] ; 3 uses
  %i.awp = load i8, ptr %.4.i, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.awp, label %bb.ju [
    i8 45, label %bb.jv
    i8 95, label %bb.jv
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.awq = sext i8 %i.awp to i32                  ; 2 uses
  %i.awr = and i32 %i.awq, -33
  %i.aws = add nsw i32 %i.awr, -91
  %narrow.i.i.i = icmp ult i32 %i.aws, -26
  %i.awt = add nsw i32 %i.awq, -58
  %i.awu = icmp ult i32 %i.awt, -10
  %narrow.i54.not.i = select i1 %narrow.i.i.i, i1 %i.awu, i1 false
  br i1 %narrow.i54.not.i, label %.critedge.i914, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jt
  %i.awv = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i913 = icmp eq ptr %i.awv, %scevgep76.i
  br i1 %exitcond.not.i913, label %.critedge.i914, label %bb.jt, !llvm.loop !543

.critedge.i914:                                   ; preds = %bb.jv, %bb.ju
  %.5.i915 = phi ptr [ %scevgep76.i, %bb.jv ], [ %.4.i, %bb.ju ] ; 2 uses
  %i.aww = ptrtoint ptr %.5.i915 to i64
  %i.awx = ptrtoint ptr %i.awg to i64
  %i.awy = sub i64 %i.aww, %i.awx
  %i.awz = tail call i64 @parser_encode_length(ptr poison, ptr noundef nonnull %i.awg, i64 noundef %i.awy)
  %i.axa = tail call i64 @rb_str_new(ptr noundef nonnull %i.awg, i64 noundef %i.awz) #29 ; 2 uses
  store ptr %i.awg, ptr %i.afw, align 8, !tbaa !41
  store ptr %.5.i915, ptr %i.aft, align 8, !tbaa !48
  %i.axb = inttoptr i64 %i.axa to ptr             ; 2 uses
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !431
  %i.axd = and i64 %i.axc, 8192
  %.not.i.i916 = icmp eq i64 %i.axd, 0
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 24 ; 2 uses
  br i1 %.not.i.i916, label %RSTRING_PTR.exit.i917, label %bb.jw

bb.jw:                                            ; preds = %.critedge.i914
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !10
  br label %RSTRING_PTR.exit.i917

RSTRING_PTR.exit.i917:                            ; preds = %bb.jw, %.critedge.i914
  %i.axg = phi ptr [ %i.axf, %bb.jw ], [ %i.axe, %.critedge.i914 ]
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %i.axg)
  %i.axh = tail call i64 @rb_str_resize(i64 noundef %i.axa, i64 noundef 0) #29 ; 0 uses
  br label %parser_magic_comment.exit

parser_magic_comment.exit:                        ; preds = %bb.jg, %.preheader283.i.preheader, %.backedge.i908, %bb.js, %.preheader58.i, %bb.hx, %bb.hz, %bb.ia, %.preheader283.i, %bb.jp, %.preheader58.i.preheader, %.loopexit, %RSTRING_PTR.exit.i917, %bb.jh, %magic_comment_marker.exit.thread.i, %comment_at_top.exit
  store ptr %i.ajl, ptr %i.afw, align 8, !tbaa !41
  %i.axi = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 5 uses
  store ptr %i.axi, ptr %i.aft, align 8, !tbaa !48
  %i.axj = icmp ult ptr %i.axi, %i.ajl
  br i1 %i.axj, label %bb.jx, label %ripper_has_scan_event.exit.i921

bb.jx:                                            ; preds = %parser_magic_comment.exit
  %i.axk = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.axk, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i921:                  ; preds = %parser_magic_comment.exit
  %.not.i922 = icmp ugt ptr %i.axi, %i.ajl
  br i1 %.not.i922, label %bb.jy, label %ripper_dispatch_scan_event.exit924

bb.jy:                                            ; preds = %ripper_has_scan_event.exit.i921
  %i.axl = ptrtoint ptr %i.axi to i64
  %i.axm = ptrtoint ptr %i.ajl to i64
  %i.axn = sub i64 %i.axl, %i.axm
  %i.axo = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.axp = tail call i64 @rb_enc_str_new(ptr noundef %i.ajl, i64 noundef %i.axn, ptr noundef %i.axo) #29
  %i.axq = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 352) #29
  %.val.i.i923 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.axr = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i923, i64 noundef %i.axq, i32 noundef 1, i64 noundef %i.axp) #29
  %i.axs = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.axt = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.axs) #29 ; 0 uses
  %i.axu = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 2 uses
  store ptr %i.axu, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.axr, ptr %i.aga, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit924

ripper_dispatch_scan_event.exit924:               ; preds = %bb.gv, %bb.jy, %ripper_has_scan_event.exit.i921, %nextc0.exit.thread1220
  %.val.i925 = phi ptr [ %i.ahb, %nextc0.exit.thread1220 ], [ %i.agv, %bb.gv ], [ %i.axi, %ripper_has_scan_event.exit.i921 ], [ %i.axu, %bb.jy ] ; 5 uses
  %.1665 = phi i32 [ %.0664, %nextc0.exit.thread1220 ], [ %.0664, %bb.gv ], [ 1, %ripper_has_scan_event.exit.i921 ], [ 1, %bb.jy ] ; 7 uses
  %i.axv = load i16, ptr %i.f, align 8            ; 2 uses
  %i.axw = and i16 %i.axv, -129
  %i.axx = or disjoint i16 %i.axw, %i.afm
  store i16 %i.axx, ptr %i.f, align 8
  %i.axy = load ptr, ptr %i.agg, align 8, !tbaa !488 ; 3 uses
  %i.axz = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.aya = and i32 %i.axz, 897
  %.not808 = icmp ne i32 %i.aya, 0
  %i.ayb = and i32 %i.axz, 2048
  %.not809 = icmp eq i32 %i.ayb, 0
  %i.ayc = and i1 %.not808, %.not809              ; 2 uses
  %i.ayd = and i32 %i.axz, 2064
  %i.aye = icmp eq i32 %i.ayd, 2064
  %or.cond1309 = or i1 %i.aye, %i.ayc
  br i1 %or.cond1309, label %bb.kd, label %.preheader.preheader

.preheader.preheader:                             ; preds = %ripper_dispatch_scan_event.exit924
  %i.ayf = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i931.peel = icmp ult ptr %.val.i925, %i.ayf
  %i.ayg = and i16 %i.axv, 8
  %.not13.i938.peel = icmp eq i16 %i.ayg, 0
  %or.cond2716 = select i1 %.not.i931.peel, i1 %.not13.i938.peel, i1 false, !prof !506
  br i1 %or.cond2716, label %bb.jz, label %.critedge.i932.peel, !prof !506

bb.jz:                                            ; preds = %.preheader.preheader
  %i.ayh = load ptr, ptr %i.afv, align 8, !tbaa !487
  %i.ayi = icmp ugt ptr %i.ayh, inttoptr (i64 1 to ptr)
  br i1 %i.ayi, label %.critedge.i932.peel, label %bb.ka, !prof !196

.critedge.i932.peel:                              ; preds = %bb.jz, %.preheader.preheader
  %i.ayj = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i933.peel = icmp eq i32 %i.ayj, 0
  br i1 %.not14.i933.peel, label %.critedge._crit_edge.i935.peel, label %.loopexit2107

.critedge._crit_edge.i935.peel:                   ; preds = %.critedge.i932.peel
  %.pre.i936.peel = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %bb.ka

bb.ka:                                            ; preds = %.critedge._crit_edge.i935.peel, %bb.jz
  %i.ayk = phi ptr [ %.pre.i936.peel, %.critedge._crit_edge.i935.peel ], [ %.val.i925, %bb.jz ] ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 1 ; 8 uses
  store ptr %i.ayl, ptr %i.aft, align 8, !tbaa !48
  %i.aym = load i8, ptr %i.ayk, align 1, !tbaa !10
  switch i8 %i.aym, label %.loopexit1360 [
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
  %i.ayn = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i937.peel = icmp ult ptr %i.ayl, %i.ayn
  br i1 %.not.i.i937.peel, label %bb.kc, label %.preheader.preheader3212

bb.kc:                                            ; preds = %bb.kb
  %i.ayo = load i8, ptr %i.ayl, align 1, !tbaa !10
  %i.ayp = icmp eq i8 %i.ayo, 10
  br i1 %i.ayp, label %.loopexit1360, label %.preheader.preheader3212

bb.kd:                                            ; preds = %ripper_dispatch_scan_event.exit924
  %.not815 = icmp eq i32 %.1665, 0
  br i1 %.not815, label %bb.ke, label %ripper_dispatch_scan_event.exit930

bb.ke:                                            ; preds = %bb.kd
  %.val3.i926 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.ayq = icmp ult ptr %.val.i925, %.val3.i926
  br i1 %i.ayq, label %bb.kf, label %ripper_has_scan_event.exit.i927

bb.kf:                                            ; preds = %bb.ke
  %i.ayr = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ayr, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i927:                  ; preds = %bb.ke
  %.not.i928 = icmp ugt ptr %.val.i925, %.val3.i926
  br i1 %.not.i928, label %bb.kg, label %ripper_dispatch_scan_event.exit930

bb.kg:                                            ; preds = %ripper_has_scan_event.exit.i927
  %i.ays = ptrtoint ptr %.val.i925 to i64
  %i.ayt = ptrtoint ptr %.val3.i926 to i64
  %i.ayu = sub i64 %i.ays, %i.ayt
  %i.ayv = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.ayw = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i926, i64 noundef %i.ayu, ptr noundef %i.ayv) #29
  %i.ayx = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 351) #29
  %.val.i.i929 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.ayy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i929, i64 noundef %i.ayx, i32 noundef 1, i64 noundef %i.ayw) #29
  %i.ayz = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.aza = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.ayz) #29 ; 0 uses
  %i.azb = load ptr, ptr %i.aft, align 8, !tbaa !48
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
  %i.a = ptrtoint ptr %.88.val to i64
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
  %i.m = ptrtoint ptr %.0 to i64
  %i.n = sub i64 %i.m, %i.b
  %i.o = icmp slt i64 %i.n, %1
  br i1 %i.o, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %.1 = phi ptr [ %.0, %bb.f ], [ %.88.val, %bb.c ], [ %.88.val, %bb.b ] ; 2 uses
  %.16 = ptrtoaddr ptr %.1 to i64
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
  %i.u = sub i64 %.16, %i.t
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
