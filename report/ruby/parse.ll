inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ruby_yyparse:bb.a
  %i.cby = shl nsw i64 %i.cbw, 15
  %i.cbz = or disjoint i64 %i.cbx, %i.cby
  store i64 %i.cbz, ptr %i.cbp, align 8, !tbaa !69
  br label %set_line_body.exit3403

set_line_body.exit3403:                           ; preds = %bb.rj, %bb.rk, %bb.rl
  %i.cca = load ptr, ptr %5, align 8, !tbaa !15   ; 2 uses
  %i.ccb = sext i32 %i.cbr to i64
  %i.ccc = load i64, ptr %i.cca, align 8, !tbaa !69
  %i.ccd = and i64 %i.ccc, 32767
  %i.cce = shl nsw i64 %i.ccb, 15
  %i.ccf = or disjoint i64 %i.ccd, %i.cce
  store i64 %i.ccf, ptr %i.cca, align 8, !tbaa !69
  call fastcc void @local_pop(ptr noundef nonnull %0)
  %i.ccg = getelementptr i8, ptr %.32937, i64 -32 ; 3 uses
  %i.cch = load i16, ptr %i.ccg, align 8
  %i.cci = and i16 %i.cch, 16
  %i.ccj = load i16, ptr %i.y, align 8
  %i.cck = and i16 %i.ccj, -17
  %i.ccl = or disjoint i16 %i.cck, %i.cci         ; 2 uses
  store i16 %i.ccl, ptr %i.y, align 8
  %i.ccm = load i16, ptr %i.ccg, align 8
  %i.ccn = and i16 %i.ccm, 1024
  %i.cco = and i16 %i.ccl, -1025
  %i.ccp = or disjoint i16 %i.cco, %i.ccn         ; 2 uses
  store i16 %i.ccp, ptr %i.y, align 8
  %i.ccq = load i16, ptr %i.ccg, align 8
  %i.ccr = and i16 %i.ccq, 192
  %i.ccs = and i16 %i.ccp, -193
  %i.cct = or disjoint i16 %i.ccs, %i.ccr
  store i16 %i.cct, ptr %i.y, align 8
  br label %fixpos.exit

bb.rm:                                            ; preds = %yy_reduce_print.exit
  %i.ccu = getelementptr i8, ptr %.32950, i64 -16
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef %i.ccu)
  br label %fixpos.exit

bb.rn:                                            ; preds = %yy_reduce_print.exit
  %i.ccv = getelementptr i8, ptr %.32937, i64 -32 ; 2 uses
  %i.ccw = load ptr, ptr %i.ccv, align 8, !tbaa !15
  call fastcc void @restore_defun(ptr noundef nonnull %0, ptr noundef %i.ccw)
  %i.ccx = load ptr, ptr %i.ccv, align 8, !tbaa !15
  %i.ccy = getelementptr i8, ptr %i.ccx, i64 32
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !94 ; 3 uses
  store ptr %i.ccz, ptr %5, align 8, !tbaa !15
  %i.cda = getelementptr i8, ptr %i.ccz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cda, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !57
  %i.cdb = getelementptr i8, ptr %.32937, i64 -24
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !15
  %i.cdd = getelementptr i8, ptr %.32937, i64 -8  ; 2 uses
  %i.cde = load ptr, ptr %i.cdd, align 8, !tbaa !15
  %i.cdf = call fastcc ptr @new_scope_body(ptr noundef nonnull %0, ptr noundef %i.cdc, ptr noundef %i.cde, ptr noundef %i.ccz, ptr noundef %6) ; 2 uses
  store ptr %i.cdf, ptr %i.cdd, align 8, !tbaa !15
  %i.cdg = load ptr, ptr %5, align 8, !tbaa !15
  %i.cdh = getelementptr i8, ptr %i.cdg, i64 40
  store ptr %i.cdf, ptr %i.cdh, align 8, !tbaa !95
  call fastcc void @local_pop(ptr noundef nonnull %0)
  br label %fixpos.exit

bb.ro:                                            ; preds = %yy_reduce_print.exit
  %i.cdi = getelementptr i8, ptr %.32950, i64 -16
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef %i.cdi)
  br label %fixpos.exit

bb.rp:                                            ; preds = %yy_reduce_print.exit
  %i.cdj = getelementptr i8, ptr %.32937, i64 -32 ; 2 uses
  %i.cdk = load ptr, ptr %i.cdj, align 8, !tbaa !15
  call fastcc void @restore_defun(ptr noundef nonnull %0, ptr noundef %i.cdk)
  %i.cdl = load ptr, ptr %i.cdj, align 8, !tbaa !15
  %i.cdm = getelementptr i8, ptr %i.cdl, i64 32
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !94 ; 3 uses
  store ptr %i.cdn, ptr %5, align 8, !tbaa !15
  %i.cdo = getelementptr i8, ptr %i.cdn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdo, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !57
  %i.cdp = getelementptr i8, ptr %.32937, i64 -24
  %i.cdq = load ptr, ptr %i.cdp, align 8, !tbaa !15
  %i.cdr = getelementptr i8, ptr %.32937, i64 -8  ; 2 uses
  %i.cds = load ptr, ptr %i.cdr, align 8, !tbaa !15
  %i.cdt = call fastcc ptr @new_scope_body(ptr noundef nonnull %0, ptr noundef %i.cdq, ptr noundef %i.cds, ptr noundef %i.cdn, ptr noundef %6) ; 2 uses
  store ptr %i.cdt, ptr %i.cdr, align 8, !tbaa !15
  %i.cdu = load ptr, ptr %5, align 8, !tbaa !15
  %i.cdv = getelementptr i8, ptr %i.cdu, i64 48
  store ptr %i.cdt, ptr %i.cdv, align 8, !tbaa !97
  call fastcc void @local_pop(ptr noundef nonnull %0)
  br label %fixpos.exit

bb.rq:                                            ; preds = %yy_reduce_print.exit
  %i.cdw = call fastcc ptr @rb_node_break_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6, ptr noundef nonnull %.32950) ; 2 uses
  %i.cdx = call fastcc ptr @add_block_exit(ptr noundef nonnull %0, ptr noundef %i.cdw) ; 0 uses
  store ptr %i.cdw, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.rr:                                            ; preds = %yy_reduce_print.exit
  %i.cdy = call fastcc ptr @rb_node_next_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6, ptr noundef nonnull %.32950) ; 2 uses
  %i.cdz = call fastcc ptr @add_block_exit(ptr noundef nonnull %0, ptr noundef %i.cdy) ; 0 uses
  store ptr %i.cdy, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.rs:                                            ; preds = %yy_reduce_print.exit
  %i.cea = call fastcc ptr @rb_node_redo_new(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %.32950) ; 2 uses
  %i.ceb = call fastcc ptr @add_block_exit(ptr noundef nonnull %0, ptr noundef %i.cea) ; 0 uses
  store ptr %i.cea, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.rt:                                            ; preds = %yy_reduce_print.exit
  %i.cec = load i16, ptr %i.y, align 8            ; 2 uses
  %i.ced = and i16 %i.cec, 1
  %.not3094 = icmp eq i16 %i.ced, 0
  br i1 %.not3094, label %bb.ru, label %bb.rx

bb.ru:                                            ; preds = %bb.rt
  %i.cee = lshr i16 %i.cec, 8
  %i.cef = and i16 %i.cee, 3
  switch i16 %i.cef, label %default.unreachable4009 [
    i16 0, label %.sink.split4046
    i16 3, label %bb.rw
    i16 2, label %bb.rv
    i16 1, label %bb.rx
  ]

bb.rv:                                            ; preds = %bb.ru
  br label %.sink.split4046

bb.rw:                                            ; preds = %bb.ru
  br label %.sink.split4046

default.unreachable4009:                          ; preds = %bb.ru
  unreachable

.sink.split4046:                                  ; preds = %bb.ru, %bb.rw, %bb.rv
  %.str.26.sink = phi ptr [ @.str.28, %bb.rw ], [ @.str.27, %bb.rv ], [ @.str.26, %bb.ru ]
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.32950, ptr noundef %.str.26.sink)
  br label %bb.rx

bb.rx:                                            ; preds = %.sink.split4046, %bb.ru, %bb.rt
  %i.ceg = call fastcc ptr @rb_node_retry_new(ptr noundef nonnull %0, ptr noundef %6)
  store ptr %i.ceg, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.ry:                                            ; preds = %yy_reduce_print.exit
  %i.ceh = load ptr, ptr %.32937, align 8, !tbaa !15
  call fastcc void @value_expr(ptr noundef nonnull %0, ptr noundef %i.ceh)
  %i.cei = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.cei, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.rz:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %6)
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.sa:                                            ; preds = %yy_reduce_print.exit
  %i.cej = call fastcc i32 @looking_at_eol_p(ptr noundef nonnull %0)
  %.not3088 = icmp eq i32 %i.cej, 0
  br i1 %.not3088, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.cek = load ptr, ptr %i.az, align 8, !tbaa !86
  %i.cel = load i32, ptr %i.h, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cek, i32 noundef %i.cel, ptr noundef nonnull @.str.30) #31
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sa, %bb.sb
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %6)
  %i.cem = load ptr, ptr %i.ba, align 8, !tbaa !139 ; 3 uses
  %.not3089 = icmp eq ptr %i.cem, null
  br i1 %.not3089, label %bb.sj, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.cen = getelementptr i8, ptr %i.cem, i64 20   ; 2 uses
  %i.ceo = load i32, ptr %i.cen, align 4, !tbaa !140
  %.not3090 = icmp eq i32 %i.ceo, 0
  br i1 %.not3090, label %bb.sj, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cep = getelementptr i8, ptr %i.cem, i64 24
  %i.ceq = load ptr, ptr %i.cep, align 8, !tbaa !142 ; 3 uses
  %.not3091 = icmp eq ptr %i.ceq, null
  br i1 %.not3091, label %bb.sj, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.cer = load ptr, ptr %i.ceq, align 8, !tbaa !143
  %i.ces = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cer, ptr noundef nonnull dereferenceable(5) @.str.32) #35
  %.not3092 = icmp eq i32 %i.ces, 0
  br i1 %.not3092, label %bb.sg, label %bb.sj

bb.sg:                                            ; preds = %bb.sf
  %i.cet = load ptr, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %i.ceu = getelementptr i8, ptr %i.cet, i64 -2   ; 3 uses
  %i.cev = load ptr, ptr %i.l, align 8, !tbaa !50 ; 3 uses
  %i.cew = getelementptr i8, ptr %i.ceq, i64 12
  %i.cex = load i32, ptr %i.cew, align 4, !tbaa !144
  %i.cey = sext i32 %i.cex to i64
  %i.cez = getelementptr i8, ptr %i.cev, i64 %i.cey
  %i.cfa = getelementptr i8, ptr %i.cez, i64 4    ; 3 uses
  %i.cfb = icmp ult ptr %i.cfa, %i.ceu
  br i1 %i.cfb, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.sg
  %24 = ptrtoaddr ptr %i.cev to i64
  %25 = ptrtoaddr ptr %i.cet to i64
  %scevgep = getelementptr i8, ptr %i.cev, i64 -2
  %i.cfc = sub i64 %25, %24
  %scevgep3786 = getelementptr i8, ptr %scevgep, i64 %i.cfc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.sh
  %.029683751 = phi ptr [ %i.cfi, %bb.sh ], [ %i.cfa, %.lr.ph.preheader ] ; 3 uses
  %i.cfd = load i8, ptr %.029683751, align 1, !tbaa !15 ; 2 uses
  %i.cfe = sext i8 %i.cfd to i32
  %i.cff = icmp ne i8 %i.cfd, 32
  %i.cfg = add nsw i32 %i.cfe, -14
  %i.cfh = icmp ult i32 %i.cfg, -5
  %narrow.i.not = select i1 %i.cff, i1 %i.cfh, i1 false
  br i1 %narrow.i.not, label %.critedge, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph
  %i.cfi = getelementptr i8, ptr %.029683751, i64 1 ; 2 uses
  %i.cfj = icmp ult ptr %i.cfi, %i.ceu
  br i1 %i.cfj, label %.lr.ph, label %.critedge, !llvm.loop !145

.critedge:                                        ; preds = %.lr.ph, %bb.sh, %bb.sg
  %.02968.lcssa = phi ptr [ %i.cfa, %bb.sg ], [ %scevgep3786, %bb.sh ], [ %.029683751, %.lr.ph ]
  %i.cfk = icmp eq ptr %.02968.lcssa, %i.ceu
  br i1 %i.cfk, label %bb.si, label %bb.sj

bb.si:                                            ; preds = %.critedge
  store i32 0, ptr %i.cen, align 4, !tbaa !140
  br label %bb.sj

bb.sj:                                            ; preds = %.critedge, %bb.si, %bb.sf, %bb.se, %bb.sd, %bb.sc
  call fastcc void @push_end_expect_token_locations(ptr noundef %0, ptr noundef %.32950)
  br label %fixpos.exit

bb.sk:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %6)
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.sl:                                            ; preds = %yy_reduce_print.exit
  %i.cfl = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.cfl, ptr %5, align 8, !tbaa !15
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %6)
  %i.cfm = getelementptr i8, ptr %.32950, i64 -16
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef %i.cfm)
  br label %fixpos.exit

bb.sm:                                            ; preds = %yy_reduce_print.exit
  %i.cfn = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.cfn, ptr %5, align 8, !tbaa !15
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %6)
  %i.cfo = getelementptr i8, ptr %.32950, i64 -16
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef %i.cfo)
  br label %fixpos.exit

bb.sn:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %6)
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.so:                                            ; preds = %yy_reduce_print.exit
  %i.cfp = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.cfp, ptr %5, align 8, !tbaa !15
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %6)
  %i.cfq = getelementptr i8, ptr %.32950, i64 -16
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef %i.cfq)
  br label %fixpos.exit

bb.sp:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %6)
  %i.cfr = load i32, ptr %i.y, align 8            ; 2 uses
  store i32 %i.cfr, ptr %5, align 8
  %i.cfs = trunc i32 %i.cfr to i16
  %i.cft = and i16 %i.cfs, -769
  store i16 %i.cft, ptr %i.y, align 8
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.sq:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %6)
  %i.cfu = load i32, ptr %i.y, align 8            ; 2 uses
  store i32 %i.cfu, ptr %5, align 8
  %i.cfv = trunc i32 %i.cfu to i16
  %i.cfw = and i16 %i.cfv, -769
  store i16 %i.cfw, ptr %i.y, align 8
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.sr:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, ptr noundef nonnull %6)
  %i.cfx = call fastcc ptr @rb_node_def_temp_new(ptr noundef nonnull %0, ptr noundef %6)
  store ptr %i.cfx, ptr %5, align 8, !tbaa !15
  %i.cfy = load i16, ptr %i.y, align 8
  %i.cfz = or i16 %i.cfy, 4
  store i16 %i.cfz, ptr %i.y, align 8
  br label %fixpos.exit

bb.ss:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %6)
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.st:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @token_info_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %6)
  call fastcc void @push_end_expect_token_locations(ptr noundef nonnull %0, ptr noundef nonnull %.32950)
  br label %fixpos.exit

bb.su:                                            ; preds = %yy_reduce_print.exit
  %i.cga = load ptr, ptr %i.ba, align 8, !tbaa !139
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef %i.cga, i32 noundef 1, ptr noundef nonnull %6)
  %i.cgb = load i32, ptr %i.y, align 8            ; 2 uses
  store i32 %i.cgb, ptr %5, align 8
  %i.cgc = trunc i32 %i.cgb to i16
  %i.cgd = and i16 %i.cgc, -769
  %i.cge = or disjoint i16 %i.cgd, 256
  store i16 %i.cge, ptr %i.y, align 8
  br label %fixpos.exit

bb.sv:                                            ; preds = %yy_reduce_print.exit
  %i.cgf = load ptr, ptr %i.ba, align 8, !tbaa !139
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef %i.cgf, i32 noundef 1, ptr noundef nonnull %6)
  %i.cgg = load i32, ptr %i.y, align 8
  store i32 %i.cgg, ptr %5, align 8
  br label %fixpos.exit

bb.sw:                                            ; preds = %yy_reduce_print.exit
  %i.cgh = load ptr, ptr %i.ba, align 8, !tbaa !139
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef %i.cgh, i32 noundef 0, ptr noundef nonnull %6)
  br label %fixpos.exit

bb.sx:                                            ; preds = %yy_reduce_print.exit
  %i.cgi = load ptr, ptr %i.ba, align 8, !tbaa !139 ; 7 uses
  %.not3086 = icmp eq ptr %i.cgi, null
  br i1 %.not3086, label %.critedge3147, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.cgj = load ptr, ptr %i.cgi, align 8, !tbaa !143
  %i.cgk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cgj, ptr noundef nonnull dereferenceable(5) @.str.36) #35
  %i.cgl = icmp ne i32 %i.cgk, 0                  ; 2 uses
  %i.cgm = zext i1 %i.cgl to i32
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.cgi, i32 noundef %i.cgm, ptr noundef nonnull %6)
  br i1 %i.cgl, label %bb.sz, label %fixpos.exit

bb.sz:                                            ; preds = %bb.sy
  %i.cgn = load i32, ptr %i.bb, align 4, !tbaa !54 ; 2 uses
  %i.cgo = icmp sgt i32 %i.cgn, 0
  br i1 %i.cgo, label %.lr.ph.i3404.preheader, label %token_info_setup.exit.thread

.lr.ph.i3404.preheader:                           ; preds = %bb.sz
  %i.cgp = load ptr, ptr %i.l, align 8, !tbaa !50
  br label %.lr.ph.i3404

.lr.ph.i3404:                                     ; preds = %.lr.ph.i3404.preheader, %bb.tb
  %.024.i = phi i32 [ %i.cgy, %bb.tb ], [ 0, %.lr.ph.i3404.preheader ]
  %.01423.i = phi i32 [ %.1.i, %bb.tb ], [ 0, %.lr.ph.i3404.preheader ] ; 2 uses
  %.01522.i = phi i32 [ %i.cgx, %bb.tb ], [ 1, %.lr.ph.i3404.preheader ] ; 2 uses
  %.01721.i = phi ptr [ %i.cgz, %bb.tb ], [ %i.cgp, %.lr.ph.i3404.preheader ] ; 2 uses
  %i.cgq = load i8, ptr %.01721.i, align 1, !tbaa !15 ; 2 uses
  %i.cgr = icmp eq i8 %i.cgq, 9
  br i1 %i.cgr, label %.thread.i, label %bb.ta

.thread.i:                                        ; preds = %.lr.ph.i3404
  %i.cgs = add i32 %.01522.i, -1
  %i.cgt = sdiv i32 %i.cgs, 8
  %i.cgu = shl nsw i32 %i.cgt, 3
  %i.cgv = add i32 %i.cgu, 9
  br label %bb.tb

bb.ta:                                            ; preds = %.lr.ph.i3404
  %i.cgw = add i32 %.01522.i, 1
  %cond.i = icmp eq i8 %i.cgq, 32
  %spec.select.i = select i1 %cond.i, i32 %.01423.i, i32 1
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %.thread.i
  %i.cgx = phi i32 [ %i.cgw, %bb.ta ], [ %i.cgv, %.thread.i ] ; 2 uses
  %.1.i = phi i32 [ %spec.select.i, %bb.ta ], [ %.01423.i, %.thread.i ] ; 2 uses
  %i.cgy = add nuw nsw i32 %.024.i, 1             ; 2 uses
  %i.cgz = getelementptr i8, ptr %.01721.i, i64 1
  %exitcond.not.i3405 = icmp eq i32 %i.cgy, %i.cgn
  br i1 %exitcond.not.i3405, label %token_info_setup.exit, label %.lr.ph.i3404, !llvm.loop !146

token_info_setup.exit:                            ; preds = %bb.tb
  %.not3087 = icmp eq i32 %.1.i, 0
  br i1 %.not3087, label %token_info_setup.exit.thread, label %fixpos.exit

token_info_setup.exit.thread:                     ; preds = %bb.sz, %token_info_setup.exit
  %.015.lcssa.i3646 = phi i32 [ %i.cgx, %token_info_setup.exit ], [ 1, %bb.sz ]
  %i.cha = load i64, ptr %6, align 8
  store ptr @.str.32, ptr %i.cgi, align 8, !tbaa !65
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cgi, i64 8
  store i64 %i.cha, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cgi, i64 16
  store i32 %.015.lcssa.i3646, ptr %.sroa.53590.0..sroa_idx, align 8, !tbaa !7
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cgi, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !7
  br label %fixpos.exit

.critedge3147:                                    ; preds = %bb.sx
  call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %6)
  br label %fixpos.exit
end_hunk_0
begin_hunk_1_@yysyntax_error:bb.a
bb.u:                                             ; preds = %.thread
  %i.bt = shl i64 %.051.lcssa, 1                  ; 2 uses
  %.not58 = icmp sgt i64 %.051.lcssa, %i.bt
  %spec.store.select = select i1 %.not58, i64 9223372036854775807, i64 %i.bt
  store i64 %spec.store.select, ptr %0, align 8
  br label %yy_syntax_error_arguments.exit.thread8

.preheader:                                       ; preds = %.thread, %bb.x
  %.149 = phi ptr [ %i.ci, %bb.x ], [ %.048, %.thread ] ; 3 uses
  %.041 = phi ptr [ %i.ch, %bb.x ], [ %.0.val, %.thread ] ; 3 uses
  %.0 = phi i32 [ %.1, %bb.x ], [ 0, %.thread ]   ; 5 uses
  %i.bu = load i8, ptr %.149, align 1, !tbaa !15  ; 2 uses
  store i8 %i.bu, ptr %.041, align 1, !tbaa !15
  switch i8 %i.bu, label %bb.x [
    i8 0, label %yy_syntax_error_arguments.exit.thread8
    i8 37, label %bb.v
  ]

bb.v:                                             ; preds = %.preheader
  %i.bv = getelementptr i8, ptr %.149, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15
  %i.bx = icmp eq i8 %i.bw, 115
  %i.by = icmp slt i32 %.0, %.1.i5
  %or.cond = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %.0, 1
  %i.ca = sext i32 %.0 to i64
  %i.cb = getelementptr [4 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr @yytname, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !65
  %i.cg = tail call i64 @rb_yytnamerr(ptr poison, ptr noundef nonnull %.041, ptr noundef %i.cf)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %.preheader, %bb.w
  %.sink37 = phi i64 [ %i.cg, %bb.w ], [ 1, %.preheader ], [ 1, %bb.v ]
  %.sink = phi i64 [ 2, %bb.w ], [ 1, %.preheader ], [ 1, %bb.v ]
  %.1 = phi i32 [ %i.bz, %bb.w ], [ %.0, %.preheader ], [ %.0, %bb.v ]
  %i.ch = getelementptr i8, ptr %.041, i64 %.sink37
  %i.ci = getelementptr i8, ptr %.149, i64 %.sink
  br label %.preheader, !llvm.loop !476

yy_syntax_error_arguments.exit.thread8:           ; preds = %rb_yytnamerr.exit, %.preheader, %.critedge.i.i, %bb.u, %yy_syntax_error_arguments.exit
  %.3 = phi i32 [ %.138.i.i, %.critedge.i.i ], [ %i.ad, %yy_syntax_error_arguments.exit ], [ 0, %.preheader ], [ -1, %bb.u ], [ -2, %rb_yytnamerr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @yydestruct(ptr noundef %0, i32 noundef range(i32 -32768, 32768) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.589, ptr %0
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %spec.store.select)
  %i.d = icmp slt i32 %1, 162
  %i.e = select i1 %i.d, ptr @.str.85, ptr @.str.86
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr [8 x i8], ptr @yytname, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.e, ptr noundef %i.h)
  %i.i = load i32, ptr %3, align 4, !tbaa !51
  %i.j = getelementptr i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = getelementptr i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55
  %i.n = getelementptr i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.87, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o)
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.88)
  tail call fastcc void @yy_symbol_value_print(i32 noundef range(i32 -32768, 32768) %1, ptr noundef %2, ptr noundef nonnull %4)
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.89)
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  switch i32 %1, label %bb.f [
    i32 258, label %bb.d
    i32 259, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %switch = icmp ult ptr %i.p, inttoptr (i64 2 to ptr)
  br i1 %switch, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %switch22 = icmp ult ptr %i.q, inttoptr (i64 2 to ptr)
  br i1 %switch22, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.e ]
  tail call void @rb_st_free_table(ptr noundef nonnull %.sink) #31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_show_error_line(ptr nofree readnone captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 12 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 16
  %.val167 = load i64, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr i8, ptr %i.b, i64 %.val167 ; 5 uses
  %i.e = icmp ugt ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 -1       ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt ptr %i.f, %i.b
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.d, i64 -2       ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = icmp eq i8 %i.k, 13
  %spec.select = select i1 %i.l, ptr %i.j, ptr %i.f
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0132 = phi ptr [ %i.d, %bb.b ], [ %spec.select, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.c ] ; 10 uses
  %i.m = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  %i.o = icmp eq i32 %3, %i.n
  br i1 %i.o, label %bb.g, label %._crit_edge192

._crit_edge192:                                   ; preds = %bb.f
  %.pre193 = ptrtoint ptr %i.b to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %.0132 to i64
  %i.q = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp sgt i64 %i.r, %i.u
  %i.w = getelementptr i8, ptr %i.b, i64 %i.u
  %spec.select160 = select i1 %i.v, ptr %i.w, ptr %.0132
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge192, %bb.g
  %.pre-phi194 = phi i64 [ %.pre193, %._crit_edge192 ], [ %i.q, %bb.g ]
  %.0138 = phi ptr [ %.0132, %._crit_edge192 ], [ %spec.select160, %bb.g ] ; 17 uses
  %i.x = ptrtoint ptr %.0138 to i64               ; 6 uses
  %i.y = sub i64 %i.x, %.pre-phi194
  %i.z = icmp sgt i64 %i.y, 30
  %i.aa = getelementptr i8, ptr %.0138, i64 -30
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.b     ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %.0138
  br i1 %i.ac, label %.lr.ph208, label %.critedge

bb.i:                                             ; preds = %.lr.ph208
  %i.ad = icmp ult ptr %i.ab, %i.ae
  br i1 %i.ad, label %.lr.ph208, label %.critedge, !llvm.loop !477

.lr.ph208:                                        ; preds = %bb.h, %bb.i
  %.0127206 = phi ptr [ %i.ae, %bb.i ], [ %.0138, %bb.h ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.0127206, i64 -1 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %.not153 = icmp eq i8 %i.af, 10
  br i1 %.not153, label %..critedge_crit_edge209, label %bb.i, !llvm.loop !477

..critedge_crit_edge209:                          ; preds = %.lr.ph208
  br label %.critedge, !llvm.loop !477

.critedge:                                        ; preds = %bb.i, %..critedge_crit_edge209, %bb.h
  %.0127.lcssa = phi ptr [ %.0138, %bb.h ], [ %.0127206, %..critedge_crit_edge209 ], [ %i.ae, %bb.i ] ; 5 uses
  %i.ag = ptrtoint ptr %.0132 to i64
  %i.ah = sub i64 %i.ag, %i.x
  %i.ai = icmp sgt i64 %i.ah, 30
  %i.aj = getelementptr i8, ptr %.0138, i64 30
  %i.ak = select i1 %i.ai, ptr %i.aj, ptr %.0132  ; 3 uses
  %i.al = icmp ult ptr %.0138, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.critedge
  %5 = ptrtoaddr ptr %i.ak to i64
  %i.am = sub i64 %5, %i.x
  %scevgep = getelementptr i8, ptr %.0138, i64 %i.am
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.0130181 = phi ptr [ %i.ao, %bb.j ], [ %.0138, %.lr.ph.preheader ] ; 4 uses
  %i.an = load i8, ptr %.0130181, align 1, !tbaa !15
  switch i8 %i.an, label %bb.j [
    i8 10, label %.critedge2.loopexit
    i8 13, label %.critedge2.loopexit
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.ao = getelementptr i8, ptr %.0130181, i64 1  ; 2 uses
  %exitcond.not = icmp eq ptr %i.ao, %i.ak
  br i1 %exitcond.not, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !478

.critedge2.loopexit:                              ; preds = %.lr.ph, %.lr.ph, %bb.j
  %.0130.lcssa.ph = phi ptr [ %scevgep, %bb.j ], [ %.0130181, %.lr.ph ], [ %.0130181, %.lr.ph ] ; 2 uses
  %.pre = ptrtoint ptr %.0130.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %i.x, %.critedge ]
  %.0130.lcssa = phi ptr [ %.0130.lcssa.ph, %.critedge2.loopexit ], [ %.0138, %.critedge ] ; 4 uses
  %i.ap = ptrtoint ptr %.0127.lcssa to i64
  %i.aq = sub i64 %.pre-phi, %i.ap                ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 4
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.critedge2
  %i.as = icmp ugt ptr %.0127.lcssa, %i.b
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %4, i64 8
  %.val166 = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.au = tail call ptr @onigenc_get_prev_char_head(ptr noundef %.val166, ptr noundef %i.b, ptr noundef nonnull %.0127.lcssa, ptr noundef %.0138) #31 ; 2 uses
  %i.av = icmp ugt ptr %i.au, %i.b
  %spec.select161 = select i1 %i.av, ptr @.str.70, ptr @.str.22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0134 = phi ptr [ @.str.22, %bb.k ], [ %spec.select161, %bb.l ] ; 2 uses
  %.1128 = phi ptr [ %.0127.lcssa, %bb.k ], [ %i.au, %bb.l ] ; 2 uses
  %i.aw = icmp ult ptr %.0130.lcssa, %.0132
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %4, i64 8
  %.val165 = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.ay = tail call ptr @onigenc_get_prev_char_head(ptr noundef %.val165, ptr noundef %.0138, ptr noundef %.0130.lcssa, ptr noundef nonnull %.0132) #31 ; 2 uses
  %i.az = icmp ult ptr %i.ay, %.0132
  %spec.select162 = select i1 %i.az, ptr @.str.70, ptr @.str.22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.critedge2
  %.1135 = phi ptr [ @.str.22, %.critedge2 ], [ %.0134, %bb.n ], [ %.0134, %bb.m ] ; 3 uses
  %.0133 = phi ptr [ @.str.22, %.critedge2 ], [ %spec.select162, %bb.n ], [ @.str.22, %bb.m ] ; 2 uses
  %.1131 = phi ptr [ %.0130.lcssa, %.critedge2 ], [ %i.ay, %bb.n ], [ %.0130.lcssa, %bb.m ] ; 2 uses
  %.2129 = phi ptr [ %.0127.lcssa, %.critedge2 ], [ %.1128, %bb.n ], [ %.1128, %bb.m ] ; 13 uses
  %i.ba = load i32, ptr %2, align 4, !tbaa !51    ; 2 uses
  %i.bb = icmp eq i32 %3, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %2, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.be   ; 2 uses
  %i.bg = icmp ugt ptr %i.bf, %.0138
  %spec.select163 = select i1 %i.bg, ptr %.0138, ptr %i.bf
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0136 = phi ptr [ %i.b, %bb.o ], [ %spec.select163, %bb.p ] ; 3 uses
  %.0136211 = ptrtoaddr ptr %.0136 to i64
  %i.bh = icmp ult ptr %.0136, %.2129
  %spec.select164 = select i1 %i.bh, ptr %.2129, ptr %.0136 ; 4 uses
  %i.bi = icmp slt i64 %i.aq, 5
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !55
  %i.bk = icmp eq i32 %i.ba, %i.bj
  br i1 %i.bk, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bl = and i64 %1, -5
  %.not180 = icmp eq i64 %i.bl, 0
  br i1 %.not180, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = tail call i64 @rb_attr_get(i64 noundef %1, i64 noundef 3489) #31 ; 5 uses
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !16 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.bs = and i64 %i.br, 8192
  %.not.i.i = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  br i1 %.not.i.i, label %char_at_end.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15
  br label %char_at_end.exit

char_at_end.exit:                                 ; preds = %bb.u, %bb.v
  %i.bv = phi ptr [ %i.bu, %bb.v ], [ %i.bt, %bb.u ]
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bp
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %.not156 = icmp eq i8 %i.by, 10
  br i1 %.not156, label %.thread, label %bb.w

bb.w:                                             ; preds = %char_at_end.exit
  %i.bz = tail call i64 @rb_str_cat(i64 noundef %i.bm, ptr noundef nonnull @.str.7, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.s
  %i.ca = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.ca, align 8, !tbaa !25
  %i.cb = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.val) #31 ; 4 uses
  %.not157 = icmp eq i64 %1, 0
  br i1 %.not157, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cc = tail call i32 @rb_stderr_tty_p() #31
  %.not158 = icmp eq i32 %i.cc, 0
  br i1 %.not158, label %.thread, label %.thread176

.thread176:                                       ; preds = %bb.y
  %i.cd = ptrtoint ptr %spec.select164 to i64     ; 2 uses
  %i.ce = ptrtoint ptr %.2129 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i64 %i.x, %i.cd
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = ptrtoint ptr %.1131 to i64
  %i.ck = sub i64 %i.cj, %i.x
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.cb, ptr noundef nonnull @.str.71, ptr noundef nonnull %.1135, i32 noundef %i.cg, ptr noundef %.2129, i32 noundef %i.ci, ptr noundef %spec.select164, i32 noundef %i.cl, ptr noundef %.0138, ptr noundef nonnull %.0133) #31 ; 0 uses
  br label %bb.ab

.thread:                                          ; preds = %bb.t, %bb.w, %char_at_end.exit, %bb.y, %bb.x
  %.not157175 = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ false, %char_at_end.exit ], [ false, %bb.w ], [ false, %bb.t ]
  %.0126172 = phi i64 [ %i.cb, %bb.x ], [ %i.cb, %bb.y ], [ %i.bm, %char_at_end.exit ], [ %i.bm, %bb.w ], [ %i.bm, %bb.t ] ; 2 uses
  %i.cn = ptrtoint ptr %.1131 to i64
  %i.co = ptrtoint ptr %.2129 to i64              ; 4 uses
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult ptr %.0138, %.0132
  %i.cr = select i1 %i.cq, ptr %.0138, ptr %.0132 ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.ct = sub i64 %i.cs, %i.co
  %i.cu = shl i64 %i.ct, 32
  %sext = add i64 %i.cu, 8589934592
  %i.cv = ashr exact i64 %sext, 32
  %i.cw = alloca i8, i64 %i.cv, align 16          ; 8 uses
  %i.cx = icmp ult ptr %.2129, %spec.select164
  br i1 %i.cx, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.thread
  %i.cy = ptrtoaddr ptr %i.cw to i64
  %i.cz = call i64 @llvm.usub.sat.i64(i64 %.0136211, i64 %i.co) ; 7 uses
  %min.iters.check = icmp ult i64 %i.cz, 8
  %i.da = sub i64 %i.co, %i.cy
  %diff.check = icmp ugt i64 %i.da, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph188.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i64 %i.cz, 32
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cz, 24
  %n.vec = and i64 %i.cz, -32                     ; 5 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 %n.vec ; 2 uses
  %i.dc = getelementptr i8, ptr %.2129, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.2129, i64 %index ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep214, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep214, align 1, !tbaa !15
  %wide.load215 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !15
  %i.de = icmp eq <16 x i8> %wide.load, splat (i8 9)
  %i.df = icmp eq <16 x i8> %wide.load215, splat (i8 9)
  %i.dg = select <16 x i1> %i.de, <16 x i8> splat (i8 9), <16 x i8> splat (i8 32)
  %i.dh = select <16 x i1> %i.df, <16 x i8> splat (i8 9), <16 x i8> splat (i8 32)
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %i.dg, ptr %next.gep, align 16, !tbaa !15
  store <16 x i8> %i.dh, ptr %i.di, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph188.preheader, label %vec.epilog.ph, !prof !480

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec218 = and i64 %i.cz, -8                   ; 4 uses
  %i.dk = getelementptr i8, ptr %i.cw, i64 %n.vec218 ; 2 uses
  %i.dl = getelementptr i8, ptr %.2129, i64 %n.vec218 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index219 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next223, %vec.epilog.vector.body ] ; 3 uses
  %next.gep220.a = getelementptr i8, ptr %i.cw, i64 %index219
  %next.gep221 = getelementptr i8, ptr %.2129, i64 %index219
  %wide.load222 = load <8 x i8>, ptr %next.gep221, align 1, !tbaa !15
  %i.dm = icmp eq <8 x i8> %wide.load222, splat (i8 9)
  %i.dn = select <8 x i1> %i.dm, <8 x i8> splat (i8 9), <8 x i8> splat (i8 32)
  store <8 x i8> %i.dn, ptr %next.gep220.a, align 8, !tbaa !15
  %index.next223 = add nuw i64 %index219, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !481

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n224 = icmp eq i64 %i.cz, %n.vec218
  br i1 %cmp.n224, label %._crit_edge, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0187.ph = phi ptr [ %i.cw, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.3186.ph = phi ptr [ %.2129, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %.lr.ph188
  %.0187 = phi ptr [ %i.dt, %.lr.ph188 ], [ %.0187.ph, %.lr.ph188.preheader ] ; 2 uses
  %.3186 = phi ptr [ %i.dp, %.lr.ph188 ], [ %.3186.ph, %.lr.ph188.preheader ] ; 2 uses
  %i.dp = getelementptr i8, ptr %.3186, i64 1     ; 3 uses
  %i.dq = load i8, ptr %.3186, align 1, !tbaa !15
  %i.dr = icmp eq i8 %i.dq, 9
  %i.ds = select i1 %i.dr, i8 9, i8 32
  %i.dt = getelementptr i8, ptr %.0187, i64 1     ; 2 uses
  store i8 %i.ds, ptr %.0187, align 1, !tbaa !15
  %i.du = icmp ult ptr %i.dp, %spec.select164
  br i1 %i.du, label %.lr.ph188, label %._crit_edge, !llvm.loop !482

._crit_edge:                                      ; preds = %.lr.ph188, %middle.block, %vec.epilog.middle.block, %.thread
  %.3.lcssa = phi ptr [ %.2129, %.thread ], [ %i.dl, %vec.epilog.middle.block ], [ %i.dc, %middle.block ], [ %i.dp, %.lr.ph188 ]
  %.0.lcssa = phi ptr [ %i.cw, %.thread ], [ %i.dk, %vec.epilog.middle.block ], [ %i.db, %middle.block ], [ %i.dt, %.lr.ph188 ] ; 2 uses
  %i.dv = getelementptr i8, ptr %.0.lcssa, i64 1  ; 3 uses
  store i8 94, ptr %.0.lcssa, align 1, !tbaa !15
  %i.dw = getelementptr i8, ptr %.3.lcssa, i64 1  ; 2 uses
  %i.dx = icmp ugt ptr %i.cr, %i.dw
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.cs, %i.dy                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dv, i8 noundef 126, i64 noundef %i.dz, i1 noundef false) #31
  %i.ea = getelementptr i8, ptr %i.dv, i64 %i.dz
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z
  %.2 = phi ptr [ %i.ea, %bb.z ], [ %i.dv, %._crit_edge ]
  store i8 0, ptr %.2, align 1, !tbaa !15
  %i.eb = trunc i64 %i.cp to i32
  %i.ec = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.0126172, ptr noundef nonnull @.str.72, ptr noundef nonnull %.1135, i32 noundef %i.eb, ptr noundef %.2129, ptr noundef nonnull %.0133, ptr noundef nonnull %.1135, ptr noundef nonnull %i.cw) #31 ; 0 uses
  br i1 %.not157175, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread176, %bb.aa
  %.0126173179 = phi i64 [ %i.cb, %.thread176 ], [ %.0126172, %bb.aa ]
  call void @rb_write_error_str(i64 noundef %.0126173179) #31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.r, %bb.a
  ret void
}

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_stderr_tty_p() local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @rb_write_error_str(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_parser_compile(ptr noundef initializes((24, 40), (72, 96), (168, 176), (196, 216), (288, 296)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !483
  %i.c = getelementptr i8, ptr %0, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !484
  %i.d = getelementptr i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !11
  %i.e = icmp eq i64 %2, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 208
  store i64 4, ptr %i.f, align 8, !tbaa !427
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_str_to_interned_str(i64 noundef %2) #31
  %i.h = getelementptr i8, ptr %0, i64 208
  store i64 %i.g, ptr %i.h, align 8, !tbaa !427
  %i.i = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ @.str.591, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr i8, ptr %0, i64 200
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !86
  %i.k = add i32 %4, -1
  %i.l = getelementptr i8, ptr %0, i64 196
  store i32 %i.k, ptr %i.l, align 4, !tbaa !29
  %i.m = getelementptr i8, ptr %0, i64 168        ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !101
  %i.n = call ptr @rb_ast_new() #31               ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 288        ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !129
  %i.p = ptrtoint ptr %0 to i64
  %i.q = call i64 @rb_suppress_tracing(ptr noundef nonnull @yycompile0, i64 noundef %i.p) #31 ; 0 uses
  store ptr null, ptr %i.o, align 8, !tbaa !129
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !101
  %.not12.i = icmp eq ptr %i.r, null
  br i1 %.not12.i, label %yycompile.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call fastcc void @local_pop(ptr noundef nonnull %0)
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %yycompile.exit, label %.lr.ph.i, !llvm.loop !485

yycompile.exit:                                   ; preds = %.lr.ph.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_parser_trace_lex_state(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.73, i64 noundef 11) #31 ; 7 uses
  %i.c = tail call fastcc i64 @append_lex_state_name(i32 noundef %1, i64 noundef %i.b) ; 0 uses
  %i.d = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.74, i64 noundef 4) #31 ; 0 uses
  %i.e = tail call fastcc i64 @append_lex_state_name(i32 noundef %2, i64 noundef %i.b) ; 0 uses
  %i.f = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.b, ptr noundef nonnull @.str.75, i32 noundef %3) #31 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.i = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !192  ; 3 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !11
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_1
begin_hunk_2_@rb_parser_enc_cr_str_buf_cat:bb.a

rb_parser_str_buf_cat.exit:                       ; preds = %bb.aa, %bb.ac, %ruby_nonempty_memcpy.exit.i
  store ptr %.0, ptr %i.a, align 8, !tbaa !25
  store i32 %.063, ptr %1, align 8, !tbaa !24
  ret ptr %1

bb.ad:                                            ; preds = %bb.u
  %i.bw = getelementptr i8, ptr %.val, i64 8
  %.val78 = load ptr, ptr %i.bw, align 8, !tbaa !559
  %i.bx = getelementptr i8, ptr %4, i64 8
  %.val77 = load ptr, ptr %i.bx, align 8, !tbaa !559
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.762, ptr noundef %.val78, ptr noundef %.val77)
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -32768, 32768) i32 @parser_yylex(ptr noundef initializes((96, 104)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 360        ; 154 uses
  %i.f = load i32, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 21 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 9 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.hs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i8, ptr %i.h, align 8, !tbaa !561, !range !563, !noundef !463
  %.not854 = icmp eq i8 %.val, 0
  %i.i = getelementptr i8, ptr %0, i64 80         ; 71 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188  ; 7 uses
  %i.k = getelementptr i8, ptr %0, i64 96         ; 14 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  br i1 %.not854, label %bb.du, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.m = getelementptr i8, ptr %0, i64 216        ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !176  ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store ptr null, ptr %i.d, align 8, !tbaa !564
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !565
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr i8, ptr %i.h, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !489
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s     ; 4 uses
  %i.u = getelementptr i8, ptr %i.h, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !492  ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 13 uses
  %i.x = sub nsw i64 0, %i.w                      ; 3 uses
  %i.y = getelementptr i8, ptr %i.h, i64 33
  %i.z = load i8, ptr %i.y, align 1, !tbaa !491
  %i.aa = zext i8 %i.z to i32                     ; 6 uses
  %i.ab = and i32 %i.aa, 32                       ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 88        ; 18 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !426
  %.not.i.i = icmp ult ptr %i.j, %i.ad
  %i.ae = and i32 %i.f, 8
  %.not13.i.i = icmp eq i32 %i.ae, 0
  %or.cond1236 = select i1 %.not.i.i, i1 %.not13.i.i, i1 false, !prof !566
  br i1 %or.cond1236, label %bb.d, label %.critedge.i.i, !prof !566

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !528
  %i.ah = icmp ugt ptr %i.ag, inttoptr (i64 1 to ptr)
  br i1 %i.ah, label %.critedge.i.i, label %bb.e, !prof !205

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %i.ai = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not14.i.i, label %.critedge._crit_edge.i.i, label %nextc0.exit.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i.i, %bb.d
  %i.aj = phi ptr [ %.pre.i.i, %.critedge._crit_edge.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 1      ; 6 uses
  store ptr %i.ak, ptr %i.i, align 8, !tbaa !188
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !15  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = icmp eq i8 %i.al, 13
  br i1 %i.an, label %bb.f, label %bb.k, !prof !205

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !426
  %.not.i.i.i = icmp ult ptr %i.ak, %i.ao
  br i1 %.not.i.i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.aq = icmp eq i8 %i.ap, 10
  br i1 %i.aq, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.aj, i64 2      ; 2 uses
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !188
  br label %bb.k

nextc0.exit.i:                                    ; preds = %.critedge.i251.i, %bb.co, %rb_parser_string_free.exit.i, %.critedge.i.i
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !178 ; 6 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !178
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !565 ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 56
  store ptr %i.au, ptr %i.av, align 8, !tbaa !189
  %i.aw = getelementptr i8, ptr %i.au, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 72
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !50
  %i.az = getelementptr i8, ptr %i.au, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bb = getelementptr i8, ptr %i.ax, i64 %i.ba
  store ptr %i.bb, ptr %i.ac, align 8, !tbaa !426
  %i.bc = getelementptr i8, ptr %i.as, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !489
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.as, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !492
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %i.be, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.as, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !490
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 %i.bl
  store ptr %i.bm, ptr %i.i, align 8, !tbaa !188
  %i.bn = sub nsw i64 0, %i.bl
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !49
  %i.bp = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = getelementptr i8, ptr %0, i64 144
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !543
  %i.bs = getelementptr i8, ptr %i.as, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !487
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !29
  %i.bu = load i32, ptr %i.e, align 8             ; 2 uses
  %i.bv = and i32 %i.bu, 8
  %.not.i173.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i173.i, label %heredoc_restore.exit.i, label %bb.i

bb.i:                                             ; preds = %nextc0.exit.i
  %i.bw = getelementptr i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.bw, align 8, !tbaa !528
  br label %heredoc_restore.exit.i

heredoc_restore.exit.i:                           ; preds = %bb.i, %nextc0.exit.i
  %i.bx = and i32 %i.bu, -9
  store i32 %i.bx, ptr %i.e, align 8
  tail call void @ruby_xfree(ptr noundef nonnull %i.as) #31
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.793, i32 noundef %i.v, ptr noundef %i.t)
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !188
  store ptr %i.by, ptr %i.k, align 8, !tbaa !49
  %i.bz = load i32, ptr %i.e, align 8
  %i.ca = and i32 %i.bz, 32
  %.not.i174.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i174.i, label %parser_set_lex_state.exit.i, label %bb.j

bb.j:                                             ; preds = %heredoc_restore.exit.i
  %i.cb = getelementptr i8, ptr %0, i64 104
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !67
  %i.cd = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef 2, i32 noundef 9081) ; 0 uses
  br label %parser_set_lex_state.exit.i

parser_set_lex_state.exit.i:                      ; preds = %bb.j, %heredoc_restore.exit.i
  %i.ce = getelementptr i8, ptr %0, i64 104
  store i32 2, ptr %i.ce, align 8, !tbaa !67
  br label %here_document.exit

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.cf = phi ptr [ %i.ak, %bb.g ], [ %i.ar, %bb.h ], [ %i.ak, %bb.f ], [ %i.ak, %bb.e ]
  %.011.i.ph.i = phi i32 [ 13, %bb.g ], [ 10, %bb.h ], [ 13, %bb.f ], [ %i.am, %bb.e ]
  %i.cg = getelementptr i8, ptr %0, i64 72        ; 8 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 8 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = icmp eq ptr %i.cf, %i.ci                ; 3 uses
  br i1 %i.cj, label %bb.l, label %whole_match_p.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !180
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ck, align 8, !tbaa !180
  br label %whole_match_p.exit.thread.i

bb.n:                                             ; preds = %bb.l
  %.val172.i = load ptr, ptr %i.ac, align 8, !tbaa !426 ; 6 uses
  %i.cn = ptrtoint ptr %.val172.i to i64
  %i.co = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp slt i64 %i.cp, %i.w
  br i1 %i.cq, label %whole_match_p.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = icmp ugt ptr %.val172.i, %i.ch
  br i1 %i.cr, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr i8, ptr %.val172.i, i64 -1 ; 4 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  %i.cu = icmp eq i8 %i.ct, 10
  br i1 %i.cu, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cv = icmp ugt ptr %i.cs, %i.ch
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr i8, ptr %.val172.i, i64 -2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = icmp eq i8 %i.cx, 13
  %spec.select.i.i = select i1 %i.cy, ptr %i.cw, ptr %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.cs, %bb.q ], [ %spec.select.i.i, %bb.r ] ; 2 uses
  %i.cz = ptrtoint ptr %.0.i.i to i64
  %i.da = sub i64 %i.cz, %i.co
  %i.db = icmp slt i64 %i.da, %i.w
  br i1 %i.db, label %whole_match_p.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.o
  %.1.i.i = phi ptr [ %.0.i.i, %bb.s ], [ %.val172.i, %bb.p ], [ %.val172.i, %bb.o ] ; 2 uses
  %.16.i.i = ptrtoaddr ptr %.1.i.i to i64
  %i.dc = getelementptr i8, ptr %.1.i.i, i64 %i.x ; 3 uses
  %i.dd = tail call i32 @strncmp(ptr noundef readonly %i.t, ptr noundef %i.dc, i64 noundef range(i64 0, 4294967296) %i.w) #35
  %.not.i175.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i175.i, label %bb.u, label %whole_match_p.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %.not35.i.i = icmp ne i32 %i.ab, 0
  %i.de = icmp ult ptr %i.ch, %i.dc
  %or.cond.i.i = and i1 %.not35.i.i, %i.de
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %whole_match_p.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.df = add i64 %i.co, %i.w
  %i.dg = sub i64 %.16.i.i, %i.df
  %scevgep.i.i = getelementptr i8, ptr %i.ch, i64 %i.dg ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.preheader.i.i
  %.0263.i.i = phi ptr [ %i.dm, %bb.v ], [ %i.ch, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dh = load i8, ptr %.0263.i.i, align 1, !tbaa !15 ; 2 uses
  %i.di = sext i8 %i.dh to i32
  %i.dj = icmp ne i8 %i.dh, 32
  %i.dk = add nsw i32 %i.di, -14
  %i.dl = icmp ult i32 %i.dk, -5
  %narrow.i.not.i.i = select i1 %i.dj, i1 %i.dl, i1 false
  br i1 %narrow.i.not.i.i, label %whole_match_p.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dm = getelementptr i8, ptr %.0263.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.dm, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %whole_match_p.exit.i, label %.lr.ph.i.i, !llvm.loop !567

whole_match_p.exit.i:                             ; preds = %bb.v, %.lr.ph.i.i, %bb.u
  %.127.i.i = phi ptr [ %i.ch, %bb.u ], [ %.0263.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.v ]
  %.not.i = icmp eq ptr %.127.i.i, %i.dc
  br i1 %.not.i, label %bb.w, label %whole_match_p.exit.thread.i

bb.w:                                             ; preds = %whole_match_p.exit.i
  tail call fastcc void @parser_dispatch_heredoc_end(ptr noundef %0, i32 noundef 9096)
  %.pre.i = load i32, ptr %i.e, align 8           ; 2 uses
  %.pre334.i = and i32 %.pre.i, 8
  %i.dn = icmp eq i32 %.pre334.i, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.co, %bb.w
  %.pre-phi.i = phi i1 [ true, %bb.co ], [ %i.dn, %bb.w ]
  %i.do = phi i32 [ %i.mv, %bb.co ], [ %.pre.i, %bb.w ]
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !178 ; 6 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !178
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !565 ; 3 uses
  %i.ds = getelementptr i8, ptr %0, i64 56
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !189
  %i.dt = getelementptr i8, ptr %i.dr, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !18 ; 3 uses
  store ptr %i.du, ptr %i.cg, align 8, !tbaa !50
  %i.dv = getelementptr i8, ptr %i.dr, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !23
  %i.dx = getelementptr i8, ptr %i.du, i64 %i.dw
  store ptr %i.dx, ptr %i.ac, align 8, !tbaa !426
  %i.dy = getelementptr i8, ptr %i.dp, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !489
  %i.ea = getelementptr i8, ptr %i.du, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dp, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !492
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.ea, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.dp, i64 32
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !490
  %i.eh = zext i8 %i.eg to i64                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ee, i64 %i.eh
  store ptr %i.ei, ptr %i.i, align 8, !tbaa !188
  %i.ej = sub nsw i64 0, %i.eh
  %i.ek = getelementptr i8, ptr %i.ea, i64 %i.ej
  store ptr %i.ek, ptr %i.k, align 8, !tbaa !49
  %i.el = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !29
  %i.en = getelementptr i8, ptr %0, i64 144
  store i32 %i.em, ptr %i.en, align 8, !tbaa !543
  %i.eo = getelementptr i8, ptr %i.dp, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !487
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !29
  br i1 %.pre-phi.i, label %heredoc_restore.exit178.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.eq, align 8, !tbaa !528
  br label %heredoc_restore.exit178.i

heredoc_restore.exit178.i:                        ; preds = %bb.y, %bb.x
  %i.er = and i32 %i.do, -9
  store i32 %i.er, ptr %i.e, align 8
  tail call void @ruby_xfree(ptr noundef nonnull %i.dp) #31
  %i.es = load ptr, ptr %i.i, align 8, !tbaa !188
  store ptr %i.es, ptr %i.k, align 8, !tbaa !49
  %i.et = load i32, ptr %i.e, align 8
  %i.eu = and i32 %i.et, 32
  %.not.i179.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i179.i, label %parser_set_lex_state.exit180.i, label %bb.z

bb.z:                                             ; preds = %heredoc_restore.exit178.i
  %i.ev = getelementptr i8, ptr %0, i64 104
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !67
  %i.ex = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ew, i32 noundef 2, i32 noundef 9100) ; 0 uses
  br label %parser_set_lex_state.exit180.i

parser_set_lex_state.exit180.i:                   ; preds = %bb.z, %heredoc_restore.exit178.i
  %i.ey = getelementptr i8, ptr %0, i64 104
  store i32 2, ptr %i.ey, align 8, !tbaa !67
  br label %here_document.exit

whole_match_p.exit.thread.i:                      ; preds = %whole_match_p.exit.i, %bb.t, %bb.s, %bb.n, %bb.m, %bb.k
  %i.ez = and i32 %i.aa, 2
  %.not155.i = icmp eq i32 %i.ez, 0
  br i1 %.not155.i, label %.preheader303.i, label %bb.bj

.preheader303.i:                                  ; preds = %whole_match_p.exit.thread.i
  %i.fa = getelementptr i8, ptr %0, i64 56
  %i.fb = getelementptr i8, ptr %0, i64 148       ; 3 uses
  %i.fc = getelementptr i8, ptr %0, i64 152       ; 3 uses
  %.not35.i210.i = icmp ne i32 %i.ab, 0
  %.pre331.i = load ptr, ptr %i.ac, align 8, !tbaa !426
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader303.i
  %i.fd = phi ptr [ %.pre331.i, %.preheader303.i ], [ %.val170.pre.i, %.backedge.i.backedge ] ; 8 uses
  %.0142.i = phi ptr [ null, %.preheader303.i ], [ %.1143.i, %.backedge.i.backedge ] ; 7 uses
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !189
  %i.ff = getelementptr i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !18 ; 12 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 3 uses
  %i.fi = icmp ugt ptr %i.fd, %i.fg
  br i1 %i.fi, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.backedge.i
  %i.fj = getelementptr i8, ptr %i.fd, i64 -1     ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  switch i8 %i.fk, label %bb.ae [
    i8 10, label %bb.ab
    i8 13, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fl = icmp eq ptr %i.fj, %i.fg
  br i1 %i.fl, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr i8, ptr %i.fd, i64 -2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !15
  %.not156.i = icmp eq i8 %i.fn, 13
  br i1 %.not156.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.0145.i = phi ptr [ %i.fj, %bb.ac ], [ %i.fd, %bb.aa ]
  %i.fo = getelementptr i8, ptr %.0145.i, i64 -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.backedge.i
  %.1146.i = phi ptr [ %i.fd, %bb.aa ], [ %i.fd, %.backedge.i ], [ %i.fo, %bb.ad ], [ %i.fd, %bb.ac ], [ %i.fd, %bb.ab ] ; 5 uses
  %.1146330.i = ptrtoint ptr %.1146.i to i64      ; 2 uses
  %i.fp = load i32, ptr %i.fb, align 4, !tbaa !177 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.preheader.i, label %bb.am

.preheader.i:                                     ; preds = %bb.ae
  %i.fr = icmp ult ptr %i.fg, %.1146.i
  br i1 %i.fr, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i32, ptr %i.fc, align 8, !tbaa !180
  %i.fs = sub i64 %.1146330.i, %i.fh
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %.lr.ph.i
  %.sink.i318.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.sink.i.i, %bb.al ] ; 5 uses
  %.0138317.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gb, %bb.al ] ; 2 uses
  %i.ft = icmp eq i32 %.sink.i318.i, -1
  br i1 %i.ft, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr i8, ptr %i.fg, i64 %.0138317.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !15
  switch i8 %i.fv, label %bb.aj [
    i8 32, label %bb.ah
    i8 9, label %bb.ai
    i8 10, label %.critedge.i
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fw = add nuw i32 %.sink.i318.i, 1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.fx = sdiv i32 %.sink.i318.i, 8
  %i.fy = shl nsw i32 %i.fx, 3
  %i.fz = add i32 %i.fy, 8
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.ga = icmp sgt i32 %i.fp, %.sink.i318.i
  br i1 %i.ga, label %bb.ak, label %.critedge.i

bb.ak:                                            ; preds = %bb.aj
  store i32 %.sink.i318.i, ptr %i.fb, align 4, !tbaa !177
  br label %.critedge.i

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.sink.i.i = phi i32 [ %i.fw, %bb.ah ], [ %i.fz, %bb.ai ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.fc, align 8, !tbaa !180
  %i.gb = add i64 %.0138317.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gb, %i.fs
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.af, !llvm.loop !568

.critedge.i:                                      ; preds = %bb.al, %bb.ag, %bb.af, %bb.ak, %bb.aj, %.preheader.i
  store i32 0, ptr %i.fc, align 8, !tbaa !180
  br label %bb.am

bb.am:                                            ; preds = %.critedge.i, %bb.ae
  %.not158.i = icmp eq ptr %.0142.i, null
  %i.gc = sub i64 %.1146330.i, %i.fh              ; 9 uses
  br i1 %.not158.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.0142.i, align 8, !tbaa !24
  %i.gd = icmp eq ptr %.1146.i, %i.fg
  br i1 %i.gd, label %rb_parser_str_buf_cat.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ge = getelementptr i8, ptr %.0142.i, i64 16  ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !23 ; 4 uses
  %i.gg = sub i64 9223372036854775807, %i.gc
  %i.gh = icmp sgt i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.ap, label %ruby_nonempty_memcpy.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.747)
  br label %rb_parser_str_buf_cat.exit.i

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %bb.ao
  %i.gi = getelementptr i8, ptr %.0142.i, i64 24  ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !18 ; 4 uses
  %.not.i182.i = icmp ult ptr %i.fg, %i.gj
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gf
  %.not40.i.i = icmp ugt ptr %i.fg, %i.gk
  %or.cond.i183.i = or i1 %.not.i182.i, %.not40.i.i
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.fh, %i.gl
  %.034.i.i = select i1 %or.cond.i183.i, i64 -1, i64 %i.gm ; 2 uses
  %i.gn = add i64 %i.gf, %i.gc                    ; 4 uses
  %i.go = add i64 %i.gn, 1
  %i.gp = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.gj, i64 noundef %i.go, i64 noundef 1) #38 ; 3 uses
  store ptr %i.gp, ptr %i.gi, align 8, !tbaa !18
  store i64 %i.gn, ptr %i.ge, align 8, !tbaa !23
  %.not41.i.i = icmp eq i64 %.034.i.i, -1
  %i.gq = getelementptr i8, ptr %i.gp, i64 %.034.i.i
  %spec.select.i184.i = select i1 %.not41.i.i, ptr %i.fg, ptr %i.gq
  %i.gr = getelementptr i8, ptr %i.gp, i64 %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gr, ptr noundef nonnull readonly align 1 %spec.select.i184.i, i64 noundef range(i64 1, 0) %i.gc, i1 noundef false) #31
  store i64 %i.gn, ptr %i.ge, align 8, !tbaa !23
  %i.gs = load ptr, ptr %i.gi, align 8, !tbaa !18
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gn
  store i8 0, ptr %i.gt, align 1, !tbaa !15
  br label %rb_parser_str_buf_cat.exit.i

bb.aq:                                            ; preds = %bb.am
  %i.gu = icmp slt i64 %i.gc, 0
  br i1 %i.gu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.81, i64 noundef %i.gc) #32
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.gv = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.gw = add nuw i64 %i.gc, 1
  %i.gx = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.gw, i64 noundef 1) #33 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !18
  %.not.i.i186.i = icmp eq ptr %i.fg, null
  %.not.i.i.i.i = icmp eq ptr %.1146.i, %i.fg
  %or.cond.i.i.i = or i1 %.not.i.i186.i, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %rb_parser_encoding_string_new.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gx, ptr noundef nonnull readonly align 1 %i.fg, i64 noundef range(i64 1, 0) %i.gc, i1 noundef false) #31
  br label %rb_parser_encoding_string_new.exit.i

rb_parser_encoding_string_new.exit.i:             ; preds = %bb.at, %bb.as
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store i64 %i.gc, ptr %i.gz, align 8, !tbaa !23
  %i.ha = getelementptr i8, ptr %i.gx, i64 %i.gc
  store i8 0, ptr %i.ha, align 1, !tbaa !15
  store i32 0, ptr %i.gv, align 8, !tbaa !24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.n, ptr %i.hb, align 8, !tbaa !25
  br label %rb_parser_str_buf_cat.exit.i

rb_parser_str_buf_cat.exit.i:                     ; preds = %rb_parser_encoding_string_new.exit.i, %ruby_nonempty_memcpy.exit.i.i, %bb.ap, %bb.an
  %.1143.i = phi ptr [ %i.gv, %rb_parser_encoding_string_new.exit.i ], [ %.0142.i, %bb.an ], [ %.0142.i, %bb.ap ], [ %.0142.i, %ruby_nonempty_memcpy.exit.i.i ] ; 8 uses
  %i.hc = load ptr, ptr %i.ac, align 8, !tbaa !426
  %.not159.i = icmp ult ptr %.1146.i, %i.hc
  br i1 %.not159.i, label %bb.au, label %rb_parser_str_buf_cat.exit195.i

bb.au:                                            ; preds = %rb_parser_str_buf_cat.exit.i
  store i32 0, ptr %.1143.i, align 8, !tbaa !24
  %i.hd = getelementptr i8, ptr %.1143.i, i64 16  ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !23 ; 5 uses
  %i.hf = icmp eq i64 %i.he, 9223372036854775807
  br i1 %i.hf, label %bb.av, label %ruby_nonempty_memcpy.exit.i187.i

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.747)
  br label %rb_parser_str_buf_cat.exit195.i

ruby_nonempty_memcpy.exit.i187.i:                 ; preds = %bb.au
  %i.hg = getelementptr i8, ptr %.1143.i, i64 24  ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !18 ; 4 uses
  %.not.i188.i = icmp ugt ptr %i.hh, @.str.7
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.he
  %.not40.i189.i = icmp ult ptr %i.hi, @.str.7
  %or.cond.i190.i = or i1 %.not.i188.i, %.not40.i189.i
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 ptrtoint (ptr @.str.7 to i64), %i.hj
  %.034.i191.i = select i1 %or.cond.i190.i, i64 -1, i64 %i.hk ; 2 uses
  %i.hl = add nsw i64 %i.he, 1                    ; 3 uses
  %i.hm = add i64 %i.he, 2
  %i.hn = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hh, i64 noundef %i.hm, i64 noundef 1) #38 ; 3 uses
  store ptr %i.hn, ptr %i.hg, align 8, !tbaa !18
  store i64 %i.hl, ptr %i.hd, align 8, !tbaa !23
  %.not41.i192.i = icmp eq i64 %.034.i191.i, -1
  %i.ho = getelementptr i8, ptr %i.hn, i64 %.034.i191.i
  %spec.select.i193.i = select i1 %.not41.i192.i, ptr @.str.7, ptr %i.ho
  %i.hp = getelementptr i8, ptr %i.hn, i64 %i.he
  %i.hq = load i8, ptr %spec.select.i193.i, align 1
  store i8 %i.hq, ptr %i.hp, align 1
  store i64 %i.hl, ptr %i.hd, align 8, !tbaa !23
  %i.hr = load ptr, ptr %i.hg, align 8, !tbaa !18
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hl
  store i8 0, ptr %i.hs, align 1, !tbaa !15
  br label %rb_parser_str_buf_cat.exit195.i

rb_parser_str_buf_cat.exit195.i:                  ; preds = %ruby_nonempty_memcpy.exit.i187.i, %bb.av, %rb_parser_str_buf_cat.exit.i
  %i.ht = load ptr, ptr %i.ac, align 8, !tbaa !426 ; 2 uses
  store ptr %i.ht, ptr %i.i, align 8, !tbaa !188
  %i.hu = load i32, ptr %i.fb, align 4, !tbaa !177
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.loopexit.i, label %.critedge.i197.i

.critedge.i197.i:                                 ; preds = %rb_parser_str_buf_cat.exit195.i
  %i.hw = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i198.i = icmp eq i32 %i.hw, 0
  br i1 %.not14.i198.i, label %bb.aw, label %rb_parser_string_free.exit.i

bb.aw:                                            ; preds = %.critedge.i197.i
  %.pre.i201.i = load ptr, ptr %i.i, align 8, !tbaa !188 ; 3 uses
  %i.hx = getelementptr i8, ptr %.pre.i201.i, i64 1 ; 3 uses
  store ptr %i.hx, ptr %i.i, align 8, !tbaa !188
  %i.hy = load i8, ptr %.pre.i201.i, align 1, !tbaa !15
  %i.hz = icmp eq i8 %i.hy, 13
  %.val170.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !426 ; 8 uses
  br i1 %i.hz, label %bb.ax, label %bb.ba, !prof !205

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i202.i = icmp ult ptr %i.hx, %.val170.pre.i
  br i1 %.not.i.i202.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ia = load i8, ptr %i.hx, align 1, !tbaa !15
  %i.ib = icmp eq i8 %i.ia, 10
  br i1 %i.ib, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ic = getelementptr i8, ptr %.pre.i201.i, i64 2
  store ptr %i.ic, ptr %i.i, align 8, !tbaa !188
  br label %bb.ba

rb_parser_string_free.exit.i:                     ; preds = %.critedge.i197.i
  %i.id = getelementptr i8, ptr %.1143.i, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !18
  tail call void @ruby_xfree(ptr noundef %i.ie) #31
  tail call void @ruby_xfree(ptr noundef nonnull %.1143.i) #31
  br label %nextc0.exit.i

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.val169.i = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 7 uses
  %i.if = ptrtoint ptr %.val170.pre.i to i64
  %i.ig = ptrtoint ptr %.val169.i to i64          ; 3 uses
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = icmp slt i64 %i.ih, %i.w
  br i1 %i.ii, label %.backedge.i.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = icmp ugt ptr %.val170.pre.i, %.val169.i
  br i1 %i.ij, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ik = getelementptr i8, ptr %.val170.pre.i, i64 -1 ; 4 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !15
  %i.im = icmp eq i8 %i.il, 10
  br i1 %i.im, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.in = icmp ugt ptr %i.ik, %.val169.i
  br i1 %i.in, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.io = getelementptr i8, ptr %.val170.pre.i, i64 -2 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !15
  %i.iq = icmp eq i8 %i.ip, 13
  %spec.select.i221.i = select i1 %i.iq, ptr %i.io, ptr %i.ik
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0.i220.i = phi ptr [ %i.ik, %bb.bd ], [ %spec.select.i221.i, %bb.be ] ; 2 uses
  %i.ir = ptrtoint ptr %.0.i220.i to i64
  %i.is = sub i64 %i.ir, %i.ig
  %i.it = icmp slt i64 %i.is, %i.w
  br i1 %i.it, label %.backedge.i.backedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc, %bb.bb
  %.1.i206.i = phi ptr [ %.0.i220.i, %bb.bf ], [ %.val170.pre.i, %bb.bc ], [ %.val170.pre.i, %bb.bb ] ; 2 uses
  %.16.i207.i = ptrtoaddr ptr %.1.i206.i to i64
  %i.iu = getelementptr i8, ptr %.1.i206.i, i64 %i.x ; 3 uses
  %i.iv = tail call i32 @strncmp(ptr noundef readonly %i.t, ptr noundef %i.iu, i64 noundef range(i64 0, 4294967296) %i.w) #35
  %.not.i208.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i208.i, label %bb.bh, label %.backedge.i.backedge

bb.bh:                                            ; preds = %bb.bg
  %i.iw = icmp ult ptr %.val169.i, %i.iu
  %or.cond.i211.i = and i1 %.not35.i210.i, %i.iw
  br i1 %or.cond.i211.i, label %.lr.ph.preheader.i214.i, label %.critedge.i212.i

.lr.ph.preheader.i214.i:                          ; preds = %bb.bh
  %i.ix = add i64 %i.ig, %i.w
  %i.iy = sub i64 %.16.i207.i, %i.ix
  %scevgep.i215.i = getelementptr i8, ptr %.val169.i, i64 %i.iy ; 2 uses
  br label %.lr.ph.i216.i

.lr.ph.i216.i:                                    ; preds = %bb.bi, %.lr.ph.preheader.i214.i
  %.0263.i217.i = phi ptr [ %i.je, %bb.bi ], [ %.val169.i, %.lr.ph.preheader.i214.i ] ; 3 uses
  %i.iz = load i8, ptr %.0263.i217.i, align 1, !tbaa !15 ; 2 uses
  %i.ja = sext i8 %i.iz to i32
  %i.jb = icmp ne i8 %i.iz, 32
  %i.jc = add nsw i32 %i.ja, -14
  %i.jd = icmp ult i32 %i.jc, -5
  %narrow.i.not.i218.i = select i1 %i.jb, i1 %i.jd, i1 false
  br i1 %narrow.i.not.i218.i, label %.critedge.i212.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i216.i
  %i.je = getelementptr i8, ptr %.0263.i217.i, i64 1 ; 2 uses
  %exitcond.not.i219.i = icmp eq ptr %i.je, %scevgep.i215.i
  br i1 %exitcond.not.i219.i, label %.critedge.i212.i, label %.lr.ph.i216.i, !llvm.loop !567

.critedge.i212.i:                                 ; preds = %bb.bi, %.lr.ph.i216.i, %bb.bh
  %.127.i213.i = phi ptr [ %.val169.i, %bb.bh ], [ %.0263.i217.i, %.lr.ph.i216.i ], [ %scevgep.i215.i, %bb.bi ]
  %.not320.i = icmp eq ptr %.127.i213.i, %i.iu
  br i1 %.not320.i, label %.loopexit304.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.critedge.i212.i, %bb.bg, %bb.bf, %bb.ba
  br label %.backedge.i, !llvm.loop !569

bb.bj:                                            ; preds = %whole_match_p.exit.thread.i
  %i.jf = getelementptr i8, ptr %0, i64 136       ; 9 uses
  store i32 0, ptr %i.jf, align 8, !tbaa !570
  %i.jg = getelementptr i8, ptr %0, i64 160       ; 11 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !500 ; 2 uses
  %.not.i223.i = icmp eq ptr %i.jh, null
  br i1 %.not.i223.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ji = getelementptr i8, ptr %0, i64 140
  store i32 60, ptr %i.ji, align 4, !tbaa !509
  %i.jj = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.jj, ptr %i.jg, align 8, !tbaa !500
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jk = phi ptr [ %i.jj, %bb.bk ], [ %i.jh, %bb.bj ]
  %i.jl = getelementptr i8, ptr %0, i64 140       ; 6 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !509
  %i.jn = icmp sgt i32 %i.jm, 4096
  br i1 %i.jn, label %bb.bm, label %newtok.exit.i

bb.bm:                                            ; preds = %bb.bl
  store i32 60, ptr %i.jl, align 4, !tbaa !509
  %i.jo = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.jk, i64 noundef 60, i64 noundef 1) #38
  store ptr %i.jo, ptr %i.jg, align 8, !tbaa !500
  br label %newtok.exit.i

newtok.exit.i:                                    ; preds = %bb.bm, %bb.bl
  %i.jp = icmp eq i32 %.011.i.ph.i, 35
  br i1 %i.jp, label %bb.bn, label %nextc0.exit238.i

bb.bn:                                            ; preds = %newtok.exit.i
  %i.jq = load ptr, ptr %i.i, align 8, !tbaa !188 ; 4 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 1      ; 4 uses
  %i.js = load ptr, ptr %i.ac, align 8, !tbaa !426 ; 3 uses
  %.not.i224.i = icmp ult ptr %i.jr, %i.js
  br i1 %.not.i224.i, label %bb.bo, label %parser_peek_variable_name.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.jt = load i8, ptr %i.jq, align 1, !tbaa !15
  switch i8 %i.jt, label %parser_peek_variable_name.exit.i [
    i8 36, label %bb.bp
    i8 64, label %bb.bt
    i8 123, label %bb.bw
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ju = load i8, ptr %i.jr, align 1, !tbaa !15  ; 2 uses
  %i.jv = sext i8 %i.ju to i32                    ; 7 uses
  %i.jw = icmp eq i8 %i.ju, 45
  br i1 %i.jw, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.jx = getelementptr i8, ptr %i.jq, i64 2      ; 2 uses
  %.not34.i.i = icmp ult ptr %i.jx, %i.js
  br i1 %.not34.i.i, label %bb.br, label %parser_peek_variable_name.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !15
  %i.jz = sext i8 %i.jy to i32
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bp
  %i.ka = add nsw i32 %i.jv, -127
  %or.cond.i.i228.i = icmp ult i32 %i.ka, -94
  br i1 %or.cond.i.i228.i, label %is_global_name_punct.exit.thread.i.i, label %is_global_name_punct.exit.i.i

is_global_name_punct.exit.i.i:                    ; preds = %bb.bs
  %i.kb = add nsw i32 %i.jv, -32
  %i.kc = lshr i32 %i.kb, 5
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr [4 x i8], ptr @ruby_global_name_punct_bits, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kg = and i32 %i.jv, 31
  %i.kh = shl nuw i32 1, %i.kg
  %i.ki = and i32 %i.kf, %i.kh
  %.not32.i.i = icmp eq i32 %i.ki, 0
  %i.kj = add nsw i32 %i.jv, -58
  %i.kk = icmp ult i32 %i.kj, -10
  %or.cond39.i.i = select i1 %.not32.i.i, i1 %i.kk, i1 false
  br i1 %or.cond39.i.i, label %bb.bx, label %parser_peek_variable_name.exit.i

is_global_name_punct.exit.thread.i.i:             ; preds = %bb.bs
  %.old.i.i = add nsw i32 %i.jv, -58
  %.old38.i.i = icmp ult i32 %.old.i.i, -10
  br i1 %.old38.i.i, label %bb.bx, label %parser_peek_variable_name.exit.i

bb.bt:                                            ; preds = %bb.bo
  %i.kl = load i8, ptr %i.jr, align 1, !tbaa !15  ; 2 uses
  %i.km = sext i8 %i.kl to i32
  %i.kn = icmp eq i8 %i.kl, 64
  br i1 %i.kn, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.ko = getelementptr i8, ptr %i.jq, i64 2      ; 2 uses
  %.not31.i.i = icmp ult ptr %i.ko, %i.js
  br i1 %.not31.i.i, label %bb.bv, label %parser_peek_variable_name.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !15
  %i.kq = sext i8 %i.kp to i32
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bo
  store ptr %i.jr, ptr %i.i, align 8, !tbaa !188
  %i.kr = load i32, ptr %i.e, align 8
  %i.ks = or i32 %i.kr, 4
  store i32 %i.ks, ptr %i.e, align 8
  %i.kt = getelementptr i8, ptr %0, i64 104
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !67
  %i.kv = load ptr, ptr %0, align 8, !tbaa !62
  store i32 %i.ku, ptr %i.kv, align 8, !tbaa !15
  br label %parser_peek_variable_name.exit.i

bb.bx:                                            ; preds = %bb.bv, %bb.bt, %is_global_name_punct.exit.thread.i.i, %is_global_name_punct.exit.i.i, %bb.br
  %.0.i225.i = phi i32 [ %i.jz, %bb.br ], [ %i.jv, %is_global_name_punct.exit.thread.i.i ], [ %i.kq, %bb.bv ], [ %i.km, %bb.bt ], [ %i.jv, %is_global_name_punct.exit.i.i ] ; 3 uses
  %i.kw = icmp ugt i32 %.0.i225.i, 127
  %i.kx = icmp eq i32 %.0.i225.i, 95
  %or.cond.i226.i = or i1 %i.kw, %i.kx
  br i1 %or.cond.i226.i, label %parser_peek_variable_name.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ky = and i32 %.0.i225.i, 95
  %i.kz = add nsw i32 %i.ky, -91
  %narrow.i.i.i = icmp ult i32 %i.kz, -26
  %spec.select.i227.i = select i1 %narrow.i.i.i, i32 0, i32 348
  br label %parser_peek_variable_name.exit.i

parser_peek_variable_name.exit.i:                 ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu, %is_global_name_punct.exit.thread.i.i, %is_global_name_punct.exit.i.i, %bb.bq, %bb.bo, %bb.bn
  %.024.i.i = phi i32 [ 347, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bn ], [ 0, %bb.bo ], [ 348, %bb.bx ], [ 0, %bb.bq ], [ 348, %is_global_name_punct.exit.i.i ], [ 348, %is_global_name_punct.exit.thread.i.i ], [ %spec.select.i227.i, %bb.by ] ; 2 uses
  %i.la = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !180 ; 3 uses
  %.not161.i = icmp eq i32 %i.lb, -1
  br i1 %.not161.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %parser_peek_variable_name.exit.i
  %i.lc = getelementptr i8, ptr %0, i64 148       ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !177
  %i.le = icmp sgt i32 %i.ld, %i.lb
  br i1 %i.le, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !177
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store i32 -1, ptr %i.la, align 8, !tbaa !180
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %parser_peek_variable_name.exit.i
  %.not162.i = icmp eq i32 %.024.i.i, 0
  br i1 %.not162.i, label %bb.cd, label %here_document.exit

bb.cd:                                            ; preds = %bb.cc
  %i.lf = load ptr, ptr %i.jg, align 8, !tbaa !500
  %i.lg = load i32, ptr %i.jf, align 8, !tbaa !570 ; 2 uses
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.jf, align 8, !tbaa !570
  %i.li = sext i32 %i.lg to i64
  %i.lj = getelementptr i8, ptr %i.lf, i64 %i.li
  store i8 35, ptr %i.lj, align 1, !tbaa !15
  %i.lk = load i32, ptr %i.jf, align 8, !tbaa !570
  %i.ll = load i32, ptr %i.jl, align 4, !tbaa !509 ; 2 uses
  %.not.i229.i = icmp slt i32 %i.lk, %i.ll
  br i1 %.not.i229.i, label %tokadd.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lm = shl i32 %i.ll, 1                        ; 2 uses
  store i32 %i.lm, ptr %i.jl, align 4, !tbaa !509
  %i.ln = load ptr, ptr %i.jg, align 8, !tbaa !500
  %i.lo = sext i32 %i.lm to i64
  %i.lp = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ln, i64 noundef %i.lo, i64 noundef 1) #38
  store ptr %i.lp, ptr %i.jg, align 8, !tbaa !500
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.my = load ptr, ptr %i.jg, align 8, !tbaa !500
  %i.mz = load i32, ptr %i.jf, align 8, !tbaa !570
  %i.na = sext i32 %i.mz to i64
  %i.nb = load ptr, ptr %i.c, align 8, !tbaa !564 ; 2 uses
  %i.nc = load ptr, ptr %i.m, align 8, !tbaa !176
  %i.nd = tail call fastcc ptr @parser_str_new(ptr noundef %i.my, i64 noundef %i.na, ptr noundef %i.nb, i32 noundef %i.aa, ptr noundef %i.nc)
  %.pre332.i = load ptr, ptr %i.i, align 8, !tbaa !188
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %rb_parser_str_buf_cat.exit195.i, %.loopexit305.i
  %i.ne = phi ptr [ %i.nb, %.loopexit305.i ], [ %i.n, %rb_parser_str_buf_cat.exit195.i ]
  %i.nf = phi ptr [ %.pre332.i, %.loopexit305.i ], [ %i.ht, %rb_parser_str_buf_cat.exit195.i ]
  %.2144.i = phi ptr [ %i.nd, %.loopexit305.i ], [ %.1143.i, %rb_parser_str_buf_cat.exit195.i ]
  %i.ng = getelementptr i8, ptr %0, i64 196
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !29 ; 3 uses
  %i.ni = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.nj = load ptr, ptr %i.cg, align 8, !tbaa !50
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64               ; 2 uses
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = trunc i64 %i.nm to i32
  %i.no = ptrtoint ptr %i.nf to i64
  %i.np = sub i64 %i.no, %i.nl
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !129
  %i.ns = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ns, i32 noundef range(i32 0, 115) 63) #31
  %i.nt = getelementptr i8, ptr %i.ns, i64 8
  store i32 %i.nh, ptr %i.nt, align 8, !tbaa !7
  %.sroa.5280.0..sroa_idx.i = getelementptr i8, ptr %i.ns, i64 12
  store i32 %i.nn, ptr %.sroa.5280.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.6281.0..sroa_idx.i = getelementptr i8, ptr %i.ns, i64 16
  store i32 %i.nh, ptr %.sroa.6281.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.7282.0..sroa_idx.i = getelementptr i8, ptr %i.ns, i64 20
  store i32 %i.nq, ptr %.sroa.7282.0..sroa_idx.i, align 4, !tbaa !7
  %i.nu = sext i32 %i.nh to i64
  %i.nv = load i64, ptr %i.ns, align 8, !tbaa !69
  %i.nw = and i64 %i.nv, 32767
  %i.nx = shl nsw i64 %i.nu, 15
  %i.ny = or disjoint i64 %i.nw, %i.nx
  store i64 %i.ny, ptr %i.ns, align 8, !tbaa !69
  %i.nz = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !217 ; 2 uses
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.nz, align 8, !tbaa !217
  %i.oc = getelementptr i8, ptr %i.ns, i64 24
  store i32 %i.oa, ptr %i.oc, align 8, !tbaa !218
  %i.od = getelementptr i8, ptr %i.ns, i64 32
  store ptr %.2144.i, ptr %i.od, align 8, !tbaa !445
  %i.oe = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %i.ns, ptr %i.oe, align 8, !tbaa !15
  br i1 %i.cj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.loopexit.i
  %i.of = load ptr, ptr %0, align 8, !tbaa !62
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !15 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !69
  %i.oi = or i64 %i.oh, 128
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !69
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.loopexit.i
  tail call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.ne, i64 noundef 0)
  br label %here_document.exit

bb.cs:                                            ; preds = %pushback.exit.i
  %i.oj = load ptr, ptr %i.i, align 8, !tbaa !188 ; 2 uses
  %i.ok = load ptr, ptr %i.ac, align 8, !tbaa !426
  %.not.i239.i = icmp ult ptr %i.oj, %i.ok
  br i1 %.not.i239.i, label %bb.ct, label %.critedge.i240.i, !prof !527

bb.ct:                                            ; preds = %bb.cs
  %i.ol = load i32, ptr %i.e, align 8
  %i.om = and i32 %i.ol, 8
  %.not13.i246.i = icmp eq i32 %i.om, 0
  br i1 %.not13.i246.i, label %bb.cu, label %.critedge.i240.i, !prof !527

bb.cu:                                            ; preds = %bb.ct
  %i.on = load ptr, ptr %i.mg, align 8, !tbaa !528
  %i.oo = icmp ugt ptr %i.on, inttoptr (i64 1 to ptr)
  br i1 %i.oo, label %.critedge.i240.i, label %bb.cv, !prof !205

.critedge.i240.i:                                 ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.op = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i241.i = icmp eq i32 %i.op, 0
  br i1 %.not14.i241.i, label %.critedge._crit_edge.i243.i, label %nextc0.exit247.i

.critedge._crit_edge.i243.i:                      ; preds = %.critedge.i240.i
  %.pre.i244.i = load ptr, ptr %i.i, align 8, !tbaa !188
  br label %bb.cv

bb.cv:                                            ; preds = %.critedge._crit_edge.i243.i, %bb.cu
  %i.oq = phi ptr [ %.pre.i244.i, %.critedge._crit_edge.i243.i ], [ %i.oj, %bb.cu ] ; 3 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 1      ; 3 uses
  store ptr %i.or, ptr %i.i, align 8, !tbaa !188
  %i.os = load i8, ptr %i.oq, align 1, !tbaa !15  ; 2 uses
  %i.ot = icmp eq i8 %i.os, 13
  br i1 %i.ot, label %bb.cw, label %nextc0.exit247.i, !prof !205

bb.cw:                                            ; preds = %bb.cv
  %i.ou = load ptr, ptr %i.ac, align 8, !tbaa !426
  %.not.i.i245.i = icmp ult ptr %i.or, %i.ou
  br i1 %.not.i.i245.i, label %bb.cx, label %nextc0.exit247.i

bb.cx:                                            ; preds = %bb.cw
  %i.ov = load i8, ptr %i.or, align 1, !tbaa !15
  %i.ow = icmp eq i8 %i.ov, 10
  br i1 %i.ow, label %bb.cy, label %nextc0.exit247.i

bb.cy:                                            ; preds = %bb.cx
  %i.ox = getelementptr i8, ptr %i.oq, i64 2
  store ptr %i.ox, ptr %i.i, align 8, !tbaa !188
  br label %nextc0.exit247.i

nextc0.exit247.i:                                 ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %.critedge.i240.i
  %.011.i242.i = phi i8 [ -1, %.critedge.i240.i ], [ %i.os, %bb.cv ], [ 13, %bb.cw ], [ 10, %bb.cy ], [ 13, %bb.cx ]
  %i.oy = load ptr, ptr %i.jg, align 8, !tbaa !500
  %i.oz = load i32, ptr %i.jf, align 8, !tbaa !570 ; 2 uses
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.jf, align 8, !tbaa !570
  %i.pb = sext i32 %i.oz to i64
  %i.pc = getelementptr i8, ptr %i.oy, i64 %i.pb
  store i8 %.011.i242.i, ptr %i.pc, align 1, !tbaa !15
  %i.pd = load i32, ptr %i.jf, align 8, !tbaa !570
  %i.pe = load i32, ptr %i.jl, align 4, !tbaa !509 ; 2 uses
  %.not.i248.i = icmp slt i32 %i.pd, %i.pe
  br i1 %.not.i248.i, label %tokadd.exit249.i, label %bb.cz

bb.cz:                                            ; preds = %nextc0.exit247.i
  %i.pf = shl i32 %i.pe, 1                        ; 2 uses
  store i32 %i.pf, ptr %i.jl, align 4, !tbaa !509
  %i.pg = load ptr, ptr %i.jg, align 8, !tbaa !500
  %i.ph = sext i32 %i.pf to i64
  %i.pi = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.pg, i64 noundef %i.ph, i64 noundef 1) #38
  store ptr %i.pi, ptr %i.jg, align 8, !tbaa !500
  br label %tokadd.exit249.i

tokadd.exit249.i:                                 ; preds = %bb.cz, %nextc0.exit247.i
  %i.pj = load i32, ptr %i.mh, align 4, !tbaa !177
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %bb.da, label %bb.db

bb.da:                                            ; preds = %tokadd.exit249.i
  %i.pl = load ptr, ptr %i.ac, align 8, !tbaa !426
  store ptr %i.pl, ptr %i.i, align 8, !tbaa !188
  br label %.loopexit305.i

bb.db:                                            ; preds = %tokadd.exit249.i
  %i.pm = load ptr, ptr %i.i, align 8, !tbaa !188 ; 2 uses
  %i.pn = load ptr, ptr %i.ac, align 8, !tbaa !426 ; 2 uses
  %.not.i250.i = icmp ult ptr %i.pm, %i.pn
  br i1 %.not.i250.i, label %bb.dc, label %.critedge.i251.i, !prof !527

bb.dc:                                            ; preds = %bb.db
  %i.po = load i32, ptr %i.e, align 8
  %i.pp = and i32 %i.po, 8
  %.not13.i257.i = icmp eq i32 %i.pp, 0
  br i1 %.not13.i257.i, label %bb.dd, label %.critedge.i251.i, !prof !527

bb.dd:                                            ; preds = %bb.dc
  %i.pq = load ptr, ptr %i.mg, align 8, !tbaa !528
  %i.pr = icmp ugt ptr %i.pq, inttoptr (i64 1 to ptr)
  br i1 %i.pr, label %.critedge.i251.i, label %bb.de, !prof !205

.critedge.i251.i:                                 ; preds = %bb.dd, %bb.dc, %bb.db
  %i.ps = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i252.i = icmp eq i32 %i.ps, 0
  br i1 %.not14.i252.i, label %.critedge._crit_edge.i254.i, label %nextc0.exit.i

.critedge._crit_edge.i254.i:                      ; preds = %.critedge.i251.i
  %.pre.i255.i = load ptr, ptr %i.i, align 8, !tbaa !188
  %.val168.pre.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !426
  br label %bb.de

bb.de:                                            ; preds = %.critedge._crit_edge.i254.i, %bb.dd
  %.val168.pre.i = phi ptr [ %.val168.pre.pre.i, %.critedge._crit_edge.i254.i ], [ %i.pn, %bb.dd ] ; 7 uses
  %i.pt = phi ptr [ %.pre.i255.i, %.critedge._crit_edge.i254.i ], [ %i.pm, %bb.dd ] ; 3 uses
  %i.pu = getelementptr i8, ptr %i.pt, i64 1      ; 3 uses
  store ptr %i.pu, ptr %i.i, align 8, !tbaa !188
  %i.pv = load i8, ptr %i.pt, align 1, !tbaa !15
  %i.pw = icmp eq i8 %i.pv, 13
  br i1 %i.pw, label %bb.df, label %bb.di, !prof !205

bb.df:                                            ; preds = %bb.de
  %.not.i.i256.i = icmp ult ptr %i.pu, %.val168.pre.i
  br i1 %.not.i.i256.i, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.px = load i8, ptr %i.pu, align 1, !tbaa !15
  %i.py = icmp eq i8 %i.px, 10
  br i1 %i.py, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.pz = getelementptr i8, ptr %i.pt, i64 2
  store ptr %i.pz, ptr %i.i, align 8, !tbaa !188
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.de
  %.val.i = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 7 uses
  %i.qa = ptrtoint ptr %.val168.pre.i to i64
  %i.qb = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = icmp slt i64 %i.qc, %i.w
  br i1 %i.qd, label %.backedge306.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qe = icmp ugt ptr %.val168.pre.i, %.val.i
  br i1 %i.qe, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %i.qf = getelementptr i8, ptr %.val168.pre.i, i64 -1 ; 4 uses
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !15
  %i.qh = icmp eq i8 %i.qg, 10
  br i1 %i.qh, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.qi = icmp ugt ptr %i.qf, %.val.i
  br i1 %i.qi, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.qj = getelementptr i8, ptr %.val168.pre.i, i64 -2 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !15
  %i.ql = icmp eq i8 %i.qk, 13
  %spec.select.i274.i = select i1 %i.ql, ptr %i.qj, ptr %i.qf
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.0.i273.i = phi ptr [ %i.qf, %bb.dl ], [ %spec.select.i274.i, %bb.dm ] ; 2 uses
  %i.qm = ptrtoint ptr %.0.i273.i to i64
  %i.qn = sub i64 %i.qm, %i.qb
  %i.qo = icmp slt i64 %i.qn, %i.w
  br i1 %i.qo, label %.backedge306.i, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk, %bb.dj
  %.1.i259.i = phi ptr [ %.0.i273.i, %bb.dn ], [ %.val168.pre.i, %bb.dk ], [ %.val168.pre.i, %bb.dj ] ; 2 uses
  %.16.i260.i = ptrtoaddr ptr %.1.i259.i to i64
  %i.qp = getelementptr i8, ptr %.1.i259.i, i64 %i.x ; 3 uses
  %i.qq = tail call i32 @strncmp(ptr noundef readonly %i.t, ptr noundef %i.qp, i64 noundef range(i64 0, 4294967296) %i.w) #35
  %.not.i261.i = icmp eq i32 %i.qq, 0
  br i1 %.not.i261.i, label %bb.dp, label %.backedge306.i

bb.dp:                                            ; preds = %bb.do
  %i.qr = icmp ult ptr %.val.i, %i.qp
  %or.cond.i264.i = and i1 %.not35.i263.i, %i.qr
  br i1 %or.cond.i264.i, label %.lr.ph.preheader.i267.i, label %.critedge.i265.i

.lr.ph.preheader.i267.i:                          ; preds = %bb.dp
  %i.qs = add i64 %i.qb, %i.w
  %i.qt = sub i64 %.16.i260.i, %i.qs
  %scevgep.i268.i = getelementptr i8, ptr %.val.i, i64 %i.qt ; 2 uses
  br label %.lr.ph.i269.i

.lr.ph.i269.i:                                    ; preds = %bb.dq, %.lr.ph.preheader.i267.i
  %.0263.i270.i = phi ptr [ %i.qz, %bb.dq ], [ %.val.i, %.lr.ph.preheader.i267.i ] ; 3 uses
  %i.qu = load i8, ptr %.0263.i270.i, align 1, !tbaa !15 ; 2 uses
  %i.qv = sext i8 %i.qu to i32
  %i.qw = icmp ne i8 %i.qu, 32
  %i.qx = add nsw i32 %i.qv, -14
  %i.qy = icmp ult i32 %i.qx, -5
  %narrow.i.not.i271.i = select i1 %i.qw, i1 %i.qy, i1 false
  br i1 %narrow.i.not.i271.i, label %.critedge.i265.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i269.i
  %i.qz = getelementptr i8, ptr %.0263.i270.i, i64 1 ; 2 uses
  %exitcond.not.i272.i = icmp eq ptr %i.qz, %scevgep.i268.i
  br i1 %exitcond.not.i272.i, label %.critedge.i265.i, label %.lr.ph.i269.i, !llvm.loop !567

.critedge.i265.i:                                 ; preds = %bb.dq, %.lr.ph.i269.i, %bb.dp
  %.127.i266.i = phi ptr [ %.val.i, %bb.dp ], [ %.0263.i270.i, %.lr.ph.i269.i ], [ %scevgep.i268.i, %bb.dq ]
  %.not319.i = icmp eq ptr %.127.i266.i, %i.qp
  br i1 %.not319.i, label %bb.dr, label %.backedge306.i

bb.dr:                                            ; preds = %.critedge.i265.i
  %i.ra = load ptr, ptr %i.jg, align 8, !tbaa !500
  %i.rb = load i32, ptr %i.jf, align 8, !tbaa !570
  %i.rc = sext i32 %i.rb to i64
  %i.rd = load ptr, ptr %i.c, align 8, !tbaa !564
  %i.re = load ptr, ptr %i.m, align 8, !tbaa !176
  %i.rf = tail call fastcc ptr @parser_str_new(ptr noundef %i.ra, i64 noundef %i.rc, ptr noundef %i.rd, i32 noundef %i.aa, ptr noundef %i.re)
  br label %.loopexit304.i

.loopexit304.i:                                   ; preds = %.critedge.i212.i, %bb.dr
  %.3.i = phi ptr [ %i.rf, %bb.dr ], [ %.1143.i, %.critedge.i212.i ]
  tail call fastcc void @parser_dispatch_heredoc_end(ptr noundef %0, i32 noundef 9189)
  %i.rg = load ptr, ptr %i.g, align 8, !tbaa !178 ; 6 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !178
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !565 ; 3 uses
  %i.rj = getelementptr i8, ptr %0, i64 56
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !189
  %i.rk = getelementptr i8, ptr %i.ri, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !18 ; 3 uses
  store ptr %i.rl, ptr %i.cg, align 8, !tbaa !50
  %i.rm = getelementptr i8, ptr %i.ri, i64 16
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !23
  %i.ro = getelementptr i8, ptr %i.rl, i64 %i.rn
  store ptr %i.ro, ptr %i.ac, align 8, !tbaa !426
  %i.rp = getelementptr i8, ptr %i.rg, i64 16
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !489
  %i.rr = getelementptr i8, ptr %i.rl, i64 %i.rq  ; 2 uses
  %i.rs = getelementptr i8, ptr %i.rg, i64 28
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !492
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr i8, ptr %i.rr, i64 %i.ru
  %i.rw = getelementptr i8, ptr %i.rg, i64 32
  %i.rx = load i8, ptr %i.rw, align 8, !tbaa !490
  %i.ry = zext i8 %i.rx to i64                    ; 2 uses
  %i.rz = getelementptr i8, ptr %i.rv, i64 %i.ry
  store ptr %i.rz, ptr %i.i, align 8, !tbaa !188
  %i.sa = sub nsw i64 0, %i.ry
  %i.sb = getelementptr i8, ptr %i.rr, i64 %i.sa
  store ptr %i.sb, ptr %i.k, align 8, !tbaa !49
  %i.sc = getelementptr i8, ptr %0, i64 196       ; 3 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !29
  %i.se = getelementptr i8, ptr %0, i64 144
  store i32 %i.sd, ptr %i.se, align 8, !tbaa !543
  %i.sf = getelementptr i8, ptr %i.rg, i64 24
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !487
  store i32 %i.sg, ptr %i.sc, align 4, !tbaa !29
  %i.sh = load i32, ptr %i.e, align 8             ; 2 uses
  %i.si = and i32 %i.sh, 8
  %.not.i276.i = icmp eq i32 %i.si, 0
  br i1 %.not.i276.i, label %heredoc_restore.exit277.i, label %bb.ds

bb.ds:                                            ; preds = %.loopexit304.i
  %i.sj = getelementptr i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.sj, align 8, !tbaa !528
  br label %heredoc_restore.exit277.i

heredoc_restore.exit277.i:                        ; preds = %bb.ds, %.loopexit304.i
  %i.sk = and i32 %i.sh, -9
  store i32 %i.sk, ptr %i.e, align 8
  tail call void @ruby_xfree(ptr noundef nonnull %i.rg) #31
  %i.sl = load ptr, ptr %i.i, align 8, !tbaa !188
  store ptr %i.sl, ptr %i.k, align 8, !tbaa !49
  %i.sm = or disjoint i32 %i.aa, 32768
  %i.sn = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  store i32 %i.sm, ptr %i.so, align 8, !tbaa !15
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  store i32 0, ptr %i.sp, align 8, !tbaa !15
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 20
  store i32 0, ptr %i.sq, align 4, !tbaa !15
  store ptr %i.sn, ptr %i.g, align 8, !tbaa !178
  %i.sr = load i32, ptr %i.sc, align 4, !tbaa !29 ; 3 uses
  %i.ss = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.st = load ptr, ptr %i.cg, align 8, !tbaa !50
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = ptrtoint ptr %i.st to i64               ; 2 uses
  %i.sw = sub i64 %i.su, %i.sv
  %i.sx = trunc i64 %i.sw to i32
  %i.sy = load ptr, ptr %i.i, align 8, !tbaa !188
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = sub i64 %i.sz, %i.sv
  %i.tb = trunc i64 %i.ta to i32
  %i.tc = getelementptr i8, ptr %0, i64 288
  %.val.i.i278.i = load ptr, ptr %i.tc, align 8, !tbaa !129
  %i.td = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i278.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.td, i32 noundef range(i32 0, 115) 63) #31
  %i.te = getelementptr i8, ptr %i.td, i64 8
  store i32 %i.sr, ptr %i.te, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.td, i64 12
  store i32 %i.sx, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.td, i64 16
  store i32 %i.sr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.td, i64 20
  store i32 %i.tb, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !7
  %i.tf = sext i32 %i.sr to i64
  %i.tg = load i64, ptr %i.td, align 8, !tbaa !69
  %i.th = and i64 %i.tg, 32767
  %i.ti = shl nsw i64 %i.tf, 15
  %i.tj = or disjoint i64 %i.th, %i.ti
  store i64 %i.tj, ptr %i.td, align 8, !tbaa !69
  %i.tk = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !217 ; 2 uses
  %i.tm = add i32 %i.tl, 1
  store i32 %i.tm, ptr %i.tk, align 8, !tbaa !217
  %i.tn = getelementptr i8, ptr %i.td, i64 24
  store i32 %i.tl, ptr %i.tn, align 8, !tbaa !218
  %i.to = getelementptr i8, ptr %i.td, i64 32
  store ptr %.3.i, ptr %i.to, align 8, !tbaa !445
  %i.tp = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %i.td, ptr %i.tp, align 8, !tbaa !15
  br i1 %i.cj, label %bb.dt, label %here_document.exit

bb.dt:                                            ; preds = %heredoc_restore.exit277.i
  %i.tq = load ptr, ptr %0, align 8, !tbaa !62
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !15 ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !69
  %i.tt = or i64 %i.ts, 128
  store i64 %i.tt, ptr %i.tr, align 8, !tbaa !69
  br label %here_document.exit

here_document.exit:                               ; preds = %parser_set_lex_state.exit.i, %parser_set_lex_state.exit180.i, %bb.cc, %bb.cr, %heredoc_restore.exit277.i, %bb.dt
  %.1.i = phi i32 [ 345, %parser_set_lex_state.exit.i ], [ 345, %parser_set_lex_state.exit180.i ], [ 321, %bb.cr ], [ 321, %heredoc_restore.exit277.i ], [ %.024.i.i, %bb.cc ], [ 321, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %pushback.exit1038

bb.du:                                            ; preds = %bb.b
  %i.tu = getelementptr i8, ptr %i.h, i64 16      ; 7 uses
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !571 ; 11 uses
  %i.tw = getelementptr i8, ptr %i.h, i64 24
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !573 ; 3 uses
  %i.ty = getelementptr i8, ptr %i.h, i64 20
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ua = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !176
  store ptr %i.ub, ptr %i.a, align 8, !tbaa !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr null, ptr %i.b, align 8, !tbaa !564
  %i.uc = and i32 %i.tv, 32768
  %.not.i881 = icmp eq i32 %i.uc, 0
  br i1 %.not.i881, label %bb.ed, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ud = and i32 %i.tv, 8
  %.not94.i = icmp eq i32 %i.ud, 0
  br i1 %.not94.i, label %nextc0.exit.i885, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ue = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !426
  %.not.i.i882 = icmp ult ptr %i.j, %i.uf
  %i.ug = and i32 %i.f, 8
  %.not13.i.i891 = icmp eq i32 %i.ug, 0
  %or.cond1237 = select i1 %.not.i.i882, i1 %.not13.i.i891, i1 false, !prof !566
  br i1 %or.cond1237, label %bb.dx, label %.critedge.i.i883, !prof !566

bb.dx:                                            ; preds = %bb.dw
  %i.uh = getelementptr i8, ptr %0, i64 64
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !528
  %i.uj = icmp ugt ptr %i.ui, inttoptr (i64 1 to ptr)
  br i1 %i.uj, label %.critedge.i.i883, label %bb.dy, !prof !205

.critedge.i.i883:                                 ; preds = %bb.dx, %bb.dw
  %i.uk = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i.i884 = icmp eq i32 %i.uk, 0
  br i1 %.not14.i.i884, label %.critedge._crit_edge.i.i888, label %nextc0.exit.i885

.critedge._crit_edge.i.i888:                      ; preds = %.critedge.i.i883
  %.pre.i.i889 = load ptr, ptr %i.i, align 8, !tbaa !188
  br label %bb.dy

bb.dy:                                            ; preds = %.critedge._crit_edge.i.i888, %bb.dx
  %i.ul = phi ptr [ %.pre.i.i889, %.critedge._crit_edge.i.i888 ], [ %i.j, %bb.dx ] ; 3 uses
  %i.um = getelementptr i8, ptr %i.ul, i64 1      ; 3 uses
  store ptr %i.um, ptr %i.i, align 8, !tbaa !188
end_hunk_3
begin_hunk_4_@parser_yylex:bb.a
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !13
  %i.axl = and i64 %i.axk, 8192
  %.not.i225.i = icmp eq i64 %i.axl, 0
  %i.axm = getelementptr i8, ptr %i.axj, i64 24   ; 2 uses
  br i1 %.not.i225.i, label %RSTRING_PTR.exit226.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !15
  br label %RSTRING_PTR.exit226.i

RSTRING_PTR.exit226.i:                            ; preds = %bb.jy, %bb.jx
  %i.axo = phi ptr [ %i.axn, %bb.jy ], [ %i.axm, %bb.jx ]
  %.not.i227.i = icmp eq i64 %.0136.i, 0
  br i1 %.not.i227.i, label %ruby_nonempty_memcpy.exit229.i, label %bb.jz

bb.jz:                                            ; preds = %RSTRING_PTR.exit226.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.axo, ptr noundef nonnull readonly align 1 %.0157.i, i64 noundef range(i64 1, 0) %.0136.i, i1 noundef false) #31
  br label %ruby_nonempty_memcpy.exit229.i

bb.ka:                                            ; preds = %bb.jw
  %i.axp = load ptr, ptr %i.aiu, align 8, !tbaa !176
  %i.axq = call i64 @rb_enc_str_new(ptr noundef %.0157.i, i64 noundef %.0136.i, ptr noundef %i.axp) #31 ; 2 uses
  %.pre406.i = inttoptr i64 %i.axq to ptr
  br label %ruby_nonempty_memcpy.exit229.i

ruby_nonempty_memcpy.exit229.i:                   ; preds = %bb.ka, %bb.jz, %RSTRING_PTR.exit226.i
  %.pre-phi407.i = phi ptr [ %i.axj, %bb.jz ], [ %i.axj, %RSTRING_PTR.exit226.i ], [ %.pre406.i, %bb.ka ] ; 2 uses
  %.1159.i = phi i64 [ %.0158363.i, %bb.jz ], [ %.0158363.i, %RSTRING_PTR.exit226.i ], [ %i.axq, %bb.ka ]
  store ptr %i.aqh, ptr %i.aij, align 8, !tbaa !49
  store ptr %.9.i, ptr %i.aih, align 8, !tbaa !188
  %i.axr = getelementptr i8, ptr %.0153.lcssa.i, i64 8
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !596
  %i.axt = load i64, ptr %.pre-phi407.i, align 8, !tbaa !13
  %i.axu = and i64 %i.axt, 8192
  %.not.i230.i942 = icmp eq i64 %i.axu, 0
  %i.axv = getelementptr i8, ptr %.pre-phi407.i, i64 24 ; 2 uses
  br i1 %.not.i230.i942, label %RSTRING_PTR.exit231.i, label %bb.kb

bb.kb:                                            ; preds = %ruby_nonempty_memcpy.exit229.i
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !15
  br label %RSTRING_PTR.exit231.i

RSTRING_PTR.exit231.i:                            ; preds = %bb.kb, %ruby_nonempty_memcpy.exit229.i
  %i.axx = phi ptr [ %i.axw, %bb.kb ], [ %i.axv, %ruby_nonempty_memcpy.exit229.i ]
  call void %i.axs(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa391.i, ptr noundef %i.axx) #31, !inline_history !595
  br label %.loopexit.i937

bb.kc:                                            ; preds = %.preheader.i940
  %i.axy = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.815, ptr noundef %i.arq, i64 noundef %i.arc) #35
  %i.axz = icmp eq i32 %i.axy, 0
  %.not203.1.i = icmp eq i64 %i.arc, 8
  %or.cond472.i = and i1 %.not203.1.i, %i.axz
  br i1 %or.cond472.i, label %bb.ju, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aya = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.816, ptr noundef %i.arq, i64 noundef %i.arc) #35
  %i.ayb = icmp eq i32 %i.aya, 0
  %.not203.2.i = icmp eq i64 %i.arc, 21
  %or.cond473.i = and i1 %.not203.2.i, %i.ayb
  br i1 %or.cond473.i, label %bb.ju, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ayc = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.817, ptr noundef %i.arq, i64 noundef %i.arc) #35
  %i.ayd = icmp eq i32 %i.ayc, 0
  %.not203.3.i = icmp eq i64 %i.arc, 24
  %or.cond474.i = and i1 %.not203.3.i, %i.ayd
  br i1 %or.cond474.i, label %bb.ju, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.aye = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.818, ptr noundef %i.arq, i64 noundef %i.arc) #35
  %i.ayf = icmp eq i32 %i.aye, 0
  %.not203.4.i = icmp eq i64 %i.arc, 11
  %or.cond475.i = and i1 %.not203.4.i, %i.ayf
  br i1 %or.cond475.i, label %bb.ju, label %.loopexit.i937

.loopexit.i937:                                   ; preds = %bb.kf, %RSTRING_PTR.exit231.i, %bb.jf
  %.3166.i = phi i64 [ %.1164.i, %RSTRING_PTR.exit231.i ], [ %.0163362.i, %bb.jf ], [ %.1164.i, %bb.kf ]
  %.4162.i = phi i64 [ %.1159.i, %RSTRING_PTR.exit231.i ], [ %.0158363.i, %bb.jf ], [ %.0158363.i, %bb.kf ]
  %.14152.i = phi i64 [ %.12150.i, %RSTRING_PTR.exit231.i ], [ %.4142320.i, %bb.jf ], [ %.12150.i, %bb.kf ] ; 2 uses
  %.14.i = phi ptr [ %.12.i, %RSTRING_PTR.exit231.i ], [ %.4321.i, %bb.jf ], [ %.12.i, %bb.kf ]
  %i.ayg = icmp sgt i64 %.14152.i, 0
  br i1 %i.ayg, label %.preheader271.i, label %parser_magic_comment.exit

.loopexit:                                        ; preds = %bb.ix, %bb.iu, %bb.jf, %.critedge14.i, %.lr.ph357.i, %bb.ik, %bb.ir, %magic_comment_marker.exit214.i
  %i.ayh = load i32, ptr %i.e, align 8            ; 2 uses
  %i.ayi = and i32 %i.ayh, 128
  %.not.i945 = icmp eq i32 %i.ayi, 0
  br i1 %.not.i945, label %comment_at_top.exit, label %parser_magic_comment.exit

comment_at_top.exit:                              ; preds = %.loopexit
  %i.ayj = load i32, ptr %i.aiv, align 8, !tbaa !537
  %i.ayk = and i32 %i.ayh, 64
  %.not4.i = icmp eq i32 %i.ayk, 0
  %i.ayl = select i1 %.not4.i, i32 1, i32 2
  %i.aym = icmp eq i32 %i.ayj, %i.ayl
  br i1 %i.aym, label %bb.kg, label %parser_magic_comment.exit

bb.kg:                                            ; preds = %comment_at_top.exit
  %i.ayn = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 2 uses
  %i.ayo = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 4 uses
  %i.ayp = ptrtoint ptr %i.ayo to i64             ; 3 uses
  %i.ayq = ptrtoint ptr %i.ayn to i64
  %i.ayr = sub i64 %i.ayp, %i.ayq
  %i.ays = icmp slt i64 %i.ayr, 7
  br i1 %i.ays, label %parser_magic_comment.exit, label %.lr.ph.i946

.lr.ph.i946:                                      ; preds = %bb.kg, %.backedge.i947
  %.065.i = phi ptr [ %.0.be.i, %.backedge.i947 ], [ %i.ayn, %bb.kg ] ; 8 uses
  %i.ayt = getelementptr i8, ptr %.065.i, i64 6   ; 6 uses
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !15 ; 3 uses
  switch i8 %i.ayu, label %bb.km [
    i8 67, label %.backedge.i947
    i8 99, label %.backedge.i947
    i8 79, label %bb.kh
    i8 111, label %bb.kh
    i8 68, label %bb.ki
    i8 100, label %bb.ki
    i8 73, label %bb.kj
    i8 105, label %bb.kj
    i8 78, label %bb.kk
    i8 110, label %bb.kk
    i8 71, label %bb.kl
    i8 103, label %bb.kl
    i8 61, label %bb.kn
    i8 58, label %bb.kn
  ]

.backedge.i947:                                   ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %.lr.ph.i946, %.lr.ph.i946
  %.0.be.i = phi ptr [ %i.azc, %bb.kl ], [ %i.ayt, %bb.km ], [ %i.ayt, %bb.kn ], [ %i.ayy, %bb.kh ], [ %i.ayz, %bb.ki ], [ %i.aza, %bb.kj ], [ %i.azb, %bb.kk ], [ %i.ayt, %.lr.ph.i946 ], [ %i.ayt, %.lr.ph.i946 ] ; 2 uses
  %i.ayv = ptrtoint ptr %.0.be.i to i64
  %i.ayw = sub i64 %i.ayp, %i.ayv
  %i.ayx = icmp slt i64 %i.ayw, 7
  br i1 %i.ayx, label %parser_magic_comment.exit, label %.lr.ph.i946

bb.kh:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ayy = getelementptr i8, ptr %.065.i, i64 5
  br label %.backedge.i947

bb.ki:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ayz = getelementptr i8, ptr %.065.i, i64 4
  br label %.backedge.i947

bb.kj:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.aza = getelementptr i8, ptr %.065.i, i64 3
  br label %.backedge.i947

bb.kk:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.azb = getelementptr i8, ptr %.065.i, i64 2
  br label %.backedge.i947

bb.kl:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.azc = getelementptr i8, ptr %.065.i, i64 1
  br label %.backedge.i947

bb.km:                                            ; preds = %.lr.ph.i946
  %i.azd = sext i8 %i.ayu to i32
  %i.aze = icmp ne i8 %i.ayu, 32
  %i.azf = add nsw i32 %i.azd, -14
  %i.azg = icmp ult i32 %i.azf, -5
  %narrow.i.not.i958 = select i1 %i.aze, i1 %i.azg, i1 false
  br i1 %narrow.i.not.i958, label %.backedge.i947, label %bb.kn

bb.kn:                                            ; preds = %bb.km, %.lr.ph.i946, %.lr.ph.i946
  %i.azh = phi i1 [ true, %bb.km ], [ false, %.lr.ph.i946 ], [ false, %.lr.ph.i946 ]
  %i.azi = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull %.065.i, ptr noundef nonnull @.str.814, i64 noundef 6) #35
  %i.azj = icmp eq i32 %i.azi, 0
  br i1 %i.azj, label %.preheader58.i.preheader, label %.backedge.i947

.preheader58.i.preheader:                         ; preds = %bb.kn
  %i.azk = getelementptr i8, ptr %.065.i, i64 7   ; 2 uses
  %.not47.i28632866 = icmp ult ptr %i.azk, %i.ayo
  br i1 %.not47.i28632866, label %.lr.ph2865, label %parser_magic_comment.exit

.lr.ph2865:                                       ; preds = %.preheader58.i.preheader, %.preheader58.i
  %i.azl = phi ptr [ %i.azv, %.preheader58.i ], [ %i.azk, %.preheader58.i.preheader ]
  %.2.i9492868 = phi ptr [ %i.azu, %.preheader58.i ], [ %i.ayt, %.preheader58.i.preheader ] ; 3 uses
  %.240.i2867 = phi i1 [ false, %.preheader58.i ], [ %i.azh, %.preheader58.i.preheader ]
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kp
  %i.azm = getelementptr i8, ptr %i.azn, i64 1    ; 2 uses
  %.not47.i = icmp ult ptr %i.azm, %i.ayo
  br i1 %.not47.i, label %bb.kp, label %parser_magic_comment.exit, !llvm.loop !597

bb.kp:                                            ; preds = %.lr.ph2865, %bb.ko
  %i.azn = phi ptr [ %i.azl, %.lr.ph2865 ], [ %i.azm, %bb.ko ] ; 8 uses
  %.3.i9502864 = phi ptr [ %.2.i9492868, %.lr.ph2865 ], [ %i.azn, %bb.ko ] ; 2 uses
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !15 ; 3 uses
  %i.azp = sext i8 %i.azo to i32
  %i.azq = icmp ne i8 %i.azo, 32
  %i.azr = add nsw i32 %i.azp, -14
  %i.azs = icmp ult i32 %i.azr, -5
  %narrow.i53.not.i = select i1 %i.azq, i1 %i.azs, i1 false
  br i1 %narrow.i53.not.i, label %bb.kq, label %bb.ko, !llvm.loop !597

bb.kq:                                            ; preds = %bb.kp
  br i1 %.240.i2867, label %bb.kr, label %.preheader.i951

.preheader.i951:                                  ; preds = %bb.kq
  %scevgep.i = getelementptr i8, ptr %.2.i9492868, i64 %i.ayp
  %.2.lcssa7375.i = ptrtoaddr ptr %.2.i9492868 to i64
  %i.azt = sub i64 0, %.2.lcssa7375.i
  %scevgep76.i = getelementptr i8, ptr %scevgep.i, i64 %i.azt ; 2 uses
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  switch i8 %i.azo, label %parser_magic_comment.exit [
    i8 61, label %.preheader58.i
    i8 58, label %.preheader58.i
  ]

.preheader58.i:                                   ; preds = %bb.kr, %bb.kr
  %i.azu = getelementptr i8, ptr %.3.i9502864, i64 2
  %i.azv = getelementptr i8, ptr %.3.i9502864, i64 3 ; 2 uses
  %.not47.i2863 = icmp ult ptr %i.azv, %i.ayo
  br i1 %.not47.i2863, label %.lr.ph2865, label %parser_magic_comment.exit

bb.ks:                                            ; preds = %bb.ku, %.preheader.i951
  %.4.i = phi ptr [ %i.bac, %bb.ku ], [ %i.azn, %.preheader.i951 ] ; 3 uses
  %i.azw = load i8, ptr %.4.i, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.azw, label %bb.kt [
    i8 45, label %bb.ku
    i8 95, label %bb.ku
  ]

bb.kt:                                            ; preds = %bb.ks
  %i.azx = sext i8 %i.azw to i32                  ; 2 uses
  %i.azy = and i32 %i.azx, -33
  %i.azz = add nsw i32 %i.azy, -91
  %narrow.i.i.i957 = icmp ult i32 %i.azz, -26
  %i.baa = add nsw i32 %i.azx, -58
  %i.bab = icmp ult i32 %i.baa, -10
  %narrow.i54.not.i = select i1 %narrow.i.i.i957, i1 %i.bab, i1 false
  br i1 %narrow.i54.not.i, label %.critedge.i953, label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks, %bb.ks
  %i.bac = getelementptr i8, ptr %.4.i, i64 1     ; 2 uses
  %exitcond.not.i952 = icmp eq ptr %i.bac, %scevgep76.i
  br i1 %exitcond.not.i952, label %.critedge.i953, label %bb.ks, !llvm.loop !598

.critedge.i953:                                   ; preds = %bb.ku, %bb.kt
  %.5.i954 = phi ptr [ %scevgep76.i, %bb.ku ], [ %.4.i, %bb.kt ] ; 2 uses
  %i.bad = ptrtoint ptr %.5.i954 to i64
  %i.bae = ptrtoint ptr %i.azn to i64
  %i.baf = sub i64 %i.bad, %i.bae
  %i.bag = call i64 @parser_encode_length(ptr poison, ptr noundef nonnull %i.azn, i64 noundef %i.baf)
  %i.bah = call i64 @rb_str_new(ptr noundef nonnull %i.azn, i64 noundef %i.bag) #31 ; 2 uses
  store ptr %i.azn, ptr %i.aij, align 8, !tbaa !49
  store ptr %.5.i954, ptr %i.aih, align 8, !tbaa !188
  %i.bai = inttoptr i64 %i.bah to ptr             ; 2 uses
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !13
  %i.bak = and i64 %i.baj, 8192
  %.not.i.i955 = icmp eq i64 %i.bak, 0
  %i.bal = getelementptr i8, ptr %i.bai, i64 24   ; 2 uses
  br i1 %.not.i.i955, label %RSTRING_PTR.exit.i956, label %bb.kv

bb.kv:                                            ; preds = %.critedge.i953
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i956

RSTRING_PTR.exit.i956:                            ; preds = %bb.kv, %.critedge.i953
  %i.ban = phi ptr [ %i.bam, %bb.kv ], [ %i.bal, %.critedge.i953 ]
  call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %i.ban)
  %i.bao = call i64 @rb_str_resize(i64 noundef %i.bah, i64 noundef 0) #31 ; 0 uses
  br label %parser_magic_comment.exit

parser_magic_comment.exit:                        ; preds = %.loopexit.i937, %.critedge4.i, %.backedge.i947, %bb.kr, %.preheader58.i, %bb.jb, %bb.jd, %bb.je, %bb.ko, %.preheader58.i.preheader, %.loopexit, %RSTRING_PTR.exit.i956, %bb.kg, %magic_comment_marker.exit.thread.i, %comment_at_top.exit
  store ptr %i.amf, ptr %i.aij, align 8, !tbaa !49
  %i.bap = load ptr, ptr %i.ail, align 8, !tbaa !426
  store ptr %i.bap, ptr %i.aih, align 8, !tbaa !188
  call fastcc void @parser_dispatch_scan_event(ptr noundef %0, i32 noundef 352, i32 noundef 10559)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.hw, %nextc0.exit.thread1154, %parser_magic_comment.exit
  %.1699 = phi i32 [ 1, %parser_magic_comment.exit ], [ %.0698, %bb.hw ], [ %.0698, %nextc0.exit.thread1154 ] ; 5 uses
  %i.baq = load i32, ptr %i.e, align 8            ; 2 uses
  %i.bar = and i32 %i.baq, -129
  %i.bas = or disjoint i32 %i.bar, %i.aic
  store i32 %i.bas, ptr %i.e, align 8
  %i.bat = load ptr, ptr %i.ais, align 8, !tbaa !189 ; 3 uses
  %i.bau = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bav = and i32 %i.bau, 897
  %.not842 = icmp ne i32 %i.bav, 0
  %i.baw = and i32 %i.bau, 2048
  %.not843 = icmp eq i32 %i.baw, 0
  %i.bax = and i1 %.not842, %.not843              ; 2 uses
  %i.bay = and i32 %i.bau, 2064
  %i.baz = icmp eq i32 %i.bay, 2064
  %or.cond1240 = or i1 %i.baz, %i.bax
  br i1 %or.cond1240, label %bb.lb, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.kw
  %i.bba = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 2 uses
  %i.bbb = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i959.peel = icmp ult ptr %i.bba, %i.bbb
  %i.bbc = and i32 %i.baq, 8
  %.not13.i966.peel = icmp eq i32 %i.bbc, 0
  %or.cond2533 = select i1 %.not.i959.peel, i1 %.not13.i966.peel, i1 false, !prof !566
  br i1 %or.cond2533, label %bb.kx, label %.critedge.i960.peel, !prof !566

bb.kx:                                            ; preds = %.preheader.preheader
  %i.bbd = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.bbe = icmp ugt ptr %i.bbd, inttoptr (i64 1 to ptr)
  br i1 %i.bbe, label %.critedge.i960.peel, label %bb.ky, !prof !205

.critedge.i960.peel:                              ; preds = %bb.kx, %.preheader.preheader
  %i.bbf = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i961.peel = icmp eq i32 %i.bbf, 0
  br i1 %.not14.i961.peel, label %.critedge._crit_edge.i963.peel, label %.loopexit1939

.critedge._crit_edge.i963.peel:                   ; preds = %.critedge.i960.peel
  %.pre.i964.peel = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.ky

bb.ky:                                            ; preds = %.critedge._crit_edge.i963.peel, %bb.kx
  %i.bbg = phi ptr [ %.pre.i964.peel, %.critedge._crit_edge.i963.peel ], [ %i.bba, %bb.kx ] ; 2 uses
  %i.bbh = getelementptr i8, ptr %i.bbg, i64 1    ; 7 uses
  store ptr %i.bbh, ptr %i.aih, align 8, !tbaa !188
  %i.bbi = load i8, ptr %i.bbg, align 1, !tbaa !15
  switch i8 %i.bbi, label %.loopexit1289 [
    i8 13, label %bb.kz
    i8 32, label %.preheader.preheader3012
    i8 9, label %.preheader.preheader3012
    i8 12, label %.preheader.preheader3012
    i8 46, label %.loopexit1290
    i8 11, label %.preheader.preheader3012
    i8 35, label %.loopexit1940
    i8 97, label %.loopexit1941
    i8 111, label %.loopexit1942
    i8 124, label %.loopexit1943
    i8 38, label %.loopexit1944
  ], !prof !599

.preheader.preheader3012:                         ; preds = %bb.la, %bb.kz, %bb.ky, %bb.ky, %bb.ky, %bb.ky
  br label %.preheader

bb.kz:                                            ; preds = %bb.ky
  %i.bbj = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i965.peel = icmp ult ptr %i.bbh, %i.bbj
  br i1 %.not.i.i965.peel, label %bb.la, label %.preheader.preheader3012

bb.la:                                            ; preds = %bb.kz
  %i.bbk = load i8, ptr %i.bbh, align 1, !tbaa !15
  %i.bbl = icmp eq i8 %i.bbk, 10
  br i1 %i.bbl, label %.loopexit1289, label %.preheader.preheader3012

bb.lb:                                            ; preds = %bb.kw
  %.not849 = icmp eq i32 %.1699, 0
  br i1 %.not849, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 351, i32 noundef 10569)
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  br i1 %i.bax, label %.backedge, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bbm = load i16, ptr %i.aix, align 8
  %i.bbn = and i16 %i.bbm, 2
  %.not850 = icmp eq i16 %i.bbn, 0
  br i1 %.not850, label %.backedge, label %.loopexit1297

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader3012
  %i.bbo = phi ptr [ %i.bbh, %.preheader.preheader3012 ], [ %i.bbw, %.preheader.backedge ] ; 2 uses
  %i.bbp = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i959 = icmp ult ptr %i.bbo, %i.bbp
  br i1 %.not.i959, label %bb.lf, label %.critedge.i960, !prof !527

bb.lf:                                            ; preds = %.preheader
  %i.bbq = load i32, ptr %i.e, align 8
  %i.bbr = and i32 %i.bbq, 8
  %.not13.i966 = icmp eq i32 %i.bbr, 0
  br i1 %.not13.i966, label %bb.lg, label %.critedge.i960, !prof !527

bb.lg:                                            ; preds = %bb.lf
  %i.bbs = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.bbt = icmp ugt ptr %i.bbs, inttoptr (i64 1 to ptr)
  br i1 %i.bbt, label %.critedge.i960, label %bb.lh, !prof !205

.critedge.i960:                                   ; preds = %bb.lg, %bb.lf, %.preheader
  %i.bbu = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i961 = icmp eq i32 %i.bbu, 0
  br i1 %.not14.i961, label %.critedge._crit_edge.i963, label %.loopexit1939.thread

.critedge._crit_edge.i963:                        ; preds = %.critedge.i960
  %.pre.i964 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.lh

bb.lh:                                            ; preds = %.critedge._crit_edge.i963, %bb.lg
  %i.bbv = phi ptr [ %.pre.i964, %.critedge._crit_edge.i963 ], [ %i.bbo, %bb.lg ] ; 2 uses
  %i.bbw = getelementptr i8, ptr %i.bbv, i64 1    ; 7 uses
  store ptr %i.bbw, ptr %i.aih, align 8, !tbaa !188
  %i.bbx = load i8, ptr %i.bbv, align 1, !tbaa !15
  switch i8 %i.bbx, label %.loopexit1289 [
    i8 13, label %bb.li
    i8 32, label %.preheader.backedge
    i8 9, label %.preheader.backedge
    i8 12, label %.preheader.backedge
    i8 46, label %.loopexit1290
    i8 11, label %.preheader.backedge
end_hunk_4
begin_hunk_5_@parse_atmark:bb.a
  %i.cn = tail call i32 %i.cm(i32 noundef range(i32 -1, 256) %i.ck, i32 noundef 13, ptr noundef %i.ci) #31, !inline_history !607
  %.not.i.i63 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i63, label %bb.w, label %parser_is_identchar.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !15  ; 2 uses
  %i.cp = icmp ne i8 %i.co, 95
  %.not44 = icmp sgt i8 %i.co, -1
  %or.cond = and i1 %i.cp, %.not44
  br i1 %or.cond, label %..split42_crit_edge, label %parser_is_identchar.exit.thread

..split42_crit_edge:                              ; preds = %bb.w
  %.pre = load i32, ptr %i.bw, align 8
  %.pre75 = load ptr, ptr %i.a, align 8, !tbaa !188
  br label %.split42

.split42:                                         ; preds = %..split42_crit_edge, %bb.u
  %i.cq = phi ptr [ %.pre75, %..split42_crit_edge ], [ %.pre76, %bb.u ] ; 2 uses
  %i.cr = phi i32 [ %.pre, %..split42_crit_edge ], [ %i.ce, %bb.u ]
  %i.cs = and i32 %i.cr, -9
  store i32 %i.cs, ptr %i.bw, align 8
  %i.ct = getelementptr i8, ptr %i.cq, i64 -1     ; 6 uses
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !188
  %i.cu = getelementptr i8, ptr %0, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 5 uses
  %i.cw = icmp ugt ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %.split

bb.x:                                             ; preds = %.split42
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !15
  %i.cy = icmp eq i8 %i.cx, 10
  br i1 %i.cy, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr i8, ptr %i.cq, i64 -2     ; 3 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %i.db = icmp eq i8 %i.da, 13
  br i1 %i.db, label %bb.z, label %.split

bb.z:                                             ; preds = %bb.y
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !188
  br label %.split

.split:                                           ; preds = %parser_set_lex_state.exit..split_crit_edge, %bb.z, %bb.y, %bb.x, %.split42
  %i.dc = phi ptr [ %.pre78, %parser_set_lex_state.exit..split_crit_edge ], [ %i.cz, %bb.z ], [ %i.ct, %bb.y ], [ %i.ct, %bb.x ], [ %i.ct, %.split42 ]
  %i.dd = phi ptr [ %.pre77, %parser_set_lex_state.exit..split_crit_edge ], [ %i.cv, %bb.z ], [ %i.cv, %bb.y ], [ %i.cv, %bb.x ], [ %i.cv, %.split42 ]
  %i.de = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29 ; 4 uses
  %i.dg = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = ptrtoint ptr %i.dc to i64
  %i.dm = sub i64 %i.dl, %i.di
  %i.dn = trunc i64 %i.dm to i32
  store i32 %i.df, ptr %2, align 4, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !54
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.df, ptr %i.dp, align 4, !tbaa !55
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dn, ptr %i.dq, align 4, !tbaa !56
  %.str.858..str.857 = select i1 %.not47.not, ptr @.str.858, ptr @.str.857
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %.str.858..str.857)
  %i.dr = load i32, ptr %i.de, align 4, !tbaa !29
  %i.ds = icmp eq i32 %i.df, %i.dr
  br i1 %i.ds, label %bb.aa, label %parser_show_error_line.exit

bb.aa:                                            ; preds = %.split
  %i.dt = getelementptr i8, ptr %0, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !189
  %i.dv = getelementptr i8, ptr %0, i64 368
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.dw, ptr noundef nonnull readonly %2, i32 noundef %i.df, ptr noundef %i.du)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %.split, %bb.aa
  %i.dx = load ptr, ptr %0, align 8, !tbaa !62
  store i64 289, ptr %i.dx, align 8, !tbaa !15
  %i.dy = load i32, ptr %i.bw, align 8
  %i.dz = and i32 %i.dy, 32
  %.not.i65 = icmp eq i32 %i.dz, 0
  br i1 %.not.i65, label %parser_set_lex_state.exit66, label %bb.ab

bb.ab:                                            ; preds = %parser_show_error_line.exit
  %i.ea = load i32, ptr %i.cc, align 8, !tbaa !67
  %i.eb = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ea, i32 noundef 2, i32 noundef 10317) ; 0 uses
  br label %parser_set_lex_state.exit66

parser_set_lex_state.exit66:                      ; preds = %parser_show_error_line.exit, %bb.ab
  store i32 2, ptr %i.cc, align 8, !tbaa !67
  br label %bb.ak

parser_is_identchar.exit.thread:                  ; preds = %bb.v, %bb.w
  %i.ec = add nsw i32 %.0, -58
  %i.ed = icmp ult i32 %i.ec, -10
  br i1 %i.ed, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %parser_is_identchar.exit.thread
  %i.ee = load i32, ptr %i.bw, align 8
  %i.ef = and i32 %i.ee, -9
  store i32 %i.ef, ptr %i.bw, align 8
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1     ; 6 uses
  store ptr %i.eh, ptr %i.a, align 8, !tbaa !188
  %i.ei = getelementptr i8, ptr %0, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !50 ; 2 uses
  %i.ek = icmp ugt ptr %i.eh, %i.ej
  br i1 %i.ek, label %bb.ad, label %pushback.exit67

bb.ad:                                            ; preds = %bb.ac
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !15
  %i.em = icmp eq i8 %i.el, 10
  br i1 %i.em, label %bb.ae, label %pushback.exit67

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr i8, ptr %i.eg, i64 -2     ; 3 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15
  %i.ep = icmp eq i8 %i.eo, 13
  br i1 %i.ep, label %bb.af, label %pushback.exit67

bb.af:                                            ; preds = %bb.ae
  store ptr %i.en, ptr %i.a, align 8, !tbaa !188
  br label %pushback.exit67

pushback.exit67:                                  ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %i.eq = phi ptr [ %i.eh, %bb.ac ], [ %i.eh, %bb.ad ], [ %i.eh, %bb.ae ], [ %i.en, %bb.af ]
  %i.er = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !29 ; 4 uses
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = ptrtoint ptr %i.eq to i64
  %i.ez = sub i64 %i.ey, %i.ev
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.es, ptr %2, align 4, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ex, ptr %i.fb, align 4, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.es, ptr %i.fc, align 4, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.fa, ptr %i.fd, align 4, !tbaa !56
  %.str.860..str.859 = select i1 %.not47.not, ptr @.str.860, ptr @.str.859
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %.str.860..str.859, i32 noundef %.0)
  %i.fe = load i32, ptr %i.er, align 4, !tbaa !29
  %i.ff = icmp eq i32 %i.es, %i.fe
  br i1 %i.ff, label %bb.ag, label %parser_show_error_line.exit69

bb.ag:                                            ; preds = %pushback.exit67
  %i.fg = getelementptr i8, ptr %0, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !189
  %i.fi = getelementptr i8, ptr %0, i64 368
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.fj, ptr noundef nonnull readonly %2, i32 noundef %i.es, ptr noundef %i.fh)
  br label %parser_show_error_line.exit69

parser_show_error_line.exit69:                    ; preds = %pushback.exit67, %bb.ag
  %i.fk = load ptr, ptr %0, align 8, !tbaa !62
  store i64 289, ptr %i.fk, align 8, !tbaa !15
  %i.fl = load i32, ptr %i.bw, align 8
  %i.fm = and i32 %i.fl, 32
  %.not.i70 = icmp eq i32 %i.fm, 0
  br i1 %.not.i70, label %parser_set_lex_state.exit71, label %bb.ah

bb.ah:                                            ; preds = %parser_show_error_line.exit69
  %i.fn = load i32, ptr %i.cc, align 8, !tbaa !67
  %i.fo = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.fn, i32 noundef 2, i32 noundef 10331) ; 0 uses
  br label %parser_set_lex_state.exit71

parser_set_lex_state.exit71:                      ; preds = %parser_show_error_line.exit69, %bb.ah
  store i32 2, ptr %i.cc, align 8, !tbaa !67
  br label %bb.ak

bb.ai:                                            ; preds = %parser_is_identchar.exit.thread
  %i.fp = tail call fastcc i32 @tokadd_ident(ptr noundef nonnull %0, i32 noundef %.0)
  %.not46 = icmp eq i32 %i.fp, 0
  br i1 %.not46, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load ptr, ptr %i.x, align 8, !tbaa !500
  %i.fr = load i32, ptr %i.w, align 8, !tbaa !570
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.ch, align 8, !tbaa !176
  %i.fu = tail call i64 @rb_intern3(ptr noundef %i.fq, i64 noundef %i.fs, ptr noundef %i.ft) #31
  %i.fv = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %parser_set_lex_state.exit71, %parser_set_lex_state.exit66
  %.041 = phi i32 [ %.040, %parser_set_lex_state.exit66 ], [ %.040, %parser_set_lex_state.exit71 ], [ %.040, %bb.aj ], [ 0, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i32 %.041
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @whole_match_p(ptr %.72.val, ptr %.88.val, ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 33) %2) unnamed_addr #24 {
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
  %i.f = getelementptr i8, ptr %.88.val, i64 -1   ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt ptr %i.f, %.72.val
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.88.val, i64 -2   ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
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
  %i.q = getelementptr i8, ptr %.1, i64 %i.p      ; 3 uses
  %i.r = tail call i32 @strncmp(ptr noundef %0, ptr noundef %i.q, i64 noundef %1) #35
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
  %i.v = load i8, ptr %.0263, align 1, !tbaa !15  ; 2 uses
  %i.w = sext i8 %i.v to i32
  %i.x = icmp ne i8 %i.v, 32
  %i.y = add nsw i32 %i.w, -14
  %i.z = icmp ult i32 %i.y, -5
  %narrow.i.not = select i1 %i.x, i1 %i.z, i1 false
  br i1 %narrow.i.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.0263, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !567

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.h
  %.127 = phi ptr [ %.72.val, %bb.h ], [ %.0263, %.lr.ph ], [ %scevgep, %bb.i ]
  %i.ab = icmp eq ptr %.127, %i.q
  %i.ac = zext i1 %i.ab to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.a, %.critedge
  %.028 = phi i32 [ %i.ac, %.critedge ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.028
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @newtok(ptr nofree noundef captures(none) initializes((136, 140)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  store i32 0, ptr %i.a, align 8, !tbaa !570
  %i.b = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !500  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 140
  store i32 60, ptr %i.d, align 4, !tbaa !509
  %i.e = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !500
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = getelementptr i8, ptr %0, i64 140        ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !509
  %i.i = icmp sgt i32 %i.h, 4096
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 60, ptr %i.g, align 4, !tbaa !509
  %i.j = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.f, i64 noundef 60, i64 noundef 1) #38
  store ptr %i.j, ptr %i.b, align 8, !tbaa !500
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -32768, 32768) i32 @parse_ident(ptr noundef %0, i32 noundef range(i32 -1, 256) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104        ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  %i.c = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.thread240, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp ult i32 %1, 128
  %i.f = getelementptr i8, ptr %0, i64 80         ; 15 uses
  %i.g = getelementptr i8, ptr %0, i64 88         ; 7 uses
  %i.h = getelementptr i8, ptr %0, i64 360        ; 18 uses
  %i.i = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 216        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %spec.select254 = phi i1 [ %i.e, %.lr.ph ], [ %spec.select, %.critedge.backedge ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !188  ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !527

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.h, align 8
  %i.n = and i32 %i.m, 8
  %.not13.i = icmp eq i32 %i.n, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !527

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !528
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.e, !prof !205

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.q = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1        ; 3 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !188
  %i.t = load i8, ptr %i.r, align 1, !tbaa !15    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 13
  br i1 %i.v, label %bb.f, label %nextc0.exit, !prof !205

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !15
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.f, align 8, !tbaa !188
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.u, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 5 uses
  %i.aa = load i32, ptr %i.h, align 8
  %i.ab = and i32 %i.aa, 8
  %.not.i189 = icmp eq i32 %i.ab, 0
  br i1 %.not.i189, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !176 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !604
  %i.aj = tail call i32 %i.ai(i32 noundef range(i32 -1, 256) %i.ag, i32 noundef 13, ptr noundef %i.ae) #31, !inline_history !607
  %.not.i.i190 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i190, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !15  ; 2 uses
  %i.al = icmp ne i8 %i.ak, 95
  %i.am = icmp sgt i8 %i.ak, -1
  %spec.select248 = and i1 %i.al, %i.am
  br i1 %spec.select248, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.an = icmp ult i32 %.011.i, 128
  %spec.select = select i1 %i.an, i1 %spec.select254, i1 false
  %i.ao = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread240, label %bb.b, !llvm.loop !617

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.aq = add nsw i32 %.011.i, 1                  ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 31)
  switch i32 %i.ar, label %parser_is_identchar.exit.thread..thread233_crit_edge [
    i32 32, label %bb.j
    i32 17, label %bb.j
    i32 31, label %parser_is_identchar.exit.thread._crit_edge
    i32 0, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre257.pre = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.o

parser_is_identchar.exit.thread..thread233_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %.thread233

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !188 ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not156 = icmp ult ptr %i.as, %i.at
  br i1 %.not156, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = trunc nuw nsw i32 %.011.i to i8
  %i.ax = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !500
  %i.az = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !570 ; 2 uses
end_hunk_5
