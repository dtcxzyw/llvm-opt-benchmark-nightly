inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@ruby_yyparse:bb.a
bb.at:                                            ; preds = %bb.as
  %i.hn = load i32, ptr %i.aa, align 8, !tbaa !67
  %i.ho = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef 3161) ; 0 uses
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.as, %bb.at
  store i32 1, ptr %i.aa, align 8, !tbaa !67
  call fastcc void @local_push(ptr noundef nonnull %0, i32 noundef 1)
  %i.hp = load i32, ptr %i.e, align 8
  %i.hq = and i32 %i.hp, 4096
  %.not3133 = icmp eq i32 %i.hq, 0
  br i1 %.not3133, label %bb.au, label %fixpos.exit

bb.au:                                            ; preds = %parser_set_lex_state.exit
  %i.hr = call fastcc ptr @init_block_exit(ptr noundef nonnull %0) ; 0 uses
  br label %fixpos.exit

bb.av:                                            ; preds = %yy_reduce_print.exit
  %i.hs = getelementptr i8, ptr %.32937, i64 -8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !15 ; 2 uses
  store ptr %i.ht, ptr %5, align 8, !tbaa !15
  %i.hu = call fastcc ptr @void_stmts(ptr noundef nonnull %0, ptr noundef %i.ht) ; 0 uses
  br label %fixpos.exit

bb.aw:                                            ; preds = %yy_reduce_print.exit
  %i.hv = load ptr, ptr %.32937, align 8, !tbaa !15 ; 5 uses
  %.not3130 = icmp eq ptr %i.hv, null
  br i1 %.not3130, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = load ptr, ptr %i.ay, align 8, !tbaa !68
  %.not3131 = icmp eq ptr %i.hw, null
  br i1 %.not3131, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %.val3164 = load i64, ptr %i.hv, align 8, !tbaa !69
  %i.hx = and i64 %.val3164, 32512
  %i.hy = icmp eq i64 %i.hx, 256
  br i1 %i.hy, label %.preheader, label %.preheader4077

.preheader:                                       ; preds = %bb.ay, %.preheader
  %.02964 = phi ptr [ %i.ia, %.preheader ], [ %i.hv, %bb.ay ] ; 2 uses
  %i.hz = getelementptr i8, ptr %.02964, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !71 ; 2 uses
  %.not3132 = icmp eq ptr %i.ia, null
  br i1 %.not3132, label %bb.az, label %.preheader, !llvm.loop !73

bb.az:                                            ; preds = %.preheader
  %i.ib = getelementptr i8, ptr %.02964, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !74
  br label %.preheader4077

.preheader4077:                                   ; preds = %bb.az, %bb.ay
  %.0.i.ph = phi ptr [ %i.hv, %bb.ay ], [ %i.ic, %bb.az ]
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader4077, %bb.bc
  %.0.i = phi ptr [ %i.ig, %bb.bc ], [ %.0.i.ph, %.preheader4077 ] ; 4 uses
  %.not.i3223 = icmp eq ptr %.0.i, null
  br i1 %.not.i3223, label %remove_begin.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.0.val.i = load i64, ptr %.0.i, align 8, !tbaa !69
  %i.id = and i64 %.0.val.i, 32512
  %i.ie = icmp eq i64 %i.id, 4608
  br i1 %i.ie, label %bb.bc, label %remove_begin.exit

bb.bc:                                            ; preds = %bb.bb
  %i.if = getelementptr i8, ptr %.0.i, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !75 ; 2 uses
  %.not8.i = icmp eq ptr %i.ig, null
  br i1 %.not8.i, label %remove_begin.exit, label %bb.ba, !llvm.loop !77

remove_begin.exit:                                ; preds = %bb.ba, %bb.bb, %bb.bc
  call fastcc void @void_expr(ptr noundef %0, ptr noundef %.0.i)
  %.pre3818 = load ptr, ptr %.32937, align 8, !tbaa !15
  br label %bb.bd

bb.bd:                                            ; preds = %remove_begin.exit, %bb.ax, %bb.aw
  %i.ih = phi ptr [ %.pre3818, %remove_begin.exit ], [ %i.hv, %bb.ax ], [ null, %bb.aw ]
  %i.ii = load ptr, ptr %i.bq, align 8, !tbaa !78
  %i.ij = call fastcc ptr @block_append(ptr noundef %0, ptr noundef %i.ii, ptr noundef %i.ih)
  %i.ik = call fastcc ptr @rb_node_scope_new(ptr noundef %0, ptr noundef null, ptr noundef %i.ij, ptr noundef null, ptr noundef %6)
  store ptr %i.ik, ptr %i.bq, align 8, !tbaa !78
  call fastcc void @local_pop(ptr noundef %0)
  br label %fixpos.exit

bb.be:                                            ; preds = %yy_reduce_print.exit
  %i.il = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6)
  store ptr %i.il, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bf:                                            ; preds = %yy_reduce_print.exit
  %i.im = load ptr, ptr %.32937, align 8, !tbaa !15 ; 2 uses
  %.not.i3224 = icmp eq ptr %i.im, null
  br i1 %.not.i3224, label %newline_node.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bf, %bb.bg
  %.0.i.i = phi ptr [ %i.iq, %bb.bg ], [ %i.im, %bb.bf ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.0.i.i, align 8, !tbaa !69 ; 2 uses
  %i.in = and i64 %.0.val.i.i, 32512
  %i.io = icmp eq i64 %i.in, 4608
  br i1 %i.io, label %bb.bg, label %remove_begin.exit.i

bb.bg:                                            ; preds = %.preheader.i
  %i.ip = getelementptr i8, ptr %.0.i.i, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !75 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.iq, null
  br i1 %.not8.i.i, label %remove_begin.exit.i, label %.preheader.i, !llvm.loop !77

remove_begin.exit.i:                              ; preds = %bb.bg, %.preheader.i
  %i.ir = or i64 %.0.val.i.i, 128
  store i64 %i.ir, ptr %.0.i.i, align 8, !tbaa !69
  br label %newline_node.exit

newline_node.exit:                                ; preds = %bb.bf, %remove_begin.exit.i
  %.0.i3225 = phi ptr [ %.0.i.i, %remove_begin.exit.i ], [ null, %bb.bf ]
  store ptr %.0.i3225, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bh:                                            ; preds = %yy_reduce_print.exit
  %i.is = getelementptr i8, ptr %.32937, i64 -16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !15
  %i.iu = load ptr, ptr %.32937, align 8, !tbaa !15 ; 2 uses
  %.not.i3226 = icmp eq ptr %i.iu, null
  br i1 %.not.i3226, label %newline_node.exit3233, label %.preheader.i3227

.preheader.i3227:                                 ; preds = %bb.bh, %bb.bi
  %.0.i.i3228 = phi ptr [ %i.iy, %bb.bi ], [ %i.iu, %bb.bh ] ; 4 uses
  %.0.val.i.i3229 = load i64, ptr %.0.i.i3228, align 8, !tbaa !69 ; 2 uses
  %i.iv = and i64 %.0.val.i.i3229, 32512
  %i.iw = icmp eq i64 %i.iv, 4608
  br i1 %i.iw, label %bb.bi, label %remove_begin.exit.i3230

bb.bi:                                            ; preds = %.preheader.i3227
  %i.ix = getelementptr i8, ptr %.0.i.i3228, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !75 ; 2 uses
  %.not8.i.i3232 = icmp eq ptr %i.iy, null
  br i1 %.not8.i.i3232, label %remove_begin.exit.i3230, label %.preheader.i3227, !llvm.loop !77

remove_begin.exit.i3230:                          ; preds = %bb.bi, %.preheader.i3227
  %i.iz = or i64 %.0.val.i.i3229, 128
  store i64 %i.iz, ptr %.0.i.i3228, align 8, !tbaa !69
  br label %newline_node.exit3233

newline_node.exit3233:                            ; preds = %bb.bh, %remove_begin.exit.i3230
  %.0.i3231 = phi ptr [ %.0.i.i3228, %remove_begin.exit.i3230 ], [ null, %bb.bh ]
  %i.ja = call fastcc ptr @block_append(ptr noundef %0, ptr noundef %i.it, ptr noundef %.0.i3231)
  store ptr %i.ja, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bj:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @clear_block_exit(ptr noundef nonnull %0, i1 noundef zeroext true)
  %i.jb = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.jb, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bk:                                            ; preds = %yy_reduce_print.exit
  %i.jc = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.jc, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bl:                                            ; preds = %yy_reduce_print.exit
  %i.jd = call fastcc ptr @init_block_exit(ptr noundef nonnull %0)
  store ptr %i.jd, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bm:                                            ; preds = %yy_reduce_print.exit
  %i.je = getelementptr i8, ptr %.32937, i64 -16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !15
  store ptr %i.jf, ptr %i.as, align 8, !tbaa !79
  %i.jg = load ptr, ptr %i.bp, align 8, !tbaa !80
  %i.jh = getelementptr i8, ptr %.32937, i64 -8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !15
  %i.jj = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef %i.ji, ptr noundef %6)
  %i.jk = call fastcc ptr @block_append(ptr noundef nonnull %0, ptr noundef %i.jg, ptr noundef %i.jj)
  store ptr %i.jk, ptr %i.bp, align 8, !tbaa !80
  %i.jl = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6)
  store ptr %i.jl, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bn:                                            ; preds = %yy_reduce_print.exit
  %i.jm = getelementptr i8, ptr %.32937, i64 -8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !15 ; 2 uses
  store ptr %i.jn, ptr %5, align 8, !tbaa !15
  %i.jo = call fastcc ptr @void_stmts(ptr noundef nonnull %0, ptr noundef %i.jn) ; 0 uses
  br label %fixpos.exit

bb.bo:                                            ; preds = %yy_reduce_print.exit
  %i.jp = getelementptr i8, ptr %.32937, i64 -8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !15
  %.not3129 = icmp eq ptr %i.jq, null
  br i1 %.not3129, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.32950, ptr noundef @.str.9)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jr = getelementptr i8, ptr %.32937, i64 -16
  %.val3167 = load i16, ptr %i.jr, align 8
  %i.js = and i16 %.val3167, 768
  %i.jt = icmp eq i16 %i.js, 256
  %i.ju = load i16, ptr %i.y, align 8
  %i.jv = select i1 %i.jt, i16 256, i16 512
  %i.jw = and i16 %i.ju, -769
  %i.jx = or disjoint i16 %i.jv, %i.jw
  store i16 %i.jx, ptr %i.y, align 8
  br label %fixpos.exit

bb.br:                                            ; preds = %yy_reduce_print.exit
  %i.jy = getelementptr i8, ptr %.32937, i64 -32
  %.val3166 = load i16, ptr %i.jy, align 4
  %i.jz = and i16 %.val3166, 768
  %i.ka = icmp eq i16 %i.jz, 256
  %i.kb = load i16, ptr %i.y, align 8
  %i.kc = select i1 %i.ka, i16 256, i16 768
  %i.kd = and i16 %i.kb, -769
  %i.ke = or disjoint i16 %i.kc, %i.kd
  store i16 %i.ke, ptr %i.y, align 8
  br label %fixpos.exit

bb.bs:                                            ; preds = %yy_reduce_print.exit
  %i.kf = getelementptr i8, ptr %.32937, i64 -56
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !15
  %i.kh = getelementptr i8, ptr %.32937, i64 -40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !15
  %i.kj = getelementptr i8, ptr %.32937, i64 -16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !15
  %i.kl = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.km = call fastcc ptr @new_bodystmt(ptr noundef nonnull %0, ptr noundef %i.kg, ptr noundef %i.ki, ptr noundef %i.kk, ptr noundef %i.kl, ptr noundef %6)
  store ptr %i.km, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bt:                                            ; preds = %yy_reduce_print.exit
  %i.kn = getelementptr i8, ptr %.32937, i64 -8
  %.val3165 = load i16, ptr %i.kn, align 4
  %i.ko = and i16 %.val3165, 768
  %i.kp = icmp eq i16 %i.ko, 256
  %i.kq = load i16, ptr %i.y, align 8
  %i.kr = select i1 %i.kp, i16 256, i16 768
  %i.ks = and i16 %i.kq, -769
  %i.kt = or disjoint i16 %i.kr, %i.ks
  store i16 %i.kt, ptr %i.y, align 8
  br label %fixpos.exit

bb.bu:                                            ; preds = %yy_reduce_print.exit
  %i.ku = getelementptr i8, ptr %.32937, i64 -32
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !15
  %i.kw = getelementptr i8, ptr %.32937, i64 -16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !15
  %i.ky = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.kz = call fastcc ptr @new_bodystmt(ptr noundef nonnull %0, ptr noundef %i.kv, ptr noundef %i.kx, ptr noundef null, ptr noundef %i.ky, ptr noundef %6)
  store ptr %i.kz, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bv:                                            ; preds = %yy_reduce_print.exit
  %i.la = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6)
  store ptr %i.la, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.bw:                                            ; preds = %yy_reduce_print.exit
  %i.lb = load ptr, ptr %.32937, align 8, !tbaa !15 ; 2 uses
  %.not.i3234 = icmp eq ptr %i.lb, null
  br i1 %.not.i3234, label %newline_node.exit3241, label %.preheader.i3235

.preheader.i3235:                                 ; preds = %bb.bw, %bb.bx
  %.0.i.i3236 = phi ptr [ %i.lf, %bb.bx ], [ %i.lb, %bb.bw ] ; 4 uses
  %.0.val.i.i3237 = load i64, ptr %.0.i.i3236, align 8, !tbaa !69 ; 2 uses
  %i.lc = and i64 %.0.val.i.i3237, 32512
  %i.ld = icmp eq i64 %i.lc, 4608
  br i1 %i.ld, label %bb.bx, label %remove_begin.exit.i3238

bb.bx:                                            ; preds = %.preheader.i3235
  %i.le = getelementptr i8, ptr %.0.i.i3236, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !75 ; 2 uses
  %.not8.i.i3240 = icmp eq ptr %i.lf, null
  br i1 %.not8.i.i3240, label %remove_begin.exit.i3238, label %.preheader.i3235, !llvm.loop !77

remove_begin.exit.i3238:                          ; preds = %bb.bx, %.preheader.i3235
  %i.lg = or i64 %.0.val.i.i3237, 128
  store i64 %i.lg, ptr %.0.i.i3236, align 8, !tbaa !69
  br label %newline_node.exit3241

newline_node.exit3241:                            ; preds = %bb.bw, %remove_begin.exit.i3238
  %.0.i3239 = phi ptr [ %.0.i.i3236, %remove_begin.exit.i3238 ], [ null, %bb.bw ]
  store ptr %.0.i3239, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.by:                                            ; preds = %yy_reduce_print.exit
  %i.lh = getelementptr i8, ptr %.32937, i64 -16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !15
  %i.lj = load ptr, ptr %.32937, align 8, !tbaa !15 ; 2 uses
  %.not.i3242 = icmp eq ptr %i.lj, null
  br i1 %.not.i3242, label %newline_node.exit3249, label %.preheader.i3243

.preheader.i3243:                                 ; preds = %bb.by, %bb.bz
  %.0.i.i3244 = phi ptr [ %i.ln, %bb.bz ], [ %i.lj, %bb.by ] ; 4 uses
  %.0.val.i.i3245 = load i64, ptr %.0.i.i3244, align 8, !tbaa !69 ; 2 uses
  %i.lk = and i64 %.0.val.i.i3245, 32512
  %i.ll = icmp eq i64 %i.lk, 4608
  br i1 %i.ll, label %bb.bz, label %remove_begin.exit.i3246

bb.bz:                                            ; preds = %.preheader.i3243
  %i.lm = getelementptr i8, ptr %.0.i.i3244, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !75 ; 2 uses
  %.not8.i.i3248 = icmp eq ptr %i.ln, null
  br i1 %.not8.i.i3248, label %remove_begin.exit.i3246, label %.preheader.i3243, !llvm.loop !77

remove_begin.exit.i3246:                          ; preds = %bb.bz, %.preheader.i3243
  %i.lo = or i64 %.0.val.i.i3245, 128
  store i64 %i.lo, ptr %.0.i.i3244, align 8, !tbaa !69
  br label %newline_node.exit3249

newline_node.exit3249:                            ; preds = %bb.by, %remove_begin.exit.i3246
  %.0.i3247 = phi ptr [ %.0.i.i3244, %remove_begin.exit.i3246 ], [ null, %bb.by ]
  %i.lp = call fastcc ptr @block_append(ptr noundef %0, ptr noundef %i.li, ptr noundef %.0.i3247)
  store ptr %i.lp, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.ca:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.32950, ptr noundef @.str.10)
  br label %fixpos.exit

bb.cb:                                            ; preds = %yy_reduce_print.exit
  %i.lq = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.lq, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.cc:                                            ; preds = %yy_reduce_print.exit
  %i.lr = load ptr, ptr %i.as, align 8, !tbaa !79
  store ptr null, ptr %i.as, align 8, !tbaa !79
  store ptr %i.lr, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.cd:                                            ; preds = %yy_reduce_print.exit
  %i.ls = load i32, ptr %.32937, align 8
  store i32 %i.ls, ptr %5, align 8
  %i.lt = load i16, ptr %i.y, align 8
  %i.lu = and i16 %i.lt, -769
  store i16 %i.lu, ptr %i.y, align 8
  br label %fixpos.exit

bb.ce:                                            ; preds = %yy_reduce_print.exit
  %i.lv = load i32, ptr %i.e, align 8
  %i.lw = and i32 %i.lv, 32
  %.not.i3250 = icmp eq i32 %i.lw, 0
  br i1 %.not.i3250, label %parser_set_lex_state.exit3251, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lx = load i32, ptr %i.aa, align 8, !tbaa !67
  %i.ly = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.lx, i32 noundef 4224, i32 noundef 3294) ; 0 uses
  br label %parser_set_lex_state.exit3251

parser_set_lex_state.exit3251:                    ; preds = %bb.ce, %bb.cf
  store i32 4224, ptr %i.aa, align 8, !tbaa !67
  br label %fixpos.exit

bb.cg:                                            ; preds = %yy_reduce_print.exit
  %i.lz = getelementptr i8, ptr %.32937, i64 -16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !15
  %i.mb = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.mc = getelementptr i8, ptr %.32950, i64 -48
  %i.md = call fastcc ptr @rb_node_alias_new(ptr noundef nonnull %0, ptr noundef %i.ma, ptr noundef %i.mb, ptr noundef %6, ptr noundef %i.mc)
  store ptr %i.md, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.ch:                                            ; preds = %yy_reduce_print.exit
  %i.me = getelementptr i8, ptr %.32937, i64 -8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !15
  %i.mg = load i64, ptr %.32937, align 8, !tbaa !15
  %i.mh = getelementptr i8, ptr %.32950, i64 -32
  %i.mi = call fastcc ptr @rb_node_valias_new(ptr noundef nonnull %0, i64 noundef %i.mf, i64 noundef %i.mg, ptr noundef %6, ptr noundef %i.mh)
  store ptr %i.mi, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.ci:                                            ; preds = %yy_reduce_print.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i8 36, ptr %i.d, align 1, !tbaa !15
  %i.mj = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.mk = getelementptr i8, ptr %i.mj, i64 32
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !81
  %i.mm = trunc i64 %i.ml to i8
  store i8 %i.mm, ptr %i.bo, align 1, !tbaa !15
  %i.mn = getelementptr i8, ptr %.32937, i64 -8
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !15
  %i.mp = call i64 @rb_intern2(ptr noundef nonnull %i.d, i64 noundef 2) #33
  %i.mq = getelementptr i8, ptr %.32950, i64 -32
  %i.mr = call fastcc ptr @rb_node_valias_new(ptr noundef nonnull %0, i64 noundef %i.mo, i64 noundef %i.mp, ptr noundef %6, ptr noundef %i.mq)
  store ptr %i.mr, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %fixpos.exit

bb.cj:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.32950, ptr noundef @ruby_yyparse.mesg)
  %i.ms = call fastcc ptr @rb_node_error_new(ptr noundef nonnull %0, ptr noundef nonnull %6)
  store ptr %i.ms, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.ck:                                            ; preds = %yy_reduce_print.exit
  %i.mt = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %i.mv = getelementptr i8, ptr %.32950, i64 -16  ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 4
  store i64 %i.mw, ptr %i.mu, align 8
  %i.mx = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.my = getelementptr i8, ptr %i.mx, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 4 dereferenceable(16) %i.mv, i64 16, i1 false), !tbaa.struct !57
  %i.mz = load ptr, ptr %.32937, align 8, !tbaa !15
  store ptr %i.mz, ptr %5, align 8, !tbaa !15
  br label %fixpos.exit

bb.cl:                                            ; preds = %yy_reduce_print.exit
  %i.na = load ptr, ptr %.32937, align 8, !tbaa !15
  %i.nb = getelementptr i8, ptr %.32937, i64 -16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %bb.cl
  %.0.i3252 = phi ptr [ %i.nc, %bb.cl ], [ %i.ng, %bb.co ] ; 4 uses
  %.not.i3253 = icmp eq ptr %.0.i3252, null
  br i1 %.not.i3253, label %remove_begin.exit3256, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.0.val.i3254 = load i64, ptr %.0.i3252, align 8, !tbaa !69
  %i.nd = and i64 %.0.val.i3254, 32512
  %i.ne = icmp eq i64 %i.nd, 4608
  br i1 %i.ne, label %bb.co, label %remove_begin.exit3256

bb.co:                                            ; preds = %bb.cn
  %i.nf = getelementptr i8, ptr %.0.i3252, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !75 ; 2 uses
  %.not8.i3255 = icmp eq ptr %i.ng, null
  br i1 %.not8.i3255, label %remove_begin.exit3256, label %bb.cm, !llvm.loop !77

remove_begin.exit3256:                            ; preds = %bb.cm, %bb.cn, %bb.co
  %i.nh = getelementptr i8, ptr %.32950, i64 -16
  %i.ni = call fastcc ptr @new_if(ptr noundef %0, ptr noundef %i.na, ptr noundef %.0.i3252, ptr noundef null, ptr noundef %6, ptr noundef %i.nh, ptr noundef nonnull @__const.ruby_yyparse.inheritance_operator_loc, ptr noundef nonnull @__const.ruby_yyparse.inheritance_operator_loc) ; 4 uses
  store ptr %i.ni, ptr %5, align 8, !tbaa !15
  %i.nj = load ptr, ptr %.32937, align 8, !tbaa !15 ; 2 uses
  %i.nk = icmp ne ptr %i.ni, null
  %i.nl = icmp ne ptr %i.nj, null
  %or.cond.i = and i1 %i.nk, %i.nl
  br i1 %or.cond.i, label %nd_line.exit.i, label %fixpos.exit
end_hunk_0
begin_hunk_1_@rb_node_scope_new:bb.a
  %i.cr = add i64 %i.cq, 8
  %i.cs = sub i64 %i.cr, %i.ad
  %diff.check = icmp ult i64 %i.cs, 32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.ct = trunc nuw nsw i64 %n.vec to i32
  %i.cu = add nuw i32 %.0.i.i, %i.ct              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = trunc i64 %index to i32
  %i.cw = add i32 %.0.i.i, %i.cv
  %i.cx = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load = load <2 x i64>, ptr %i.cx, align 8, !tbaa !11
  %wide.load29 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !11
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr [8 x i8], ptr %i.r, i64 %i.cz ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load, ptr %i.da, align 8, !tbaa !11
  store <2 x i64> %wide.load29, ptr %i.db, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.02736.i.ph = phi i32 [ %.0.i.i, %vector.memcheck ], [ %.0.i.i, %vector.scevcheck ], [ %.0.i.i, %.preheader.i.preheader.i ], [ %i.cu, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ], [ %indvars.iv.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.02736.i.prol = phi i32 [ %i.df, %.preheader.i.i.prol ], [ %.02736.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.dd = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11
  %i.df = add i32 %.02736.i.prol, 1               ; 3 uses
  %i.dg = sext i32 %.02736.i.prol to i64
  %i.dh = getelementptr [8 x i8], ptr %i.r, i64 %i.dg
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !213

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa50.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.df, %.preheader.i.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ]
  %.02736.i.unr = phi i32 [ %.02736.i.ph, %.preheader.i.i.preheader ], [ %i.df, %.preheader.i.i.prol ]
  %i.di = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %._crit_edge.i, label %.preheader.i.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.dk = load ptr, ptr %i.ae, align 8, !tbaa !197
  %i.dl = zext nneg i32 %i.cg to i64
  %wide.trip.count54.i = zext nneg i32 %.0.i30.i to i64
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %vtable_included.exit.us40.i, %.lr.ph.split.split.us.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %vtable_included.exit.us40.i ], [ 0, %.lr.ph.split.split.us.i ] ; 2 uses
  %.02736.us37.i = phi i32 [ %.1.us41.i, %vtable_included.exit.us40.i ], [ %.0.i.i, %.lr.ph.split.split.us.i ] ; 3 uses
  %i.dm = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv51.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.us.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.h ], [ 0, %.preheader.i.us.i ] ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv48.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11
  %i.dq = icmp eq i64 %i.dp, %i.dn
  br i1 %i.dq, label %vtable_included.exit.us40.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next49.i, %i.dl
  br i1 %exitcond.not.i.us.i, label %vtable_included.exit.thread.loopexit.us.i, label %bb.g, !llvm.loop !214

vtable_included.exit.us40.i:                      ; preds = %bb.g, %vtable_included.exit.thread.loopexit.us.i
  %.1.us41.i = phi i32 [ %i.dr, %vtable_included.exit.thread.loopexit.us.i ], [ %.02736.us37.i, %bb.g ] ; 2 uses
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %._crit_edge.i, label %.preheader.i.us.i, !llvm.loop !215

vtable_included.exit.thread.loopexit.us.i:        ; preds = %bb.h
  %i.dr = add i32 %.02736.us37.i, 1
  %i.ds = sext i32 %.02736.us37.i to i64
  %i.dt = getelementptr [8 x i8], ptr %i.r, i64 %i.ds
  store i64 %i.dn, ptr %i.dt, align 8, !tbaa !11
  br label %vtable_included.exit.us40.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i.i ], [ %indvars.iv.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.02736.i = phi i32 [ %i.eo, %.preheader.i.i ], [ %.02736.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.du = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !11
  %i.dw = add i32 %.02736.i, 1
  %i.dx = sext i32 %.02736.i to i64
  %i.dy = getelementptr [8 x i8], ptr %i.r, i64 %i.dx
  store i64 %i.dv, ptr %i.dy, align 8, !tbaa !11
  %i.dz = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !11
  %i.ec = add i32 %.02736.i, 2
  %i.ed = sext i32 %i.dw to i64
  %i.ee = getelementptr [8 x i8], ptr %i.r, i64 %i.ed
  store i64 %i.eb, ptr %i.ee, align 8, !tbaa !11
  %i.ef = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !11
  %i.ei = add i32 %.02736.i, 3
  %i.ej = sext i32 %i.ec to i64
  %i.ek = getelementptr [8 x i8], ptr %i.r, i64 %i.ej
  store i64 %i.eh, ptr %i.ek, align 8, !tbaa !11
  %i.el = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.em = getelementptr i8, ptr %i.el, i64 24
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11
  %i.eo = add i32 %.02736.i, 4                    ; 2 uses
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr [8 x i8], ptr %i.r, i64 %i.ep
  store i64 %i.en, ptr %i.eq, align 8, !tbaa !11
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.preheader.i.i, !llvm.loop !216

._crit_edge.i:                                    ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %vtable_included.exit.us40.i, %vtable_included.exit.thread.us.i.prol.loopexit, %vtable_included.exit.thread.us.i, %middle.block, %middle.block44, %ruby_nonempty_memcpy.exit.i
  %.027.lcssa.i = phi i32 [ %.0.i.i, %ruby_nonempty_memcpy.exit.i ], [ %i.cc, %vtable_included.exit.thread.us.i ], [ %.1.us41.i, %vtable_included.exit.us40.i ], [ %i.as, %middle.block44 ], [ %i.cu, %middle.block ], [ %.lcssa.unr, %vtable_included.exit.thread.us.i.prol.loopexit ], [ %.lcssa50.unr, %.preheader.i.i.prol.loopexit ], [ %i.eo, %.preheader.i.i ] ; 2 uses
  %i.er = icmp slt i32 %.027.lcssa.i, %i.l
  br i1 %i.er, label %bb.i, label %local_tbl.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.es = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.et = tail call ptr @rb_ast_resize_latest_local_table(ptr noundef %i.es, i32 noundef %.027.lcssa.i) #33
  br label %local_tbl.exit

local_tbl.exit:                                   ; preds = %vtable_size.exit31.i, %._crit_edge.i, %bb.i
  %.0.i = phi ptr [ null, %vtable_size.exit31.i ], [ %i.et, %bb.i ], [ %i.p, %._crit_edge.i ]
  %i.eu = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.eu, align 8, !tbaa !129
  %i.ev = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 0, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ev, i32 noundef range(i32 0, 115) 0) #33
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.ex = load i32, ptr %4, align 4, !tbaa !51
  %i.ey = sext i32 %i.ex to i64
  %i.ez = load i64, ptr %i.ev, align 8, !tbaa !69
  %i.fa = and i64 %i.ez, 32767
  %i.fb = shl nsw i64 %i.ey, 15
  %i.fc = or disjoint i64 %i.fa, %i.fb
  store i64 %i.fc, ptr %i.ev, align 8, !tbaa !69
  %i.fd = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !217 ; 2 uses
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !217
  %i.fg = getelementptr i8, ptr %i.ev, i64 24
  store i32 %i.fe, ptr %i.fg, align 8, !tbaa !218
  %i.fh = getelementptr i8, ptr %i.ev, i64 32
  store ptr %.0.i, ptr %i.fh, align 8, !tbaa !219
  %i.fi = getelementptr i8, ptr %i.ev, i64 40
  store ptr %2, ptr %i.fi, align 8, !tbaa !220
  %i.fj = getelementptr i8, ptr %i.ev, i64 48
  store ptr %3, ptr %i.fj, align 8, !tbaa !87
  %i.fk = getelementptr i8, ptr %i.ev, i64 56
  store ptr %1, ptr %i.fk, align 8, !tbaa !221
  ret ptr %i.ev
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @block_append(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !tbaa !69
  %i.d = and i64 %i.c, 32512
  %cond = icmp eq i64 %i.d, 256
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.g = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 1, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.g, i32 noundef range(i32 0, 115) 1) #33
  %i.h = getelementptr i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !57
  %i.i = load i32, ptr %i.e, align 8, !tbaa !51
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %i.g, align 8, !tbaa !69
  %i.l = and i64 %i.k, 32767
  %i.m = shl nsw i64 %i.j, 15
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.g, align 8, !tbaa !69
  %i.o = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !217  ; 2 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !217
  %i.r = getelementptr i8, ptr %i.g, i64 24
  store i32 %i.p, ptr %i.r, align 8, !tbaa !218
  %i.s = getelementptr i8, ptr %i.g, i64 32
  store ptr %1, ptr %i.s, align 8, !tbaa !74
  %i.t = getelementptr i8, ptr %i.g, i64 40
  store ptr %i.g, ptr %i.t, align 8, !tbaa !222
  %i.u = getelementptr i8, ptr %i.g, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !71
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !222  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %i.w, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %.pre, %bb.e ], [ %1, %bb.d ]
  %.028 = phi ptr [ %i.w, %bb.e ], [ %i.g, %bb.d ]
  %.027 = phi ptr [ %1, %bb.e ], [ %i.g, %bb.d ]  ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 8
  %i.ab = and i32 %i.aa, 127
  switch i32 %i.ab, label %bb.g [
    i32 46, label %nd_line.exit
    i32 14, label %nd_line.exit
    i32 15, label %nd_line.exit
    i32 16, label %nd_line.exit
    i32 17, label %nd_line.exit
  ]

nd_line.exit:                                     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.ae = load i64, ptr %2, align 8, !tbaa !69
  %i.af = lshr i64 %i.ae, 15
  %i.ag = trunc i64 %i.af to i32
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.ad, i32 noundef %i.ag, ptr noundef nonnull @.str.869) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %nd_line.exit
  %.val = load i64, ptr %2, align 8, !tbaa !69
  %i.ah = and i64 %.val, 32512
  %i.ai = icmp eq i64 %i.ah, 256
  br i1 %i.ai, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert34 = getelementptr i8, ptr %2, i64 40
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8, !tbaa !222
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 288
  %.val.i.i33 = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.al = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i33, i32 noundef range(i32 0, 115) 1, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.al, i32 noundef range(i32 0, 115) 1) #33
  %i.am = getelementptr i8, ptr %i.al, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !57
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !69
  %i.aq = and i64 %i.ap, 32767
  %i.ar = shl nsw i64 %i.ao, 15
  %i.as = or disjoint i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.al, align 8, !tbaa !69
  %i.at = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !217 ; 2 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !217
  %i.aw = getelementptr i8, ptr %i.al, i64 24
  store i32 %i.au, ptr %i.aw, align 8, !tbaa !218
  %i.ax = getelementptr i8, ptr %i.al, i64 32
  store ptr %2, ptr %i.ax, align 8, !tbaa !74
  %i.ay = getelementptr i8, ptr %i.al, i64 40
  store ptr %i.al, ptr %i.ay, align 8, !tbaa !222
  %i.az = getelementptr i8, ptr %i.al, i64 48
  store ptr null, ptr %i.az, align 8, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.ba = phi ptr [ %.pre35, %._crit_edge ], [ %i.al, %bb.h ]
  %.029 = phi ptr [ %2, %._crit_edge ], [ %i.al, %bb.h ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.028, i64 48
  store ptr %.029, ptr %i.bb, align 8, !tbaa !71
  %i.bc = getelementptr i8, ptr %.027, i64 40
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !222
  %i.bd = getelementptr i8, ptr %.027, i64 16
  %i.be = getelementptr i8, ptr %.029, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  store i64 %i.bf, ptr %i.bd, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  %.0 = phi ptr [ %.027, %bb.i ], [ %1, %bb.a ], [ %2, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @local_pop(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @warn_unused_var(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !101
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  tail call fastcc void @local_free(ptr noundef nonnull %0, ptr noundef %i.g)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !121
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !121
  %i.k = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 32
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !111
  %i.p = lshr i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !111
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.j, ptr noundef nonnull @.str.16, i32 noundef 14943)
  %.pre20 = load i32, ptr %i.k, align 8
  %.pre21 = and i32 %.pre20, 32
  %i.q = icmp eq i32 %.pre21, 0
  %i.r = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !111
  %i.t = lshr i64 %i.s, 1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !111
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.t, ptr noundef nonnull @.str.13, i32 noundef 14944)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_begin_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 18, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 18) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !75
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @clear_block_exit(ptr noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %.preheader, label %parser_yyerror.exit23

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %.not2025 = icmp eq ptr %i.d, null
  br i1 %.not2025, label %parser_yyerror.exit23, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 196        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 368        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %parser_yyerror.exit
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %parser_yyerror.exit ] ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 8
  %i.l = and i32 %i.k, 127
  %i.m = getelementptr i8, ptr %i.h, i64 8        ; 10 uses
  switch i32 %i.l, label %bb.g [
    i32 14, label %bb.d
    i32 15, label %bb.e
    i32 16, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.m, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.566)
  %i.n = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !51
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %parser_yyerror.exit.sink.split, label %parser_yyerror.exit

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.m, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.567)
  %i.q = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.r = load i32, ptr %i.m, align 8, !tbaa !51
  %i.s = icmp eq i32 %i.r, %i.q
  br i1 %i.s, label %parser_yyerror.exit.sink.split, label %parser_yyerror.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.m, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.568)
  %i.t = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.u = load i32, ptr %i.m, align 8, !tbaa !51
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %parser_yyerror.exit.sink.split, label %parser_yyerror.exit

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.m, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.569)
  %i.w = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.x = load i32, ptr %i.m, align 4, !tbaa !51
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %bb.h, label %parser_yyerror.exit23

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !189
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.aa, ptr noundef nonnull readonly %i.m, i32 noundef %i.w, ptr noundef %i.z)
  br label %parser_yyerror.exit23

parser_yyerror.exit.sink.split:                   ; preds = %bb.f, %bb.e, %bb.d
  %.sink35 = phi i32 [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.t, %bb.f ]
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !189
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.ac, ptr noundef nonnull readonly %i.m, i32 noundef %.sink35, ptr noundef %i.ab)
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %parser_yyerror.exit.sink.split, %bb.f, %bb.e, %bb.d
  %i.ad = getelementptr i8, ptr %i.h, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85 ; 2 uses
  %.not20 = icmp eq ptr %i.ae, null
  br i1 %.not20, label %parser_yyerror.exit23, label %bb.c, !llvm.loop !223

parser_yyerror.exit23:                            ; preds = %parser_yyerror.exit, %.preheader, %bb.h, %bb.g, %bb.b
  %i.af = getelementptr i8, ptr %i.b, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !83
  %i.ag = getelementptr i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %parser_yyerror.exit23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_yyerror(ptr noundef nonnull captures(none) %0, ptr noundef nonnull readonly captures(address_is_null) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.561, ptr noundef nonnull %2)
  %i.a = getelementptr i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !51
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %parser_show_error_line.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.g = getelementptr i8, ptr %0, i64 368
  %i.h = load i64, ptr %i.g, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.h, ptr noundef nonnull readonly %1, i32 noundef %i.b, ptr noundef %i.f)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_bodystmt(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %3, null
  %i.a = select i1 %.not23, ptr %2, ptr %3
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val25 = load i64, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.e = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 19, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.e, i32 noundef range(i32 0, 115) 19) #33
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store i64 %.val, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.e, i64 16
  store i64 %.val25, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = load i64, ptr %i.e, align 8, !tbaa !69
  %i.h = and i64 %i.g, 32767
  %i.i = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !217  ; 2 uses
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !217
  %i.l = getelementptr i8, ptr %i.e, i64 24
  store i32 %i.j, ptr %i.l, align 8, !tbaa !218
  %i.m = getelementptr i8, ptr %i.e, i64 32
  store ptr %1, ptr %i.m, align 8, !tbaa !224
  %i.n = getelementptr i8, ptr %i.e, i64 40
  store ptr %2, ptr %i.n, align 8, !tbaa !226
  %i.o = getelementptr i8, ptr %i.e, i64 48
  store ptr %3, ptr %i.o, align 8, !tbaa !227
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !228
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 15
  %i.t = or disjoint i64 %i.s, %i.h
  store i64 %i.t, ptr %i.e, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %0, i64 288
  %.val.i.i26 = load ptr, ptr %i.u, align 8, !tbaa !129
  %i.v = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i26, i32 noundef range(i32 0, 115) 21, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #33 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.v, i32 noundef range(i32 0, 115) 21) #33
  %i.w = getelementptr i8, ptr %i.v, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !57
  %i.x = load i32, ptr %5, align 4, !tbaa !51
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr %i.v, align 8, !tbaa !69
  %i.aa = and i64 %i.z, 32767
  %i.ab = shl nsw i64 %i.y, 15
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !69
  %i.ad = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !217
  %i.ag = getelementptr i8, ptr %i.v, i64 24
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !218
  %i.ah = getelementptr i8, ptr %i.v, i64 32
  store ptr %.0, ptr %i.ah, align 8, !tbaa !229
  %i.ai = getelementptr i8, ptr %i.v, i64 40
  store ptr %4, ptr %i.ai, align 8, !tbaa !231
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.v, %bb.d ], [ %.0, %bb.c ]   ; 4 uses
  %i.aj = icmp ne ptr %.1, null
  %i.ak = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %nd_line.exit.i, label %fixpos.exit

nd_line.exit.i:                                   ; preds = %bb.e
  %i.al = load i64, ptr %1, align 8, !tbaa !69
  %i.am = shl i64 %i.al, 17
  %i.an = load i64, ptr %.1, align 8, !tbaa !69
  %i.ao = and i64 %i.an, 32767
  %i.ap = ashr exact i64 %i.am, 17
  %i.aq = and i64 %i.ap, -32768
  %i.ar = or disjoint i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %.1, align 8, !tbaa !69
  br label %fixpos.exit

fixpos.exit:                                      ; preds = %bb.e, %nd_line.exit.i
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_alias_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 82, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 82) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %3, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !232
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !234
  %i.p = getelementptr i8, ptr %i.b, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_valias_new(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 83, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 83) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %3, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
end_hunk_1
begin_hunk_2_@rb_parser_internal_id:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !195
  br label %vtable_size.exit

vtable_size.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147  ; 2 uses
  %i.i = icmp ult ptr %i.h, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %vtable_size.exit3, label %bb.c

bb.c:                                             ; preds = %vtable_size.exit
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !195
  br label %vtable_size.exit3

vtable_size.exit3:                                ; preds = %vtable_size.exit, %bb.c
  %.0.i2 = phi i32 [ %i.k, %bb.c ], [ 0, %vtable_size.exit ]
  %i.l = add i32 %.0.i2, %.0.i
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i64 @rb_make_temporary_id(i64 noundef %i.m) #33
  ret i64 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_args_aux_new(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 72, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 72) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i64, ptr %i.b, align 8, !tbaa !69
  %i.e = and i64 %i.d, 32767
  store i64 %i.e, ptr %i.b, align 8, !tbaa !69
  %i.f = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !217  ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !217
  %i.i = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.g, ptr %i.i, align 8, !tbaa !218
  %i.j = getelementptr i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.j, align 8, !tbaa !400
  %i.k = getelementptr i8, ptr %i.b, i64 40
  store i32 %2, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr i8, ptr %i.b, i64 48
  store ptr null, ptr %i.l, align 8, !tbaa !132
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_dvar_new(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 49, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 49) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !401
  ret ptr %i.b
}

declare ptr @rb_ast_new_local_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_nd_value(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !69
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127                        ; 2 uses
  switch i32 %i.d, label %bb.j [
    i32 29, label %bb.b
    i32 27, label %bb.c
    i32 28, label %bb.d
    i32 25, label %bb.e
    i32 26, label %bb.f
    i32 24, label %bb.g
    i32 30, label %bb.h
    i32 113, label %parser_node_name.exit
    i32 114, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !272
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.f, align 8, !tbaa !273
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.g, align 8, !tbaa !274
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.h, align 8, !tbaa !275
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.i, align 8, !tbaa !276
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.j, align 8, !tbaa !182
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 40
  store ptr %2, ptr %i.k, align 8, !tbaa !277
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %parser_node_name.exit

bb.j:                                             ; preds = %bb.a
  %i.l = tail call ptr @ruby_node_name(i32 noundef range(i32 0, 128) %i.d) #33
  br label %parser_node_name.exit

parser_node_name.exit:                            ; preds = %bb.a, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.l, %bb.j ], [ @.str.563, %bb.i ], [ @.str.562, %bb.a ]
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.577, ptr noundef %.0.i)
  br label %bb.k

bb.k:                                             ; preds = %parser_node_name.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_for_masgn_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 13, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 13) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !403
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_args(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef returned captures(address_is_null, ret: address, provenance) %5, ptr noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 32
  %i.b = getelementptr i8, ptr %5, i64 104
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq i64 %3, 0
  br i1 %.not31, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %5, i64 8          ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.e, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.930)
  %i.f = getelementptr i8, ptr %0, i64 196
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29   ; 2 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !51
  %i.i = icmp eq i32 %i.h, %i.g
  br i1 %i.i, label %bb.d, label %parser_yyerror.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.l = getelementptr i8, ptr %0, i64 368
  %i.m = load i64, ptr %i.l, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.m, ptr noundef nonnull readonly %i.e, i32 noundef %i.g, ptr noundef %i.k)
  br label %parser_yyerror.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %.028 = phi i64 [ %3, %bb.a ], [ 42, %bb.b ]
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !130
  %i.p = getelementptr i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ %i.o, %bb.f ], [ 0, %bb.e ]
  %i.r = phi ptr [ %i.q, %bb.f ], [ null, %bb.e ]
  %i.s = getelementptr i8, ptr %5, i64 48
  store i32 %.sink, ptr %i.s, align 8, !tbaa !154
  store ptr %i.r, ptr %i.a, align 8, !tbaa !157
  %.not33 = icmp eq ptr %4, null
  br i1 %.not33, label %.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.t = getelementptr i8, ptr %4, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !130
  %i.v = getelementptr i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132
  %i.x = getelementptr i8, ptr %4, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !400
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.g
  %.sink39 = phi i32 [ %i.u, %bb.g ], [ 0, %.critedge ]
  %.sink38 = phi ptr [ %i.w, %bb.g ], [ null, %.critedge ]
  %i.z = phi i64 [ %i.y, %bb.g ], [ 0, %.critedge ]
  %i.aa = getelementptr i8, ptr %5, i64 52
  store i32 %.sink39, ptr %i.aa, align 4, !tbaa !158
  %i.ab = getelementptr i8, ptr %5, i64 40
  store ptr %.sink38, ptr %i.ab, align 8, !tbaa !159
  %i.ac = getelementptr i8, ptr %5, i64 56
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !160
  %i.ad = getelementptr i8, ptr %5, i64 64
  store i64 %.028, ptr %i.ad, align 8, !tbaa !161
  %i.ae = getelementptr i8, ptr %5, i64 96
  store ptr %2, ptr %i.ae, align 8, !tbaa !162
  %i.af = getelementptr i8, ptr %5, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !57
  %i.ag = load i32, ptr %6, align 4, !tbaa !51
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr %5, align 8, !tbaa !69
  %i.aj = and i64 %i.ai, 32767
  %i.ak = shl nsw i64 %i.ah, 15
  %i.al = or disjoint i64 %i.aj, %i.ak
  store i64 %i.al, ptr %5, align 8, !tbaa !69
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.d, %bb.c, %.thread
  ret ptr %5
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_args_tail(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288        ; 3 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 71, i64 noundef range(i64 32, 129) 112, i64 noundef 8) #33 ; 12 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 71) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i64, ptr %i.b, align 8, !tbaa !69
  %i.e = and i64 %i.d, 32767
  store i64 %i.e, ptr %i.b, align 8, !tbaa !69
  %i.f = getelementptr i8, ptr %0, i64 296        ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !217  ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !217
  %i.i = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.g, ptr %i.i, align 8, !tbaa !218
  %i.j = getelementptr i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.j, i8 noundef 0, i64 noundef 80, i1 noundef false) #33
  %i.k = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 512
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 72
  store i64 %3, ptr %i.n, align 8, !tbaa !405
  %i.o = getelementptr i8, ptr %i.b, i64 80
  store ptr %1, ptr %i.o, align 8, !tbaa !406
  %.not68 = icmp eq ptr %1, null
  br i1 %.not68, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !198  ; 2 uses
  %i.s = icmp ult ptr %i.r, inttoptr (i64 2 to ptr)
  br i1 %i.s, label %vtable_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !195
  br label %vtable_size.exit.i

vtable_size.exit.i:                               ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = getelementptr i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147  ; 2 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %rb_parser_internal_id.exit, label %bb.e

bb.e:                                             ; preds = %vtable_size.exit.i
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !195
  br label %rb_parser_internal_id.exit

rb_parser_internal_id.exit:                       ; preds = %vtable_size.exit.i, %bb.e
  %.0.i2.i = phi i32 [ %i.z, %bb.e ], [ 0, %vtable_size.exit.i ]
  %i.aa = add i32 %.0.i2.i, %.0.i.i
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call i64 @rb_make_temporary_id(i64 noundef %i.ab) #33
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !198 ; 5 uses
  %.not70 = icmp eq i64 %3, 0
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_parser_internal_id.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !197
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !195
  %i.ai = add i32 %i.ah, -1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_parser_internal_id.exit
  %.059 = phi i64 [ %i.al, %bb.f ], [ 0, %rb_parser_internal_id.exit ] ; 2 uses
  %i.am = icmp ne i64 %.059, 0                    ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp ne i64 %2, 0                       ; 2 uses
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.an, %i.ap            ; 4 uses
  %i.ar = load i32, ptr %i.k, align 8
  %i.as = and i32 %i.ar, 32
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.932, i32 noundef 14470, ptr noundef nonnull @.str.931, ptr noundef %i.ae, i32 noundef range(i32 0, 3) %i.aq)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = getelementptr i8, ptr %i.ae, i64 8      ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !195 ; 3 uses
  %i.av = icmp slt i32 %i.au, %i.aq
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.933, i32 noundef %i.au, i32 noundef range(i32 0, 3) %i.aq)
  %.pre = load i32, ptr %i.at, align 8, !tbaa !195
  br label %vtable_pop_gen.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = sub nsw i32 %i.au, %i.aq                ; 2 uses
  store i32 %i.aw, ptr %i.at, align 8, !tbaa !195
  br label %vtable_pop_gen.exit

vtable_pop_gen.exit:                              ; preds = %bb.j, %bb.k
  %i.ax = phi i32 [ %.pre, %bb.j ], [ %i.aw, %bb.k ]
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !197
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %vtable_pop_gen.exit, %get_nd_value.exit
  %.05886 = phi ptr [ %1, %vtable_pop_gen.exit ], [ %i.bz, %get_nd_value.exit ] ; 2 uses
  %.06085 = phi ptr [ %i.ba, %vtable_pop_gen.exit ], [ %spec.select, %get_nd_value.exit ]
  %.06284 = phi ptr [ %i.ba, %vtable_pop_gen.exit ], [ %i.bx, %get_nd_value.exit ]
  %i.bb = getelementptr i8, ptr %.05886, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !407 ; 8 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !69
  %i.be = trunc i64 %i.bd to i32
  %i.bf = lshr i32 %i.be, 8
  %i.bg = and i32 %i.bf, 127                      ; 2 uses
  switch i32 %i.bg, label %bb.u [
    i32 27, label %bb.m
    i32 28, label %bb.n
end_hunk_2
begin_hunk_3_@gettable:bb.a
  %i.fk = getelementptr i8, ptr %i.fj, i64 56     ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !169
  %.not102 = icmp eq ptr %i.fl, null
  br i1 %.not102, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !169
  br label %bb.ar

dyna_in_block.exit127.thread:                     ; preds = %dyna_in_block.exit123.thread, %bb.ae, %bb.ad, %dyna_in_block.exit127
  %i.fm = call fastcc ptr @rb_node_vcall_new(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2)
  br label %bb.ar

bb.am:                                            ; preds = %bb.k
  %i.fn = getelementptr i8, ptr %0, i64 288
  %.val.i.i128 = load ptr, ptr %i.fn, align 8, !tbaa !129
  %i.fo = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i128, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.fo, i32 noundef range(i32 0, 115) 50) #33
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.fq = load i32, ptr %2, align 4, !tbaa !51
  %i.fr = sext i32 %i.fq to i64
  %i.fs = load i64, ptr %i.fo, align 8, !tbaa !69
  %i.ft = and i64 %i.fs, 32767
  %i.fu = shl nsw i64 %i.fr, 15
  %i.fv = or disjoint i64 %i.ft, %i.fu
  store i64 %i.fv, ptr %i.fo, align 8, !tbaa !69
  %i.fw = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !217 ; 2 uses
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !217
  %i.fz = getelementptr i8, ptr %i.fo, i64 24
  store i32 %i.fx, ptr %i.fz, align 8, !tbaa !218
  %i.ga = getelementptr i8, ptr %i.fo, i64 32
  store i64 %1, ptr %i.ga, align 8, !tbaa !454
  br label %bb.ar

bb.an:                                            ; preds = %bb.k
  %i.gb = getelementptr i8, ptr %0, i64 288
  %.val.i.i129 = load ptr, ptr %i.gb, align 8, !tbaa !129
  %i.gc = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i129, i32 noundef range(i32 0, 115) 51, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.gc, i32 noundef range(i32 0, 115) 51) #33
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.ge = load i32, ptr %2, align 4, !tbaa !51
  %i.gf = sext i32 %i.ge to i64
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !69
  %i.gh = and i64 %i.gg, 32767
  %i.gi = shl nsw i64 %i.gf, 15
  %i.gj = or disjoint i64 %i.gh, %i.gi
  store i64 %i.gj, ptr %i.gc, align 8, !tbaa !69
  %i.gk = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !217 ; 2 uses
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !217
  %i.gn = getelementptr i8, ptr %i.gc, i64 24
  store i32 %i.gl, ptr %i.gn, align 8, !tbaa !218
  %i.go = getelementptr i8, ptr %i.gc, i64 32
  store i64 %1, ptr %i.go, align 8, !tbaa !456
  br label %bb.ar

bb.ao:                                            ; preds = %bb.k
  %i.gp = getelementptr i8, ptr %0, i64 288
  %.val.i.i130 = load ptr, ptr %i.gp, align 8, !tbaa !129
  %i.gq = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i130, i32 noundef range(i32 0, 115) 52, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.gq, i32 noundef range(i32 0, 115) 52) #33
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.gs = load i32, ptr %2, align 4, !tbaa !51
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr %i.gq, align 8, !tbaa !69
  %i.gv = and i64 %i.gu, 32767
  %i.gw = shl nsw i64 %i.gt, 15
  %i.gx = or disjoint i64 %i.gv, %i.gw
  store i64 %i.gx, ptr %i.gq, align 8, !tbaa !69
  %i.gy = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !217 ; 2 uses
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !217
  %i.hb = getelementptr i8, ptr %i.gq, i64 24
  store i32 %i.gz, ptr %i.hb, align 8, !tbaa !218
  %i.hc = getelementptr i8, ptr %i.gq, i64 32
  store i64 %1, ptr %i.hc, align 8, !tbaa !458
  br label %bb.ar

bb.ap:                                            ; preds = %bb.k
  %i.hd = getelementptr i8, ptr %0, i64 288
  %.val.i.i131 = load ptr, ptr %i.hd, align 8, !tbaa !129
  %i.he = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i131, i32 noundef range(i32 0, 115) 53, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.he, i32 noundef range(i32 0, 115) 53) #33
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.hg = load i32, ptr %2, align 4, !tbaa !51
  %i.hh = sext i32 %i.hg to i64
  %i.hi = load i64, ptr %i.he, align 8, !tbaa !69
  %i.hj = and i64 %i.hi, 32767
  %i.hk = shl nsw i64 %i.hh, 15
  %i.hl = or disjoint i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.he, align 8, !tbaa !69
  %i.hm = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !217 ; 2 uses
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !217
  %i.hp = getelementptr i8, ptr %i.he, i64 24
  store i32 %i.hn, ptr %i.hp, align 8, !tbaa !218
  %i.hq = getelementptr i8, ptr %i.he, i64 32
  store i64 %1, ptr %i.hq, align 8, !tbaa !460
  br label %bb.ar

bb.aq:                                            ; preds = %bb.k
  %i.hr = tail call i64 @rb_id2str(i64 noundef %1) #33
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.872, i64 noundef %i.hr)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.al, %bb.af, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.o, %bb.p, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %dyna_in_block.exit127.thread, %bb.ah, %bb.v, %bb.s, %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.aq ], [ %i.cj, %bb.j ], [ %i.du, %bb.s ], [ %i.dz, %bb.v ], [ null, %bb.o ], [ null, %bb.z ], [ %i.fm, %dyna_in_block.exit127.thread ], [ %i.eo, %bb.ab ], [ null, %bb.ah ], [ null, %bb.af ], [ %i.fo, %bb.am ], [ %i.gc, %bb.an ], [ %i.gq, %bb.ao ], [ %i.he, %bb.ap ], [ %i.c, %bb.b ], [ %i.q, %bb.c ], [ %i.ad, %bb.d ], [ %i.aq, %bb.e ], [ %i.bh, %bb.h ], [ %i.bw, %bb.i ], [ null, %bb.p ], [ null, %bb.aa ], [ %i.eo, %bb.ac ], [ %i.fi, %bb.al ], [ %i.fi, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_errinfo_new(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 98, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #33 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 98) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %1, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_str_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 63) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !444
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @evstr2dstr(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !69
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 17152
  br i1 %i.b, label %list_append.exit, label %bb.b

list_append.exit:                                 ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.f = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #35 ; 5 uses
  %i.g = tail call noalias nonnull dereferenceable(1) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 1) #35 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 1, !tbaa !15
  store i32 0, ptr %i.f, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.l = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i.i, i32 noundef range(i32 0, 115) 64, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.l, i32 noundef range(i32 0, 115) 64) #33
  %i.m = getelementptr i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !57
  %i.n = load i32, ptr %i.c, align 8, !tbaa !51
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr %i.l, align 8, !tbaa !69
  %i.q = and i64 %i.p, 32767
  %i.r = shl nsw i64 %i.o, 15
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.l, align 8, !tbaa !69
  %i.t = getelementptr i8, ptr %0, i64 296        ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !217  ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !217
  %i.w = getelementptr i8, ptr %i.l, i64 24
  store i32 %i.u, ptr %i.w, align 8, !tbaa !218
  %i.x = getelementptr i8, ptr %i.l, i64 32
  store ptr %i.f, ptr %i.x, align 8, !tbaa !446
  %i.y = getelementptr i8, ptr %i.l, i64 40
  %i.z = getelementptr i8, ptr %i.l, i64 48       ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !449
  store i64 2, ptr %i.y, align 8, !tbaa !15
  %.val.i.i21.i = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.aa = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.aa, i32 noundef range(i32 0, 115) 43) #33
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !57
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !51
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !69
  %i.af = and i64 %i.ae, 32767
  %i.ag = shl nsw i64 %i.ad, 15
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !69
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !217 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !217
  %i.ak = getelementptr i8, ptr %i.aa, i64 24
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !218
  %i.al = getelementptr i8, ptr %i.aa, i64 32
  store ptr %1, ptr %i.al, align 8, !tbaa !184
  %i.am = getelementptr i8, ptr %i.aa, i64 40
  %i.an = getelementptr i8, ptr %i.aa, i64 48
  store ptr null, ptr %i.an, align 8, !tbaa !186
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !186
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr i8, ptr %i.l, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8
  store i64 %i.aq, ptr %i.ao, align 8
  br label %bb.b

bb.b:                                             ; preds = %list_append.exit, %bb.a
  %.0 = phi ptr [ %i.l, %list_append.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @literal_concat(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not96 = icmp eq ptr %2, null
  br i1 %.not96, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i64, ptr %1, align 8, !tbaa !69
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127                        ; 2 uses
  %i.e = icmp eq i32 %i.d, 67
  br i1 %i.e, label %list_append.exit, label %bb.d

list_append.exit:                                 ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176
  %i.h = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #35 ; 5 uses
  %i.i = tail call noalias nonnull dereferenceable(1) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 1) #35 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !23
  store i8 0, ptr %i.i, align 1, !tbaa !15
  store i32 0, ptr %i.h, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.n = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i.i, i32 noundef range(i32 0, 115) 64, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.n, i32 noundef range(i32 0, 115) 64) #33
  %i.o = getelementptr i8, ptr %i.n, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.p = load i32, ptr %3, align 4, !tbaa !51
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr %i.n, align 8, !tbaa !69
  %i.s = and i64 %i.r, 32767
  %i.t = shl nsw i64 %i.q, 15
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.n, align 8, !tbaa !69
  %i.v = getelementptr i8, ptr %0, i64 296        ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !217  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !217
  %i.y = getelementptr i8, ptr %i.n, i64 24
  store i32 %i.w, ptr %i.y, align 8, !tbaa !218
  %i.z = getelementptr i8, ptr %i.n, i64 32
  store ptr %i.h, ptr %i.z, align 8, !tbaa !446
  %i.aa = getelementptr i8, ptr %i.n, i64 40
  %i.ab = getelementptr i8, ptr %i.n, i64 48      ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !449
  store i64 2, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val.i.i21.i = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.ad = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ad, i32 noundef range(i32 0, 115) 43) #33
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !57
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !51
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.ai = and i64 %i.ah, 32767
  %i.aj = shl nsw i64 %i.ag, 15
  %i.ak = or disjoint i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !69
  %i.al = load i32, ptr %i.v, align 8, !tbaa !217 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.v, align 8, !tbaa !217
  %i.an = getelementptr i8, ptr %i.ad, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !218
  %i.ao = getelementptr i8, ptr %i.ad, i64 32
  store ptr %1, ptr %i.ao, align 8, !tbaa !184
  %i.ap = getelementptr i8, ptr %i.ad, i64 40
  %i.aq = getelementptr i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !186
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !186
  store ptr %i.ad, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr i8, ptr %i.n, i64 16
  %i.as = getelementptr i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8
  store i64 %i.at, ptr %i.ar, align 8
  br label %bb.d

bb.d:                                             ; preds = %list_append.exit, %bb.c
  %.087 = phi ptr [ %i.n, %list_append.exit ], [ %1, %bb.c ] ; 29 uses
  %.085 = phi i32 [ 64, %list_append.exit ], [ %i.d, %bb.c ] ; 5 uses
  %i.au = getelementptr i8, ptr %0, i64 148
  %i.av = load i32, ptr %i.au, align 4, !tbaa !177
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  switch i32 %.085, label %bb.i [
    i32 63, label %bb.f
    i32 64, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr i8, ptr %0, i64 288
  %.val105 = load ptr, ptr %i.ax, align 8, !tbaa !129
  %i.ay = tail call ptr @rb_ast_newnode(ptr noundef %.val105, i32 noundef 64, i64 noundef 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ay, i32 noundef 64) #33
  %i.az = load i64, ptr %.087, align 8, !tbaa !69 ; 2 uses
  %i.ba = and i64 %i.az, 128
  %.not.i.i = icmp eq i64 %i.ba, 0
  %.pre8.i.i = load i64, ptr %i.ay, align 8, !tbaa !69 ; 2 uses
  br i1 %.not.i.i, label %str2dstr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = or i64 %.pre8.i.i, 128                  ; 2 uses
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !69
  %.pre.i.i = load i64, ptr %.087, align 8, !tbaa !69
  br label %str2dstr.exit

str2dstr.exit:                                    ; preds = %bb.f, %bb.g
  %i.bc = phi i64 [ %i.bb, %bb.g ], [ %.pre8.i.i, %bb.f ]
  %i.bd = phi i64 [ %.pre.i.i, %bb.g ], [ %i.az, %bb.f ]
  %i.be = shl i64 %i.bd, 17
  %i.bf = and i64 %i.bc, 32767
  %i.bg = ashr exact i64 %i.be, 17
  %i.bh = and i64 %i.bg, -32768
  %i.bi = or disjoint i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.ay, align 8, !tbaa !69
  %i.bj = getelementptr i8, ptr %i.ay, i64 8
  %i.bk = getelementptr i8, ptr %.087, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !57
  %i.bl = getelementptr i8, ptr %.087, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !218
  %i.bn = getelementptr i8, ptr %i.ay, i64 24
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !218
  %i.bo = getelementptr i8, ptr %.087, i64 32     ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !444
  %i.bq = getelementptr i8, ptr %i.ay, i64 32
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !446
  %i.br = getelementptr i8, ptr %i.ay, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.bo, align 8, !tbaa !444
  br label %bb.h

bb.h:                                             ; preds = %str2dstr.exit, %bb.e
  %.188 = phi ptr [ %i.ay, %str2dstr.exit ], [ %.087, %bb.e ]
  %i.bs = tail call fastcc ptr @list_append(ptr noundef nonnull %0, ptr noundef nonnull %.188, ptr noundef nonnull %2)
  br label %bb.aj

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.bt = load i64, ptr %2, align 8, !tbaa !69
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = and i32 %i.bv, 127
  switch i32 %i.bw, label %bb.aj [
    i32 63, label %bb.j
    i32 64, label %bb.p
    i32 67, label %bb.af
  ]

bb.j:                                             ; preds = %bb.i
  switch i32 %.085, label %.thread129 [
    i32 64, label %bb.k
    i32 63, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr i8, ptr %.087, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !449 ; 2 uses
  %.not11.i = icmp eq ptr %i.by, null
  br i1 %.not11.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !184 ; 3 uses
  %.not12.i = icmp eq ptr %i.cc, null
  br i1 %.not12.i, label %.thread129, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load i64, ptr %i.cc, align 8, !tbaa !69
  %i.cd = and i64 %.val.i, 32512
  %i.ce = icmp eq i64 %i.cd, 16128
  br i1 %i.ce, label %.thread, label %.thread129

.thread:                                          ; preds = %bb.j, %bb.k, %bb.m
  %.08.i.pn = phi ptr [ %.087, %bb.j ], [ %i.cc, %bb.m ], [ %.087, %bb.k ]
  %.0128.in = getelementptr i8, ptr %.08.i.pn, i64 32
  %.0128 = load ptr, ptr %.0128.in, align 8, !tbaa !446
  %i.cf = getelementptr i8, ptr %2, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !444
  %i.ch = tail call fastcc i32 @literal_concat0(ptr noundef nonnull %0, ptr noundef %.0128, ptr noundef %i.cg)
  %.not104 = icmp eq i32 %i.ch, 0
  br i1 %.not104, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.ac, %bb.q, %.thread
  %i.ci = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %.val110 = load ptr, ptr %i.ci, align 8, !tbaa !129
  tail call void @rb_ast_delete_node(ptr noundef %.val110, ptr noundef nonnull %.087) #33
  %.val109 = load ptr, ptr %i.ci, align 8, !tbaa !129
  tail call void @rb_ast_delete_node(ptr noundef %.val109, ptr noundef nonnull %2) #33
  br label %bb.aj

bb.o:                                             ; preds = %.thread
  %i.cj = getelementptr i8, ptr %0, i64 288
  %.val108 = load ptr, ptr %i.cj, align 8, !tbaa !129
  tail call void @rb_ast_delete_node(ptr noundef %.val108, ptr noundef nonnull %2) #33
  br label %bb.aj

.thread129:                                       ; preds = %bb.j, %bb.m, %bb.l
  %i.ck = tail call fastcc ptr @list_append(ptr noundef nonnull %0, ptr noundef nonnull %.087, ptr noundef nonnull %2) ; 0 uses
  br label %bb.aj

bb.p:                                             ; preds = %bb.i
  %i.cl = icmp eq i32 %.085, 63
  br i1 %i.cl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr i8, ptr %.087, i64 32     ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !444
  %i.co = getelementptr i8, ptr %2, i64 32        ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !446
  %i.cq = tail call fastcc i32 @literal_concat0(ptr noundef nonnull %0, ptr noundef %i.cn, ptr noundef %i.cp)
  %.not102 = icmp eq i32 %i.cq, 0
  br i1 %.not102, label %bb.n, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !446
  tail call void @rb_parser_string_free(ptr nonnull poison, ptr noundef %i.cr)
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !444
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !446
  store ptr null, ptr %i.cm, align 8, !tbaa !444
  %i.ct = getelementptr i8, ptr %0, i64 288
  %.val107 = load ptr, ptr %i.ct, align 8, !tbaa !129
  tail call void @rb_ast_delete_node(ptr noundef %.val107, ptr noundef nonnull %.087) #33
  br label %bb.aj

bb.s:                                             ; preds = %bb.p
  %i.cu = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !446 ; 3 uses
  %.not97 = icmp eq ptr %i.cv, null
  br i1 %.not97, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.ad
  %i.cw = getelementptr i8, ptr %2, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.cy = add i64 %i.cx, -1
  %i.cz = getelementptr i8, ptr %.087, i64 40     ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !15
  %i.db = add i64 %i.cy, %i.da
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !15
  %i.dc = getelementptr i8, ptr %.087, i64 48     ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !449 ; 2 uses
  %.not100 = icmp eq ptr %i.dd, null
  %i.de = getelementptr i8, ptr %2, i64 48        ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !449 ; 3 uses
  br i1 %.not100, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !449
  br label %bb.x

bb.v:                                             ; preds = %bb.t
end_hunk_3
begin_hunk_4_@yycompile0:bb.a

rbimpl_intern_const.exit60.i:                     ; preds = %.lr.ph.i58.i, %bb.ak
  %.lcssa.i57.i = phi i64 [ %.pr.i55.i, %bb.ak ], [ %i.ft, %.lr.ph.i58.i ]
  %.pr.i61.i = load i64, ptr @parser_append_options.rbimpl_id.753, align 8, !tbaa !11 ; 2 uses
  %.not4.i62.i = icmp eq i64 %.pr.i61.i, 0
  br i1 %.not4.i62.i, label %.lr.ph.i64.i, label %rbimpl_intern_const.exit66.i

.lr.ph.i64.i:                                     ; preds = %rbimpl_intern_const.exit60.i, %.lr.ph.i64.i
  %i.fu = tail call i64 @rb_intern2(ptr noundef nonnull @.str.754, i64 noundef 2) #33 ; 3 uses
  store i64 %i.fu, ptr @parser_append_options.rbimpl_id.753, align 8, !tbaa !11
  %.not.i65.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i65.i, label %.lr.ph.i64.i, label %rbimpl_intern_const.exit66.i, !llvm.loop !529

rbimpl_intern_const.exit66.i:                     ; preds = %.lr.ph.i64.i, %rbimpl_intern_const.exit60.i
  %.lcssa.i63.i = phi i64 [ %.pr.i61.i, %rbimpl_intern_const.exit60.i ], [ %i.fu, %.lr.ph.i64.i ]
  %.val.i.i67.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.fv = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i67.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.fv, i32 noundef range(i32 0, 115) 50) #33
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !69
  %i.fy = and i64 %i.fx, 32767
  %i.fz = or disjoint i64 %i.fy, 32768
  store i64 %i.fz, ptr %i.fv, align 8, !tbaa !69
  %i.ga = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fb, align 8, !tbaa !217
  %i.gc = getelementptr i8, ptr %i.fv, i64 24
  store i32 %i.ga, ptr %i.gc, align 8, !tbaa !218
  %i.gd = getelementptr i8, ptr %i.fv, i64 32
  store i64 %.lcssa.i57.i, ptr %i.gd, align 8, !tbaa !454
  %.val.i.i68.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.ge = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i68.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ge, i32 noundef range(i32 0, 115) 43) #33
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !69
  %i.gh = and i64 %i.gg, 32767
  %i.gi = or disjoint i64 %i.gh, 32768
  store i64 %i.gi, ptr %i.ge, align 8, !tbaa !69
  %i.gj = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.fb, align 8, !tbaa !217
  %i.gl = getelementptr i8, ptr %i.ge, i64 24
  store i32 %i.gj, ptr %i.gl, align 8, !tbaa !218
  %i.gm = getelementptr i8, ptr %i.ge, i64 32
  store ptr %i.fv, ptr %i.gm, align 8, !tbaa !184
  %i.gn = getelementptr i8, ptr %i.ge, i64 40
  store i64 1, ptr %i.gn, align 8, !tbaa !15
  %i.go = getelementptr i8, ptr %i.ge, i64 48
  store ptr null, ptr %i.go, align 8, !tbaa !186
  %.val.i.i69.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.gp = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i69.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.gp, i32 noundef range(i32 0, 115) 50) #33
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !69
  %i.gs = and i64 %i.gr, 32767
  %i.gt = or disjoint i64 %i.gs, 32768
  store i64 %i.gt, ptr %i.gp, align 8, !tbaa !69
  %i.gu = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.fb, align 8, !tbaa !217
  %i.gw = getelementptr i8, ptr %i.gp, i64 24
  store i32 %i.gu, ptr %i.gw, align 8, !tbaa !218
  %i.gx = getelementptr i8, ptr %i.gp, i64 32
  store i64 3959, ptr %i.gx, align 8, !tbaa !454
  %.pr.i70.i = load i64, ptr @parser_append_options.rbimpl_id.755, align 8, !tbaa !11 ; 2 uses
  %.not4.i71.i = icmp eq i64 %.pr.i70.i, 0
  br i1 %.not4.i71.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i

.lr.ph.i73.i:                                     ; preds = %rbimpl_intern_const.exit66.i, %.lr.ph.i73.i
  %i.gy = tail call i64 @rb_intern2(ptr noundef nonnull @.str.756, i64 noundef 5) #33 ; 3 uses
  store i64 %i.gy, ptr @parser_append_options.rbimpl_id.755, align 8, !tbaa !11
  %.not.i74.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i74.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i, !llvm.loop !529

rbimpl_intern_const.exit75.i:                     ; preds = %.lr.ph.i73.i, %rbimpl_intern_const.exit66.i
  %.lcssa.i72.i = phi i64 [ %.pr.i70.i, %rbimpl_intern_const.exit66.i ], [ %i.gy, %.lr.ph.i73.i ]
  %.val.i.i76.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.gz = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i76.i, i32 noundef range(i32 0, 115) 36, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.gz, i32 noundef range(i32 0, 115) 36) #33
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !69
  %i.hc = and i64 %i.hb, 32767
  %i.hd = or disjoint i64 %i.hc, 32768
  store i64 %i.hd, ptr %i.gz, align 8, !tbaa !69
  %i.he = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.fb, align 8, !tbaa !217
  %i.hg = getelementptr i8, ptr %i.gz, i64 24
  store i32 %i.he, ptr %i.hg, align 8, !tbaa !218
  %i.hh = getelementptr i8, ptr %i.gz, i64 32
  store ptr %i.gp, ptr %i.hh, align 8, !tbaa !284
  %i.hi = getelementptr i8, ptr %i.gz, i64 40
  store i64 %.lcssa.i72.i, ptr %i.hi, align 8, !tbaa !286
  %i.hj = getelementptr i8, ptr %i.gz, i64 48
  store ptr %i.ge, ptr %i.hj, align 8, !tbaa !287
  %.val.i.i77.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.hk = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i77.i, i32 noundef range(i32 0, 115) 27, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #33 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.hk, i32 noundef range(i32 0, 115) 27) #33
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !69
  %i.hn = and i64 %i.hm, 32767
  %i.ho = or disjoint i64 %i.hn, 32768
  store i64 %i.ho, ptr %i.hk, align 8, !tbaa !69
  %i.hp = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.fb, align 8, !tbaa !217
  %i.hr = getelementptr i8, ptr %i.hk, i64 24
  store i32 %i.hp, ptr %i.hr, align 8, !tbaa !218
  %i.hs = getelementptr i8, ptr %i.hk, i64 32
  store i64 %.lcssa.i63.i, ptr %i.hs, align 8, !tbaa !262
  %i.ht = getelementptr i8, ptr %i.hk, i64 40
  store ptr %i.gz, ptr %i.ht, align 8, !tbaa !273
  %i.hu = tail call fastcc ptr @block_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk, ptr noundef %.0.i)
  %.pre92.i = load i32, ptr %i.ar, align 8
  br label %bb.al

bb.al:                                            ; preds = %rbimpl_intern_const.exit75.i, %rbimpl_intern_const.exit52.i
  %i.hv = phi i32 [ %.pre92.i, %rbimpl_intern_const.exit75.i ], [ %i.fr, %rbimpl_intern_const.exit52.i ]
  %.1.i = phi ptr [ %i.hu, %rbimpl_intern_const.exit75.i ], [ %.0.i, %rbimpl_intern_const.exit52.i ]
  %i.hw = and i32 %i.hv, 8192
  %.not44.i = icmp eq i32 %i.hw, 0
  br i1 %.not44.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hx = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.757, i64 noundef 5) #33
  %.val.i.i78.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.hy = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i78.i, i32 noundef range(i32 0, 115) 101, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.hy, i32 noundef range(i32 0, 115) 101) #33
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !69
  %i.ib = and i64 %i.ia, 32767
  %i.ic = or disjoint i64 %i.ib, 32768
  store i64 %i.ic, ptr %i.hy, align 8, !tbaa !69
  %i.id = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.fb, align 8, !tbaa !217
  %i.if = getelementptr i8, ptr %i.hy, i64 24
  store i32 %i.id, ptr %i.if, align 8, !tbaa !218
  %i.ig = tail call ptr @rb_str_to_parser_string(ptr nonnull poison, i64 noundef %i.hx)
  %i.ih = getelementptr i8, ptr %i.hy, i64 32
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !345
  %.val.i.i79.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.ii = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i79.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.ii, i32 noundef range(i32 0, 115) 43) #33
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !69
  %i.il = and i64 %i.ik, 32767
  %i.im = or disjoint i64 %i.il, 32768
  store i64 %i.im, ptr %i.ii, align 8, !tbaa !69
  %i.in = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.fb, align 8, !tbaa !217
  %i.ip = getelementptr i8, ptr %i.ii, i64 24
  store i32 %i.in, ptr %i.ip, align 8, !tbaa !218
  %i.iq = getelementptr i8, ptr %i.ii, i64 32
  store ptr %i.hy, ptr %i.iq, align 8, !tbaa !184
  %i.ir = getelementptr i8, ptr %i.ii, i64 40     ; 3 uses
  store i64 1, ptr %i.ir, align 8, !tbaa !15
  %i.is = getelementptr i8, ptr %i.ii, i64 48     ; 3 uses
  store ptr null, ptr %i.is, align 8, !tbaa !186
  %.val.i.i80.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.it = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i80.i, i32 noundef range(i32 0, 115) 96, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.it, i32 noundef range(i32 0, 115) 96) #33
  %i.iu = getelementptr i8, ptr %i.it, i64 8      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !69
  %i.iw = and i64 %i.iv, 32767
  %i.ix = or disjoint i64 %i.iw, 32768
  store i64 %i.ix, ptr %i.it, align 8, !tbaa !69
  %i.iy = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr %i.fb, align 8, !tbaa !217
  %i.ja = getelementptr i8, ptr %i.it, i64 24
  store i32 %i.iy, ptr %i.ja, align 8, !tbaa !218
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !186 ; 2 uses
  %.not.i66 = icmp eq ptr %i.jb, null
  br i1 %.not.i66, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = getelementptr i8, ptr %i.jb, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0.i67 = phi ptr [ %i.jd, %bb.an ], [ %i.ii, %bb.am ]
  %i.je = load i64, ptr %i.ir, align 8, !tbaa !15
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.ir, align 8, !tbaa !15
  %.val.i.i21.i68 = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.jg = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i68, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.jg, i32 noundef range(i32 0, 115) 43) #33
  %i.jh = getelementptr i8, ptr %i.jg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.iu, i64 16, i1 false), !tbaa.struct !57
  %i.ji = load i32, ptr %i.iu, align 8, !tbaa !51
  %i.jj = sext i32 %i.ji to i64
  %i.jk = load i64, ptr %i.jg, align 8, !tbaa !69
  %i.jl = and i64 %i.jk, 32767
  %i.jm = shl nsw i64 %i.jj, 15
  %i.jn = or disjoint i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.jg, align 8, !tbaa !69
  %i.jo = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.fb, align 8, !tbaa !217
  %i.jq = getelementptr i8, ptr %i.jg, i64 24
  store i32 %i.jo, ptr %i.jq, align 8, !tbaa !218
  %i.jr = getelementptr i8, ptr %i.jg, i64 32
  store ptr %i.it, ptr %i.jr, align 8, !tbaa !184
  %i.js = getelementptr i8, ptr %i.jg, i64 40
  store i64 1, ptr %i.js, align 8, !tbaa !15
  %i.jt = getelementptr i8, ptr %i.jg, i64 48
  store ptr null, ptr %i.jt, align 8, !tbaa !186
  %i.ju = getelementptr i8, ptr %.0.i67, i64 48
  store ptr %i.jg, ptr %i.ju, align 8, !tbaa !186
  %i.jv = load ptr, ptr %i.is, align 8, !tbaa !186
  %i.jw = getelementptr i8, ptr %i.jv, i64 40
  store ptr %i.jg, ptr %i.jw, align 8, !tbaa !15
  %i.jx = getelementptr i8, ptr %i.ii, i64 16
  %i.jy = getelementptr i8, ptr %i.it, i64 16
  %i.jz = load i64, ptr %i.jy, align 8
  store i64 %i.jz, ptr %i.jx, align 8
  %.val.i.i81.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.ka = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i81.i, i32 noundef range(i32 0, 115) 45, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ka, i32 noundef range(i32 0, 115) 45) #33
  %i.kb = getelementptr i8, ptr %i.ka, i64 8      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !69
  %i.kd = and i64 %i.kc, 32767
  %i.ke = or disjoint i64 %i.kd, 32768
  store i64 %i.ke, ptr %i.ka, align 8, !tbaa !69
  %i.kf = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.kg = add i32 %i.kf, 1
  store i32 %i.kg, ptr %i.fb, align 8, !tbaa !217
  %i.kh = getelementptr i8, ptr %i.ka, i64 24
  store i32 %i.kf, ptr %i.kh, align 8, !tbaa !218
  %i.ki = getelementptr i8, ptr %i.ka, i64 32
  store ptr %i.ii, ptr %i.ki, align 8, !tbaa !187
  %i.kj = getelementptr i8, ptr %i.ka, i64 40
  store i64 0, ptr %i.kj, align 8, !tbaa !126
  %i.kk = load ptr, ptr %i.fq, align 8, !tbaa !186 ; 2 uses
  %.not.i63 = icmp eq ptr %i.kk, null
  br i1 %.not.i63, label %list_append.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kl = getelementptr i8, ptr %i.kk, i64 40
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !15
  br label %list_append.exit

list_append.exit:                                 ; preds = %bb.ao, %bb.ap
  %.0.i64 = phi ptr [ %i.km, %bb.ap ], [ %i.fg, %bb.ao ]
  %i.kn = load i64, ptr %i.fp, align 8, !tbaa !15
  %i.ko = add i64 %i.kn, 1
  store i64 %i.ko, ptr %i.fp, align 8, !tbaa !15
  %.val.i.i21.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.kp = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.kp, i32 noundef range(i32 0, 115) 43) #33
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kq, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.kb, i64 16, i1 false), !tbaa.struct !57
  %i.kr = load i32, ptr %i.kb, align 8, !tbaa !51
  %i.ks = sext i32 %i.kr to i64
  %i.kt = load i64, ptr %i.kp, align 8, !tbaa !69
  %i.ku = and i64 %i.kt, 32767
  %i.kv = shl nsw i64 %i.ks, 15
  %i.kw = or disjoint i64 %i.ku, %i.kv
  store i64 %i.kw, ptr %i.kp, align 8, !tbaa !69
  %i.kx = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.ky = add i32 %i.kx, 1
  store i32 %i.ky, ptr %i.fb, align 8, !tbaa !217
  %i.kz = getelementptr i8, ptr %i.kp, i64 24
  store i32 %i.kx, ptr %i.kz, align 8, !tbaa !218
  %i.la = getelementptr i8, ptr %i.kp, i64 32
  store ptr %i.ka, ptr %i.la, align 8, !tbaa !184
  %i.lb = getelementptr i8, ptr %i.kp, i64 40
  store i64 1, ptr %i.lb, align 8, !tbaa !15
  %i.lc = getelementptr i8, ptr %i.kp, i64 48
  store ptr null, ptr %i.lc, align 8, !tbaa !186
  %i.ld = getelementptr i8, ptr %.0.i64, i64 48
  store ptr %i.kp, ptr %i.ld, align 8, !tbaa !186
  %i.le = load ptr, ptr %i.fq, align 8, !tbaa !186
  %i.lf = getelementptr i8, ptr %i.le, i64 40
  store ptr %i.kp, ptr %i.lf, align 8, !tbaa !15
  %i.lg = getelementptr i8, ptr %i.fg, i64 16
  %i.lh = getelementptr i8, ptr %i.ka, i64 16
  %i.li = load i64, ptr %i.lh, align 8
  store i64 %i.li, ptr %i.lg, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %list_append.exit, %bb.al
  %.val.i.i82.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.lj = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i82.i, i32 noundef range(i32 0, 115) 38, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #33 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.lj, i32 noundef range(i32 0, 115) 38) #33
  %i.lk = getelementptr i8, ptr %i.lj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !69
  %i.lm = and i64 %i.ll, 32767
  %i.ln = or disjoint i64 %i.lm, 32768
  store i64 %i.ln, ptr %i.lj, align 8, !tbaa !69
  %i.lo = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.lp = add i32 %i.lo, 1
  store i32 %i.lp, ptr %i.fb, align 8, !tbaa !217
  %i.lq = getelementptr i8, ptr %i.lj, i64 24
  store i32 %i.lo, ptr %i.lq, align 8, !tbaa !218
  %i.lr = getelementptr i8, ptr %i.lj, i64 32
  store i64 3057, ptr %i.lr, align 8, !tbaa !329
  %i.ls = getelementptr i8, ptr %i.lj, i64 40
  store ptr %i.fg, ptr %i.ls, align 8, !tbaa !114
  %.val.i.i83.i = load ptr, ptr %i.ev, align 8, !tbaa !129
  %i.lt = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i83.i, i32 noundef range(i32 0, 115) 9, i64 noundef range(i64 32, 129) 88, i64 noundef 8) #33 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.lt, i32 noundef range(i32 0, 115) 9) #33
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef nonnull readonly align 4 dereferenceable(16) @parser_append_options.default_location, i64 16, i1 false), !tbaa.struct !57
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !69
  %i.lw = and i64 %i.lv, 32767
  %i.lx = or disjoint i64 %i.lw, 32768
  store i64 %i.lx, ptr %i.lt, align 8, !tbaa !69
  %i.ly = load i32, ptr %i.fb, align 8, !tbaa !217 ; 2 uses
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.fb, align 8, !tbaa !217
  %i.ma = getelementptr i8, ptr %i.lt, i64 24
  store i32 %i.ly, ptr %i.ma, align 8, !tbaa !218
  %i.mb = getelementptr i8, ptr %i.lt, i64 32
  store ptr %i.lj, ptr %i.mb, align 8, !tbaa !246
  %i.mc = getelementptr i8, ptr %i.lt, i64 40
  store ptr %.1.i, ptr %i.mc, align 8, !tbaa !248
  %i.md = getelementptr i8, ptr %i.lt, i64 48
  store i64 1, ptr %i.md, align 8, !tbaa !249
  %i.me = getelementptr i8, ptr %i.lt, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, ptr noundef nonnull align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  %i.mf = getelementptr i8, ptr %i.lt, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, ptr noundef nonnull align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  br label %parser_append_options.exit

parser_append_options.exit:                       ; preds = %bb.ai, %bb.aq
  %.2.i = phi ptr [ %i.lt, %bb.aq ], [ %.0.i, %bb.ai ]
  %i.mg = getelementptr i8, ptr %i.a, i64 336
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !80
  %i.mi = tail call fastcc ptr @block_append(ptr noundef nonnull %i.a, ptr noundef %i.mh, ptr noundef %.2.i)
  store ptr %i.mi, ptr %i.dh, align 8, !tbaa !220
  %i.mj = load i32, ptr %i.ar, align 8
  %i.mk = getelementptr i8, ptr %i.a, i64 288     ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !129
  %i.mm = getelementptr i8, ptr %i.ml, i64 28     ; 2 uses
  %i.mn = trunc i32 %i.mj to i8
  %i.mo = and i8 %i.mn, 3
  %i.mp = load i8, ptr %i.mm, align 4
  %i.mq = and i8 %i.mp, -4
  %i.mr = or disjoint i8 %i.mq, %i.mo
  store i8 %i.mr, ptr %i.mm, align 4
  %i.ms = load ptr, ptr %i.mk, align 8, !tbaa !129
  %i.mt = getelementptr i8, ptr %i.ms, i64 28     ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 4
  %i.mv = and i8 %i.mu, -13
  %i.mw = or disjoint i8 %i.mv, %.046
  store i8 %i.mw, ptr %i.mt, align 4
  %i.mx = load i32, ptr %i.ar, align 8
  %i.my = and i32 %i.mx, 65536
  %.not58 = icmp eq i32 %i.my, 0
  br i1 %.not58, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %parser_append_options.exit
  %i.mz = load ptr, ptr %i.mk, align 8, !tbaa !129
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !530
  %i.nb = getelementptr i8, ptr %i.na, i64 24
  store ptr %i.dg, ptr %i.nb, align 8, !tbaa !531
  store ptr null, ptr %i.df, align 8, !tbaa !495
  br label %bb.as

bb.as:                                            ; preds = %parser_append_options.exit, %bb.ar, %bb.af
  %.045 = phi ptr [ %i.cx, %bb.af ], [ %i.cv, %bb.ar ], [ %i.cv, %parser_append_options.exit ]
  %i.nc = getelementptr i8, ptr %i.a, i64 288
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !129 ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 8
  store ptr %.045, ptr %i.ne, align 8, !tbaa !536
  %i.nf = getelementptr i8, ptr %i.a, i64 192
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !537
  %i.nh = getelementptr i8, ptr %i.nd, i64 24
  store i32 %i.ng, ptr %i.nh, align 8, !tbaa !538
  br label %bb.at

bb.at:                                            ; preds = %bb.ae, %bb.as
  %.1 = phi i64 [ 1, %bb.as ], [ 0, %bb.ae ]
  ret i64 %.1
}

declare void @rb_set_errinfo(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 256) i32 @nextc0(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !426
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge, !prof !527

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 360
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 8
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.c, label %.critedge, !prof !527

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !528
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %i.j, label %.critedge, label %bb.d, !prof !205

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.k = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef %1)
  %.not14 = icmp eq i32 %i.k, 0
  br i1 %.not14, label %.critedge._crit_edge, label %parser_cr.exit

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge, %bb.c
  %i.l = phi ptr [ %.pre, %.critedge._crit_edge ], [ %i.b, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !188
  %i.n = load i8, ptr %i.l, align 1, !tbaa !15    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = icmp eq i8 %i.n, 13
  br i1 %i.p, label %bb.e, label %parser_cr.exit, !prof !205

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !426
  %.not.i = icmp ult ptr %i.m, %i.q
  br i1 %.not.i, label %bb.f, label %parser_cr.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.m, align 1, !tbaa !15
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.g, label %parser_cr.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.l, i64 2
  store ptr %i.t, ptr %i.a, align 8, !tbaa !188
  br label %parser_cr.exit

parser_cr.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %.critedge
  %.011 = phi i32 [ -1, %.critedge ], [ %i.o, %bb.d ], [ 13, %bb.e ], [ 10, %bb.g ], [ 13, %bb.f ]
  ret i32 %.011
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #2

declare nonnull ptr @rb_utf8_encoding() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pushback(ptr noundef captures(none) %0, i32 noundef range(i32 -1, 256) %1) unnamed_addr #22 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 360        ; 2 uses
end_hunk_4
begin_hunk_5_@tokadd_ident:bb.a
  %i.ao = and i32 %i.an, -9
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1     ; 3 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !188
  %i.ar = getelementptr i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.at = icmp ugt ptr %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %pushback.exit

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 10
  br i1 %i.av, label %bb.l, label %pushback.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.ap, i64 -2     ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.ay = icmp eq i8 %i.ax, 13
  br i1 %i.ay, label %bb.m, label %pushback.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !188
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.backedge, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %parser_is_identchar.exit.thread
  %.06 = phi i32 [ 0, %bb.m ], [ 0, %parser_is_identchar.exit.thread ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ -1, %bb.a ], [ -1, %.critedge.backedge ]
  ret i32 %.06
}

declare i64 @ruby_scan_digits(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #15

declare ptr @rb_ast_resize_latest_local_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_list_new2(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 43) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %4, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !184
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store i64 %2, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !186
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 57) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %3, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !359
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !361
  %i.p = getelementptr i8, ptr %i.b, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !362
  ret ptr %i.b
}

declare i64 @rb_node_regx_string_val(ptr noundef) local_unnamed_addr #2

declare i32 @onig_foreach_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @reg_named_capture_assign_iter(ptr noundef %0, ptr noundef %1, i32 %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4, ptr noundef captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !363
  %i.b = getelementptr i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !366
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %5, i64 16
  %i.h = getelementptr i8, ptr %5, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !368
  %i.j = getelementptr i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !369
  %i.l = tail call i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %i.a, ptr noundef %0, i64 noundef %i.f, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_nested_p(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = icmp ne ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %parser_show_error_line.exit

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %i.g, ptr %i.d, ptr %i.f       ; 3 uses
  %i.j = select i1 %i.g, ptr @.str.874, ptr @.str.875
  %i.k = getelementptr i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nd_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !69
  %i.n = lshr i64 %i.m, 15
  %i.o = trunc i64 %i.n to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.873, ptr noundef nonnull %i.j, ptr noundef %i.l, i32 noundef %.0.i)
  %i.p = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 196
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 2 uses
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %parser_show_error_line.exit, label %bb.d

bb.d:                                             ; preds = %nd_line.exit
  %i.s = load i32, ptr %i.p, align 4, !tbaa !51
  %i.t = icmp eq i32 %i.s, %i.r
  br i1 %i.t, label %bb.e, label %parser_show_error_line.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !189
  %i.w = getelementptr i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.x, ptr noundef nonnull readonly %i.p, i32 noundef %i.r, ptr noundef %i.v)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.e, %bb.d, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @it_used_p(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %parser_show_error_line.exit, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = load i64, ptr %i.d, align 8, !tbaa !69
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.876, ptr noundef %i.f, i32 noundef %i.i)
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 196
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %parser_show_error_line.exit, label %bb.b

bb.b:                                             ; preds = %nd_line.exit
  %i.m = load i32, ptr %i.j, align 8, !tbaa !51
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %bb.c, label %parser_show_error_line.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = getelementptr i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.r, ptr noundef nonnull readonly %i.j, i32 noundef %i.l, ptr noundef %i.p)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.c, %bb.b, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @local_id_ref(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !199  ; 2 uses
  %.not58 = icmp eq ptr %i.d, null
  br i1 %.not58, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.02961 = phi ptr [ %.1, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.03060 = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %.03159 = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.03159, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148  ; 4 uses
  %i.j = icmp ult ptr %i.i, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.03060, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 2 uses
  %.not36 = icmp eq ptr %.02961, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.02961, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge37, label %.lr.ph, !llvm.loop !386

.critedge:                                        ; preds = %.lr.ph
  %.not64 = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %.not64, label %bb.e, label %.critedge37

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.p) #33
  br label %vtable_included.exit

.critedge37:                                      ; preds = %bb.d, %bb.a, %.critedge
  %.03156 = phi ptr [ %.03159, %.critedge ], [ null, %bb.a ], [ null, %bb.d ] ; 3 uses
  %.03054 = phi ptr [ %.03060, %.critedge ], [ %i.e, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %.02952 = phi ptr [ %.02961, %.critedge ], [ %i.g, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.r = icmp ult ptr %.03054, inttoptr (i64 2 to ptr)
  br i1 %i.r, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge37
  %i.s = getelementptr i8, ptr %.03054, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !195  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = load ptr, ptr %.03054, align 8, !tbaa !197
  %i.w = zext nneg i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = icmp eq i64 %i.y, %1
  br i1 %i.z, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !214

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.critedge37
  %i.aa = icmp ult ptr %.03156, inttoptr (i64 2 to ptr)
  br i1 %i.aa, label %vtable_included.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %vtable_included.exit.thread
  %i.ab = getelementptr i8, ptr %.03156, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i40, label %vtable_included.exit

.lr.ph.i40:                                       ; preds = %.preheader.i38
  %i.ae = load ptr, ptr %.03156, align 8, !tbaa !197
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.i ], [ 0, %.lr.ph.i40 ] ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv73
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = icmp eq i64 %i.ah, %1
  br i1 %i.ai, label %vtable_included.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next74, %i.af
  br i1 %exitcond.not.i42, label %vtable_included.exit, label %bb.h, !llvm.loop !214

vtable_included.exit43:                           ; preds = %bb.h
  %i.aj = icmp ne ptr %.02952, null
  %i.ak = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.ak, %i.aj
  br i1 %or.cond3, label %bb.j, label %vtable_included.exit

bb.j:                                             ; preds = %vtable_included.exit43
  %i.al = load ptr, ptr %.02952, align 8, !tbaa !197
  %i.am = and i64 %indvars.iv73, 4294967295
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %i.am
  store ptr %i.an, ptr %2, align 8, !tbaa !26
  br label %vtable_included.exit

vtable_included.exit:                             ; preds = %bb.f, %bb.i, %vtable_included.exit43, %bb.j, %vtable_included.exit.thread, %.preheader.i38, %bb.e
  %.0 = phi i32 [ %i.q, %bb.e ], [ 0, %bb.i ], [ 1, %vtable_included.exit43 ], [ 1, %bb.j ], [ 0, %vtable_included.exit.thread ], [ 0, %.preheader.i38 ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @parser_numbered_param(ptr noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 7 uses
  %switch = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %switch23 = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %switch23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 312        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.870)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.g, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr i8, ptr %i.d, i64 8        ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !195  ; 2 uses
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr i8, ptr %0, i64 360
  %i.o = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %vtable_add_gen.exit
  %i.p = phi i32 [ %i.l, %.lr.ph ], [ %i.ae, %vtable_add_gen.exit ] ; 2 uses
  %i.q = shl i32 %i.p, 4
  %i.r = add i32 %i.q, 3777
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = load i32, ptr %i.n, align 8
  %i.u = and i32 %i.t, 32
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @rb_id2name(i64 noundef %i.s) #33
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 10284, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.d, ptr noundef %i.v)
  %.pre = load i32, ptr %i.k, align 8, !tbaa !195
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi i32 [ %.pre, %bb.j ], [ %i.p, %bb.i ] ; 3 uses
  %i.x = load i32, ptr %i.o, align 4, !tbaa !196
  %i.y = icmp eq i32 %i.w, %i.x
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !197 ; 2 uses
  br i1 %i.y, label %bb.l, label %vtable_add_gen.exit

bb.l:                                             ; preds = %bb.k
  %i.z = shl i32 %i.w, 1                          ; 2 uses
  store i32 %i.z, ptr %i.o, align 4, !tbaa !196
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.aa, i64 noundef 8) #40 ; 2 uses
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !197
  %.pre21.i = load i32, ptr %i.k, align 8, !tbaa !195
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.l, %bb.k
  %i.ac = phi i32 [ %.pre21.i, %bb.l ], [ %i.w, %bb.k ] ; 2 uses
  %i.ad = phi ptr [ %i.ab, %bb.l ], [ %.pre.i, %bb.k ]
  %i.ae = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.k, align 8, !tbaa !195
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %i.af
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !11
  %i.ah = icmp sgt i32 %1, %i.ae
  br i1 %i.ah, label %bb.i, label %.loopexit, !llvm.loop !650

.loopexit:                                        ; preds = %vtable_add_gen.exit, %bb.h, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.h ], [ true, %vtable_add_gen.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_used_p(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %parser_show_error_line.exit, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = load i64, ptr %i.d, align 8, !tbaa !69
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.877, ptr noundef %i.f, i32 noundef %i.i)
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 196
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %parser_show_error_line.exit, label %bb.b

bb.b:                                             ; preds = %nd_line.exit
  %i.m = load i32, ptr %i.j, align 8, !tbaa !51
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %bb.c, label %parser_show_error_line.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = getelementptr i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.r, ptr noundef nonnull readonly %i.j, i32 noundef %i.l, ptr noundef %i.p)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.c, %bb.b, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtable_add_gen(ptr noundef captures(none) %0, i32 noundef range(i32 10284, 14995) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_id2name(i64 noundef %4) #33
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef %3)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !195  ; 3 uses
  %i.h = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !196
  %i.j = icmp eq i32 %i.g, %i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !197   ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !196
  %i.l = sext i32 %i.k to i64
  %i.m = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.l, i64 noundef 8) #40 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !197
  %.pre21 = load i32, ptr %i.f, align 8, !tbaa !195
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pre21, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %i.o = phi ptr [ %i.m, %bb.f ], [ %.pre, %bb.e ]
  %i.p = add i32 %i.n, 1
  store i32 %i.p, ptr %i.f, align 8, !tbaa !195
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr [8 x i8], ptr %i.o, i64 %i.q
  store i64 %4, ptr %i.r, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_vcall_new(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 39, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 39) #33
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !651
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @str_to_sym_node(ptr noundef captures(none) %0, ptr %.32.val, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef %.32.val)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.881)
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !51
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %parser_yyerror.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = getelementptr i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.j, ptr noundef nonnull readonly %1, i32 noundef %i.d, ptr noundef %i.h)
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.b, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176
  %i.m = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %i.l) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = tail call i64 @rb_str_new_parser_string(ptr noundef %.32.val) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %parser_yyerror.exit
  %.0 = phi i64 [ %i.m, %parser_yyerror.exit ], [ %i.n, %bb.d ]
  %i.o = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.p = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 101, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #33 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.p, i32 noundef range(i32 0, 115) 101) #33
  %i.q = getelementptr i8, ptr %i.p, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !57
  %i.r = load i32, ptr %1, align 4, !tbaa !51
  %i.s = sext i32 %i.r to i64
  %i.t = load i64, ptr %i.p, align 8, !tbaa !69
  %i.u = and i64 %i.t, 32767
  %i.v = shl nsw i64 %i.s, 15
  %i.w = or disjoint i64 %i.u, %i.v
  store i64 %i.w, ptr %i.p, align 8, !tbaa !69
  %i.x = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !217  ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !217
  %i.aa = getelementptr i8, ptr %i.p, i64 24
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !218
  %i.ab = tail call ptr @rb_str_to_parser_string(ptr poison, i64 noundef %.0)
  %i.ac = getelementptr i8, ptr %i.p, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !345
  ret ptr %i.p
}

declare i64 @rb_str_new_parser_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @reg_compile(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_errinfo() #33
  %i.b = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %parser_reg_compile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !559
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.882, i32 noundef range(i32 1, 256) %i.b, ptr noundef %.val.val.i.i)
  br label %parser_reg_compile.exit

parser_reg_compile.exit:                          ; preds = %bb.a, %bb.b
  %i.e = tail call i64 @rb_str_new_parser_string(ptr noundef %1) #33
  %i.f = and i32 %2, 255
  %i.g = getelementptr i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr i8, ptr %0, i64 196
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = tail call i64 @rb_reg_compile(i64 noundef %i.e, i32 noundef %i.f, ptr noundef %i.h, i32 noundef %i.j) #33
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_reg_compile.exit
  %i.m = tail call i64 @rb_errinfo() #33
  %i.n = tail call i64 @rb_attr_get(i64 noundef %i.m, i64 noundef 3489) #33
  tail call void @rb_set_errinfo(i64 noundef %i.a) #33
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.556, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %parser_reg_compile.exit, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dregex_fragment_setenc(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
end_hunk_5
begin_hunk_6_@shadowing_lvar_0:bb.a

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next74.i.i53 = add nuw nsw i64 %indvars.iv73.i.i52, 1 ; 2 uses
  %exitcond.not.i42.i.i54 = icmp eq i64 %indvars.iv.next74.i.i53, %i.gg
  br i1 %exitcond.not.i42.i.i54, label %vtable_add_gen.exit38, label %bb.ak, !llvm.loop !214

local_id.exit61:                                  ; preds = %.critedge.i.i59
  %i.gk = getelementptr i8, ptr %0, i64 352
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !68
  %i.gm = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.gl) #33
  %.not23 = icmp eq i32 %i.gm, 0
  %i.gn = icmp eq i64 %1, 3761
  %or.cond = or i1 %i.gn, %.not23
  br i1 %or.cond, label %vtable_add_gen.exit38, label %bb.am

local_id.exit61.thread90:                         ; preds = %bb.ai, %bb.ak
  %.old = icmp eq i64 %1, 3761
  br i1 %.old, label %vtable_add_gen.exit38, label %bb.am

bb.am:                                            ; preds = %local_id.exit61, %local_id.exit61.thread90
  %i.go = icmp ugt i64 %1, 171
  %i.gp = and i64 %1, 14
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = and i1 %i.go, %i.gq
  br i1 %i.gr, label %bb.an, label %is_private_local_id.exit66.thread

bb.an:                                            ; preds = %bb.am
  %i.gs = tail call i64 @rb_id2str(i64 noundef %1) #33 ; 2 uses
  %.not.i63 = icmp eq i64 %i.gs, 0
  br i1 %.not.i63, label %is_private_local_id.exit66.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gt = inttoptr i64 %i.gs to ptr               ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !13
  %i.gv = and i64 %i.gu, 8192
  %.not.i.i64 = icmp eq i64 %i.gv, 0
  %i.gw = getelementptr i8, ptr %i.gt, i64 24     ; 2 uses
  br i1 %.not.i.i64, label %is_private_local_id.exit66, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !15
  br label %is_private_local_id.exit66

is_private_local_id.exit66:                       ; preds = %bb.ao, %bb.ap
  %i.gy = phi ptr [ %i.gx, %bb.ap ], [ %i.gw, %bb.ao ]
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !15
  %.not99 = icmp eq i8 %i.gz, 95
  br i1 %.not99, label %vtable_add_gen.exit38, label %is_private_local_id.exit66.thread

is_private_local_id.exit66.thread:                ; preds = %bb.an, %bb.am, %is_private_local_id.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ha = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !29 ; 4 uses
  %i.hc = getelementptr i8, ptr %0, i64 96
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !49
  %i.he = getelementptr i8, ptr %0, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !50
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr i8, ptr %0, i64 80
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !188
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.hh
  %i.ho = trunc i64 %i.hn to i32
  store i32 %i.hb, ptr %2, align 4, !tbaa !51
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.hj, ptr %i.hp, align 4, !tbaa !54
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.hb, ptr %i.hq, align 4, !tbaa !55
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ho, ptr %i.hr, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.900)
  %i.hs = load i32, ptr %i.ha, align 4, !tbaa !29
  %i.ht = icmp eq i32 %i.hb, %i.hs
  br i1 %i.ht, label %bb.aq, label %parser_yyerror0.exit67

bb.aq:                                            ; preds = %is_private_local_id.exit66.thread
  %i.hu = getelementptr i8, ptr %0, i64 56
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !189
  %i.hw = getelementptr i8, ptr %0, i64 368
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.hx, ptr noundef nonnull readonly %2, i32 noundef %i.hb, ptr noundef %i.hv)
  br label %parser_yyerror0.exit67

parser_yyerror0.exit67:                           ; preds = %is_private_local_id.exit66.thread, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %vtable_add_gen.exit38

vtable_add_gen.exit38:                            ; preds = %bb.t, %bb.al, %local_id.exit61.thread90, %.preheader.i38.i.i49, %vtable_included.exit.thread.i.i48, %.preheader.i38.i.i, %vtable_included.exit.thread.i.i, %dvar_curr.exit, %bb.ag, %bb.ad, %local_id.exit, %parser_yyerror0.exit, %parser_yyerror0.exit67, %local_id.exit61, %is_private_local_id.exit66, %vtable_add_gen.exit, %is_private_local_id.exit
  %.0 = phi i32 [ 0, %vtable_add_gen.exit ], [ 1, %is_private_local_id.exit66 ], [ 1, %is_private_local_id.exit ], [ 1, %dvar_curr.exit ], [ 1, %local_id.exit61 ], [ 1, %parser_yyerror0.exit67 ], [ 1, %parser_yyerror0.exit ], [ 1, %local_id.exit ], [ 1, %local_id.exit61.thread90 ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 1, %bb.al ], [ 1, %vtable_included.exit.thread.i.i ], [ 1, %.preheader.i38.i.i ], [ 1, %vtable_included.exit.thread.i.i48 ], [ 1, %.preheader.i38.i.i49 ], [ 1, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @aryset_check(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %parser_yyerror.exit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 20224
  br i1 %i.b, label %bb.c, label %.thread40

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389  ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 3 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %parser_yyerror.exit, label %..thread40_crit_edge

..thread40_crit_edge:                             ; preds = %bb.c
  %.025.val.pre = load i64, ptr %i.f, align 8, !tbaa !69
  br label %.thread40

.thread40:                                        ; preds = %..thread40_crit_edge, %bb.b
  %.025.val = phi i64 [ %.025.val.pre, %..thread40_crit_edge ], [ %.val, %bb.b ] ; 2 uses
  %.02445 = phi ptr [ %i.d, %..thread40_crit_edge ], [ null, %bb.b ] ; 6 uses
  %.02544 = phi ptr [ %i.f, %..thread40_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.g = and i64 %.025.val, 32512
  %i.h = icmp eq i64 %i.g, 19456
  br i1 %i.h, label %bb.d, label %.thread53

bb.d:                                             ; preds = %.thread40
  %i.i = getelementptr i8, ptr %.02544, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !381  ; 3 uses
  %.not30 = icmp eq ptr %i.j, null
  br i1 %.not30, label %parser_yyerror.exit, label %..thread53_crit_edge

..thread53_crit_edge:                             ; preds = %bb.d
  %.126.val.pre = load i64, ptr %i.j, align 8, !tbaa !69
  br label %.thread53

.thread53:                                        ; preds = %..thread53_crit_edge, %.thread40
  %.126.val = phi i64 [ %.126.val.pre, %..thread53_crit_edge ], [ %.025.val, %.thread40 ]
  %.12658 = phi ptr [ %i.j, %..thread53_crit_edge ], [ %.02544, %.thread40 ] ; 3 uses
  %i.k = and i64 %.126.val, 32512
  %i.l = icmp eq i64 %i.k, 19712
  br i1 %i.l, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread53
  %.0.val80 = load i64, ptr %.12658, align 8, !tbaa !69
  %i.m = and i64 %.0.val80, 32512
  %i.n = icmp eq i64 %i.m, 11008
  br i1 %i.n, label %.lr.ph82, label %.critedge

bb.e:                                             ; preds = %.thread53
  %i.o = getelementptr i8, ptr %.12658, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !379
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph82
  %.0.val = load i64, ptr %i.t, align 8, !tbaa !69
  %i.q = and i64 %.0.val, 32512
  %i.r = icmp eq i64 %i.q, 11008
  br i1 %i.r, label %.lr.ph82, label %.critedge.loopexit, !llvm.loop !663

.lr.ph82:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.06181 = phi ptr [ %i.t, %.lr.ph ], [ %.12658, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr i8, ptr %.06181, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !186  ; 3 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !663

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph82
  %i.u = getelementptr i8, ptr %.06181, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184
  br label %.critedge, !llvm.loop !663

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %.06181, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.e
  %.1 = phi ptr [ %i.p, %bb.e ], [ null, %.lr.ph.preheader ], [ %i.v, %..critedge.loopexit_crit_edge ], [ %i.x, %.critedge.loopexit ] ; 4 uses
  %.not32 = icmp eq ptr %.1, null
  br i1 %.not32, label %parser_yyerror.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %.1.val = load i64, ptr %.1, align 8, !tbaa !69
  %i.y = and i64 %.1.val, 32512
  %i.z = icmp eq i64 %i.y, 11520
  br i1 %i.z, label %bb.g, label %parser_yyerror.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %.1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !126
  %.not33 = icmp eq i64 %i.ab, 0
  br i1 %.not33, label %bb.h, label %parser_yyerror.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %.1, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.902)
  %i.ad = getelementptr i8, ptr %0, i64 196
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29 ; 2 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !51
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %bb.i, label %parser_yyerror.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !189
  %i.aj = getelementptr i8, ptr %0, i64 368
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.ak, ptr noundef nonnull readonly %i.ac, i32 noundef %i.ae, ptr noundef %i.ai)
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.d, %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %.critedge
  %.024395077 = phi ptr [ %.02445, %.critedge ], [ %.02445, %bb.i ], [ %.02445, %bb.h ], [ %.02445, %bb.g ], [ %.02445, %bb.f ], [ %.02445, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.not34 = icmp eq ptr %.024395077, null
  br i1 %.not34, label %parser_yyerror.exit35, label %bb.j

bb.j:                                             ; preds = %parser_yyerror.exit
  %i.al = getelementptr i8, ptr %.024395077, i64 8 ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.al, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.903)
  %i.am = getelementptr i8, ptr %0, i64 196
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !51
  %i.ap = icmp eq i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %parser_yyerror.exit35

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.as = getelementptr i8, ptr %0, i64 368
  %i.at = load i64, ptr %i.as, align 8, !tbaa !190
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.at, ptr noundef nonnull readonly %i.al, i32 noundef %i.an, ptr noundef %i.ar)
  br label %parser_yyerror.exit35

parser_yyerror.exit35:                            ; preds = %bb.a, %bb.k, %bb.j, %parser_yyerror.exit
  ret void
}

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @arg_concat(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !69
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %bb.p [
    i32 79, label %bb.c
    i32 77, label %bb.g
    i32 76, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @arg_concat(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.i = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.i, i32 noundef range(i32 0, 115) 43) #33
  %i.j = getelementptr i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.k = load i32, ptr %3, align 4, !tbaa !51
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr %i.i, align 8, !tbaa !69
  %i.n = and i64 %i.m, 32767
  %i.o = shl nsw i64 %i.l, 15
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.i, align 8, !tbaa !69
  %i.q = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !217  ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !217
  %i.t = getelementptr i8, ptr %i.i, i64 24
  store i32 %i.r, ptr %i.t, align 8, !tbaa !218
  %i.u = getelementptr i8, ptr %i.i, i64 32
  store ptr %2, ptr %i.u, align 8, !tbaa !184
  %i.v = getelementptr i8, ptr %i.i, i64 40
  store i64 1, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr i8, ptr %i.i, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !186
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !257
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %.val37 = load i64, ptr %2, align 8, !tbaa !69
  %i.x = and i64 %.val37, 32512
  %i.y = icmp eq i64 %i.x, 11008
  br i1 %i.y, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !379
  %i.ab = getelementptr i8, ptr %0, i64 288
  %.val.i.i38 = load ptr, ptr %i.ab, align 8, !tbaa !129
  %i.ac = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i38, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #33 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ac, i32 noundef range(i32 0, 115) 43) #33
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.ae = load i32, ptr %3, align 4, !tbaa !51
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.ah = and i64 %i.ag, 32767
  %i.ai = shl nsw i64 %i.af, 15
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !69
  %i.ak = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !217 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !217
  %i.an = getelementptr i8, ptr %i.ac, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !218
  %i.ao = getelementptr i8, ptr %i.ac, i64 32
  store ptr %i.aa, ptr %i.ao, align 8, !tbaa !184
  %i.ap = getelementptr i8, ptr %i.ac, i64 40     ; 2 uses
  store i64 1, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr i8, ptr %i.ac, i64 48     ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !186
  %i.ar = getelementptr i8, ptr %2, i64 40        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !15
  store ptr %2, ptr %i.aq, align 8, !tbaa !186
  %i.au = getelementptr i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !186 ; 2 uses
  %.not17.i = icmp eq ptr %i.av, null
  br i1 %.not17.i, label %list_concat.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15
  br label %list_concat.exit

list_concat.exit:                                 ; preds = %bb.h, %bb.i
  %.sink.i = phi ptr [ %i.ax, %bb.i ], [ %2, %bb.h ]
  store ptr %.sink.i, ptr %i.ar, align 8, !tbaa !15
  %i.ay = getelementptr i8, ptr %i.ac, i64 16
  %i.az = getelementptr i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !379
  %i.bb = tail call i64 @rb_node_set_type(ptr noundef nonnull %1, i32 noundef 76) #33 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %.val36 = load i64, ptr %2, align 8, !tbaa !69
  %i.bc = and i64 %.val36, 32512
  %i.bd = icmp eq i64 %i.bc, 11008
  br i1 %i.bd, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !381 ; 6 uses
  %.val = load i64, ptr %i.bf, align 8, !tbaa !69
  %i.bg = and i64 %.val, 32512
  %i.bh = icmp eq i64 %i.bg, 11008
  br i1 %i.bh, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr i8, ptr %i.bf, i64 48     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !186 ; 2 uses
  %.not.i39 = icmp eq ptr %i.bj, null
  br i1 %.not.i39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i40 = phi ptr [ %i.bl, %bb.m ], [ %i.bf, %bb.l ]
  %i.bm = getelementptr i8, ptr %2, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = getelementptr i8, ptr %i.bf, i64 40     ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !15
  %i.bq = add i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !15
  %i.br = getelementptr i8, ptr %.0.i40, i64 48
  store ptr %2, ptr %i.br, align 8, !tbaa !186
  %i.bs = getelementptr i8, ptr %2, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !186 ; 2 uses
  %.not17.i41 = icmp eq ptr %i.bt, null
  br i1 %.not17.i41, label %list_concat.exit43, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_6
