Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@iseq_setup:ISEQ_COMPILE_DATA.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.bz

bb.bf:                                            ; preds = %bb.bb, %bb.bb
  %i.jt = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !36
  %i.jv = call i64 @rb_fix2int(i64 noundef %i.ju) #37
  %sext.i = shl i64 %i.jv, 32
  %i.jw = ashr exact i64 %sext.i, 32
  %i.jx = add i32 %.0331.i, %i.ij
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr [8 x i8], ptr %i.fv, i64 %i.jy
  store i64 %i.jw, ptr %i.jz, align 8, !tbaa !36
  br label %bb.bz

bb.bg:                                            ; preds = %bb.bb, %bb.bb
  %i.ka = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !36 ; 4 uses
  %i.kc = add i32 %.0331.i, %i.ij
  %i.kd = sext i32 %i.kc to i64                   ; 3 uses
  %i.ke = getelementptr [8 x i8], ptr %i.fv, i64 %i.kd
  store i64 %i.kb, ptr %i.ke, align 8, !tbaa !36
  %i.kf = icmp eq i64 %i.kb, 0
  %i.kg = and i64 %i.kb, 7
  %i.kh = icmp ne i64 %i.kg, 0
  %i.ki = or i1 %i.kf, %i.kh
  br i1 %i.ki, label %bb.bz, label %rb_obj_written.exit460.i

rb_obj_written.exit460.i:                         ; preds = %bb.bg
  call void @rb_gc_writebarrier(i64 noundef %i.hp, i64 noundef %i.kb) #37
  %i.kj = and i64 %i.kd, 63
  %i.kk = shl nuw i64 1, %i.kj
  %i.kl = lshr i64 %i.kd, 6
  %i.km = getelementptr [8 x i8], ptr %.0339.i, i64 %i.kl ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !36
  %i.ko = or i64 %i.kn, %i.kk
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !36
  br label %bb.bz

ISEQ_IS_ENTRY_START.exit.i:                       ; preds = %bb.bb
  %i.kp = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.kq = getelementptr i8, ptr %i.kp, i64 148    ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !120 ; 4 uses
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 4, !tbaa !120
  %i.kt = load i32, ptr %i.ga, align 8, !tbaa !121
  %i.ku = load i32, ptr %i.gb, align 8, !tbaa !122
  %i.kv = add i32 %i.ku, %i.kt
  %i.kw = load i32, ptr %i.fz, align 4, !tbaa !123
  %i.kx = add i32 %i.kv, %i.kw
  %i.ky = zext i32 %i.kx to i64
  %i.kz = load ptr, ptr %i.gg, align 8, !tbaa !108
  %i.la = getelementptr [16 x i8], ptr %i.kz, i64 %i.ky
  %i.lb = zext i32 %i.kr to i64
  %i.lc = getelementptr [16 x i8], ptr %i.la, i64 %i.lb ; 2 uses
  %i.ld = load i32, ptr %i.fy, align 4, !tbaa !124
  %.not405.i = icmp ult i32 %i.kr, %i.ld
  br i1 %.not405.i, label %bb.bi, label %bb.bh, !prof !125

bb.bh:                                            ; preds = %ISEQ_IS_ENTRY_START.exit.i
  %.val421.i = load ptr, ptr %i.i, align 8, !tbaa !62
  call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val421.i, ptr noundef %.1330590.i)
  %i.le = load i32, ptr %i.il, align 8, !tbaa !91
  %i.lf = load <4 x i32>, ptr %i.fy, align 4, !tbaa !7
  %i.lg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lf)
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.le, ptr noundef nonnull @.str.36, i32 noundef %i.kr, i32 noundef %i.lg)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %ISEQ_IS_ENTRY_START.exit.i
  %i.lh = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !36
  %i.lj = inttoptr i64 %i.li to ptr               ; 5 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !74 ; 2 uses
  %i.ll = and i64 %i.lk, 8192
  %.not.i.i465.i = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i465.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lm = lshr i64 %i.lk, 15
  %i.ln = and i64 %i.lm, 127
  br label %rb_array_len.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.lo = getelementptr i8, ptr %i.lj, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.bk, %bb.bj
  %.0.i.i466.i = phi i64 [ %i.ln, %bb.bj ], [ %i.lp, %bb.bk ] ; 4 uses
  %i.lq = add i64 %.0.i.i466.i, 1
  %i.lr = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.lq, i64 noundef 8) #39 ; 3 uses
  %i.ls = icmp sgt i64 %.0.i.i466.i, 0
  br i1 %i.ls, label %.lr.ph.i467.i, label %array_to_idlist.exit.i

.lr.ph.i467.i:                                    ; preds = %rb_array_len.exit.i.i
  %i.lt = getelementptr i8, ptr %i.lj, i64 16
  %i.lu = getelementptr i8, ptr %i.lj, i64 32
  br label %bb.bl

bb.bl:                                            ; preds = %RARRAY_AREF.exit.i.i, %.lr.ph.i467.i
  %.013.i.i = phi i64 [ 0, %.lr.ph.i467.i ], [ %i.mc, %RARRAY_AREF.exit.i.i ] ; 3 uses
  %i.lv = load i64, ptr %i.lj, align 8, !tbaa !74
  %i.lw = and i64 %i.lv, 8192
  %.not.i.i.i.i = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i.i.i, label %bb.bm, label %RARRAY_AREF.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.lx = load ptr, ptr %i.lu, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i = phi ptr [ %i.lx, %bb.bm ], [ %i.lt, %bb.bl ]
  %i.ly = getelementptr [8 x i8], ptr %.0.i.i.i.i, i64 %.013.i.i
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !36
  %i.ma = call i64 @rb_sym2id(i64 noundef %i.lz) #37
  %i.mb = getelementptr [8 x i8], ptr %i.lr, i64 %.013.i.i
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !36
  %i.mc = add nuw nsw i64 %.013.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.mc, %.0.i.i466.i
  br i1 %exitcond.not.i.i, label %array_to_idlist.exit.i, label %bb.bl, !llvm.loop !126

array_to_idlist.exit.i:                           ; preds = %RARRAY_AREF.exit.i.i, %rb_array_len.exit.i.i
  %i.md = getelementptr [8 x i8], ptr %i.lr, i64 %.0.i.i466.i
  store i64 0, ptr %i.md, align 8, !tbaa !36
  %i.me = getelementptr i8, ptr %i.lc, i64 8
  store ptr %i.lr, ptr %i.me, align 8, !tbaa !127
  %i.mf = ptrtoint ptr %i.lc to i64
  %i.mg = add i32 %.0331.i, %i.ij
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr [8 x i8], ptr %i.fv, i64 %i.mh
  store i64 %i.mf, ptr %i.mi, align 8, !tbaa !36
  br label %bb.bz

bb.bn:                                            ; preds = %bb.bb
  %i.mj = getelementptr [8 x i8], ptr %i.hx, i64 %i.in ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !36
  %i.ml = call i64 @rb_fix2uint(i64 noundef %i.mk) #37
  %i.mm = load ptr, ptr %i.gg, align 8, !tbaa !108
  %i.mn = and i64 %i.ml, 4294967295
  %i.mo = getelementptr [16 x i8], ptr %i.mm, i64 %i.mn ; 2 uses
  br i1 %i.ik, label %bb.bo, label %.thread494.i

bb.bo:                                            ; preds = %bb.bn
  %i.mp = add i32 %.0331.i, -1
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr [8 x i8], ptr %i.hx, i64 %i.mq
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !36
  %i.mt = call i64 @rb_sym2id(i64 noundef %i.ms) #37
  br label %.thread494.i

.thread494.i:                                     ; preds = %bb.bo, %bb.bn
  %.sink631.i = phi i64 [ %i.mt, %bb.bo ], [ 0, %bb.bn ]
  %i.mu = getelementptr i8, ptr %i.mo, i64 8
  store i64 %.sink631.i, ptr %i.mu, align 8, !tbaa !130
  store atomic volatile i64 4294967295, ptr %i.mo monotonic, align 8
  %i.mv = load i64, ptr %i.mj, align 8, !tbaa !36
  %i.mw = call i64 @rb_fix2uint(i64 noundef %i.mv) #37
  %.pre633.i.a = load i32, ptr %i.fz, align 4, !tbaa !123
  br label %ISEQ_IS_ENTRY_START.exit471.i

bb.bp:                                            ; preds = %bb.bb, %bb.bb
  %i.mx = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !36
  %i.mz = call i64 @rb_fix2uint(i64 noundef %i.my) #37
  switch i8 %i.ip, label %bb.bt [
    i8 75, label %bb.bq
    i8 84, label %bb.br
    i8 74, label %bb.bs
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.na = load i32, ptr %i.ga, align 8, !tbaa !121
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i470.i = phi i32 [ %i.na, %bb.bq ], [ 0, %bb.bp ]
  %i.nb = load i32, ptr %i.gb, align 8, !tbaa !122
  %i.nc = add i32 %i.nb, %.0.i470.i
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.1.i469.i = phi i32 [ %i.nc, %bb.br ], [ 0, %bb.bp ]
  %i.nd = load i32, ptr %i.fz, align 4, !tbaa !123 ; 2 uses
  %i.ne = add i32 %i.nd, %.1.i469.i
  %i.nf = zext i32 %i.ne to i64
  br label %ISEQ_IS_ENTRY_START.exit471.i

bb.bt:                                            ; preds = %bb.bp
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.46) #38
  unreachable

ISEQ_IS_ENTRY_START.exit471.i:                    ; preds = %bb.bs, %.thread494.i
  %i.ng = phi i32 [ %i.nd, %bb.bs ], [ %.pre633.i.a, %.thread494.i ]
  %.in.i = phi i64 [ %i.mz, %bb.bs ], [ %i.mw, %.thread494.i ] ; 2 uses
  %.2.i468.i = phi i64 [ %i.nf, %bb.bs ], [ 0, %.thread494.i ]
  %i.nh = trunc i64 %.in.i to i32                 ; 2 uses
  %i.ni = load ptr, ptr %i.gg, align 8, !tbaa !108
  %i.nj = getelementptr [16 x i8], ptr %i.ni, i64 %.2.i468.i
  %i.nk = and i64 %.in.i, 4294967295
  %i.nl = getelementptr [16 x i8], ptr %i.nj, i64 %i.nk
  %i.nm = load i32, ptr %i.fy, align 4, !tbaa !124
  %i.nn = add i32 %i.nm, %i.ng
  %i.no = load i32, ptr %i.ga, align 8, !tbaa !121
  %i.np = add i32 %i.nn, %i.no
  %i.nq = load i32, ptr %i.gb, align 8, !tbaa !122
  %i.nr = add i32 %i.np, %i.nq
  %.not404.i = icmp ugt i32 %i.nr, %i.nh
  br i1 %.not404.i, label %bb.bv, label %bb.bu, !prof !125

bb.bu:                                            ; preds = %ISEQ_IS_ENTRY_START.exit471.i
  %.val420.i = load ptr, ptr %i.i, align 8, !tbaa !62
  call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val420.i, ptr noundef %.1330590.i)
  %i.ns = load i32, ptr %i.il, align 8, !tbaa !91
  %i.nt = load <4 x i32>, ptr %i.fy, align 4, !tbaa !7
  %i.nu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.nt)
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.ns, ptr noundef nonnull @.str.36, i32 noundef %i.nh, i32 noundef %i.nu)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %ISEQ_IS_ENTRY_START.exit471.i
  %3 = ptrtoint ptr %i.nl to i64
  %i.nv = add i32 %.0331.i, %i.ij
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr [8 x i8], ptr %i.fv, i64 %i.nw
  store i64 %3, ptr %i.nx, align 8, !tbaa !36
  br label %bb.bz

ISEQ_COMPILE_DATA.exit474.i:                      ; preds = %bb.bb
  %i.ny = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !36
  %i.oa = inttoptr i64 %i.nz to ptr
  %i.ob = load ptr, ptr %i.gl, align 8, !tbaa !110
  %i.oc = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.od = getelementptr i8, ptr %i.oc, i64 144    ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !112 ; 2 uses
  %i.of = add i32 %i.oe, 1
  store i32 %i.of, ptr %i.od, align 8, !tbaa !112
  %i.og = zext i32 %i.oe to i64
  %i.oh = getelementptr [16 x i8], ptr %i.ob, i64 %i.og ; 3 uses
  store ptr %i.oa, ptr %i.oh, align 8, !tbaa !132
  %i.oi = call ptr @rb_vm_empty_cc() #37
  %i.oj = getelementptr i8, ptr %i.oh, i64 8
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !136
  %i.ok = ptrtoint ptr %i.oh to i64
  %i.ol = add i32 %.0331.i, %i.ij
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr [8 x i8], ptr %i.fv, i64 %i.om
  store i64 %i.ok, ptr %i.on, align 8, !tbaa !36
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bb
  %i.oo = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !36
  %i.oq = call i64 @rb_sym2id(i64 noundef %i.op) #37
  %i.or = add i32 %.0331.i, %i.ij
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr [8 x i8], ptr %i.fv, i64 %i.os
  store i64 %i.oq, ptr %i.ot, align 8, !tbaa !36
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bb
  %i.ou = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !36
  %i.ow = add i32 %.0331.i, %i.ij
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr [8 x i8], ptr %i.fv, i64 %i.ox
  store i64 %i.ov, ptr %i.oy, align 8, !tbaa !36
  br label %bb.bz

bb.by:                                            ; preds = %bb.bb
  %i.oz = getelementptr [8 x i8], ptr %i.hx, i64 %i.in
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !36
  %i.pb = add i32 %.0331.i, %i.ij
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr [8 x i8], ptr %i.fv, i64 %i.pc
  store i64 %i.pa, ptr %i.pd, align 8, !tbaa !36
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %ISEQ_COMPILE_DATA.exit474.i, %bb.bv, %array_to_idlist.exit.i, %rb_obj_written.exit460.i, %bb.bg, %bb.bf, %rb_obj_written.exit.i, %bb.bc
  %.4336.ph.i = phi i1 [ true, %rb_obj_written.exit460.i ], [ %.1333.i, %bb.bg ], [ %.1333.i, %bb.bx ], [ %.1333.i, %bb.bw ], [ %.1333.i, %ISEQ_COMPILE_DATA.exit474.i ], [ %.1333.i, %bb.bv ], [ %.1333.i, %array_to_idlist.exit.i ], [ %.1333.i, %bb.by ], [ %.1333.i, %bb.bf ], [ true, %rb_obj_written.exit.i ], [ %.1333.i, %bb.bc ]
  %i.pe = add i32 %.0331.i, 1
  br label %bb.bb, !llvm.loop !137

bb.ca:                                            ; preds = %bb.bb
  %i.pf = icmp eq i32 %.0350587.i, 0
  br i1 %i.pf, label %._crit_edge.i.i, label %bb.cb

._crit_edge.i.i:                                  ; preds = %bb.ca
  %.pre.i.i = load i32, ptr %i.il, align 8, !tbaa !91
  br label %add_insn_info.exit.i

bb.cb:                                            ; preds = %bb.ca
  %i.pg = add i32 %.0350587.i, -1
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr [12 x i8], ptr %i.fw, i64 %i.ph ; 3 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !138 ; 3 uses
  %i.pk = load i32, ptr %i.il, align 8, !tbaa !91 ; 2 uses
  %.not.i475.i = icmp eq i32 %i.pj, %i.pk
  br i1 %.not.i475.i, label %bb.cc, label %add_insn_info.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.pl = getelementptr i8, ptr %i.pi, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !140
  %i.pn = getelementptr i8, ptr %.1330590.i, i64 52
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !141
  %.not23.i.i = icmp eq i32 %i.pm, %i.po
  br i1 %.not23.i.i, label %bb.cd, label %add_insn_info.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.pp = getelementptr i8, ptr %i.pi, i64 8
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !142
  %i.pr = getelementptr i8, ptr %.1330590.i, i64 56
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !80
  %.not24.i.i = icmp eq i32 %i.pq, %i.ps
  br i1 %.not24.i.i, label %.thread513.i, label %add_insn_info.exit.i

add_insn_info.exit.i:                             ; preds = %bb.cd, %bb.cc, %bb.cb, %._crit_edge.i.i
  %i.pt = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.pj, %bb.cd ], [ %i.pj, %bb.cc ], [ %i.pk, %bb.cb ]
  %i.pu = sext i32 %.0350587.i to i64             ; 2 uses
  %i.pv = getelementptr [12 x i8], ptr %i.fw, i64 %i.pu ; 2 uses
  store i32 %i.pt, ptr %i.pv, align 4, !tbaa !138
  %i.pw = getelementptr i8, ptr %.1330590.i, i64 52
  %i.px = getelementptr i8, ptr %i.pv, i64 4
  %i.py = load <2 x i32>, ptr %i.pw, align 4, !tbaa !7
  store <2 x i32> %i.py, ptr %i.px, align 4, !tbaa !7
  %i.pz = getelementptr [4 x i8], ptr %i.fx, i64 %i.pu
  store i32 %.5362586.i, ptr %i.pz, align 4, !tbaa !7
  %i.qa = add i32 %.0350587.i, 1
  br label %.thread513.i

bb.ce:                                            ; preds = %bb.bb
  %i.qb = sext i8 %i.ip to i32
  call void @ruby_xfree(ptr noundef nonnull %i.fv) #37
  call void @ruby_xfree(ptr noundef nonnull %i.fw) #37
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !62
  call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val.i, ptr noundef %.1330590.i)
  %i.qc = load i32, ptr %i.il, align 8, !tbaa !91
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.qc, ptr noundef nonnull @.str.37, i32 noundef %i.qb)
  br label %iseq_set_sequence.exit.thread

bb.cf:                                            ; preds = %bb.az
  %i.qd = getelementptr i8, ptr %.1330590.i, i64 36
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !92
  br label %.thread513.i

bb.cg:                                            ; preds = %bb.az
  %i.qf = getelementptr i8, ptr %.1330590.i, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !96 ; 3 uses
  %.not399.i.a = icmp eq ptr %i.qg, null          ; 2 uses
  br i1 %.not399.i.a, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qh = getelementptr i8, ptr %i.qg, i64 36
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !92
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.4348.i = phi i32 [ %i.qi, %bb.ch ], [ 0, %bb.cg ] ; 6 uses
  %i.qj = getelementptr i8, ptr %.1330590.i, i64 32 ; 3 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !98 ; 3 uses
  %.not400.i = icmp eq i32 %i.qk, -1
  br i1 %.not400.i, label %.thread513.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ql = sub i32 %.3347588.i, %.4348.i           ; 4 uses
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.qn = icmp eq i32 %.0350587.i, 0
  br i1 %i.qn, label %.split377.i, label %.split.i

.split.i:                                         ; preds = %bb.ck
  %i.qo = sext i32 %.0350587.i to i64             ; 2 uses
  %i.qp = getelementptr [12 x i8], ptr %i.fw, i64 %i.qo ; 3 uses
  store i32 %i.qk, ptr %i.qp, align 4, !tbaa !138
  %i.qq = getelementptr i8, ptr %i.qp, i64 4
  store i32 -1, ptr %i.qq, align 4, !tbaa !140
  %i.qr = getelementptr i8, ptr %i.qp, i64 8
  store i32 0, ptr %i.qr, align 4, !tbaa !142
  %i.qs = getelementptr [4 x i8], ptr %i.fx, i64 %i.qo
  store i32 %.5362586.i, ptr %i.qs, align 4, !tbaa !7
  br label %bb.cl

.split377.i:                                      ; preds = %bb.ck
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.qk, ptr noundef nonnull @.str.38)
  %.1330.val427.i = load i32, ptr %i.qj, align 8, !tbaa !98
  store i32 %.1330.val427.i, ptr %i.fw, align 4, !tbaa !138
  store i32 -1, ptr %i.hn, align 4, !tbaa !140
  store i32 0, ptr %i.ho, align 4, !tbaa !142
  store i32 %.5362586.i, ptr %i.fx, align 4, !tbaa !7
  br label %bb.cl

bb.cl:                                            ; preds = %.split377.i, %.split.i
  %i.qt = add i32 %.0350587.i, 1                  ; 2 uses
  %.not519.i = icmp eq i32 %i.ql, 1
  %i.qu = add i32 %.5362586.i, 1                  ; 2 uses
  %i.qv = sext i32 %.5362586.i to i64
  %i.qw = getelementptr [8 x i8], ptr %i.fv, i64 %i.qv ; 2 uses
  br i1 %.not519.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i64 46, ptr %i.qw, align 8, !tbaa !36
  %i.qx = zext nneg i32 %i.ql to i64
  %i.qy = add i32 %.5362586.i, 2
  %i.qz = sext i32 %i.qu to i64
  %i.ra = getelementptr [8 x i8], ptr %i.fv, i64 %i.qz
  store i64 %i.qx, ptr %i.ra, align 8, !tbaa !36
  br label %.thread513.i

bb.cn:                                            ; preds = %bb.cl
  store i64 39, ptr %i.qw, align 8, !tbaa !36
  br label %.thread513.i

bb.co:                                            ; preds = %bb.cj
  %i.rb = icmp slt i32 %i.ql, 0
  br i1 %i.rb, label %bb.cp, label %.thread513.i

bb.cp:                                            ; preds = %bb.co
  br i1 %.not399.i.a, label %bb.cr, label %bb.cq

end_hunk_0
begin_hunk_1_@pm_compile_node:bb.a
  %i.chy = load ptr, ptr %i.chx, align 8, !tbaa !11 ; 2 uses
  %i.chz = getelementptr i8, ptr %i.chw, i64 16
  store ptr %i.chy, ptr %i.chz, align 8, !tbaa !34
  %i.cia = getelementptr i8, ptr %i.chy, i64 8
  store ptr %i.chw, ptr %i.cia, align 8, !tbaa !35
  store ptr %i.chw, ptr %i.chx, align 8, !tbaa !11
  %i.cib = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.chu, i32 noundef %i.chv, i32 noundef 19, i32 noundef 1, i64 noundef %i.cht) ; 3 uses
  %i.cic = load ptr, ptr %i.chx, align 8, !tbaa !11 ; 2 uses
  %i.cid = getelementptr i8, ptr %i.cib, i64 16
  store ptr %i.cic, ptr %i.cid, align 8, !tbaa !34
  %i.cie = getelementptr i8, ptr %i.cic, i64 8
  store ptr %i.cib, ptr %i.cie, align 8, !tbaa !35
  store ptr %i.cib, ptr %i.chx, align 8, !tbaa !11
  %i.cif = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.chu, i32 noundef %i.chv, i64 noundef 96, i64 noundef 3, ptr noundef null, i64 noundef 41, ptr noundef null) ; 3 uses
  %i.cig = load ptr, ptr %i.chx, align 8, !tbaa !11 ; 2 uses
  %i.cih = getelementptr i8, ptr %i.cif, i64 16
  store ptr %i.cig, ptr %i.cih, align 8, !tbaa !34
  %i.cii = getelementptr i8, ptr %i.cig, i64 8
  store ptr %i.cif, ptr %i.cii, align 8, !tbaa !35
  store ptr %i.cif, ptr %i.chx, align 8, !tbaa !11
  br i1 %3, label %bb.nh, label %.critedge1899

bb.nh:                                            ; preds = %bb.ng
  %i.cij = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.chu, i32 noundef %i.chv, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cik = load ptr, ptr %i.chx, align 8, !tbaa !11 ; 2 uses
  %i.cil = getelementptr i8, ptr %i.cij, i64 16
  store ptr %i.cik, ptr %i.cil, align 8, !tbaa !34
  %i.cim = getelementptr i8, ptr %i.cik, i64 8
  store ptr %i.cij, ptr %i.cim, align 8, !tbaa !35
  store ptr %i.cij, ptr %i.chx, align 8, !tbaa !11
  br label %.critedge1899

bb.ni:                                            ; preds = %bb.n
  call fastcc void @pm_compile_yield_node(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %5, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %.critedge1899

bb.nj:                                            ; preds = %bb.n
  %i.cin = load i64, ptr @rb_eNotImpError, align 8, !tbaa !36
  %i.cio = tail call ptr @pm_node_type_to_str(i16 noundef zeroext %i.by) #37
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cin, ptr noundef nonnull @.str.261, ptr noundef %i.cio) #41
  unreachable

.critedge1899:                                    ; preds = %bb.ep, %.preheader, %.thread2183, %bb.en, %bb.em, %bb.ng, %bb.nh, %._crit_edge, %bb.na, %bb.mu, %bb.mv, %bb.ms, %bb.mt, %bb.ml, %bb.mp, %bb.mq, %bb.mn, %._crit_edge2201, %bb.mk, %bb.mg, %bb.mh, %bb.mc, %bb.md, %bb.lw, %bb.ma, %bb.mb, %bb.ly, %bb.lu, %bb.lv, %bb.lg, %bb.lh, %bb.li, %bb.lj, %bb.lk, %bb.ll, %bb.lm, %bb.ln, %bb.ld, %bb.le, %bb.la, %bb.kz, %bb.ko, %bb.kp, %bb.kl, %bb.km, %bb.ke, %pm_optimizable_range_item_p.exit2001.thread, %bb.kk, %bb.kj, %bb.ki, %bb.ji, %bb.jk, %bb.jj, %bb.iz, %bb.jc, %bb.jb, %bb.iw, %bb.ix, %bb.hy, %bb.hz, %bb.ht, %bb.hu, %.critedge, %bb.hc, %bb.gx, %bb.gv, %bb.gw, %bb.gr, %bb.gs, %bb.ge, %bb.gi, %bb.gj, %bb.gg, %bb.gn, %bb.gm, %bb.ga, %bb.fz, %bb.gc, %bb.gb, %bb.ft, %._crit_edge2237, %bb.fn, %bb.fo, %bb.fi, %bb.fj, %bb.es, %bb.et, %bb.ej, %bb.el, %bb.eq, %bb.ed, %bb.ee, %bb.dj, %bb.dk, %bb.de, %bb.dh, %bb.df, %bb.db, %bb.dc, %bb.cz, %bb.da, %bb.cw, %bb.cx, %bb.ce, %bb.cf, %bb.by, %bb.bz, %bb.bo, %bb.bp, %bb.am, %bb.an, %bb.ad, %bb.ah, %bb.ak, %bb.ai, %bb.af, %bb.aa, %bb.ab, %bb.x, %bb.z, %bb.y, %bb.s, %bb.t, %bb.ni, %bb.nf, %bb.ne, %bb.nd, %bb.mr, %rb_obj_written.exit2026, %bb.lc, %bb.lb, %bb.kx, %rb_obj_write.exit2020, %bb.kq, %bb.kn, %ISEQ_COMPILE_DATA.exit1998, %APPEND_LIST.exit1986, %bb.jg, %bb.jf, %bb.iy, %bb.iv, %APPEND_LIST.exit1982, %bb.in, %bb.im, %bb.ig, %bb.if, %bb.ie, %bb.hx, %bb.hs, %bb.hn, %bb.hk, %bb.hh, %bb.gz, %bb.fx, %bb.fm, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.er, %bb.eh, %bb.ec, %bb.dx, %bb.du, %bb.dr, %rb_obj_write.exit, %bb.di, %bb.cy, %bb.cr, %bb.cq, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bs, %bb.bn, %bb.bi, %bb.bf, %bb.bc, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.v, %bb.u, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_parse_result_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !748  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 992
  %i.d = load i8, ptr %i.c, align 8, !tbaa !752, !range !147, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %pm_scope_node_destroy.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 960
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !753
  tail call void @ruby_xfree(ptr noundef %i.g) #37
  %i.h = getelementptr i8, ptr %0, i64 968
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %pm_scope_node_destroy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_st_free_table(ptr noundef nonnull %i.i) #37
  br label %pm_scope_node_destroy.exit

pm_scope_node_destroy.exit:                       ; preds = %bb.e, %bb.d, %bb.c
  tail call void @pm_parser_free(ptr noundef nonnull %0) #37
  %i.j = getelementptr i8, ptr %0, i64 816
  tail call void @pm_string_free(ptr noundef %i.j) #37
  %i.k = getelementptr i8, ptr %0, i64 712
  tail call void @pm_options_free(ptr noundef %i.k) #37
  ret void
}

declare void @pm_node_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #4

declare void @pm_parser_free(ptr noundef) local_unnamed_addr #4

declare void @pm_string_free(ptr noundef) local_unnamed_addr #4

declare void @pm_options_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @pm_load_file(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 7 uses
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %0, i64 816        ; 3 uses
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.k = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.j, i32 noundef 2048) #37 ; 8 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %pm_read_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.m = call i32 @fstat(i32 noundef %i.k, ptr noundef nonnull %3) #37
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @close(i32 noundef %i.k) #37 ; 0 uses
  br label %pm_read_file.exit.thread19

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !754
  %i.r = trunc i32 %i.q to i16
  %trunc.i = and i16 %i.r, -4096
  switch i16 %trunc.i, label %bb.k [
    i16 16384, label %pm_read_file.exit
    i16 4096, label %bb.f
    i16 8192, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.s = tail call i64 @rb_io_fdopen(i32 noundef %i.k, i32 noundef 2048, ptr noundef %i.j) #37 ; 2 uses
  %i.t = tail call i64 @rb_io_wait(i64 noundef %i.s, i64 noundef 3, i64 noundef 4) #37 ; 0 uses
  %.pr.i.i = load i64, ptr @pm_read_file.rbimpl_id, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.300, i64 noundef 4) #37 ; 3 uses
  store i64 %i.u, ptr @pm_read_file.rbimpl_id, align 8, !tbaa !36
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !230

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.f
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.f ], [ %i.u, %.lr.ph.i.i ]
  %i.v = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.s, i64 noundef %.lcssa.i.i, i32 noundef 0) #37 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %i.v, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %pm_read_file.exit.thread19, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_intern_const.exit.i
  %i.aa = inttoptr i64 %i.v to ptr                ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 5
  br i1 %i.ad, label %bb.g, label %pm_read_file.exit.thread19

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !327 ; 5 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %pm_read_file.exit.thread19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #42 ; 2 uses
  %i.ai = and i64 %i.ab, 8192
  %.not.i45.i = icmp eq i64 %i.ai, 0
  %i.aj = getelementptr i8, ptr %i.aa, i64 24     ; 2 uses
  br i1 %.not.i45.i, label %RSTRING_PTR.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %i.ak, %bb.i ], [ %i.aj, %bb.h ]
  %.not.i46.i = icmp eq i64 %i.af, 0
  br i1 %.not.i46.i, label %ruby_nonempty_memcpy.exit.i, label %bb.j

bb.j:                                             ; preds = %RSTRING_PTR.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ah, ptr noundef nonnull readonly align 1 %i.al, i64 noundef range(i64 1, 0) %i.af, i1 noundef false) #37
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.j, %RSTRING_PTR.exit.i
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !496
  %.sroa.29.0..sroa_idx.i = getelementptr i8, ptr %0, i64 824
  store i64 %i.af, ptr %.sroa.29.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.310.0..sroa_idx.i = getelementptr i8, ptr %0, i64 832
  store i32 2, ptr %.sroa.310.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.411.0..sroa_idx.i = getelementptr i8, ptr %0, i64 836
  store i32 0, ptr %.sroa.411.0..sroa_idx.i, align 4
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !757 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i32 @close(i32 noundef %i.k) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store ptr %i.a, ptr %i.d, align 8, !tbaa !496
  %.sroa.22.0..sroa_idx.i = getelementptr i8, ptr %0, i64 824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.aq = tail call ptr @mmap(ptr noundef null, i64 noundef %i.an, i32 noundef 1, i32 noundef 2, i32 noundef %i.k, i64 noundef 0) #37 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -1 to ptr)
  %i.as = tail call i32 @close(i32 noundef %i.k) #37 ; 0 uses
  br i1 %i.ar, label %pm_read_file.exit.thread19, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !496
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %0, i64 824
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %0, i64 832
  store i32 3, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %0, i64 836
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.o

pm_read_file.exit.thread19:                       ; preds = %bb.d, %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_intern_const.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %pm_read_file.exit.thread

pm_read_file.exit:                                ; preds = %bb.e
  %i.at = tail call i32 @close(i32 noundef %i.k) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.r

bb.o:                                             ; preds = %ruby_nonempty_memcpy.exit.i, %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.au = getelementptr i8, ptr %0, i64 712
  %i.av = call i32 @rb_iseq_opt_frozen_string_literal() #37 ; 2 uses
  switch i32 %i.av, label %bb.q [
    i32 -1, label %pm_options_frozen_string_literal_init.exit
    i32 0, label %.sink.split.i
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.301, i32 noundef %i.av) #38
  unreachable

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink.i = phi i1 [ true, %bb.p ], [ false, %bb.o ]
  call void @pm_options_frozen_string_literal_set(ptr noundef %i.au, i1 noundef zeroext %.sink.i) #37
  br label %pm_options_frozen_string_literal_init.exit

pm_read_file.exit.thread:                         ; preds = %RSTRING_PTR.exit, %pm_read_file.exit.thread19
  %i.aw = tail call ptr @rb_errno_ptr() #37
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %pm_read_file.exit, %pm_read_file.exit.thread
  %.014 = phi i32 [ %i.ax, %pm_read_file.exit.thread ], [ 21, %pm_read_file.exit ] ; 2 uses
  br i1 %2, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = tail call ptr @strerror(i32 noundef %.014) #37
  %i.az = tail call i64 @rb_str_buf_new_cstr(ptr noundef %i.ay) #37 ; 3 uses
  %i.ba = tail call i64 @rb_str_cat(i64 noundef %i.az, ptr noundef nonnull @.str.30, i64 noundef 4) #37 ; 0 uses
  %i.bb = tail call i64 @rb_str_append(i64 noundef %i.az, i64 noundef %1) #37 ; 0 uses
  %i.bc = load i64, ptr @rb_eLoadError, align 8, !tbaa !36
  %i.bd = tail call i64 @rb_exc_new_str(i64 noundef %i.bc, i64 noundef %i.az) #37 ; 2 uses
  %i.be = tail call i64 @rb_intern2(ptr noundef nonnull @.str.31, i64 noundef 5) #37
  %i.bf = tail call i64 @rb_ivar_set(i64 noundef %i.bd, i64 noundef %i.be, i64 noundef %1) #37 ; 0 uses
  br label %pm_options_frozen_string_literal_init.exit

bb.t:                                             ; preds = %bb.r
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !74
  %i.bh = and i64 %i.bg, 8192
  %.not.i16 = icmp eq i64 %i.bh, 0
  br i1 %.not.i16, label %RSTRING_PTR.exit17, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %RSTRING_PTR.exit17

RSTRING_PTR.exit17:                               ; preds = %bb.t, %bb.u
  %i.bj = phi ptr [ %i.bi, %bb.u ], [ %i.h, %bb.t ]
  %i.bk = tail call i64 @rb_syserr_new(i32 noundef %.014, ptr noundef %i.bj) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store ptr %i.b, ptr %i.c, align 8, !tbaa !88
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #37, !srcloc !758
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.bm = load volatile i64, ptr %i.bl, align 8, !tbaa !36 ; 0 uses
  br label %pm_options_frozen_string_literal_init.exit

pm_options_frozen_string_literal_init.exit:       ; preds = %.sink.split.i, %bb.o, %bb.s, %RSTRING_PTR.exit17
  %.0 = phi i64 [ %i.bk, %RSTRING_PTR.exit17 ], [ %i.bd, %bb.s ], [ 4, %bb.o ], [ 4, %.sink.split.i ]
  ret i64 %.0
}

declare ptr @rb_errno_ptr() local_unnamed_addr #4

declare i64 @rb_str_buf_new_cstr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #12

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_syserr_new(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @pm_parse_file(ptr noundef initializes((944, 952)) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.c = tail call ptr @rb_enc_get(i64 noundef %1) #37
  %i.d = getelementptr i8, ptr %0, i64 944
  store ptr %i.c, ptr %i.d, align 8, !tbaa !759
  %i.e = getelementptr i8, ptr %0, i64 712        ; 2 uses
  %i.f = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  tail call void @pm_options_filepath_set(ptr noundef %i.e, ptr noundef %i.k) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #37, !srcloc !760
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !36 ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 800
  store i32 3, ptr %i.n, align 8, !tbaa !761
  %i.o = getelementptr i8, ptr %0, i64 816        ; 2 uses
  %i.p = call ptr @pm_string_source(ptr noundef %i.o) #37
  %i.q = call i64 @pm_string_length(ptr noundef %i.o) #37
  call void @pm_parser_init(ptr noundef nonnull %0, ptr noundef %i.p, i64 noundef %i.q, ptr noundef %i.e) #37
  %i.r = call ptr @pm_parse(ptr noundef nonnull %0) #37
  %i.s = call fastcc i64 @pm_parse_process(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef %2)
  %.pr.i = load i64, ptr @pm_parse_file.rbimpl_id, align 8, !tbaa !36 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %RSTRING_PTR.exit, %.lr.ph.i
  %i.t = call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 14) #37 ; 3 uses
  store i64 %i.t, ptr @pm_parse_file.rbimpl_id, align 8, !tbaa !36
  %.not.i19 = icmp eq i64 %i.t, 0
  br i1 %.not.i19, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !230

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %RSTRING_PTR.exit
  %.lcssa.i = phi i64 [ %.pr.i, %RSTRING_PTR.exit ], [ %i.t, %.lr.ph.i ] ; 2 uses
  %i.u = load i64, ptr @rb_cObject, align 8, !tbaa !36
  %i.v = call i32 @rb_const_defined_at(i64 noundef %i.u, i64 noundef %.lcssa.i) #37
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  %i.w = load i64, ptr @rb_cObject, align 8, !tbaa !36
  %i.x = call i64 @rb_const_get_at(i64 noundef %i.w, i64 noundef %.lcssa.i) #37 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.ac = inttoptr i64 %i.x to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !74
  %i.ae = and i64 %i.ad, 31
  %i.af = icmp eq i64 %i.ae, 8
  br i1 %i.af, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ah = getelementptr i8, ptr %0, i64 304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !762 ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !763 ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 624       ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !764
  %i.an = getelementptr i8, ptr %0, i64 608       ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !765 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar  ; 3 uses
  %.not.i20 = icmp eq ptr %i.as, %i.ak            ; 2 uses
  %.neg.i = sext i1 %.not.i20 to i64
  %i.at = add i64 %i.ao, %.neg.i
  %i.au = call i64 @rb_ary_new_capa(i64 noundef %i.at) #37 ; 3 uses
  %i.av = load i64, ptr %i.an, align 8, !tbaa !765
  %.not34.i = icmp eq i64 %i.av, 1
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %0, i64 928
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  br i1 %.not.i20, label %pm_parse_file_script_lines.exit, label %bb.f

end_hunk_1
begin_hunk_2_@pm_compile_destructured_param_writes:bb.a
  %i.dy = call i32 @pm_newline_list_line(ptr noundef %i.dt, ptr noundef %i.dv, i32 noundef %i.dx) #37
  %i.dz = getelementptr i8, ptr %i.dp, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !555
  %i.eb = getelementptr i8, ptr %i.dp, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !704 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = load ptr, ptr %i.dm, align 8, !tbaa !536
  %i.ef = call i32 @rb_st_lookup(ptr noundef %i.ee, i64 noundef %i.ed, ptr noundef nonnull %i.a) #37
  %.not6.i.i71 = icmp eq i32 %i.ef, 0
  br i1 %.not6.i.i71, label %.lr.ph9.i.i74, label %pm_compile_destructured_param_write.exit79

.lr.ph9.i.i74:                                    ; preds = %bb.r, %bb.s
  %.18.i.i75 = phi i32 [ %i.ei, %bb.s ], [ 0, %bb.r ]
  %.1127.i.i76 = phi ptr [ %i.eh, %bb.s ], [ %3, %bb.r ]
  %i.eg = getelementptr i8, ptr %.1127.i.i76, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !497 ; 4 uses
  %.not14.i.i77 = icmp eq ptr %i.eh, null
  br i1 %.not14.i.i77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph9.i.i74
  %i.ei = add i32 %.18.i.i75, 1                   ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eh, i64 128
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !536
  %i.el = call i32 @rb_st_lookup(ptr noundef %i.ek, i64 noundef %i.ed, ptr noundef nonnull %i.a) #37
  %.not.i.i78 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i78, label %.lr.ph9.i.i74, label %pm_compile_destructured_param_write.exit79, !llvm.loop !1248

bb.t:                                             ; preds = %.lr.ph9.i.i74
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef %i.ec) #38
  unreachable

pm_compile_destructured_param_write.exit79:       ; preds = %bb.s, %bb.r
  %.112.lcssa.i.i72 = phi ptr [ %3, %bb.r ], [ %i.eh, %bb.s ]
  %.1.lcssa.i.i73 = phi i32 [ 0, %bb.r ], [ %i.ei, %bb.s ]
  %i.em = getelementptr i8, ptr %.112.lcssa.i.i72, i64 112
  %i.en = load i32, ptr %i.em, align 8, !tbaa !676
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = sub i32 %i.en, %i.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call fastcc void @pm_iseq_add_setlocal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.dy, i32 noundef %i.ea, i32 noundef %i.eq, i32 noundef %.1.lcssa.i.i73)
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  call fastcc void @pm_compile_destructured_param_writes(ptr noundef %0, ptr noundef nonnull %i.dp, ptr noundef %2, ptr noundef %3)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %pm_compile_destructured_param_write.exit79
  %i.er = add nuw i64 %.092, 1                    ; 2 uses
  %i.es = load i64, ptr %i.v, align 8, !tbaa !1558
  %i.et = icmp ult i64 %i.er, %i.es
  br i1 %i.et, label %bb.q, label %.loopexit, !llvm.loop !1562

.loopexit:                                        ; preds = %bb.v, %bb.p, %.thread, %.loopexit81
  ret void
}

declare i64 @rb_enc_interned_str(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare i64 @rb_io_fdopen(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_io_wait(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare i32 @rb_iseq_opt_frozen_string_literal() local_unnamed_addr #4

declare void @pm_options_frozen_string_literal_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @rb_enc_compile_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @rb_enc_compile_warn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @rb_stderr_tty_p() local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #36

declare void @pm_buffer_append_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_parse_errors_format(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 3) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 664        ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !540
  %i.c = getelementptr i8, ptr %0, i64 600        ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !786
  %i.e = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.d, i64 noundef 24) #39 ; 9 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !540  ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !788
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1563 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %.05874.i = load ptr, ptr %i.j, align 8, !tbaa !776 ; 2 uses
  %.not75.i = icmp eq ptr %.05874.i, %i.i
  br i1 %.not75.i, label %pm_parse_errors_format_sort.exit, label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 624
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph77.i
  %.05876.i = phi ptr [ %.05874.i, %.lr.ph77.i ], [ %.058.i, %bb.i ] ; 4 uses
  %i.l = getelementptr i8, ptr %.05876.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1564
  %i.n = tail call i64 @pm_newline_list_line_column(ptr noundef %i.c, ptr noundef %i.m, i32 noundef %i.f) #37 ; 3 uses
  %.sroa.018.0.extract.trunc.i = trunc i64 %i.n to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %i.n, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.o = getelementptr i8, ptr %.05876.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1565
  %i.q = tail call i64 @pm_newline_list_line_column(ptr noundef %i.c, ptr noundef %i.p, i32 noundef %i.f) #37 ; 2 uses
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.q to i32
  %.sroa.417.0.extract.shift.i = lshr i64 %i.q, 32
  %i.r = load i64, ptr %1, align 8, !tbaa !786    ; 5 uses
  %.not78.i = icmp eq i64 %i.r, 0
  br i1 %.not78.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge2.i
  %.05763.i = phi i64 [ %i.ab, %.critedge2.i ], [ 0, %bb.b ] ; 5 uses
  %i.s = getelementptr [24 x i8], ptr %i.e, i64 %.05763.i ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1566
  %.not62.i = icmp eq ptr %i.t, null
  br i1 %.not62.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1568 ; 2 uses
  %i.w = icmp slt i32 %i.v, %.sroa.018.0.extract.trunc.i
  br i1 %i.w, label %.critedge2.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.v, %.sroa.018.0.extract.trunc.i
  br i1 %i.x, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.s, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1569
  %i.aa = icmp ult i32 %i.z, %.sroa.9.0.extract.trunc.i
  br i1 %i.aa, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.e, %bb.c
  %i.ab = add nuw i64 %.05763.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1570

.critedge.i:                                      ; preds = %.critedge2.i, %bb.e, %bb.d, %.lr.ph.i, %bb.b
  %.057.lcssa.i = phi i64 [ 0, %bb.b ], [ %.05763.i, %bb.e ], [ %.05763.i, %bb.d ], [ %i.r, %.critedge2.i ], [ %.05763.i, %.lr.ph.i ] ; 4 uses
  %i.ac = add i64 %.057.lcssa.i, 1                ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.r
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.i
  %i.ae = getelementptr [24 x i8], ptr %i.e, i64 %i.ac
  %i.af = getelementptr [24 x i8], ptr %i.e, i64 %.057.lcssa.i
  %i.ag = xor i64 %.057.lcssa.i, -1
  %i.ah = add i64 %i.r, %i.ag
  %i.ai = mul i64 %i.ah, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ai, i1 noundef false) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.aj = icmp eq i32 %.sroa.018.0.extract.trunc.i, %.sroa.016.0.extract.trunc.i
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !764 ; 2 uses
  %i.al = sub i32 %.sroa.018.0.extract.trunc.i, %i.f ; 2 uses
  %i.am = add i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.aq = sext i32 %i.al to i64
  %i.ar = getelementptr [8 x i8], ptr %i.ak, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = xor i64 %i.as, -1
  %i.au = add i64 %i.ap, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.056.in.i = phi i64 [ %i.au, %bb.h ], [ %.sroa.417.0.extract.shift.i, %bb.g ]
  %.056.i = trunc i64 %.056.in.i to i32           ; 2 uses
  %i.av = icmp eq i32 %.sroa.9.0.extract.trunc.i, %.056.i
  %i.aw = zext i1 %i.av to i32
  %spec.select.i = add i32 %i.aw, %.056.i
  %i.ax = getelementptr [24 x i8], ptr %i.e, i64 %.057.lcssa.i ; 4 uses
  store ptr %.05876.i, ptr %i.ax, align 8, !tbaa !167
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 %spec.select.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.058.i = load ptr, ptr %.05876.i, align 8, !tbaa !776 ; 2 uses
  %.not.i = icmp eq ptr %.058.i, %i.i
  br i1 %.not.i, label %pm_parse_errors_format_sort.exit, label %bb.b, !llvm.loop !1571

pm_parse_errors_format_sort.exit:                 ; preds = %bb.i, %bb.a
  %i.ay = getelementptr i8, ptr %i.e, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1568 ; 3 uses
  %i.ba = load i64, ptr %1, align 8, !tbaa !786   ; 2 uses
  %i.bb = getelementptr [24 x i8], ptr %i.e, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1568 ; 3 uses
  %i.be = icmp slt i32 %i.az, 0
  %i.bf = mul i32 %i.az, -10
  %.0226 = select i1 %i.be, i32 %i.bf, i32 %i.az
  %i.bg = icmp slt i32 %i.bd, 0
  %i.bh = mul i32 %i.bd, -10
  %.0227 = select i1 %i.bg, i32 %i.bh, i32 %i.bd
  %i.bi = tail call i32 @llvm.smax.i32(i32 %.0226, i32 %.0227) ; 4 uses
  %i.bj = icmp slt i32 %i.bi, 10
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %pm_parse_errors_format_sort.exit
  %.not241 = icmp eq i32 %3, 0                    ; 3 uses
  %.str.311..str.308 = select i1 %.not241, ptr @.str.311, ptr @.str.308
  %.str.312..str.309 = select i1 %.not241, ptr @.str.312, ptr @.str.309
  %.str.313..str.310 = select i1 %.not241, ptr @.str.313, ptr @.str.310
  br label %bb.r

bb.k:                                             ; preds = %pm_parse_errors_format_sort.exit
  %i.bk = icmp samesign ult i32 %i.bi, 100
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not240 = icmp eq i32 %3, 0                    ; 3 uses
  %.str.317..str.314 = select i1 %.not240, ptr @.str.317, ptr @.str.314
  %.str.318..str.315 = select i1 %.not240, ptr @.str.318, ptr @.str.315
  %.str.319..str.316 = select i1 %.not240, ptr @.str.319, ptr @.str.316
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %i.bi, 1000
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not239 = icmp eq i32 %3, 0                    ; 3 uses
  %.str.323..str.320 = select i1 %.not239, ptr @.str.323, ptr @.str.320
  %.str.324..str.321 = select i1 %.not239, ptr @.str.324, ptr @.str.321
  %.str.325..str.322 = select i1 %.not239, ptr @.str.325, ptr @.str.322
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bm = icmp samesign ult i32 %i.bi, 10000
  %.not238 = icmp eq i32 %3, 0                    ; 5 uses
  %.str.331..str.328 = select i1 %.not238, ptr @.str.331, ptr @.str.328 ; 2 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.str.329..str.326 = select i1 %.not238, ptr @.str.329, ptr @.str.326
  %.str.330..str.327 = select i1 %.not238, ptr @.str.330, ptr @.str.327
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.str.334..str.332 = select i1 %.not238, ptr @.str.334, ptr @.str.332
  %.str.335..str.333 = select i1 %.not238, ptr @.str.335, ptr @.str.333
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j
  %.sroa.0129.0 = phi ptr [ %.str.311..str.308, %bb.j ], [ %.str.329..str.326, %bb.p ], [ %.str.317..str.314, %bb.l ], [ %.str.334..str.332, %bb.q ], [ %.str.323..str.320, %bb.n ] ; 5 uses
  %.sroa.17.0 = phi ptr [ %.str.312..str.309, %bb.j ], [ %.str.330..str.327, %bb.p ], [ %.str.318..str.315, %bb.l ], [ %.str.335..str.333, %bb.q ], [ %.str.324..str.321, %bb.n ] ; 2 uses
  %.sroa.29.0 = phi ptr [ %.str.313..str.310, %bb.j ], [ %.str.331..str.328, %bb.p ], [ %.str.319..str.316, %bb.l ], [ %.str.331..str.328, %bb.q ], [ %.str.325..str.322, %bb.n ] ; 2 uses
  %i.bn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.17.0) #44
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.29.0) #44
  %i.bp = getelementptr i8, ptr %0, i64 520
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !769 ; 3 uses
  %.not295 = icmp eq i64 %i.ba, 0
  br i1 %.not295, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.r
  %i.br = load i32, ptr %i.a, align 8, !tbaa !540
  %i.bs = add i32 %i.br, -1
  %i.bt = getelementptr i8, ptr %0, i64 608       ; 6 uses
  %i.bu = getelementptr i8, ptr %0, i64 624       ; 7 uses
  %i.bv = getelementptr i8, ptr %0, i64 304       ; 6 uses
  %i.bw = getelementptr i8, ptr %0, i64 312       ; 13 uses
  %i.bx = icmp samesign ugt i32 %3, 1             ; 2 uses
  %i.by = icmp eq i32 %3, 1                       ; 2 uses
  %.not246 = icmp eq i32 %3, 0
  br label %bb.s

._crit_edge294:                                   ; preds = %pm_parse_errors_format_line.exit274, %bb.r
  tail call void @ruby_xfree(ptr noundef nonnull %i.e) #37
  ret void

bb.s:                                             ; preds = %.lr.ph293, %pm_parse_errors_format_line.exit274
  %.0220291 = phi i64 [ 0, %.lr.ph293 ], [ %i.iy, %pm_parse_errors_format_line.exit274 ] ; 6 uses
  %.0221290 = phi i32 [ 0, %.lr.ph293 ], [ %.1222, %pm_parse_errors_format_line.exit274 ]
  %.0223289 = phi i32 [ %i.bs, %.lr.ph293 ], [ %.2225, %pm_parse_errors_format_line.exit274 ] ; 3 uses
  %i.bz = getelementptr [24 x i8], ptr %i.e, i64 %.0220291 ; 7 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8      ; 7 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1568
  %i.cc = sub i32 %i.cb, %.0223289                ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.t, label %pm_parse_errors_format_line.exit264

bb.t:                                             ; preds = %bb.s
  %.not242 = icmp eq i32 %i.cc, 2
  br i1 %.not242, label %pm_parse_errors_format_line.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not243 = icmp ne i64 %.0220291, 0
  %i.ce = icmp samesign ugt i32 %i.cc, 3
  %or.cond = and i1 %.not243, %i.ce
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.29.0, i64 noundef %i.bo) #37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !1568
  %i.cg = add i32 %i.cf, -2                       ; 2 uses
  %.val256 = load i64, ptr %i.bt, align 8, !tbaa !765
  %.val257 = load ptr, ptr %i.bu, align 8, !tbaa !764
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !540
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !762 ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %.val257, i64 %i.cj ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36
  %i.cn = getelementptr i8, ptr %i.ck, i64 %i.cm  ; 2 uses
  %i.co = add i64 %.val256, -1
  %.not.i258 = icmp ugt i64 %i.co, %i.cj
  br i1 %.not.i258, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !763
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cq = getelementptr i8, ptr %i.cl, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.054.i = phi ptr [ %i.cp, %bb.x ], [ %i.cs, %bb.y ] ; 3 uses
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef nonnull %2, ptr noundef nonnull %.sroa.0129.0, i32 noundef %i.cg) #37
  %i.ct = ptrtoint ptr %.054.i to i64
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef %i.cn, i64 noundef %i.cv) #37
  %i.cw = load ptr, ptr %i.bw, align 8, !tbaa !763
  %i.cx = icmp eq ptr %.054.i, %i.cw
  br i1 %i.cx, label %bb.aa, label %pm_parse_errors_format_line.exit

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr i8, ptr %.054.i, i64 -1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !20
  %.not63.i = icmp eq i8 %i.cz, 10
  br i1 %.not63.i, label %pm_parse_errors_format_line.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.346, i64 noundef 1) #37
  br label %pm_parse_errors_format_line.exit

pm_parse_errors_format_line.exit:                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.t
  tail call void @pm_buffer_append_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.336, i64 noundef 2) #37
  %i.da = load i32, ptr %i.ca, align 8, !tbaa !1568
  %i.db = add i32 %i.da, -1                       ; 2 uses
  %.val254 = load i64, ptr %i.bt, align 8, !tbaa !765
  %.val255 = load ptr, ptr %i.bu, align 8, !tbaa !764
  %i.dc = load i32, ptr %i.a, align 8, !tbaa !540
  %i.dd = sub i32 %i.db, %i.dc
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = load ptr, ptr %i.bv, align 8, !tbaa !762 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %.val255, i64 %i.de ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !36
  %i.di = getelementptr i8, ptr %i.df, i64 %i.dh  ; 2 uses
  %i.dj = add i64 %.val254, -1
  %.not.i260 = icmp ugt i64 %i.dj, %i.de
  br i1 %.not.i260, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %pm_parse_errors_format_line.exit
  %i.dk = load ptr, ptr %i.bw, align 8, !tbaa !763
  br label %bb.ae

bb.ad:                                            ; preds = %pm_parse_errors_format_line.exit
  %i.dl = getelementptr i8, ptr %i.dg, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36
  %i.dn = getelementptr i8, ptr %i.df, i64 %i.dm
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
end_hunk_2
