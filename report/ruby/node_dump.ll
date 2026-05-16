inline.NumInlined: 1301
inline.NumDeleted: 14
begin_hunk_0_@dump_node:bb.a
    i32 2, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5193
    i32 3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5193
    i32 28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5193
  ]

rbimpl_RB_TYPE_P_fastpath.exit.i.i5193:           ; preds = %bb.fw, %bb.fw, %bb.fw
  %i.cbo = tail call i64 @rb_class_path(i64 noundef %i.cbf) #4 ; 2 uses
  %i.cbp = load i64, ptr %i.cbk, align 8, !tbaa !11
  %i.cbq = and i64 %i.cbp, 8223
  %or.cond.i5194 = icmp eq i64 %i.cbq, 8194
  br i1 %or.cond.i5194, label %bb.fx, label %rb_dump_literal.exit5196

bb.fx:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5193
  %i.cbr = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.cbo) #4
  br label %rb_dump_literal.exit5196

bb.fy:                                            ; preds = %bb.fw, %.critedge5002
  %i.cbs = tail call i64 @rb_inspect(i64 noundef %i.cbf) #4
  br label %rb_dump_literal.exit5196

rb_dump_literal.exit5196:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5193, %bb.fx, %bb.fy
  %.1.i5195 = phi i64 [ %i.cbs, %bb.fy ], [ %i.cbo, %rbimpl_RB_TYPE_P_fastpath.exit.i.i5193 ], [ %i.cbr, %bb.fx ]
  %i.cbt = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %.1.i5195) #4 ; 0 uses
  %i.cbu = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  br label %common.ret

bb.fz:                                            ; preds = %bb.c
  %.not4582 = icmp eq i32 %2, 0
  br i1 %.not4582, label %.critedge5005, label %.critedge5004

.critedge5004:                                    ; preds = %bb.fz
  %i.cbv = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cbw = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.289, i64 noundef 28) #4 ; 0 uses
  %i.cbx = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cby = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.284, i64 noundef 18) #4 ; 0 uses
  %i.cbz = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cca = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.290, i64 noundef 16) #4 ; 0 uses
  br label %.critedge5005

.critedge5005:                                    ; preds = %bb.fz, %.critedge5004
  %i.ccb = phi i32 [ 9, %.critedge5004 ], [ 3, %bb.fz ]
  %i.ccc = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.ccd = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.ccb, ptr noundef nonnull @.str.286) #4 ; 0 uses
  %i.cce = tail call i64 @rb_node_rational_literal_val(ptr noundef nonnull %3) #4 ; 5 uses
  %i.ccf = icmp eq i64 %i.cce, 0
  %i.ccg = and i64 %i.cce, 7
  %i.cch = icmp ne i64 %i.ccg, 0
  %i.cci = or i1 %i.ccf, %i.cch
  br i1 %i.cci, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %.critedge5005
  %i.ccj = inttoptr i64 %i.cce to ptr             ; 2 uses
  %i.cck = load i64, ptr %i.ccj, align 8, !tbaa !11
  %i.ccl = trunc i64 %i.cck to i32
  %i.ccm = and i32 %i.ccl, 31
  switch i32 %i.ccm, label %bb.gc [
    i32 2, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5197
    i32 3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5197
    i32 28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5197
  ]

rbimpl_RB_TYPE_P_fastpath.exit.i.i5197:           ; preds = %bb.ga, %bb.ga, %bb.ga
  %i.ccn = tail call i64 @rb_class_path(i64 noundef %i.cce) #4 ; 2 uses
  %i.cco = load i64, ptr %i.ccj, align 8, !tbaa !11
  %i.ccp = and i64 %i.cco, 8223
  %or.cond.i5198 = icmp eq i64 %i.ccp, 8194
  br i1 %or.cond.i5198, label %bb.gb, label %rb_dump_literal.exit5200

bb.gb:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5197
  %i.ccq = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.ccn) #4
  br label %rb_dump_literal.exit5200

bb.gc:                                            ; preds = %bb.ga, %.critedge5005
  %i.ccr = tail call i64 @rb_inspect(i64 noundef %i.cce) #4
  br label %rb_dump_literal.exit5200

rb_dump_literal.exit5200:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5197, %bb.gb, %bb.gc
  %.1.i5199 = phi i64 [ %i.ccr, %bb.gc ], [ %i.ccn, %rbimpl_RB_TYPE_P_fastpath.exit.i.i5197 ], [ %i.ccq, %bb.gb ]
  %i.ccs = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %.1.i5199) #4 ; 0 uses
  %i.cct = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  br label %common.ret

bb.gd:                                            ; preds = %bb.c
  %.not4580 = icmp eq i32 %2, 0
  br i1 %.not4580, label %.critedge5008, label %.critedge5007

.critedge5007:                                    ; preds = %bb.gd
  %i.ccu = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.ccv = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.291, i64 noundef 27) #4 ; 0 uses
  %i.ccw = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.ccx = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.284, i64 noundef 18) #4 ; 0 uses
  %i.ccy = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.ccz = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.292, i64 noundef 16) #4 ; 0 uses
  br label %.critedge5008

.critedge5008:                                    ; preds = %bb.gd, %.critedge5007
  %i.cda = phi i32 [ 9, %.critedge5007 ], [ 3, %bb.gd ]
  %i.cdb = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cdc = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cda, ptr noundef nonnull @.str.286) #4 ; 0 uses
  %i.cdd = tail call i64 @rb_node_imaginary_literal_val(ptr noundef nonnull %3) #4 ; 5 uses
  %i.cde = icmp eq i64 %i.cdd, 0
  %i.cdf = and i64 %i.cdd, 7
  %i.cdg = icmp ne i64 %i.cdf, 0
  %i.cdh = or i1 %i.cde, %i.cdg
  br i1 %i.cdh, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %.critedge5008
  %i.cdi = inttoptr i64 %i.cdd to ptr             ; 2 uses
  %i.cdj = load i64, ptr %i.cdi, align 8, !tbaa !11
  %i.cdk = trunc i64 %i.cdj to i32
  %i.cdl = and i32 %i.cdk, 31
  switch i32 %i.cdl, label %bb.gg [
    i32 2, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5201
    i32 3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5201
    i32 28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5201
  ]

rbimpl_RB_TYPE_P_fastpath.exit.i.i5201:           ; preds = %bb.ge, %bb.ge, %bb.ge
  %i.cdm = tail call i64 @rb_class_path(i64 noundef %i.cdd) #4 ; 2 uses
  %i.cdn = load i64, ptr %i.cdi, align 8, !tbaa !11
  %i.cdo = and i64 %i.cdn, 8223
  %or.cond.i5202 = icmp eq i64 %i.cdo, 8194
  br i1 %or.cond.i5202, label %bb.gf, label %rb_dump_literal.exit5204

bb.gf:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5201
  %i.cdp = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.cdm) #4
  br label %rb_dump_literal.exit5204

bb.gg:                                            ; preds = %bb.ge, %.critedge5008
  %i.cdq = tail call i64 @rb_inspect(i64 noundef %i.cdd) #4
  br label %rb_dump_literal.exit5204

rb_dump_literal.exit5204:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5201, %bb.gf, %bb.gg
  %.1.i5203 = phi i64 [ %i.cdq, %bb.gg ], [ %i.cdm, %rbimpl_RB_TYPE_P_fastpath.exit.i.i5201 ], [ %i.cdp, %bb.gf ]
  %i.cdr = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %.1.i5203) #4 ; 0 uses
  %i.cds = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  br label %common.ret

bb.gh:                                            ; preds = %bb.c
  %.not4575 = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %.not4575, label %.critedge5011, label %.critedge5010

.critedge5010:                                    ; preds = %bb.gh
  %i.cdt = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cdu = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.293, i64 noundef 19) #4 ; 0 uses
  %i.cdv = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cdw = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.294, i64 noundef 21) #4 ; 0 uses
  %i.cdx = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cdy = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.295, i64 noundef 19) #4 ; 0 uses
  br label %.critedge5011

.critedge5011:                                    ; preds = %bb.gh, %.critedge5010
  %i.cdz = phi i32 [ 15, %.critedge5010 ], [ 6, %bb.gh ]
  %i.cea = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.ceb = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cdz, ptr noundef nonnull @.str.266) #4 ; 0 uses
  %i.cec = tail call i64 @rb_node_regx_string_val(ptr noundef nonnull %3) #4 ; 5 uses
  %i.ced = icmp eq i64 %i.cec, 0
  %i.cee = and i64 %i.cec, 7
  %i.cef = icmp ne i64 %i.cee, 0
  %i.ceg = or i1 %i.ced, %i.cef
  br i1 %i.ceg, label %bb.gk, label %bb.gi

bb.gi:                                            ; preds = %.critedge5011
  %i.ceh = inttoptr i64 %i.cec to ptr             ; 2 uses
  %i.cei = load i64, ptr %i.ceh, align 8, !tbaa !11
  %i.cej = trunc i64 %i.cei to i32
  %i.cek = and i32 %i.cej, 31
  switch i32 %i.cek, label %bb.gk [
    i32 2, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5205
    i32 3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5205
    i32 28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5205
  ]

rbimpl_RB_TYPE_P_fastpath.exit.i.i5205:           ; preds = %bb.gi, %bb.gi, %bb.gi
  %i.cel = tail call i64 @rb_class_path(i64 noundef %i.cec) #4 ; 2 uses
  %i.cem = load i64, ptr %i.ceh, align 8, !tbaa !11
  %i.cen = and i64 %i.cem, 8223
  %or.cond.i5206 = icmp eq i64 %i.cen, 8194
  br i1 %or.cond.i5206, label %bb.gj, label %rb_dump_literal.exit5208

bb.gj:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5205
  %i.ceo = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.cel) #4
  br label %rb_dump_literal.exit5208

bb.gk:                                            ; preds = %bb.gi, %.critedge5011
  %i.cep = tail call i64 @rb_inspect(i64 noundef %i.cec) #4
  br label %rb_dump_literal.exit5208

rb_dump_literal.exit5208:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5205, %bb.gj, %bb.gk
  %.1.i5207 = phi i64 [ %i.cep, %bb.gk ], [ %i.cel, %rbimpl_RB_TYPE_P_fastpath.exit.i.i5205 ], [ %i.ceo, %bb.gj ]
  %i.ceq = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %.1.i5207) #4 ; 0 uses
  %i.cer = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  %i.ces = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cet = select i1 %.not4575, i32 11, i32 14    ; 3 uses
  %i.ceu = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cet, ptr noundef nonnull @.str.173) #4 ; 0 uses
  %i.cev = getelementptr i8, ptr %3, i64 44
  %i.cew = getelementptr i8, ptr %3, i64 48
  %i.cex = getelementptr i8, ptr %3, i64 52
  %i.cey = getelementptr i8, ptr %3, i64 56
  %i.cez = load i32, ptr %i.cev, align 4, !tbaa !340
  %i.cfa = load i32, ptr %i.cew, align 4, !tbaa !343
  %i.cfb = load i32, ptr %i.cex, align 4, !tbaa !344
  %i.cfc = load i32, ptr %i.cey, align 4, !tbaa !345
  %i.cfd = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.23, i32 noundef %i.cez, i32 noundef %i.cfa, i32 noundef %i.cfb, i32 noundef %i.cfc) #4 ; 0 uses
  %i.cfe = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  %i.cff = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cfg = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cet, ptr noundef nonnull @.str.296) #4 ; 0 uses
  %i.cfh = getelementptr i8, ptr %3, i64 60
  %i.cfi = getelementptr i8, ptr %3, i64 64
  %i.cfj = getelementptr i8, ptr %3, i64 68
  %i.cfk = getelementptr i8, ptr %3, i64 72
  %i.cfl = load i32, ptr %i.cfh, align 4, !tbaa !346
  %i.cfm = load i32, ptr %i.cfi, align 4, !tbaa !347
  %i.cfn = load i32, ptr %i.cfj, align 4, !tbaa !348
  %i.cfo = load i32, ptr %i.cfk, align 4, !tbaa !349
  %i.cfp = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.23, i32 noundef %i.cfl, i32 noundef %i.cfm, i32 noundef %i.cfn, i32 noundef %i.cfo) #4 ; 0 uses
  %i.cfq = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  %i.cfr = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cfs = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cet, ptr noundef nonnull @.str.67) #4 ; 0 uses
  %i.cft = getelementptr i8, ptr %3, i64 76
  %i.cfu = getelementptr i8, ptr %3, i64 80
  %i.cfv = getelementptr i8, ptr %3, i64 84
  %i.cfw = getelementptr i8, ptr %3, i64 88
  %i.cfx = load i32, ptr %i.cft, align 4, !tbaa !350
  %i.cfy = load i32, ptr %i.cfu, align 4, !tbaa !351
  %i.cfz = load i32, ptr %i.cfv, align 4, !tbaa !352
  %i.cga = load i32, ptr %i.cfw, align 4, !tbaa !353
  %i.cgb = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.23, i32 noundef %i.cfx, i32 noundef %i.cfy, i32 noundef %i.cfz, i32 noundef %i.cga) #4 ; 0 uses
  %i.cgc = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  br label %common.ret

bb.gl:                                            ; preds = %bb.c
  %.not4573 = icmp eq i32 %2, 0
  br i1 %.not4573, label %.critedge5014, label %.critedge5013

.critedge5013:                                    ; preds = %bb.gl
  %i.cgd = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cge = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.297, i64 noundef 20) #4 ; 0 uses
  %i.cgf = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cgg = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.298, i64 noundef 22) #4 ; 0 uses
  %i.cgh = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cgi = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.299, i64 noundef 31) #4 ; 0 uses
  br label %.critedge5014

.critedge5014:                                    ; preds = %bb.gl, %.critedge5013
  %i.cgj = phi i32 [ 14, %.critedge5013 ], [ 7, %bb.gl ]
  %i.cgk = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cgl = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.13, i32 noundef %i.cgj, ptr noundef nonnull @.str.66) #4 ; 0 uses
  %i.cgm = tail call i64 @rb_str_cat_cstr(i64 noundef %1, ptr noundef nonnull @.str.12) #4 ; 0 uses
  %i.cgn = getelementptr i8, ptr %3, i64 32
  %i.cgo = inttoptr i64 %1 to ptr
  %i.cgp = getelementptr i8, ptr %i.cgo, i64 16
  %i.cgq = load ptr, ptr %i.cgn, align 8, !tbaa !354
  tail call fastcc void @dump_node(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %i.cgq)
  %i.cgr = load i64, ptr %i.cgp, align 8, !tbaa !28
  %i.cgs = add i64 %i.cgr, -4
  %i.cgt = tail call i64 @rb_str_resize(i64 noundef %1, i64 noundef %i.cgs) #4 ; 0 uses
  br label %common.ret

bb.gm:                                            ; preds = %bb.c
  %.not4567 = icmp eq i32 %2, 0
  br i1 %.not4567, label %.critedge5017, label %.critedge5016

.critedge5016:                                    ; preds = %bb.gm
  %i.cgu = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cgv = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.300, i64 noundef 38) #4 ; 0 uses
  %i.cgw = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cgx = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.278, i64 noundef 21) #4 ; 0 uses
  %i.cgy = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cgz = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.301, i64 noundef 30) #4 ; 0 uses
  br label %.critedge5017

bb.gn:                                            ; preds = %bb.c
  %.not4566 = icmp eq i32 %2, 0
  br i1 %.not4566, label %.critedge5017, label %.critedge5019

.critedge5019:                                    ; preds = %bb.gn
  %i.cha = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chb = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.302, i64 noundef 39) #4 ; 0 uses
  %i.chc = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chd = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.278, i64 noundef 21) #4 ; 0 uses
  %i.che = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chf = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.303, i64 noundef 30) #4 ; 0 uses
  br label %.critedge5017

bb.go:                                            ; preds = %bb.c
  %.not4565 = icmp eq i32 %2, 0
  br i1 %.not4565, label %.critedge5017, label %.critedge5022

.critedge5022:                                    ; preds = %bb.go
  %i.chg = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chh = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.304, i64 noundef 38) #4 ; 0 uses
  %i.chi = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chj = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.278, i64 noundef 21) #4 ; 0 uses
  %i.chk = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chl = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.305, i64 noundef 30) #4 ; 0 uses
  br label %.critedge5017

bb.gp:                                            ; preds = %bb.c
  %.not4564 = icmp eq i32 %2, 0
  br i1 %.not4564, label %.critedge5017, label %.critedge5025

.critedge5025:                                    ; preds = %bb.gp
  %i.chm = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chn = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.306, i64 noundef 38) #4 ; 0 uses
  %i.cho = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chp = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.278, i64 noundef 21) #4 ; 0 uses
  %i.chq = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.chr = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.307, i64 noundef 31) #4 ; 0 uses
  br label %.critedge5017

.critedge5017:                                    ; preds = %bb.gp, %bb.go, %bb.gn, %bb.gm, %.critedge5025, %.critedge5022, %.critedge5019, %.critedge5016
  %i.chs = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %.not4568 = icmp eq i32 %2, 0                   ; 3 uses
  %i.cht = select i1 %.not4568, i32 6, i32 25
  %i.chu = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cht, ptr noundef nonnull @.str.308) #4 ; 0 uses
  %i.chv = tail call i64 @rb_node_dstr_string_val(ptr noundef nonnull %3) #4 ; 5 uses
  %i.chw = icmp eq i64 %i.chv, 0
  %i.chx = and i64 %i.chv, 7
  %i.chy = icmp ne i64 %i.chx, 0
  %i.chz = or i1 %i.chw, %i.chy
  br i1 %i.chz, label %bb.gs, label %bb.gq

bb.gq:                                            ; preds = %.critedge5017
  %i.cia = inttoptr i64 %i.chv to ptr             ; 2 uses
  %i.cib = load i64, ptr %i.cia, align 8, !tbaa !11
  %i.cic = trunc i64 %i.cib to i32
  %i.cid = and i32 %i.cic, 31
  switch i32 %i.cid, label %bb.gs [
    i32 2, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5209
    i32 3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5209
    i32 28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5209
  ]

rbimpl_RB_TYPE_P_fastpath.exit.i.i5209:           ; preds = %bb.gq, %bb.gq, %bb.gq
  %i.cie = tail call i64 @rb_class_path(i64 noundef %i.chv) #4 ; 2 uses
  %i.cif = load i64, ptr %i.cia, align 8, !tbaa !11
  %i.cig = and i64 %i.cif, 8223
  %or.cond.i5210 = icmp eq i64 %i.cig, 8194
  br i1 %or.cond.i5210, label %bb.gr, label %rb_dump_literal.exit5212

bb.gr:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5209
  %i.cih = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.cie) #4
  br label %rb_dump_literal.exit5212

bb.gs:                                            ; preds = %bb.gq, %.critedge5017
  %i.cii = tail call i64 @rb_inspect(i64 noundef %i.chv) #4
  br label %rb_dump_literal.exit5212

rb_dump_literal.exit5212:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i5209, %bb.gr, %bb.gs
  %.1.i5211 = phi i64 [ %i.cii, %bb.gs ], [ %i.cie, %rbimpl_RB_TYPE_P_fastpath.exit.i.i5209 ], [ %i.cih, %bb.gr ]
  %i.cij = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %.1.i5211) #4 ; 0 uses
  %i.cik = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.24, i64 noundef 1) #4 ; 0 uses
  %i.cil = getelementptr i8, ptr %3, i64 48       ; 3 uses
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !356
  %.not4570 = icmp eq ptr %i.cim, null
  br i1 %.not4570, label %common.ret, label %.critedge4866.loopexit5310

.critedge4866.loopexit5310:                       ; preds = %rb_dump_literal.exit5212
  %i.cin = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cio = select i1 %.not4568, i32 16, i32 32
  %i.cip = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.13, i32 noundef %i.cio, ptr noundef nonnull @.str.309) #4 ; 0 uses
  %i.ciq = tail call i64 @rb_str_cat_cstr(i64 noundef %1, ptr noundef nonnull @default_indent) #4 ; 0 uses
  %i.cir = inttoptr i64 %1 to ptr
  %i.cis = getelementptr i8, ptr %i.cir, i64 16   ; 2 uses
  %i.cit = load ptr, ptr %i.cil, align 8, !tbaa !356
  %i.ciu = getelementptr i8, ptr %i.cit, i64 32
  %i.civ = load ptr, ptr %i.ciu, align 8, !tbaa !359
  tail call fastcc void @dump_node(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %i.civ)
  %i.ciw = load i64, ptr %i.cis, align 8, !tbaa !28
  %i.cix = add i64 %i.ciw, -4
  %i.ciy = tail call i64 @rb_str_resize(i64 noundef %1, i64 noundef %i.cix) #4 ; 0 uses
  %i.ciz = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cja = select i1 %.not4568, i32 16, i32 34
  %i.cjb = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.13, i32 noundef %i.cja, ptr noundef nonnull @.str.310) #4 ; 0 uses
  %i.cjc = tail call i64 @rb_str_cat_cstr(i64 noundef %1, ptr noundef nonnull @.str.12) #4 ; 0 uses
  %i.cjd = load ptr, ptr %i.cil, align 8, !tbaa !356
  %i.cje = getelementptr i8, ptr %i.cjd, i64 48
  %i.cjf = load ptr, ptr %i.cje, align 8, !tbaa !361
  tail call fastcc void @dump_node(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %i.cjf)
  %i.cjg = load i64, ptr %i.cis, align 8, !tbaa !28
  %i.cjh = add i64 %i.cjg, -4
  %i.cji = tail call i64 @rb_str_resize(i64 noundef %1, i64 noundef %i.cjh) #4 ; 0 uses
  br label %common.ret

bb.gt:                                            ; preds = %bb.c
  %.not4562 = icmp eq i32 %2, 0
  br i1 %.not4562, label %.critedge5029, label %.critedge5028

.critedge5028:                                    ; preds = %bb.gt
  %i.cjj = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cjk = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.311, i64 noundef 19) #4 ; 0 uses
  %i.cjl = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cjm = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.294, i64 noundef 21) #4 ; 0 uses
  %i.cjn = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cjo = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.312, i64 noundef 18) #4 ; 0 uses
  br label %.critedge5029

.critedge5029:                                    ; preds = %bb.gt, %.critedge5028
  %i.cjp = phi i32 [ 15, %.critedge5028 ], [ 6, %bb.gt ]
  %i.cjq = tail call i64 @rb_str_concat(i64 noundef %0, i64 noundef %1) #4 ; 0 uses
  %i.cjr = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.cjp, ptr noundef nonnull @.str.266) #4 ; 0 uses
  %i.cjs = tail call i64 @rb_node_sym_string_val(ptr noundef nonnull %3) #4 ; 5 uses
  %i.cjt = icmp eq i64 %i.cjs, 0
  %i.cju = and i64 %i.cjs, 7
  %i.cjv = icmp ne i64 %i.cju, 0
  %i.cjw = or i1 %i.cjt, %i.cjv
  br i1 %i.cjw, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %.critedge5029
  %i.cjx = inttoptr i64 %i.cjs to ptr             ; 2 uses
  %i.cjy = load i64, ptr %i.cjx, align 8, !tbaa !11
  %i.cjz = trunc i64 %i.cjy to i32
  %i.cka = and i32 %i.cjz, 31
  switch i32 %i.cka, label %bb.gw [
    i32 2, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5213
    i32 3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5213
    i32 28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i5213
  ]

rbimpl_RB_TYPE_P_fastpath.exit.i.i5213:           ; preds = %bb.gu, %bb.gu, %bb.gu
  %i.ckb = tail call i64 @rb_class_path(i64 noundef %i.cjs) #4 ; 2 uses
  %i.ckc = load i64, ptr %i.cjx, align 8, !tbaa !11
  %i.ckd = and i64 %i.ckc, 8223
  %or.cond.i5214 = icmp eq i64 %i.ckd, 8194
  br i1 %or.cond.i5214, label %bb.gv, label %rb_dump_literal.exit5216

end_hunk_0
