Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit_incdec_obj:bb.a
  %i.my = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 16) #34 ; 2 uses
  %i.mz = sext i32 %i.my to i64
  store i64 %i.mz, ptr %i.ms, align 8, !tbaa !72
  store i32 4, ptr %i.mt, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit665

jit_ADD_OFFSET.exit665:                           ; preds = %bb.ch, %bb.ci
  %.0.i.i662 = phi i32 [ %i.my, %bb.ci ], [ %i.mx, %bb.ch ]
  %i.na = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %.0523, i32 noundef %.0.i.i662) #34
  %i.nb = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.na) #34
  %i.nc = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.mr, i64 noundef 248) #34 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !72
  %i.nf = icmp eq i8 %i.ne, 4
  br i1 %i.nf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %jit_ADD_OFFSET.exit665
  %i.ng = load i64, ptr %i.nc, align 8, !tbaa !72
  %i.nh = trunc i64 %i.ng to i32
  br label %jit_ADD_OFFSET.exit670

bb.ck:                                            ; preds = %jit_ADD_OFFSET.exit665
  %i.ni = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 248) #34 ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  store i64 %i.nj, ptr %i.nc, align 8, !tbaa !72
  store i32 4, ptr %i.nd, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit670

jit_ADD_OFFSET.exit670:                           ; preds = %bb.cj, %bb.ck
  %.0.i.i667 = phi i32 [ %i.ni, %bb.ck ], [ %i.nh, %bb.cj ]
  %i.nk = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.nb, i32 noundef %.0.i.i667) #34
  %i.nl = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.nk) #34 ; 2 uses
  %i.nm = shl nuw nsw i64 %i.mq, 31
  %i.nn = add nsw i64 %i.nm, -85899345920
  %sext = ashr i64 %i.nn, 32
  %i.no = and i64 %sext, -8                       ; 3 uses
  %.not.i671 = icmp eq i64 %i.no, 0
  br i1 %.not.i671, label %jit_ADD_OFFSET.exit676, label %bb.cl

bb.cl:                                            ; preds = %jit_ADD_OFFSET.exit670
  %i.np = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.mr, i64 noundef %i.no) #34 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 8, !tbaa !72
  %i.ns = icmp eq i8 %i.nr, 4
  br i1 %i.ns, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.nt = load i64, ptr %i.np, align 8, !tbaa !72
  %i.nu = trunc i64 %i.nt to i32
  br label %jit_CONST_ADDR.exit.i672

bb.cn:                                            ; preds = %bb.cl
  %i.nv = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.no) #34 ; 2 uses
  %i.nw = sext i32 %i.nv to i64
  store i64 %i.nw, ptr %i.np, align 8, !tbaa !72
  store i32 4, ptr %i.nq, align 8, !tbaa !72
  br label %jit_CONST_ADDR.exit.i672

jit_CONST_ADDR.exit.i672:                         ; preds = %bb.cn, %bb.cm
  %.0.i.i673 = phi i32 [ %i.nv, %bb.cn ], [ %i.nu, %bb.cm ]
  %i.nx = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.nl, i32 noundef %.0.i.i673) #34
  br label %jit_ADD_OFFSET.exit676

jit_ADD_OFFSET.exit676:                           ; preds = %jit_ADD_OFFSET.exit670, %jit_CONST_ADDR.exit.i672
  %.0.i674 = phi i32 [ %i.nx, %jit_CONST_ADDR.exit.i672 ], [ %i.nl, %jit_ADD_OFFSET.exit670 ]
  %i.ny = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i674) #34
  br label %jit_CONST_ADDR.exit660

jit_CONST_ADDR.exit660:                           ; preds = %bb.cf, %bb.ce, %jit_ADD_OFFSET.exit676
  %.0498 = phi i32 [ %i.ny, %jit_ADD_OFFSET.exit676 ], [ %i.mn, %bb.cf ], [ %i.mm, %bb.ce ] ; 2 uses
  %i.nz = load i8, ptr %i.a, align 1, !tbaa !254
  %i.oa = icmp eq i8 %i.nz, 0
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.oc = load i8, ptr %i.ob, align 4, !tbaa !113
  %switch.tableidx = add nsw i8 %i.oc, 124
  %i.od = zext nneg i8 %switch.tableidx to i64    ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  br i1 %i.oa, label %switch.lookup, label %switch.lookup867

switch.lookup:                                    ; preds = %jit_CONST_ADDR.exit660
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zend_jit_incdec_obj, i64 %i.od
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.of = ptrtoint ptr %switch.load to i64        ; 2 uses
  %i.og = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.oe, i64 noundef %i.of) #34 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 8, !tbaa !72
  %i.oj = icmp eq i8 %i.oi, 4
  br i1 %i.oj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %switch.lookup
  %i.ok = load i64, ptr %i.og, align 8, !tbaa !72
  %i.ol = trunc i64 %i.ok to i32
  br label %jit_CONST_FUNC.exit679

bb.cp:                                            ; preds = %switch.lookup
  %i.om = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.of) #34 ; 2 uses
  %i.on = load ptr, ptr %0, align 8, !tbaa !348
  %i.oo = sext i32 %i.om to i64                   ; 2 uses
  %i.op = getelementptr inbounds [16 x i8], ptr %i.on, i64 %i.oo
  store i32 1605, ptr %i.op, align 8, !tbaa !72
  store i64 %i.oo, ptr %i.og, align 8, !tbaa !72
  store i32 4, ptr %i.oh, align 8, !tbaa !72
  br label %jit_CONST_FUNC.exit679

jit_CONST_FUNC.exit679:                           ; preds = %bb.co, %bb.cp
  %.0.i.i677 = phi i32 [ %i.ol, %bb.co ], [ %i.om, %bb.cp ]
  %i.oq = tail call i32 @_ir_CALL_2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i677, i32 noundef %.0.i649, i32 noundef %.0498) #34 ; 0 uses
  br label %.thread758

switch.lookup867:                                 ; preds = %jit_CONST_ADDR.exit660
  %switch.gep868 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zend_jit_incdec_obj.43, i64 %i.od
  %switch.load869 = load ptr, ptr %switch.gep868, align 8
  %i.or = ptrtoint ptr %switch.load869 to i64     ; 2 uses
  %i.os = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.oe, i64 noundef %i.or) #34 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 8, !tbaa !72
  %i.ov = icmp eq i8 %i.ou, 4
  br i1 %i.ov, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %switch.lookup867
  %i.ow = load i64, ptr %i.os, align 8, !tbaa !72
  %i.ox = trunc i64 %i.ow to i32
  br label %jit_CONST_FUNC.exit682

bb.cr:                                            ; preds = %switch.lookup867
  %i.oy = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.or) #34 ; 2 uses
  %i.oz = load ptr, ptr %0, align 8, !tbaa !348
  %i.pa = sext i32 %i.oy to i64                   ; 2 uses
  %i.pb = getelementptr inbounds [16 x i8], ptr %i.oz, i64 %i.pa
  store i32 1605, ptr %i.pb, align 8, !tbaa !72
  store i64 %i.pa, ptr %i.os, align 8, !tbaa !72
  store i32 4, ptr %i.ot, align 8, !tbaa !72
  br label %jit_CONST_FUNC.exit682

jit_CONST_FUNC.exit682:                           ; preds = %bb.cq, %bb.cr
  %.0.i.i680 = phi i32 [ %i.ox, %bb.cq ], [ %i.oy, %bb.cr ]
  %i.pc = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0509)
  %i.pd = tail call i32 @_ir_CALL_3(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i680, i32 noundef %.0.i649, i32 noundef %.0498, i32 noundef %i.pc) #34 ; 0 uses
  br label %.thread758

bb.cs:                                            ; preds = %jit_CONST_ADDR.exit645, %jit_Z_TYPE_ref.exit
  %.1511 = phi i32 [ %i.jp, %jit_CONST_ADDR.exit645 ], [ %i.kc, %jit_Z_TYPE_ref.exit ]
  %i.pe = sext i32 %i.jq to i64
  %i.pf = shl nsw i64 %i.pe, 2
  %i.pg = or disjoint i64 %i.pf, 3
  br label %.thread758.thread

.thread758:                                       ; preds = %jit_CONST_FUNC.exit682, %jit_CONST_FUNC.exit679
  %i.ph = tail call i32 @_ir_END_LIST(ptr noundef nonnull %0, i32 noundef 0) #34 ; 2 uses
  %.pre = load i32, ptr %i.ks, align 8, !tbaa !417
  %.pre824 = and i32 %.pre, 33554431
  %i.pi = icmp eq i32 %.pre824, 0
  br i1 %i.pi, label %.thread758.thread, label %.critedge601.thread

.thread758.thread:                                ; preds = %bb.ca, %bb.cs, %.thread758
  %.3513774 = phi i32 [ %.2512, %.thread758 ], [ %.1511, %bb.cs ], [ %.2512, %bb.ca ] ; 4 uses
  %.0514772 = phi i32 [ %i.ph, %.thread758 ], [ 0, %bb.cs ], [ 0, %bb.ca ] ; 2 uses
  %.0522769 = phi i32 [ %.0.i649, %.thread758 ], [ %i.jq, %bb.cs ], [ %.0.i649, %bb.ca ]
  %.0524768 = phi i1 [ true, %.thread758 ], [ false, %bb.cs ], [ false, %bb.ca ]
  %.0533764 = phi i64 [ %i.kr, %.thread758 ], [ %i.pg, %bb.cs ], [ %i.kr, %bb.ca ] ; 4 uses
  br i1 %i.fr, label %bb.ct, label %.thread778

bb.ct:                                            ; preds = %.thread758.thread
  %i.pj = tail call fastcc i32 @zend_jit_trace_get_exit_point(ptr noundef nonnull %1, i32 noundef 0) ; 4 uses
  %i.pk = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !34
  %.not.i683 = icmp ult i32 %i.pj, %i.pm
  br i1 %.not.i683, label %bb.cv, label %bb.cu, !prof !80

bb.cu:                                            ; preds = %bb.ct
  %i.pn = tail call fastcc ptr @zend_jit_trace_allocate_exit_point(i32 noundef %i.pj)
  br label %zend_jit_trace_get_exit_addr.exit685

bb.cv:                                            ; preds = %bb.ct
  %i.po = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !74
  %i.pp = lshr i32 %i.pj, 5
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pq
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !75
  %i.pt = shl i32 %i.pj, 2
  %i.pu = and i32 %i.pt, 124
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pv
  br label %zend_jit_trace_get_exit_addr.exit685

zend_jit_trace_get_exit_addr.exit685:             ; preds = %bb.cu, %bb.cv
  %.0.i684 = phi ptr [ %i.pn, %bb.cu ], [ %i.pw, %bb.cv ] ; 2 uses
  %.not572.not = icmp eq ptr %.0.i684, null
  br i1 %.not572.not, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %zend_jit_trace_get_exit_addr.exit685
  tail call fastcc void @jit_guard_Z_TYPE(ptr noundef %0, i64 noundef %.0533764, i8 noundef zeroext %13, ptr noundef %.0.i684)
  %i.px = shl nuw i32 1, %i.fo                    ; 2 uses
  %i.py = or i32 %i.px, -1073741824               ; 2 uses
  %i.pz = and i32 %i.px, 1024
  %.not573 = icmp eq i32 %i.pz, 0
  br i1 %.not573, label %bb.df, label %.thread778

.thread778:                                       ; preds = %.thread758.thread, %bb.cw
  %.1494783 = phi i32 [ %i.py, %bb.cw ], [ -1073739778, %.thread758.thread ]
  %i.qa = tail call fastcc i32 @jit_Z_TYPE(ptr noundef nonnull %0, i64 noundef %.0533764)
  %i.qb = tail call i32 @ir_const_u8(ptr noundef nonnull %0, i8 noundef zeroext 10) #34
  %i.qc = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 270, i32 noundef %i.qa, i32 noundef %i.qb) #34
  %i.qd = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.qc) #34 ; 2 uses
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.qd) #34
  %i.qe = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.qd) #34
  %i.qf = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0533764)
  %i.qg = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.qf) #34 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.qi = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.qh, i64 noundef 8) #34 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 8, !tbaa !72
  %i.ql = icmp eq i8 %i.qk, 4
  br i1 %i.ql, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.thread778
  %i.qm = load i64, ptr %i.qi, align 8, !tbaa !72
  %i.qn = trunc i64 %i.qm to i32
  br label %jit_ADD_OFFSET.exit693

bb.cy:                                            ; preds = %.thread778
  %i.qo = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 8) #34 ; 2 uses
  %i.qp = sext i32 %i.qo to i64
  store i64 %i.qp, ptr %i.qi, align 8, !tbaa !72
  store i32 4, ptr %i.qj, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit693

jit_ADD_OFFSET.exit693:                           ; preds = %bb.cx, %bb.cy
  %.0.i.i690 = phi i32 [ %i.qo, %bb.cy ], [ %i.qn, %bb.cx ]
  %i.qq = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.qg, i32 noundef %.0.i.i690) #34
  %i.qr = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.qh, i64 noundef 24) #34 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !72
  %i.qu = icmp eq i8 %i.qt, 4
  br i1 %i.qu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %jit_ADD_OFFSET.exit693
  %i.qv = load i64, ptr %i.qr, align 8, !tbaa !72
  %i.qw = trunc i64 %i.qv to i32
  br label %jit_if_TYPED_REF.exit

bb.da:                                            ; preds = %jit_ADD_OFFSET.exit693
  %i.qx = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 24) #34 ; 2 uses
  %i.qy = sext i32 %i.qx to i64
  store i64 %i.qy, ptr %i.qr, align 8, !tbaa !72
  store i32 4, ptr %i.qs, align 8, !tbaa !72
  br label %jit_if_TYPED_REF.exit

jit_if_TYPED_REF.exit:                            ; preds = %bb.cz, %bb.da
  %.0.i.i.i694 = phi i32 [ %i.qx, %bb.da ], [ %i.qw, %bb.cz ]
  %i.qz = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.qg, i32 noundef %.0.i.i.i694) #34
  %i.ra = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.qz) #34
  %i.rb = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.ra) #34 ; 2 uses
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.rb) #34
  %i.rc = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE_cold(ptr noundef nonnull %0, i32 noundef %i.rb) #34
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.re = load i8, ptr %i.rd, align 4, !tbaa !113
  %i.rf = sext i8 %i.re to i64
  %i.rg = getelementptr [8 x i8], ptr @switch.table.zend_jit_incdec_obj.44, i64 %i.rf
  %switch.gep872 = getelementptr i8, ptr %i.rg, i64 992
  %switch.load873 = load ptr, ptr %switch.gep872, align 8
  tail call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.rh = ptrtoint ptr %switch.load873 to i64     ; 2 uses
  %i.ri = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.qh, i64 noundef %i.rh) #34 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 8, !tbaa !72
  %i.rl = icmp eq i8 %i.rk, 4
  br i1 %i.rl, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %jit_if_TYPED_REF.exit
  %i.rm = load i64, ptr %i.ri, align 8, !tbaa !72
  %i.rn = trunc i64 %i.rm to i32
  br label %jit_CONST_FUNC.exit698

bb.dc:                                            ; preds = %jit_if_TYPED_REF.exit
  %i.ro = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.rh) #34 ; 2 uses
  %i.rp = load ptr, ptr %0, align 8, !tbaa !348
  %i.rq = sext i32 %i.ro to i64                   ; 2 uses
  %i.rr = getelementptr inbounds [16 x i8], ptr %i.rp, i64 %i.rq
  store i32 1605, ptr %i.rr, align 8, !tbaa !72
  store i64 %i.rq, ptr %i.ri, align 8, !tbaa !72
  store i32 4, ptr %i.rj, align 8, !tbaa !72
  br label %jit_CONST_FUNC.exit698

jit_CONST_FUNC.exit698:                           ; preds = %bb.db, %bb.dc
  %.0.i.i696 = phi i32 [ %i.rn, %bb.db ], [ %i.ro, %bb.dc ]
  %i.rs = load i8, ptr %i.a, align 1, !tbaa !254
  %i.rt = icmp eq i8 %i.rs, 0
  br i1 %i.rt, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %jit_CONST_FUNC.exit698
  %i.ru = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0509)
  br label %bb.de

bb.de:                                            ; preds = %jit_CONST_FUNC.exit698, %bb.dd
  %i.rv = phi i32 [ %i.ru, %bb.dd ], [ -1, %jit_CONST_FUNC.exit698 ]
  %i.rw = tail call i32 @_ir_CALL_2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i696, i32 noundef %i.qg, i32 noundef %i.rv) #34 ; 0 uses
  %i.rx = tail call i32 @_ir_END_LIST(ptr noundef nonnull %0, i32 noundef %.0514772) #34
  tail call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.qe, i32 noundef %i.rc) #34
  %i.ry = tail call i32 @_ir_PHI_2(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0522769, i32 noundef %i.qq) #34
  %i.rz = sext i32 %i.ry to i64
  %i.sa = shl nsw i64 %i.rz, 2
  %i.sb = or disjoint i64 %i.sa, 3
  %i.sc = and i32 %.1494783, -1025
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cw
  %.1525 = phi i1 [ true, %bb.de ], [ %.0524768, %bb.cw ] ; 3 uses
  %.1515 = phi i32 [ %i.rx, %bb.de ], [ %.0514772, %bb.cw ] ; 3 uses
  %.2495 = phi i32 [ %i.sc, %bb.de ], [ %i.py, %bb.cw ] ; 4 uses
  %.0492 = phi i64 [ %i.sb, %bb.de ], [ %.0533764, %bb.cw ] ; 11 uses
  %i.sd = and i32 %.2495, 16
  %.not574 = icmp eq i32 %i.sd, 0                 ; 2 uses
  %i.se = and i32 %.2495, 1006
  %.not578789 = icmp eq i32 %i.se, 0              ; 3 uses
  br i1 %.not574, label %.thread785, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  br i1 %.not578789, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sf = tail call fastcc i32 @jit_Z_TYPE(ptr noundef nonnull %0, i64 noundef %.0492)
  %i.sg = tail call i32 @ir_const_u8(ptr noundef nonnull %0, i8 noundef zeroext 4) #34
  %i.sh = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 270, i32 noundef %i.sf, i32 noundef %i.sg) #34
  %i.si = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.sh) #34 ; 2 uses
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.si) #34
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.0490 = phi i32 [ %i.si, %bb.dh ], [ 0, %bb.dg ] ; 2 uses
  %i.sj = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0492) ; 2 uses
  %i.sk = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 11, i32 noundef %i.sj) #34 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.sm = load i8, ptr %i.sl, align 4, !tbaa !113 ; 2 uses
  %i.sn = and i8 %i.sm, -2
  %switch = icmp eq i8 %i.sn, -122
  br i1 %switch, label %bb.dj, label %jit_set_Z_TYPE_INFO.exit

bb.dj:                                            ; preds = %bb.di
  %i.so = load i8, ptr %i.a, align 1, !tbaa !254
  %.not576 = icmp eq i8 %i.so, 0
  br i1 %.not576, label %jit_set_Z_TYPE_INFO.exitthread-pre-split, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sp = and i64 %.0509, 3                       ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 2
  br i1 %i.sq, label %jit_set_Z_LVAL.exit.thread, label %jit_set_Z_LVAL.exit

jit_set_Z_LVAL.exit.thread:                       ; preds = %bb.dk
  tail call fastcc void @zend_jit_def_reg(ptr noundef nonnull %0, i64 noundef %.0509, i32 noundef %i.sk)
  br label %bb.dn

jit_set_Z_LVAL.exit:                              ; preds = %bb.dk
  %i.sr = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0509)
  tail call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %i.sr, i32 noundef %i.sk) #34
  %i.ss = icmp eq i64 %i.sp, 1
  br i1 %i.ss, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %jit_set_Z_LVAL.exit
  %i.st = and i64 %.0509, 252
  %i.su = icmp eq i64 %i.st, 48
  %i.sv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8 ; 2 uses
  %i.sw = icmp ne ptr %i.sv, null
  %or.cond.i699 = select i1 %i.su, i1 %i.sw, i1 false
  br i1 %or.cond.i699, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.sx = lshr i64 %.0509, 12
  %i.sy = add nuw nsw i64 %i.sx, 4294967291
  %i.sz = and i64 %i.sy, 4294967295
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 61
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !72
  %i.td = icmp eq i8 %i.tc, 4
  br i1 %i.td, label %jit_set_Z_TYPE_INFO.exitthread-pre-split, label %bb.dn

bb.dn:                                            ; preds = %jit_set_Z_LVAL.exit.thread, %bb.dm, %bb.dl, %jit_set_Z_LVAL.exit
  %i.te = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef 4) #34
  tail call fastcc void @jit_set_Z_TYPE_INFO_ex(ptr noundef nonnull %0, i64 noundef %.0509, i32 noundef %i.te)
  br label %jit_set_Z_TYPE_INFO.exitthread-pre-split

jit_set_Z_TYPE_INFO.exitthread-pre-split:         ; preds = %bb.dj, %bb.dm, %bb.dn
  %.pr784 = load i8, ptr %i.sl, align 4, !tbaa !113
  br label %jit_set_Z_TYPE_INFO.exit

jit_set_Z_TYPE_INFO.exit:                         ; preds = %jit_set_Z_TYPE_INFO.exitthread-pre-split, %bb.di
  %i.tf = phi i8 [ %.pr784, %jit_set_Z_TYPE_INFO.exitthread-pre-split ], [ %i.sm, %bb.di ]
  %i.tg = tail call i32 @ir_const_i64(ptr noundef nonnull %0, i64 noundef 1) #34
  %i.th = and i8 %i.tf, -3
  %switch.selectcmp = icmp eq i8 %i.th, -124
  %i.ti = select i1 %switch.selectcmp, i32 2857, i32 2858
  %i.tj = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef %i.ti, i32 noundef %i.sk, i32 noundef %i.tg) #34 ; 4 uses
  tail call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %i.sj, i32 noundef %i.tj) #34
  %i.tk = tail call i32 @ir_fold1(ptr noundef nonnull %0, i32 noundef 300, i32 noundef %i.tj) #34
  %i.tl = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.tk) #34 ; 4 uses
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.tl) #34
  %i.tm = load i8, ptr %i.sl, align 4, !tbaa !113
  %i.tn = and i8 %i.tm, -2
end_hunk_0
begin_hunk_1_@zend_jit_assign_obj_op:bb.a
  br label %jit_CONST_ADDR.exit689

bb.cu:                                            ; preds = %bb.cs
  %i.py = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.pr) #34 ; 2 uses
  %i.pz = sext i32 %i.py to i64
  store i64 %i.pz, ptr %i.ps, align 8, !tbaa !72
  store i32 4, ptr %i.pt, align 8, !tbaa !72
  br label %jit_CONST_ADDR.exit689

bb.cv:                                            ; preds = %bb.cr, %jit_CONST_FUNC.exit686
  %i.qa = load i32, ptr %.0545, align 8, !tbaa !416
  %i.qb = zext i32 %i.qa to i64
  %i.qc = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.nr, i64 noundef 16) #34 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 8, !tbaa !72
  %i.qf = icmp eq i8 %i.qe, 4
  br i1 %i.qf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qg = load i64, ptr %i.qc, align 8, !tbaa !72
  %i.qh = trunc i64 %i.qg to i32
  br label %jit_ADD_OFFSET.exit694

bb.cx:                                            ; preds = %bb.cv
  %i.qi = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 16) #34 ; 2 uses
  %i.qj = sext i32 %i.qi to i64
  store i64 %i.qj, ptr %i.qc, align 8, !tbaa !72
  store i32 4, ptr %i.qd, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit694

jit_ADD_OFFSET.exit694:                           ; preds = %bb.cw, %bb.cx
  %.0.i.i691 = phi i32 [ %i.qi, %bb.cx ], [ %i.qh, %bb.cw ]
  %i.qk = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %.0527, i32 noundef %.0.i.i691) #34
  %i.ql = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.qk) #34
  %i.qm = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.nr, i64 noundef 248) #34 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !72
  %i.qp = icmp eq i8 %i.qo, 4
  br i1 %i.qp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %jit_ADD_OFFSET.exit694
  %i.qq = load i64, ptr %i.qm, align 8, !tbaa !72
  %i.qr = trunc i64 %i.qq to i32
  br label %jit_ADD_OFFSET.exit699

bb.cz:                                            ; preds = %jit_ADD_OFFSET.exit694
  %i.qs = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 248) #34 ; 2 uses
  %i.qt = sext i32 %i.qs to i64
  store i64 %i.qt, ptr %i.qm, align 8, !tbaa !72
  store i32 4, ptr %i.qn, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit699

jit_ADD_OFFSET.exit699:                           ; preds = %bb.cy, %bb.cz
  %.0.i.i696 = phi i32 [ %i.qs, %bb.cz ], [ %i.qr, %bb.cy ]
  %i.qu = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.ql, i32 noundef %.0.i.i696) #34
  %i.qv = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.qu) #34 ; 2 uses
  %i.qw = shl nuw nsw i64 %i.qb, 31
  %i.qx = add nsw i64 %i.qw, -85899345920
  %sext = ashr i64 %i.qx, 32
  %i.qy = and i64 %sext, -8                       ; 3 uses
  %.not.i700 = icmp eq i64 %i.qy, 0
  br i1 %.not.i700, label %jit_ADD_OFFSET.exit705, label %bb.da

bb.da:                                            ; preds = %jit_ADD_OFFSET.exit699
  %i.qz = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.nr, i64 noundef %i.qy) #34 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 8, !tbaa !72
  %i.rc = icmp eq i8 %i.rb, 4
  br i1 %i.rc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.rd = load i64, ptr %i.qz, align 8, !tbaa !72
  %i.re = trunc i64 %i.rd to i32
  br label %jit_CONST_ADDR.exit.i701

bb.dc:                                            ; preds = %bb.da
  %i.rf = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.qy) #34 ; 2 uses
  %i.rg = sext i32 %i.rf to i64
  store i64 %i.rg, ptr %i.qz, align 8, !tbaa !72
  store i32 4, ptr %i.ra, align 8, !tbaa !72
  br label %jit_CONST_ADDR.exit.i701

jit_CONST_ADDR.exit.i701:                         ; preds = %bb.dc, %bb.db
  %.0.i.i702 = phi i32 [ %i.rf, %bb.dc ], [ %i.re, %bb.db ]
  %i.rh = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.qv, i32 noundef %.0.i.i702) #34
  br label %jit_ADD_OFFSET.exit705

jit_ADD_OFFSET.exit705:                           ; preds = %jit_ADD_OFFSET.exit699, %jit_CONST_ADDR.exit.i701
  %.0.i703 = phi i32 [ %i.rh, %jit_CONST_ADDR.exit.i701 ], [ %i.qv, %jit_ADD_OFFSET.exit699 ]
  %i.ri = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i703) #34
  br label %jit_CONST_ADDR.exit689

jit_CONST_ADDR.exit689:                           ; preds = %bb.cu, %bb.ct, %jit_ADD_OFFSET.exit705
  %.0494 = phi i32 [ %i.ri, %jit_ADD_OFFSET.exit705 ], [ %i.py, %bb.cu ], [ %i.px, %bb.ct ]
  %i.rj = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.nr, i64 noundef ptrtoint (ptr @zend_jit_assign_op_to_typed_prop to i64)) #34 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 8, !tbaa !72
  %i.rm = icmp eq i8 %i.rl, 4
  br i1 %i.rm, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %jit_CONST_ADDR.exit689
  %i.rn = load i64, ptr %i.rj, align 8, !tbaa !72
  %i.ro = trunc i64 %i.rn to i32
  br label %jit_CONST_FUNC.exit708

bb.de:                                            ; preds = %jit_CONST_ADDR.exit689
  %i.rp = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_jit_assign_op_to_typed_prop to i64)) #34 ; 2 uses
  %i.rq = load ptr, ptr %0, align 8, !tbaa !348
  %i.rr = sext i32 %i.rp to i64                   ; 2 uses
  %i.rs = getelementptr inbounds [16 x i8], ptr %i.rq, i64 %i.rr
  store i32 1605, ptr %i.rs, align 8, !tbaa !72
  store i64 %i.rr, ptr %i.rj, align 8, !tbaa !72
  store i32 4, ptr %i.rk, align 8, !tbaa !72
  br label %jit_CONST_FUNC.exit708

jit_CONST_FUNC.exit708:                           ; preds = %bb.dd, %bb.de
  %.0.i.i706 = phi i32 [ %i.ro, %bb.dd ], [ %i.rp, %bb.de ]
  %i.rt = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.nr, i64 noundef %i.ox) #34 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 8, !tbaa !72
  %i.rw = icmp eq i8 %i.rv, 4
  br i1 %i.rw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %jit_CONST_FUNC.exit708
  %i.rx = load i64, ptr %i.rt, align 8, !tbaa !72
  %i.ry = trunc i64 %i.rx to i32
  br label %.thread765

bb.dg:                                            ; preds = %jit_CONST_FUNC.exit708
  %i.rz = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ox) #34 ; 2 uses
  %i.sa = load ptr, ptr %0, align 8, !tbaa !348
  %i.sb = sext i32 %i.rz to i64                   ; 2 uses
  %i.sc = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %i.sb
  store i32 1605, ptr %i.sc, align 8, !tbaa !72
  store i64 %i.sb, ptr %i.rt, align 8, !tbaa !72
  store i32 4, ptr %i.ru, align 8, !tbaa !72
  br label %.thread765

bb.dh:                                            ; preds = %jit_CONST_ADDR.exit658, %jit_Z_TYPE_ref.exit
  %.1510 = phi i32 [ %i.kr, %jit_CONST_ADDR.exit658 ], [ %i.le, %jit_Z_TYPE_ref.exit ]
  %i.sd = sext i32 %i.ks to i64
  %i.se = shl nsw i64 %i.sd, 2
  %i.sf = or disjoint i64 %i.se, 3
  br label %.thread765.thread

.thread765:                                       ; preds = %bb.dg, %bb.df
  %.0.i.i709 = phi i32 [ %i.ry, %bb.df ], [ %i.rz, %bb.dg ]
  %i.sg = tail call i32 @_ir_CALL_4(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i706, i32 noundef %i.pk, i32 noundef %.0494, i32 noundef %i.nj, i32 noundef %.0.i.i709) #34 ; 0 uses
  %i.sh = tail call i32 @_ir_END_LIST(ptr noundef nonnull %0, i32 noundef %i.pj) #34 ; 2 uses
  %.pre = load i32, ptr %i.lu, align 8, !tbaa !417
  %.pre808 = and i32 %.pre, 33554431
  %i.si = icmp eq i32 %.pre808, 0
  br i1 %i.si, label %.thread765.thread, label %.thread792

.thread765.thread:                                ; preds = %bb.cf, %bb.dh, %.thread765
  %.3512782 = phi i32 [ %.2511, %.thread765 ], [ %.1510, %bb.dh ], [ %.2511, %bb.cf ] ; 2 uses
  %.3516779 = phi i32 [ %i.sh, %.thread765 ], [ %.1514, %bb.dh ], [ %.1514, %bb.cf ] ; 2 uses
  %.1526777 = phi i32 [ %i.pk, %.thread765 ], [ %i.ks, %bb.dh ], [ %.0.i662, %bb.cf ]
  %.2530775 = phi i1 [ true, %.thread765 ], [ %.1529, %bb.dh ], [ %.1529, %bb.cf ]
  %.1544772 = phi i64 [ %i.pn, %.thread765 ], [ %i.sf, %bb.dh ], [ %i.lt, %bb.cf ] ; 4 uses
  br i1 %i.fl, label %bb.di, label %.thread785

bb.di:                                            ; preds = %.thread765.thread
  %i.sj = tail call fastcc i32 @zend_jit_trace_get_exit_point(ptr noundef nonnull %1, i32 noundef 0) ; 4 uses
  %i.sk = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !34
  %.not.i712 = icmp ult i32 %i.sj, %i.sm
  br i1 %.not.i712, label %bb.dk, label %bb.dj, !prof !80

bb.dj:                                            ; preds = %bb.di
  %i.sn = tail call fastcc ptr @zend_jit_trace_allocate_exit_point(i32 noundef %i.sj)
  br label %zend_jit_trace_get_exit_addr.exit714

bb.dk:                                            ; preds = %bb.di
  %i.so = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !74
  %i.sp = lshr i32 %i.sj, 5
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !75
  %i.st = shl i32 %i.sj, 2
  %i.su = and i32 %i.st, 124
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sv
  br label %zend_jit_trace_get_exit_addr.exit714

zend_jit_trace_get_exit_addr.exit714:             ; preds = %bb.dj, %bb.dk
  %.0.i713 = phi ptr [ %i.sn, %bb.dj ], [ %i.sw, %bb.dk ] ; 2 uses
  %.not580.not = icmp eq ptr %.0.i713, null
  br i1 %.not580.not, label %.critedge, label %bb.dl

bb.dl:                                            ; preds = %zend_jit_trace_get_exit_addr.exit714
  tail call fastcc void @jit_guard_Z_TYPE(ptr noundef %0, i64 noundef %.1544772, i8 noundef zeroext %16, ptr noundef %.0.i713)
  %i.sx = shl nuw i32 1, %i.fi                    ; 2 uses
  %i.sy = or i32 %i.sx, -1073741824               ; 2 uses
  %i.sz = and i32 %i.sx, 1024
  %.not581 = icmp eq i32 %i.sz, 0
  br i1 %.not581, label %bb.dw, label %.thread785

.thread785:                                       ; preds = %.thread765.thread, %bb.dl
  %.1485790 = phi i32 [ %i.sy, %bb.dl ], [ -1073739778, %.thread765.thread ]
  %i.ta = tail call fastcc i32 @jit_Z_TYPE(ptr noundef nonnull %0, i64 noundef %.1544772)
  %i.tb = tail call i32 @ir_const_u8(ptr noundef nonnull %0, i8 noundef zeroext 10) #34
  %i.tc = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 270, i32 noundef %i.ta, i32 noundef %i.tb) #34
  %i.td = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.tc) #34 ; 2 uses
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.td) #34
  %i.te = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.td) #34
  %i.tf = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.1544772)
  %i.tg = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.tf) #34 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.ti = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.th, i64 noundef 8) #34 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 8, !tbaa !72
  %i.tl = icmp eq i8 %i.tk, 4
  br i1 %i.tl, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.thread785
  %i.tm = load i64, ptr %i.ti, align 8, !tbaa !72
  %i.tn = trunc i64 %i.tm to i32
  br label %jit_ADD_OFFSET.exit722

bb.dn:                                            ; preds = %.thread785
  %i.to = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 8) #34 ; 2 uses
  %i.tp = sext i32 %i.to to i64
  store i64 %i.tp, ptr %i.ti, align 8, !tbaa !72
  store i32 4, ptr %i.tj, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit722

jit_ADD_OFFSET.exit722:                           ; preds = %bb.dm, %bb.dn
  %.0.i.i719 = phi i32 [ %i.to, %bb.dn ], [ %i.tn, %bb.dm ]
  %i.tq = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.tg, i32 noundef %.0.i.i719) #34
  %i.tr = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.th, i64 noundef 24) #34 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 2 uses
  %i.tt = load i8, ptr %i.ts, align 8, !tbaa !72
  %i.tu = icmp eq i8 %i.tt, 4
  br i1 %i.tu, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %jit_ADD_OFFSET.exit722
  %i.tv = load i64, ptr %i.tr, align 8, !tbaa !72
  %i.tw = trunc i64 %i.tv to i32
  br label %jit_if_TYPED_REF.exit725

bb.dp:                                            ; preds = %jit_ADD_OFFSET.exit722
  %i.tx = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 24) #34 ; 2 uses
  %i.ty = sext i32 %i.tx to i64
  store i64 %i.ty, ptr %i.tr, align 8, !tbaa !72
  store i32 4, ptr %i.ts, align 8, !tbaa !72
  br label %jit_if_TYPED_REF.exit725

jit_if_TYPED_REF.exit725:                         ; preds = %bb.do, %bb.dp
  %.0.i.i.i723 = phi i32 [ %i.tx, %bb.dp ], [ %i.tw, %bb.do ]
  %i.tz = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.tg, i32 noundef %.0.i.i.i723) #34
  %i.ua = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.tz) #34
  %i.ub = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.ua) #34 ; 2 uses
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.ub) #34
  %i.uc = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE_cold(ptr noundef nonnull %0, i32 noundef %i.ub) #34
  tail call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.fn, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %jit_if_TYPED_REF.exit725
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !72
  %i.uf = zext i32 %i.ue to i64
  %i.ug = shl nuw nsw i64 %i.uf, 8
  %i.uh = or disjoint i64 %i.ug, 49               ; 2 uses
  tail call fastcc void @zend_jit_spill_store_inv(ptr noundef nonnull %0, i64 noundef %8, i64 noundef %i.uh, i32 noundef %7)
  br label %bb.dr

bb.dr:                                            ; preds = %jit_if_TYPED_REF.exit725, %bb.dq
  %.sink840 = phi i64 [ %i.uh, %bb.dq ], [ %8, %jit_if_TYPED_REF.exit725 ]
  %i.ui = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.sink840)
  %i.uj = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.th, i64 noundef ptrtoint (ptr @zend_jit_assign_op_to_typed_ref to i64)) #34 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8 ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 8, !tbaa !72
  %i.um = icmp eq i8 %i.ul, 4
  br i1 %i.um, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.un = load i64, ptr %i.uj, align 8, !tbaa !72
  %i.uo = trunc i64 %i.un to i32
  br label %jit_CONST_FUNC.exit728

bb.dt:                                            ; preds = %bb.dr
  %i.up = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_jit_assign_op_to_typed_ref to i64)) #34 ; 2 uses
  %i.uq = load ptr, ptr %0, align 8, !tbaa !348
  %i.ur = sext i32 %i.up to i64                   ; 2 uses
  %i.us = getelementptr inbounds [16 x i8], ptr %i.uq, i64 %i.ur
  store i32 1605, ptr %i.us, align 8, !tbaa !72
  store i64 %i.ur, ptr %i.uj, align 8, !tbaa !72
  store i32 4, ptr %i.uk, align 8, !tbaa !72
  br label %jit_CONST_FUNC.exit728

jit_CONST_FUNC.exit728:                           ; preds = %bb.ds, %bb.dt
  %.0.i.i726 = phi i32 [ %i.uo, %bb.ds ], [ %i.up, %bb.dt ]
  %i.ut = ptrtoint ptr %i.c to i64                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.uu = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.th, i64 noundef %i.ut) #34 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8 ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 8, !tbaa !72
  %i.ux = icmp eq i8 %i.uw, 4
  br i1 %i.ux, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %jit_CONST_FUNC.exit728
  %i.uy = load i64, ptr %i.uu, align 8, !tbaa !72
  %i.uz = trunc i64 %i.uy to i32
  br label %jit_CONST_FUNC.exit731

bb.dv:                                            ; preds = %jit_CONST_FUNC.exit728
  %i.va = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ut) #34 ; 2 uses
  %i.vb = load ptr, ptr %0, align 8, !tbaa !348
  %i.vc = sext i32 %i.va to i64                   ; 2 uses
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vb, i64 %i.vc
  store i32 1605, ptr %i.vd, align 8, !tbaa !72
  store i64 %i.vc, ptr %i.uu, align 8, !tbaa !72
  store i32 4, ptr %i.uv, align 8, !tbaa !72
  br label %jit_CONST_FUNC.exit731

jit_CONST_FUNC.exit731:                           ; preds = %bb.du, %bb.dv
  %.0.i.i729 = phi i32 [ %i.uz, %bb.du ], [ %i.va, %bb.dv ]
  %i.ve = tail call i32 @_ir_CALL_3(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i726, i32 noundef %i.tg, i32 noundef %i.ui, i32 noundef %.0.i.i729) #34 ; 0 uses
  %i.vf = tail call i32 @_ir_END_LIST(ptr noundef nonnull %0, i32 noundef %.3516779) #34
  tail call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.te, i32 noundef %i.uc) #34
  %i.vg = tail call i32 @_ir_PHI_2(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.1526777, i32 noundef %i.tq) #34
  %i.vh = and i32 %.1485790, -1025
  %i.vi = sext i32 %i.vg to i64
  %i.vj = shl nsw i64 %i.vi, 2
  %i.vk = or disjoint i64 %i.vj, 3
  br label %bb.dw

bb.dw:                                            ; preds = %jit_CONST_FUNC.exit731, %bb.dl
  %.3531 = phi i1 [ true, %jit_CONST_FUNC.exit731 ], [ %.2530775, %bb.dl ] ; 6 uses
  %.5518 = phi i32 [ %i.vf, %jit_CONST_FUNC.exit731 ], [ %.3516779, %bb.dl ] ; 2 uses
  %.1489 = phi i64 [ %i.vk, %jit_CONST_FUNC.exit731 ], [ %.1544772, %bb.dl ] ; 6 uses
  %.3487 = phi i32 [ %i.vh, %jit_CONST_FUNC.exit731 ], [ %i.sy, %bb.dl ] ; 11 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !296 ; 2 uses
  %i.vo = and i8 %i.vn, 6
  %.not582 = icmp eq i8 %i.vo, 0
  %spec.store.select = select i1 %.not582, i8 %i.vn, i8 8 ; 5 uses
  %i.vp = load i32, ptr %i.a, align 4, !tbaa !356 ; 4 uses
  switch i32 %i.vp, label %bb.el [
    i32 1, label %bb.dx
    i32 2, label %bb.dx
    i32 3, label %bb.dx
    i32 9, label %bb.ea
    i32 10, label %bb.ea
    i32 11, label %bb.ea
    i32 6, label %bb.ec
    i32 7, label %bb.ec
    i32 5, label %bb.ef
    i32 8, label %bb.ek
  ]

bb.dx:                                            ; preds = %bb.dw, %bb.dw, %bb.dw
  %i.vq = or i32 %.3487, %7
  %i.vr = and i32 %i.vq, 960
  %or.cond610 = icmp eq i32 %i.vr, 0
  br i1 %or.cond610, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not597 = icmp ne i32 %i.vp, 1
  %i.vs = and i32 %.3487, 1022
  %.not598 = icmp ne i32 %i.vs, 128
  %or.cond611.not807 = or i1 %.not598, %.not597
  %i.vt = and i32 %7, 1022
  %i.vu = icmp eq i32 %i.vt, 128
  %or.cond613 = or i1 %i.vu, %or.cond611.not807
  %spec.select619 = or i1 %or.cond613, %.3531
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.4532 = phi i1 [ %.3531, %bb.dx ], [ %spec.select619, %bb.dy ]
  %i.vv = trunc nuw nsw i32 %i.vp to i8
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vy = load i32, ptr %i.vw, align 8
  %i.vz = load i32, ptr %i.vx, align 8
  %i.wa = tail call fastcc i32 @zend_jit_math_helper(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.vv, i8 noundef zeroext 8, i32 %i.vy, i64 noundef %.1489, i32 noundef %.3487, i8 noundef zeroext %spec.store.select, i32 %i.vz, i64 noundef %8, i32 noundef %7, i32 noundef 0, i64 noundef %.1489, i32 noundef -1073739778, i32 noundef %.3487, i32 noundef 1, i32 noundef 0)
  %.not599 = icmp eq i32 %i.wa, 0
  br i1 %.not599, label %.critedge, label %bb.em

bb.ea:                                            ; preds = %bb.dw, %bb.dw, %bb.dw
  %i.wb = or i32 %.3487, %7
  %i.wc = and i32 %i.wb, 992
  %or.cond614 = icmp eq i32 %i.wc, 0
  br i1 %or.cond614, label %bb.ej, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wd = and i32 %.3487, 1022
  %.not593 = icmp ne i32 %i.wd, 64
  %i.we = and i32 %7, 1022
  %.not594 = icmp ne i32 %i.we, 64
  %or.cond615.not = or i1 %.not594, %.not593
  %spec.select620 = or i1 %or.cond615.not, %.3531
  br label %bb.ej

bb.ec:                                            ; preds = %bb.dw, %bb.dw
  %i.wf = or i32 %.3487, %7
end_hunk_1
begin_hunk_2_@zend_jit_do_fcall:bb.a
bb.lw:                                            ; preds = %bb.lv
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.awg = ptrtoint ptr %i.awf to i64             ; 2 uses
  %i.awh = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.gg, i64 noundef %i.awg) #34 ; 3 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 8 ; 2 uses
  %i.awj = load i8, ptr %i.awi, align 8, !tbaa !72
  %i.awk = icmp eq i8 %i.awj, 4
  br i1 %i.awk, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.awl = load i64, ptr %i.awh, align 8, !tbaa !72
  %i.awm = trunc i64 %i.awl to i32
  br label %.sink.split

bb.ly:                                            ; preds = %bb.lw
  %i.awn = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.awg) #34 ; 2 uses
  %i.awo = sext i32 %i.awn to i64
  store i64 %i.awo, ptr %i.awh, align 8, !tbaa !72
  store i32 4, ptr %i.awi, align 8, !tbaa !72
  br label %.sink.split

bb.lz:                                            ; preds = %bb.lv
  br i1 %i.awd, label %.thread1218, label %bb.me

.thread1218:                                      ; preds = %bb.lu, %bb.lz
  %i.awp = load i8, ptr %5, align 8, !tbaa !72
  %i.awq = icmp eq i8 %i.awp, 8
  br i1 %i.awq, label %bb.ma, label %bb.me

bb.ma:                                            ; preds = %.thread1218
  %i.awr = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.aws = load i8, ptr %i.awr, align 2, !tbaa !72
  %i.awt = icmp ugt i8 %i.aws, 4
  br i1 %i.awt, label %bb.mb, label %bb.me

bb.mb:                                            ; preds = %bb.ma
  %i.awu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.awv = ptrtoint ptr %i.awu to i64             ; 2 uses
  %i.aww = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.gg, i64 noundef %i.awv) #34 ; 3 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 8 ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 8, !tbaa !72
  %i.awz = icmp eq i8 %i.awy, 4
  br i1 %i.awz, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.axa = load i64, ptr %i.aww, align 8, !tbaa !72
  %i.axb = trunc i64 %i.axa to i32
  br label %.sink.split

bb.md:                                            ; preds = %bb.mb
  %i.axc = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.awv) #34 ; 2 uses
  %i.axd = sext i32 %i.axc to i64
  store i64 %i.axd, ptr %i.aww, align 8, !tbaa !72
  store i32 4, ptr %i.awx, align 8, !tbaa !72
  br label %.sink.split

.sink.split:                                      ; preds = %bb.md, %bb.mc, %bb.ly, %bb.lx
  %.0.i.i1157.sink = phi i32 [ %i.awm, %bb.lx ], [ %i.awn, %bb.ly ], [ %i.axc, %bb.md ], [ %i.axb, %bb.mc ]
  call void @_ir_RSTORE(ptr noundef nonnull %0, i32 noundef 13, i32 noundef %.0.i.i1157.sink) #34
  br label %bb.me

bb.me:                                            ; preds = %.sink.split, %bb.lz, %.thread1218, %bb.ma, %.thread1210
  %.37511204 = phi i32 [ %.375112051234, %bb.lz ], [ %.375112051234, %.thread1218 ], [ %.375112051234, %bb.ma ], [ %.37511205.ph, %.thread1210 ], [ %.375112051234, %.sink.split ] ; 2 uses
  %.not865 = icmp eq i32 %.37511204, 0
  br i1 %.not865, label %.critedge882, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.axe = call i32 @_ir_END(ptr noundef nonnull %0) #34
  call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.axe, i32 noundef %.37511204) #34
  br label %.critedge882

.critedge882:                                     ; preds = %bb.hd, %.thread1198, %zend_jit_trace_get_exit_addr.exit, %zend_jit_trace_get_exit_addr.exit1154, %bb.me, %bb.mf
  %.6 = phi i32 [ 0, %zend_jit_trace_get_exit_addr.exit ], [ 1, %bb.me ], [ 1, %bb.mf ], [ 0, %zend_jit_trace_get_exit_addr.exit1154 ], [ 1, %.thread1198 ], [ 1, %bb.hd ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @zend_jit_may_skip_comparison(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !296
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !72
  %i.j = icmp eq i8 %i.i, 4
  br i1 %i.j, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.g, align 8, !tbaa !72
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !342  ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %_ssa_op1_info.exit187.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %1, i64 -36 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %1, i64 -24
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = icmp eq i32 %i.r, %i.n
  br i1 %i.s, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !253
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 36
  %i.z = getelementptr inbounds [8 x i8], ptr %3, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !113
  %i.ad = add i8 %i.ac, -34
  %or.cond8 = icmp ult i8 %i.ad, 4
  br i1 %or.cond8, label %bb.g, label %_ssa_op1_info.exit187.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 29
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !296
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !111
  %i.aj = and i32 %i.ai, 33554432
  %.not9.i190 = icmp eq i32 %i.aj, 0
  br i1 %.not9.i190, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !72
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.aa, i64 %i.am
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !354
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !72
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.as
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = phi ptr [ %i.an, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.aw, label %bb.m [
    i8 11, label %_ssa_op1_info.exit191
    i8 7, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.au) #34
  br label %_ssa_op1_info.exit191

bb.m:                                             ; preds = %bb.k
  %i.ay = zext nneg i8 %i.aw to i32
  %i.az = shl nuw i32 1, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !72
  %.not.i204 = icmp eq i8 %i.bb, 0
  br i1 %.not.i204, label %bb.n, label %_ssa_op1_info.exit191

bb.n:                                             ; preds = %bb.m
  %i.bc = icmp eq i8 %i.aw, 6
  %spec.select.i206 = select i1 %i.bc, i32 -2147483584, i32 %i.az
  br label %_ssa_op1_info.exit191

bb.o:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !236 ; 2 uses
  %.not.i188 = icmp eq ptr %i.be, null
  br i1 %.not.i188, label %_ssa_op1_info.exit191, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.p, align 4, !tbaa !341 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.q, label %_ssa_op1_info.exit191

bb.q:                                             ; preds = %bb.p
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !346
  br label %_ssa_op1_info.exit191

_ssa_op1_info.exit191:                            ; preds = %bb.m, %bb.k, %bb.o, %bb.q, %bb.p, %bb.n, %bb.l
  %.0.i189 = phi i32 [ %spec.select.i206, %bb.n ], [ -521143298, %bb.k ], [ %i.ax, %bb.l ], [ -486539265, %bb.o ], [ %i.bj, %bb.q ], [ -486539265, %bb.p ], [ %i.az, %bb.m ]
  %i.bk = and i32 %.0.i189, 2031
  %i.bl = icmp eq i32 %i.bk, 0
  br label %_ssa_op1_info.exit187.thread

bb.r:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !335
  %i.bo = icmp eq i32 %i.bn, %i.n
  br i1 %i.bo, label %bb.s, label %_ssa_op1_info.exit187.thread

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !253
  %i.br = ptrtoint ptr %i.p to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 36
  %i.bv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !234 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !113
  %i.bz = add i8 %i.by, -1
  %or.cond11 = icmp ult i8 %i.bz, 2
  br i1 %or.cond11, label %bb.t, label %_ssa_op1_info.exit187.thread

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 29
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !296
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !111
  %i.cf = and i32 %i.ce, 33554432
  %.not9.i186 = icmp eq i32 %i.cf, 0
  br i1 %.not9.i186, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !72
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 %i.ci
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !354
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !72
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.co
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cq = phi ptr [ %i.cj, %bb.v ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.cs, label %bb.z [
    i8 11, label %_ssa_op1_info.exit187.thread
    i8 7, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.ct = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.cq) #34
  br label %_ssa_op1_info.exit187

bb.z:                                             ; preds = %bb.x
  %i.cu = zext nneg i8 %i.cs to i32
  %i.cv = shl nuw i32 1, %i.cu                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !72
  %.not.i208 = icmp eq i8 %i.cx, 0
  br i1 %.not.i208, label %bb.aa, label %_ssa_op1_info.exit187

bb.aa:                                            ; preds = %bb.z
  %i.cy = icmp eq i8 %i.cs, 6
  %spec.select.i210 = select i1 %i.cy, i32 -2147483584, i32 %i.cv
  br label %_ssa_op1_info.exit187

bb.ab:                                            ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !236 ; 2 uses
  %.not.i184 = icmp eq ptr %i.da, null
  br i1 %.not.i184, label %_ssa_op1_info.exit187.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i32, ptr %i.p, align 4, !tbaa !341 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %bb.ad, label %_ssa_op1_info.exit187.thread

bb.ad:                                            ; preds = %bb.ac
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.da, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 8, !tbaa !346
  br label %_ssa_op1_info.exit187

_ssa_op1_info.exit187:                            ; preds = %bb.z, %bb.ad, %bb.aa, %bb.y
  %.0.i185 = phi i32 [ %spec.select.i210, %bb.aa ], [ %i.df, %bb.ad ], [ %i.ct, %bb.y ], [ %i.cv, %bb.z ]
  %i.dg = and i32 %.0.i185, 2031
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ae, label %_ssa_op1_info.exit187.thread

bb.ae:                                            ; preds = %_ssa_op1_info.exit187
  %i.di = getelementptr inbounds nuw i8, ptr %i.bw, i64 30
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !355
  %i.dk = icmp eq i8 %i.dj, 1
  br i1 %i.dk, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !111
  %i.dn = and i32 %i.dm, 33554432
  %.not9.i197 = icmp eq i32 %i.dn, 0
  br i1 %.not9.i197, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !72
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %i.bw, i64 %i.dq
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !354
  %i.du = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !72
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dw
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %i.dx, %bb.ah ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.ea, label %bb.ak [
    i8 11, label %_ssa_op2_info.exit198
    i8 7, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eb = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.dy) #34
  br label %_ssa_op2_info.exit198

bb.ak:                                            ; preds = %bb.ai
  %i.ec = zext nneg i8 %i.ea to i32
  %i.ed = shl nuw i32 1, %i.ec                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !72
  %.not.i199 = icmp eq i8 %i.ef, 0
  br i1 %.not.i199, label %bb.al, label %_ssa_op2_info.exit198

bb.al:                                            ; preds = %bb.ak
  %i.eg = icmp eq i8 %i.ea, 6
  %spec.select.i = select i1 %i.eg, i32 -2147483584, i32 %i.ed
  br label %_ssa_op2_info.exit198

bb.am:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !236 ; 2 uses
  %.not.i195 = icmp eq ptr %i.ei, null
  br i1 %.not.i195, label %_ssa_op2_info.exit198, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !342 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.ao, label %_ssa_op2_info.exit198

bb.ao:                                            ; preds = %bb.an
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [40 x i8], ptr %i.ei, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !346
  br label %_ssa_op2_info.exit198

_ssa_op2_info.exit198:                            ; preds = %bb.ak, %bb.ai, %bb.am, %bb.ao, %bb.an, %bb.al, %bb.aj
  %.0.i196 = phi i32 [ %spec.select.i, %bb.al ], [ -521143298, %bb.ai ], [ %i.eb, %bb.aj ], [ -486539265, %bb.am ], [ %i.eo, %bb.ao ], [ -486539265, %bb.an ], [ %i.ed, %bb.ak ]
  %i.ep = and i32 %.0.i196, 2031
  %i.eq = icmp eq i32 %i.ep, 0
  br label %_ssa_op1_info.exit187.thread

bb.ap:                                            ; preds = %bb.c, %bb.b, %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.es = load i8, ptr %i.er, align 2, !tbaa !355
  %i.et = icmp eq i8 %i.es, 1
  br i1 %i.et, label %bb.aq, label %bb.ce

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !72
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !72
  %i.fa = icmp eq i8 %i.ez, 4
  br i1 %i.fa, label %bb.ar, label %bb.ce

bb.ar:                                            ; preds = %bb.aq
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !72
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.as, label %bb.ce

bb.as:                                            ; preds = %bb.ar
  %i.fd = load i32, ptr %1, align 4, !tbaa !341   ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, -1
  br i1 %i.fe, label %bb.at, label %_ssa_op1_info.exit187.thread

bb.at:                                            ; preds = %bb.as
  %i.ff = getelementptr inbounds i8, ptr %1, i64 -36 ; 4 uses
  %i.fg = getelementptr inbounds i8, ptr %1, i64 -24
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !353
  %i.fi = icmp eq i32 %i.fh, %i.fd
  br i1 %i.fi, label %bb.au, label %bb.bg

bb.au:                                            ; preds = %bb.at
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !253
  %i.fl = ptrtoint ptr %i.ff to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 36
  %i.fp = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !234 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  %i.fs = load i8, ptr %i.fr, align 4, !tbaa !113
  %i.ft = add i8 %i.fs, -34
  %or.cond20 = icmp ult i8 %i.ft, 4
  br i1 %or.cond20, label %bb.av, label %_ssa_op1_info.exit187.thread

bb.av:                                            ; preds = %bb.au
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 29
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !296
  %i.fw = icmp eq i8 %i.fv, 1
  br i1 %i.fw, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !111
  %i.fz = and i32 %i.fy, 33554432
  %.not9.i182 = icmp eq i32 %i.fz, 0
  br i1 %.not9.i182, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !72
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %i.fq, i64 %i.gc
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !354
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !72
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.gi
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gk = phi ptr [ %i.gd, %bb.ax ], [ %i.gj, %bb.ay ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.gm, label %bb.bb [
    i8 11, label %_ssa_op1_info.exit183
    i8 7, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gn = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.gk) #34
  br label %_ssa_op1_info.exit183

bb.bb:                                            ; preds = %bb.az
  %i.go = zext nneg i8 %i.gm to i32
  %i.gp = shl nuw i32 1, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 9
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !72
  %.not.i212 = icmp eq i8 %i.gr, 0
  br i1 %.not.i212, label %bb.bc, label %_ssa_op1_info.exit183

bb.bc:                                            ; preds = %bb.bb
  %i.gs = icmp eq i8 %i.gm, 6
  %spec.select.i214 = select i1 %i.gs, i32 -2147483584, i32 %i.gp
  br label %_ssa_op1_info.exit183

bb.bd:                                            ; preds = %bb.av
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !236 ; 2 uses
  %.not.i180 = icmp eq ptr %i.gu, null
  br i1 %.not.i180, label %_ssa_op1_info.exit183, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gv = load i32, ptr %i.ff, align 4, !tbaa !341 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  br i1 %i.gw, label %bb.bf, label %_ssa_op1_info.exit183

bb.bf:                                            ; preds = %bb.be
  %i.gx = zext nneg i32 %i.gv to i64
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gu, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !346
  br label %_ssa_op1_info.exit183

_ssa_op1_info.exit183:                            ; preds = %bb.bb, %bb.az, %bb.bd, %bb.bf, %bb.be, %bb.bc, %bb.ba
  %.0.i181 = phi i32 [ %spec.select.i214, %bb.bc ], [ -521143298, %bb.az ], [ %i.gn, %bb.ba ], [ -486539265, %bb.bd ], [ %i.gz, %bb.bf ], [ -486539265, %bb.be ], [ %i.gp, %bb.bb ]
  %i.ha = and i32 %.0.i181, 2031
  %i.hb = icmp eq i32 %i.ha, 0
  br label %_ssa_op1_info.exit187.thread

bb.bg:                                            ; preds = %bb.at
  %i.hc = getelementptr inbounds i8, ptr %1, i64 -16
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !335
  %i.he = icmp eq i32 %i.hd, %i.fd
  br i1 %i.he, label %bb.bh, label %_ssa_op1_info.exit187.thread

bb.bh:                                            ; preds = %bb.bg
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !253
  %i.hh = ptrtoint ptr %i.ff to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 36
  %i.hl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !234 ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  %i.ho = load i8, ptr %i.hn, align 4, !tbaa !113
  %i.hp = add i8 %i.ho, -1
  %or.cond23 = icmp ult i8 %i.hp, 2
  br i1 %or.cond23, label %bb.bi, label %_ssa_op1_info.exit187.thread

bb.bi:                                            ; preds = %bb.bh
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 29
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !296
  %i.hs = icmp eq i8 %i.hr, 1
  br i1 %i.hs, label %bb.bj, label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !111
  %i.hv = and i32 %i.hu, 33554432
  %.not9.i = icmp eq i32 %i.hv, 0
  br i1 %.not9.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !72
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds i8, ptr %i.hm, i64 %i.hy
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !354
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !72
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ie
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ig = phi ptr [ %i.hz, %bb.bk ], [ %i.if, %bb.bl ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.ii, label %bb.bo [
    i8 11, label %_ssa_op1_info.exit187.thread
    i8 7, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.ij = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.ig) #34
  br label %_ssa_op1_info.exit

bb.bo:                                            ; preds = %bb.bm
  %i.ik = zext nneg i8 %i.ii to i32
  %i.il = shl nuw i32 1, %i.ik                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 9
  %i.in = load i8, ptr %i.im, align 1, !tbaa !72
  %.not.i216 = icmp eq i8 %i.in, 0
  br i1 %.not.i216, label %bb.bp, label %_ssa_op1_info.exit

bb.bp:                                            ; preds = %bb.bo
  %i.io = icmp eq i8 %i.ii, 6
  %spec.select.i218 = select i1 %i.io, i32 -2147483584, i32 %i.il
  br label %_ssa_op1_info.exit

bb.bq:                                            ; preds = %bb.bi
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !236 ; 2 uses
  %.not.i = icmp eq ptr %i.iq, null
  br i1 %.not.i, label %_ssa_op1_info.exit187.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ir = load i32, ptr %i.ff, align 4, !tbaa !341 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, -1
  br i1 %i.is, label %bb.bs, label %_ssa_op1_info.exit187.thread

bb.bs:                                            ; preds = %bb.br
  %i.it = zext nneg i32 %i.ir to i64
  %i.iu = getelementptr inbounds nuw [40 x i8], ptr %i.iq, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !346
  br label %_ssa_op1_info.exit

_ssa_op1_info.exit:                               ; preds = %bb.bo, %bb.bs, %bb.bp, %bb.bn
  %.0.i = phi i32 [ %spec.select.i218, %bb.bp ], [ %i.iv, %bb.bs ], [ %i.ij, %bb.bn ], [ %i.il, %bb.bo ]
  %i.iw = and i32 %.0.i, 2031
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bt, label %_ssa_op1_info.exit187.thread

bb.bt:                                            ; preds = %_ssa_op1_info.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 30
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !355
  %i.ja = icmp eq i8 %i.iz, 1
  br i1 %i.ja, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !111
  %i.jd = and i32 %i.jc, 33554432
  %.not9.i194 = icmp eq i32 %i.jd, 0
  br i1 %.not9.i194, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.je = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !72
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds i8, ptr %i.hm, i64 %i.jg
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !354
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !72
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jm
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.jo = phi ptr [ %i.jh, %bb.bv ], [ %i.jn, %bb.bw ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.jq, label %bb.bz [
    i8 11, label %_ssa_op2_info.exit
    i8 7, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx
  %i.jr = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.jo) #34
  br label %_ssa_op2_info.exit

bb.bz:                                            ; preds = %bb.bx
  %i.js = zext nneg i8 %i.jq to i32
  %i.jt = shl nuw i32 1, %i.js                    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 9
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !72
  %.not.i200 = icmp eq i8 %i.jv, 0
  br i1 %.not.i200, label %bb.ca, label %_ssa_op2_info.exit

bb.ca:                                            ; preds = %bb.bz
  %i.jw = icmp eq i8 %i.jq, 6
  %spec.select.i202 = select i1 %i.jw, i32 -2147483584, i32 %i.jt
  br label %_ssa_op2_info.exit

bb.cb:                                            ; preds = %bb.bt
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !236 ; 2 uses
  %.not.i192 = icmp eq ptr %i.jy, null
  br i1 %.not.i192, label %_ssa_op2_info.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jz = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !342 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, -1
  br i1 %i.kb, label %bb.cd, label %_ssa_op2_info.exit

bb.cd:                                            ; preds = %bb.cc
  %i.kc = zext nneg i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [40 x i8], ptr %i.jy, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !346
  br label %_ssa_op2_info.exit

_ssa_op2_info.exit:                               ; preds = %bb.bz, %bb.bx, %bb.cb, %bb.cd, %bb.cc, %bb.ca, %bb.by
  %.0.i193 = phi i32 [ %spec.select.i202, %bb.ca ], [ -521143298, %bb.bx ], [ %i.jr, %bb.by ], [ -486539265, %bb.cb ], [ %i.ke, %bb.cd ], [ -486539265, %bb.cc ], [ %i.jt, %bb.bz ]
  %i.kf = and i32 %.0.i193, 2031
  %i.kg = icmp eq i32 %i.kf, 0
  br label %_ssa_op1_info.exit187.thread

bb.ce:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.kh = getelementptr inbounds i8, ptr %1, i64 -36 ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !253 ; 2 uses
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = ptrtoint ptr %i.kj to i64               ; 4 uses
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = sdiv exact i64 %i.km, 36
  %i.ko = getelementptr inbounds [8 x i8], ptr %3, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !234
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 28
  %i.kr = load i8, ptr %i.kq, align 4, !tbaa !113 ; 4 uses
  %i.ks = add i8 %i.kr, -45
  %or.cond26 = icmp ult i8 %i.ks, -2
  %.not = icmp eq ptr %i.kh, %i.kj
  %or.cond = or i1 %.not, %or.cond26
  br i1 %or.cond, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kt = load i32, ptr %i.kh, align 4, !tbaa !341 ; 2 uses
  %i.ku = icmp sgt i32 %i.kt, -1
  br i1 %i.ku, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.kv = getelementptr inbounds i8, ptr %1, i64 -52
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !335
  %i.kx = icmp eq i32 %i.kt, %i.kw
  br i1 %i.kx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ky = getelementptr inbounds i8, ptr %1, i64 -72 ; 2 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = sub i64 %i.kz, %i.kl
  %i.lb = sdiv exact i64 %i.la, 36
  %i.lc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !234
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.lf = load i8, ptr %i.le, align 4, !tbaa !113
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.ch, %bb.cg, %bb.cf
  %.0170 = phi i8 [ %i.lf, %bb.ch ], [ %i.kr, %bb.cg ], [ %i.kr, %bb.cf ], [ %i.kr, %bb.ce ]
  %.0 = phi ptr [ %i.ky, %bb.ch ], [ %i.kh, %bb.cg ], [ %i.kh, %bb.cf ], [ %i.kh, %bb.ce ] ; 4 uses
  %i.lg = load i32, ptr %1, align 4, !tbaa !341   ; 2 uses
  %i.lh = load i32, ptr %.0, align 4, !tbaa !341
  %i.li = icmp eq i32 %i.lg, %i.lh
  br i1 %i.li, label %bb.cj, label %_ssa_op1_info.exit187.thread

bb.cj:                                            ; preds = %bb.ci
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !342 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !342
  %i.ln = icmp eq i32 %i.lk, %i.lm
  br i1 %i.ln, label %bb.ck, label %_ssa_op1_info.exit187.thread

bb.ck:                                            ; preds = %bb.cj
  switch i8 %.0170, label %_ssa_op1_info.exit187.thread [
    i8 -60, label %bb.cl
    i8 48, label %bb.cl
    i8 21, label %bb.cl
    i8 20, label %bb.cl
    i8 19, label %bb.cl
    i8 18, label %bb.cl
    i8 17, label %bb.cl
    i8 16, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck
  %i.lo = icmp slt i32 %i.lg, 0
  br i1 %i.lo, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !72
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds i8, ptr %0, i64 %i.lr
  %i.lt = ptrtoint ptr %.0 to i64
  %i.lu = sub i64 %i.lt, %i.kl
  %i.lv = sdiv exact i64 %i.lu, 36
  %i.lw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.lv ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !234
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !72
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %i.lw, i64 %i.ma
  %.not178 = icmp eq ptr %i.ls, %i.mb
  br i1 %.not178, label %bb.cn, label %_ssa_op1_info.exit187.thread

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.mc = icmp slt i32 %i.lk, 0
  br i1 %i.mc, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.me = load i32, ptr %i.md, align 4, !tbaa !72
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds i8, ptr %0, i64 %i.mf
  %i.mh = ptrtoint ptr %.0 to i64
  %i.mi = sub i64 %i.mh, %i.kl
  %i.mj = sdiv exact i64 %i.mi, 36
  %i.mk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.mj ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !234
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !72
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %i.mk, i64 %i.mo
  %.not179 = icmp eq ptr %i.mg, %i.mp
  br i1 %.not179, label %bb.cp, label %_ssa_op1_info.exit187.thread

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br label %_ssa_op1_info.exit187.thread

_ssa_op1_info.exit187.thread:                     ; preds = %bb.bm, %bb.x, %bb.ci, %bb.cj, %bb.ck, %bb.bq, %bb.br, %bb.ab, %bb.ac, %bb.f, %bb.s, %bb.r, %bb.d, %bb.as, %bb.bg, %bb.bh, %bb.au, %bb.cp, %bb.cm, %bb.co, %_ssa_op1_info.exit, %_ssa_op2_info.exit, %_ssa_op1_info.exit187, %_ssa_op2_info.exit198, %_ssa_op1_info.exit183, %_ssa_op1_info.exit191
  %.1 = phi i1 [ %i.bl, %_ssa_op1_info.exit191 ], [ true, %bb.cp ], [ false, %bb.ab ], [ %i.hb, %_ssa_op1_info.exit183 ], [ %i.eq, %_ssa_op2_info.exit198 ], [ false, %_ssa_op1_info.exit187 ], [ false, %_ssa_op1_info.exit ], [ %i.kg, %_ssa_op2_info.exit ], [ false, %bb.f ], [ false, %bb.co ], [ false, %bb.cm ], [ false, %bb.bq ], [ false, %bb.au ], [ false, %bb.bh ], [ false, %bb.bg ], [ false, %bb.as ], [ false, %bb.d ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.x ], [ false, %bb.ac ], [ false, %bb.bm ], [ false, %bb.br ], [ false, %bb.ck ], [ false, %bb.cj ], [ false, %bb.ci ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zend_jit_trace_get_exit_point(ptr noundef %0, i32 noundef range(i32 0, 2081) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !201
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %i.c ; 7 uses
  %.b = load i1, ptr @delayed_call_chain, align 1
  %i.e = or i32 %1, 8
  %spec.select = select i1 %.b, i32 %i.e, i32 %1  ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8, !tbaa !380 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit107, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !383  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !237
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !238
  %i.m = add i32 %i.l, %i.j                       ; 2 uses
  %.not94 = icmp eq i32 %i.m, 0
  br i1 %.not94, label %.loopexit107, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 60 ; 5 uses
  %i.o = zext i32 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %indvars.iv = phi i64 [ %i.p, %bb.g ], [ %i.o, %bb.c ] ; 4 uses
  %i.p = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !72
  %.not95 = icmp eq i8 %i.r, -1
  br i1 %.not95, label %bb.e, label %.loopexit107.loopexit.split.loop.exit139

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !72
  %.not96 = icmp eq i8 %i.t, -1
  br i1 %.not96, label %bb.f, label %.loopexit107.loopexit.split.loop.exit137

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !82
  %.not97 = icmp eq i32 %i.v, 0
  br i1 %.not97, label %bb.g, label %.loopexit107.loopexit.split.loop.exit135

bb.g:                                             ; preds = %bb.f
  %.not98.wide = icmp eq i64 %i.p, 0
  br i1 %.not98.wide, label %.loopexit107, label %bb.d, !llvm.loop !661

.loopexit107.loopexit.split.loop.exit135:         ; preds = %bb.f
  %i.w = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit107

.loopexit107.loopexit.split.loop.exit137:         ; preds = %bb.e
  %i.x = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit107

.loopexit107.loopexit.split.loop.exit139:         ; preds = %bb.d
  %i.y = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit107

.loopexit107:                                     ; preds = %bb.g, %.loopexit107.loopexit.split.loop.exit135, %.loopexit107.loopexit.split.loop.exit137, %.loopexit107.loopexit.split.loop.exit139, %bb.a, %bb.b
  %.084 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ], [ %i.h, %.loopexit107.loopexit.split.loop.exit135 ], [ %i.h, %.loopexit107.loopexit.split.loop.exit139 ], [ %i.h, %.loopexit107.loopexit.split.loop.exit137 ], [ %i.h, %bb.g ]
  %.182 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.w, %.loopexit107.loopexit.split.loop.exit135 ], [ %i.y, %.loopexit107.loopexit.split.loop.exit139 ], [ %i.x, %.loopexit107.loopexit.split.loop.exit137 ], [ 0, %bb.g ] ; 8 uses
  %.080 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.n, %.loopexit107.loopexit.split.loop.exit135 ], [ %i.n, %.loopexit107.loopexit.split.loop.exit139 ], [ %i.n, %.loopexit107.loopexit.split.loop.exit137 ], [ %i.n, %bb.g ] ; 2 uses
  %.not99 = icmp ne ptr %0, null
  %i.z = and i32 %spec.select, 512
  %.not100 = icmp eq i32 %i.z, 0
  %or.cond = select i1 %.not99, i1 %.not100, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !34 ; 5 uses
  br i1 %or.cond, label %bb.h, label %.thread

end_hunk_2
begin_hunk_3_@zend_jit_opline_supports_reg:bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !236 ; 2 uses
  %.not.i263 = icmp eq ptr %i.gw, null
  br i1 %.not.i263, label %_ssa_op2_info.exit266, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !342 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, -1
  br i1 %i.gz, label %bb.bq, label %_ssa_op2_info.exit266

bb.bq:                                            ; preds = %bb.bp
  %i.ha = zext nneg i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.gw, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !346
  br label %_ssa_op2_info.exit266

_ssa_op2_info.exit266:                            ; preds = %bb.bm, %bb.bk, %bb.bo, %bb.bq, %bb.bp, %bb.bn, %bb.bl
  %.0.i264 = phi i32 [ %spec.select.i282, %bb.bn ], [ -521143298, %bb.bk ], [ %i.gp, %bb.bl ], [ -486539265, %bb.bo ], [ %i.hc, %bb.bq ], [ -486539265, %bb.bp ], [ %i.gr, %bb.bm ] ; 3 uses
  %.not190 = icmp eq ptr %4, null
  br i1 %.not190, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ssa_op2_info.exit266
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !72  ; 2 uses
  %.not191 = icmp eq i8 %i.he, -1
  %i.hf = and i8 %i.he, -113
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 1, %i.hg
  %i.hi = select i1 %.not191, i32 -1, i32 %i.hh
  %.1155.ph = and i32 %i.hi, %.0.i245             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !72  ; 2 uses
  %.not192 = icmp eq i8 %i.hk, -1
  br i1 %.not192, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hl = and i8 %i.hk, -113
  %i.hm = zext nneg i8 %i.hl to i32
  %i.hn = shl nuw nsw i32 1, %i.hm
  %i.ho = and i32 %i.hn, %.0.i264
  br label %bb.bt

bb.bt:                                            ; preds = %_ssa_op2_info.exit266, %bb.bs, %bb.br
  %.1155405 = phi i32 [ %.1155.ph, %bb.bs ], [ %.1155.ph, %bb.br ], [ %.0.i245, %_ssa_op2_info.exit266 ]
  %.1 = phi i32 [ %i.ho, %bb.bs ], [ %.0.i264, %bb.br ], [ %.0.i264, %_ssa_op2_info.exit266 ]
  %i.hp = and i32 %.1155405, 16
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = and i32 %.1, 16
  %i.hs = icmp ne i32 %i.hr, 0
  %i.ht = select i1 %i.hq, i1 %i.hs, i1 false
  br label %_ssa_op2_info.exit270.thread

bb.bu:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !296 ; 4 uses
  %i.hw = icmp eq i8 %i.hv, 1
  br i1 %i.hw, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !111
  %i.hz = and i32 %i.hy, 33554432
  %.not9.i242 = icmp eq i32 %i.hz, 0
  br i1 %.not9.i242, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !72
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %2, i64 %i.ic
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !354
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !72
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.ii
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ik = phi ptr [ %i.id, %bb.bw ], [ %i.ij, %bb.bx ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i8, ptr %i.il, align 8, !tbaa !72
  %cond = icmp eq i8 %i.im, 7
  br i1 %cond, label %bb.bz, label %_ssa_op2_info.exit270.thread

bb.bz:                                            ; preds = %bb.by
  %i.in = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.ik) #34
  %.pre429 = load i8, ptr %i.hu, align 1, !tbaa !296
  br label %_ssa_op1_info.exit243

bb.ca:                                            ; preds = %bb.bu
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !236 ; 2 uses
  %.not.i240 = icmp eq ptr %i.ip, null
  br i1 %.not.i240, label %_ssa_op1_info.exit243, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iq = load i32, ptr %3, align 4, !tbaa !341   ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  br i1 %i.ir, label %bb.cc, label %_ssa_op1_info.exit243

bb.cc:                                            ; preds = %bb.cb
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !346
  br label %_ssa_op1_info.exit243

_ssa_op1_info.exit243:                            ; preds = %bb.ca, %bb.cc, %bb.cb, %bb.bz
  %i.iv = phi i8 [ %i.hv, %bb.cc ], [ %i.hv, %bb.cb ], [ %.pre429, %bb.bz ], [ %i.hv, %bb.ca ]
  %.0.i241 = phi i32 [ %i.iu, %bb.cc ], [ -486539265, %bb.cb ], [ %i.in, %bb.bz ], [ -486539265, %bb.ca ] ; 2 uses
  %i.iw = icmp ne i8 %i.iv, 8
  %i.ix = and i32 %.0.i241, 16
  %.not188 = icmp eq i32 %i.ix, 0
  %or.cond208 = select i1 %i.iw, i1 true, i1 %.not188
  br i1 %or.cond208, label %_ssa_op2_info.exit270.thread, label %bb.cd

bb.cd:                                            ; preds = %_ssa_op1_info.exit243
  %i.iy = and i32 %.0.i241, 1024
  %.not189 = icmp eq i32 %i.iy, 0
  br label %_ssa_op2_info.exit270.thread

bb.ce:                                            ; preds = %bb.a
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !296 ; 4 uses
  %i.jb = icmp eq i8 %i.ja, 1
  br i1 %i.jb, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !111
  %i.je = and i32 %i.jd, 33554432
  %.not9.i238 = icmp eq i32 %i.je, 0
  br i1 %.not9.i238, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !72
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %2, i64 %i.jh
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !354
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !72
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jk, i64 %i.jn
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.jp = phi ptr [ %i.ji, %bb.cg ], [ %i.jo, %bb.ch ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.jr, label %bb.ck [
    i8 11, label %_ssa_op1_info.exit239
    i8 7, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.js = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.jp) #34
  %.pre428 = load i8, ptr %i.iz, align 1, !tbaa !296
  br label %_ssa_op1_info.exit239

bb.ck:                                            ; preds = %bb.ci
  %i.jt = zext nneg i8 %i.jr to i32
  %i.ju = shl nuw i32 1, %i.jt                    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 9
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !72
  %.not.i308 = icmp eq i8 %i.jw, 0
  br i1 %.not.i308, label %bb.cl, label %_ssa_op1_info.exit239

bb.cl:                                            ; preds = %bb.ck
  %i.jx = icmp eq i8 %i.jr, 6
  %spec.select.i310 = select i1 %i.jx, i32 -2147483584, i32 %i.ju
  br label %_ssa_op1_info.exit239

bb.cm:                                            ; preds = %bb.ce
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !236 ; 2 uses
  %.not.i236 = icmp eq ptr %i.jz, null
  br i1 %.not.i236, label %_ssa_op1_info.exit239, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ka = load i32, ptr %3, align 4, !tbaa !341   ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, -1
  br i1 %i.kb, label %bb.co, label %_ssa_op1_info.exit239

bb.co:                                            ; preds = %bb.cn
  %i.kc = zext nneg i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [40 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !346
  br label %_ssa_op1_info.exit239

_ssa_op1_info.exit239:                            ; preds = %bb.ck, %bb.ci, %bb.cm, %bb.co, %bb.cn, %bb.cl, %bb.cj
  %i.kf = phi i8 [ 1, %bb.cl ], [ 1, %bb.ci ], [ %.pre428, %bb.cj ], [ %i.ja, %bb.cm ], [ %i.ja, %bb.co ], [ %i.ja, %bb.cn ], [ 1, %bb.ck ]
  %.0.i237 = phi i32 [ %spec.select.i310, %bb.cl ], [ -521143298, %bb.ci ], [ %i.js, %bb.cj ], [ -486539265, %bb.cm ], [ %i.ke, %bb.co ], [ -486539265, %bb.cn ], [ %i.ju, %bb.ck ]
  %i.kg = and i8 %i.kf, 9
  %i.kh = icmp ne i8 %i.kg, 0
  %i.ki = and i32 %.0.i237, 2047
  %i.kj = icmp eq i32 %i.ki, 64
  %i.kk = select i1 %i.kh, i1 %i.kj, i1 false
  br label %_ssa_op2_info.exit270.thread

bb.cp:                                            ; preds = %bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !296 ; 4 uses
  %i.kn = icmp eq i8 %i.km, 1
  br i1 %i.kn, label %bb.cq, label %bb.cx

bb.cq:                                            ; preds = %bb.cp
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !111
  %i.kq = and i32 %i.kp, 33554432
  %.not9.i234 = icmp eq i32 %i.kq, 0
  br i1 %.not9.i234, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !72
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %2, i64 %i.kt
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !354
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !72
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %i.kz
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lb = phi ptr [ %i.ku, %bb.cr ], [ %i.la, %bb.cs ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.ld, label %bb.cv [
    i8 11, label %_ssa_op1_info.exit235
    i8 7, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.le = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.lb) #34
  %.pre427 = load i8, ptr %i.kl, align 1, !tbaa !296
  br label %_ssa_op1_info.exit235

bb.cv:                                            ; preds = %bb.ct
  %i.lf = zext nneg i8 %i.ld to i32
  %i.lg = shl nuw i32 1, %i.lf                    ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 9
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !72
  %.not.i312 = icmp eq i8 %i.li, 0
  br i1 %.not.i312, label %bb.cw, label %_ssa_op1_info.exit235

bb.cw:                                            ; preds = %bb.cv
  %i.lj = icmp eq i8 %i.ld, 6
  %spec.select.i314 = select i1 %i.lj, i32 -2147483584, i32 %i.lg
  br label %_ssa_op1_info.exit235

bb.cx:                                            ; preds = %bb.cp
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !236 ; 2 uses
  %.not.i232 = icmp eq ptr %i.ll, null
  br i1 %.not.i232, label %_ssa_op1_info.exit235, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lm = load i32, ptr %3, align 4, !tbaa !341   ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, -1
  br i1 %i.ln, label %bb.cz, label %_ssa_op1_info.exit235

bb.cz:                                            ; preds = %bb.cy
  %i.lo = zext nneg i32 %i.lm to i64
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !346
  br label %_ssa_op1_info.exit235

_ssa_op1_info.exit235:                            ; preds = %bb.cv, %bb.ct, %bb.cx, %bb.cz, %bb.cy, %bb.cw, %bb.cu
  %i.lr = phi i8 [ 1, %bb.cw ], [ 1, %bb.ct ], [ %.pre427, %bb.cu ], [ %i.km, %bb.cx ], [ %i.km, %bb.cz ], [ %i.km, %bb.cy ], [ 1, %bb.cv ]
  %.0.i233 = phi i32 [ %spec.select.i314, %bb.cw ], [ -521143298, %bb.ct ], [ %i.le, %bb.cu ], [ -486539265, %bb.cx ], [ %i.lq, %bb.cz ], [ -486539265, %bb.cy ], [ %i.lg, %bb.cv ]
  %i.ls = and i8 %i.lr, 9
  %i.lt = icmp ne i8 %i.ls, 0
  %i.lu = and i32 %.0.i233, 2047
  %i.lv = icmp eq i32 %i.lu, 128
  %i.lw = select i1 %i.lt, i1 %i.lv, i1 false
  br label %_ssa_op2_info.exit270.thread

bb.da:                                            ; preds = %bb.a, %bb.a
  %i.lx = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !94
  %.not185 = icmp eq i8 %i.lx, 5
  br i1 %.not185, label %_ssa_op2_info.exit270.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !314 ; 2 uses
  %.not186 = icmp eq ptr %i.lz, null
  br i1 %.not186, label %_ssa_op2_info.exit270.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !110 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !306
  %i.me = ptrtoint ptr %2 to i64
  %i.mf = ptrtoint ptr %i.mb to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 3
  %i.mi = getelementptr inbounds i8, ptr %i.lz, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !78
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [64 x i8], ptr %i.md, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !304
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %i.mo
  %i.mq = icmp ugt ptr %2, %i.mp
  br i1 %i.mq, label %bb.dd, label %_ssa_op2_info.exit270.thread

bb.dd:                                            ; preds = %bb.dc
  %i.mr = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !254
  %i.mt = and i8 %i.ms, 48
  %.not187 = icmp eq i8 %i.mt, 0
  br label %_ssa_op2_info.exit270.thread

bb.de:                                            ; preds = %bb.a
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !356
  %i.mw = and i32 %i.mv, 1
  %.not182 = icmp eq i32 %i.mw, 0
  br i1 %.not182, label %bb.df, label %_ssa_op2_info.exit270.thread

bb.df:                                            ; preds = %bb.de, %bb.a, %bb.a, %bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !296
  %i.mz = icmp eq i8 %i.my, 1
  br i1 %i.mz, label %bb.dg, label %bb.dn

bb.dg:                                            ; preds = %bb.df
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !111
  %i.nc = and i32 %i.nb, 33554432
  %.not9.i230 = icmp eq i32 %i.nc, 0
  br i1 %.not9.i230, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !72
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds i8, ptr %2, i64 %i.nf
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !354
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !72
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.ni, i64 %i.nl
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.nn = phi ptr [ %i.ng, %bb.dh ], [ %i.nm, %bb.di ] ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load i8, ptr %i.no, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.np, label %bb.dl [
    i8 11, label %_ssa_op1_info.exit231
    i8 7, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.nq = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.nn) #34
  br label %_ssa_op1_info.exit231

bb.dl:                                            ; preds = %bb.dj
  %i.nr = zext nneg i8 %i.np to i32
  %i.ns = shl nuw i32 1, %i.nr                    ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 9
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !72
  %.not.i316 = icmp eq i8 %i.nu, 0
  br i1 %.not.i316, label %bb.dm, label %_ssa_op1_info.exit231

bb.dm:                                            ; preds = %bb.dl
  %i.nv = icmp eq i8 %i.np, 6
  %spec.select.i318 = select i1 %i.nv, i32 -2147483584, i32 %i.ns
  br label %_ssa_op1_info.exit231

bb.dn:                                            ; preds = %bb.df
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !236 ; 2 uses
  %.not.i228 = icmp eq ptr %i.nx, null
  br i1 %.not.i228, label %_ssa_op1_info.exit231, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ny = load i32, ptr %3, align 4, !tbaa !341   ; 2 uses
  %i.nz = icmp sgt i32 %i.ny, -1
  br i1 %i.nz, label %bb.dp, label %_ssa_op1_info.exit231

bb.dp:                                            ; preds = %bb.do
  %i.oa = zext nneg i32 %i.ny to i64
  %i.ob = getelementptr inbounds nuw [40 x i8], ptr %i.nx, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !346
  br label %_ssa_op1_info.exit231

_ssa_op1_info.exit231:                            ; preds = %bb.dl, %bb.dj, %bb.dn, %bb.dp, %bb.do, %bb.dm, %bb.dk
  %.0.i229 = phi i32 [ %spec.select.i318, %bb.dm ], [ -521143298, %bb.dj ], [ %i.nq, %bb.dk ], [ -486539265, %bb.dn ], [ %i.oc, %bb.dp ], [ -486539265, %bb.do ], [ %i.ns, %bb.dl ] ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.oe = load i8, ptr %i.od, align 2, !tbaa !355
  %i.of = icmp eq i8 %i.oe, 1
  br i1 %i.of, label %bb.dq, label %bb.dx

bb.dq:                                            ; preds = %_ssa_op1_info.exit231
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !111
  %i.oi = and i32 %i.oh, 33554432
  %.not9.i261 = icmp eq i32 %i.oi, 0
  br i1 %.not9.i261, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !72
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds i8, ptr %2, i64 %i.ol
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !354
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !72
  %i.or = zext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.oo, i64 %i.or
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.ot = phi ptr [ %i.om, %bb.dr ], [ %i.os, %bb.ds ] ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.ov, label %bb.dv [
    i8 11, label %_ssa_op2_info.exit262
    i8 7, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt
  %i.ow = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.ot) #34
  br label %_ssa_op2_info.exit262

bb.dv:                                            ; preds = %bb.dt
  %i.ox = zext nneg i8 %i.ov to i32
  %i.oy = shl nuw i32 1, %i.ox                    ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 9
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !72
  %.not.i284 = icmp eq i8 %i.pa, 0
  br i1 %.not.i284, label %bb.dw, label %_ssa_op2_info.exit262

bb.dw:                                            ; preds = %bb.dv
  %i.pb = icmp eq i8 %i.ov, 6
  %spec.select.i286 = select i1 %i.pb, i32 -2147483584, i32 %i.oy
  br label %_ssa_op2_info.exit262

bb.dx:                                            ; preds = %_ssa_op1_info.exit231
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !236 ; 2 uses
  %.not.i259 = icmp eq ptr %i.pd, null
  br i1 %.not.i259, label %_ssa_op2_info.exit262, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !342 ; 2 uses
  %i.pg = icmp sgt i32 %i.pf, -1
  br i1 %i.pg, label %bb.dz, label %_ssa_op2_info.exit262

bb.dz:                                            ; preds = %bb.dy
  %i.ph = zext nneg i32 %i.pf to i64
  %i.pi = getelementptr inbounds nuw [40 x i8], ptr %i.pd, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !346
  br label %_ssa_op2_info.exit262

_ssa_op2_info.exit262:                            ; preds = %bb.dv, %bb.dt, %bb.dx, %bb.dz, %bb.dy, %bb.dw, %bb.du
  %.0.i260 = phi i32 [ %spec.select.i286, %bb.dw ], [ -521143298, %bb.dt ], [ %i.ow, %bb.du ], [ -486539265, %bb.dx ], [ %i.pj, %bb.dz ], [ -486539265, %bb.dy ], [ %i.oy, %bb.dv ]
  %.not183 = icmp eq ptr %4, null
  br i1 %.not183, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ssa_op2_info.exit262
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !72
  %i.pm = and i8 %i.pl, -113
  %i.pn = icmp eq i8 %i.pm, 7
  %i.po = and i32 %.0.i229, -896
  %spec.select214 = select i1 %i.pn, i32 %i.po, i32 %.0.i229
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ssa_op2_info.exit262
  %.2 = phi i32 [ %spec.select214, %bb.ea ], [ %.0.i229, %_ssa_op2_info.exit262 ]
  %i.pp = and i32 %.2, 1023
  %i.pq = icmp eq i32 %i.pp, 128
  br i1 %i.pq, label %bb.ec, label %_ssa_op2_info.exit270.thread

bb.ec:                                            ; preds = %bb.eb
  %i.pr = and i32 %.0.i260, 1023                  ; 2 uses
  %i.ps = icmp eq i32 %i.pr, 16
  %i.pt = icmp eq i32 %i.pr, 64
  %i.pu = or i1 %i.ps, %i.pt
  br label %_ssa_op2_info.exit270.thread

bb.ed:                                            ; preds = %bb.a
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !254
  %.not175 = icmp eq i8 %i.pw, 0
  br i1 %.not175, label %bb.ee, label %_ssa_op2_info.exit270.thread

bb.ee:                                            ; preds = %bb.ed
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.py = load i32, ptr %i.px, align 4, !tbaa !356
  %i.pz = trunc i32 %i.py to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !296
  %i.qe = icmp eq i8 %i.qd, 1
  br i1 %i.qe, label %bb.ef, label %bb.en

bb.ef:                                            ; preds = %bb.ee
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !111
  %i.qh = and i32 %i.qg, 33554432
  %.not9.i226 = icmp eq i32 %i.qh, 0
  br i1 %.not9.i226, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !72
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds i8, ptr %i.qa, i64 %i.qk
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !354
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !72
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.qq
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.qs = phi ptr [ %i.ql, %bb.eg ], [ %i.qr, %bb.eh ] ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.qu, label %bb.ek [
    i8 11, label %_ssa_op1_info.exit227
    i8 7, label %bb.ej
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.qv = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.qs) #34
  br label %_ssa_op1_info.exit227

bb.ek:                                            ; preds = %bb.ei
  %i.qw = zext nneg i8 %i.qu to i32
  %i.qx = shl nuw i32 1, %i.qw                    ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 9
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !72
  %.not.i320 = icmp eq i8 %i.qz, 0
  br i1 %.not.i320, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ra = or i32 %i.qx, -1073741824
  br label %_ssa_op1_info.exit227

bb.em:                                            ; preds = %bb.ek
  %i.rb = icmp eq i8 %i.qu, 6
  %spec.select.i322 = select i1 %i.rb, i32 -2147483584, i32 %i.qx
  br label %_ssa_op1_info.exit227

bb.en:                                            ; preds = %bb.ee
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !236 ; 2 uses
  %.not.i224 = icmp eq ptr %i.rd, null
  br i1 %.not.i224, label %_ssa_op1_info.exit227, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.re = load i32, ptr %i.qb, align 4, !tbaa !341 ; 2 uses
  %i.rf = icmp sgt i32 %i.re, -1
  br i1 %i.rf, label %bb.ep, label %_ssa_op1_info.exit227

bb.ep:                                            ; preds = %bb.eo
  %i.rg = zext nneg i32 %i.re to i64
  %i.rh = getelementptr inbounds nuw [40 x i8], ptr %i.rd, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !346
  br label %_ssa_op1_info.exit227

_ssa_op1_info.exit227:                            ; preds = %bb.ei, %bb.en, %bb.ep, %bb.eo, %bb.em, %bb.el, %bb.ej
  %.0.i225 = phi i32 [ %spec.select.i322, %bb.em ], [ -521143298, %bb.ei ], [ %i.qv, %bb.ej ], [ %i.ra, %bb.el ], [ %i.ri, %bb.ep ], [ -486539265, %bb.eo ], [ -486539265, %bb.en ]
  %i.rj = tail call fastcc zeroext i1 @zend_jit_supported_binary_op(i8 noundef zeroext %i.pz, i32 noundef 1022, i32 noundef %.0.i225)
  br i1 %i.rj, label %bb.eq, label %_ssa_op2_info.exit270.thread

bb.eq:                                            ; preds = %_ssa_op1_info.exit227, %bb.a, %bb.a, %bb.a, %bb.a
  %i.rk = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !296
  %i.rm = icmp eq i8 %i.rl, 1
  br i1 %i.rm, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !111
  %i.rp = and i32 %i.ro, 33554432
  %.not9.i222 = icmp eq i32 %i.rp, 0
  br i1 %.not9.i222, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !72
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %2, i64 %i.rs
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !354
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !72
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.ry
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.sa = phi ptr [ %i.rt, %bb.es ], [ %i.rz, %bb.et ] ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load i8, ptr %i.sb, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.sc, label %bb.ew [
    i8 11, label %_ssa_op1_info.exit223
    i8 7, label %bb.ev
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.sd = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.sa) #34
  br label %_ssa_op1_info.exit223

bb.ew:                                            ; preds = %bb.eu
  %i.se = zext nneg i8 %i.sc to i32
  %i.sf = shl nuw i32 1, %i.se                    ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 9
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !72
  %.not.i324 = icmp eq i8 %i.sh, 0
  br i1 %.not.i324, label %bb.ex, label %_ssa_op1_info.exit223

bb.ex:                                            ; preds = %bb.ew
  %i.si = icmp eq i8 %i.sc, 6
  %spec.select.i326 = select i1 %i.si, i32 -2147483584, i32 %i.sf
  br label %_ssa_op1_info.exit223

bb.ey:                                            ; preds = %bb.eq
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !236 ; 2 uses
  %.not.i220 = icmp eq ptr %i.sk, null
  br i1 %.not.i220, label %_ssa_op1_info.exit223, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sl = load i32, ptr %3, align 4, !tbaa !341   ; 2 uses
  %i.sm = icmp sgt i32 %i.sl, -1
  br i1 %i.sm, label %bb.fa, label %_ssa_op1_info.exit223

bb.fa:                                            ; preds = %bb.ez
  %i.sn = zext nneg i32 %i.sl to i64
  %i.so = getelementptr inbounds nuw [40 x i8], ptr %i.sk, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !346
  br label %_ssa_op1_info.exit223

_ssa_op1_info.exit223:                            ; preds = %bb.ew, %bb.eu, %bb.ey, %bb.fa, %bb.ez, %bb.ex, %bb.ev
  %.0.i221 = phi i32 [ %spec.select.i326, %bb.ex ], [ -521143298, %bb.eu ], [ %i.sd, %bb.ev ], [ -486539265, %bb.ey ], [ %i.sp, %bb.fa ], [ -486539265, %bb.ez ], [ %i.sf, %bb.ew ] ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.sr = load i8, ptr %i.sq, align 2, !tbaa !355
  %i.ss = icmp eq i8 %i.sr, 1
  br i1 %i.ss, label %bb.fb, label %bb.fi

bb.fb:                                            ; preds = %_ssa_op1_info.exit223
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !111
  %i.sv = and i32 %i.su, 33554432
  %.not9.i258 = icmp eq i32 %i.sv, 0
  br i1 %.not9.i258, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !72
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds i8, ptr %2, i64 %i.sy
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !354
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !72
  %i.te = zext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.tb, i64 %i.te
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.tg = phi ptr [ %i.sz, %bb.fc ], [ %i.tf, %bb.fd ] ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load i8, ptr %i.th, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.ti, label %bb.fg [
    i8 11, label %_ssa_op2_info.exit
    i8 7, label %bb.ff
  ]

bb.ff:                                            ; preds = %bb.fe
  %i.tj = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.tg) #34
  br label %_ssa_op2_info.exit

bb.fg:                                            ; preds = %bb.fe
  %i.tk = zext nneg i8 %i.ti to i32
  %i.tl = shl nuw i32 1, %i.tk                    ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 9
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !72
  %.not.i288 = icmp eq i8 %i.tn, 0
  br i1 %.not.i288, label %bb.fh, label %_ssa_op2_info.exit

bb.fh:                                            ; preds = %bb.fg
  %i.to = icmp eq i8 %i.ti, 6
  %spec.select.i290 = select i1 %i.to, i32 -2147483584, i32 %i.tl
  br label %_ssa_op2_info.exit

bb.fi:                                            ; preds = %_ssa_op1_info.exit223
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !236 ; 2 uses
  %.not.i256 = icmp eq ptr %i.tq, null
  br i1 %.not.i256, label %_ssa_op2_info.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !342 ; 2 uses
  %i.tt = icmp sgt i32 %i.ts, -1
  br i1 %i.tt, label %bb.fk, label %_ssa_op2_info.exit

bb.fk:                                            ; preds = %bb.fj
  %i.tu = zext nneg i32 %i.ts to i64
  %i.tv = getelementptr inbounds nuw [40 x i8], ptr %i.tq, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !346
  br label %_ssa_op2_info.exit

_ssa_op2_info.exit:                               ; preds = %bb.fg, %bb.fe, %bb.fi, %bb.fk, %bb.fj, %bb.fh, %bb.ff
  %.0.i257 = phi i32 [ %spec.select.i290, %bb.fh ], [ -521143298, %bb.fe ], [ %i.tj, %bb.ff ], [ -486539265, %bb.fi ], [ %i.tw, %bb.fk ], [ -486539265, %bb.fj ], [ %i.tl, %bb.fg ]
  %.not177 = icmp eq ptr %4, null
  %i.tx = load i8, ptr %i.rk, align 1, !tbaa !296 ; 2 uses
  br i1 %.not177, label %bb.fs, label %bb.fl

bb.fl:                                            ; preds = %_ssa_op2_info.exit
  switch i8 %i.tx, label %bb.fr [
    i8 8, label %bb.fm
    i8 4, label %bb.fp
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.ty = load i8, ptr %i.a, align 4, !tbaa !113
  switch i8 %i.ty, label %bb.fr [
    i8 23, label %bb.fn
    i8 27, label %bb.fn
  ]

bb.fn:                                            ; preds = %bb.fm, %bb.fm
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !296
  %i.ub = icmp eq i8 %i.ua, 8
  br i1 %i.ub, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !72
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !72
  %i.ug = icmp eq i32 %i.ud, %i.uf
  br i1 %i.ug, label %_ssa_op2_info.exit270.thread, label %bb.fr

bb.fp:                                            ; preds = %bb.fl
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !72  ; 2 uses
  %i.uj = icmp eq i8 %i.ui, -1
  %i.uk = and i8 %i.ui, 64
  %.not179 = icmp eq i8 %i.uk, 0
  %or.cond211 = or i1 %i.uj, %.not179
  br i1 %or.cond211, label %_ssa_op2_info.exit270.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !254
  %.not180 = icmp eq i8 %i.um, 0
  br i1 %.not180, label %bb.fr, label %_ssa_op2_info.exit270.thread

bb.fr:                                            ; preds = %bb.fl, %bb.fm, %bb.fq, %bb.fn, %bb.fo
  %i.un = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !72
  %i.up = and i8 %i.uo, -113
  %i.uq = icmp eq i8 %i.up, 7
  %i.ur = and i32 %.0.i221, -896
  %spec.select215 = select i1 %i.uq, i32 %i.ur, i32 %.0.i221
  br label %bb.ft

bb.fs:                                            ; preds = %_ssa_op2_info.exit
  %.not178 = icmp eq i8 %i.tx, 8
  br i1 %.not178, label %bb.ft, label %_ssa_op2_info.exit270.thread

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %.3 = phi i32 [ %spec.select215, %bb.fr ], [ %.0.i221, %bb.fs ]
  %i.us = and i32 %.3, 1023
  %i.ut = icmp eq i32 %i.us, 128
  br i1 %i.ut, label %bb.fu, label %_ssa_op2_info.exit270.thread

bb.fu:                                            ; preds = %bb.ft
  %i.uu = and i32 %.0.i257, 1023                  ; 2 uses
  %i.uv = icmp eq i32 %i.uu, 16
  %i.uw = icmp eq i32 %i.uu, 64
  %i.ux = or i1 %i.uv, %i.uw
  br label %_ssa_op2_info.exit270.thread

bb.fv:                                            ; preds = %bb.a
  %i.uy = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !254
  %.not = icmp eq i8 %i.uz, 0
  br i1 %.not, label %bb.fw, label %_ssa_op2_info.exit270.thread

bb.fw:                                            ; preds = %bb.fv
  %i.va = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !356
  %i.vc = trunc i32 %i.vb to i8
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.vf = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !296
  %i.vh = icmp eq i8 %i.vg, 1
  br i1 %i.vh, label %bb.fx, label %bb.gf

bb.fx:                                            ; preds = %bb.fw
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !111
  %i.vk = and i32 %i.vj, 33554432
  %.not9.i218 = icmp eq i32 %i.vk, 0
  br i1 %.not9.i218, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !72
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds i8, ptr %i.vd, i64 %i.vn
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !354
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !72
  %i.vt = zext i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %i.vt
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.vv = phi ptr [ %i.vo, %bb.fy ], [ %i.vu, %bb.fz ] ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load i8, ptr %i.vw, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.vx, label %bb.gc [
    i8 11, label %_ssa_op1_info.exit219
    i8 7, label %bb.gb
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.vy = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.vv) #34
  br label %_ssa_op1_info.exit219

bb.gc:                                            ; preds = %bb.ga
  %i.vz = zext nneg i8 %i.vx to i32
  %i.wa = shl nuw i32 1, %i.vz                    ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 9
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !72
  %.not.i328 = icmp eq i8 %i.wc, 0
  br i1 %.not.i328, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.wd = or i32 %i.wa, -1073741824
  br label %_ssa_op1_info.exit219

bb.ge:                                            ; preds = %bb.gc
  %i.we = icmp eq i8 %i.vx, 6
  %spec.select.i330 = select i1 %i.we, i32 -2147483584, i32 %i.wa
  br label %_ssa_op1_info.exit219

bb.gf:                                            ; preds = %bb.fw
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !236 ; 2 uses
  %.not.i216 = icmp eq ptr %i.wg, null
  br i1 %.not.i216, label %_ssa_op1_info.exit219, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wh = load i32, ptr %i.ve, align 4, !tbaa !341 ; 2 uses
  %i.wi = icmp sgt i32 %i.wh, -1
  br i1 %i.wi, label %bb.gh, label %_ssa_op1_info.exit219

bb.gh:                                            ; preds = %bb.gg
  %i.wj = zext nneg i32 %i.wh to i64
  %i.wk = getelementptr inbounds nuw [40 x i8], ptr %i.wg, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !346
  br label %_ssa_op1_info.exit219

_ssa_op1_info.exit219:                            ; preds = %bb.ga, %bb.gf, %bb.gh, %bb.gg, %bb.ge, %bb.gd, %bb.gb
  %.0.i217 = phi i32 [ %spec.select.i330, %bb.ge ], [ -521143298, %bb.ga ], [ %i.vy, %bb.gb ], [ %i.wd, %bb.gd ], [ %i.wl, %bb.gh ], [ -486539265, %bb.gg ], [ -486539265, %bb.gf ]
  %i.wm = tail call fastcc zeroext i1 @zend_jit_supported_binary_op(i8 noundef zeroext %i.vc, i32 noundef 1022, i32 noundef %.0.i217)
  br i1 %i.wm, label %bb.gi, label %_ssa_op2_info.exit270.thread

bb.gi:                                            ; preds = %_ssa_op1_info.exit219, %bb.a, %bb.a
  %i.wn = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.wo = load i8, ptr %i.wn, align 2, !tbaa !355
  %.not173 = icmp eq i8 %i.wo, 1
  br i1 %.not173, label %bb.gj, label %_ssa_op2_info.exit270.thread

bb.gj:                                            ; preds = %bb.gi
  %i.wp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !72
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds i8, ptr %2, i64 %i.wr ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !72
  %.not174 = icmp eq i8 %i.wu, 6
  br i1 %.not174, label %bb.gk, label %_ssa_op2_info.exit270.thread

bb.gk:                                            ; preds = %bb.gj
  %i.wv = load ptr, ptr %i.ws, align 8, !tbaa !72
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load i8, ptr %i.ww, align 8, !tbaa !72
  %i.wy = icmp eq i8 %i.wx, 0
  br i1 %i.wy, label %_ssa_op2_info.exit270.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !296 ; 4 uses
  %i.xb = icmp eq i8 %i.xa, 1
  br i1 %i.xb, label %bb.gm, label %bb.gt

bb.gm:                                            ; preds = %bb.gl
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !111
  %i.xe = and i32 %i.xd, 33554432
  %.not9.i = icmp eq i32 %i.xe, 0
  br i1 %.not9.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !72
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %2, i64 %i.xh
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !354
  %i.xl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !72
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.xn
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.xp = phi ptr [ %i.xi, %bb.gn ], [ %i.xo, %bb.go ] ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load i8, ptr %i.xq, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.xr, label %bb.gr [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.gq
  ]

bb.gq:                                            ; preds = %bb.gp
  %i.xs = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.xp) #34
  %.pre = load i8, ptr %i.wz, align 1, !tbaa !296
  br label %_ssa_op1_info.exit

bb.gr:                                            ; preds = %bb.gp
  %i.xt = zext nneg i8 %i.xr to i32
  %i.xu = shl nuw i32 1, %i.xt                    ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 9
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !72
  %.not.i332 = icmp eq i8 %i.xw, 0
  br i1 %.not.i332, label %bb.gs, label %_ssa_op1_info.exit

bb.gs:                                            ; preds = %bb.gr
  %i.xx = icmp eq i8 %i.xr, 6
  %spec.select.i334 = select i1 %i.xx, i32 -2147483584, i32 %i.xu
  br label %_ssa_op1_info.exit

bb.gt:                                            ; preds = %bb.gl
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !236 ; 2 uses
  %.not.i = icmp eq ptr %i.xz, null
  br i1 %.not.i, label %_ssa_op1_info.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ya = load i32, ptr %3, align 4, !tbaa !341   ; 2 uses
  %i.yb = icmp sgt i32 %i.ya, -1
  br i1 %i.yb, label %bb.gv, label %_ssa_op1_info.exit

bb.gv:                                            ; preds = %bb.gu
  %i.yc = zext nneg i32 %i.ya to i64
  %i.yd = getelementptr inbounds nuw [40 x i8], ptr %i.xz, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !346
  br label %_ssa_op1_info.exit

_ssa_op1_info.exit:                               ; preds = %bb.gr, %bb.gp, %bb.gt, %bb.gv, %bb.gu, %bb.gs, %bb.gq
  %i.yf = phi i8 [ 1, %bb.gs ], [ 1, %bb.gp ], [ %.pre, %bb.gq ], [ %i.xa, %bb.gt ], [ %i.xa, %bb.gv ], [ %i.xa, %bb.gu ], [ 1, %bb.gr ]
  %.0.i = phi i32 [ %spec.select.i334, %bb.gs ], [ -521143298, %bb.gp ], [ %i.xs, %bb.gq ], [ -486539265, %bb.gt ], [ %i.ye, %bb.gv ], [ -486539265, %bb.gu ], [ %i.xu, %bb.gr ]
  %i.yg = icmp eq i8 %i.yf, 0
  %i.yh = and i32 %.0.i, 256
  %i.yi = icmp ne i32 %i.yh, 0
  %i.yj = select i1 %i.yg, i1 true, i1 %i.yi
  br label %_ssa_op2_info.exit270.thread

bb.gw:                                            ; preds = %bb.a
  br label %_ssa_op2_info.exit270.thread

_ssa_op2_info.exit270.thread:                     ; preds = %bb.by, %bb.ao, %bb.ap, %bb.dd, %bb.gi, %bb.gj, %bb.gk, %_ssa_op1_info.exit219, %bb.fv, %bb.ft, %bb.fu, %bb.fs, %bb.fp, %bb.fq, %bb.fo, %_ssa_op1_info.exit227, %bb.ed, %bb.eb, %bb.ec, %bb.de, %bb.db, %_ssa_op1_info.exit243, %bb.cd, %bb.au, %bb.av, %_ssa_op2_info.exit270, %bb.h, %bb.i, %bb.e, %bb.f, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.da, %bb.dc, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.d, %bb.c, %bb.gw, %_ssa_op1_info.exit, %_ssa_op1_info.exit235, %_ssa_op1_info.exit239, %bb.bt, %_ssa_op2_info.exit274, %bb.g
  %.0156 = phi i1 [ false, %bb.gw ], [ false, %bb.fv ], [ %i.g, %bb.d ], [ true, %bb.a ], [ %i.n, %bb.g ], [ %i.k, %bb.f ], [ %i.bl, %_ssa_op2_info.exit274 ], [ false, %bb.h ], [ false, %_ssa_op2_info.exit270 ], [ %i.ht, %bb.bt ], [ %i.ep, %bb.av ], [ %i.kk, %_ssa_op1_info.exit239 ], [ %i.lw, %_ssa_op1_info.exit235 ], [ false, %bb.db ], [ false, %bb.gi ], [ false, %_ssa_op1_info.exit243 ], [ %.not189, %bb.cd ], [ false, %bb.au ], [ false, %bb.de ], [ %i.pu, %bb.ec ], [ false, %_ssa_op1_info.exit227 ], [ false, %bb.fs ], [ false, %bb.fo ], [ false, %bb.fp ], [ false, %bb.ed ], [ %i.ux, %bb.fu ], [ false, %_ssa_op1_info.exit219 ], [ %i.yj, %_ssa_op1_info.exit ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.dc ], [ %.not187, %bb.dd ], [ true, %bb.da ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.eb ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.gk ], [ false, %bb.gj ], [ false, %bb.ap ], [ false, %bb.ao ], [ false, %bb.by ]
  ret i1 %.0156
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @zend_jit_trace_use_var(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #23 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %4, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !328  ; 3 uses
  %i.e = and i32 %i.d, 4
  %.not = icmp eq i32 %i.e, 0
  tail call void @llvm.assume(i1 %.not)
  %i.f = icmp sgt i32 %2, -1
  br i1 %i.f, label %zend_ssa_is_no_val_use.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %3, -1                      ; 2 uses
  %i.h = and i32 %i.d, 3
  %.not52 = icmp eq i32 %i.h, 0
  %or.cond = or i1 %i.g, %.not52
  br i1 %or.cond, label %bb.c, label %zend_ssa_is_no_val_use.exit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %3 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !253
  %i.n = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %i.i ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !113   ; 2 uses
  switch i8 %i.p, label %bb.g [
    i8 22, label %bb.e
    i8 -103, label %bb.e
    i8 -88, label %bb.e
    i8 -73, label %bb.e
    i8 78, label %bb.f
    i8 126, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.q = load i32, ptr %i.n, align 4, !tbaa !341
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %zend_ssa_is_no_val_use.exit, label %zend_ssa_is_no_val_use.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !342
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %.split55, label %zend_ssa_is_no_val_use.exit.thread

.split55:                                         ; preds = %bb.f
  %i.v = load i32, ptr %i.n, align 4, !tbaa !341
  %.not56 = icmp eq i32 %i.v, %1
  br i1 %.not56, label %zend_ssa_is_no_val_use.exit.thread, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !352
  %.fr = freeze i32 %i.x
  %.not58 = icmp eq i32 %.fr, %1
  br i1 %.not58, label %switch.early.test.i, label %zend_ssa_is_no_val_use.exit.thread

switch.early.test.i:                              ; preds = %bb.g
  switch i8 %i.p, label %bb.h [
    i8 -109, label %zend_ssa_is_no_val_use.exit.thread
    i8 72, label %zend_ssa_is_no_val_use.exit.thread
  ]

bb.h:                                             ; preds = %switch.early.test.i
  %i.y = load i32, ptr %i.n, align 4, !tbaa !341
  %.not25.i = icmp eq i32 %i.y, %1
  br i1 %.not25.i, label %zend_ssa_is_no_val_use.exit.thread, label %.split

.split:                                           ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !342
  %.not59 = icmp eq i32 %i.aa, %1
  br i1 %.not59, label %zend_ssa_is_no_val_use.exit.thread, label %bb.i

zend_ssa_is_no_val_use.exit:                      ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !342
  %.not57 = icmp eq i32 %i.ac, %1
  br i1 %.not57, label %zend_ssa_is_no_val_use.exit.thread, label %bb.i

bb.i:                                             ; preds = %.split55, %.split, %zend_ssa_is_no_val_use.exit, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !239
  %.not53 = icmp eq ptr %i.ae, null
  br i1 %.not53, label %zend_ssa_is_no_val_use.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = sext i32 %0 to i64                      ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %6, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !110
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 5                 ; 4 uses
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !253
  %i.ar = getelementptr inbounds [36 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !341
  %i.at = icmp eq i32 %i.as, %1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !253
  %i.aw = and i64 %i.an, 4294967295
  %i.ax = getelementptr inbounds nuw [36 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !341
  %i.az = tail call fastcc zeroext i1 @zend_ssa_is_last_use(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %i.ay, i32 noundef %i.ao)
  br i1 %i.az, label %zend_ssa_is_no_val_use.exit.thread.sink.split, label %zend_ssa_is_no_val_use.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !342
  %i.bc = icmp eq i32 %i.bb, %1
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.bf = and i64 %i.an, 4294967295
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !342
  %i.bj = tail call fastcc zeroext i1 @zend_ssa_is_last_use(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %i.bi, i32 noundef %i.ao)
  br i1 %i.bj, label %zend_ssa_is_no_val_use.exit.thread.sink.split, label %zend_ssa_is_no_val_use.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !352
  %i.bm = icmp eq i32 %i.bl, %1
  br i1 %i.bm, label %bb.o, label %zend_ssa_is_no_val_use.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !253
  %i.bp = and i64 %i.an, 4294967295
  %i.bq = getelementptr inbounds nuw [36 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !352
  %i.bt = tail call fastcc zeroext i1 @zend_ssa_is_last_use(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %i.bs, i32 noundef %i.ao)
  br i1 %i.bt, label %zend_ssa_is_no_val_use.exit.thread.sink.split, label %zend_ssa_is_no_val_use.exit.thread

zend_ssa_is_no_val_use.exit.thread.sink.split:    ; preds = %bb.o, %bb.m, %bb.k, %bb.b, %bb.a
  %i.bu = or disjoint i32 %i.d, 4
  store i32 %i.bu, ptr %i.c, align 4, !tbaa !328
  br label %zend_ssa_is_no_val_use.exit.thread

zend_ssa_is_no_val_use.exit.thread:               ; preds = %zend_ssa_is_no_val_use.exit.thread.sink.split, %bb.g, %switch.early.test.i, %switch.early.test.i, %bb.h, %bb.f, %bb.e, %.split55, %.split, %bb.k, %bb.n, %bb.o, %bb.m, %bb.i, %zend_ssa_is_no_val_use.exit
  ret void
}

declare void @zend_dump_var(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @zend_ssa_is_last_use(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !243  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %zend_ssa_next_use_phi.exit.thread, label %.preheader106

.preheader106:                                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader106, %zend_ssa_next_use_phi.exit
  %.068 = phi ptr [ %.1.i, %zend_ssa_next_use_phi.exit ], [ %i.f, %.preheader106 ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.068, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !249
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
end_hunk_3
begin_hunk_4_@_zend_jit_init_func_run_time_cache:bb.a
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.r, %bb.c ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i, i8 0, i64 %.pre-phi, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %zend_arena_alloc.exit
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !129
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.y
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !75
  br label %bb.f

bb.e:                                             ; preds = %zend_arena_alloc.exit
  store ptr %.0.i, ptr %i.w, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_int_extend_stack_helper(i32 noundef %0) #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = tail call ptr @zend_vm_stack_extend(i64 noundef %i.a) #34 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 262144, ptr %i.c, align 8, !tbaa !72
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_extend_stack_helper(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = tail call ptr @zend_vm_stack_extend(i64 noundef %i.a) #34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 262144, ptr %i.d, align 8, !tbaa !72
  ret ptr %i.b
}

declare ptr @zend_vm_stack_extend(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @zend_jit_only_vars_by_reference(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @_emalloc_32() #34 ; 6 uses
  store i32 1, ptr %i.a, align 4, !tbaa !294
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 26, ptr %i.b, align 4, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %0, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !72
  store ptr %i.d, ptr %i.c, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.f, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !72
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  store i32 778, ptr %i.e, align 8, !tbaa !72
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 8, ptr noundef nonnull @.str.140) #34
  ret void
}

declare i32 @zend_handle_undef_args(ptr noundef) #4

declare zeroext i1 @zend_accel_in_shm(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @zend_jit_deprecated_nodiscard_helper(ptr noundef) #4

declare zeroext i1 @zend_jit_deprecated_helper(ptr noundef) #4

declare zeroext i1 @zend_jit_nodiscard_helper(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @skip_valid_arguments(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !370
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load i32, ptr %i.c, align 8, !tbaa !420
  %.not41 = icmp eq i32 %i.k, 0
  br i1 %.not41, label %.thread31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.02337 = phi i32 [ %i.bk, %bb.p ], [ 0, %bb.a ] ; 4 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.m = zext i32 %.02337 to i64                  ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !397  ; 2 uses
  %i.q = and i32 %i.p, 33554431
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !725
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %.thread31

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !422  ; 5 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !253  ; 2 uses
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = getelementptr inbounds [36 x i8], ptr %i.w, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ null, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 29
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !296
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !111
  %i.ai = and i32 %i.ah, 33554432
  %.not9.i = icmp eq i32 %i.ai, 0
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !72
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 %i.al
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !354
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !72
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = phi ptr [ %i.am, %bb.g ], [ %i.ar, %bb.h ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i8, ptr %i.at, align 8, !tbaa !72  ; 3 uses
  switch i8 %i.au, label %bb.k [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.as) #34
  br label %_ssa_op1_info.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = zext nneg i8 %i.au to i32
  %i.ax = shl nuw i32 1, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !72
  %.not.i28 = icmp eq i8 %i.az, 0
  br i1 %.not.i28, label %bb.l, label %_ssa_op1_info.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq i8 %i.au, 6
  %spec.select.i = select i1 %i.ba, i32 -2147483584, i32 %i.ax
  br label %_ssa_op1_info.exit

bb.m:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !236 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ssa_op1_info.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.ad, align 4, !tbaa !341 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.o, label %_ssa_op1_info.exit

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !346
  br label %_ssa_op1_info.exit

_ssa_op1_info.exit:                               ; preds = %bb.k, %bb.i, %bb.m, %bb.o, %bb.n, %bb.l, %bb.j
  %.0.i = phi i32 [ %spec.select.i, %bb.l ], [ -521143298, %bb.i ], [ %i.av, %bb.j ], [ -486539265, %bb.m ], [ %i.bg, %bb.o ], [ -486539265, %bb.n ], [ %i.ax, %bb.k ]
  %i.bh = and i32 %i.p, 1023
  %i.bi = xor i32 %i.bh, 1023
  %i.bj = and i32 %i.bi, %.0.i
  %.not27 = icmp eq i32 %i.bj, 0
  br i1 %.not27, label %bb.p, label %.thread31

bb.p:                                             ; preds = %.lr.ph, %_ssa_op1_info.exit
  %i.bk = add nuw i32 %.02337, 1                  ; 3 uses
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !420
  %i.bm = icmp ult i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph, label %.thread31

.thread31:                                        ; preds = %bb.p, %bb.b, %_ssa_op1_info.exit, %bb.a
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.p ], [ %.02337, %bb.b ], [ %.02337, %_ssa_op1_info.exit ]
  ret i32 %.023.lcssa
}

declare ptr @zend_jit_copy_extra_args_helper(ptr noundef, ptr noundef) #4

declare ptr @zend_jit_copy_extra_args_helper_no_skip_recv(ptr noundef, ptr noundef) #4

declare i32 @ir_const_i32(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ir_PHI_SET_OP(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ir_MERGE_SET_OP(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @_ir_LOOP_END(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @jit_observer_fcall_is_unobserved_start(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %.not184 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not184, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.c = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.b, i64 noundef 4) #34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !72
  %i.f = icmp eq i8 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8, !tbaa !72
  %i.h = trunc i64 %i.g to i32
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 4) #34 ; 2 uses
  %i.j = sext i32 %i.i to i64
  store i64 %i.j, ptr %i.c, align 8, !tbaa !72
  store i32 4, ptr %i.d, align 8, !tbaa !72
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !72   ; 2 uses
  %i.m = and i32 %i.l, 17039360
  %i.n = icmp eq i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = and i32 %i.l, 4194304
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.v = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.u, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512) to i64)) #34 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !72
  %i.y = icmp eq i8 %i.x, 4
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.v, align 8, !tbaa !72
  %i.aa = trunc i64 %i.z to i32
  br label %jit_CONST_ADDR.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512) to i64)) #34 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !72
  store i32 4, ptr %i.w, align 8, !tbaa !72
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  %i.ad = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i) #34 ; 2 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !72  ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %.thread178.sink.split, label %bb.j

bb.j:                                             ; preds = %jit_CONST_ADDR.exit
  %i.ag = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.u, i64 noundef %i.af) #34 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !72
  %i.aj = icmp eq i8 %i.ai, 4
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.al = trunc i64 %i.ak to i32
  br label %jit_CONST_ADDR.exit.i

bb.l:                                             ; preds = %bb.j
  %i.am = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.af) #34 ; 2 uses
  %i.an = sext i32 %i.am to i64
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !72
  store i32 4, ptr %i.ah, align 8, !tbaa !72
  br label %jit_CONST_ADDR.exit.i

jit_CONST_ADDR.exit.i:                            ; preds = %bb.l, %bb.k
  %.0.i.i112 = phi i32 [ %i.am, %bb.l ], [ %i.al, %bb.k ]
  %i.ao = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.ad, i32 noundef %.0.i.i112) #34
  br label %.thread178.sink.split

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.ap = icmp eq i32 %3, 0
  br i1 %i.ap, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.aq = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.as = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ar, i64 noundef %i.aq) #34 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !72
  %i.av = icmp eq i8 %i.au, 4
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !72
  %i.ax = trunc i64 %i.aw to i32
  br label %jit_CONST_ADDR.exit118

bb.p:                                             ; preds = %bb.n
  %i.ay = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.aq) #34 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  store i64 %i.az, ptr %i.as, align 8, !tbaa !72
  store i32 4, ptr %i.at, align 8, !tbaa !72
  br label %jit_CONST_ADDR.exit118

jit_CONST_ADDR.exit118:                           ; preds = %bb.o, %bb.p
  %.0.i116 = phi i32 [ %i.ay, %bb.p ], [ %i.ax, %bb.o ]
  %i.ba = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ar, i64 noundef 56) #34 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !72
  %i.bd = icmp eq i8 %i.bc, 4
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %jit_CONST_ADDR.exit118
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !72
  %i.bf = trunc i64 %i.be to i32
  br label %jit_ADD_OFFSET.exit123

bb.r:                                             ; preds = %jit_CONST_ADDR.exit118
  %i.bg = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 56) #34 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !72
  store i32 4, ptr %i.bb, align 8, !tbaa !72
  br label %jit_ADD_OFFSET.exit123

jit_ADD_OFFSET.exit123:                           ; preds = %bb.q, %bb.r
  %.0.i.i120 = phi i32 [ %i.bg, %bb.r ], [ %i.bf, %bb.q ]
  %i.bi = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %.0.i116, i32 noundef %.0.i.i120) #34
  br label %.thread178.sink.split

bb.s:                                             ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.bj = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %4, i32 noundef %.0.i.i) #34
  %i.bk = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %i.bj) #34
  %i.bl = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef 17039360) #34
  %i.bm = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1071, i32 noundef %i.bk, i32 noundef %i.bl) #34
  %i.bn = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.bm) #34 ; 2 uses
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.bn) #34
  %i.bo = tail call i32 @_ir_END_LIST(ptr noundef nonnull %0, i32 noundef 0) #34
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.bn) #34
  br label %bb.x

bb.t:                                             ; preds = %bb.m
  %i.bp = load i8, ptr %1, align 8, !tbaa !72
  %.not110 = icmp eq i8 %i.bp, 1
  br i1 %.not110, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.br = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.bq, i64 noundef 64) #34 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !72
  %i.bu = icmp eq i8 %i.bt, 4
end_hunk_4
