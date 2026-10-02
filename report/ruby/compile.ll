Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@iseq_setup:ISEQ_COMPILE_DATA.exit

._crit_edge.i.i:                                  ; preds = %bb.ca
  %.pre.i.i = load i32, ptr %i.il, align 8, !tbaa !108
  br label %add_insn_info.exit.i

bb.cb:                                            ; preds = %bb.ca
  %i.ph = add i32 %.0350587.i, -1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr [12 x i8], ptr %i.fw, i64 %i.pi ; 3 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !144 ; 3 uses
  %i.pl = load i32, ptr %i.il, align 8, !tbaa !108 ; 2 uses
  %.not.i475.i = icmp eq i32 %i.pk, %i.pl
  br i1 %.not.i475.i, label %bb.cc, label %add_insn_info.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.pm = getelementptr i8, ptr %i.pj, i64 4
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !145
  %i.po = getelementptr i8, ptr %.1330590.i, i64 52
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !146
  %.not23.i.i = icmp eq i32 %i.pn, %i.pp
  br i1 %.not23.i.i, label %bb.cd, label %add_insn_info.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.pq = getelementptr i8, ptr %i.pj, i64 8
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !147
  %i.ps = getelementptr i8, ptr %.1330590.i, i64 56
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !103
  %.not24.i.i = icmp eq i32 %i.pr, %i.pt
  br i1 %.not24.i.i, label %.thread513.i, label %add_insn_info.exit.i

add_insn_info.exit.i:                             ; preds = %bb.cd, %bb.cc, %bb.cb, %._crit_edge.i.i
  %i.pu = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.pk, %bb.cd ], [ %i.pk, %bb.cc ], [ %i.pl, %bb.cb ]
  %i.pv = sext i32 %.0350587.i to i64             ; 2 uses
  %i.pw = getelementptr [12 x i8], ptr %i.fw, i64 %i.pv ; 2 uses
  store i32 %i.pu, ptr %i.pw, align 4, !tbaa !144
  %i.px = getelementptr i8, ptr %.1330590.i, i64 52
  %i.py = getelementptr i8, ptr %i.pw, i64 4
  %i.pz = load <2 x i32>, ptr %i.px, align 4, !tbaa !37
  store <2 x i32> %i.pz, ptr %i.py, align 4, !tbaa !37
  %i.qa = getelementptr [4 x i8], ptr %i.fx, i64 %i.pv
  store i32 %.5362586.i, ptr %i.qa, align 4, !tbaa !37
  %i.qb = add i32 %.0350587.i, 1
  br label %.thread513.i

bb.ce:                                            ; preds = %bb.bb
  %i.qc = sext i8 %i.ip to i32
  call void @ruby_xfree(ptr noundef nonnull %i.fv) #37
  call void @ruby_xfree(ptr noundef nonnull %i.fw) #37
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !87
  call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val.i, ptr noundef %.1330590.i)
  %i.qd = load i32, ptr %i.il, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.qd, ptr noundef nonnull @.str.37, i32 noundef %i.qc)
  br label %iseq_set_sequence.exit.thread

bb.cf:                                            ; preds = %bb.az
  %i.qe = getelementptr i8, ptr %.1330590.i, i64 36
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !110
  br label %.thread513.i

bb.cg:                                            ; preds = %bb.az
  %i.qg = getelementptr i8, ptr %.1330590.i, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !113 ; 3 uses
  %.not399.i = icmp eq ptr %i.qh, null            ; 2 uses
  br i1 %.not399.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qi = getelementptr i8, ptr %i.qh, i64 36
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !110
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.4348.i = phi i32 [ %i.qj, %bb.ch ], [ 0, %bb.cg ] ; 6 uses
  %i.qk = getelementptr i8, ptr %.1330590.i, i64 32 ; 3 uses
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !114 ; 3 uses
  %.not400.i = icmp eq i32 %i.ql, -1
  br i1 %.not400.i, label %.thread513.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qm = sub i32 %.3347588.i, %.4348.i           ; 4 uses
  %i.qn = icmp sgt i32 %i.qm, 0
  br i1 %i.qn, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.qo = icmp eq i32 %.0350587.i, 0
  br i1 %i.qo, label %.split377.i, label %.split.i

.split.i:                                         ; preds = %bb.ck
  %i.qp = sext i32 %.0350587.i to i64             ; 2 uses
  %i.qq = getelementptr [12 x i8], ptr %i.fw, i64 %i.qp ; 3 uses
  store i32 %i.ql, ptr %i.qq, align 4, !tbaa !144
  %i.qr = getelementptr i8, ptr %i.qq, i64 4
  store i32 -1, ptr %i.qr, align 4, !tbaa !145
  %i.qs = getelementptr i8, ptr %i.qq, i64 8
  store i32 0, ptr %i.qs, align 4, !tbaa !147
  %i.qt = getelementptr [4 x i8], ptr %i.fx, i64 %i.qp
  store i32 %.5362586.i, ptr %i.qt, align 4, !tbaa !37
  br label %bb.cl

.split377.i:                                      ; preds = %bb.ck
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.ql, ptr noundef nonnull @.str.38)
  %.1330.val427.i = load i32, ptr %i.qk, align 8, !tbaa !114
  store i32 %.1330.val427.i, ptr %i.fw, align 4, !tbaa !144
  store i32 -1, ptr %i.hn, align 4, !tbaa !145
  store i32 0, ptr %i.ho, align 4, !tbaa !147
  store i32 %.5362586.i, ptr %i.fx, align 4, !tbaa !37
  br label %bb.cl

bb.cl:                                            ; preds = %.split377.i, %.split.i
  %i.qu = add i32 %.0350587.i, 1                  ; 2 uses
  %.not519.i = icmp eq i32 %i.qm, 1
  %i.qv = add i32 %.5362586.i, 1                  ; 2 uses
  %i.qw = sext i32 %.5362586.i to i64
  %i.qx = getelementptr [8 x i8], ptr %i.fv, i64 %i.qw ; 2 uses
  br i1 %.not519.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i64 46, ptr %i.qx, align 8, !tbaa !63
  %i.qy = zext nneg i32 %i.qm to i64
  %i.qz = add i32 %.5362586.i, 2
  %i.ra = sext i32 %i.qv to i64
  %i.rb = getelementptr [8 x i8], ptr %i.fv, i64 %i.ra
  store i64 %i.qy, ptr %i.rb, align 8, !tbaa !63
  br label %.thread513.i

bb.cn:                                            ; preds = %bb.cl
  store i64 39, ptr %i.qx, align 8, !tbaa !63
  br label %.thread513.i

bb.co:                                            ; preds = %bb.cj
  %i.rc = icmp slt i32 %i.qm, 0
  br i1 %i.rc, label %bb.cp, label %.thread513.i

bb.cp:                                            ; preds = %bb.co
  br i1 %.not399.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rd = getelementptr i8, ptr %i.qh, i64 24
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !111
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.rf = phi i32 [ %i.re, %bb.cq ], [ -1, %bb.cp ]
  call void @ruby_xfree(ptr noundef nonnull %i.fv) #37
  call void @ruby_xfree(ptr noundef nonnull %i.fw) #37
  call void @ruby_xfree(ptr noundef nonnull %i.fx) #37
  %i.rg = icmp ugt i64 %i.hh, 127
  br i1 %i.rg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @ruby_xfree(ptr noundef %.0339.i) #37
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.rh = load i32, ptr %i.qk, align 8, !tbaa !114
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.rh, ptr noundef nonnull @.str.39, i32 noundef %i.rf, i32 noundef %.3347588.i, i32 noundef %.4348.i)
  br label %iseq_set_sequence.exit.thread

.thread513.i:                                     ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ci, %bb.cf, %add_insn_info.exit.i, %bb.cd, %bb.az
  %.11.i = phi i32 [ %.5362586.i, %bb.az ], [ %.5362586.i, %bb.ci ], [ %.5362586.i, %bb.cf ], [ %.5362586.i, %bb.co ], [ %i.qv, %bb.cn ], [ %i.qz, %bb.cm ], [ %i.im, %add_insn_info.exit.i ], [ %i.im, %bb.cd ] ; 2 uses
  %.6356.i = phi i32 [ %.0350587.i, %bb.az ], [ %.0350587.i, %bb.ci ], [ %.0350587.i, %bb.cf ], [ %.0350587.i, %bb.co ], [ %i.qu, %bb.cn ], [ %i.qu, %bb.cm ], [ %i.qb, %add_insn_info.exit.i ], [ %.0350587.i, %bb.cd ] ; 2 uses
  %.5349.i = phi i32 [ %.3347588.i, %bb.az ], [ %.4348.i, %bb.ci ], [ %i.qf, %bb.cf ], [ %.4348.i, %bb.co ], [ %.4348.i, %bb.cn ], [ %.4348.i, %bb.cm ], [ %i.hw, %add_insn_info.exit.i ], [ %i.hw, %bb.cd ]
  %.6338.i = phi i1 [ %.0332589.i, %bb.az ], [ %.0332589.i, %bb.ci ], [ %.0332589.i, %bb.cf ], [ %.0332589.i, %bb.co ], [ %.0332589.i, %bb.cn ], [ %.0332589.i, %bb.cm ], [ %.1333.i, %add_insn_info.exit.i ], [ %.1333.i, %bb.cd ] ; 2 uses
  %i.ri = getelementptr i8, ptr %.1330590.i, i64 8
  %.1330.i = load ptr, ptr %i.ri, align 8, !tbaa !62 ; 2 uses
  %.not398.i = icmp eq ptr %.1330.i, null
  br i1 %.not398.i, label %._crit_edge592.loopexit.i, label %bb.az, !llvm.loop !672

._crit_edge592.loopexit.i:                        ; preds = %.thread513.i
  %.pre634.i = load i64, ptr %0, align 8, !tbaa !123
  br label %._crit_edge592.i

._crit_edge592.i:                                 ; preds = %._crit_edge592.loopexit.i, %ISEQ_COMPILE_DATA.exit459.i
  %i.rj = phi i64 [ %i.hg, %ISEQ_COMPILE_DATA.exit459.i ], [ %.pre634.i, %._crit_edge592.loopexit.i ]
  %.5362.lcssa.i = phi i32 [ 0, %ISEQ_COMPILE_DATA.exit459.i ], [ %.11.i, %._crit_edge592.loopexit.i ]
  %.0350.lcssa.i = phi i32 [ 0, %ISEQ_COMPILE_DATA.exit459.i ], [ %.6356.i, %._crit_edge592.loopexit.i ] ; 2 uses
  %.0332.lcssa.i = phi i1 [ false, %ISEQ_COMPILE_DATA.exit459.i ], [ %.6338.i, %._crit_edge592.loopexit.i ]
  %i.rk = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.fv, ptr %i.rk, align 8, !tbaa !148
  %i.rl = getelementptr i8, ptr %i.h, i64 4
  store i32 %.5362.lcssa.i, ptr %i.rl, align 4, !tbaa !149
  %i.rm = getelementptr i8, ptr %i.h, i64 264
  store i32 %.7.i490662.i, ptr %i.rm, align 8, !tbaa !150
  %i.rn = and i64 %i.rj, 262144
  %.not.i477.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i477.i, label %ISEQ_COMPILE_DATA.exit479.i, label %ISEQ_COMPILE_DATA.exit479.thread.i

ISEQ_COMPILE_DATA.exit479.thread.i:               ; preds = %._crit_edge592.i
  %i.ro = load ptr, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 32
  %i.rq = load i8, ptr %i.rp, align 8, !tbaa !680, !range !151, !noundef !152
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %ISEQ_COMPILE_DATA.exit482.i, label %ISEQ_COMPILE_DATA.exit479.i

ISEQ_COMPILE_DATA.exit482.i:                      ; preds = %ISEQ_COMPILE_DATA.exit479.thread.i
  %i.rs = getelementptr i8, ptr %i.ro, i64 40
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !47
  %i.ru = getelementptr i8, ptr %i.h, i64 280
  store i64 %i.rt, ptr %i.ru, align 8, !tbaa !47
  br label %bb.cv

ISEQ_COMPILE_DATA.exit479.i:                      ; preds = %ISEQ_COMPILE_DATA.exit479.thread.i, %._crit_edge592.i
  %i.rv = getelementptr i8, ptr %i.h, i64 280     ; 2 uses
  br i1 %.0332.lcssa.i, label %bb.cu, label %ISEQ_COMPILE_DATA.exit485.i

bb.cu:                                            ; preds = %ISEQ_COMPILE_DATA.exit479.i
  store ptr %.0339.i, ptr %i.rv, align 8, !tbaa !47
  br label %bb.cv

ISEQ_COMPILE_DATA.exit485.i:                      ; preds = %ISEQ_COMPILE_DATA.exit479.i
  store ptr null, ptr %i.rv, align 8, !tbaa !47
  %i.rw = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.rx = getelementptr i8, ptr %i.rw, i64 40
  store ptr null, ptr %i.rx, align 8, !tbaa !47
  call void @ruby_xfree(ptr noundef %.0339.i) #37
  br label %bb.cv

bb.cv:                                            ; preds = %ISEQ_COMPILE_DATA.exit485.i, %bb.cu, %ISEQ_COMPILE_DATA.exit482.i
  %i.ry = getelementptr i8, ptr %i.h, i64 112     ; 2 uses
  store ptr %i.fw, ptr %i.ry, align 8, !tbaa !153
  %i.rz = getelementptr i8, ptr %i.h, i64 120     ; 2 uses
  store ptr %i.fx, ptr %i.rz, align 8, !tbaa !154
  %i.sa = sext i32 %.0350.lcssa.i to i64          ; 2 uses
  %i.sb = call nonnull ptr @ruby_xrealloc2(ptr noundef nonnull %i.fw, i64 noundef %i.sa, i64 noundef 12) #40
  store ptr %i.sb, ptr %i.ry, align 8, !tbaa !153
  %i.sc = call nonnull ptr @ruby_xrealloc2(ptr noundef nonnull %i.fx, i64 noundef %i.sa, i64 noundef 4) #40
  store ptr %i.sc, ptr %i.rz, align 8, !tbaa !154
  %i.sd = getelementptr i8, ptr %i.h, i64 128
  store i32 %.0350.lcssa.i, ptr %i.sd, align 8, !tbaa !155
  %i.se = load ptr, ptr %i.g, align 8, !tbaa !70  ; 2 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 160
  store ptr null, ptr %i.sf, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.sg = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.sh = getelementptr i8, ptr %i.sg, i64 8
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !106 ; 3 uses
  store i64 %i.si, ptr %i.a, align 8, !tbaa !63
  %i.sj = icmp eq i64 %i.si, 4
  br i1 %i.sj, label %iseq_set_exception_table.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sk = inttoptr i64 %i.si to ptr               ; 4 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !100 ; 2 uses
  %i.sm = and i64 %i.sl, 8192
  %.not.i50.i = icmp eq i64 %i.sm, 0
  br i1 %.not.i50.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sn = trunc i64 %i.sl to i32
  %i.so = lshr i32 %i.sn, 15
  %i.sp = and i32 %i.so, 127
  %i.sq = getelementptr i8, ptr %i.sk, i64 16
  br label %rb_array_const_ptr.exit.i

bb.cy:                                            ; preds = %bb.cw
  %i.sr = getelementptr i8, ptr %i.sk, i64 16
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !47
  %i.st = trunc i64 %i.ss to i32
  %i.su = getelementptr i8, ptr %i.sk, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !47
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.cy, %bb.cx
  %i.sw = phi i32 [ %i.sp, %bb.cx ], [ %i.st, %bb.cy ] ; 5 uses
  %.0.i53.i = phi ptr [ %i.sq, %bb.cx ], [ %i.sv, %bb.cy ]
  %.not.i20 = icmp eq i32 %i.sw, 0
  br i1 %.not.i20, label %bb.dj, label %bb.cz

bb.cz:                                            ; preds = %rb_array_const_ptr.exit.i
  %i.sx = icmp sgt i32 %i.sw, 67108863
  br i1 %i.sx, label %bb.da, label %.lr.ph.i21

bb.da:                                            ; preds = %bb.cz
  call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.70, i32 noundef range(i32 1, 0) %i.sw) #41
  unreachable

.lr.ph.i21:                                       ; preds = %bb.cz
  %i.sy = shl i32 %i.sw, 5
  %i.sz = or disjoint i32 %i.sy, 4
  %i.ta = sext i32 %i.sz to i64
  %i.tb = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.ta) #42 ; 4 uses
  store i32 %i.sw, ptr %i.tb, align 1, !tbaa !37
  %i.tc = getelementptr i8, ptr %i.tb, i64 4
  %i.td = ptrtoint ptr %0 to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.di, %.lr.ph.i21
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i, %bb.di ] ; 3 uses
  %i.te = getelementptr [8 x i8], ptr %.0.i53.i, i64 %indvars.iv.i
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !63
  %i.tg = inttoptr i64 %i.tf to ptr               ; 3 uses
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !100
  %i.ti = and i64 %i.th, 8192
  %.not.i54.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i54.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tj = getelementptr i8, ptr %i.tg, i64 16
  br label %rb_array_const_ptr.exit56.i

bb.dd:                                            ; preds = %bb.db
  %i.tk = getelementptr i8, ptr %i.tg, i64 32
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !47
  br label %rb_array_const_ptr.exit56.i

rb_array_const_ptr.exit56.i:                      ; preds = %bb.dd, %bb.dc
  %.0.i55.i = phi ptr [ %i.tj, %bb.dc ], [ %i.tl, %bb.dd ] ; 5 uses
  %i.tm = getelementptr [32 x i8], ptr %i.tc, i64 %indvars.iv.i ; 7 uses
  %i.tn = load i64, ptr %.0.i55.i, align 8, !tbaa !63 ; 2 uses
  %i.to = trunc i64 %i.tn to i32
  %i.tp = and i32 %i.to, 65535
  store i32 %i.tp, ptr %i.tm, align 8, !tbaa !158
  %i.tq = getelementptr i8, ptr %.0.i55.i, i64 8
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !63
  %i.ts = and i64 %i.tr, -2
  %i.tt = inttoptr i64 %i.ts to ptr
  %i.tu = getelementptr i8, ptr %i.tt, i64 28
  %.val48.i = load i32, ptr %i.tu, align 4, !tbaa !116
  %i.tv = getelementptr i8, ptr %i.tm, i64 16
  store i32 %.val48.i, ptr %i.tv, align 8, !tbaa !159
  %i.tw = getelementptr i8, ptr %.0.i55.i, i64 16
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !63
  %i.ty = and i64 %i.tx, -2
  %i.tz = inttoptr i64 %i.ty to ptr
  %i.ua = getelementptr i8, ptr %i.tz, i64 28
  %.val47.i = load i32, ptr %i.ua, align 4, !tbaa !116
  %i.ub = getelementptr i8, ptr %i.tm, i64 20
  store i32 %.val47.i, ptr %i.ub, align 4, !tbaa !160
  %i.uc = getelementptr i8, ptr %.0.i55.i, i64 24
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !63 ; 4 uses
  %i.ue = inttoptr i64 %i.ud to ptr
  %i.uf = getelementptr i8, ptr %i.tm, i64 8
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !161
  %i.ug = icmp eq i64 %i.ud, 0
  %i.uh = and i64 %i.ud, 7
  %i.ui = icmp ne i64 %i.uh, 0
  %i.uj = or i1 %i.ug, %i.ui
  br i1 %i.uj, label %rb_obj_written.exit.i22, label %bb.de

bb.de:                                            ; preds = %rb_array_const_ptr.exit56.i
  call void @rb_gc_writebarrier(i64 noundef %i.td, i64 noundef %i.ud) #37
  br label %rb_obj_written.exit.i22

rb_obj_written.exit.i22:                          ; preds = %bb.de, %rb_array_const_ptr.exit56.i
  %i.uk = getelementptr i8, ptr %.0.i55.i, i64 32
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !63 ; 2 uses
  %.not46.i = icmp eq i64 %i.ul, 0
  br i1 %.not46.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %rb_obj_written.exit.i22
  %i.um = and i64 %i.ul, -2
  %i.un = inttoptr i64 %i.um to ptr               ; 2 uses
  %i.uo = getelementptr i8, ptr %i.un, i64 28
  %.val.i23 = load i32, ptr %i.uo, align 4, !tbaa !116
  %i.up = getelementptr i8, ptr %i.tm, i64 24
  store i32 %.val.i23, ptr %i.up, align 8, !tbaa !162
  %i.uq = getelementptr i8, ptr %i.un, i64 36
  %.val49.i = load i32, ptr %i.uq, align 4, !tbaa !110 ; 2 uses
  %i.ur = getelementptr i8, ptr %i.tm, i64 28     ; 2 uses
  store i32 %.val49.i, ptr %i.ur, align 4, !tbaa !163
  %trunc.i = trunc i64 %i.tn to i16
  switch i16 %trunc.i, label %bb.di [
    i16 3, label %bb.dg
    i16 9, label %bb.dg
    i16 13, label %bb.dg
  ]

bb.dg:                                            ; preds = %bb.df, %bb.df, %bb.df
  %i.us = add i32 %.val49.i, -1
  store i32 %i.us, ptr %i.ur, align 4, !tbaa !163
  br label %bb.di

bb.dh:                                            ; preds = %rb_obj_written.exit.i22
  %i.ut = getelementptr i8, ptr %i.tm, i64 24
  store i32 0, ptr %i.ut, align 8, !tbaa !162
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uu = load i32, ptr %i.tb, align 1, !tbaa !37
  %i.uv = zext i32 %i.uu to i64
  %i.uw = icmp samesign ult i64 %indvars.iv.next.i, %i.uv
  br i1 %i.uw, label %bb.db, label %ISEQ_COMPILE_DATA.exit59.i, !llvm.loop !673

ISEQ_COMPILE_DATA.exit59.i:                       ; preds = %bb.di
  %i.ux = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.uy = getelementptr i8, ptr %i.ux, i64 160
  store ptr %i.tb, ptr %i.uy, align 8, !tbaa !156
  %i.uz = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.va = getelementptr i8, ptr %i.uz, i64 8
  store i64 0, ptr %i.va, align 8, !tbaa !63
  br label %bb.dj

bb.dj:                                            ; preds = %ISEQ_COMPILE_DATA.exit59.i, %rb_array_const_ptr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr %i.a, ptr %i.b, align 8, !tbaa !107
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #37, !srcloc !684
  %i.vb = load ptr, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.vc = load volatile i64, ptr %i.vb, align 8, !tbaa !63 ; 0 uses
  %.val.pre = load ptr, ptr %i.g, align 8, !tbaa !70
  br label %iseq_set_exception_table.exit
end_hunk_0
begin_hunk_1_@compile_for_masgn:nd_line.exit
  %i.cv = lshr i64 %i.cu, 15
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.cy = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.cw, i32 noundef %i.cx, i64 noundef 3025, i64 noundef 1, ptr noundef null, i64 noundef 9, ptr noundef null) ; 3 uses
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !61
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !62
  store ptr %i.cy, ptr %i.cq, align 8, !tbaa !42
  %i.dc = load i64, ptr %2, align 8, !tbaa !172
  %i.dd = lshr i64 %i.dc, 15
  %i.de = trunc i64 %i.dd to i32
  %i.df = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.dg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.de, i32 noundef %i.df, i32 noundef 19, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dg, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !61
  %i.dj = getelementptr i8, ptr %i.dh, i64 8
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !62
  store ptr %i.dg, ptr %i.cq, align 8, !tbaa !42
  %i.dk = load i64, ptr %2, align 8, !tbaa !172
  %i.dl = lshr i64 %i.dk, 15
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.do = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %i.dn, i64 noundef 140, i64 noundef 3, ptr noundef null, i64 noundef 9, ptr noundef null) ; 3 uses
  %i.dp = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !61
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !62
  store ptr %i.do, ptr %i.cq, align 8, !tbaa !42
  %i.ds = load i64, ptr %2, align 8, !tbaa !172
  %i.dt = lshr i64 %i.ds, 15
  %i.du = trunc i64 %i.dt to i32
  %i.dv = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.dw = ptrtoint ptr %i.aa to i64
  %i.dx = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef 74, i32 noundef 1, i64 noundef %i.dw) ; 3 uses
  %i.dy = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !61
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !62
  store ptr %i.dx, ptr %i.cq, align 8, !tbaa !42
  %i.eb = load i32, ptr %i.ai, align 8, !tbaa !240
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ai, align 8, !tbaa !240
  %i.ed = load i64, ptr %2, align 8, !tbaa !172
  %i.ee = lshr i64 %i.ed, 15
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.eh = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ei = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !61
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !62
  store ptr %i.eh, ptr %i.cq, align 8, !tbaa !42
  %i.el = load i64, ptr %2, align 8, !tbaa !172
  %i.em = lshr i64 %i.el, 15
  %i.en = trunc i64 %i.em to i32
  %i.eo = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.ep = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.en, i32 noundef %i.eo, i32 noundef 19, i32 noundef 1, i64 noundef 1) ; 3 uses
  %i.eq = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 16
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !61
  %i.es = getelementptr i8, ptr %i.eq, i64 8
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !62
  store ptr %i.ep, ptr %i.cq, align 8, !tbaa !42
  %i.et = load i64, ptr %2, align 8, !tbaa !172
  %i.eu = lshr i64 %i.et, 15
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.ex = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %i.ew, i64 noundef 145, i64 noundef 3, ptr noundef null, i64 noundef 9, ptr noundef null) ; 3 uses
  %i.ey = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ex, i64 16
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !61
  %i.fa = getelementptr i8, ptr %i.ey, i64 8
  store ptr %i.ex, ptr %i.fa, align 8, !tbaa !62
  store ptr %i.ex, ptr %i.cq, align 8, !tbaa !42
  %i.fb = load i64, ptr %2, align 8, !tbaa !172
  %i.fc = lshr i64 %i.fb, 15
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.ff = load i64, ptr @rb_cArray, align 8, !tbaa !63
  %i.fg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef 19, i32 noundef 1, i64 noundef %i.ff) ; 3 uses
  %i.fh = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 16
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !61
  %i.fj = getelementptr i8, ptr %i.fh, i64 8
  store ptr %i.fg, ptr %i.fj, align 8, !tbaa !62
  store ptr %i.fg, ptr %i.cq, align 8, !tbaa !42
  %i.fk = load i64, ptr %2, align 8, !tbaa !172
  %i.fl = lshr i64 %i.fk, 15
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.fo = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fm, i32 noundef %i.fn, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fp = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !61
  %i.fr = getelementptr i8, ptr %i.fp, i64 8
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !62
  store ptr %i.fo, ptr %i.cq, align 8, !tbaa !42
  %i.fs = load i64, ptr %2, align 8, !tbaa !172
  %i.ft = lshr i64 %i.fs, 15
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = load i32, ptr %i.cn, align 8, !tbaa !243
  %.pr.i = load i64, ptr @compile_for_masgn.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.fw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.134, i64 noundef 11) #37 ; 3 uses
  store i64 %i.fw, ptr @compile_for_masgn.rbimpl_id, align 8, !tbaa !63
  %.not.i117 = icmp eq i64 %i.fw, 0
  br i1 %.not.i117, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.f
  %.lcssa.i = phi i64 [ %.pr.i, %bb.f ], [ %i.fw, %.lr.ph.i ]
  %i.fx = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.fu, i32 noundef %i.fv, i64 noundef %.lcssa.i, i64 noundef 3, ptr noundef null, i64 noundef 9, ptr noundef null) ; 3 uses
  %i.fy = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fx, i64 16
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !61
  %i.ga = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !62
  store ptr %i.fx, ptr %i.cq, align 8, !tbaa !42
  %i.gb = load i64, ptr %2, align 8, !tbaa !172
  %i.gc = lshr i64 %i.gb, 15
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.gf = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gd, i32 noundef %i.ge, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gg = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gf, i64 16
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !61
  %i.gi = getelementptr i8, ptr %i.gg, i64 8
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !62
  store ptr %i.gf, ptr %i.cq, align 8, !tbaa !42
  %i.gj = load i64, ptr %2, align 8, !tbaa !172
  %i.gk = lshr i64 %i.gj, 15
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.gn = ptrtoint ptr %i.bk to i64
  %i.go = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef 74, i32 noundef 1, i64 noundef %i.gn) ; 3 uses
  %i.gp = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 16
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !61
  %i.gr = getelementptr i8, ptr %i.gp, i64 8
  store ptr %i.go, ptr %i.gr, align 8, !tbaa !62
  store ptr %i.go, ptr %i.cq, align 8, !tbaa !42
  %i.gs = load i32, ptr %i.bs, align 8, !tbaa !240
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.bs, align 8, !tbaa !240
  %i.gu = load i64, ptr %2, align 8, !tbaa !172
  %i.gv = lshr i64 %i.gu, 15
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.gy = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gw, i32 noundef %i.gx, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.gz = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gy, i64 16
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !61
  %i.hb = getelementptr i8, ptr %i.gz, i64 8
  store ptr %i.gy, ptr %i.hb, align 8, !tbaa !62
  %i.hc = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.gy, ptr %i.hc, align 8, !tbaa !61
  %i.hd = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.bk, ptr %i.hd, align 8, !tbaa !62
  store ptr %i.bk, ptr %i.cq, align 8, !tbaa !42
  %i.he = load i64, ptr %2, align 8, !tbaa !172
  %i.hf = lshr i64 %i.he, 15
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = load i32, ptr %i.cn, align 8, !tbaa !243
  %i.hi = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.hg, i32 noundef %i.hh, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.hj = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 16
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !61
  %i.hl = getelementptr i8, ptr %i.hj, i64 8
  store ptr %i.hi, ptr %i.hl, align 8, !tbaa !62
  %i.hm = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.hi, ptr %i.hm, align 8, !tbaa !61
  %i.hn = getelementptr i8, ptr %i.hi, i64 8
  store ptr %i.aa, ptr %i.hn, align 8, !tbaa !62
  store ptr %i.aa, ptr %i.cq, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %iseq_compile_each.exit, %rbimpl_intern_const.exit
  %.0 = phi i32 [ 1, %rbimpl_intern_const.exit ], [ 0, %iseq_compile_each.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_break(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !123
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp ne i64 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit.thread, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr inttoptr (i64 64 to ptr), align 64, !tbaa !525
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %can_add_ensure_iseq.exit.preheader, label %can_add_ensure_iseq.exit.preheader.a

can_add_ensure_iseq.exit.preheader:               ; preds = %.preheader.i, %ISEQ_COMPILE_DATA.exit.thread, %ISEQ_COMPILE_DATA.exit
  br label %can_add_ensure_iseq.exit

can_add_ensure_iseq.exit.preheader.a:             ; preds = %ISEQ_COMPILE_DATA.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val13.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !525
  %.not138 = icmp eq ptr %i.g, null
  br i1 %.not138, label %can_add_ensure_iseq.exit.preheader, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.h = getelementptr i8, ptr %i.e, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !535, !range !151, !noundef !152
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %ISEQ_COMPILE_DATA.exit13.i, label %.loopexit

ISEQ_COMPILE_DATA.exit13.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %.not.i69 = icmp eq ptr %i.l, null
  br i1 %.not.i69, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %ISEQ_COMPILE_DATA.exit13.i, %bb.b
  %.0.i70 = phi ptr [ %i.o, %bb.b ], [ %i.l, %ISEQ_COMPILE_DATA.exit13.i ] ; 2 uses
  %i.m = load ptr, ptr %.0.i70, align 8, !tbaa !529
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.b, label %can_add_ensure_iseq.exit.preheader

bb.b:                                             ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %.0.i70, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !531  ; 2 uses
  %.old1.not.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i, label %.loopexit, label %.preheader.i

.loopexit:                                        ; preds = %bb.b, %can_add_ensure_iseq.exit.preheader.a, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit13.i
  %.val13.i = phi ptr [ %.val13.i.pre, %can_add_ensure_iseq.exit.preheader.a ], [ %i.e, %ISEQ_COMPILE_DATA.exit13.i ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.q = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 48
  %i.w = getelementptr i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %.loopexit
  %i.aa = icmp ult i32 %i.x, 48
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ad = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.x, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i ], [ %i.ae, %._crit_edge.i.i.loopexit.i.i ]
  %i.af = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.af, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !64
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !64
  store ptr null, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ai, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %.loopexit, %._crit_edge.i.i.i.i
  %i.aj = phi i32 [ %i.t, %.loopexit ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.r, %.loopexit ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.al = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 10 uses
  %i.ao = add i32 %i.aj, 48
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !37
  store i32 1, ptr %i.an, align 8, !tbaa !182
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !184
  %i.au = getelementptr i8, ptr %i.an, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.an, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 44     ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -16
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %i.an, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr i8, ptr %1, i64 24        ; 12 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.an, ptr %i.ba, align 8, !tbaa !42
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !525 ; 4 uses
  %i.bh = load i64, ptr %2, align 8, !tbaa !172
  %i.bi = lshr i64 %i.bh, 15
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr i8, ptr %i.be, i64 96     ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 40
  %i.bq = getelementptr i8, ptr %i.bl, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !37 ; 4 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.bp, %i.bs
  br i1 %i.bt, label %.preheader.i.i.i.i78, label %compile_data_alloc_adjust.exit.i

.preheader.i.i.i.i78:                             ; preds = %new_label_body.exit
  %i.bu = icmp ult i32 %i.br, 40
  br i1 %i.bu, label %.lr.ph.i.i.i.i82, label %._crit_edge.i.i.i.i79

.lr.ph.i.i.i.i82:                                 ; preds = %.preheader.i.i.i.i78, %bb.f
  %.027.i.i.i.i83 = phi i32 [ %i.bw, %bb.f ], [ %i.br, %.preheader.i.i.i.i78 ] ; 3 uses
  %i.bv = icmp samesign ugt i32 %.027.i.i.i.i83, 1073741822
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i82
  tail call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i82
  %i.bw = shl nuw nsw i32 %.027.i.i.i.i83, 1      ; 3 uses
  %i.bx = icmp samesign ult i32 %.027.i.i.i.i83, 20
  br i1 %i.bx, label %.lr.ph.i.i.i.i82, label %._crit_edge.i.i.loopexit.i.i84, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i84:                   ; preds = %bb.f
  %i.by = zext nneg i32 %i.bw to i64
  br label %._crit_edge.i.i.i.i79

._crit_edge.i.i.i.i79:                            ; preds = %._crit_edge.i.i.loopexit.i.i84, %.preheader.i.i.i.i78
  %.0.lcssa.i.i.i.i80 = phi i32 [ %i.br, %.preheader.i.i.i.i78 ], [ %i.bw, %._crit_edge.i.i.loopexit.i.i84 ]
  %.lcssa.i.i.i.i81 = phi i64 [ %i.bs, %.preheader.i.i.i.i78 ], [ %i.by, %._crit_edge.i.i.loopexit.i.i84 ]
  %i.bz = add nuw nsw i64 %.lcssa.i.i.i.i81, 16
  %i.ca = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bz, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ca, ptr %i.bl, align 8, !tbaa !64
  store ptr %i.ca, ptr %i.bk, align 8, !tbaa !64
  store ptr null, ptr %i.ca, align 8, !tbaa !64
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i32 0, ptr %i.cb, align 8, !tbaa !37
  %i.cc = getelementptr i8, ptr %i.ca, i64 12
  store i32 %.0.lcssa.i.i.i.i80, ptr %i.cc, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i

compile_data_alloc_adjust.exit.i:                 ; preds = %._crit_edge.i.i.i.i79, %new_label_body.exit
  %i.cd = phi i32 [ 0, %._crit_edge.i.i.i.i79 ], [ %i.bn, %new_label_body.exit ] ; 2 uses
  %.022.i.i.i.i76 = phi ptr [ %i.ca, %._crit_edge.i.i.i.i79 ], [ %i.bl, %new_label_body.exit ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.022.i.i.i.i76, i64 16
  %i.cf = getelementptr i8, ptr %.022.i.i.i.i76, i64 8
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cg  ; 7 uses
  %i.ci = add i32 %i.cd, 40
  store i32 %i.ci, ptr %i.cf, align 8, !tbaa !37
  store i32 3, ptr %i.ch, align 8, !tbaa !533
  %i.cj = getelementptr i8, ptr %i.ch, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !534
  %i.ck = getelementptr i8, ptr %i.ch, i64 24
  store ptr %i.bg, ptr %i.ck, align 8, !tbaa !113
  %i.cl = getelementptr i8, ptr %i.ch, i64 32
  store i32 %i.bj, ptr %i.cl, align 8, !tbaa !114
  %.not.i77 = icmp eq ptr %i.bg, null
  br i1 %.not.i77, label %new_adjust_body.exit, label %bb.g

bb.g:                                             ; preds = %compile_data_alloc_adjust.exit.i
  %i.cm = getelementptr i8, ptr %i.bg, i64 40     ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !240
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !240
  %i.cp = getelementptr i8, ptr %i.bg, i64 44     ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = or i8 %i.cq, 8
  store i8 %i.cr, ptr %i.cp, align 4
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %compile_data_alloc_adjust.exit.i, %bb.g
  %i.cs = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ch, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !61
  %i.cu = getelementptr i8, ptr %i.cs, i64 8
  store ptr %i.ch, ptr %i.cu, align 8, !tbaa !62
  store ptr %i.ch, ptr %i.ba, align 8, !tbaa !42
  %i.cv = getelementptr i8, ptr %2, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !537 ; 2 uses
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 124
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !526 ; 2 uses
  %i.da = icmp eq ptr %i.cw, null
  br i1 %i.da, label %bb.h, label %iseq_compile_each.exit

bb.h:                                             ; preds = %new_adjust_body.exit
  %.not.i88 = icmp eq i32 %i.cz, 0
  br i1 %.not.i88, label %ISEQ_COMPILE_DATA.exit.i90, label %iseq_compile_each.exit.thread

ISEQ_COMPILE_DATA.exit.i90:                       ; preds = %bb.h
  %i.db = getelementptr i8, ptr %i.cx, i64 128
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !60 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i90
  %i.de = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.df = tail call i64 @rb_fix2int(i64 noundef %i.de) #37, !inline_history !169
  %i.dg = trunc i64 %i.df to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ISEQ_COMPILE_DATA.exit.i90
  %.0.i91 = phi i32 [ %i.dg, %bb.i ], [ %i.dc, %ISEQ_COMPILE_DATA.exit.i90 ]
  %i.dh = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i91, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.di = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 16
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !61
  %i.dk = getelementptr i8, ptr %i.di, i64 8
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !62
  store ptr %i.dh, ptr %i.ba, align 8, !tbaa !42
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit:                           ; preds = %new_adjust_body.exit
  %i.dl = tail call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.cw, i32 noundef %i.cz), !inline_history !169
  %.not64.not = icmp eq i32 %i.dl, 0
  br i1 %.not64.not, label %bb.u, label %iseq_compile_each.exit.thread

iseq_compile_each.exit.thread:                    ; preds = %bb.h, %bb.j, %iseq_compile_each.exit
  tail call fastcc void @add_ensure_iseq(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0)
  %i.dm = load i64, ptr %2, align 8, !tbaa !172
  %i.dn = lshr i64 %i.dm, 15
  %i.do = trunc i64 %i.dn to i32
  %i.dp = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !243
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ds = getelementptr i8, ptr %i.dr, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !234
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.do, i32 noundef %i.dq, i32 noundef 72, i32 noundef 1, i64 noundef %i.du) ; 3 uses
  %i.dw = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 16
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !61
  %i.dy = getelementptr i8, ptr %i.dw, i64 8
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !62
  store ptr %i.dv, ptr %i.ba, align 8, !tbaa !42
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ea = getelementptr i8, ptr %i.dz, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !234
  %i.ec = getelementptr i8, ptr %i.eb, i64 40     ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !240
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !240
  %.val66 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ef = getelementptr i8, ptr %.val66, i64 96   ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !64 ; 4 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !37 ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 40
  %i.el = getelementptr i8, ptr %i.eg, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !37 ; 4 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp samesign ugt i64 %i.ek, %i.en
  br i1 %i.eo, label %.preheader.i.i.i.i104, label %new_adjust_body.exit111

.preheader.i.i.i.i104:                            ; preds = %iseq_compile_each.exit.thread
  %i.ep = icmp ult i32 %i.em, 40
  br i1 %i.ep, label %.lr.ph.i.i.i.i108, label %._crit_edge.i.i.i.i105

.lr.ph.i.i.i.i108:                                ; preds = %.preheader.i.i.i.i104, %bb.l
  %.027.i.i.i.i109 = phi i32 [ %i.er, %bb.l ], [ %i.em, %.preheader.i.i.i.i104 ] ; 3 uses
  %i.eq = icmp samesign ugt i32 %.027.i.i.i.i109, 1073741822
  br i1 %i.eq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i108
  tail call void @rb_memerror() #38
  unreachable

bb.l:                                             ; preds = %.lr.ph.i.i.i.i108
  %i.er = shl nuw nsw i32 %.027.i.i.i.i109, 1     ; 3 uses
  %i.es = icmp samesign ult i32 %.027.i.i.i.i109, 20
  br i1 %i.es, label %.lr.ph.i.i.i.i108, label %._crit_edge.i.i.loopexit.i.i110, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i110:                  ; preds = %bb.l
  %i.et = zext nneg i32 %i.er to i64
  br label %._crit_edge.i.i.i.i105

._crit_edge.i.i.i.i105:                           ; preds = %._crit_edge.i.i.loopexit.i.i110, %.preheader.i.i.i.i104
  %.0.lcssa.i.i.i.i106 = phi i32 [ %i.em, %.preheader.i.i.i.i104 ], [ %i.er, %._crit_edge.i.i.loopexit.i.i110 ]
  %.lcssa.i.i.i.i107 = phi i64 [ %i.en, %.preheader.i.i.i.i104 ], [ %i.et, %._crit_edge.i.i.loopexit.i.i110 ]
  %i.eu = add nuw nsw i64 %.lcssa.i.i.i.i107, 16
  %i.ev = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.eu, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ev, ptr %i.eg, align 8, !tbaa !64
  store ptr %i.ev, ptr %i.ef, align 8, !tbaa !64
  store ptr null, ptr %i.ev, align 8, !tbaa !64
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  store i32 0, ptr %i.ew, align 8, !tbaa !37
  %i.ex = getelementptr i8, ptr %i.ev, i64 12
  store i32 %.0.lcssa.i.i.i.i106, ptr %i.ex, align 4, !tbaa !37
  br label %new_adjust_body.exit111

new_adjust_body.exit111:                          ; preds = %._crit_edge.i.i.i.i105, %iseq_compile_each.exit.thread
  %i.ey = phi i32 [ 0, %._crit_edge.i.i.i.i105 ], [ %i.ei, %iseq_compile_each.exit.thread ] ; 2 uses
  %.022.i.i.i.i102 = phi ptr [ %i.ev, %._crit_edge.i.i.i.i105 ], [ %i.eg, %iseq_compile_each.exit.thread ] ; 2 uses
  %i.ez = getelementptr i8, ptr %.022.i.i.i.i102, i64 16
  %i.fa = getelementptr i8, ptr %.022.i.i.i.i102, i64 8
  %i.fb = zext i32 %i.ey to i64
  %i.fc = getelementptr i8, ptr %i.ez, i64 %i.fb  ; 7 uses
  %i.fd = add i32 %i.ey, 40
  store i32 %i.fd, ptr %i.fa, align 8, !tbaa !37
  store i32 3, ptr %i.fc, align 8, !tbaa !533
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  store ptr null, ptr %i.fe, align 8, !tbaa !534
  %i.ff = getelementptr i8, ptr %i.fc, i64 24
  store ptr %i.an, ptr %i.ff, align 8, !tbaa !113
  %i.fg = getelementptr i8, ptr %i.fc, i64 32
  store i32 -1, ptr %i.fg, align 8, !tbaa !114
  %i.fh = load i32, ptr %i.av, align 8, !tbaa !240
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.av, align 8, !tbaa !240
  %i.fj = load i8, ptr %i.aw, align 4
  %i.fk = or i8 %i.fj, 8
  store i8 %i.fk, ptr %i.aw, align 4
  %i.fl = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fc, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !61
  %i.fn = getelementptr i8, ptr %i.fl, i64 8
  store ptr %i.fc, ptr %i.fn, align 8, !tbaa !62
  store ptr %i.fc, ptr %i.ba, align 8, !tbaa !42
  %.not65 = icmp eq i32 %3, 0
  br i1 %.not65, label %bb.m, label %bb.u

bb.m:                                             ; preds = %new_adjust_body.exit111
  %i.fo = load i64, ptr %2, align 8, !tbaa !172
  %i.fp = lshr i64 %i.fo, 15
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = load i32, ptr %i.dp, align 8, !tbaa !243
  %i.fs = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ft = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fs, i64 16
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !61
  %i.fv = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fs, ptr %i.fv, align 8, !tbaa !62
  store ptr %i.fs, ptr %i.ba, align 8, !tbaa !42
  br label %bb.u

can_add_ensure_iseq.exit:                         ; preds = %can_add_ensure_iseq.exit.preheader, %bb.p
  %.0150 = phi ptr [ %i.gj, %bb.p ], [ %0, %can_add_ensure_iseq.exit.preheader ] ; 3 uses
  %i.fw = load i64, ptr %.0150, align 8, !tbaa !123
  %i.fx = and i64 %i.fw, 262144
  %.not.i114 = icmp eq i64 %i.fx, 0
  br i1 %.not.i114, label %ISEQ_COMPILE_DATA.exit116.thread, label %ISEQ_COMPILE_DATA.exit116

ISEQ_COMPILE_DATA.exit116:                        ; preds = %can_add_ensure_iseq.exit
  %i.fy = getelementptr i8, ptr %.0150, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !47 ; 2 uses
  %.not60 = icmp eq ptr %i.fz, null
  br i1 %.not60, label %ISEQ_COMPILE_DATA.exit116.thread, label %ISEQ_COMPILE_DATA.exit119

ISEQ_COMPILE_DATA.exit119:                        ; preds = %ISEQ_COMPILE_DATA.exit116
  %i.ga = getelementptr i8, ptr %i.fz, i64 64
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !525
  %.not61 = icmp eq ptr %i.gb, null
  br i1 %.not61, label %bb.n, label %bb.q

bb.n:                                             ; preds = %ISEQ_COMPILE_DATA.exit119
  %i.gc = getelementptr i8, ptr %.0150, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !70 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !86
  switch i32 %i.ge, label %bb.p [
    i32 2, label %bb.q
    i32 6, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.gf = load i64, ptr %2, align 8, !tbaa !172
  %i.gg = lshr i64 %i.gf, 15
  %i.gh = trunc i64 %i.gg to i32
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.gh, ptr noundef nonnull @.str.135)
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.gi = getelementptr i8, ptr %i.gd, i64 168
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !168 ; 2 uses
  %.not59 = icmp eq ptr %i.gj, null
  br i1 %.not59, label %ISEQ_COMPILE_DATA.exit116.thread, label %can_add_ensure_iseq.exit, !llvm.loop !1113

bb.q:                                             ; preds = %bb.n, %ISEQ_COMPILE_DATA.exit119
  %.056 = phi i64 [ 65541, %ISEQ_COMPILE_DATA.exit119 ], [ 5, %bb.n ]
  %i.gk = getelementptr i8, ptr %2, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !537 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %ISEQ_COMPILE_DATA.exit.i124, label %iseq_compile_each.exit127

ISEQ_COMPILE_DATA.exit.i124:                      ; preds = %bb.q
  tail call void @llvm.assume(i1 %.not.i)
  %i.gn = getelementptr i8, ptr %0, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !47
  %i.gp = getelementptr i8, ptr %i.go, i64 128
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !60 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.r, label %iseq_compile_each.exit127.thread

bb.r:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i124
  %i.gs = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.gt = tail call i64 @rb_fix2int(i64 noundef %i.gs) #37, !inline_history !169
  %i.gu = trunc i64 %i.gt to i32
  br label %iseq_compile_each.exit127.thread

iseq_compile_each.exit127.thread:                 ; preds = %ISEQ_COMPILE_DATA.exit.i124, %bb.r
  %.0.i126 = phi i32 [ %i.gu, %bb.r ], [ %i.gq, %ISEQ_COMPILE_DATA.exit.i124 ]
  %i.gv = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i126, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.gw = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !42 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gv, i64 16
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !61
  %i.gz = getelementptr i8, ptr %i.gx, i64 8
  store ptr %i.gv, ptr %i.gz, align 8, !tbaa !62
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !42
  br label %bb.s

iseq_compile_each.exit127:                        ; preds = %bb.q
  %i.ha = tail call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.gl, i32 noundef 0), !inline_history !169
  %.not62 = icmp eq i32 %i.ha, 0
  br i1 %.not62, label %bb.u, label %bb.s

bb.s:                                             ; preds = %iseq_compile_each.exit127.thread, %iseq_compile_each.exit127
  %i.hb = load i64, ptr %2, align 8, !tbaa !172
  %i.hc = lshr i64 %i.hb, 15
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !243
  %i.hg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hd, i32 noundef %i.hf, i32 noundef 71, i32 noundef 1, i64 noundef %.056) ; 3 uses
  %i.hh = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !42 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hg, i64 16
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !61
  %i.hk = getelementptr i8, ptr %i.hi, i64 8
  store ptr %i.hg, ptr %i.hk, align 8, !tbaa !62
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !42
  %.not63 = icmp eq i32 %3, 0
  br i1 %.not63, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hl = load i64, ptr %2, align 8, !tbaa !172
  %i.hm = lshr i64 %i.hl, 15
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = load i32, ptr %i.he, align 8, !tbaa !243
  %i.hp = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %i.ho, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !42 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hp, i64 16
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !61
  %i.hs = getelementptr i8, ptr %i.hq, i64 8
  store ptr %i.hp, ptr %i.hs, align 8, !tbaa !62
  store ptr %i.hp, ptr %i.hh, align 8, !tbaa !42
  br label %bb.u

ISEQ_COMPILE_DATA.exit116.thread:                 ; preds = %can_add_ensure_iseq.exit, %ISEQ_COMPILE_DATA.exit116, %bb.p
  %i.ht = load i64, ptr %2, align 8, !tbaa !172
  %i.hu = lshr i64 %i.ht, 15
  %i.hv = trunc i64 %i.hu to i32
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.hv, ptr noundef nonnull @.str.136)
  br label %bb.u

bb.u:                                             ; preds = %iseq_compile_each.exit, %bb.m, %new_adjust_body.exit111, %bb.o, %ISEQ_COMPILE_DATA.exit116.thread, %iseq_compile_each.exit127, %bb.t, %bb.s
  %.2 = phi i32 [ 1, %bb.s ], [ 1, %bb.t ], [ 0, %iseq_compile_each.exit127 ], [ 0, %ISEQ_COMPILE_DATA.exit116.thread ], [ 0, %bb.o ], [ 1, %new_adjust_body.exit111 ], [ 1, %bb.m ], [ 0, %iseq_compile_each.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_next(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !123
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp ne i64 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit.thread, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr inttoptr (i64 64 to ptr), align 64, !tbaa !525
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ISEQ_COMPILE_DATA.exit162, label %ISEQ_COMPILE_DATA.exit..loopexit271_crit_edge

ISEQ_COMPILE_DATA.exit..loopexit271_crit_edge:    ; preds = %ISEQ_COMPILE_DATA.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val13.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit273

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !525
  %.not258 = icmp eq ptr %i.g, null
  br i1 %.not258, label %ISEQ_COMPILE_DATA.exit.i172, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.h = getelementptr i8, ptr %i.e, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !535, !range !151, !noundef !152
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %ISEQ_COMPILE_DATA.exit13.i, label %.loopexit273

ISEQ_COMPILE_DATA.exit13.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %.not.i119 = icmp eq ptr %i.l, null
  br i1 %.not.i119, label %.loopexit273, label %.preheader.i

.preheader.i:                                     ; preds = %ISEQ_COMPILE_DATA.exit13.i, %bb.b
  %.0.i120 = phi ptr [ %i.o, %bb.b ], [ %i.l, %ISEQ_COMPILE_DATA.exit13.i ] ; 2 uses
  %i.m = load ptr, ptr %.0.i120, align 8, !tbaa !529
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.b, label %can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit162.thread_crit_edge

bb.b:                                             ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %.0.i120, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !531  ; 2 uses
  %.old1.not.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i, label %.loopexit273, label %.preheader.i

.loopexit273:                                     ; preds = %bb.b, %ISEQ_COMPILE_DATA.exit..loopexit271_crit_edge, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit13.i
  %.val13.i = phi ptr [ %.val13.i.pre, %ISEQ_COMPILE_DATA.exit..loopexit271_crit_edge ], [ %i.e, %ISEQ_COMPILE_DATA.exit13.i ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.q = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 48
  %i.w = getelementptr i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %.loopexit273
  %i.aa = icmp ult i32 %i.x, 48
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ad = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.x, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i ], [ %i.ae, %._crit_edge.i.i.loopexit.i.i ]
  %i.af = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.af, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !64
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !64
  store ptr null, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ai, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %.loopexit273, %._crit_edge.i.i.i.i
  %i.aj = phi i32 [ %i.t, %.loopexit273 ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.r, %.loopexit273 ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.al = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 10 uses
  %i.ao = add i32 %i.aj, 48
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !37
  store i32 1, ptr %i.an, align 8, !tbaa !182
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !184
  %i.au = getelementptr i8, ptr %i.an, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.an, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 44     ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -16
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %i.an, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr i8, ptr %1, i64 24        ; 12 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.an, ptr %i.ba, align 8, !tbaa !42
  %i.be = getelementptr i8, ptr %2, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !537 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %ISEQ_COMPILE_DATA.exit.i122, label %iseq_compile_each.exit

ISEQ_COMPILE_DATA.exit.i122:                      ; preds = %new_label_body.exit
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.bi = getelementptr i8, ptr %i.bh, i64 128
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !60 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %iseq_compile_each.exit.thread

bb.e:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i122
  %i.bl = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.bm = tail call i64 @rb_fix2int(i64 noundef %i.bl) #37, !inline_history !169
  %i.bn = trunc i64 %i.bm to i32
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i122, %bb.e
  %.0.i123 = phi i32 [ %i.bn, %bb.e ], [ %i.bj, %ISEQ_COMPILE_DATA.exit.i122 ]
  %i.bo = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i123, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !61
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !62
  store ptr %i.bo, ptr %i.ba, align 8, !tbaa !42
  br label %ISEQ_COMPILE_DATA.exit126

iseq_compile_each.exit:                           ; preds = %new_label_body.exit
  %i.bs = tail call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bf, i32 noundef 0), !inline_history !169
  %.not104.not = icmp eq i32 %i.bs, 0
  br i1 %.not104.not, label %.critedge, label %ISEQ_COMPILE_DATA.exit126

ISEQ_COMPILE_DATA.exit126:                        ; preds = %iseq_compile_each.exit.thread, %iseq_compile_each.exit
  tail call fastcc void @add_ensure_iseq(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0)
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !525 ; 4 uses
  %i.bw = load i64, ptr %2, align 8, !tbaa !172
  %i.bx = lshr i64 %i.bw, 15
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bt, i64 96     ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !37 ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 40
  %i.cf = getelementptr i8, ptr %i.ca, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !37 ; 4 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp samesign ugt i64 %i.ce, %i.ch
  br i1 %i.ci, label %.preheader.i.i.i.i131, label %compile_data_alloc_adjust.exit.i

.preheader.i.i.i.i131:                            ; preds = %ISEQ_COMPILE_DATA.exit126
  %i.cj = icmp ult i32 %i.cg, 40
  br i1 %i.cj, label %.lr.ph.i.i.i.i135, label %._crit_edge.i.i.i.i132

.lr.ph.i.i.i.i135:                                ; preds = %.preheader.i.i.i.i131, %bb.g
  %.027.i.i.i.i136 = phi i32 [ %i.cl, %bb.g ], [ %i.cg, %.preheader.i.i.i.i131 ] ; 3 uses
  %i.ck = icmp samesign ugt i32 %.027.i.i.i.i136, 1073741822
  br i1 %i.ck, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i135
  tail call void @rb_memerror() #38
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i.i.i135
  %i.cl = shl nuw nsw i32 %.027.i.i.i.i136, 1     ; 3 uses
  %i.cm = icmp samesign ult i32 %.027.i.i.i.i136, 20
  br i1 %i.cm, label %.lr.ph.i.i.i.i135, label %._crit_edge.i.i.loopexit.i.i137, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i137:                  ; preds = %bb.g
  %i.cn = zext nneg i32 %i.cl to i64
  br label %._crit_edge.i.i.i.i132

._crit_edge.i.i.i.i132:                           ; preds = %._crit_edge.i.i.loopexit.i.i137, %.preheader.i.i.i.i131
  %.0.lcssa.i.i.i.i133 = phi i32 [ %i.cg, %.preheader.i.i.i.i131 ], [ %i.cl, %._crit_edge.i.i.loopexit.i.i137 ]
  %.lcssa.i.i.i.i134 = phi i64 [ %i.ch, %.preheader.i.i.i.i131 ], [ %i.cn, %._crit_edge.i.i.loopexit.i.i137 ]
  %i.co = add nuw nsw i64 %.lcssa.i.i.i.i134, 16
  %i.cp = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.co, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cp, ptr %i.ca, align 8, !tbaa !64
  store ptr %i.cp, ptr %i.bz, align 8, !tbaa !64
  store ptr null, ptr %i.cp, align 8, !tbaa !64
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store i32 0, ptr %i.cq, align 8, !tbaa !37
  %i.cr = getelementptr i8, ptr %i.cp, i64 12
  store i32 %.0.lcssa.i.i.i.i133, ptr %i.cr, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i

compile_data_alloc_adjust.exit.i:                 ; preds = %._crit_edge.i.i.i.i132, %ISEQ_COMPILE_DATA.exit126
  %i.cs = phi i32 [ 0, %._crit_edge.i.i.i.i132 ], [ %i.cc, %ISEQ_COMPILE_DATA.exit126 ] ; 2 uses
  %.022.i.i.i.i129 = phi ptr [ %i.cp, %._crit_edge.i.i.i.i132 ], [ %i.ca, %ISEQ_COMPILE_DATA.exit126 ] ; 2 uses
  %i.ct = getelementptr i8, ptr %.022.i.i.i.i129, i64 16
  %i.cu = getelementptr i8, ptr %.022.i.i.i.i129, i64 8
  %i.cv = zext i32 %i.cs to i64
  %i.cw = getelementptr i8, ptr %i.ct, i64 %i.cv  ; 7 uses
  %i.cx = add i32 %i.cs, 40
  store i32 %i.cx, ptr %i.cu, align 8, !tbaa !37
  store i32 3, ptr %i.cw, align 8, !tbaa !533
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  store ptr null, ptr %i.cy, align 8, !tbaa !534
  %i.cz = getelementptr i8, ptr %i.cw, i64 24
  store ptr %i.bv, ptr %i.cz, align 8, !tbaa !113
  %i.da = getelementptr i8, ptr %i.cw, i64 32
  store i32 %i.by, ptr %i.da, align 8, !tbaa !114
  %.not.i130 = icmp eq ptr %i.bv, null
  br i1 %.not.i130, label %new_adjust_body.exit, label %bb.h

bb.h:                                             ; preds = %compile_data_alloc_adjust.exit.i
  %i.db = getelementptr i8, ptr %i.bv, i64 40     ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !240
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !240
  %i.de = getelementptr i8, ptr %i.bv, i64 44     ; 2 uses
  %i.df = load i8, ptr %i.de, align 4
  %i.dg = or i8 %i.df, 8
  store i8 %i.dg, ptr %i.de, align 4
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %compile_data_alloc_adjust.exit.i, %bb.h
  %i.dh = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.di = getelementptr i8, ptr %i.cw, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !61
  %i.dj = getelementptr i8, ptr %i.dh, i64 8
  store ptr %i.cw, ptr %i.dj, align 8, !tbaa !62
  store ptr %i.cw, ptr %i.ba, align 8, !tbaa !42
  %i.dk = load i64, ptr %2, align 8, !tbaa !172
  %i.dl = lshr i64 %i.dk, 15
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !243
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dq = getelementptr i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !233
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %i.do, i32 noundef 72, i32 noundef 1, i64 noundef %i.ds) ; 3 uses
  %i.du = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !61
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !62
  store ptr %i.dt, ptr %i.ba, align 8, !tbaa !42
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dy = getelementptr i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !233
  %i.ea = getelementptr i8, ptr %i.dz, i64 40     ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !240
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !240
  %.val116 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ed = getelementptr i8, ptr %.val116, i64 96  ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !64 ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !37 ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %i.eh, 40
  %i.ej = getelementptr i8, ptr %i.ee, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !37 ; 4 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = icmp samesign ugt i64 %i.ei, %i.el
  br i1 %i.em, label %.preheader.i.i.i.i150, label %new_adjust_body.exit157

.preheader.i.i.i.i150:                            ; preds = %new_adjust_body.exit
  %i.en = icmp ult i32 %i.ek, 40
  br i1 %i.en, label %.lr.ph.i.i.i.i154, label %._crit_edge.i.i.i.i151

.lr.ph.i.i.i.i154:                                ; preds = %.preheader.i.i.i.i150, %bb.j
  %.027.i.i.i.i155 = phi i32 [ %i.ep, %bb.j ], [ %i.ek, %.preheader.i.i.i.i150 ] ; 3 uses
  %i.eo = icmp samesign ugt i32 %.027.i.i.i.i155, 1073741822
  br i1 %i.eo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i154
  tail call void @rb_memerror() #38
  unreachable

bb.j:                                             ; preds = %.lr.ph.i.i.i.i154
  %i.ep = shl nuw nsw i32 %.027.i.i.i.i155, 1     ; 3 uses
  %i.eq = icmp samesign ult i32 %.027.i.i.i.i155, 20
  br i1 %i.eq, label %.lr.ph.i.i.i.i154, label %._crit_edge.i.i.loopexit.i.i156, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i156:                  ; preds = %bb.j
  %i.er = zext nneg i32 %i.ep to i64
  br label %._crit_edge.i.i.i.i151

._crit_edge.i.i.i.i151:                           ; preds = %._crit_edge.i.i.loopexit.i.i156, %.preheader.i.i.i.i150
  %.0.lcssa.i.i.i.i152 = phi i32 [ %i.ek, %.preheader.i.i.i.i150 ], [ %i.ep, %._crit_edge.i.i.loopexit.i.i156 ]
  %.lcssa.i.i.i.i153 = phi i64 [ %i.el, %.preheader.i.i.i.i150 ], [ %i.er, %._crit_edge.i.i.loopexit.i.i156 ]
  %i.es = add nuw nsw i64 %.lcssa.i.i.i.i153, 16
  %i.et = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.es, i64 noundef 1) #39 ; 6 uses
  store ptr %i.et, ptr %i.ee, align 8, !tbaa !64
  store ptr %i.et, ptr %i.ed, align 8, !tbaa !64
  store ptr null, ptr %i.et, align 8, !tbaa !64
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  store i32 0, ptr %i.eu, align 8, !tbaa !37
  %i.ev = getelementptr i8, ptr %i.et, i64 12
  store i32 %.0.lcssa.i.i.i.i152, ptr %i.ev, align 4, !tbaa !37
  br label %new_adjust_body.exit157

new_adjust_body.exit157:                          ; preds = %._crit_edge.i.i.i.i151, %new_adjust_body.exit
  %i.ew = phi i32 [ 0, %._crit_edge.i.i.i.i151 ], [ %i.eg, %new_adjust_body.exit ] ; 2 uses
  %.022.i.i.i.i148 = phi ptr [ %i.et, %._crit_edge.i.i.i.i151 ], [ %i.ee, %new_adjust_body.exit ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.022.i.i.i.i148, i64 16
  %i.ey = getelementptr i8, ptr %.022.i.i.i.i148, i64 8
  %i.ez = zext i32 %i.ew to i64
  %i.fa = getelementptr i8, ptr %i.ex, i64 %i.ez  ; 7 uses
  %i.fb = add i32 %i.ew, 40
  store i32 %i.fb, ptr %i.ey, align 8, !tbaa !37
  store i32 3, ptr %i.fa, align 8, !tbaa !533
  %i.fc = getelementptr i8, ptr %i.fa, i64 8
  store ptr null, ptr %i.fc, align 8, !tbaa !534
  %i.fd = getelementptr i8, ptr %i.fa, i64 24
  store ptr %i.an, ptr %i.fd, align 8, !tbaa !113
  %i.fe = getelementptr i8, ptr %i.fa, i64 32
  store i32 -1, ptr %i.fe, align 8, !tbaa !114
  %i.ff = load i32, ptr %i.av, align 8, !tbaa !240
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.av, align 8, !tbaa !240
  %i.fh = load i8, ptr %i.aw, align 4
  %i.fi = or i8 %i.fh, 8
  store i8 %i.fi, ptr %i.aw, align 4
  %i.fj = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fa, i64 16
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !61
  %i.fl = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fa, ptr %i.fl, align 8, !tbaa !62
  store ptr %i.fa, ptr %i.ba, align 8, !tbaa !42
  %.not105 = icmp eq i32 %3, 0
  br i1 %.not105, label %bb.k, label %.critedge

bb.k:                                             ; preds = %new_adjust_body.exit157
  %i.fm = load i64, ptr %2, align 8, !tbaa !172
  %i.fn = lshr i64 %i.fm, 15
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load i32, ptr %i.dn, align 8, !tbaa !243
  %i.fq = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fo, i32 noundef %i.fp, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fr = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !61
  %i.ft = getelementptr i8, ptr %i.fr, i64 8
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !62
  store ptr %i.fq, ptr %i.ba, align 8, !tbaa !42
  br label %.critedge

can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit162.thread_crit_edge: ; preds = %.preheader.i
  %.phi.trans.insert288 = getelementptr i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert288, align 8, !tbaa !47
  br label %ISEQ_COMPILE_DATA.exit.i172

ISEQ_COMPILE_DATA.exit162:                        ; preds = %ISEQ_COMPILE_DATA.exit
  %i.fu = load ptr, ptr inttoptr (i64 56 to ptr), align 8, !tbaa !234
  %.not95 = icmp eq ptr %i.fu, null
  br i1 %.not95, label %can_add_ensure_iseq.exit173, label %ISEQ_COMPILE_DATA.exit162.thread

ISEQ_COMPILE_DATA.exit162.thread:                 ; preds = %ISEQ_COMPILE_DATA.exit162
  %i.fv = getelementptr i8, ptr %0, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !47
  br label %.loopexit

ISEQ_COMPILE_DATA.exit.i172:                      ; preds = %can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit162.thread_crit_edge, %ISEQ_COMPILE_DATA.exit.thread
  %4 = phi ptr [ %.pre, %can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit162.thread_crit_edge ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread ] ; 6 uses
  %.phi.trans.insert289 = getelementptr i8, ptr %4, i64 56
  %.val13.i174.pre = load ptr, ptr %.phi.trans.insert289, align 8, !tbaa !234
  %.not95262 = icmp eq ptr %.val13.i174.pre, null
  br i1 %.not95262, label %.lr.ph.preheader, label %ISEQ_COMPILE_DATA.exit.thread.i164

ISEQ_COMPILE_DATA.exit.thread.i164:               ; preds = %ISEQ_COMPILE_DATA.exit.i172
  %i.fx = getelementptr i8, ptr %4, i64 120
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !535, !range !151, !noundef !152
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %ISEQ_COMPILE_DATA.exit13.i166, label %.loopexit

ISEQ_COMPILE_DATA.exit13.i166:                    ; preds = %ISEQ_COMPILE_DATA.exit.thread.i164
  %i.ga = getelementptr i8, ptr %4, i64 80
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !530 ; 2 uses
  %.not.i167 = icmp eq ptr %i.gb, null
  br i1 %.not.i167, label %.loopexit, label %.preheader.i168

.preheader.i168:                                  ; preds = %ISEQ_COMPILE_DATA.exit13.i166, %bb.l
  %.0.i169 = phi ptr [ %i.ge, %bb.l ], [ %i.gb, %ISEQ_COMPILE_DATA.exit13.i166 ] ; 2 uses
  %i.gc = load ptr, ptr %.0.i169, align 8, !tbaa !529
  %.not10.i170 = icmp eq ptr %i.gc, null
  br i1 %.not10.i170, label %bb.l, label %can_add_ensure_iseq.exit173

bb.l:                                             ; preds = %.preheader.i168
  %i.gd = getelementptr i8, ptr %.0.i169, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !531 ; 2 uses
  %.old1.not.i171 = icmp eq ptr %i.ge, null
  br i1 %.old1.not.i171, label %.loopexit, label %.preheader.i168

.loopexit:                                        ; preds = %bb.l, %ISEQ_COMPILE_DATA.exit162.thread, %ISEQ_COMPILE_DATA.exit.thread.i164, %ISEQ_COMPILE_DATA.exit13.i166
  %.val13.i174 = phi ptr [ %i.fw, %ISEQ_COMPILE_DATA.exit162.thread ], [ %4, %ISEQ_COMPILE_DATA.exit13.i166 ], [ %4, %ISEQ_COMPILE_DATA.exit.thread.i164 ], [ %4, %bb.l ]
  %i.gf = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.gg = getelementptr i8, ptr %.val13.i174, i64 96 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !64 ; 4 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !37 ; 2 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = add nuw nsw i64 %i.gk, 48
  %i.gm = getelementptr i8, ptr %i.gh, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !37 ; 4 uses
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %i.gp = icmp samesign ugt i64 %i.gl, %i.go
  br i1 %i.gp, label %.preheader.i.i.i.i177, label %new_label_body.exit186

.preheader.i.i.i.i177:                            ; preds = %.loopexit
  %i.gq = icmp ult i32 %i.gn, 48
  br i1 %i.gq, label %.lr.ph.i.i.i.i183, label %._crit_edge.i.i.i.i178

.lr.ph.i.i.i.i183:                                ; preds = %.preheader.i.i.i.i177, %bb.n
  %.027.i.i.i.i184 = phi i32 [ %i.gs, %bb.n ], [ %i.gn, %.preheader.i.i.i.i177 ] ; 3 uses
  %i.gr = icmp samesign ugt i32 %.027.i.i.i.i184, 1073741822
  br i1 %i.gr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i183
  tail call void @rb_memerror() #38
  unreachable

bb.n:                                             ; preds = %.lr.ph.i.i.i.i183
  %i.gs = shl nuw nsw i32 %.027.i.i.i.i184, 1     ; 3 uses
  %i.gt = icmp samesign ult i32 %.027.i.i.i.i184, 24
  br i1 %i.gt, label %.lr.ph.i.i.i.i183, label %._crit_edge.i.i.loopexit.i.i185, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i185:                  ; preds = %bb.n
  %i.gu = zext nneg i32 %i.gs to i64
  br label %._crit_edge.i.i.i.i178

._crit_edge.i.i.i.i178:                           ; preds = %._crit_edge.i.i.loopexit.i.i185, %.preheader.i.i.i.i177
  %.0.lcssa.i.i.i.i179 = phi i32 [ %i.gn, %.preheader.i.i.i.i177 ], [ %i.gs, %._crit_edge.i.i.loopexit.i.i185 ]
  %.lcssa.i.i.i.i180 = phi i64 [ %i.go, %.preheader.i.i.i.i177 ], [ %i.gu, %._crit_edge.i.i.loopexit.i.i185 ]
  %i.gv = add nuw nsw i64 %.lcssa.i.i.i.i180, 16
  %i.gw = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.gv, i64 noundef 1) #39 ; 6 uses
  store ptr %i.gw, ptr %i.gh, align 8, !tbaa !64
  store ptr %i.gw, ptr %i.gg, align 8, !tbaa !64
  store ptr null, ptr %i.gw, align 8, !tbaa !64
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  store i32 0, ptr %i.gx, align 8, !tbaa !37
  %i.gy = getelementptr i8, ptr %i.gw, i64 12
  store i32 %.0.lcssa.i.i.i.i179, ptr %i.gy, align 4, !tbaa !37
  br label %new_label_body.exit186

new_label_body.exit186:                           ; preds = %.loopexit, %._crit_edge.i.i.i.i178
  %i.gz = phi i32 [ %i.gj, %.loopexit ], [ 0, %._crit_edge.i.i.i.i178 ] ; 2 uses
  %.022.i.i.i.i176 = phi ptr [ %i.gh, %.loopexit ], [ %i.gw, %._crit_edge.i.i.i.i178 ] ; 2 uses
  %i.ha = getelementptr i8, ptr %.022.i.i.i.i176, i64 16
  %i.hb = getelementptr i8, ptr %.022.i.i.i.i176, i64 8
  %i.hc = zext i32 %i.gz to i64
  %i.hd = getelementptr i8, ptr %i.ha, i64 %i.hc  ; 10 uses
  %i.he = add i32 %i.gz, 48
  store i32 %i.he, ptr %i.hb, align 8, !tbaa !37
  store i32 1, ptr %i.hd, align 8, !tbaa !182
  %i.hf = getelementptr i8, ptr %i.hd, i64 8
  store ptr null, ptr %i.hf, align 8, !tbaa !183
  %i.hg = load ptr, ptr %i.gf, align 8, !tbaa !47
  %i.hh = getelementptr i8, ptr %i.hg, i64 132    ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !184 ; 2 uses
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !184
  %i.hk = getelementptr i8, ptr %i.hd, i64 24
  store i32 %i.hi, ptr %i.hk, align 8, !tbaa !111
  %i.hl = getelementptr i8, ptr %i.hd, i64 40     ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hd, i64 44     ; 4 uses
  %i.hn = load i8, ptr %i.hm, align 4
  %i.ho = and i8 %i.hn, -16
  store i8 %i.ho, ptr %i.hm, align 4
  %i.hp = getelementptr i8, ptr %i.hd, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.hp, align 4, !tbaa !37
  %i.hq = getelementptr i8, ptr %1, i64 24        ; 12 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !42 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hd, i64 16
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !61
  %i.ht = getelementptr i8, ptr %i.hr, i64 8
  store ptr %i.hd, ptr %i.ht, align 8, !tbaa !62
  store ptr %i.hd, ptr %i.hq, align 8, !tbaa !42
  %i.hu = load ptr, ptr %i.gf, align 8, !tbaa !47 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !233 ; 4 uses
  %i.hx = load i64, ptr %2, align 8, !tbaa !172
  %i.hy = lshr i64 %i.hx, 15
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = getelementptr i8, ptr %i.hu, i64 96     ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !64 ; 4 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !37 ; 2 uses
  %i.ie = zext i32 %i.id to i64
  %i.if = add nuw nsw i64 %i.ie, 40
  %i.ig = getelementptr i8, ptr %i.ib, i64 12
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !37 ; 4 uses
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = icmp samesign ugt i64 %i.if, %i.ii
  br i1 %i.ij, label %.preheader.i.i.i.i196, label %compile_data_alloc_adjust.exit.i193

.preheader.i.i.i.i196:                            ; preds = %new_label_body.exit186
  %i.ik = icmp ult i32 %i.ih, 40
  br i1 %i.ik, label %.lr.ph.i.i.i.i200, label %._crit_edge.i.i.i.i197

.lr.ph.i.i.i.i200:                                ; preds = %.preheader.i.i.i.i196, %bb.p
  %.027.i.i.i.i201 = phi i32 [ %i.im, %bb.p ], [ %i.ih, %.preheader.i.i.i.i196 ] ; 3 uses
  %i.il = icmp samesign ugt i32 %.027.i.i.i.i201, 1073741822
  br i1 %i.il, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i200
  tail call void @rb_memerror() #38
  unreachable

bb.p:                                             ; preds = %.lr.ph.i.i.i.i200
  %i.im = shl nuw nsw i32 %.027.i.i.i.i201, 1     ; 3 uses
  %i.in = icmp samesign ult i32 %.027.i.i.i.i201, 20
  br i1 %i.in, label %.lr.ph.i.i.i.i200, label %._crit_edge.i.i.loopexit.i.i202, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i202:                  ; preds = %bb.p
  %i.io = zext nneg i32 %i.im to i64
  br label %._crit_edge.i.i.i.i197

._crit_edge.i.i.i.i197:                           ; preds = %._crit_edge.i.i.loopexit.i.i202, %.preheader.i.i.i.i196
  %.0.lcssa.i.i.i.i198 = phi i32 [ %i.ih, %.preheader.i.i.i.i196 ], [ %i.im, %._crit_edge.i.i.loopexit.i.i202 ]
  %.lcssa.i.i.i.i199 = phi i64 [ %i.ii, %.preheader.i.i.i.i196 ], [ %i.io, %._crit_edge.i.i.loopexit.i.i202 ]
  %i.ip = add nuw nsw i64 %.lcssa.i.i.i.i199, 16
  %i.iq = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ip, i64 noundef 1) #39 ; 6 uses
  store ptr %i.iq, ptr %i.ib, align 8, !tbaa !64
  store ptr %i.iq, ptr %i.ia, align 8, !tbaa !64
  store ptr null, ptr %i.iq, align 8, !tbaa !64
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  store i32 0, ptr %i.ir, align 8, !tbaa !37
  %i.is = getelementptr i8, ptr %i.iq, i64 12
  store i32 %.0.lcssa.i.i.i.i198, ptr %i.is, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i193

compile_data_alloc_adjust.exit.i193:              ; preds = %._crit_edge.i.i.i.i197, %new_label_body.exit186
  %i.it = phi i32 [ 0, %._crit_edge.i.i.i.i197 ], [ %i.id, %new_label_body.exit186 ] ; 2 uses
  %.022.i.i.i.i194 = phi ptr [ %i.iq, %._crit_edge.i.i.i.i197 ], [ %i.ib, %new_label_body.exit186 ] ; 2 uses
  %i.iu = getelementptr i8, ptr %.022.i.i.i.i194, i64 16
  %i.iv = getelementptr i8, ptr %.022.i.i.i.i194, i64 8
  %i.iw = zext i32 %i.it to i64
  %i.ix = getelementptr i8, ptr %i.iu, i64 %i.iw  ; 7 uses
  %i.iy = add i32 %i.it, 40
  store i32 %i.iy, ptr %i.iv, align 8, !tbaa !37
  store i32 3, ptr %i.ix, align 8, !tbaa !533
  %i.iz = getelementptr i8, ptr %i.ix, i64 8
  store ptr null, ptr %i.iz, align 8, !tbaa !534
  %i.ja = getelementptr i8, ptr %i.ix, i64 24
  store ptr %i.hw, ptr %i.ja, align 8, !tbaa !113
  %i.jb = getelementptr i8, ptr %i.ix, i64 32
  store i32 %i.hz, ptr %i.jb, align 8, !tbaa !114
  %.not.i195 = icmp eq ptr %i.hw, null
  br i1 %.not.i195, label %new_adjust_body.exit203, label %bb.q

bb.q:                                             ; preds = %compile_data_alloc_adjust.exit.i193
  %i.jc = getelementptr i8, ptr %i.hw, i64 40     ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !240
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 8, !tbaa !240
  %i.jf = getelementptr i8, ptr %i.hw, i64 44     ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 4
  %i.jh = or i8 %i.jg, 8
  store i8 %i.jh, ptr %i.jf, align 4
  br label %new_adjust_body.exit203

new_adjust_body.exit203:                          ; preds = %compile_data_alloc_adjust.exit.i193, %bb.q
  %i.ji = load ptr, ptr %i.hq, align 8, !tbaa !42 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ix, i64 16
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !61
  %i.jk = getelementptr i8, ptr %i.ji, i64 8
  store ptr %i.ix, ptr %i.jk, align 8, !tbaa !62
  store ptr %i.ix, ptr %i.hq, align 8, !tbaa !42
  %i.jl = getelementptr i8, ptr %2, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !537 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %ISEQ_COMPILE_DATA.exit.i206, label %iseq_compile_each.exit209

ISEQ_COMPILE_DATA.exit.i206:                      ; preds = %new_adjust_body.exit203
  %i.jo = load ptr, ptr %i.gf, align 8, !tbaa !47
  %i.jp = getelementptr i8, ptr %i.jo, i64 128
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !60 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.r, label %iseq_compile_each.exit209.thread

bb.r:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i206
  %i.js = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.jt = tail call i64 @rb_fix2int(i64 noundef %i.js) #37, !inline_history !169
  %i.ju = trunc i64 %i.jt to i32
  br label %iseq_compile_each.exit209.thread

iseq_compile_each.exit209.thread:                 ; preds = %ISEQ_COMPILE_DATA.exit.i206, %bb.r
  %.0.i208 = phi i32 [ %i.ju, %bb.r ], [ %i.jq, %ISEQ_COMPILE_DATA.exit.i206 ]
  %i.jv = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i208, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.jw = load ptr, ptr %i.hq, align 8, !tbaa !42 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jv, i64 16
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !61
  %i.jy = getelementptr i8, ptr %i.jw, i64 8
  store ptr %i.jv, ptr %i.jy, align 8, !tbaa !62
  store ptr %i.jv, ptr %i.hq, align 8, !tbaa !42
  br label %ISEQ_COMPILE_DATA.exit214

iseq_compile_each.exit209:                        ; preds = %new_adjust_body.exit203
  %i.jz = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.jm, i32 noundef 0), !inline_history !169
  %.not102.not = icmp eq i32 %i.jz, 0
  br i1 %.not102.not, label %.critedge, label %ISEQ_COMPILE_DATA.exit214

ISEQ_COMPILE_DATA.exit214:                        ; preds = %iseq_compile_each.exit209.thread, %iseq_compile_each.exit209
  tail call fastcc void @add_ensure_iseq(ptr noundef nonnull %1, ptr noundef %0, i32 noundef 0)
  %i.ka = load i64, ptr %2, align 8, !tbaa !172
  %i.kb = lshr i64 %i.ka, 15
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !243
  %i.kf = load ptr, ptr %i.gf, align 8, !tbaa !47
  %i.kg = getelementptr i8, ptr %i.kf, i64 56
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !234
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kc, i32 noundef %i.ke, i32 noundef 72, i32 noundef 1, i64 noundef %i.ki) ; 3 uses
  %i.kk = load ptr, ptr %i.hq, align 8, !tbaa !42 ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kj, i64 16
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !61
  %i.km = getelementptr i8, ptr %i.kk, i64 8
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !62
  store ptr %i.kj, ptr %i.hq, align 8, !tbaa !42
  %i.kn = load ptr, ptr %i.gf, align 8, !tbaa !47
  %i.ko = getelementptr i8, ptr %i.kn, i64 56
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !234
  %i.kq = getelementptr i8, ptr %i.kp, i64 40     ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !240
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 8, !tbaa !240
  %.val112 = load ptr, ptr %i.gf, align 8, !tbaa !47
  %i.kt = getelementptr i8, ptr %.val112, i64 96  ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !64 ; 4 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !37 ; 2 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = add nuw nsw i64 %i.kx, 40
  %i.kz = getelementptr i8, ptr %i.ku, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !37 ; 4 uses
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  %i.lc = icmp samesign ugt i64 %i.ky, %i.lb
  br i1 %i.lc, label %.preheader.i.i.i.i222, label %new_adjust_body.exit229

.preheader.i.i.i.i222:                            ; preds = %ISEQ_COMPILE_DATA.exit214
  %i.ld = icmp ult i32 %i.la, 40
  br i1 %i.ld, label %.lr.ph.i.i.i.i226, label %._crit_edge.i.i.i.i223

.lr.ph.i.i.i.i226:                                ; preds = %.preheader.i.i.i.i222, %bb.t
  %.027.i.i.i.i227 = phi i32 [ %i.lf, %bb.t ], [ %i.la, %.preheader.i.i.i.i222 ] ; 3 uses
  %i.le = icmp samesign ugt i32 %.027.i.i.i.i227, 1073741822
  br i1 %i.le, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i.i226
  tail call void @rb_memerror() #38
  unreachable

bb.t:                                             ; preds = %.lr.ph.i.i.i.i226
  %i.lf = shl nuw nsw i32 %.027.i.i.i.i227, 1     ; 3 uses
  %i.lg = icmp samesign ult i32 %.027.i.i.i.i227, 20
  br i1 %i.lg, label %.lr.ph.i.i.i.i226, label %._crit_edge.i.i.loopexit.i.i228, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i228:                  ; preds = %bb.t
  %i.lh = zext nneg i32 %i.lf to i64
  br label %._crit_edge.i.i.i.i223

._crit_edge.i.i.i.i223:                           ; preds = %._crit_edge.i.i.loopexit.i.i228, %.preheader.i.i.i.i222
  %.0.lcssa.i.i.i.i224 = phi i32 [ %i.la, %.preheader.i.i.i.i222 ], [ %i.lf, %._crit_edge.i.i.loopexit.i.i228 ]
  %.lcssa.i.i.i.i225 = phi i64 [ %i.lb, %.preheader.i.i.i.i222 ], [ %i.lh, %._crit_edge.i.i.loopexit.i.i228 ]
  %i.li = add nuw nsw i64 %.lcssa.i.i.i.i225, 16
  %i.lj = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.li, i64 noundef 1) #39 ; 6 uses
  store ptr %i.lj, ptr %i.ku, align 8, !tbaa !64
  store ptr %i.lj, ptr %i.kt, align 8, !tbaa !64
  store ptr null, ptr %i.lj, align 8, !tbaa !64
  %i.lk = getelementptr i8, ptr %i.lj, i64 8
  store i32 0, ptr %i.lk, align 8, !tbaa !37
  %i.ll = getelementptr i8, ptr %i.lj, i64 12
  store i32 %.0.lcssa.i.i.i.i224, ptr %i.ll, align 4, !tbaa !37
  br label %new_adjust_body.exit229

new_adjust_body.exit229:                          ; preds = %._crit_edge.i.i.i.i223, %ISEQ_COMPILE_DATA.exit214
  %i.lm = phi i32 [ 0, %._crit_edge.i.i.i.i223 ], [ %i.kw, %ISEQ_COMPILE_DATA.exit214 ] ; 2 uses
  %.022.i.i.i.i220 = phi ptr [ %i.lj, %._crit_edge.i.i.i.i223 ], [ %i.ku, %ISEQ_COMPILE_DATA.exit214 ] ; 2 uses
  %i.ln = getelementptr i8, ptr %.022.i.i.i.i220, i64 16
  %i.lo = getelementptr i8, ptr %.022.i.i.i.i220, i64 8
  %i.lp = zext i32 %i.lm to i64
  %i.lq = getelementptr i8, ptr %i.ln, i64 %i.lp  ; 7 uses
  %i.lr = add i32 %i.lm, 40
  store i32 %i.lr, ptr %i.lo, align 8, !tbaa !37
  store i32 3, ptr %i.lq, align 8, !tbaa !533
  %i.ls = getelementptr i8, ptr %i.lq, i64 8
  store ptr null, ptr %i.ls, align 8, !tbaa !534
  %i.lt = getelementptr i8, ptr %i.lq, i64 24
  store ptr %i.hd, ptr %i.lt, align 8, !tbaa !113
  %i.lu = getelementptr i8, ptr %i.lq, i64 32
  store i32 -1, ptr %i.lu, align 8, !tbaa !114
  %i.lv = load i32, ptr %i.hl, align 8, !tbaa !240
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.hl, align 8, !tbaa !240
  %i.lx = load i8, ptr %i.hm, align 4
  %i.ly = or i8 %i.lx, 8
  store i8 %i.ly, ptr %i.hm, align 4
  %i.lz = load ptr, ptr %i.hq, align 8, !tbaa !42 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lq, i64 16
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !61
  %i.mb = getelementptr i8, ptr %i.lz, i64 8
  store ptr %i.lq, ptr %i.mb, align 8, !tbaa !62
  store ptr %i.lq, ptr %i.hq, align 8, !tbaa !42
  %.not103 = icmp eq i32 %3, 0
  br i1 %.not103, label %bb.u, label %.critedge

bb.u:                                             ; preds = %new_adjust_body.exit229
  %i.mc = load i64, ptr %2, align 8, !tbaa !172
  %i.md = lshr i64 %i.mc, 15
  %i.me = trunc i64 %i.md to i32
  %i.mf = load i32, ptr %i.kd, align 8, !tbaa !243
  %i.mg = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.me, i32 noundef %i.mf, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.mh = load ptr, ptr %i.hq, align 8, !tbaa !42 ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mg, i64 16
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !61
  %i.mj = getelementptr i8, ptr %i.mh, i64 8
  store ptr %i.mg, ptr %i.mj, align 8, !tbaa !62
  store ptr %i.mg, ptr %i.hq, align 8, !tbaa !42
  br label %.critedge

can_add_ensure_iseq.exit173:                      ; preds = %.preheader.i168, %ISEQ_COMPILE_DATA.exit162
  %.not96279 = icmp eq ptr %0, null
  br i1 %.not96279, label %.critedge109, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ISEQ_COMPILE_DATA.exit.i172, %can_add_ensure_iseq.exit173
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.0280 = phi ptr [ %i.mx, %bb.x ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.mk = load i64, ptr %.0280, align 8, !tbaa !123
  %i.ml = and i64 %i.mk, 262144
  %.not.i232 = icmp eq i64 %i.ml, 0
  br i1 %.not.i232, label %.critedge109, label %ISEQ_COMPILE_DATA.exit234

ISEQ_COMPILE_DATA.exit234:                        ; preds = %.lr.ph
  %i.mm = getelementptr i8, ptr %.0280, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !47 ; 2 uses
  %.not97 = icmp eq ptr %i.mn, null
  br i1 %.not97, label %.critedge109, label %ISEQ_COMPILE_DATA.exit237

ISEQ_COMPILE_DATA.exit237:                        ; preds = %ISEQ_COMPILE_DATA.exit234
  %i.mo = getelementptr i8, ptr %i.mn, i64 64
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !525
  %.not98 = icmp eq ptr %i.mp, null
  br i1 %.not98, label %bb.v, label %bb.y

bb.v:                                             ; preds = %ISEQ_COMPILE_DATA.exit237
  %i.mq = getelementptr i8, ptr %.0280, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !70 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !86
  switch i32 %i.ms, label %bb.x [
    i32 2, label %bb.y
    i32 6, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.mt = load i64, ptr %2, align 8, !tbaa !172
  %i.mu = lshr i64 %i.mt, 15
  %i.mv = trunc i64 %i.mu to i32
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.mv, ptr noundef nonnull @.str.137)
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.mw = getelementptr i8, ptr %i.mr, i64 168
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !168 ; 2 uses
  %.not96 = icmp eq ptr %i.mx, null
  br i1 %.not96, label %.critedge109, label %.lr.ph, !llvm.loop !1114

bb.y:                                             ; preds = %ISEQ_COMPILE_DATA.exit237, %bb.v
  %i.my = getelementptr i8, ptr %2, i64 40
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !537 ; 2 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %ISEQ_COMPILE_DATA.exit.i242, label %iseq_compile_each.exit245

ISEQ_COMPILE_DATA.exit.i242:                      ; preds = %bb.y
  tail call void @llvm.assume(i1 %.not.i)
  %i.nb = getelementptr i8, ptr %0, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !47
  %i.nd = getelementptr i8, ptr %i.nc, i64 128
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !60 ; 2 uses
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.z, label %iseq_compile_each.exit245.thread

bb.z:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i242
  %i.ng = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.nh = tail call i64 @rb_fix2int(i64 noundef %i.ng) #37, !inline_history !169
  %i.ni = trunc i64 %i.nh to i32
  br label %iseq_compile_each.exit245.thread

iseq_compile_each.exit245.thread:                 ; preds = %ISEQ_COMPILE_DATA.exit.i242, %bb.z
  %.0.i244 = phi i32 [ %i.ni, %bb.z ], [ %i.ne, %ISEQ_COMPILE_DATA.exit.i242 ]
  %i.nj = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i244, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.nk = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !42 ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nj, i64 16
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !61
  %i.nn = getelementptr i8, ptr %i.nl, i64 8
  store ptr %i.nj, ptr %i.nn, align 8, !tbaa !62
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !42
  br label %bb.aa

iseq_compile_each.exit245:                        ; preds = %bb.y
  %i.no = tail call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.mz, i32 noundef 0), !inline_history !169
  %.not100 = icmp eq i32 %i.no, 0
  br i1 %.not100, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %iseq_compile_each.exit245.thread, %iseq_compile_each.exit245
  %i.np = load i64, ptr %2, align 8, !tbaa !172
  %i.nq = lshr i64 %i.np, 15
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !243
  %i.nu = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.nr, i32 noundef %i.nt, i32 noundef 71, i32 noundef 1, i64 noundef 65543) ; 3 uses
  %i.nv = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !42 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nu, i64 16
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !61
  %i.ny = getelementptr i8, ptr %i.nw, i64 8
  store ptr %i.nu, ptr %i.ny, align 8, !tbaa !62
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !42
  %.not101 = icmp eq i32 %3, 0
  br i1 %.not101, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nz = load i64, ptr %2, align 8, !tbaa !172
  %i.oa = lshr i64 %i.nz, 15
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = load i32, ptr %i.ns, align 8, !tbaa !243
  %i.od = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ob, i32 noundef %i.oc, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.oe = load ptr, ptr %i.nv, align 8, !tbaa !42 ; 2 uses
  %i.of = getelementptr i8, ptr %i.od, i64 16
  store ptr %i.oe, ptr %i.of, align 8, !tbaa !61
  %i.og = getelementptr i8, ptr %i.oe, i64 8
  store ptr %i.od, ptr %i.og, align 8, !tbaa !62
  store ptr %i.od, ptr %i.nv, align 8, !tbaa !42
  br label %.critedge

.critedge109:                                     ; preds = %ISEQ_COMPILE_DATA.exit234, %bb.x, %.lr.ph, %can_add_ensure_iseq.exit173
  %i.oh = load i64, ptr %2, align 8, !tbaa !172
  %i.oi = lshr i64 %i.oh, 15
  %i.oj = trunc i64 %i.oi to i32
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.oj, ptr noundef nonnull @.str.138)
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.aa, %new_adjust_body.exit157, %bb.k, %new_adjust_body.exit229, %bb.u, %iseq_compile_each.exit245, %bb.w, %.critedge109, %iseq_compile_each.exit209, %iseq_compile_each.exit
  %.3 = phi i32 [ 0, %.critedge109 ], [ 0, %iseq_compile_each.exit245 ], [ 0, %bb.w ], [ 0, %iseq_compile_each.exit209 ], [ 0, %iseq_compile_each.exit ], [ 1, %bb.u ], [ 1, %new_adjust_body.exit229 ], [ 1, %bb.k ], [ 1, %new_adjust_body.exit157 ], [ 1, %bb.aa ], [ 1, %bb.ab ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_redo(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !123
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit, label %ISEQ_COMPILE_DATA.exit.thread

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr inttoptr (i64 64 to ptr), align 64, !tbaa !525
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %can_add_ensure_iseq.exit.thread, label %ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge

ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge:    ; preds = %ISEQ_COMPILE_DATA.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val13.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit235

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !525
  %.not224 = icmp eq ptr %i.g, null
  br i1 %.not224, label %can_add_ensure_iseq.exit.thread226, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.h = getelementptr i8, ptr %i.e, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !535, !range !151, !noundef !152
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %ISEQ_COMPILE_DATA.exit13.i, label %.loopexit235

ISEQ_COMPILE_DATA.exit13.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %.not.i100 = icmp eq ptr %i.l, null
  br i1 %.not.i100, label %.loopexit235, label %.preheader.i

.preheader.i:                                     ; preds = %ISEQ_COMPILE_DATA.exit13.i, %bb.b
  %.0.i101 = phi ptr [ %i.o, %bb.b ], [ %i.l, %ISEQ_COMPILE_DATA.exit13.i ] ; 2 uses
  %i.m = load ptr, ptr %.0.i101, align 8, !tbaa !529
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.b, label %can_add_ensure_iseq.exit

bb.b:                                             ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %.0.i101, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !531  ; 2 uses
  %.old1.not.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i, label %.loopexit235, label %.preheader.i

.loopexit235:                                     ; preds = %bb.b, %ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit13.i
  %.val13.i = phi ptr [ %.val13.i.pre, %ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge ], [ %i.e, %ISEQ_COMPILE_DATA.exit13.i ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.q = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 48
  %i.w = getelementptr i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %.loopexit235
  %i.aa = icmp ult i32 %i.x, 48
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ad = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.x, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i ], [ %i.ae, %._crit_edge.i.i.loopexit.i.i ]
  %i.af = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.af, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !64
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !64
  store ptr null, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ai, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %.loopexit235, %._crit_edge.i.i.i.i
  %i.aj = phi i32 [ %i.t, %.loopexit235 ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.r, %.loopexit235 ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.al = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 10 uses
  %i.ao = add i32 %i.aj, 48
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !37
  store i32 1, ptr %i.an, align 8, !tbaa !182
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !184
  %i.au = getelementptr i8, ptr %i.an, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.an, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 44     ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -16
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %i.an, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr i8, ptr %1, i64 24        ; 10 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.an, ptr %i.ba, align 8, !tbaa !42
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !525 ; 4 uses
  %i.bh = load i64, ptr %2, align 8, !tbaa !172
  %i.bi = lshr i64 %i.bh, 15
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr i8, ptr %i.be, i64 96     ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 40
  %i.bq = getelementptr i8, ptr %i.bl, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !37 ; 4 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.bp, %i.bs
  br i1 %i.bt, label %.preheader.i.i.i.i109, label %compile_data_alloc_adjust.exit.i

.preheader.i.i.i.i109:                            ; preds = %new_label_body.exit
  %i.bu = icmp ult i32 %i.br, 40
  br i1 %i.bu, label %.lr.ph.i.i.i.i113, label %._crit_edge.i.i.i.i110

.lr.ph.i.i.i.i113:                                ; preds = %.preheader.i.i.i.i109, %bb.f
  %.027.i.i.i.i114 = phi i32 [ %i.bw, %bb.f ], [ %i.br, %.preheader.i.i.i.i109 ] ; 3 uses
  %i.bv = icmp samesign ugt i32 %.027.i.i.i.i114, 1073741822
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i113
  tail call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i113
  %i.bw = shl nuw nsw i32 %.027.i.i.i.i114, 1     ; 3 uses
  %i.bx = icmp samesign ult i32 %.027.i.i.i.i114, 20
  br i1 %i.bx, label %.lr.ph.i.i.i.i113, label %._crit_edge.i.i.loopexit.i.i115, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i115:                  ; preds = %bb.f
  %i.by = zext nneg i32 %i.bw to i64
  br label %._crit_edge.i.i.i.i110

._crit_edge.i.i.i.i110:                           ; preds = %._crit_edge.i.i.loopexit.i.i115, %.preheader.i.i.i.i109
  %.0.lcssa.i.i.i.i111 = phi i32 [ %i.br, %.preheader.i.i.i.i109 ], [ %i.bw, %._crit_edge.i.i.loopexit.i.i115 ]
  %.lcssa.i.i.i.i112 = phi i64 [ %i.bs, %.preheader.i.i.i.i109 ], [ %i.by, %._crit_edge.i.i.loopexit.i.i115 ]
  %i.bz = add nuw nsw i64 %.lcssa.i.i.i.i112, 16
  %i.ca = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bz, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ca, ptr %i.bl, align 8, !tbaa !64
  store ptr %i.ca, ptr %i.bk, align 8, !tbaa !64
  store ptr null, ptr %i.ca, align 8, !tbaa !64
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i32 0, ptr %i.cb, align 8, !tbaa !37
  %i.cc = getelementptr i8, ptr %i.ca, i64 12
  store i32 %.0.lcssa.i.i.i.i111, ptr %i.cc, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i

compile_data_alloc_adjust.exit.i:                 ; preds = %._crit_edge.i.i.i.i110, %new_label_body.exit
  %i.cd = phi i32 [ 0, %._crit_edge.i.i.i.i110 ], [ %i.bn, %new_label_body.exit ] ; 2 uses
  %.022.i.i.i.i107 = phi ptr [ %i.ca, %._crit_edge.i.i.i.i110 ], [ %i.bl, %new_label_body.exit ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.022.i.i.i.i107, i64 16
  %i.cf = getelementptr i8, ptr %.022.i.i.i.i107, i64 8
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cg  ; 7 uses
  %i.ci = add i32 %i.cd, 40
  store i32 %i.ci, ptr %i.cf, align 8, !tbaa !37
  store i32 3, ptr %i.ch, align 8, !tbaa !533
  %i.cj = getelementptr i8, ptr %i.ch, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !534
  %i.ck = getelementptr i8, ptr %i.ch, i64 24
  store ptr %i.bg, ptr %i.ck, align 8, !tbaa !113
  %i.cl = getelementptr i8, ptr %i.ch, i64 32
  store i32 %i.bj, ptr %i.cl, align 8, !tbaa !114
  %.not.i108 = icmp eq ptr %i.bg, null
  br i1 %.not.i108, label %new_adjust_body.exit, label %bb.g

bb.g:                                             ; preds = %compile_data_alloc_adjust.exit.i
  %i.cm = getelementptr i8, ptr %i.bg, i64 40     ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !240
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !240
  %i.cp = getelementptr i8, ptr %i.bg, i64 44     ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = or i8 %i.cq, 8
  store i8 %i.cr, ptr %i.cp, align 4
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %compile_data_alloc_adjust.exit.i, %bb.g
  %i.cs = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ch, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !61
  %i.cu = getelementptr i8, ptr %i.cs, i64 8
  store ptr %i.ch, ptr %i.cu, align 8, !tbaa !62
  store ptr %i.ch, ptr %i.ba, align 8, !tbaa !42
  tail call fastcc void @add_ensure_iseq(ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0)
  %i.cv = load i64, ptr %2, align 8, !tbaa !172
  %i.cw = lshr i64 %i.cv, 15
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !243
  %i.da = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.db = getelementptr i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !525
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.cx, i32 noundef %i.cz, i32 noundef 72, i32 noundef 1, i64 noundef %i.dd) ; 3 uses
  %i.df = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !61
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !62
  store ptr %i.de, ptr %i.ba, align 8, !tbaa !42
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dj = getelementptr i8, ptr %i.di, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !525
  %i.dl = getelementptr i8, ptr %i.dk, i64 40     ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !240
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !240
  %.val97 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.do = getelementptr i8, ptr %.val97, i64 96   ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !64 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !37 ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, 40
  %i.du = getelementptr i8, ptr %i.dp, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !37 ; 4 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = icmp samesign ugt i64 %i.dt, %i.dw
  br i1 %i.dx, label %.preheader.i.i.i.i128, label %new_adjust_body.exit135

.preheader.i.i.i.i128:                            ; preds = %new_adjust_body.exit
  %i.dy = icmp ult i32 %i.dv, 40
  br i1 %i.dy, label %.lr.ph.i.i.i.i132, label %._crit_edge.i.i.i.i129

.lr.ph.i.i.i.i132:                                ; preds = %.preheader.i.i.i.i128, %bb.i
  %.027.i.i.i.i133 = phi i32 [ %i.ea, %bb.i ], [ %i.dv, %.preheader.i.i.i.i128 ] ; 3 uses
  %i.dz = icmp samesign ugt i32 %.027.i.i.i.i133, 1073741822
  br i1 %i.dz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i132
  tail call void @rb_memerror() #38
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.i.i.i132
  %i.ea = shl nuw nsw i32 %.027.i.i.i.i133, 1     ; 3 uses
  %i.eb = icmp samesign ult i32 %.027.i.i.i.i133, 20
  br i1 %i.eb, label %.lr.ph.i.i.i.i132, label %._crit_edge.i.i.loopexit.i.i134, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i134:                  ; preds = %bb.i
  %i.ec = zext nneg i32 %i.ea to i64
  br label %._crit_edge.i.i.i.i129

._crit_edge.i.i.i.i129:                           ; preds = %._crit_edge.i.i.loopexit.i.i134, %.preheader.i.i.i.i128
  %.0.lcssa.i.i.i.i130 = phi i32 [ %i.dv, %.preheader.i.i.i.i128 ], [ %i.ea, %._crit_edge.i.i.loopexit.i.i134 ]
  %.lcssa.i.i.i.i131 = phi i64 [ %i.dw, %.preheader.i.i.i.i128 ], [ %i.ec, %._crit_edge.i.i.loopexit.i.i134 ]
  %i.ed = add nuw nsw i64 %.lcssa.i.i.i.i131, 16
  %i.ee = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ed, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ee, ptr %i.dp, align 8, !tbaa !64
  store ptr %i.ee, ptr %i.do, align 8, !tbaa !64
  store ptr null, ptr %i.ee, align 8, !tbaa !64
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  store i32 0, ptr %i.ef, align 8, !tbaa !37
  %i.eg = getelementptr i8, ptr %i.ee, i64 12
  store i32 %.0.lcssa.i.i.i.i130, ptr %i.eg, align 4, !tbaa !37
  br label %new_adjust_body.exit135

new_adjust_body.exit135:                          ; preds = %._crit_edge.i.i.i.i129, %new_adjust_body.exit
  %i.eh = phi i32 [ 0, %._crit_edge.i.i.i.i129 ], [ %i.dr, %new_adjust_body.exit ] ; 2 uses
  %.022.i.i.i.i126 = phi ptr [ %i.ee, %._crit_edge.i.i.i.i129 ], [ %i.dp, %new_adjust_body.exit ] ; 2 uses
  %i.ei = getelementptr i8, ptr %.022.i.i.i.i126, i64 16
  %i.ej = getelementptr i8, ptr %.022.i.i.i.i126, i64 8
  %i.ek = zext i32 %i.eh to i64
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek  ; 7 uses
  %i.em = add i32 %i.eh, 40
  store i32 %i.em, ptr %i.ej, align 8, !tbaa !37
  store i32 3, ptr %i.el, align 8, !tbaa !533
  %i.en = getelementptr i8, ptr %i.el, i64 8
  store ptr null, ptr %i.en, align 8, !tbaa !534
  %i.eo = getelementptr i8, ptr %i.el, i64 24
  store ptr %i.an, ptr %i.eo, align 8, !tbaa !113
  %i.ep = getelementptr i8, ptr %i.el, i64 32
  store i32 -1, ptr %i.ep, align 8, !tbaa !114
  %i.eq = load i32, ptr %i.av, align 8, !tbaa !240
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.av, align 8, !tbaa !240
  %i.es = load i8, ptr %i.aw, align 4
  %i.et = or i8 %i.es, 8
  store i8 %i.et, ptr %i.aw, align 4
  %i.eu = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.el, i64 16
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !61
  %i.ew = getelementptr i8, ptr %i.eu, i64 8
  store ptr %i.el, ptr %i.ew, align 8, !tbaa !62
  store ptr %i.el, ptr %i.ba, align 8, !tbaa !42
  %.not90 = icmp eq i32 %3, 0
  br i1 %.not90, label %bb.j, label %.critedge92

bb.j:                                             ; preds = %new_adjust_body.exit135
  %i.ex = load i64, ptr %2, align 8, !tbaa !172
  %i.ey = lshr i64 %i.ex, 15
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = load i32, ptr %i.cy, align 8, !tbaa !243
  %i.fb = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.fa, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fc = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 16
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !61
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !62
  store ptr %i.fb, ptr %i.ba, align 8, !tbaa !42
  br label %.critedge92

can_add_ensure_iseq.exit:                         ; preds = %.preheader.i
  %i.ff = getelementptr i8, ptr %0, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !70
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !86
  %.not82 = icmp eq i32 %i.fh, 6
  br i1 %.not82, label %can_add_ensure_iseq.exit151.preheader, label %.ISEQ_COMPILE_DATA.exit140.thread_crit_edge

can_add_ensure_iseq.exit151.preheader:            ; preds = %.preheader.i146, %can_add_ensure_iseq.exit.thread, %ISEQ_COMPILE_DATA.exit.i150, %can_add_ensure_iseq.exit.thread226, %ISEQ_COMPILE_DATA.exit140, %can_add_ensure_iseq.exit
  br label %can_add_ensure_iseq.exit151

can_add_ensure_iseq.exit.thread:                  ; preds = %ISEQ_COMPILE_DATA.exit
  %i.fi = getelementptr i8, ptr %0, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !70
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !86
  %.not82275 = icmp eq i32 %i.fk, 6
  br i1 %.not82275, label %can_add_ensure_iseq.exit151.preheader, label %ISEQ_COMPILE_DATA.exit140

can_add_ensure_iseq.exit.thread226:               ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.fl = getelementptr i8, ptr %0, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !70
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !86
  %.not82227 = icmp eq i32 %i.fn, 6
  br i1 %.not82227, label %can_add_ensure_iseq.exit151.preheader, label %ISEQ_COMPILE_DATA.exit.i150

.ISEQ_COMPILE_DATA.exit140.thread_crit_edge:      ; preds = %can_add_ensure_iseq.exit
  %.phi.trans.insert248.a = getelementptr i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert248.a, align 8, !tbaa !47
  br label %ISEQ_COMPILE_DATA.exit.i150

ISEQ_COMPILE_DATA.exit140:                        ; preds = %can_add_ensure_iseq.exit.thread
  %i.fo = load ptr, ptr inttoptr (i64 48 to ptr), align 16, !tbaa !233
  %.not83 = icmp eq ptr %i.fo, null
  br i1 %.not83, label %can_add_ensure_iseq.exit151.preheader, label %ISEQ_COMPILE_DATA.exit140.thread.a

ISEQ_COMPILE_DATA.exit140.thread.a:               ; preds = %ISEQ_COMPILE_DATA.exit140
  %i.fp = getelementptr i8, ptr %0, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !47
  br label %.loopexit

ISEQ_COMPILE_DATA.exit.i150:                      ; preds = %.ISEQ_COMPILE_DATA.exit140.thread_crit_edge, %can_add_ensure_iseq.exit.thread226
  %4 = phi ptr [ %.pre, %.ISEQ_COMPILE_DATA.exit140.thread_crit_edge ], [ %i.e, %can_add_ensure_iseq.exit.thread226 ] ; 6 uses
  %.phi.trans.insert249 = getelementptr i8, ptr %4, i64 48
  %.val13.i152.pre = load ptr, ptr %.phi.trans.insert249, align 8, !tbaa !233
  %.not83229 = icmp eq ptr %.val13.i152.pre, null
  br i1 %.not83229, label %can_add_ensure_iseq.exit151.preheader, label %ISEQ_COMPILE_DATA.exit.thread.i142

ISEQ_COMPILE_DATA.exit.thread.i142:               ; preds = %ISEQ_COMPILE_DATA.exit.i150
  %i.fr = getelementptr i8, ptr %4, i64 120
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !535, !range !151, !noundef !152
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %ISEQ_COMPILE_DATA.exit13.i144, label %.loopexit

ISEQ_COMPILE_DATA.exit13.i144:                    ; preds = %ISEQ_COMPILE_DATA.exit.thread.i142
  %i.fu = getelementptr i8, ptr %4, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !530 ; 2 uses
  %.not.i145 = icmp eq ptr %i.fv, null
  br i1 %.not.i145, label %.loopexit, label %.preheader.i146

.preheader.i146:                                  ; preds = %ISEQ_COMPILE_DATA.exit13.i144, %bb.k
  %.0.i147 = phi ptr [ %i.fy, %bb.k ], [ %i.fv, %ISEQ_COMPILE_DATA.exit13.i144 ] ; 2 uses
  %i.fw = load ptr, ptr %.0.i147, align 8, !tbaa !529
  %.not10.i148 = icmp eq ptr %i.fw, null
  br i1 %.not10.i148, label %bb.k, label %can_add_ensure_iseq.exit151.preheader

bb.k:                                             ; preds = %.preheader.i146
  %i.fx = getelementptr i8, ptr %.0.i147, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !531 ; 2 uses
  %.old1.not.i149 = icmp eq ptr %i.fy, null
  br i1 %.old1.not.i149, label %.loopexit, label %.preheader.i146

.loopexit:                                        ; preds = %bb.k, %ISEQ_COMPILE_DATA.exit140.thread.a, %ISEQ_COMPILE_DATA.exit.thread.i142, %ISEQ_COMPILE_DATA.exit13.i144
  %.val13.i152 = phi ptr [ %i.fq, %ISEQ_COMPILE_DATA.exit140.thread.a ], [ %4, %ISEQ_COMPILE_DATA.exit13.i144 ], [ %4, %ISEQ_COMPILE_DATA.exit.thread.i142 ], [ %4, %bb.k ]
  %i.fz = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.ga = getelementptr i8, ptr %.val13.i152, i64 96 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !64 ; 4 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !37 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = add nuw nsw i64 %i.ge, 48
  %i.gg = getelementptr i8, ptr %i.gb, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37 ; 4 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp samesign ugt i64 %i.gf, %i.gi
  br i1 %i.gj, label %.preheader.i.i.i.i155, label %new_label_body.exit164

.preheader.i.i.i.i155:                            ; preds = %.loopexit
  %i.gk = icmp ult i32 %i.gh, 48
  br i1 %i.gk, label %.lr.ph.i.i.i.i161, label %._crit_edge.i.i.i.i156

.lr.ph.i.i.i.i161:                                ; preds = %.preheader.i.i.i.i155, %bb.m
  %.027.i.i.i.i162 = phi i32 [ %i.gm, %bb.m ], [ %i.gh, %.preheader.i.i.i.i155 ] ; 3 uses
  %i.gl = icmp samesign ugt i32 %.027.i.i.i.i162, 1073741822
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i161
  tail call void @rb_memerror() #38
  unreachable

bb.m:                                             ; preds = %.lr.ph.i.i.i.i161
  %i.gm = shl nuw nsw i32 %.027.i.i.i.i162, 1     ; 3 uses
  %i.gn = icmp samesign ult i32 %.027.i.i.i.i162, 24
  br i1 %i.gn, label %.lr.ph.i.i.i.i161, label %._crit_edge.i.i.loopexit.i.i163, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i163:                  ; preds = %bb.m
  %i.go = zext nneg i32 %i.gm to i64
  br label %._crit_edge.i.i.i.i156

._crit_edge.i.i.i.i156:                           ; preds = %._crit_edge.i.i.loopexit.i.i163, %.preheader.i.i.i.i155
  %.0.lcssa.i.i.i.i157 = phi i32 [ %i.gh, %.preheader.i.i.i.i155 ], [ %i.gm, %._crit_edge.i.i.loopexit.i.i163 ]
  %.lcssa.i.i.i.i158 = phi i64 [ %i.gi, %.preheader.i.i.i.i155 ], [ %i.go, %._crit_edge.i.i.loopexit.i.i163 ]
  %i.gp = add nuw nsw i64 %.lcssa.i.i.i.i158, 16
  %i.gq = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.gp, i64 noundef 1) #39 ; 6 uses
  store ptr %i.gq, ptr %i.gb, align 8, !tbaa !64
  store ptr %i.gq, ptr %i.ga, align 8, !tbaa !64
  store ptr null, ptr %i.gq, align 8, !tbaa !64
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  store i32 0, ptr %i.gr, align 8, !tbaa !37
  %i.gs = getelementptr i8, ptr %i.gq, i64 12
  store i32 %.0.lcssa.i.i.i.i157, ptr %i.gs, align 4, !tbaa !37
  br label %new_label_body.exit164

new_label_body.exit164:                           ; preds = %.loopexit, %._crit_edge.i.i.i.i156
  %i.gt = phi i32 [ %i.gd, %.loopexit ], [ 0, %._crit_edge.i.i.i.i156 ] ; 2 uses
  %.022.i.i.i.i154 = phi ptr [ %i.gb, %.loopexit ], [ %i.gq, %._crit_edge.i.i.i.i156 ] ; 2 uses
  %i.gu = getelementptr i8, ptr %.022.i.i.i.i154, i64 16
  %i.gv = getelementptr i8, ptr %.022.i.i.i.i154, i64 8
  %i.gw = zext i32 %i.gt to i64
  %i.gx = getelementptr i8, ptr %i.gu, i64 %i.gw  ; 10 uses
  %i.gy = add i32 %i.gt, 48
  store i32 %i.gy, ptr %i.gv, align 8, !tbaa !37
  store i32 1, ptr %i.gx, align 8, !tbaa !182
  %i.gz = getelementptr i8, ptr %i.gx, i64 8
  store ptr null, ptr %i.gz, align 8, !tbaa !183
  %i.ha = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.hb = getelementptr i8, ptr %i.ha, i64 132    ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !184 ; 2 uses
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !184
  %i.he = getelementptr i8, ptr %i.gx, i64 24
  store i32 %i.hc, ptr %i.he, align 8, !tbaa !111
  %i.hf = getelementptr i8, ptr %i.gx, i64 40     ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gx, i64 44     ; 4 uses
  %i.hh = load i8, ptr %i.hg, align 4
  %i.hi = and i8 %i.hh, -16
  store i8 %i.hi, ptr %i.hg, align 4
  %i.hj = getelementptr i8, ptr %i.gx, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.hj, align 4, !tbaa !37
  %i.hk = getelementptr i8, ptr %1, i64 24        ; 10 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !42 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.gx, i64 16
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !61
  %i.hn = getelementptr i8, ptr %i.hl, i64 8
  store ptr %i.gx, ptr %i.hn, align 8, !tbaa !62
  store ptr %i.gx, ptr %i.hk, align 8, !tbaa !42
  tail call fastcc void @add_ensure_iseq(ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0)
  %i.ho = load ptr, ptr %i.fz, align 8, !tbaa !47 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !233 ; 4 uses
  %i.hr = load i64, ptr %2, align 8, !tbaa !172
  %i.hs = lshr i64 %i.hr, 15
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = getelementptr i8, ptr %i.ho, i64 96     ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !64 ; 4 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !37 ; 2 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = add nuw nsw i64 %i.hy, 40
  %i.ia = getelementptr i8, ptr %i.hv, i64 12
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !37 ; 4 uses
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = icmp samesign ugt i64 %i.hz, %i.ic
  br i1 %i.id, label %.preheader.i.i.i.i174, label %compile_data_alloc_adjust.exit.i171

.preheader.i.i.i.i174:                            ; preds = %new_label_body.exit164
  %i.ie = icmp ult i32 %i.ib, 40
  br i1 %i.ie, label %.lr.ph.i.i.i.i178, label %._crit_edge.i.i.i.i175

.lr.ph.i.i.i.i178:                                ; preds = %.preheader.i.i.i.i174, %bb.o
  %.027.i.i.i.i179 = phi i32 [ %i.ig, %bb.o ], [ %i.ib, %.preheader.i.i.i.i174 ] ; 3 uses
  %i.if = icmp samesign ugt i32 %.027.i.i.i.i179, 1073741822
  br i1 %i.if, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i178
  tail call void @rb_memerror() #38
  unreachable

bb.o:                                             ; preds = %.lr.ph.i.i.i.i178
  %i.ig = shl nuw nsw i32 %.027.i.i.i.i179, 1     ; 3 uses
  %i.ih = icmp samesign ult i32 %.027.i.i.i.i179, 20
  br i1 %i.ih, label %.lr.ph.i.i.i.i178, label %._crit_edge.i.i.loopexit.i.i180, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i180:                  ; preds = %bb.o
  %i.ii = zext nneg i32 %i.ig to i64
  br label %._crit_edge.i.i.i.i175

._crit_edge.i.i.i.i175:                           ; preds = %._crit_edge.i.i.loopexit.i.i180, %.preheader.i.i.i.i174
  %.0.lcssa.i.i.i.i176 = phi i32 [ %i.ib, %.preheader.i.i.i.i174 ], [ %i.ig, %._crit_edge.i.i.loopexit.i.i180 ]
  %.lcssa.i.i.i.i177 = phi i64 [ %i.ic, %.preheader.i.i.i.i174 ], [ %i.ii, %._crit_edge.i.i.loopexit.i.i180 ]
  %i.ij = add nuw nsw i64 %.lcssa.i.i.i.i177, 16
  %i.ik = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ij, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ik, ptr %i.hv, align 8, !tbaa !64
  store ptr %i.ik, ptr %i.hu, align 8, !tbaa !64
  store ptr null, ptr %i.ik, align 8, !tbaa !64
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  store i32 0, ptr %i.il, align 8, !tbaa !37
  %i.im = getelementptr i8, ptr %i.ik, i64 12
  store i32 %.0.lcssa.i.i.i.i176, ptr %i.im, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i171

compile_data_alloc_adjust.exit.i171:              ; preds = %._crit_edge.i.i.i.i175, %new_label_body.exit164
  %i.in = phi i32 [ 0, %._crit_edge.i.i.i.i175 ], [ %i.hx, %new_label_body.exit164 ] ; 2 uses
  %.022.i.i.i.i172 = phi ptr [ %i.ik, %._crit_edge.i.i.i.i175 ], [ %i.hv, %new_label_body.exit164 ] ; 2 uses
  %i.io = getelementptr i8, ptr %.022.i.i.i.i172, i64 16
  %i.ip = getelementptr i8, ptr %.022.i.i.i.i172, i64 8
  %i.iq = zext i32 %i.in to i64
  %i.ir = getelementptr i8, ptr %i.io, i64 %i.iq  ; 7 uses
  %i.is = add i32 %i.in, 40
  store i32 %i.is, ptr %i.ip, align 8, !tbaa !37
  store i32 3, ptr %i.ir, align 8, !tbaa !533
  %i.it = getelementptr i8, ptr %i.ir, i64 8
  store ptr null, ptr %i.it, align 8, !tbaa !534
  %i.iu = getelementptr i8, ptr %i.ir, i64 24
  store ptr %i.hq, ptr %i.iu, align 8, !tbaa !113
  %i.iv = getelementptr i8, ptr %i.ir, i64 32
  store i32 %i.ht, ptr %i.iv, align 8, !tbaa !114
  %.not.i173 = icmp eq ptr %i.hq, null
  br i1 %.not.i173, label %new_adjust_body.exit181, label %bb.p

bb.p:                                             ; preds = %compile_data_alloc_adjust.exit.i171
  %i.iw = getelementptr i8, ptr %i.hq, i64 40     ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !240
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.iw, align 8, !tbaa !240
  %i.iz = getelementptr i8, ptr %i.hq, i64 44     ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 4
  %i.jb = or i8 %i.ja, 8
  store i8 %i.jb, ptr %i.iz, align 4
  br label %new_adjust_body.exit181

new_adjust_body.exit181:                          ; preds = %compile_data_alloc_adjust.exit.i171, %bb.p
  %i.jc = load ptr, ptr %i.hk, align 8, !tbaa !42 ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ir, i64 16
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !61
  %i.je = getelementptr i8, ptr %i.jc, i64 8
  store ptr %i.ir, ptr %i.je, align 8, !tbaa !62
  store ptr %i.ir, ptr %i.hk, align 8, !tbaa !42
  %i.jf = load i64, ptr %2, align 8, !tbaa !172
  %i.jg = lshr i64 %i.jf, 15
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !243
  %i.jk = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.jl = getelementptr i8, ptr %i.jk, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !233
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jh, i32 noundef %i.jj, i32 noundef 72, i32 noundef 1, i64 noundef %i.jn) ; 3 uses
  %i.jp = load ptr, ptr %i.hk, align 8, !tbaa !42 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jo, i64 16
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !61
  %i.jr = getelementptr i8, ptr %i.jp, i64 8
  store ptr %i.jo, ptr %i.jr, align 8, !tbaa !62
  store ptr %i.jo, ptr %i.hk, align 8, !tbaa !42
  %i.js = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.jt = getelementptr i8, ptr %i.js, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !233
  %i.jv = getelementptr i8, ptr %i.ju, i64 40     ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !240
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !240
  %.val93 = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.jy = getelementptr i8, ptr %.val93, i64 96   ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !64 ; 4 uses
end_hunk_1
begin_hunk_2_@pm_compile_rescue:bb.a

ISEQ_COMPILE_DATA.exit120:                        ; preds = %bb.k, %bb.j
  %i.fn = phi ptr [ %i.fj, %bb.k ], [ %.pre, %bb.j ] ; 2 uses
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.fp = getelementptr i8, ptr %i.fo, i64 120
  store i8 %i.ey, ptr %i.fp, align 8, !tbaa !535
  %i.fq = getelementptr i8, ptr %i.bl, i64 16
  store ptr %i.fn, ptr %i.fq, align 8, !tbaa !61
  %i.fr = getelementptr i8, ptr %i.fn, i64 8
  store ptr %i.bl, ptr %i.fr, align 8, !tbaa !62
  store ptr %i.bl, ptr %i.es, align 8, !tbaa !42
  %i.fs = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !605 ; 2 uses
  %.not84 = icmp eq ptr %i.ft, null
  br i1 %.not84, label %bb.o, label %bb.l

bb.l:                                             ; preds = %ISEQ_COMPILE_DATA.exit120
  br i1 %4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fu = load i32, ptr %2, align 4, !tbaa !370
  %i.fv = getelementptr i8, ptr %2, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !372
  %i.fx = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fu, i32 noundef %i.fw, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fy = load ptr, ptr %i.es, align 8, !tbaa !42 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fx, i64 16
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !61
  %i.ga = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !62
  store ptr %i.fx, ptr %i.es, align 8, !tbaa !42
  %.pre151 = load ptr, ptr %i.fs, align 8, !tbaa !605
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gb = phi ptr [ %.pre151, %bb.m ], [ %i.ft, %bb.l ]
  call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.gb, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %ISEQ_COMPILE_DATA.exit120
  %i.gc = load i32, ptr %2, align 4, !tbaa !370
  %i.gd = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !372
  %i.gf = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gc, i32 noundef %i.ge, i32 noundef 0, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.gg = load ptr, ptr %i.es, align 8, !tbaa !42 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gf, i64 16
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !61
  %i.gi = getelementptr i8, ptr %i.gg, i64 8
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !62
  %i.gj = getelementptr i8, ptr %i.cv, i64 16
  store ptr %i.gf, ptr %i.gj, align 8, !tbaa !61
  %i.gk = getelementptr i8, ptr %i.gf, i64 8
  store ptr %i.cv, ptr %i.gk, align 8, !tbaa !62
  store ptr %i.cv, ptr %i.es, align 8, !tbaa !42
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gl = load i32, ptr %2, align 4, !tbaa !370
  %i.gm = load i32, ptr %i.gd, align 4, !tbaa !372
  %i.gn = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.go = load ptr, ptr %i.es, align 8, !tbaa !42 ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gn, i64 16
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !61
  %i.gq = getelementptr i8, ptr %i.go, i64 8
  store ptr %i.gn, ptr %i.gq, align 8, !tbaa !62
  store ptr %i.gn, ptr %i.es, align 8, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.gr = ptrtoint ptr %i.ab to i64
  %i.gs = or i64 %i.gr, 1                         ; 2 uses
  %i.gt = ptrtoint ptr %i.bl to i64
  %i.gu = or i64 %i.gt, 1                         ; 2 uses
  %i.gv = ptrtoint ptr %i.eh to i64
  %i.gw = ptrtoint ptr %i.cv to i64
  %i.gx = or i64 %i.gw, 1                         ; 2 uses
  %i.gy = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 3, i64 noundef %i.gs, i64 noundef %i.gu, i64 noundef %i.gv, i64 noundef %i.gx) #37 ; 3 uses
  %i.gz = load i32, ptr %i.aj, align 8, !tbaa !240
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.aj, align 8, !tbaa !240
  %i.hb = load i8, ptr %i.ak, align 4
  %i.hc = or i8 %i.hb, 8
  store i8 %i.hc, ptr %i.ak, align 4
  %i.hd = load i32, ptr %i.bt, align 8, !tbaa !240
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.bt, align 8, !tbaa !240
  %i.hf = load i32, ptr %i.dd, align 8, !tbaa !240
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.dd, align 8, !tbaa !240
  %i.hh = load i64, ptr %0, align 8, !tbaa !123
  %i.hi = and i64 %i.hh, 262144
  %.not.i121 = icmp eq i64 %i.hi, 0
  br i1 %.not.i121, label %ISEQ_COMPILE_DATA.exit123, label %ISEQ_COMPILE_DATA.exit123.thread

ISEQ_COMPILE_DATA.exit123:                        ; preds = %bb.q
  %i.hj = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !106
  %i.hk = icmp eq i64 %i.hj, 4
  br i1 %i.hk, label %ISEQ_COMPILE_DATA.exit126, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit123.thread:                 ; preds = %bb.q
  %i.hl = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !106
  %i.ho = icmp eq i64 %i.hn, 4
  br i1 %i.ho, label %ISEQ_COMPILE_DATA.exit126, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit126:                        ; preds = %ISEQ_COMPILE_DATA.exit123.thread, %ISEQ_COMPILE_DATA.exit123
  %.0.i125 = phi ptr [ null, %ISEQ_COMPILE_DATA.exit123 ], [ %i.hl, %ISEQ_COMPILE_DATA.exit123.thread ]
  %i.hp = getelementptr i8, ptr %.0.i125, i64 8
  %i.hq = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.hq, ptr %i.hp, align 8, !tbaa !63
  %i.hr = icmp eq i64 %i.hq, 0
  %i.hs = and i64 %i.hq, 7
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = or i1 %i.hr, %i.ht
  br i1 %i.hu, label %rb_obj_write.exit, label %bb.r

bb.r:                                             ; preds = %ISEQ_COMPILE_DATA.exit126
  %i.hv = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.hv, i64 noundef %i.hq) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.r, %ISEQ_COMPILE_DATA.exit126, %ISEQ_COMPILE_DATA.exit123.thread, %ISEQ_COMPILE_DATA.exit123
  %i.hw = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !106
  call void @rb_obj_freeze_inline(i64 noundef %i.gy) #37
  %i.hz = inttoptr i64 %i.gy to ptr
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  store i64 0, ptr %i.ia, align 8, !tbaa !63
  %i.ib = call i64 @rb_ary_push(i64 noundef %i.hy, i64 noundef %i.gy) #37 ; 0 uses
  %i.ic = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 7, i64 noundef %i.gu, i64 noundef %i.gx, i64 noundef 0, i64 noundef %i.gs) #37 ; 3 uses
  %i.id = load i32, ptr %i.bt, align 8, !tbaa !240
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.bt, align 8, !tbaa !240
  %i.if = load i8, ptr %i.bu, align 4
  %i.ig = or i8 %i.if, 8
  store i8 %i.ig, ptr %i.bu, align 4
  %i.ih = load i32, ptr %i.dd, align 8, !tbaa !240
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.dd, align 8, !tbaa !240
  %i.ij = load i32, ptr %i.aj, align 8, !tbaa !240
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.aj, align 8, !tbaa !240
  %i.il = load i64, ptr %0, align 8, !tbaa !123
  %i.im = and i64 %i.il, 262144
  %.not.i130 = icmp eq i64 %i.im, 0
  br i1 %.not.i130, label %ISEQ_COMPILE_DATA.exit132, label %ISEQ_COMPILE_DATA.exit132.thread

ISEQ_COMPILE_DATA.exit132:                        ; preds = %rb_obj_write.exit
  %i.in = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !106
  %i.io = icmp eq i64 %i.in, 4
  br i1 %i.io, label %ISEQ_COMPILE_DATA.exit135, label %rb_obj_write.exit136

ISEQ_COMPILE_DATA.exit132.thread:                 ; preds = %rb_obj_write.exit
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !106
  %i.is = icmp eq i64 %i.ir, 4
  br i1 %i.is, label %ISEQ_COMPILE_DATA.exit135, label %rb_obj_write.exit136

ISEQ_COMPILE_DATA.exit135:                        ; preds = %ISEQ_COMPILE_DATA.exit132.thread, %ISEQ_COMPILE_DATA.exit132
  %.0.i134 = phi ptr [ null, %ISEQ_COMPILE_DATA.exit132 ], [ %i.ip, %ISEQ_COMPILE_DATA.exit132.thread ]
  %i.it = getelementptr i8, ptr %.0.i134, i64 8
  %i.iu = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.iu, ptr %i.it, align 8, !tbaa !63
  %i.iv = icmp eq i64 %i.iu, 0
  %i.iw = and i64 %i.iu, 7
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = or i1 %i.iv, %i.ix
  br i1 %i.iy, label %rb_obj_write.exit136, label %bb.s

bb.s:                                             ; preds = %ISEQ_COMPILE_DATA.exit135
  %i.iz = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.iz, i64 noundef %i.iu) #37
  br label %rb_obj_write.exit136

rb_obj_write.exit136:                             ; preds = %bb.s, %ISEQ_COMPILE_DATA.exit135, %ISEQ_COMPILE_DATA.exit132.thread, %ISEQ_COMPILE_DATA.exit132
  %i.ja = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.jb = getelementptr i8, ptr %i.ja, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !106
  call void @rb_obj_freeze_inline(i64 noundef %i.ic) #37
  %i.jd = inttoptr i64 %i.ic to ptr
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  store i64 0, ptr %i.je, align 8, !tbaa !63
  %i.jf = call i64 @rb_ary_push(i64 noundef %i.jc, i64 noundef %i.ic) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_break_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !123
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit, label %ISEQ_COMPILE_DATA.exit.thread

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr inttoptr (i64 64 to ptr), align 64, !tbaa !525
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %can_add_ensure_iseq.exit.preheader, label %can_add_ensure_iseq.exit.preheader.a

can_add_ensure_iseq.exit.preheader:               ; preds = %.preheader.i, %ISEQ_COMPILE_DATA.exit.thread, %ISEQ_COMPILE_DATA.exit
  br label %can_add_ensure_iseq.exit

can_add_ensure_iseq.exit.preheader.a:             ; preds = %ISEQ_COMPILE_DATA.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val13.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !525
  %.not120 = icmp eq ptr %i.g, null
  br i1 %.not120, label %can_add_ensure_iseq.exit.preheader, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.h = getelementptr i8, ptr %i.e, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !535, !range !151, !noundef !152
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %ISEQ_COMPILE_DATA.exit13.i, label %.loopexit

ISEQ_COMPILE_DATA.exit13.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %.not.i78 = icmp eq ptr %i.l, null
  br i1 %.not.i78, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %ISEQ_COMPILE_DATA.exit13.i, %bb.b
  %.0.i79 = phi ptr [ %i.o, %bb.b ], [ %i.l, %ISEQ_COMPILE_DATA.exit13.i ] ; 2 uses
  %i.m = load ptr, ptr %.0.i79, align 8, !tbaa !529
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.b, label %can_add_ensure_iseq.exit.preheader

bb.b:                                             ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %.0.i79, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !531  ; 2 uses
  %.old1.not.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i, label %.loopexit, label %.preheader.i

.loopexit:                                        ; preds = %bb.b, %can_add_ensure_iseq.exit.preheader.a, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit13.i
  %.val13.i = phi ptr [ %.val13.i.pre, %can_add_ensure_iseq.exit.preheader.a ], [ %i.e, %ISEQ_COMPILE_DATA.exit13.i ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.q = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 48
  %i.w = getelementptr i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %.loopexit
  %i.aa = icmp ult i32 %i.x, 48
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ad = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.x, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i ], [ %i.ae, %._crit_edge.i.i.loopexit.i.i ]
  %i.af = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.af, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !64
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !64
  store ptr null, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ai, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %.loopexit, %._crit_edge.i.i.i.i
  %i.aj = phi i32 [ %i.t, %.loopexit ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.r, %.loopexit ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.al = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 10 uses
  %i.ao = add i32 %i.aj, 48
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !37
  store i32 1, ptr %i.an, align 8, !tbaa !182
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !184
  %i.au = getelementptr i8, ptr %i.an, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.an, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 44     ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -16
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %i.an, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr i8, ptr %3, i64 24        ; 12 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.an, ptr %i.ba, align 8, !tbaa !42
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !525 ; 4 uses
  %i.bh = load i32, ptr %2, align 4, !tbaa !370
  %i.bi = getelementptr i8, ptr %i.be, i64 96     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64 ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 40
  %i.bo = getelementptr i8, ptr %i.bj, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !37 ; 4 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %.preheader.i.i.i.i85, label %compile_data_alloc_adjust.exit.i

.preheader.i.i.i.i85:                             ; preds = %new_label_body.exit
  %i.bs = icmp ult i32 %i.bp, 40
  br i1 %i.bs, label %.lr.ph.i.i.i.i89, label %._crit_edge.i.i.i.i86

.lr.ph.i.i.i.i89:                                 ; preds = %.preheader.i.i.i.i85, %bb.f
  %.027.i.i.i.i90 = phi i32 [ %i.bu, %bb.f ], [ %i.bp, %.preheader.i.i.i.i85 ] ; 3 uses
  %i.bt = icmp samesign ugt i32 %.027.i.i.i.i90, 1073741822
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i89
  tail call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i89
  %i.bu = shl nuw nsw i32 %.027.i.i.i.i90, 1      ; 3 uses
  %i.bv = icmp samesign ult i32 %.027.i.i.i.i90, 20
  br i1 %i.bv, label %.lr.ph.i.i.i.i89, label %._crit_edge.i.i.loopexit.i.i91, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i91:                   ; preds = %bb.f
  %i.bw = zext nneg i32 %i.bu to i64
  br label %._crit_edge.i.i.i.i86

._crit_edge.i.i.i.i86:                            ; preds = %._crit_edge.i.i.loopexit.i.i91, %.preheader.i.i.i.i85
  %.0.lcssa.i.i.i.i87 = phi i32 [ %i.bp, %.preheader.i.i.i.i85 ], [ %i.bu, %._crit_edge.i.i.loopexit.i.i91 ]
  %.lcssa.i.i.i.i88 = phi i64 [ %i.bq, %.preheader.i.i.i.i85 ], [ %i.bw, %._crit_edge.i.i.loopexit.i.i91 ]
  %i.bx = add nuw nsw i64 %.lcssa.i.i.i.i88, 16
  %i.by = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bx, i64 noundef 1) #39 ; 6 uses
  store ptr %i.by, ptr %i.bj, align 8, !tbaa !64
  store ptr %i.by, ptr %i.bi, align 8, !tbaa !64
  store ptr null, ptr %i.by, align 8, !tbaa !64
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store i32 0, ptr %i.bz, align 8, !tbaa !37
  %i.ca = getelementptr i8, ptr %i.by, i64 12
  store i32 %.0.lcssa.i.i.i.i87, ptr %i.ca, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i

compile_data_alloc_adjust.exit.i:                 ; preds = %._crit_edge.i.i.i.i86, %new_label_body.exit
  %i.cb = phi i32 [ 0, %._crit_edge.i.i.i.i86 ], [ %i.bl, %new_label_body.exit ] ; 2 uses
  %.022.i.i.i.i83 = phi ptr [ %i.by, %._crit_edge.i.i.i.i86 ], [ %i.bj, %new_label_body.exit ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.022.i.i.i.i83, i64 16
  %i.cd = getelementptr i8, ptr %.022.i.i.i.i83, i64 8
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr i8, ptr %i.cc, i64 %i.ce  ; 7 uses
  %i.cg = add i32 %i.cb, 40
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !37
  store i32 3, ptr %i.cf, align 8, !tbaa !533
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  store ptr null, ptr %i.ch, align 8, !tbaa !534
  %i.ci = getelementptr i8, ptr %i.cf, i64 24
  store ptr %i.bg, ptr %i.ci, align 8, !tbaa !113
  %i.cj = getelementptr i8, ptr %i.cf, i64 32
  store i32 %i.bh, ptr %i.cj, align 8, !tbaa !114
  %.not.i84 = icmp eq ptr %i.bg, null
  br i1 %.not.i84, label %new_adjust_body.exit, label %bb.g

bb.g:                                             ; preds = %compile_data_alloc_adjust.exit.i
  %i.ck = getelementptr i8, ptr %i.bg, i64 40     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !240
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !240
  %i.cn = getelementptr i8, ptr %i.bg, i64 44     ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = or i8 %i.co, 8
  store i8 %i.cp, ptr %i.cn, align 4
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %compile_data_alloc_adjust.exit.i, %bb.g
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cf, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !61
  %i.cs = getelementptr i8, ptr %i.cq, i64 8
  store ptr %i.cf, ptr %i.cs, align 8, !tbaa !62
  store ptr %i.cf, ptr %i.ba, align 8, !tbaa !42
  %i.ct = getelementptr i8, ptr %1, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1318 ; 2 uses
  %.not74 = icmp eq ptr %i.cu, null
  br i1 %.not74, label %bb.i, label %bb.h

bb.h:                                             ; preds = %new_adjust_body.exit
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.cu, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br label %ISEQ_COMPILE_DATA.exit94

bb.i:                                             ; preds = %new_adjust_body.exit
  %i.cv = load i32, ptr %2, align 4, !tbaa !370
  %i.cw = getelementptr i8, ptr %2, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !372
  %i.cy = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %i.cx, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cz = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !61
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !62
  store ptr %i.cy, ptr %i.ba, align 8, !tbaa !42
  br label %ISEQ_COMPILE_DATA.exit94

ISEQ_COMPILE_DATA.exit94:                         ; preds = %bb.i, %bb.h
  tail call fastcc void @pm_add_ensure_iseq(ptr noundef %3, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %5)
  %i.dc = load i32, ptr %2, align 4, !tbaa !370
  %i.dd = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !372
  %i.df = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dg = getelementptr i8, ptr %i.df, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !234
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef 72, i32 noundef 1, i64 noundef %i.di) ; 3 uses
  %i.dk = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !61
  %i.dm = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !62
  store ptr %i.dj, ptr %i.ba, align 8, !tbaa !42
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.do = getelementptr i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !234
  %i.dq = getelementptr i8, ptr %i.dp, i64 40     ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !240
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !240
  %.val75 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dt = getelementptr i8, ptr %.val75, i64 96   ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !64 ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !37 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 40
  %i.dz = getelementptr i8, ptr %i.du, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !37 ; 4 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp samesign ugt i64 %i.dy, %i.eb
  br i1 %i.ec, label %.preheader.i.i.i.i102, label %new_adjust_body.exit109

.preheader.i.i.i.i102:                            ; preds = %ISEQ_COMPILE_DATA.exit94
  %i.ed = icmp ult i32 %i.ea, 40
  br i1 %i.ed, label %.lr.ph.i.i.i.i106, label %._crit_edge.i.i.i.i103

.lr.ph.i.i.i.i106:                                ; preds = %.preheader.i.i.i.i102, %bb.k
  %.027.i.i.i.i107 = phi i32 [ %i.ef, %bb.k ], [ %i.ea, %.preheader.i.i.i.i102 ] ; 3 uses
  %i.ee = icmp samesign ugt i32 %.027.i.i.i.i107, 1073741822
  br i1 %i.ee, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i106
  tail call void @rb_memerror() #38
  unreachable

bb.k:                                             ; preds = %.lr.ph.i.i.i.i106
  %i.ef = shl nuw nsw i32 %.027.i.i.i.i107, 1     ; 3 uses
  %i.eg = icmp samesign ult i32 %.027.i.i.i.i107, 20
  br i1 %i.eg, label %.lr.ph.i.i.i.i106, label %._crit_edge.i.i.loopexit.i.i108, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i108:                  ; preds = %bb.k
  %i.eh = zext nneg i32 %i.ef to i64
  br label %._crit_edge.i.i.i.i103

._crit_edge.i.i.i.i103:                           ; preds = %._crit_edge.i.i.loopexit.i.i108, %.preheader.i.i.i.i102
  %.0.lcssa.i.i.i.i104 = phi i32 [ %i.ea, %.preheader.i.i.i.i102 ], [ %i.ef, %._crit_edge.i.i.loopexit.i.i108 ]
  %.lcssa.i.i.i.i105 = phi i64 [ %i.eb, %.preheader.i.i.i.i102 ], [ %i.eh, %._crit_edge.i.i.loopexit.i.i108 ]
  %i.ei = add nuw nsw i64 %.lcssa.i.i.i.i105, 16
  %i.ej = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ei, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ej, ptr %i.du, align 8, !tbaa !64
  store ptr %i.ej, ptr %i.dt, align 8, !tbaa !64
  store ptr null, ptr %i.ej, align 8, !tbaa !64
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  store i32 0, ptr %i.ek, align 8, !tbaa !37
  %i.el = getelementptr i8, ptr %i.ej, i64 12
  store i32 %.0.lcssa.i.i.i.i104, ptr %i.el, align 4, !tbaa !37
  br label %new_adjust_body.exit109

new_adjust_body.exit109:                          ; preds = %._crit_edge.i.i.i.i103, %ISEQ_COMPILE_DATA.exit94
  %i.em = phi i32 [ 0, %._crit_edge.i.i.i.i103 ], [ %i.dw, %ISEQ_COMPILE_DATA.exit94 ] ; 2 uses
  %.022.i.i.i.i100 = phi ptr [ %i.ej, %._crit_edge.i.i.i.i103 ], [ %i.du, %ISEQ_COMPILE_DATA.exit94 ] ; 2 uses
  %i.en = getelementptr i8, ptr %.022.i.i.i.i100, i64 16
  %i.eo = getelementptr i8, ptr %.022.i.i.i.i100, i64 8
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr i8, ptr %i.en, i64 %i.ep  ; 7 uses
  %i.er = add i32 %i.em, 40
  store i32 %i.er, ptr %i.eo, align 8, !tbaa !37
  store i32 3, ptr %i.eq, align 8, !tbaa !533
  %i.es = getelementptr i8, ptr %i.eq, i64 8
  store ptr null, ptr %i.es, align 8, !tbaa !534
  %i.et = getelementptr i8, ptr %i.eq, i64 24
  store ptr %i.an, ptr %i.et, align 8, !tbaa !113
  %i.eu = getelementptr i8, ptr %i.eq, i64 32
  store i32 -1, ptr %i.eu, align 8, !tbaa !114
  %i.ev = load i32, ptr %i.av, align 8, !tbaa !240
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.av, align 8, !tbaa !240
  %i.ex = load i8, ptr %i.aw, align 4
  %i.ey = or i8 %i.ex, 8
  store i8 %i.ey, ptr %i.aw, align 4
  %i.ez = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.eq, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !61
  %i.fb = getelementptr i8, ptr %i.ez, i64 8
  store ptr %i.eq, ptr %i.fb, align 8, !tbaa !62
  store ptr %i.eq, ptr %i.ba, align 8, !tbaa !42
  br i1 %4, label %bb.u, label %bb.l

bb.l:                                             ; preds = %new_adjust_body.exit109
  %i.fc = load i32, ptr %2, align 4, !tbaa !370
  %i.fd = load i32, ptr %i.dd, align 4, !tbaa !372
  %i.fe = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ff = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fe, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr i8, ptr %i.ff, i64 8
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !62
  store ptr %i.fe, ptr %i.ba, align 8, !tbaa !42
  br label %bb.u

can_add_ensure_iseq.exit:                         ; preds = %can_add_ensure_iseq.exit.preheader, %bb.o
  %.065126 = phi ptr [ %i.ft, %bb.o ], [ %0, %can_add_ensure_iseq.exit.preheader ] ; 3 uses
  %i.fi = load i64, ptr %.065126, align 8, !tbaa !123
  %i.fj = and i64 %i.fi, 262144
  %.not.i110 = icmp eq i64 %i.fj, 0
  br i1 %.not.i110, label %.critedge, label %ISEQ_COMPILE_DATA.exit112

ISEQ_COMPILE_DATA.exit112:                        ; preds = %can_add_ensure_iseq.exit
  %i.fk = getelementptr i8, ptr %.065126, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !47 ; 2 uses
  %.not71 = icmp eq ptr %i.fl, null
  br i1 %.not71, label %.critedge, label %ISEQ_COMPILE_DATA.exit115

ISEQ_COMPILE_DATA.exit115:                        ; preds = %ISEQ_COMPILE_DATA.exit112
  %i.fm = getelementptr i8, ptr %i.fl, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !525
  %.not72 = icmp eq ptr %i.fn, null
  br i1 %.not72, label %bb.m, label %bb.p

bb.m:                                             ; preds = %ISEQ_COMPILE_DATA.exit115
  %i.fo = getelementptr i8, ptr %.065126, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !70 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !86
  switch i32 %i.fq, label %bb.o [
    i32 2, label %bb.p
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.fr = load i32, ptr %2, align 4, !tbaa !370
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.fr, ptr noundef nonnull @.str.136)
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.fs = getelementptr i8, ptr %i.fp, i64 168
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !168 ; 2 uses
  %.not70 = icmp eq ptr %i.ft, null
  br i1 %.not70, label %.critedge, label %can_add_ensure_iseq.exit, !llvm.loop !1316

bb.p:                                             ; preds = %bb.m, %ISEQ_COMPILE_DATA.exit115
  %.066 = phi i64 [ 65541, %ISEQ_COMPILE_DATA.exit115 ], [ 5, %bb.m ]
  %i.fu = getelementptr i8, ptr %1, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1318 ; 2 uses
  %.not73 = icmp eq ptr %i.fv, null
  br i1 %.not73, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.fv, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fw = load i32, ptr %2, align 4, !tbaa !370
  %i.fx = getelementptr i8, ptr %2, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !372
  %i.fz = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fw, i32 noundef %i.fy, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ga = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !42 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fz, i64 16
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !61
  %i.gd = getelementptr i8, ptr %i.gb, i64 8
  store ptr %i.fz, ptr %i.gd, align 8, !tbaa !62
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ge = load i32, ptr %2, align 4, !tbaa !370
  %i.gf = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !372
  %i.gh = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ge, i32 noundef %i.gg, i32 noundef 71, i32 noundef 1, i64 noundef %.066) ; 3 uses
  %i.gi = getelementptr i8, ptr %3, i64 24        ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !42 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gh, i64 16
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !61
  %i.gl = getelementptr i8, ptr %i.gj, i64 8
  store ptr %i.gh, ptr %i.gl, align 8, !tbaa !62
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !42
  br i1 %4, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gm = load i32, ptr %2, align 4, !tbaa !370
  %i.gn = load i32, ptr %i.gf, align 4, !tbaa !372
  %i.go = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gm, i32 noundef %i.gn, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gp = load ptr, ptr %i.gi, align 8, !tbaa !42 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 16
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !61
  %i.gr = getelementptr i8, ptr %i.gp, i64 8
  store ptr %i.go, ptr %i.gr, align 8, !tbaa !62
  store ptr %i.go, ptr %i.gi, align 8, !tbaa !42
  br label %bb.u

.critedge:                                        ; preds = %can_add_ensure_iseq.exit, %ISEQ_COMPILE_DATA.exit112, %bb.o
  %i.gs = load i32, ptr %2, align 4, !tbaa !370
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.gs, ptr noundef nonnull @.str.136)
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %new_adjust_body.exit109, %.critedge, %bb.n, %bb.t, %bb.s
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_call_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #17 {
bb.a:
  %5 = alloca %struct.pm_node_location_t, align 4 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !607  ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %4, i64 80         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !354  ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 592
  %i.g = load i32, ptr %i.f, align 8, !tbaa !465
  %i.h = icmp ugt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %pm_constant_id_lookup.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.b) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.b
  %i.i = getelementptr i8, ptr %4, i64 120        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329
  %i.k = add i32 %i.b, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !63   ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !395
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr i8, ptr %1, i64 8
  %spec.select = select i1 %i.q, ptr %i.r, ptr %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.s = getelementptr i8, ptr %i.e, i64 600
  %i.t = load ptr, ptr %spec.select, align 8, !tbaa !395
  %i.u = getelementptr i8, ptr %i.e, i64 664
  %i.v = load i32, ptr %i.u, align 8, !tbaa !368
  %i.w = tail call i32 @pm_newline_list_line(ptr noundef %i.s, ptr noundef %i.t, i32 noundef %i.v) #37 ; 8 uses
  store i32 %i.w, ptr %5, align 4, !tbaa !370
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = getelementptr i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !608  ; 7 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !372
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !567
  %.not116 = icmp eq ptr %i.ad, null
  br i1 %.not116, label %bb.e, label %bb.d, !prof !132

bb.d:                                             ; preds = %pm_constant_id_lookup.exit
  %i.ae = getelementptr i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !609
  %i.ag = tail call fastcc ptr @pm_iseq_builtin_function_name(ptr noundef nonnull %4, ptr noundef %i.af, i64 noundef %i.n) ; 2 uses
  %.not87 = icmp eq ptr %i.ag, null
  %.val13.i.pre = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  br i1 %.not87, label %bb.e, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.d
  %i.ah = zext i1 %3 to i32
  %i.ai = getelementptr i8, ptr %.val13.i.pre, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !408
  call fastcc void @pm_compile_builtin_function_call(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %5, i32 noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.ag)
  br label %bb.ai

bb.e:                                             ; preds = %bb.d, %pm_constant_id_lookup.exit
  %.val13.i = phi ptr [ %.val13.i.pre, %bb.d ], [ %i.ab, %pm_constant_id_lookup.exit ]
  %i.ak = getelementptr i8, ptr %.val13.i, i64 96 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 48
  %i.aq = getelementptr i8, ptr %i.al, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !37 ; 4 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, %i.as
  br i1 %i.at, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.e
  %i.au = icmp ult i32 %i.ar, 48
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.g
  %.027.i.i.i.i = phi i32 [ %i.aw, %bb.g ], [ %i.ar, %.preheader.i.i.i.i ] ; 3 uses
  %i.av = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ax = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.g
  %i.ay = zext nneg i32 %i.aw to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
end_hunk_2
begin_hunk_3_@pm_compile_multi_target_node:bb.a
  %i.z = select i1 %i.y, i64 3, i64 1
  %i.aa = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.x, i64 noundef %i.z) ; 3 uses
  %i.ab = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !61
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !62
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.af = icmp eq ptr %6, null                    ; 2 uses
  %spec.store.select = select i1 %i.af, ptr %7, ptr %6 ; 3 uses
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, ptr %7, ptr %6
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 4 uses
  %i.ag = load i64, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431 ; 3 uses
  %i.ah = load i64, ptr %.087, align 8, !tbaa !379 ; 2 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = zext i1 %i.y to i64
  %i.aj = getelementptr i8, ptr %1, i64 40
  %i.ak = add i64 %i.ag, %i.ai
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  br i1 %i.s, label %bb.h, label %bb.k

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %i.al = phi i64 [ %i.ah, %.lr.ph ], [ %i.as, %bb.g ]
  %.08694 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.g ] ; 3 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !380
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.08694
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !335
  %i.ap = sub i64 %i.ak, %.08694
  %i.aq = add i64 %i.ap, %i.al
  store i64 %i.aq, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431
  call fastcc void @pm_compile_target_node(ptr noundef %0, ptr noundef %i.ao, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select)
  %i.ar = add nuw i64 %.08694, 1                  ; 2 uses
  %i.as = load i64, ptr %.087, align 8, !tbaa !379 ; 2 uses
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %._crit_edge, !llvm.loop !1441

bb.h:                                             ; preds = %._crit_edge
  %i.au = getelementptr i8, ptr %.089, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !443
  %i.aw = load i64, ptr %.088, align 8, !tbaa !379 ; 2 uses
  %i.ax = add i64 %i.ag, 1
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = shl i64 %i.aw, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.ba, i64 noundef 7) ; 3 uses
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !62
  store ptr %i.bb, ptr %i.ab, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call fastcc void @pm_compile_target_node(ptr noundef %0, ptr noundef %i.av, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br i1 %i.u, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %or.cond.not = or i1 %i.m, %i.s
  br i1 %or.cond.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %.088, align 8, !tbaa !379
  %i.bg = shl i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 31, i32 noundef 2, i64 noundef %i.bh, i64 noundef 5) ; 3 uses
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !61
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !62
  store ptr %i.bi, ptr %i.ab, align 8, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = load i64, ptr %.088, align 8, !tbaa !379 ; 2 uses
  %.not98 = icmp eq i64 %i.bm, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %1, i64 72
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph97, %bb.o
  %i.bo = phi i64 [ %i.bm, %.lr.ph97 ], [ %i.bv, %bb.o ]
  %.095 = phi i64 [ 0, %.lr.ph97 ], [ %i.bu, %bb.o ] ; 3 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !380
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.095
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !335
  %i.bs = sub i64 %i.ag, %.095
  %i.bt = add i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !431
  call fastcc void @pm_compile_target_node(ptr noundef %0, ptr noundef %i.br, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select)
  %i.bu = add nuw i64 %.095, 1                    ; 2 uses
  %i.bv = load i64, ptr %.088, align 8, !tbaa !379 ; 2 uses
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.o, label %.loopexit, !llvm.loop !1442

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_multi_target_state_update(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !629
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !630  ; 2 uses
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %.loopexit22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.026 = phi ptr [ %i.ab, %.loopexit ], [ %i.d, %bb.b ] ; 6 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !629
  %i.f = getelementptr i8, ptr %.026, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !632
  %i.h = sub i64 %i.e, %i.g
  %i.i = getelementptr i8, ptr %.026, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !633
  %i.k = add i64 %i.h, %i.j
  %i.l = shl i64 %i.k, 1
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = load ptr, ptr %.026, align 8, !tbaa !634 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  store i64 %i.m, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr i8, ptr %.026, i64 16      ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !635
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %get_next_insn.exit
  %.01924 = phi i64 [ %i.x, %get_next_insn.exit ], [ 1, %.lr.ph ]
  %.02023 = phi ptr [ %.0.i, %get_next_insn.exit ], [ %i.n, %.lr.ph ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.0.i, %bb.d ], [ %.02023, %.preheader ]
  %.0.in.i = getelementptr i8, ptr %.pn.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !62 ; 5 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %get_next_insn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %.0.i, align 8, !tbaa !88
  %i.u = and i32 %i.t, -2
  %switch.i = icmp eq i32 %i.u, 2
  br i1 %switch.i, label %get_next_insn.exit, label %bb.c

get_next_insn.exit:                               ; preds = %bb.c, %bb.d
  %i.v = getelementptr i8, ptr %.0.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93
  store i64 %i.m, ptr %i.w, align 8, !tbaa !63
  %i.x = add nuw i64 %.01924, 1                   ; 2 uses
  %i.y = load i64, ptr %i.q, align 8, !tbaa !635
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.preheader, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %get_next_insn.exit, %.lr.ph
  %i.aa = getelementptr i8, ptr %.026, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !636 ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.026) #37
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.loopexit22, label %.lr.ph, !llvm.loop !26

.loopexit22:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_next_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !123
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit, label %ISEQ_COMPILE_DATA.exit.thread

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr inttoptr (i64 64 to ptr), align 64, !tbaa !525
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ISEQ_COMPILE_DATA.exit156, label %ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge

ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge:    ; preds = %ISEQ_COMPILE_DATA.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val13.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit235

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !525
  %.not226 = icmp eq ptr %i.g, null
  br i1 %.not226, label %ISEQ_COMPILE_DATA.exit.i166, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.h = getelementptr i8, ptr %i.e, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !535, !range !151, !noundef !152
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %ISEQ_COMPILE_DATA.exit13.i, label %.loopexit235

ISEQ_COMPILE_DATA.exit13.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %.not.i122 = icmp eq ptr %i.l, null
  br i1 %.not.i122, label %.loopexit235, label %.preheader.i

.preheader.i:                                     ; preds = %ISEQ_COMPILE_DATA.exit13.i, %bb.b
  %.0.i123 = phi ptr [ %i.o, %bb.b ], [ %i.l, %ISEQ_COMPILE_DATA.exit13.i ] ; 2 uses
  %i.m = load ptr, ptr %.0.i123, align 8, !tbaa !529
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.b, label %can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit156.thread_crit_edge

bb.b:                                             ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %.0.i123, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !531  ; 2 uses
  %.old1.not.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i, label %.loopexit235, label %.preheader.i

.loopexit235:                                     ; preds = %bb.b, %ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit13.i
  %.val13.i = phi ptr [ %.val13.i.pre, %ISEQ_COMPILE_DATA.exit..loopexit234_crit_edge ], [ %i.e, %ISEQ_COMPILE_DATA.exit13.i ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.q = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 48
  %i.w = getelementptr i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %.loopexit235
  %i.aa = icmp ult i32 %i.x, 48
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ad = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.x, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i ], [ %i.ae, %._crit_edge.i.i.loopexit.i.i ]
  %i.af = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.af, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !64
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !64
  store ptr null, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ai, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %.loopexit235, %._crit_edge.i.i.i.i
  %i.aj = phi i32 [ %i.t, %.loopexit235 ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.r, %.loopexit235 ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.al = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 10 uses
  %i.ao = add i32 %i.aj, 48
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !37
  store i32 1, ptr %i.an, align 8, !tbaa !182
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !184
  %i.au = getelementptr i8, ptr %i.an, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.an, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 44     ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -16
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %i.an, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr i8, ptr %3, i64 24        ; 12 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.an, ptr %i.ba, align 8, !tbaa !42
  %i.be = getelementptr i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1445 ; 2 uses
  %.not114 = icmp eq ptr %i.bf, null
  br i1 %.not114, label %bb.f, label %bb.e

bb.e:                                             ; preds = %new_label_body.exit
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br label %ISEQ_COMPILE_DATA.exit126

bb.f:                                             ; preds = %new_label_body.exit
  %i.bg = load i32, ptr %2, align 4, !tbaa !370
  %i.bh = getelementptr i8, ptr %2, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !372
  %i.bj = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !61
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !62
  store ptr %i.bj, ptr %i.ba, align 8, !tbaa !42
  br label %ISEQ_COMPILE_DATA.exit126

ISEQ_COMPILE_DATA.exit126:                        ; preds = %bb.f, %bb.e
  tail call fastcc void @pm_add_ensure_iseq(ptr noundef %3, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %5)
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !525 ; 4 uses
  %i.bq = load i32, ptr %2, align 4, !tbaa !370
  %i.br = getelementptr i8, ptr %i.bn, i64 96     ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !64 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 40
  %i.bx = getelementptr i8, ptr %i.bs, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !37 ; 4 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bw, %i.bz
  br i1 %i.ca, label %.preheader.i.i.i.i129, label %compile_data_alloc_adjust.exit.i

.preheader.i.i.i.i129:                            ; preds = %ISEQ_COMPILE_DATA.exit126
  %i.cb = icmp ult i32 %i.by, 40
  br i1 %i.cb, label %.lr.ph.i.i.i.i133, label %._crit_edge.i.i.i.i130

.lr.ph.i.i.i.i133:                                ; preds = %.preheader.i.i.i.i129, %bb.h
  %.027.i.i.i.i134 = phi i32 [ %i.cd, %bb.h ], [ %i.by, %.preheader.i.i.i.i129 ] ; 3 uses
  %i.cc = icmp samesign ugt i32 %.027.i.i.i.i134, 1073741822
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i133
  tail call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i.i133
  %i.cd = shl nuw nsw i32 %.027.i.i.i.i134, 1     ; 3 uses
  %i.ce = icmp samesign ult i32 %.027.i.i.i.i134, 20
  br i1 %i.ce, label %.lr.ph.i.i.i.i133, label %._crit_edge.i.i.loopexit.i.i135, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i135:                  ; preds = %bb.h
  %i.cf = zext nneg i32 %i.cd to i64
  br label %._crit_edge.i.i.i.i130

._crit_edge.i.i.i.i130:                           ; preds = %._crit_edge.i.i.loopexit.i.i135, %.preheader.i.i.i.i129
  %.0.lcssa.i.i.i.i131 = phi i32 [ %i.by, %.preheader.i.i.i.i129 ], [ %i.cd, %._crit_edge.i.i.loopexit.i.i135 ]
  %.lcssa.i.i.i.i132 = phi i64 [ %i.bz, %.preheader.i.i.i.i129 ], [ %i.cf, %._crit_edge.i.i.loopexit.i.i135 ]
  %i.cg = add nuw nsw i64 %.lcssa.i.i.i.i132, 16
  %i.ch = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cg, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ch, ptr %i.bs, align 8, !tbaa !64
  store ptr %i.ch, ptr %i.br, align 8, !tbaa !64
  store ptr null, ptr %i.ch, align 8, !tbaa !64
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store i32 0, ptr %i.ci, align 8, !tbaa !37
  %i.cj = getelementptr i8, ptr %i.ch, i64 12
  store i32 %.0.lcssa.i.i.i.i131, ptr %i.cj, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i

compile_data_alloc_adjust.exit.i:                 ; preds = %._crit_edge.i.i.i.i130, %ISEQ_COMPILE_DATA.exit126
  %i.ck = phi i32 [ 0, %._crit_edge.i.i.i.i130 ], [ %i.bu, %ISEQ_COMPILE_DATA.exit126 ] ; 2 uses
  %.022.i.i.i.i127 = phi ptr [ %i.ch, %._crit_edge.i.i.i.i130 ], [ %i.bs, %ISEQ_COMPILE_DATA.exit126 ] ; 2 uses
  %i.cl = getelementptr i8, ptr %.022.i.i.i.i127, i64 16
  %i.cm = getelementptr i8, ptr %.022.i.i.i.i127, i64 8
  %i.cn = zext i32 %i.ck to i64
  %i.co = getelementptr i8, ptr %i.cl, i64 %i.cn  ; 7 uses
  %i.cp = add i32 %i.ck, 40
  store i32 %i.cp, ptr %i.cm, align 8, !tbaa !37
  store i32 3, ptr %i.co, align 8, !tbaa !533
  %i.cq = getelementptr i8, ptr %i.co, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !534
  %i.cr = getelementptr i8, ptr %i.co, i64 24
  store ptr %i.bp, ptr %i.cr, align 8, !tbaa !113
  %i.cs = getelementptr i8, ptr %i.co, i64 32
  store i32 %i.bq, ptr %i.cs, align 8, !tbaa !114
  %.not.i128 = icmp eq ptr %i.bp, null
  br i1 %.not.i128, label %new_adjust_body.exit, label %bb.i

bb.i:                                             ; preds = %compile_data_alloc_adjust.exit.i
  %i.ct = getelementptr i8, ptr %i.bp, i64 40     ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !240
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !240
  %i.cw = getelementptr i8, ptr %i.bp, i64 44     ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 4
  %i.cy = or i8 %i.cx, 8
  store i8 %i.cy, ptr %i.cw, align 4
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %compile_data_alloc_adjust.exit.i, %bb.i
  %i.cz = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.da = getelementptr i8, ptr %i.co, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !61
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store ptr %i.co, ptr %i.db, align 8, !tbaa !62
  store ptr %i.co, ptr %i.ba, align 8, !tbaa !42
  %i.dc = load i32, ptr %2, align 4, !tbaa !370
  %i.dd = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !372
  %i.df = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dg = getelementptr i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !233
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef 72, i32 noundef 1, i64 noundef %i.di) ; 3 uses
  %i.dk = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !61
  %i.dm = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !62
  store ptr %i.dj, ptr %i.ba, align 8, !tbaa !42
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.do = getelementptr i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !233
  %i.dq = getelementptr i8, ptr %i.dp, i64 40     ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !240
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !240
  %.val119 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dt = getelementptr i8, ptr %.val119, i64 96  ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !64 ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !37 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 40
  %i.dz = getelementptr i8, ptr %i.du, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !37 ; 4 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp samesign ugt i64 %i.dy, %i.eb
  br i1 %i.ec, label %.preheader.i.i.i.i146, label %new_adjust_body.exit153

.preheader.i.i.i.i146:                            ; preds = %new_adjust_body.exit
  %i.ed = icmp ult i32 %i.ea, 40
  br i1 %i.ed, label %.lr.ph.i.i.i.i150, label %._crit_edge.i.i.i.i147

.lr.ph.i.i.i.i150:                                ; preds = %.preheader.i.i.i.i146, %bb.k
  %.027.i.i.i.i151 = phi i32 [ %i.ef, %bb.k ], [ %i.ea, %.preheader.i.i.i.i146 ] ; 3 uses
  %i.ee = icmp samesign ugt i32 %.027.i.i.i.i151, 1073741822
  br i1 %i.ee, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i150
  tail call void @rb_memerror() #38
  unreachable

bb.k:                                             ; preds = %.lr.ph.i.i.i.i150
  %i.ef = shl nuw nsw i32 %.027.i.i.i.i151, 1     ; 3 uses
  %i.eg = icmp samesign ult i32 %.027.i.i.i.i151, 20
  br i1 %i.eg, label %.lr.ph.i.i.i.i150, label %._crit_edge.i.i.loopexit.i.i152, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i152:                  ; preds = %bb.k
  %i.eh = zext nneg i32 %i.ef to i64
  br label %._crit_edge.i.i.i.i147

._crit_edge.i.i.i.i147:                           ; preds = %._crit_edge.i.i.loopexit.i.i152, %.preheader.i.i.i.i146
  %.0.lcssa.i.i.i.i148 = phi i32 [ %i.ea, %.preheader.i.i.i.i146 ], [ %i.ef, %._crit_edge.i.i.loopexit.i.i152 ]
  %.lcssa.i.i.i.i149 = phi i64 [ %i.eb, %.preheader.i.i.i.i146 ], [ %i.eh, %._crit_edge.i.i.loopexit.i.i152 ]
  %i.ei = add nuw nsw i64 %.lcssa.i.i.i.i149, 16
  %i.ej = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ei, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ej, ptr %i.du, align 8, !tbaa !64
  store ptr %i.ej, ptr %i.dt, align 8, !tbaa !64
  store ptr null, ptr %i.ej, align 8, !tbaa !64
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  store i32 0, ptr %i.ek, align 8, !tbaa !37
  %i.el = getelementptr i8, ptr %i.ej, i64 12
  store i32 %.0.lcssa.i.i.i.i148, ptr %i.el, align 4, !tbaa !37
  br label %new_adjust_body.exit153

new_adjust_body.exit153:                          ; preds = %._crit_edge.i.i.i.i147, %new_adjust_body.exit
  %i.em = phi i32 [ 0, %._crit_edge.i.i.i.i147 ], [ %i.dw, %new_adjust_body.exit ] ; 2 uses
  %.022.i.i.i.i144 = phi ptr [ %i.ej, %._crit_edge.i.i.i.i147 ], [ %i.du, %new_adjust_body.exit ] ; 2 uses
  %i.en = getelementptr i8, ptr %.022.i.i.i.i144, i64 16
  %i.eo = getelementptr i8, ptr %.022.i.i.i.i144, i64 8
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr i8, ptr %i.en, i64 %i.ep  ; 7 uses
  %i.er = add i32 %i.em, 40
  store i32 %i.er, ptr %i.eo, align 8, !tbaa !37
  store i32 3, ptr %i.eq, align 8, !tbaa !533
  %i.es = getelementptr i8, ptr %i.eq, i64 8
  store ptr null, ptr %i.es, align 8, !tbaa !534
  %i.et = getelementptr i8, ptr %i.eq, i64 24
  store ptr %i.an, ptr %i.et, align 8, !tbaa !113
  %i.eu = getelementptr i8, ptr %i.eq, i64 32
  store i32 -1, ptr %i.eu, align 8, !tbaa !114
  %i.ev = load i32, ptr %i.av, align 8, !tbaa !240
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.av, align 8, !tbaa !240
  %i.ex = load i8, ptr %i.aw, align 4
  %i.ey = or i8 %i.ex, 8
  store i8 %i.ey, ptr %i.aw, align 4
  %i.ez = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.eq, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !61
  %i.fb = getelementptr i8, ptr %i.ez, i64 8
  store ptr %i.eq, ptr %i.fb, align 8, !tbaa !62
  store ptr %i.eq, ptr %i.ba, align 8, !tbaa !42
  br i1 %4, label %bb.af, label %bb.l

bb.l:                                             ; preds = %new_adjust_body.exit153
  %i.fc = load i32, ptr %2, align 4, !tbaa !370
  %i.fd = load i32, ptr %i.dd, align 4, !tbaa !372
  %i.fe = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ff = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fe, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr i8, ptr %i.ff, i64 8
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !62
  store ptr %i.fe, ptr %i.ba, align 8, !tbaa !42
  br label %bb.af

can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit156.thread_crit_edge: ; preds = %.preheader.i
  %.phi.trans.insert248.a = getelementptr i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert248.a, align 8, !tbaa !47
  br label %ISEQ_COMPILE_DATA.exit.i166

ISEQ_COMPILE_DATA.exit156:                        ; preds = %ISEQ_COMPILE_DATA.exit
  %i.fi = load ptr, ptr inttoptr (i64 56 to ptr), align 8, !tbaa !234
  %.not107 = icmp eq ptr %i.fi, null
  br i1 %.not107, label %can_add_ensure_iseq.exit167.preheader, label %ISEQ_COMPILE_DATA.exit156.thread.a

can_add_ensure_iseq.exit167.preheader:            ; preds = %.preheader.i162, %ISEQ_COMPILE_DATA.exit.i166, %ISEQ_COMPILE_DATA.exit156
  br label %can_add_ensure_iseq.exit167

ISEQ_COMPILE_DATA.exit156.thread.a:               ; preds = %ISEQ_COMPILE_DATA.exit156
  %i.fj = getelementptr i8, ptr %0, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  br label %.loopexit

ISEQ_COMPILE_DATA.exit.i166:                      ; preds = %can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit156.thread_crit_edge, %ISEQ_COMPILE_DATA.exit.thread
  %6 = phi ptr [ %.pre, %can_add_ensure_iseq.exit.ISEQ_COMPILE_DATA.exit156.thread_crit_edge ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread ] ; 6 uses
  %.phi.trans.insert249 = getelementptr i8, ptr %6, i64 56
  %.val13.i168.pre = load ptr, ptr %.phi.trans.insert249, align 8, !tbaa !234
  %.not107229 = icmp eq ptr %.val13.i168.pre, null
  br i1 %.not107229, label %can_add_ensure_iseq.exit167.preheader, label %ISEQ_COMPILE_DATA.exit.thread.i158

ISEQ_COMPILE_DATA.exit.thread.i158:               ; preds = %ISEQ_COMPILE_DATA.exit.i166
  %i.fl = getelementptr i8, ptr %6, i64 120
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !535, !range !151, !noundef !152
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %ISEQ_COMPILE_DATA.exit13.i160, label %.loopexit

ISEQ_COMPILE_DATA.exit13.i160:                    ; preds = %ISEQ_COMPILE_DATA.exit.thread.i158
  %i.fo = getelementptr i8, ptr %6, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !530 ; 2 uses
  %.not.i161 = icmp eq ptr %i.fp, null
  br i1 %.not.i161, label %.loopexit, label %.preheader.i162

.preheader.i162:                                  ; preds = %ISEQ_COMPILE_DATA.exit13.i160, %bb.m
  %.0.i163 = phi ptr [ %i.fs, %bb.m ], [ %i.fp, %ISEQ_COMPILE_DATA.exit13.i160 ] ; 2 uses
  %i.fq = load ptr, ptr %.0.i163, align 8, !tbaa !529
  %.not10.i164 = icmp eq ptr %i.fq, null
  br i1 %.not10.i164, label %bb.m, label %can_add_ensure_iseq.exit167.preheader

bb.m:                                             ; preds = %.preheader.i162
  %i.fr = getelementptr i8, ptr %.0.i163, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !531 ; 2 uses
  %.old1.not.i165 = icmp eq ptr %i.fs, null
  br i1 %.old1.not.i165, label %.loopexit, label %.preheader.i162

.loopexit:                                        ; preds = %bb.m, %ISEQ_COMPILE_DATA.exit156.thread.a, %ISEQ_COMPILE_DATA.exit.thread.i158, %ISEQ_COMPILE_DATA.exit13.i160
  %.val13.i168 = phi ptr [ %i.fk, %ISEQ_COMPILE_DATA.exit156.thread.a ], [ %6, %ISEQ_COMPILE_DATA.exit13.i160 ], [ %6, %ISEQ_COMPILE_DATA.exit.thread.i158 ], [ %6, %bb.m ]
  %i.ft = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.fu = getelementptr i8, ptr %.val13.i168, i64 96 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !64 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !37 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 48
  %i.ga = getelementptr i8, ptr %i.fv, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !37 ; 4 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = icmp samesign ugt i64 %i.fz, %i.gc
  br i1 %i.gd, label %.preheader.i.i.i.i171, label %new_label_body.exit180

.preheader.i.i.i.i171:                            ; preds = %.loopexit
  %i.ge = icmp ult i32 %i.gb, 48
  br i1 %i.ge, label %.lr.ph.i.i.i.i177, label %._crit_edge.i.i.i.i172

.lr.ph.i.i.i.i177:                                ; preds = %.preheader.i.i.i.i171, %bb.o
  %.027.i.i.i.i178 = phi i32 [ %i.gg, %bb.o ], [ %i.gb, %.preheader.i.i.i.i171 ] ; 3 uses
  %i.gf = icmp samesign ugt i32 %.027.i.i.i.i178, 1073741822
  br i1 %i.gf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i177
  tail call void @rb_memerror() #38
  unreachable

bb.o:                                             ; preds = %.lr.ph.i.i.i.i177
  %i.gg = shl nuw nsw i32 %.027.i.i.i.i178, 1     ; 3 uses
  %i.gh = icmp samesign ult i32 %.027.i.i.i.i178, 24
  br i1 %i.gh, label %.lr.ph.i.i.i.i177, label %._crit_edge.i.i.loopexit.i.i179, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i179:                  ; preds = %bb.o
  %i.gi = zext nneg i32 %i.gg to i64
  br label %._crit_edge.i.i.i.i172

._crit_edge.i.i.i.i172:                           ; preds = %._crit_edge.i.i.loopexit.i.i179, %.preheader.i.i.i.i171
  %.0.lcssa.i.i.i.i173 = phi i32 [ %i.gb, %.preheader.i.i.i.i171 ], [ %i.gg, %._crit_edge.i.i.loopexit.i.i179 ]
  %.lcssa.i.i.i.i174 = phi i64 [ %i.gc, %.preheader.i.i.i.i171 ], [ %i.gi, %._crit_edge.i.i.loopexit.i.i179 ]
  %i.gj = add nuw nsw i64 %.lcssa.i.i.i.i174, 16
  %i.gk = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.gj, i64 noundef 1) #39 ; 6 uses
  store ptr %i.gk, ptr %i.fv, align 8, !tbaa !64
  store ptr %i.gk, ptr %i.fu, align 8, !tbaa !64
  store ptr null, ptr %i.gk, align 8, !tbaa !64
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  store i32 0, ptr %i.gl, align 8, !tbaa !37
  %i.gm = getelementptr i8, ptr %i.gk, i64 12
  store i32 %.0.lcssa.i.i.i.i173, ptr %i.gm, align 4, !tbaa !37
  br label %new_label_body.exit180

new_label_body.exit180:                           ; preds = %.loopexit, %._crit_edge.i.i.i.i172
  %i.gn = phi i32 [ %i.fx, %.loopexit ], [ 0, %._crit_edge.i.i.i.i172 ] ; 2 uses
  %.022.i.i.i.i170 = phi ptr [ %i.fv, %.loopexit ], [ %i.gk, %._crit_edge.i.i.i.i172 ] ; 2 uses
  %i.go = getelementptr i8, ptr %.022.i.i.i.i170, i64 16
  %i.gp = getelementptr i8, ptr %.022.i.i.i.i170, i64 8
  %i.gq = zext i32 %i.gn to i64
  %i.gr = getelementptr i8, ptr %i.go, i64 %i.gq  ; 10 uses
  %i.gs = add i32 %i.gn, 48
  store i32 %i.gs, ptr %i.gp, align 8, !tbaa !37
  store i32 1, ptr %i.gr, align 8, !tbaa !182
  %i.gt = getelementptr i8, ptr %i.gr, i64 8
  store ptr null, ptr %i.gt, align 8, !tbaa !183
  %i.gu = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.gv = getelementptr i8, ptr %i.gu, i64 132    ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !184 ; 2 uses
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !184
  %i.gy = getelementptr i8, ptr %i.gr, i64 24
  store i32 %i.gw, ptr %i.gy, align 8, !tbaa !111
  %i.gz = getelementptr i8, ptr %i.gr, i64 40     ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gr, i64 44     ; 6 uses
  %i.hb = load i8, ptr %i.ha, align 4
  %i.hc = and i8 %i.hb, -16
  store i8 %i.hc, ptr %i.ha, align 4
  %i.hd = getelementptr i8, ptr %i.gr, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.hd, align 4, !tbaa !37
  %i.he = getelementptr i8, ptr %3, i64 24        ; 12 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gr, i64 16
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !61
  %i.hh = getelementptr i8, ptr %i.hf, i64 8
  store ptr %i.gr, ptr %i.hh, align 8, !tbaa !62
  store ptr %i.gr, ptr %i.he, align 8, !tbaa !42
  %i.hi = load ptr, ptr %i.ft, align 8, !tbaa !47 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !233 ; 4 uses
  %i.hl = load i32, ptr %2, align 4, !tbaa !370
  %i.hm = getelementptr i8, ptr %i.hi, i64 96     ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !64 ; 4 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !37 ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, 40
  %i.hs = getelementptr i8, ptr %i.hn, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !37 ; 4 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = icmp samesign ugt i64 %i.hr, %i.hu
  br i1 %i.hv, label %.preheader.i.i.i.i188, label %compile_data_alloc_adjust.exit.i185

.preheader.i.i.i.i188:                            ; preds = %new_label_body.exit180
  %i.hw = icmp ult i32 %i.ht, 40
  br i1 %i.hw, label %.lr.ph.i.i.i.i192, label %._crit_edge.i.i.i.i189

.lr.ph.i.i.i.i192:                                ; preds = %.preheader.i.i.i.i188, %bb.q
  %.027.i.i.i.i193 = phi i32 [ %i.hy, %bb.q ], [ %i.ht, %.preheader.i.i.i.i188 ] ; 3 uses
  %i.hx = icmp samesign ugt i32 %.027.i.i.i.i193, 1073741822
  br i1 %i.hx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i.i192
  tail call void @rb_memerror() #38
  unreachable

bb.q:                                             ; preds = %.lr.ph.i.i.i.i192
  %i.hy = shl nuw nsw i32 %.027.i.i.i.i193, 1     ; 3 uses
  %i.hz = icmp samesign ult i32 %.027.i.i.i.i193, 20
  br i1 %i.hz, label %.lr.ph.i.i.i.i192, label %._crit_edge.i.i.loopexit.i.i194, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i194:                  ; preds = %bb.q
  %i.ia = zext nneg i32 %i.hy to i64
  br label %._crit_edge.i.i.i.i189

._crit_edge.i.i.i.i189:                           ; preds = %._crit_edge.i.i.loopexit.i.i194, %.preheader.i.i.i.i188
  %.0.lcssa.i.i.i.i190 = phi i32 [ %i.ht, %.preheader.i.i.i.i188 ], [ %i.hy, %._crit_edge.i.i.loopexit.i.i194 ]
  %.lcssa.i.i.i.i191 = phi i64 [ %i.hu, %.preheader.i.i.i.i188 ], [ %i.ia, %._crit_edge.i.i.loopexit.i.i194 ]
  %i.ib = add nuw nsw i64 %.lcssa.i.i.i.i191, 16
  %i.ic = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ib, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ic, ptr %i.hn, align 8, !tbaa !64
  store ptr %i.ic, ptr %i.hm, align 8, !tbaa !64
  store ptr null, ptr %i.ic, align 8, !tbaa !64
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  store i32 0, ptr %i.id, align 8, !tbaa !37
  %i.ie = getelementptr i8, ptr %i.ic, i64 12
  store i32 %.0.lcssa.i.i.i.i190, ptr %i.ie, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i185

compile_data_alloc_adjust.exit.i185:              ; preds = %._crit_edge.i.i.i.i189, %new_label_body.exit180
  %i.if = phi i32 [ 0, %._crit_edge.i.i.i.i189 ], [ %i.hp, %new_label_body.exit180 ] ; 2 uses
  %.022.i.i.i.i186 = phi ptr [ %i.ic, %._crit_edge.i.i.i.i189 ], [ %i.hn, %new_label_body.exit180 ] ; 2 uses
  %i.ig = getelementptr i8, ptr %.022.i.i.i.i186, i64 16
  %i.ih = getelementptr i8, ptr %.022.i.i.i.i186, i64 8
  %i.ii = zext i32 %i.if to i64
  %i.ij = getelementptr i8, ptr %i.ig, i64 %i.ii  ; 7 uses
  %i.ik = add i32 %i.if, 40
  store i32 %i.ik, ptr %i.ih, align 8, !tbaa !37
  store i32 3, ptr %i.ij, align 8, !tbaa !533
  %i.il = getelementptr i8, ptr %i.ij, i64 8
  store ptr null, ptr %i.il, align 8, !tbaa !534
  %i.im = getelementptr i8, ptr %i.ij, i64 24
  store ptr %i.hk, ptr %i.im, align 8, !tbaa !113
  %i.in = getelementptr i8, ptr %i.ij, i64 32
  store i32 %i.hl, ptr %i.in, align 8, !tbaa !114
  %.not.i187 = icmp eq ptr %i.hk, null
  br i1 %.not.i187, label %new_adjust_body.exit195, label %bb.r

bb.r:                                             ; preds = %compile_data_alloc_adjust.exit.i185
  %i.io = getelementptr i8, ptr %i.hk, i64 40     ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !240
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !240
  %i.ir = getelementptr i8, ptr %i.hk, i64 44     ; 2 uses
  %i.is = load i8, ptr %i.ir, align 4
  %i.it = or i8 %i.is, 8
  store i8 %i.it, ptr %i.ir, align 4
  br label %new_adjust_body.exit195

new_adjust_body.exit195:                          ; preds = %compile_data_alloc_adjust.exit.i185, %bb.r
  %i.iu = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ij, i64 16
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !61
  %i.iw = getelementptr i8, ptr %i.iu, i64 8
  store ptr %i.ij, ptr %i.iw, align 8, !tbaa !62
  store ptr %i.ij, ptr %i.he, align 8, !tbaa !42
  %i.ix = getelementptr i8, ptr %1, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !1445 ; 2 uses
  %.not113 = icmp eq ptr %i.iy, null
  br i1 %.not113, label %bb.t, label %bb.s

bb.s:                                             ; preds = %new_adjust_body.exit195
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.iy, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br label %ISEQ_COMPILE_DATA.exit198

bb.t:                                             ; preds = %new_adjust_body.exit195
  %i.iz = load i32, ptr %2, align 4, !tbaa !370
  %i.ja = getelementptr i8, ptr %2, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !372
  %i.jc = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.iz, i32 noundef %i.jb, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.jd = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.je = getelementptr i8, ptr %i.jc, i64 16
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !61
  %i.jf = getelementptr i8, ptr %i.jd, i64 8
  store ptr %i.jc, ptr %i.jf, align 8, !tbaa !62
  store ptr %i.jc, ptr %i.he, align 8, !tbaa !42
  br label %ISEQ_COMPILE_DATA.exit198

ISEQ_COMPILE_DATA.exit198:                        ; preds = %bb.t, %bb.s
  tail call fastcc void @pm_add_ensure_iseq(ptr noundef %3, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %5)
  %i.jg = load i32, ptr %2, align 4, !tbaa !370
  %i.jh = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !372
  %i.jj = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.jk = getelementptr i8, ptr %i.jj, i64 56
end_hunk_3
begin_hunk_4_@pm_compile_next_node:bb.a
  br i1 %i.kh, label %.lr.ph.i.i.i.i210, label %._crit_edge.i.i.i.i207

.lr.ph.i.i.i.i210:                                ; preds = %.preheader.i.i.i.i206, %bb.v
  %.027.i.i.i.i211 = phi i32 [ %i.kj, %bb.v ], [ %i.ke, %.preheader.i.i.i.i206 ] ; 3 uses
  %i.ki = icmp samesign ugt i32 %.027.i.i.i.i211, 1073741822
  br i1 %i.ki, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i210
  tail call void @rb_memerror() #38
  unreachable

bb.v:                                             ; preds = %.lr.ph.i.i.i.i210
  %i.kj = shl nuw nsw i32 %.027.i.i.i.i211, 1     ; 3 uses
  %i.kk = icmp samesign ult i32 %.027.i.i.i.i211, 20
  br i1 %i.kk, label %.lr.ph.i.i.i.i210, label %._crit_edge.i.i.loopexit.i.i212, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i212:                  ; preds = %bb.v
  %i.kl = zext nneg i32 %i.kj to i64
  br label %._crit_edge.i.i.i.i207

._crit_edge.i.i.i.i207:                           ; preds = %._crit_edge.i.i.loopexit.i.i212, %.preheader.i.i.i.i206
  %.0.lcssa.i.i.i.i208 = phi i32 [ %i.ke, %.preheader.i.i.i.i206 ], [ %i.kj, %._crit_edge.i.i.loopexit.i.i212 ]
  %.lcssa.i.i.i.i209 = phi i64 [ %i.kf, %.preheader.i.i.i.i206 ], [ %i.kl, %._crit_edge.i.i.loopexit.i.i212 ]
  %i.km = add nuw nsw i64 %.lcssa.i.i.i.i209, 16
  %i.kn = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.km, i64 noundef 1) #39 ; 6 uses
  store ptr %i.kn, ptr %i.jy, align 8, !tbaa !64
  store ptr %i.kn, ptr %i.jx, align 8, !tbaa !64
  store ptr null, ptr %i.kn, align 8, !tbaa !64
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  store i32 0, ptr %i.ko, align 8, !tbaa !37
  %i.kp = getelementptr i8, ptr %i.kn, i64 12
  store i32 %.0.lcssa.i.i.i.i208, ptr %i.kp, align 4, !tbaa !37
  br label %new_adjust_body.exit213

new_adjust_body.exit213:                          ; preds = %._crit_edge.i.i.i.i207, %ISEQ_COMPILE_DATA.exit198
  %i.kq = phi i32 [ 0, %._crit_edge.i.i.i.i207 ], [ %i.ka, %ISEQ_COMPILE_DATA.exit198 ] ; 2 uses
  %.022.i.i.i.i204 = phi ptr [ %i.kn, %._crit_edge.i.i.i.i207 ], [ %i.jy, %ISEQ_COMPILE_DATA.exit198 ] ; 2 uses
  %i.kr = getelementptr i8, ptr %.022.i.i.i.i204, i64 16
  %i.ks = getelementptr i8, ptr %.022.i.i.i.i204, i64 8
  %i.kt = zext i32 %i.kq to i64
  %i.ku = getelementptr i8, ptr %i.kr, i64 %i.kt  ; 7 uses
  %i.kv = add i32 %i.kq, 40
  store i32 %i.kv, ptr %i.ks, align 8, !tbaa !37
  store i32 3, ptr %i.ku, align 8, !tbaa !533
  %i.kw = getelementptr i8, ptr %i.ku, i64 8
  store ptr null, ptr %i.kw, align 8, !tbaa !534
  %i.kx = getelementptr i8, ptr %i.ku, i64 24
  store ptr %i.gr, ptr %i.kx, align 8, !tbaa !113
  %i.ky = getelementptr i8, ptr %i.ku, i64 32
  store i32 -1, ptr %i.ky, align 8, !tbaa !114
  %i.kz = load i32, ptr %i.gz, align 8, !tbaa !240
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.gz, align 8, !tbaa !240
  %i.lb = load i8, ptr %i.ha, align 4
  %i.lc = or i8 %i.lb, 8
  store i8 %i.lc, ptr %i.ha, align 4
  %i.ld = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.le = getelementptr i8, ptr %i.ku, i64 16
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !61
  %i.lf = getelementptr i8, ptr %i.ld, i64 8
  store ptr %i.ku, ptr %i.lf, align 8, !tbaa !62
  store ptr %i.ku, ptr %i.he, align 8, !tbaa !42
  %i.lg = load i8, ptr %i.ha, align 4
  %i.lh = and i8 %i.lg, -9
  store i8 %i.lh, ptr %i.ha, align 4
  br i1 %4, label %bb.af, label %bb.w

bb.w:                                             ; preds = %new_adjust_body.exit213
  %i.li = load i32, ptr %2, align 4, !tbaa !370
  %i.lj = load i32, ptr %i.jh, align 4, !tbaa !372
  %i.lk = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.li, i32 noundef %i.lj, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ll = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.lk, i64 16
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !61
  %i.ln = getelementptr i8, ptr %i.ll, i64 8
  store ptr %i.lk, ptr %i.ln, align 8, !tbaa !62
  store ptr %i.lk, ptr %i.he, align 8, !tbaa !42
  br label %bb.af

can_add_ensure_iseq.exit167:                      ; preds = %can_add_ensure_iseq.exit167.preheader, %bb.z
  %.0101241 = phi ptr [ %i.lz, %bb.z ], [ %0, %can_add_ensure_iseq.exit167.preheader ] ; 3 uses
  %i.lo = load i64, ptr %.0101241, align 8, !tbaa !123
  %i.lp = and i64 %i.lo, 262144
  %.not.i214 = icmp eq i64 %i.lp, 0
  br i1 %.not.i214, label %.critedge, label %ISEQ_COMPILE_DATA.exit216

ISEQ_COMPILE_DATA.exit216:                        ; preds = %can_add_ensure_iseq.exit167
  %i.lq = getelementptr i8, ptr %.0101241, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !47 ; 2 uses
  %.not109 = icmp eq ptr %i.lr, null
  br i1 %.not109, label %.critedge, label %ISEQ_COMPILE_DATA.exit219

ISEQ_COMPILE_DATA.exit219:                        ; preds = %ISEQ_COMPILE_DATA.exit216
  %i.ls = getelementptr i8, ptr %i.lr, i64 64
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !525
  %.not110 = icmp eq ptr %i.lt, null
  br i1 %.not110, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %ISEQ_COMPILE_DATA.exit219
  %i.lu = getelementptr i8, ptr %.0101241, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !70 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !86
  switch i32 %i.lw, label %bb.z [
    i32 2, label %bb.aa
    i32 6, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.lx = load i32, ptr %2, align 4, !tbaa !370
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.lx, ptr noundef nonnull @.str.138)
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.ly = getelementptr i8, ptr %i.lv, i64 168
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !168 ; 2 uses
  %.not108 = icmp eq ptr %i.lz, null
  br i1 %.not108, label %.critedge, label %can_add_ensure_iseq.exit167, !llvm.loop !1443

bb.aa:                                            ; preds = %ISEQ_COMPILE_DATA.exit219, %bb.x
  %i.ma = getelementptr i8, ptr %1, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !1445 ; 2 uses
  %.not112 = icmp eq ptr %i.mb, null
  br i1 %.not112, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.mb, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.mc = load i32, ptr %2, align 4, !tbaa !370
  %i.md = getelementptr i8, ptr %2, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !372
  %i.mf = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.mc, i32 noundef %i.me, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.mg = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !42 ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mf, i64 16
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !61
  %i.mj = getelementptr i8, ptr %i.mh, i64 8
  store ptr %i.mf, ptr %i.mj, align 8, !tbaa !62
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !42
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.mk = load i32, ptr %2, align 4, !tbaa !370
  %i.ml = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !372
  %i.mn = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.mk, i32 noundef %i.mm, i32 noundef 71, i32 noundef 1, i64 noundef 65543) ; 3 uses
  %i.mo = getelementptr i8, ptr %3, i64 24        ; 4 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !42 ; 2 uses
  %i.mq = getelementptr i8, ptr %i.mn, i64 16
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !61
  %i.mr = getelementptr i8, ptr %i.mp, i64 8
  store ptr %i.mn, ptr %i.mr, align 8, !tbaa !62
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !42
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ms = load i32, ptr %2, align 4, !tbaa !370
  %i.mt = load i32, ptr %i.ml, align 4, !tbaa !372
  %i.mu = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ms, i32 noundef %i.mt, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.mv = load ptr, ptr %i.mo, align 8, !tbaa !42 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mu, i64 16
  store ptr %i.mv, ptr %i.mw, align 8, !tbaa !61
  %i.mx = getelementptr i8, ptr %i.mv, i64 8
  store ptr %i.mu, ptr %i.mx, align 8, !tbaa !62
  store ptr %i.mu, ptr %i.mo, align 8, !tbaa !42
  br label %bb.af

.critedge:                                        ; preds = %can_add_ensure_iseq.exit167, %bb.z, %ISEQ_COMPILE_DATA.exit216
  %i.my = load i32, ptr %2, align 4, !tbaa !370
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.my, ptr noundef nonnull @.str.138)
  br label %bb.af

bb.af:                                            ; preds = %bb.y, %bb.ad, %bb.ae, %.critedge, %new_adjust_body.exit213, %bb.w, %new_adjust_body.exit153, %bb.l
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @parse_rational(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = tail call fastcc i64 @parse_integer_value(ptr noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = tail call fastcc i64 @parse_integer_value(ptr noundef %i.c)
  %i.e = tail call i64 @rb_rational_new(i64 noundef %i.b, i64 noundef %i.d) #37
  %i.f = tail call i64 @rb_ractor_make_shareable(i64 noundef %i.e) #37
  ret i64 %i.f
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_redo_node(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !123
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit, label %ISEQ_COMPILE_DATA.exit.thread

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr inttoptr (i64 64 to ptr), align 64, !tbaa !525
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %can_add_ensure_iseq.exit.thread, label %ISEQ_COMPILE_DATA.exit..loopexit203_crit_edge

ISEQ_COMPILE_DATA.exit..loopexit203_crit_edge:    ; preds = %ISEQ_COMPILE_DATA.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val13.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit204

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !525
  %.not193 = icmp eq ptr %i.g, null
  br i1 %.not193, label %can_add_ensure_iseq.exit.thread195, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.h = getelementptr i8, ptr %i.e, i64 120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !535, !range !151, !noundef !152
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %ISEQ_COMPILE_DATA.exit13.i, label %.loopexit204

ISEQ_COMPILE_DATA.exit13.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %.not.i91 = icmp eq ptr %i.l, null
  br i1 %.not.i91, label %.loopexit204, label %.preheader.i

.preheader.i:                                     ; preds = %ISEQ_COMPILE_DATA.exit13.i, %bb.b
  %.0.i92 = phi ptr [ %i.o, %bb.b ], [ %i.l, %ISEQ_COMPILE_DATA.exit13.i ] ; 2 uses
  %i.m = load ptr, ptr %.0.i92, align 8, !tbaa !529
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.b, label %can_add_ensure_iseq.exit

bb.b:                                             ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %.0.i92, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !531  ; 2 uses
  %.old1.not.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i, label %.loopexit204, label %.preheader.i

.loopexit204:                                     ; preds = %bb.b, %ISEQ_COMPILE_DATA.exit..loopexit203_crit_edge, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit13.i
  %.val13.i = phi ptr [ %.val13.i.pre, %ISEQ_COMPILE_DATA.exit..loopexit203_crit_edge ], [ %i.e, %ISEQ_COMPILE_DATA.exit13.i ], [ %i.e, %ISEQ_COMPILE_DATA.exit.thread.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.q = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 48
  %i.w = getelementptr i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 4 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %.loopexit204
  %i.aa = icmp ult i32 %i.x, 48
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ad = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.x, %.preheader.i.i.i.i ], [ %i.ac, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i ], [ %i.ae, %._crit_edge.i.i.loopexit.i.i ]
  %i.af = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.af, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !64
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !64
  store ptr null, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ai, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %.loopexit204, %._crit_edge.i.i.i.i
  %i.aj = phi i32 [ %i.t, %.loopexit204 ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.r, %.loopexit204 ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.al = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 10 uses
  %i.ao = add i32 %i.aj, 48
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !37
  store i32 1, ptr %i.an, align 8, !tbaa !182
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !184
  %i.au = getelementptr i8, ptr %i.an, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.an, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 44     ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -16
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %i.an, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr i8, ptr %2, i64 24        ; 10 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.an, ptr %i.ba, align 8, !tbaa !42
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !525 ; 4 uses
  %i.bh = load i32, ptr %1, align 4, !tbaa !370
  %i.bi = getelementptr i8, ptr %i.be, i64 96     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64 ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 40
  %i.bo = getelementptr i8, ptr %i.bj, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !37 ; 4 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %.preheader.i.i.i.i98, label %compile_data_alloc_adjust.exit.i

.preheader.i.i.i.i98:                             ; preds = %new_label_body.exit
  %i.bs = icmp ult i32 %i.bp, 40
  br i1 %i.bs, label %.lr.ph.i.i.i.i102, label %._crit_edge.i.i.i.i99

.lr.ph.i.i.i.i102:                                ; preds = %.preheader.i.i.i.i98, %bb.f
  %.027.i.i.i.i103 = phi i32 [ %i.bu, %bb.f ], [ %i.bp, %.preheader.i.i.i.i98 ] ; 3 uses
  %i.bt = icmp samesign ugt i32 %.027.i.i.i.i103, 1073741822
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i102
  tail call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i102
  %i.bu = shl nuw nsw i32 %.027.i.i.i.i103, 1     ; 3 uses
  %i.bv = icmp samesign ult i32 %.027.i.i.i.i103, 20
  br i1 %i.bv, label %.lr.ph.i.i.i.i102, label %._crit_edge.i.i.loopexit.i.i104, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i104:                  ; preds = %bb.f
  %i.bw = zext nneg i32 %i.bu to i64
  br label %._crit_edge.i.i.i.i99

._crit_edge.i.i.i.i99:                            ; preds = %._crit_edge.i.i.loopexit.i.i104, %.preheader.i.i.i.i98
  %.0.lcssa.i.i.i.i100 = phi i32 [ %i.bp, %.preheader.i.i.i.i98 ], [ %i.bu, %._crit_edge.i.i.loopexit.i.i104 ]
  %.lcssa.i.i.i.i101 = phi i64 [ %i.bq, %.preheader.i.i.i.i98 ], [ %i.bw, %._crit_edge.i.i.loopexit.i.i104 ]
  %i.bx = add nuw nsw i64 %.lcssa.i.i.i.i101, 16
  %i.by = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bx, i64 noundef 1) #39 ; 6 uses
  store ptr %i.by, ptr %i.bj, align 8, !tbaa !64
  store ptr %i.by, ptr %i.bi, align 8, !tbaa !64
  store ptr null, ptr %i.by, align 8, !tbaa !64
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store i32 0, ptr %i.bz, align 8, !tbaa !37
  %i.ca = getelementptr i8, ptr %i.by, i64 12
  store i32 %.0.lcssa.i.i.i.i100, ptr %i.ca, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i

compile_data_alloc_adjust.exit.i:                 ; preds = %._crit_edge.i.i.i.i99, %new_label_body.exit
  %i.cb = phi i32 [ 0, %._crit_edge.i.i.i.i99 ], [ %i.bl, %new_label_body.exit ] ; 2 uses
  %.022.i.i.i.i96 = phi ptr [ %i.by, %._crit_edge.i.i.i.i99 ], [ %i.bj, %new_label_body.exit ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.022.i.i.i.i96, i64 16
  %i.cd = getelementptr i8, ptr %.022.i.i.i.i96, i64 8
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr i8, ptr %i.cc, i64 %i.ce  ; 7 uses
  %i.cg = add i32 %i.cb, 40
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !37
  store i32 3, ptr %i.cf, align 8, !tbaa !533
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  store ptr null, ptr %i.ch, align 8, !tbaa !534
  %i.ci = getelementptr i8, ptr %i.cf, i64 24
  store ptr %i.bg, ptr %i.ci, align 8, !tbaa !113
  %i.cj = getelementptr i8, ptr %i.cf, i64 32
  store i32 %i.bh, ptr %i.cj, align 8, !tbaa !114
  %.not.i97 = icmp eq ptr %i.bg, null
  br i1 %.not.i97, label %new_adjust_body.exit, label %bb.g

bb.g:                                             ; preds = %compile_data_alloc_adjust.exit.i
  %i.ck = getelementptr i8, ptr %i.bg, i64 40     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !240
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !240
  %i.cn = getelementptr i8, ptr %i.bg, i64 44     ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = or i8 %i.co, 8
  store i8 %i.cp, ptr %i.cn, align 4
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %compile_data_alloc_adjust.exit.i, %bb.g
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cf, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !61
  %i.cs = getelementptr i8, ptr %i.cq, i64 8
  store ptr %i.cf, ptr %i.cs, align 8, !tbaa !62
  store ptr %i.cf, ptr %i.ba, align 8, !tbaa !42
  tail call fastcc void @pm_add_ensure_iseq(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %4)
  %i.ct = load i32, ptr %1, align 4, !tbaa !370
  %i.cu = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !372
  %i.cw = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.cx = getelementptr i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !525
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef 72, i32 noundef 1, i64 noundef %i.cz) ; 3 uses
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !61
  %i.dd = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !62
  store ptr %i.da, ptr %i.ba, align 8, !tbaa !42
  %i.de = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.df = getelementptr i8, ptr %i.de, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !525
  %i.dh = getelementptr i8, ptr %i.dg, i64 40     ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !240
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !240
  %.val88 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.dk = getelementptr i8, ptr %.val88, i64 96   ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !64 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !37 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 40
  %i.dq = getelementptr i8, ptr %i.dl, i64 12
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !37 ; 4 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = icmp samesign ugt i64 %i.dp, %i.ds
  br i1 %i.dt, label %.preheader.i.i.i.i115, label %new_adjust_body.exit122

.preheader.i.i.i.i115:                            ; preds = %new_adjust_body.exit
  %i.du = icmp ult i32 %i.dr, 40
  br i1 %i.du, label %.lr.ph.i.i.i.i119, label %._crit_edge.i.i.i.i116

.lr.ph.i.i.i.i119:                                ; preds = %.preheader.i.i.i.i115, %bb.i
  %.027.i.i.i.i120 = phi i32 [ %i.dw, %bb.i ], [ %i.dr, %.preheader.i.i.i.i115 ] ; 3 uses
  %i.dv = icmp samesign ugt i32 %.027.i.i.i.i120, 1073741822
  br i1 %i.dv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i119
  tail call void @rb_memerror() #38
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.i.i.i119
  %i.dw = shl nuw nsw i32 %.027.i.i.i.i120, 1     ; 3 uses
  %i.dx = icmp samesign ult i32 %.027.i.i.i.i120, 20
  br i1 %i.dx, label %.lr.ph.i.i.i.i119, label %._crit_edge.i.i.loopexit.i.i121, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i121:                  ; preds = %bb.i
  %i.dy = zext nneg i32 %i.dw to i64
  br label %._crit_edge.i.i.i.i116

._crit_edge.i.i.i.i116:                           ; preds = %._crit_edge.i.i.loopexit.i.i121, %.preheader.i.i.i.i115
  %.0.lcssa.i.i.i.i117 = phi i32 [ %i.dr, %.preheader.i.i.i.i115 ], [ %i.dw, %._crit_edge.i.i.loopexit.i.i121 ]
  %.lcssa.i.i.i.i118 = phi i64 [ %i.ds, %.preheader.i.i.i.i115 ], [ %i.dy, %._crit_edge.i.i.loopexit.i.i121 ]
  %i.dz = add nuw nsw i64 %.lcssa.i.i.i.i118, 16
  %i.ea = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.dz, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ea, ptr %i.dl, align 8, !tbaa !64
  store ptr %i.ea, ptr %i.dk, align 8, !tbaa !64
  store ptr null, ptr %i.ea, align 8, !tbaa !64
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  store i32 0, ptr %i.eb, align 8, !tbaa !37
  %i.ec = getelementptr i8, ptr %i.ea, i64 12
  store i32 %.0.lcssa.i.i.i.i117, ptr %i.ec, align 4, !tbaa !37
  br label %new_adjust_body.exit122

new_adjust_body.exit122:                          ; preds = %._crit_edge.i.i.i.i116, %new_adjust_body.exit
  %i.ed = phi i32 [ 0, %._crit_edge.i.i.i.i116 ], [ %i.dn, %new_adjust_body.exit ] ; 2 uses
  %.022.i.i.i.i113 = phi ptr [ %i.ea, %._crit_edge.i.i.i.i116 ], [ %i.dl, %new_adjust_body.exit ] ; 2 uses
  %i.ee = getelementptr i8, ptr %.022.i.i.i.i113, i64 16
  %i.ef = getelementptr i8, ptr %.022.i.i.i.i113, i64 8
  %i.eg = zext i32 %i.ed to i64
  %i.eh = getelementptr i8, ptr %i.ee, i64 %i.eg  ; 7 uses
  %i.ei = add i32 %i.ed, 40
  store i32 %i.ei, ptr %i.ef, align 8, !tbaa !37
  store i32 3, ptr %i.eh, align 8, !tbaa !533
  %i.ej = getelementptr i8, ptr %i.eh, i64 8
  store ptr null, ptr %i.ej, align 8, !tbaa !534
  %i.ek = getelementptr i8, ptr %i.eh, i64 24
  store ptr %i.an, ptr %i.ek, align 8, !tbaa !113
  %i.el = getelementptr i8, ptr %i.eh, i64 32
  store i32 -1, ptr %i.el, align 8, !tbaa !114
  %i.em = load i32, ptr %i.av, align 8, !tbaa !240
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.av, align 8, !tbaa !240
  %i.eo = load i8, ptr %i.aw, align 4
  %i.ep = or i8 %i.eo, 8
  store i8 %i.ep, ptr %i.aw, align 4
  %i.eq = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eh, i64 16
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !61
  %i.es = getelementptr i8, ptr %i.eq, i64 8
  store ptr %i.eh, ptr %i.es, align 8, !tbaa !62
  store ptr %i.eh, ptr %i.ba, align 8, !tbaa !42
  br i1 %3, label %bb.x, label %bb.j

bb.j:                                             ; preds = %new_adjust_body.exit122
  %i.et = load i32, ptr %1, align 4, !tbaa !370
  %i.eu = load i32, ptr %i.cu, align 4, !tbaa !372
  %i.ev = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ew = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ev, i64 16
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !61
  %i.ey = getelementptr i8, ptr %i.ew, i64 8
  store ptr %i.ev, ptr %i.ey, align 8, !tbaa !62
  store ptr %i.ev, ptr %i.ba, align 8, !tbaa !42
  br label %bb.x

can_add_ensure_iseq.exit:                         ; preds = %.preheader.i
  %i.ez = getelementptr i8, ptr %0, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !70
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !86
  %.not78 = icmp eq i32 %i.fb, 6
  br i1 %.not78, label %can_add_ensure_iseq.exit136.preheader, label %.ISEQ_COMPILE_DATA.exit125.thread_crit_edge

can_add_ensure_iseq.exit136.preheader:            ; preds = %.preheader.i131, %can_add_ensure_iseq.exit.thread, %ISEQ_COMPILE_DATA.exit.i135, %can_add_ensure_iseq.exit.thread195, %ISEQ_COMPILE_DATA.exit125, %can_add_ensure_iseq.exit
  br label %can_add_ensure_iseq.exit136

can_add_ensure_iseq.exit.thread:                  ; preds = %ISEQ_COMPILE_DATA.exit
  %i.fc = getelementptr i8, ptr %0, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !70
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !86
  %.not78244 = icmp eq i32 %i.fe, 6
  br i1 %.not78244, label %can_add_ensure_iseq.exit136.preheader, label %ISEQ_COMPILE_DATA.exit125

can_add_ensure_iseq.exit.thread195:               ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.ff = getelementptr i8, ptr %0, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !70
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !86
  %.not78196 = icmp eq i32 %i.fh, 6
  br i1 %.not78196, label %can_add_ensure_iseq.exit136.preheader, label %ISEQ_COMPILE_DATA.exit.i135

.ISEQ_COMPILE_DATA.exit125.thread_crit_edge:      ; preds = %can_add_ensure_iseq.exit
  %.phi.trans.insert217.a = getelementptr i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert217.a, align 8, !tbaa !47
  br label %ISEQ_COMPILE_DATA.exit.i135

ISEQ_COMPILE_DATA.exit125:                        ; preds = %can_add_ensure_iseq.exit.thread
  %i.fi = load ptr, ptr inttoptr (i64 48 to ptr), align 16, !tbaa !233
  %.not79 = icmp eq ptr %i.fi, null
  br i1 %.not79, label %can_add_ensure_iseq.exit136.preheader, label %ISEQ_COMPILE_DATA.exit125.thread.a

ISEQ_COMPILE_DATA.exit125.thread.a:               ; preds = %ISEQ_COMPILE_DATA.exit125
  %i.fj = getelementptr i8, ptr %0, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  br label %.loopexit

ISEQ_COMPILE_DATA.exit.i135:                      ; preds = %.ISEQ_COMPILE_DATA.exit125.thread_crit_edge, %can_add_ensure_iseq.exit.thread195
  %5 = phi ptr [ %.pre, %.ISEQ_COMPILE_DATA.exit125.thread_crit_edge ], [ %i.e, %can_add_ensure_iseq.exit.thread195 ] ; 6 uses
  %.phi.trans.insert218 = getelementptr i8, ptr %5, i64 48
  %.val13.i137.pre = load ptr, ptr %.phi.trans.insert218, align 8, !tbaa !233
  %.not79198 = icmp eq ptr %.val13.i137.pre, null
  br i1 %.not79198, label %can_add_ensure_iseq.exit136.preheader, label %ISEQ_COMPILE_DATA.exit.thread.i127

ISEQ_COMPILE_DATA.exit.thread.i127:               ; preds = %ISEQ_COMPILE_DATA.exit.i135
  %i.fl = getelementptr i8, ptr %5, i64 120
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !535, !range !151, !noundef !152
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %ISEQ_COMPILE_DATA.exit13.i129, label %.loopexit

ISEQ_COMPILE_DATA.exit13.i129:                    ; preds = %ISEQ_COMPILE_DATA.exit.thread.i127
  %i.fo = getelementptr i8, ptr %5, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !530 ; 2 uses
  %.not.i130 = icmp eq ptr %i.fp, null
  br i1 %.not.i130, label %.loopexit, label %.preheader.i131

.preheader.i131:                                  ; preds = %ISEQ_COMPILE_DATA.exit13.i129, %bb.k
  %.0.i132 = phi ptr [ %i.fs, %bb.k ], [ %i.fp, %ISEQ_COMPILE_DATA.exit13.i129 ] ; 2 uses
  %i.fq = load ptr, ptr %.0.i132, align 8, !tbaa !529
  %.not10.i133 = icmp eq ptr %i.fq, null
  br i1 %.not10.i133, label %bb.k, label %can_add_ensure_iseq.exit136.preheader

bb.k:                                             ; preds = %.preheader.i131
  %i.fr = getelementptr i8, ptr %.0.i132, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !531 ; 2 uses
  %.old1.not.i134 = icmp eq ptr %i.fs, null
  br i1 %.old1.not.i134, label %.loopexit, label %.preheader.i131

.loopexit:                                        ; preds = %bb.k, %ISEQ_COMPILE_DATA.exit125.thread.a, %ISEQ_COMPILE_DATA.exit.thread.i127, %ISEQ_COMPILE_DATA.exit13.i129
  %.val13.i137 = phi ptr [ %i.fk, %ISEQ_COMPILE_DATA.exit125.thread.a ], [ %5, %ISEQ_COMPILE_DATA.exit13.i129 ], [ %5, %ISEQ_COMPILE_DATA.exit.thread.i127 ], [ %5, %bb.k ]
  %i.ft = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.fu = getelementptr i8, ptr %.val13.i137, i64 96 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !64 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !37 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 48
  %i.ga = getelementptr i8, ptr %i.fv, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !37 ; 4 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = icmp samesign ugt i64 %i.fz, %i.gc
  br i1 %i.gd, label %.preheader.i.i.i.i140, label %new_label_body.exit149

.preheader.i.i.i.i140:                            ; preds = %.loopexit
  %i.ge = icmp ult i32 %i.gb, 48
  br i1 %i.ge, label %.lr.ph.i.i.i.i146, label %._crit_edge.i.i.i.i141

.lr.ph.i.i.i.i146:                                ; preds = %.preheader.i.i.i.i140, %bb.m
  %.027.i.i.i.i147 = phi i32 [ %i.gg, %bb.m ], [ %i.gb, %.preheader.i.i.i.i140 ] ; 3 uses
  %i.gf = icmp samesign ugt i32 %.027.i.i.i.i147, 1073741822
  br i1 %i.gf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i146
  tail call void @rb_memerror() #38
  unreachable

bb.m:                                             ; preds = %.lr.ph.i.i.i.i146
  %i.gg = shl nuw nsw i32 %.027.i.i.i.i147, 1     ; 3 uses
  %i.gh = icmp samesign ult i32 %.027.i.i.i.i147, 24
  br i1 %i.gh, label %.lr.ph.i.i.i.i146, label %._crit_edge.i.i.loopexit.i.i148, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i148:                  ; preds = %bb.m
  %i.gi = zext nneg i32 %i.gg to i64
  br label %._crit_edge.i.i.i.i141

._crit_edge.i.i.i.i141:                           ; preds = %._crit_edge.i.i.loopexit.i.i148, %.preheader.i.i.i.i140
  %.0.lcssa.i.i.i.i142 = phi i32 [ %i.gb, %.preheader.i.i.i.i140 ], [ %i.gg, %._crit_edge.i.i.loopexit.i.i148 ]
  %.lcssa.i.i.i.i143 = phi i64 [ %i.gc, %.preheader.i.i.i.i140 ], [ %i.gi, %._crit_edge.i.i.loopexit.i.i148 ]
  %i.gj = add nuw nsw i64 %.lcssa.i.i.i.i143, 16
  %i.gk = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.gj, i64 noundef 1) #39 ; 6 uses
  store ptr %i.gk, ptr %i.fv, align 8, !tbaa !64
  store ptr %i.gk, ptr %i.fu, align 8, !tbaa !64
  store ptr null, ptr %i.gk, align 8, !tbaa !64
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  store i32 0, ptr %i.gl, align 8, !tbaa !37
  %i.gm = getelementptr i8, ptr %i.gk, i64 12
  store i32 %.0.lcssa.i.i.i.i142, ptr %i.gm, align 4, !tbaa !37
  br label %new_label_body.exit149

new_label_body.exit149:                           ; preds = %.loopexit, %._crit_edge.i.i.i.i141
  %i.gn = phi i32 [ %i.fx, %.loopexit ], [ 0, %._crit_edge.i.i.i.i141 ] ; 2 uses
  %.022.i.i.i.i139 = phi ptr [ %i.fv, %.loopexit ], [ %i.gk, %._crit_edge.i.i.i.i141 ] ; 2 uses
  %i.go = getelementptr i8, ptr %.022.i.i.i.i139, i64 16
  %i.gp = getelementptr i8, ptr %.022.i.i.i.i139, i64 8
  %i.gq = zext i32 %i.gn to i64
  %i.gr = getelementptr i8, ptr %i.go, i64 %i.gq  ; 10 uses
  %i.gs = add i32 %i.gn, 48
  store i32 %i.gs, ptr %i.gp, align 8, !tbaa !37
  store i32 1, ptr %i.gr, align 8, !tbaa !182
  %i.gt = getelementptr i8, ptr %i.gr, i64 8
  store ptr null, ptr %i.gt, align 8, !tbaa !183
  %i.gu = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.gv = getelementptr i8, ptr %i.gu, i64 132    ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !184 ; 2 uses
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !184
  %i.gy = getelementptr i8, ptr %i.gr, i64 24
  store i32 %i.gw, ptr %i.gy, align 8, !tbaa !111
  %i.gz = getelementptr i8, ptr %i.gr, i64 40     ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gr, i64 44     ; 4 uses
  %i.hb = load i8, ptr %i.ha, align 4
  %i.hc = and i8 %i.hb, -16
  store i8 %i.hc, ptr %i.ha, align 4
  %i.hd = getelementptr i8, ptr %i.gr, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.hd, align 4, !tbaa !37
  %i.he = getelementptr i8, ptr %2, i64 24        ; 10 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gr, i64 16
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !61
  %i.hh = getelementptr i8, ptr %i.hf, i64 8
  store ptr %i.gr, ptr %i.hh, align 8, !tbaa !62
  store ptr %i.gr, ptr %i.he, align 8, !tbaa !42
  tail call fastcc void @pm_add_ensure_iseq(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %4)
  %i.hi = load ptr, ptr %i.ft, align 8, !tbaa !47 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !233 ; 4 uses
  %i.hl = load i32, ptr %1, align 4, !tbaa !370
  %i.hm = getelementptr i8, ptr %i.hi, i64 96     ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !64 ; 4 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !37 ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, 40
  %i.hs = getelementptr i8, ptr %i.hn, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !37 ; 4 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = icmp samesign ugt i64 %i.hr, %i.hu
  br i1 %i.hv, label %.preheader.i.i.i.i157, label %compile_data_alloc_adjust.exit.i154

.preheader.i.i.i.i157:                            ; preds = %new_label_body.exit149
  %i.hw = icmp ult i32 %i.ht, 40
  br i1 %i.hw, label %.lr.ph.i.i.i.i161, label %._crit_edge.i.i.i.i158

.lr.ph.i.i.i.i161:                                ; preds = %.preheader.i.i.i.i157, %bb.o
  %.027.i.i.i.i162 = phi i32 [ %i.hy, %bb.o ], [ %i.ht, %.preheader.i.i.i.i157 ] ; 3 uses
  %i.hx = icmp samesign ugt i32 %.027.i.i.i.i162, 1073741822
  br i1 %i.hx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i161
  tail call void @rb_memerror() #38
  unreachable

bb.o:                                             ; preds = %.lr.ph.i.i.i.i161
  %i.hy = shl nuw nsw i32 %.027.i.i.i.i162, 1     ; 3 uses
  %i.hz = icmp samesign ult i32 %.027.i.i.i.i162, 20
  br i1 %i.hz, label %.lr.ph.i.i.i.i161, label %._crit_edge.i.i.loopexit.i.i163, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i163:                  ; preds = %bb.o
  %i.ia = zext nneg i32 %i.hy to i64
  br label %._crit_edge.i.i.i.i158

._crit_edge.i.i.i.i158:                           ; preds = %._crit_edge.i.i.loopexit.i.i163, %.preheader.i.i.i.i157
  %.0.lcssa.i.i.i.i159 = phi i32 [ %i.ht, %.preheader.i.i.i.i157 ], [ %i.hy, %._crit_edge.i.i.loopexit.i.i163 ]
  %.lcssa.i.i.i.i160 = phi i64 [ %i.hu, %.preheader.i.i.i.i157 ], [ %i.ia, %._crit_edge.i.i.loopexit.i.i163 ]
  %i.ib = add nuw nsw i64 %.lcssa.i.i.i.i160, 16
  %i.ic = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ib, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ic, ptr %i.hn, align 8, !tbaa !64
  store ptr %i.ic, ptr %i.hm, align 8, !tbaa !64
  store ptr null, ptr %i.ic, align 8, !tbaa !64
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  store i32 0, ptr %i.id, align 8, !tbaa !37
  %i.ie = getelementptr i8, ptr %i.ic, i64 12
  store i32 %.0.lcssa.i.i.i.i159, ptr %i.ie, align 4, !tbaa !37
  br label %compile_data_alloc_adjust.exit.i154

compile_data_alloc_adjust.exit.i154:              ; preds = %._crit_edge.i.i.i.i158, %new_label_body.exit149
  %i.if = phi i32 [ 0, %._crit_edge.i.i.i.i158 ], [ %i.hp, %new_label_body.exit149 ] ; 2 uses
  %.022.i.i.i.i155 = phi ptr [ %i.ic, %._crit_edge.i.i.i.i158 ], [ %i.hn, %new_label_body.exit149 ] ; 2 uses
  %i.ig = getelementptr i8, ptr %.022.i.i.i.i155, i64 16
  %i.ih = getelementptr i8, ptr %.022.i.i.i.i155, i64 8
  %i.ii = zext i32 %i.if to i64
  %i.ij = getelementptr i8, ptr %i.ig, i64 %i.ii  ; 7 uses
  %i.ik = add i32 %i.if, 40
  store i32 %i.ik, ptr %i.ih, align 8, !tbaa !37
  store i32 3, ptr %i.ij, align 8, !tbaa !533
  %i.il = getelementptr i8, ptr %i.ij, i64 8
  store ptr null, ptr %i.il, align 8, !tbaa !534
  %i.im = getelementptr i8, ptr %i.ij, i64 24
  store ptr %i.hk, ptr %i.im, align 8, !tbaa !113
  %i.in = getelementptr i8, ptr %i.ij, i64 32
  store i32 %i.hl, ptr %i.in, align 8, !tbaa !114
  %.not.i156 = icmp eq ptr %i.hk, null
  br i1 %.not.i156, label %new_adjust_body.exit164, label %bb.p

bb.p:                                             ; preds = %compile_data_alloc_adjust.exit.i154
  %i.io = getelementptr i8, ptr %i.hk, i64 40     ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !240
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !240
  %i.ir = getelementptr i8, ptr %i.hk, i64 44     ; 2 uses
  %i.is = load i8, ptr %i.ir, align 4
  %i.it = or i8 %i.is, 8
  store i8 %i.it, ptr %i.ir, align 4
  br label %new_adjust_body.exit164

new_adjust_body.exit164:                          ; preds = %compile_data_alloc_adjust.exit.i154, %bb.p
  %i.iu = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ij, i64 16
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !61
  %i.iw = getelementptr i8, ptr %i.iu, i64 8
  store ptr %i.ij, ptr %i.iw, align 8, !tbaa !62
  store ptr %i.ij, ptr %i.he, align 8, !tbaa !42
  %i.ix = load i32, ptr %1, align 4, !tbaa !370
  %i.iy = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !372
  %i.ja = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.jb = getelementptr i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !233
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ix, i32 noundef %i.iz, i32 noundef 72, i32 noundef 1, i64 noundef %i.jd) ; 3 uses
  %i.jf = load ptr, ptr %i.he, align 8, !tbaa !42 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.je, i64 16
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !61
  %i.jh = getelementptr i8, ptr %i.jf, i64 8
  store ptr %i.je, ptr %i.jh, align 8, !tbaa !62
  store ptr %i.je, ptr %i.he, align 8, !tbaa !42
  %i.ji = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.jj = getelementptr i8, ptr %i.ji, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !233
  %i.jl = getelementptr i8, ptr %i.jk, i64 40     ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !240
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jl, align 8, !tbaa !240
  %.val84 = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.jo = getelementptr i8, ptr %.val84, i64 96   ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !64 ; 4 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !37 ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = add nuw nsw i64 %i.js, 40
end_hunk_4
