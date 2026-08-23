Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit_assign_to_variable:bb.a

jit_CONST_FUNC.exit336:                           ; preds = %bb.ac, %bb.ad
  %.0.i.i334 = phi i32 [ %i.cp, %bb.ac ], [ %i.cq, %bb.ad ]
  %i.cu = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0291)
  %i.cv = call i32 @_ir_CALL_3(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i.i334, i32 noundef %.0274, i32 noundef %i.bv, i32 noundef %i.cu) #34 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %jit_CONST_FUNC.exit336, %jit_CONST_FUNC.exit
  br i1 %11, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !313 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %bb.ag, label %jit_EG_exception.exit.i, !prof !88

bb.ag:                                            ; preds = %bb.af
  %i.cy = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960) to i64)) #34 ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !313
  br label %jit_EG_exception.exit.i

jit_EG_exception.exit.i:                          ; preds = %bb.ag, %bb.af
  %.0.i.i337 = phi i32 [ %i.cy, %bb.ag ], [ %i.cx, %bb.af ]
  %i.cz = call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i.i337) #34
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !65 ; 2 uses
  %.not.i4.i = icmp eq i32 %i.db, 0
  br i1 %.not.i4.i, label %bb.ah, label %zend_jit_check_exception.exit, !prof !88

bb.ah:                                            ; preds = %jit_EG_exception.exit.i
  %i.dc = load ptr, ptr @zend_jit_stub_handlers, align 64, !tbaa !60
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.dd) #34 ; 2 uses
  store i32 %i.de, ptr %i.da, align 8, !tbaa !65
  br label %zend_jit_check_exception.exit

zend_jit_check_exception.exit:                    ; preds = %jit_EG_exception.exit.i, %bb.ah
  %.0.i5.i = phi i32 [ %i.de, %bb.ah ], [ %i.db, %jit_EG_exception.exit.i ]
  call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.cz, i32 noundef %.0.i5.i) #34
  br label %bb.ai

bb.ai:                                            ; preds = %zend_jit_check_exception.exit, %bb.ae
  %i.df = call i32 @_ir_END(ptr noundef nonnull %0) #34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.a, align 16, !tbaa !65
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !65
  br i1 %i.ba, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %.0275) #34
  %i.dh = call i32 @_ir_END(ptr noundef nonnull %0) #34
  call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.br) #34
  %i.di = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.bg, i64 noundef 8) #34 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !57
  %i.dl = icmp eq i8 %i.dk, 4
  br i1 %i.dl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load i64, ptr %i.di, align 8, !tbaa !57
  %i.dn = trunc i64 %i.dm to i32
  br label %jit_ADD_OFFSET.exit

bb.al:                                            ; preds = %bb.aj
  %i.do = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 8) #34 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  store i64 %i.dp, ptr %i.di, align 8, !tbaa !57
  store i32 4, ptr %i.dj, align 8, !tbaa !57
  br label %jit_ADD_OFFSET.exit

jit_ADD_OFFSET.exit:                              ; preds = %bb.ak, %bb.al
  %.0.i.i338 = phi i32 [ %i.do, %bb.al ], [ %i.dn, %bb.ak ]
  %i.dq = call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %.0274, i32 noundef %.0.i.i338) #34
  %i.dr = call i32 @_ir_END(ptr noundef nonnull %0) #34
  call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.dr, i32 noundef %i.dh) #34
  %i.ds = call i32 @_ir_PHI_2(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.dq, i32 noundef %.0276) #34
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 2
  %i.dv = or disjoint i64 %i.du, 3                ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.br) #34
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %jit_ADD_OFFSET.exit, %bb.h
  %i.dw = phi i32 [ 0, %bb.h ], [ 1, %bb.am ], [ 1, %jit_ADD_OFFSET.exit ] ; 5 uses
  %.2290 = phi i64 [ %3, %bb.h ], [ %3, %bb.am ], [ %i.dv, %jit_ADD_OFFSET.exit ] ; 8 uses
  %.2287 = phi i64 [ %2, %bb.h ], [ %2, %bb.am ], [ %i.dv, %jit_ADD_OFFSET.exit ] ; 4 uses
  %i.dx = and i32 %4, 960
  %.not302 = icmp eq i32 %i.dx, 0
  br i1 %.not302, label %.thread369, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = and i32 %4, 255
  %.not303 = icmp eq i32 %i.dy, 0
  br i1 %.not303, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = call fastcc i32 @jit_if_REFCOUNTED(ptr noundef %0, i64 noundef %.2287) ; 2 uses
  call void @_ir_IF_FALSE(ptr noundef %0, i32 noundef %i.dz) #34
  %i.ea = call i32 @_ir_END_LIST(ptr noundef %0, i32 noundef 0) #34
  call void @_ir_IF_TRUE_cold(ptr noundef %0, i32 noundef %i.dz) #34
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.eb = and i32 %4, 1073742848
  %.not304 = icmp ne i32 %i.eb, 0
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0280 = phi i32 [ %i.ea, %bb.ap ], [ 0, %bb.aq ] ; 3 uses
  %.0278 = phi i1 [ false, %bb.ap ], [ %.not304, %bb.aq ] ; 2 uses
  %i.ec = and i64 %.2287, 3
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ee = inttoptr i64 %.2287 to ptr
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !57 ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.eh = icmp eq ptr %i.ef, null
  br i1 %i.eh, label %jit_Z_PTR.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.ej = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ei, i64 noundef %i.eg) #34 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !57
  %i.em = icmp eq i8 %i.el, 4
  br i1 %i.em, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.en = load i64, ptr %i.ej, align 8, !tbaa !57
  %i.eo = trunc i64 %i.en to i32
  br label %jit_Z_PTR.exit

bb.av:                                            ; preds = %bb.at
  %i.ep = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.eg) #34 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  store i64 %i.eq, ptr %i.ej, align 8, !tbaa !57
  store i32 4, ptr %i.ek, align 8, !tbaa !57
  br label %jit_Z_PTR.exit

bb.aw:                                            ; preds = %bb.ar
  %i.er = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef %0, i64 noundef %.2287)
  %i.es = call i32 @_ir_LOAD(ptr noundef %0, i32 noundef 6, i32 noundef %i.er) #34
  br label %jit_Z_PTR.exit

jit_Z_PTR.exit:                                   ; preds = %bb.as, %bb.au, %bb.av, %bb.aw
  %.0.i = phi i32 [ %i.es, %bb.aw ], [ -1, %bb.as ], [ %i.eo, %bb.au ], [ %i.ep, %bb.av ] ; 9 uses
  %i.et = and i32 %4, 1073742848
  %.not305 = icmp eq i32 %i.et, 0
  br i1 %.not305, label %bb.bu, label %bb.ax

bb.ax:                                            ; preds = %jit_Z_PTR.exit
  call fastcc void @zend_jit_simple_assign(ptr noundef %0, ptr noundef %1, i64 noundef %.2290, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i64 noundef %7, i32 noundef %8, i64 noundef %.0291, i1 noundef zeroext false)
  %i.eu = call i32 @_ir_LOAD(ptr noundef %0, i32 noundef 4, i32 noundef %.0.i) #34
  %i.ev = call i32 @ir_const_u32(ptr noundef %0, i32 noundef 1) #34
  %i.ew = call i32 @ir_fold2(ptr noundef %0, i32 noundef 1051, i32 noundef %i.eu, i32 noundef %i.ev) #34 ; 2 uses
  call void @_ir_STORE(ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.ew) #34
  %i.ex = call i32 @_ir_IF(ptr noundef %0, i32 noundef %i.ew) #34 ; 2 uses
  call void @_ir_IF_FALSE(ptr noundef %0, i32 noundef %i.ex) #34
  call fastcc void @jit_ZVAL_DTOR(ptr noundef %0, i32 noundef %.0.i, i32 noundef %4, ptr noundef %1)
  br i1 %11, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !313 ; 2 uses
  %.not.i.i341 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i341, label %bb.az, label %jit_EG_exception.exit.i342, !prof !88

bb.az:                                            ; preds = %bb.ay
  %i.fa = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960) to i64)) #34 ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !313
  br label %jit_EG_exception.exit.i342

jit_EG_exception.exit.i342:                       ; preds = %bb.az, %bb.ay
  %.0.i.i343 = phi i32 [ %i.fa, %bb.az ], [ %i.ez, %bb.ay ]
  %i.fb = call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i.i343) #34
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !65 ; 2 uses
  %.not.i4.i344 = icmp eq i32 %i.fd, 0
  br i1 %.not.i4.i344, label %bb.ba, label %zend_jit_check_exception.exit346, !prof !88

bb.ba:                                            ; preds = %jit_EG_exception.exit.i342
  %i.fe = load ptr, ptr @zend_jit_stub_handlers, align 64, !tbaa !60
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ff) #34 ; 2 uses
  store i32 %i.fg, ptr %i.fc, align 8, !tbaa !65
  br label %zend_jit_check_exception.exit346

zend_jit_check_exception.exit346:                 ; preds = %jit_EG_exception.exit.i342, %bb.ba
  %.0.i5.i345 = phi i32 [ %i.fg, %bb.ba ], [ %i.fd, %jit_EG_exception.exit.i342 ]
  call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.fb, i32 noundef %.0.i5.i345) #34
  br label %bb.bb

bb.bb:                                            ; preds = %zend_jit_check_exception.exit346, %bb.ax
  %i.fh = call i32 @_ir_END(ptr noundef %0) #34
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.fj = add nuw nsw i32 %i.dw, 1                ; 2 uses
  %i.fk = zext nneg i32 %i.dw to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fk
  store i32 %i.fh, ptr %i.fl, align 4, !tbaa !65
  call void @_ir_IF_TRUE(ptr noundef %0, i32 noundef %i.ex) #34
  %i.fm = and i32 %4, -2147482624
  %.not308 = icmp eq i32 %i.fm, 0
  %i.fn = and i32 %4, 384
  %.not309 = icmp eq i32 %i.fn, 0
  %or.cond321 = or i1 %.not308, %.not309
  br i1 %or.cond321, label %._crit_edge, label %bb.bc

._crit_edge:                                      ; preds = %bb.bb
  %.pre = and i64 %.2290, 3
  %.pre376 = and i64 %.0291, 3
  br label %bb.bn

bb.bc:                                            ; preds = %bb.bb
  %i.fo = call fastcc i32 @jit_if_GC_MAY_NOT_LEAK(ptr noundef %0, i32 noundef %.0.i) ; 2 uses
  call void @_ir_IF_FALSE(ptr noundef %0, i32 noundef %i.fo) #34
  %.not310 = icmp eq ptr %1, null
  br i1 %.not310, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @jit_SET_EX_OPLINE(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fq = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.fp, i64 noundef ptrtoint (ptr @gc_possible_root to i64)) #34 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !57
  %i.ft = icmp eq i8 %i.fs, 4
  br i1 %i.ft, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fu = load i64, ptr %i.fq, align 8, !tbaa !57
  %i.fv = trunc i64 %i.fu to i32
  br label %jit_CONST_FUNC.exit349

bb.bg:                                            ; preds = %bb.be
  %i.fw = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @gc_possible_root to i64)) #34 ; 2 uses
  %i.fx = load ptr, ptr %0, align 8, !tbaa !419
  %i.fy = sext i32 %i.fw to i64                   ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fx, i64 %i.fy
  store i32 1605, ptr %i.fz, align 8, !tbaa !57
  store i64 %i.fy, ptr %i.fq, align 8, !tbaa !57
  store i32 4, ptr %i.fr, align 8, !tbaa !57
  br label %jit_CONST_FUNC.exit349

jit_CONST_FUNC.exit349:                           ; preds = %bb.bf, %bb.bg
  %.0.i.i347 = phi i32 [ %i.fv, %bb.bf ], [ %i.fw, %bb.bg ]
  %i.ga = call i32 @_ir_CALL_1(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i347, i32 noundef %.0.i) #34 ; 0 uses
  %i.gb = and i64 %.2290, 3                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 2
  %i.gd = and i64 %.0291, 3                       ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 2
  %or.cond323 = or i1 %i.ge, %i.gc
  br i1 %or.cond323, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %jit_CONST_FUNC.exit349
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !312
  %i.gh = icmp eq ptr %i.gg, %i.c
  call void @llvm.assume(i1 %i.gh)
  %i.gi = load i32, ptr %i.c, align 16, !tbaa !65 ; 5 uses
  %i.gj = icmp ne i32 %i.gi, 0
  call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.gl = add i32 %i.gi, -1
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !65
  %i.gp = load i32, ptr %i.d, align 4, !tbaa !65
  %i.gq = icmp ult i32 %i.gi, %i.gp
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nuw i32 %i.gi, 1
  store i32 %i.gr, ptr %i.c, align 16, !tbaa !65
  %i.gs = zext i32 %i.gi to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gs
  store i32 %i.go, ptr %i.gt, align 4, !tbaa !65
  br label %bb.bi

bb.bi:                                            ; preds = %jit_CONST_FUNC.exit349, %bb.bh
  %.not311 = trunc i32 %8 to i1
  %or.cond325.not = and i1 %11, %.not311
  br i1 %or.cond325.not, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !313 ; 2 uses
  %.not.i.i350 = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i350, label %bb.bk, label %jit_EG_exception.exit.i351, !prof !88

bb.bk:                                            ; preds = %bb.bj
  %i.gw = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960) to i64)) #34 ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !313
  br label %jit_EG_exception.exit.i351

jit_EG_exception.exit.i351:                       ; preds = %bb.bk, %bb.bj
  %.0.i.i352 = phi i32 [ %i.gw, %bb.bk ], [ %i.gv, %bb.bj ]
  %i.gx = call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i.i352) #34
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !65 ; 2 uses
  %.not.i4.i353 = icmp eq i32 %i.gz, 0
  br i1 %.not.i4.i353, label %bb.bl, label %zend_jit_check_exception.exit355, !prof !88

bb.bl:                                            ; preds = %jit_EG_exception.exit.i351
  %i.ha = load ptr, ptr @zend_jit_stub_handlers, align 64, !tbaa !60
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.hb) #34 ; 2 uses
  store i32 %i.hc, ptr %i.gy, align 8, !tbaa !65
  br label %zend_jit_check_exception.exit355

zend_jit_check_exception.exit355:                 ; preds = %jit_EG_exception.exit.i351, %bb.bl
  %.0.i5.i354 = phi i32 [ %i.hc, %bb.bl ], [ %i.gz, %jit_EG_exception.exit.i351 ]
  call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.gx, i32 noundef %.0.i5.i354) #34
  br label %bb.bm

bb.bm:                                            ; preds = %zend_jit_check_exception.exit355, %bb.bi
  %i.hd = call i32 @_ir_END(ptr noundef nonnull %0) #34
  %i.he = or disjoint i32 %i.dw, 2                ; 2 uses
  store i32 %i.he, ptr %i.a, align 16, !tbaa !65
  %i.hf = zext nneg i32 %i.fj to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.hf
  store i32 %i.hd, ptr %i.hg, align 4, !tbaa !65
  call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.fo) #34
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge, %bb.bm
  %.pre-phi377 = phi i64 [ %.pre376, %._crit_edge ], [ %i.gd, %bb.bm ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.gb, %bb.bm ]
  %i.hh = phi i32 [ %i.fj, %._crit_edge ], [ %i.he, %bb.bm ] ; 2 uses
  %i.hi = icmp eq i64 %.pre-phi, 2
  %i.hj = icmp eq i64 %.pre-phi377, 2
  %or.cond327 = or i1 %i.hj, %i.hi
  br i1 %or.cond327, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !312
  %i.hm = icmp eq ptr %i.hl, %i.c
  call void @llvm.assume(i1 %i.hm)
  %i.hn = load i32, ptr %i.c, align 16, !tbaa !65 ; 5 uses
  %i.ho = icmp ne i32 %i.hn, 0
  call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hq = add i32 %i.hn, -1
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !65
  %i.hu = load i32, ptr %i.d, align 4, !tbaa !65
  %i.hv = icmp ult i32 %i.hn, %i.hu
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nuw i32 %i.hn, 1
  store i32 %i.hw, ptr %i.c, align 16, !tbaa !65
  %i.hx = zext i32 %i.hn to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hx
  store i32 %i.ht, ptr %i.hy, align 4, !tbaa !65
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.not312 = trunc i32 %8 to i1
  %or.cond329.not = and i1 %11, %.not312
  br i1 %or.cond329.not, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !313 ; 2 uses
  %.not.i.i356 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i356, label %bb.br, label %jit_EG_exception.exit.i357, !prof !88

bb.br:                                            ; preds = %bb.bq
  %i.ib = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960) to i64)) #34 ; 2 uses
  store i32 %i.ib, ptr %i.hz, align 8, !tbaa !313
  br label %jit_EG_exception.exit.i357

jit_EG_exception.exit.i357:                       ; preds = %bb.br, %bb.bq
  %.0.i.i358 = phi i32 [ %i.ib, %bb.br ], [ %i.ia, %bb.bq ]
  %i.ic = call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i.i358) #34
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !65 ; 2 uses
  %.not.i4.i359 = icmp eq i32 %i.ie, 0
  br i1 %.not.i4.i359, label %bb.bs, label %zend_jit_check_exception.exit361, !prof !88

bb.bs:                                            ; preds = %jit_EG_exception.exit.i357
  %i.if = load ptr, ptr @zend_jit_stub_handlers, align 64, !tbaa !60
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ig) #34 ; 2 uses
  store i32 %i.ih, ptr %i.id, align 8, !tbaa !65
  br label %zend_jit_check_exception.exit361

zend_jit_check_exception.exit361:                 ; preds = %jit_EG_exception.exit.i357, %bb.bs
  %.0.i5.i360 = phi i32 [ %i.ih, %bb.bs ], [ %i.ie, %jit_EG_exception.exit.i357 ]
  call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.ic, i32 noundef %.0.i5.i360) #34
  br label %bb.bt

bb.bt:                                            ; preds = %zend_jit_check_exception.exit361, %bb.bp
  %i.ii = call i32 @_ir_END(ptr noundef %0) #34
  %i.ij = add nuw nsw i32 %i.hh, 1                ; 2 uses
  store i32 %i.ij, ptr %i.a, align 16, !tbaa !65
  %i.ik = zext nneg i32 %i.hh to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ik
  store i32 %i.ii, ptr %i.il, align 4, !tbaa !65
  br label %bb.cb

bb.bu:                                            ; preds = %jit_Z_PTR.exit
  %i.im = call i32 @_ir_LOAD(ptr noundef %0, i32 noundef 4, i32 noundef %.0.i) #34
  %i.in = call i32 @ir_const_u32(ptr noundef %0, i32 noundef 1) #34
  %i.io = call i32 @ir_fold2(ptr noundef %0, i32 noundef 1051, i32 noundef %i.im, i32 noundef %i.in) #34
  call void @_ir_STORE(ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.io) #34
  %i.ip = and i32 %4, 384
  %.not306 = icmp eq i32 %i.ip, 0
  br i1 %.not306, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iq = call fastcc i32 @jit_if_GC_MAY_NOT_LEAK(ptr noundef %0, i32 noundef %.0.i) ; 2 uses
  call void @_ir_IF_FALSE(ptr noundef %0, i32 noundef %i.iq) #34
  %.not307 = icmp eq ptr %1, null
  br i1 %.not307, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @jit_SET_EX_OPLINE(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.is = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ir, i64 noundef ptrtoint (ptr @gc_possible_root to i64)) #34 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !57
  %i.iv = icmp eq i8 %i.iu, 4
  br i1 %i.iv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.iw = load i64, ptr %i.is, align 8, !tbaa !57
  %i.ix = trunc i64 %i.iw to i32
  br label %jit_CONST_FUNC.exit364

bb.bz:                                            ; preds = %bb.bx
  %i.iy = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @gc_possible_root to i64)) #34 ; 2 uses
  %i.iz = load ptr, ptr %0, align 8, !tbaa !419
  %i.ja = sext i32 %i.iy to i64                   ; 2 uses
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.iz, i64 %i.ja
  store i32 1605, ptr %i.jb, align 8, !tbaa !57
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !57
  store i32 4, ptr %i.it, align 8, !tbaa !57
  br label %jit_CONST_FUNC.exit364

jit_CONST_FUNC.exit364:                           ; preds = %bb.by, %bb.bz
  %.0.i.i362 = phi i32 [ %i.ix, %bb.by ], [ %i.iy, %bb.bz ]
  %i.jc = call i32 @_ir_CALL_1(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i362, i32 noundef %.0.i) #34 ; 0 uses
  %i.jd = call i32 @_ir_END_LIST(ptr noundef nonnull %0, i32 noundef %.0280) #34
  call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.iq) #34
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bu, %jit_CONST_FUNC.exit364
  %.1281 = phi i32 [ %i.jd, %jit_CONST_FUNC.exit364 ], [ %.0280, %bb.bu ]
  %i.je = call i32 @_ir_END_LIST(ptr noundef %0, i32 noundef %.1281) #34
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bt
  %.pr = phi i32 [ %i.dw, %bb.ca ], [ %i.ij, %bb.bt ] ; 4 uses
  %.4284 = phi i32 [ %i.je, %bb.ca ], [ %.0280, %bb.bt ] ; 2 uses
  %.not313 = icmp eq i32 %.4284, 0
  br i1 %.not313, label %bb.cc, label %.split

.split:                                           ; preds = %bb.cb
  call void @_ir_MERGE_LIST(ptr noundef %0, i32 noundef %.4284) #34
  br i1 %.0278, label %bb.cd, label %.thread369

bb.cc:                                            ; preds = %bb.cb
  br i1 %.0278, label %bb.cd, label %.thread369

.thread369:                                       ; preds = %bb.an, %.split, %bb.cc
  %i.jf = phi i32 [ %i.dw, %bb.an ], [ %.pr, %.split ], [ %.pr, %bb.cc ] ; 3 uses
  call fastcc void @zend_jit_simple_assign(ptr noundef %0, ptr noundef %1, i64 noundef %.2290, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i64 noundef %7, i32 noundef %8, i64 noundef %.0291, i1 noundef zeroext %11)
  %.not314 = icmp eq i32 %i.jf, 0
  br i1 %.not314, label %.thread371, label %.thread373

.thread373:                                       ; preds = %.thread369
  %i.jg = call i32 @_ir_END(ptr noundef %0) #34
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ji = add nuw nsw i32 %i.jf, 1                ; 2 uses
  store i32 %i.ji, ptr %i.a, align 16, !tbaa !65
  %i.jj = zext nneg i32 %i.jf to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jj
  store i32 %i.jg, ptr %i.jk, align 4, !tbaa !65
  br label %bb.ce

bb.cd:                                            ; preds = %.split, %bb.cc
  %.not315 = icmp eq i32 %.pr, 0
  br i1 %.not315, label %.thread371, label %bb.ce

bb.ce:                                            ; preds = %.thread373, %bb.cd
  %i.jl = phi i32 [ %i.ji, %.thread373 ], [ %.pr, %bb.cd ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_ir_MERGE_N(ptr noundef %0, i32 noundef %i.jl, ptr noundef nonnull %i.jm) #34
  br label %.thread371

.thread371:                                       ; preds = %.thread369, %bb.ce, %bb.cd
  %i.jn = and i64 %.2290, 3
  %i.jo = icmp eq i64 %i.jn, 2                    ; 2 uses
  %i.jp = and i64 %.0291, 3
  %i.jq = icmp eq i64 %i.jp, 2
  %or.cond331 = or i1 %i.jq, %i.jo
  br i1 %or.cond331, label %bb.cf, label %jit_set_Z_LVAL.exit

bb.cf:                                            ; preds = %.thread371
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !312
  %i.jt = icmp eq ptr %i.js, %i.c
  call void @llvm.assume(i1 %i.jt)
  %i.ju = load i32, ptr %i.c, align 16, !tbaa !65 ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 1
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i32 -1, ptr %i.jw, align 8, !tbaa !311
  store ptr null, ptr %i.jr, align 8, !tbaa !312
  br i1 %i.jv, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !65
  br label %bb.ci
end_hunk_0
