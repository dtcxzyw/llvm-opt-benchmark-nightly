Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit_init_fcall:bb.a

bb.bi:                                            ; preds = %bb.bg
  %i.hy = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_jit_find_ns_func_helper to i64)) #34 ; 2 uses
  %i.hz = load ptr, ptr %0, align 8, !tbaa !419
  %i.ia = sext i32 %i.hy to i64                   ; 2 uses
  %i.ib = getelementptr inbounds [16 x i8], ptr %i.hz, i64 %i.ia
  store i32 1605, ptr %i.ib, align 8, !tbaa !57
  store i64 %i.ia, ptr %i.hs, align 8, !tbaa !57
  store i32 4, ptr %i.ht, align 8, !tbaa !57
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i223 = phi i32 [ %i.hx, %bb.bh ], [ %i.hy, %bb.bi ]
  %i.ic = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.id = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.cz, i64 noundef %i.ic) #34 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !57
  %i.ig = icmp eq i8 %i.if, 4
  br i1 %i.ig, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ih = load i64, ptr %i.id, align 8, !tbaa !57
  %i.ii = trunc i64 %i.ih to i32
  br label %jit_CONST_ADDR.exit228

bb.bl:                                            ; preds = %bb.bj
  %i.ij = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ic) #34 ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  store i64 %i.ik, ptr %i.id, align 8, !tbaa !57
  store i32 4, ptr %i.ie, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit228

jit_CONST_ADDR.exit228:                           ; preds = %bb.bk, %bb.bl
  %.0.i226 = phi i32 [ %i.ij, %bb.bl ], [ %i.ii, %bb.bk ]
  %i.il = tail call i32 @_ir_CALL_2(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i.i223, i32 noundef %.0.i226, i32 noundef %.0.i200) #34
  br label %bb.bm

bb.bm:                                            ; preds = %jit_CONST_ADDR.exit222, %jit_CONST_ADDR.exit228, %jit_CONST_ADDR.exit216
  %.0151 = phi i32 [ %i.gu, %jit_CONST_ADDR.exit216 ], [ %i.hr, %jit_CONST_ADDR.exit222 ], [ %i.il, %jit_CONST_ADDR.exit228 ] ; 6 uses
  %i.im = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  %i.in = icmp eq i8 %i.im, 5
  br i1 %i.in, label %bb.bn, label %bb.by

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.cg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.io = getelementptr inbounds nuw i8, ptr %.1160238246, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !57
  %i.iq = shl i32 %i.ip, 3
  %i.ir = and i32 %i.iq, 1024
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.is = phi i32 [ 0, %bb.bn ], [ %i.ir, %bb.bo ]
  %i.it = tail call fastcc i32 @zend_jit_trace_get_exit_point(ptr noundef nonnull %1, i32 noundef %i.is) ; 4 uses
  %i.iu = load ptr, ptr @zend_jit_traces, align 8, !tbaa !58
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !12
  %.not.i229 = icmp ult i32 %i.it, %i.iw
  br i1 %.not.i229, label %bb.br, label %bb.bq, !prof !67

bb.bq:                                            ; preds = %bb.bp
  %i.ix = tail call fastcc ptr @zend_jit_trace_allocate_exit_point(i32 noundef %i.it)
  br label %zend_jit_trace_get_exit_addr.exit

bb.br:                                            ; preds = %bb.bp
  %i.iy = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !59
  %i.iz = lshr i32 %i.it, 5
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !60
  %i.jd = shl i32 %i.it, 2
  %i.je = and i32 %i.jd, 124
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jf
  br label %zend_jit_trace_get_exit_addr.exit

zend_jit_trace_get_exit_addr.exit:                ; preds = %bb.bq, %bb.br
  %.0.i230 = phi ptr [ %i.ix, %bb.bq ], [ %i.jg, %bb.br ] ; 3 uses
  %.not175.not = icmp eq ptr %.0.i230, null
  br i1 %.not175.not, label %.critedge184, label %bb.bs

bb.bs:                                            ; preds = %zend_jit_trace_get_exit_addr.exit
  br i1 %i.cg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jh = load i8, ptr %i.cf, align 4, !tbaa !102
  %i.ji = icmp eq i8 %i.jh, 61
  br i1 %i.ji, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.jj = ptrtoint ptr %.0.i230 to i64            ; 2 uses
  %i.jk = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.cz, i64 noundef %i.jj) #34 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !57
  %i.jn = icmp eq i8 %i.jm, 4
  br i1 %i.jn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jo = load i64, ptr %i.jk, align 8, !tbaa !57
  %i.jp = trunc i64 %i.jo to i32
  br label %jit_CONST_ADDR.exit233

bb.bw:                                            ; preds = %bb.bu
  %i.jq = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.jj) #34 ; 2 uses
  %i.jr = sext i32 %i.jq to i64
  store i64 %i.jr, ptr %i.jk, align 8, !tbaa !57
  store i32 4, ptr %i.jl, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit233

jit_CONST_ADDR.exit233:                           ; preds = %bb.bv, %bb.bw
  %.0.i231 = phi i32 [ %i.jq, %bb.bw ], [ %i.jp, %bb.bv ]
  tail call void @_ir_GUARD(ptr noundef nonnull %0, i32 noundef %.0151, i32 noundef %.0.i231) #34
  br label %.critedge182

bb.bx:                                            ; preds = %bb.bt
  tail call fastcc void @zend_jit_func_guard(ptr noundef %0, i32 noundef %.0151, ptr noundef nonnull %.1160238246, ptr noundef %.0.i230)
  br label %.critedge182

bb.by:                                            ; preds = %bb.bm
  tail call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !65 ; 2 uses
  %.not.i234 = icmp eq i32 %i.jt, 0
  br i1 %.not.i234, label %bb.bz, label %jit_STUB_ADDR.exit, !prof !88

bb.bz:                                            ; preds = %bb.by
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 72), align 8, !tbaa !60
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.jv) #34 ; 2 uses
  store i32 %i.jw, ptr %i.js, align 4, !tbaa !65
  br label %jit_STUB_ADDR.exit

jit_STUB_ADDR.exit:                               ; preds = %bb.by, %bb.bz
  %.0.i235 = phi i32 [ %i.jw, %bb.bz ], [ %i.jt, %bb.by ]
  tail call void @_ir_GUARD(ptr noundef nonnull %0, i32 noundef %.0151, i32 noundef %.0.i235) #34
  br label %.critedge182

.critedge182:                                     ; preds = %bb.bx, %jit_CONST_ADDR.exit233, %jit_STUB_ADDR.exit, %jit_CONST_FUNC.exit
  %.1152 = phi i32 [ %i.fp, %jit_CONST_FUNC.exit ], [ %.0151, %jit_STUB_ADDR.exit ], [ %.0151, %jit_CONST_ADDR.exit233 ], [ %.0151, %bb.bx ]
  %i.jx = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.en) #34
  %i.jy = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.jx, i32 noundef %i.jy) #34
  %i.jz = tail call i32 @_ir_PHI_2(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.1152, i32 noundef %i.dw) #34
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.x, %bb.w, %bb.m, %bb.l, %.critedge182, %jit_ADD_OFFSET.exit
  %.1160240 = phi ptr [ %.1160238246, %.critedge182 ], [ %.1160, %jit_ADD_OFFSET.exit ], [ %.1160, %bb.m ], [ %.1160, %bb.l ], [ %.1160, %bb.w ], [ %.1160, %bb.x ]
  %.1158 = phi i32 [ %i.jz, %.critedge182 ], [ %i.bv, %jit_ADD_OFFSET.exit ], [ %i.al, %bb.m ], [ %i.ak, %bb.l ], [ %i.cc, %bb.w ], [ %i.cd, %bb.x ]
  %i.ka = tail call fastcc i32 @zend_jit_push_call_frame(ptr noundef %0, ptr noundef %1, ptr noundef %.1160240, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %8, i32 noundef %.1158, i32 noundef 0)
  %.not177 = icmp eq i32 %i.ka, 0
  br i1 %.not177, label %.critedge184, label %bb.ca

bb.ca:                                            ; preds = %jit_CONST_ADDR.exit
  %i.kb = tail call fastcc i32 @zend_jit_needs_call_chain(ptr noundef %.1162, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %.not178 = icmp eq i32 %i.kb, 0
  br i1 %.not178, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call fastcc void @zend_jit_save_call_chain(ptr noundef %0, i32 noundef %6)
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.kc = icmp sgt i32 %6, 0
  tail call void @llvm.assume(i1 %i.kc)
  store i32 %6, ptr %i.f, align 4, !tbaa !309
  store i1 true, ptr @delayed_call_chain, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  br i1 %i.r, label %bb.ce, label %.critedge184

bb.ce:                                            ; preds = %bb.cd
  %i.kd = load i8, ptr %7, align 8, !tbaa !57
  %i.ke = icmp eq i8 %i.kd, 8
  br i1 %i.ke, label %bb.cf, label %.critedge184

bb.cf:                                            ; preds = %bb.ce
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !57
  %i.kh = icmp ugt i8 %i.kg, 4
  br i1 %i.kh, label %bb.cg, label %.critedge184

bb.cg:                                            ; preds = %bb.cf
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call fastcc void @zend_jit_set_ip(ptr noundef %0, ptr noundef nonnull %i.ki)
  br label %.critedge184

.critedge184:                                     ; preds = %zend_jit_trace_get_exit_addr.exit, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %jit_CONST_ADDR.exit
  %.5 = phi i32 [ 0, %jit_CONST_ADDR.exit ], [ 1, %bb.cd ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 0, %zend_jit_trace_get_exit_addr.exit ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @zend_jit_send_val(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = icmp ult i32 %i.b, 13
  tail call fastcc void @zend_jit_reuse_ip(ptr noundef %0)
  %i.e = load i8, ptr %i.c, align 4, !tbaa !102
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i32 %i.b, 1
  %i.h = shl nuw nsw i32 64, %i.g
  tail call void @llvm.assume(i1 %i.d)
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  %i.j = icmp eq i8 %i.i, 5
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8 ; 2 uses
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !524  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !492  ; 4 uses
  %.not60 = icmp eq ptr %i.o, null
  br i1 %.not60, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.b, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp ult i32 %i.p, %i.r
  br i1 %.not.i, label %zend_check_arg_send_type.exit, label %bb.f, !prof !67

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !57
  %i.u = and i32 %i.t, 16384
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %zend_check_arg_send_type.exit, !prof !67

zend_check_arg_send_type.exit:                    ; preds = %bb.e, %bb.f
  %.08.i = phi i32 [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = zext i32 %.08.i to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !525
  %i.ac = and i32 %i.ab, 33554432
  %.not72 = icmp eq i32 %i.ac, 0
  br i1 %.not72, label %.critedge, label %.critedge63

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = tail call i32 @_ir_RLOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 13) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.af = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ae, i64 noundef 24) #34 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !57
  %i.ai = icmp eq i8 %i.ah, 4
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !57
  %i.ak = trunc i64 %i.aj to i32
  br label %jit_ADD_OFFSET.exit

bb.i:                                             ; preds = %bb.g
  %i.al = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 24) #34 ; 2 uses
  %i.am = sext i32 %i.al to i64
  store i64 %i.am, ptr %i.af, align 8, !tbaa !57
  store i32 4, ptr %i.ag, align 8, !tbaa !57
  br label %jit_ADD_OFFSET.exit

jit_ADD_OFFSET.exit:                              ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.al, %bb.i ], [ %i.ak, %bb.h ]
  %i.an = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.ad, i32 noundef %.0.i.i) #34
  %i.ao = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.an) #34
  %i.ap = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %i.ao) #34
  %i.aq = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef %i.h) #34
  %i.ar = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1071, i32 noundef %i.ap, i32 noundef %i.aq) #34 ; 2 uses
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  %i.at = icmp eq i8 %i.as, 5
  br i1 %i.at, label %bb.j, label %bb.p

bb.j:                                             ; preds = %jit_ADD_OFFSET.exit
  %i.au = tail call fastcc i32 @zend_jit_trace_get_exit_point(ptr noundef nonnull %1, i32 noundef 4) ; 4 uses
  %i.av = load ptr, ptr @zend_jit_traces, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !12
  %.not.i66 = icmp ult i32 %i.au, %i.ax
  br i1 %.not.i66, label %bb.l, label %bb.k, !prof !67

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call fastcc ptr @zend_jit_trace_allocate_exit_point(i32 noundef %i.au)
  br label %zend_jit_trace_get_exit_addr.exit

bb.l:                                             ; preds = %bb.j
  %i.az = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !59
  %i.ba = lshr i32 %i.au, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !60
  %i.be = shl i32 %i.au, 2
  %i.bf = and i32 %i.be, 124
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  br label %zend_jit_trace_get_exit_addr.exit

zend_jit_trace_get_exit_addr.exit:                ; preds = %bb.k, %bb.l
  %.0.i67 = phi ptr [ %i.ay, %bb.k ], [ %i.bh, %bb.l ] ; 2 uses
  %.not61.not = icmp eq ptr %.0.i67, null
  br i1 %.not61.not, label %.critedge63, label %bb.m

bb.m:                                             ; preds = %zend_jit_trace_get_exit_addr.exit
  %i.bi = ptrtoint ptr %.0.i67 to i64             ; 2 uses
  %i.bj = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ae, i64 noundef %i.bi) #34 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !57
  %i.bm = icmp eq i8 %i.bl, 4
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bo = trunc i64 %i.bn to i32
  br label %jit_CONST_ADDR.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.bi) #34 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  store i64 %i.bq, ptr %i.bj, align 8, !tbaa !57
  store i32 4, ptr %i.bk, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.n, %bb.o
  %.0.i68 = phi i32 [ %i.bp, %bb.o ], [ %i.bo, %bb.n ]
  tail call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef %.0.i68) #34
  br label %.critedge

bb.p:                                             ; preds = %jit_ADD_OFFSET.exit
  %i.br = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.ar) #34 ; 2 uses
  tail call void @_ir_IF_TRUE_cold(ptr noundef nonnull %0, i32 noundef %i.br) #34
  %i.bs = and i64 %3, 3
  %i.bt = icmp eq i64 %i.bs, 2
  br i1 %i.bt, label %bb.q, label %jit_set_Z_TYPE_INFO.exit

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !57
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 8
  %i.by = or disjoint i64 %i.bx, 49
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8 ; 2 uses
  %.not73 = icmp eq ptr %i.bz, null
  br i1 %.not73, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = lshr i64 %i.bw, 4
  %i.cb = add nuw nsw i64 %i.ca, 4294967291
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 61
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !57
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %jit_set_Z_TYPE_INFO.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef 0) #34
  tail call fastcc void @jit_set_Z_TYPE_INFO_ex(ptr noundef nonnull %0, i64 noundef %i.by, i32 noundef %i.ch)
  br label %jit_set_Z_TYPE_INFO.exit

jit_set_Z_TYPE_INFO.exit:                         ; preds = %bb.s, %bb.r, %bb.p
  tail call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !65 ; 2 uses
  %.not.i69 = icmp eq i32 %i.cj, 0
  br i1 %.not.i69, label %bb.t, label %jit_STUB_ADDR.exit, !prof !88

bb.t:                                             ; preds = %jit_set_Z_TYPE_INFO.exit
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 80), align 16, !tbaa !60
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.cl) #34 ; 2 uses
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !65
  br label %jit_STUB_ADDR.exit

jit_STUB_ADDR.exit:                               ; preds = %jit_set_Z_TYPE_INFO.exit, %bb.t
  %.0.i70 = phi i32 [ %i.cm, %bb.t ], [ %i.cj, %jit_set_Z_TYPE_INFO.exit ]
  tail call void @_ir_IJMP(ptr noundef nonnull %0, i32 noundef %.0.i70) #34
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.br) #34
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %zend_check_arg_send_type.exit, %jit_CONST_ADDR.exit, %jit_STUB_ADDR.exit, %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !57
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 8
  %i.cr = or disjoint i64 %i.cq, 53               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !322
  %i.cu = icmp eq i8 %i.ct, 1
end_hunk_0
begin_hunk_1_@zend_jit_assign_to_variable_call:bb.a

zend_jit_trace_get_exit_addr.exit:                ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %.not56.not = icmp eq ptr %.0.i, null
  br i1 %.not56.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %zend_jit_trace_get_exit_addr.exit
  %i.r = tail call fastcc i32 @jit_Z_TYPE(ptr noundef nonnull %0, i64 noundef %4)
  %i.s = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.u = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.t, i64 noundef %i.s) #34 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !57
  %i.x = icmp eq i8 %i.w, 4
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.u, align 8, !tbaa !57
  %i.z = trunc i64 %i.y to i32
  br label %jit_guard_not_Z_TYPE.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.s) #34 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !57
  store i32 4, ptr %i.v, align 8, !tbaa !57
  br label %jit_guard_not_Z_TYPE.exit

jit_guard_not_Z_TYPE.exit:                        ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.z, %bb.g ]
  tail call void @_ir_GUARD(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef %.0.i.i) #34
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.ac = and i64 %4, 3
  %i.ad = icmp eq i64 %i.ac, 1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %4, 252
  %i.af = icmp eq i64 %i.ae, 48
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = tail call fastcc i32 @jit_Z_TYPE(ptr noundef nonnull %0, i64 noundef %4)
  %i.ah = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.ag) #34 ; 2 uses
  tail call void @_ir_IF_FALSE_cold(ptr noundef nonnull %0, i32 noundef %i.ah) #34
  tail call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef %1)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.aj = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ai, i64 noundef ptrtoint (ptr @zend_jit_undefined_op_helper to i64)) #34 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !57
  %i.am = icmp eq i8 %i.al, 4
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !57
  %i.ao = trunc i64 %i.an to i32
  br label %jit_CONST_FUNC.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_jit_undefined_op_helper to i64)) #34 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !419
  %i.ar = sext i32 %i.ap to i64                   ; 2 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.ar
  store i32 1605, ptr %i.as, align 8, !tbaa !57
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !57
  store i32 4, ptr %i.ak, align 8, !tbaa !57
  br label %jit_CONST_FUNC.exit

jit_CONST_FUNC.exit:                              ; preds = %bb.j, %bb.k
  %.0.i.i63 = phi i32 [ %i.ao, %bb.j ], [ %i.ap, %bb.k ]
  %i.at = lshr i64 %4, 8
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef %i.au) #34
  %i.aw = tail call i32 @_ir_CALL_1(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i63, i32 noundef %i.av) #34 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !65 ; 2 uses
  %.not.i65 = icmp eq i32 %i.ay, 0
  br i1 %.not.i65, label %bb.l, label %jit_STUB_FUNC_ADDR.exit, !prof !88

bb.l:                                             ; preds = %jit_CONST_FUNC.exit
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 208), align 16, !tbaa !60
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ba) #34 ; 3 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !419
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bd
  store i32 1605, ptr %i.be, align 8, !tbaa !57
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !65
  br label %jit_STUB_FUNC_ADDR.exit

jit_STUB_FUNC_ADDR.exit:                          ; preds = %jit_CONST_FUNC.exit, %bb.l
  %.0.i66 = phi i32 [ %i.bb, %bb.l ], [ %i.ay, %jit_CONST_FUNC.exit ]
  %i.bf = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %2)
  %i.bg = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ai, i64 noundef ptrtoint (ptr @executor_globals to i64)) #34 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !57
  %i.bj = icmp eq i8 %i.bi, 4
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %jit_STUB_FUNC_ADDR.exit
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !57
  %i.bl = trunc i64 %i.bk to i32
  br label %jit_CONST_ADDR.exit

bb.n:                                             ; preds = %jit_STUB_FUNC_ADDR.exit
  %i.bm = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @executor_globals to i64)) #34 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  store i64 %i.bn, ptr %i.bg, align 8, !tbaa !57
  store i32 4, ptr %i.bh, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.m, %bb.n
  %.0.i67 = phi i32 [ %i.bm, %bb.n ], [ %i.bl, %bb.m ]
  %i.bo = tail call i32 @_ir_CALL_2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i66, i32 noundef %i.bf, i32 noundef %.0.i67) #34 ; 0 uses
  %i.bp = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.ah) #34
  br label %bb.o

bb.o:                                             ; preds = %jit_guard_not_Z_TYPE.exit, %jit_CONST_ADDR.exit, %bb.a
  %.053 = phi i32 [ 0, %jit_guard_not_Z_TYPE.exit ], [ %i.bp, %jit_CONST_ADDR.exit ], [ 0, %bb.a ] ; 2 uses
  %i.bq = and i32 %5, 1984
  %.not57 = icmp eq i32 %i.bq, 0
  br i1 %.not57, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %3, i1 true)
  switch i8 %i.br, label %.unreachabledefault [
    i8 0, label %bb.t
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bs = and i32 %5, 1024
  %.not59 = icmp eq i32 %i.bs, 0
  %. = select i1 %.not59, i64 27, i64 28
  br label %bb.t

.unreachabledefault:                              ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = icmp eq i8 %3, 8
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = and i32 %5, 1024
  %.not58 = icmp eq i32 %i.bu, 0
  %.62 = select i1 %.not58, i64 29, i64 30
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.r, %bb.o, %bb.q
  %.051 = phi i64 [ 27, %bb.o ], [ 27, %bb.q ], [ 26, %bb.p ], [ %., %bb.r ], [ %.62, %bb.s ] ; 2 uses
  %.not60 = icmp eq ptr %1, null
  br i1 %.not60, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.051 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !65 ; 2 uses
  %.not.i68 = icmp eq i32 %i.bx, 0
  br i1 %.not.i68, label %bb.w, label %jit_STUB_FUNC_ADDR.exit70, !prof !88

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @zend_jit_stub_handlers, i64 %.051
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !60
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ca) #34 ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !419
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd
  store i32 1605, ptr %i.ce, align 8, !tbaa !57
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !65
  br label %jit_STUB_FUNC_ADDR.exit70

jit_STUB_FUNC_ADDR.exit70:                        ; preds = %bb.v, %bb.w
  %.0.i69 = phi i32 [ %i.cb, %bb.w ], [ %i.bx, %bb.v ]
  %i.cf = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %2)
  %i.cg = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %4)
  %i.ch = tail call i32 @_ir_CALL_2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i69, i32 noundef %i.cf, i32 noundef %i.cg) #34 ; 0 uses
  %.not61 = icmp eq i32 %.053, 0
  br i1 %.not61, label %.critedge, label %bb.x

bb.x:                                             ; preds = %jit_STUB_FUNC_ADDR.exit70
  %i.ci = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.ci, i32 noundef %.053) #34
  br label %.critedge

.critedge:                                        ; preds = %zend_jit_trace_get_exit_addr.exit, %jit_STUB_FUNC_ADDR.exit70, %bb.x
  %.1 = phi i32 [ 1, %jit_STUB_FUNC_ADDR.exit70 ], [ 0, %zend_jit_trace_get_exit_addr.exit ], [ 1, %bb.x ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_jit_assign_to_variable(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i64 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  store i32 0, ptr %i.a, align 16, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 6, ptr %i.b, align 4, !tbaa !65
  %i.c = alloca [32 x i8], align 16               ; 16 uses
  store i32 0, ptr %i.c, align 16, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store i32 6, ptr %i.d, align 4, !tbaa !65
  %i.e = and i64 %7, 3
  %i.f = icmp eq i64 %i.e, 2                      ; 2 uses
  br i1 %i.f, label %bb.b, label %zend_jit_use_reg.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !383  ; 2 uses
  %i.i = lshr i64 %7, 2                           ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !380
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %zend_jit_use_reg.exit

bb.c:                                             ; preds = %bb.b
  %sext.i = shl i64 %i.i, 32
  %i.m = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !380  ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i32 %i.o, -1
  br i1 %i.q, label %bb.d, label %zend_jit_use_reg.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !250
  %i.v = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.m
  %i.w = load i32, ptr %i.v, align 8, !tbaa !397
  %i.x = shl i32 %i.w, 4
  %i.y = add i32 %i.x, 80
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = or disjoint i64 %i.aa, 49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !247
  %i.ae = getelementptr inbounds [40 x i8], ptr %i.ad, i64 %i.m
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !417
  %i.ag = and i32 %i.af, 1022
  %i.ah = icmp eq i32 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i32 11, i32 12
  %i.ai = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %i.ab)
  %i.aj = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef %spec.select.i, i32 noundef %i.ai) #34
  tail call fastcc void @zend_jit_def_reg(ptr noundef nonnull %0, i64 noundef %7, i32 noundef %i.aj)
  br label %zend_jit_use_reg.exit

zend_jit_use_reg.exit:                            ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ak = and i64 %3, 3
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %zend_jit_use_reg.exit
  %i.am = lshr i64 %3, 2
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !311
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !312
  %i.aq = and i64 %9, 3
  %i.ar = icmp eq i64 %i.aq, 2                    ; 2 uses
  %spec.select = select i1 %i.ar, i64 0, i64 %9
  %spec.select319 = select i1 %i.ar, i64 %9, i64 0
  br label %bb.h

bb.f:                                             ; preds = %zend_jit_use_reg.exit
  %i.as = and i64 %9, 3
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = lshr i64 %9, 2
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !311
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.c, ptr %i.ax, align 8, !tbaa !312
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.0291 = phi i64 [ %9, %bb.f ], [ %spec.select, %bb.e ], [ %9, %bb.g ] ; 8 uses
  %.0277 = phi i64 [ 0, %bb.f ], [ %spec.select319, %bb.e ], [ 0, %bb.g ] ; 6 uses
  %i.ay = and i32 %4, 1024
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = icmp ne i64 %10, 0                      ; 4 uses
  %or.cond = or i1 %i.az, %i.ba
  br i1 %or.cond, label %bb.i, label %bb.an

bb.i:                                             ; preds = %bb.h
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef %0, i64 noundef %2) ; 3 uses
  %i.bc = call i32 @ir_const_u8(ptr noundef %0, i8 noundef zeroext 10) #34
  %i.bd = call fastcc i32 @jit_if_Z_TYPE_ref(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc) ; 2 uses
  call void @_ir_IF_TRUE(ptr noundef %0, i32 noundef %i.bd) #34
  %i.be = call i32 @_ir_LOAD(ptr noundef %0, i32 noundef 6, i32 noundef %i.bb) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef %0, i64 noundef %10)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0276 = phi i32 [ 0, %bb.k ], [ %i.bb, %bb.j ]
  %.0275 = phi i32 [ 0, %bb.k ], [ %i.bd, %bb.j ]
  %.0274 = phi i32 [ %i.bf, %bb.k ], [ %i.be, %bb.j ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.bh = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.bg, i64 noundef 24) #34 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !57
  %i.bk = icmp eq i8 %i.bj, 4
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %i.bh, align 8, !tbaa !57
  %i.bm = trunc i64 %i.bl to i32
  br label %jit_if_TYPED_REF.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 24) #34 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !57
  store i32 4, ptr %i.bi, align 8, !tbaa !57
  br label %jit_if_TYPED_REF.exit

jit_if_TYPED_REF.exit:                            ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i32 [ %i.bn, %bb.n ], [ %i.bm, %bb.m ]
  %i.bp = call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %.0274, i32 noundef %.0.i.i.i) #34
  %i.bq = call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.bp) #34
  %i.br = call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.bq) #34 ; 3 uses
  call void @_ir_IF_TRUE_cold(ptr noundef nonnull %0, i32 noundef %i.br) #34
  call fastcc void @jit_SET_EX_OPLINE(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %i.f, label %bb.o, label %bb.p

bb.o:                                             ; preds = %jit_if_TYPED_REF.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !102
  %.off = add i8 %i.bt, -23
  %switch = icmp ult i8 %.off, 2
  %spec.select391 = select i1 %switch, i64 40, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select391
  %.0269.in.in.in = load i32, ptr %i.bu, align 4, !tbaa !57
  %.0269.in.in = zext i32 %.0269.in.in.in to i64
  %.0269.in = shl nuw nsw i64 %.0269.in.in, 8
  %.0269 = or disjoint i64 %.0269.in, 49          ; 2 uses
  call fastcc void @zend_jit_spill_store_inv(ptr noundef nonnull %0, i64 noundef %7, i64 noundef %.0269, i32 noundef %8)
  br label %bb.p

bb.p:                                             ; preds = %jit_if_TYPED_REF.exit, %bb.o
  %.0269.sink = phi i64 [ %.0269, %bb.o ], [ %7, %jit_if_TYPED_REF.exit ]
  %i.bv = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0269.sink) ; 2 uses
  %.not = icmp eq i64 %.0291, 0
  %i.bw = call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %6, i1 true) ; 2 uses
  br i1 %.not, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  switch i8 %i.bw, label %.unreachabledefault [
    i8 0, label %bb.u
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  br label %bb.u

.unreachabledefault:                              ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bx = icmp eq i8 %6, 8
  call void @llvm.assume(i1 %i.bx)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.r, %bb.t, %bb.s
  %.0270 = phi i64 [ ptrtoint (ptr @zend_jit_assign_cv_to_typed_ref to i64), %bb.t ], [ ptrtoint (ptr @zend_jit_assign_tmp_to_typed_ref to i64), %bb.r ], [ ptrtoint (ptr @zend_jit_assign_var_to_typed_ref to i64), %bb.s ], [ ptrtoint (ptr @zend_jit_assign_const_to_typed_ref to i64), %bb.q ] ; 2 uses
  %i.by = call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.bg, i64 noundef %.0270) #34 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !57
  %i.cb = icmp eq i8 %i.ca, 4
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = load i64, ptr %i.by, align 8, !tbaa !57
  %i.cd = trunc i64 %i.cc to i32
  br label %jit_CONST_FUNC.exit

bb.w:                                             ; preds = %bb.u
  %i.ce = call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %.0270) #34 ; 2 uses
end_hunk_1
begin_hunk_2_@zend_jit_assign_to_variable:bb.a
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

bb.ch:                                            ; preds = %bb.cf
  %i.jz = and i32 %5, 16
  %.not316 = icmp eq i32 %i.jz, 0
  %i.ka = select i1 %.not316, i32 12, i32 11
  %i.kb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.kc = call i32 @_ir_PHI_N(ptr noundef nonnull %0, i32 noundef %i.ka, i32 noundef %i.ju, ptr noundef nonnull %i.kb) #34
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0 = phi i32 [ %i.jy, %bb.cg ], [ %i.kc, %bb.ch ] ; 4 uses
  br i1 %i.jo, label %bb.cj, label %bb.ct

bb.cj:                                            ; preds = %bb.ci
  %i.kd = and i32 %4, 1984
  %i.ke = icmp ne i32 %i.kd, 0
  %or.cond5 = or i1 %i.ke, %i.ba
  br i1 %or.cond5, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.kf = load ptr, ptr %0, align 8, !tbaa !419
  %i.kg = sext i32 %.0 to i64
  %i.kh = getelementptr inbounds [16 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !57
  %i.kk = zext i8 %i.kj to i32
  %i.kl = shl nuw nsw i32 %i.kk, 8
  %i.km = or disjoint i32 %i.kl, 64
  %i.kn = call i32 @ir_emit2(ptr noundef nonnull %0, i32 noundef %i.km, i32 noundef %.0, i32 noundef 1) #34
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.1 = phi i32 [ %i.kn, %bb.ck ], [ %.0, %bb.cj ]
  call fastcc void @zend_jit_def_reg(ptr noundef nonnull %0, i64 noundef %.2290, i32 noundef %.1)
  %.not317 = icmp eq i64 %.0277, 0
  br i1 %.not317, label %jit_set_Z_LVAL.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ko = and i32 %5, 16
  %.not318 = icmp eq i32 %i.ko, 0
  %i.kp = and i64 %.0277, 3
  %i.kq = icmp eq i64 %i.kp, 2                    ; 2 uses
  br i1 %.not318, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kr = call fastcc i32 @jit_Z_LVAL(ptr noundef nonnull %0, i64 noundef %.2290) ; 2 uses
  br i1 %i.kq, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call fastcc void @zend_jit_def_reg(ptr noundef nonnull %0, i64 noundef %.0277, i32 noundef %i.kr)
  br label %jit_set_Z_LVAL.exit

bb.cp:                                            ; preds = %bb.cn
  %i.ks = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0277)
  call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %i.ks, i32 noundef %i.kr) #34
  br label %jit_set_Z_LVAL.exit

bb.cq:                                            ; preds = %bb.cm
  %i.kt = call fastcc i32 @jit_Z_DVAL(ptr noundef nonnull %0, i64 noundef %.2290) ; 2 uses
  br i1 %i.kq, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call fastcc void @zend_jit_def_reg(ptr noundef nonnull %0, i64 noundef %.0277, i32 noundef %i.kt)
  br label %jit_set_Z_LVAL.exit

bb.cs:                                            ; preds = %bb.cq
  %i.ku = call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %.0277)
  call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %i.ku, i32 noundef %i.kt) #34
  br label %jit_set_Z_LVAL.exit

bb.ct:                                            ; preds = %bb.ci
  call fastcc void @zend_jit_def_reg(ptr noundef nonnull %0, i64 noundef %.0291, i32 noundef %.0)
  br label %jit_set_Z_LVAL.exit

jit_set_Z_LVAL.exit:                              ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.co, %.thread371, %bb.cl, %bb.ct
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_jit_assign_obj_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !246
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = tail call i32 @zend_jit_undefined_op_helper(i32 noundef %i.g) ; 0 uses
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 8), align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i8 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.0 = phi ptr [ @executor_globals, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = icmp eq i8 %i.i, 10
  br i1 %i.j, label %bb.d, label %bb.e, !prof !88

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.0, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi ptr [ %i.l, %bb.d ], [ %.0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !703
  %i.q = tail call ptr %i.p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.1, ptr noundef %3) #34 ; 5 uses
  %i.r = icmp ne ptr %4, null
  %i.s = icmp ne ptr %i.q, null
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  %i.v = and i32 %i.u, 65280
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = and i32 %i.u, 255
  %i.x = icmp eq i32 %i.w, 10
  br i1 %i.x, label %bb.h, label %.sink.split, !prof !88

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i32 %i.ab, 65280
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink39 = phi i32 [ %i.ab, %bb.h ], [ %i.u, %bb.g ]
  %.sink.in = phi ptr [ %i.z, %bb.h ], [ %i.q, %bb.g ] ; 2 uses
  %i.ad = and i32 %.sink39, 65280
  %i.ae = icmp ne i32 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !57 ; 2 uses
  %i.af = load i32, ptr %.sink, align 4, !tbaa !317
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %.sink, align 4, !tbaa !317
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.h
  %.028 = phi ptr [ %i.q, %bb.f ], [ %i.z, %bb.h ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.ah = load ptr, ptr %.028, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !57
  store ptr %i.ah, ptr %4, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  ret void
}

declare ptr @zend_assign_to_typed_ref_ex(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_assign_const_to_typed_ref(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %0, ptr %2, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 778, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %.not26.i = icmp eq ptr %i.c, null
  br i1 %.not26.i, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !246
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !57
  %i.i = icmp slt i32 %i.h, 0
  %i.j = call ptr @zend_assign_to_typed_ref(ptr noundef nonnull %2, ptr noundef %1, i8 noundef zeroext 1, i1 noundef zeroext %i.i) #34
  br label %zend_assign_to_variable.exit

bb.c:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@jit_observer_fcall_is_unobserved_start:bb.a

jit_ADD_OFFSET.exit150:                           ; preds = %jit_CONST_ADDR.exit.i146, %.thread178, %jit_ADD_OFFSET.exit163
  %.sroa.4.1182 = phi i32 [ %i.dt, %jit_ADD_OFFSET.exit163 ], [ %.sroa.4.1183, %.thread178 ], [ %.sroa.4.1183, %jit_CONST_ADDR.exit.i146 ]
  %storemerge = phi i32 [ %i.fr, %jit_ADD_OFFSET.exit163 ], [ %.0181, %.thread178 ], [ %i.em, %jit_CONST_ADDR.exit.i146 ] ; 2 uses
  store i32 %storemerge, ptr %2, align 4, !tbaa !65
  %i.fs = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %storemerge) #34
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fu = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.ft, i64 noundef 3) #34 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !57
  %i.fx = icmp eq i8 %i.fw, 4
  br i1 %i.fx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %jit_ADD_OFFSET.exit150
  %i.fy = load i64, ptr %i.fu, align 8, !tbaa !57
  %i.fz = trunc i64 %i.fy to i32
  br label %jit_CONST_ADDR.exit166

bb.as:                                            ; preds = %jit_ADD_OFFSET.exit150
  %i.ga = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 3) #34 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  store i64 %i.gb, ptr %i.fu, align 8, !tbaa !57
  store i32 4, ptr %i.fv, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit166

jit_CONST_ADDR.exit166:                           ; preds = %bb.ar, %bb.as
  %.0.i164 = phi i32 [ %i.ga, %bb.as ], [ %i.fz, %bb.ar ]
  %i.gc = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 270, i32 noundef %i.fs, i32 noundef %.0.i164) #34
  %i.gd = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.gc) #34 ; 2 uses
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.gd) #34
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.1182 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.gd to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_jit_check_timeout(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.b = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.a, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) to i64)) #34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !57
  %i.e = icmp eq i8 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !57
  %i.g = trunc i64 %i.f to i32
  br label %jit_CONST_ADDR.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) to i64)) #34 ; 2 uses
  %i.i = sext i32 %i.h to i64
  store i64 %i.i, ptr %i.b, align 8, !tbaa !57
  store i32 4, ptr %i.c, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  %i.j = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %.0.i) #34 ; 3 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %jit_CONST_ADDR.exit
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.a, i64 noundef %i.k) #34 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !57
  %i.o = icmp eq i8 %i.n, 4
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.l, align 8, !tbaa !57
  %i.q = trunc i64 %i.p to i32
  br label %jit_CONST_ADDR.exit26

bb.f:                                             ; preds = %bb.d
  %i.r = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.k) #34 ; 2 uses
  %i.s = sext i32 %i.r to i64
  store i64 %i.s, ptr %i.l, align 8, !tbaa !57
  store i32 4, ptr %i.m, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit26

jit_CONST_ADDR.exit26:                            ; preds = %bb.e, %bb.f
  %.0.i24 = phi i32 [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  tail call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %.0.i24) #34
  br label %bb.o

bb.g:                                             ; preds = %jit_CONST_ADDR.exit
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !425
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !65   ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.j, label %jit_STUB_ADDR.exit, !prof !88

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 32), align 32, !tbaa !60
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.z) #34 ; 2 uses
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !65
  br label %jit_STUB_ADDR.exit

jit_STUB_ADDR.exit:                               ; preds = %bb.i, %bb.j
  %.0.i27 = phi i32 [ %i.aa, %bb.j ], [ %i.x, %bb.i ]
  tail call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %.0.i27) #34
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.ab = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.j) #34 ; 2 uses
  tail call void @_ir_IF_TRUE_cold(ptr noundef nonnull %0, i32 noundef %i.ab) #34
  %i.ac = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ad = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.a, i64 noundef %i.ac) #34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !57
  %i.ag = icmp eq i8 %i.af, 4
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !57
  %i.ai = trunc i64 %i.ah to i32
  br label %jit_LOAD_IP_ADDR.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ac) #34 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !57
  store i32 4, ptr %i.ae, align 8, !tbaa !57
  br label %jit_LOAD_IP_ADDR.exit

jit_LOAD_IP_ADDR.exit:                            ; preds = %bb.l, %bb.m
  %.0.i.i = phi i32 [ %i.aj, %bb.m ], [ %i.ai, %bb.l ]
  tail call void @_ir_RSTORE(ptr noundef nonnull %0, i32 noundef 13, i32 noundef %.0.i.i) #34
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %.not.i28 = icmp eq i32 %i.am, 0
  br i1 %.not.i28, label %bb.n, label %jit_STUB_ADDR.exit30, !prof !88

bb.n:                                             ; preds = %jit_LOAD_IP_ADDR.exit
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_jit_stub_handlers, i64 32), align 32, !tbaa !60
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.ao) #34 ; 2 uses
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !65
  br label %jit_STUB_ADDR.exit30

jit_STUB_ADDR.exit30:                             ; preds = %jit_LOAD_IP_ADDR.exit, %bb.n
  %.0.i29 = phi i32 [ %i.ap, %bb.n ], [ %i.am, %jit_LOAD_IP_ADDR.exit ]
  tail call void @_ir_IJMP(ptr noundef nonnull %0, i32 noundef %.0.i29) #34
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.ab) #34
  br label %bb.o

bb.o:                                             ; preds = %jit_STUB_ADDR.exit, %jit_STUB_ADDR.exit30, %jit_CONST_ADDR.exit26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_zend_jit_add_predecessor_ref(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !565
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !713
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !375
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.e
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !376
  %i.w = load i32, ptr %i.l, align 4, !tbaa !65
  %i.x = icmp eq i32 %i.w, %2
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = add nuw nsw i32 %.05056, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.050.lcssa = phi i32 [ 1, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.t, %bb.a ], [ %i.ar, %._crit_edge.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !374
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.e
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !65 ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %0, align 8, !tbaa !419
  %i.ae = sext i32 %3 to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !57
  switch i8 %i.ag, label %.unreachabledefault [
    i8 109, label %bb.c
    i8 111, label %bb.d
    i8 112, label %bb.g
    i8 116, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  store i8 110, ptr %i.af, align 8, !tbaa !57
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ah = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i32 %i.aj, %1
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %3) #34
  br label %jit_IF_TRUE_FALSE_ex.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %3) #34
  br label %jit_IF_TRUE_FALSE_ex.exit

jit_IF_TRUE_FALSE_ex.exit:                        ; preds = %bb.e, %bb.f
  %i.am = tail call i32 @_ir_LOOP_END(ptr noundef nonnull %0) #34
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @zend_jit_case_start(ptr noundef %0, i32 noundef %2, i32 noundef %1, i32 noundef %3)
  %i.an = tail call i32 @_ir_LOOP_END(ptr noundef nonnull %0) #34
  br label %bb.i

.unreachabledefault:                              ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.b
  tail call void @_ir_BEGIN(ptr noundef nonnull %0, i32 noundef %3) #34
  %i.ao = tail call i32 @_ir_LOOP_END(ptr noundef nonnull %0) #34
  br label %bb.i

bb.i:                                             ; preds = %jit_IF_TRUE_FALSE_ex.exit, %bb.h, %bb.g, %bb.c
  %.051 = phi i32 [ %3, %bb.c ], [ %i.am, %jit_IF_TRUE_FALSE_ex.exit ], [ %i.an, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  tail call void @_ir_MERGE_SET_OP(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %.050.lcssa, i32 noundef %.051) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.1 = phi i32 [ %.051, %bb.i ], [ %3, %._crit_edge ]
  store i32 %.1, ptr %.0.lcssa, align 4, !tbaa !65
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.058 = phi ptr [ %i.ar, %.lr.ph ], [ %i.t, %bb.a ]
  %.04957 = phi ptr [ %i.aq, %.lr.ph ], [ %i.l, %bb.a ]
  %.05056 = phi i32 [ %i.ap, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.ap = add nuw nsw i32 %.05056, 1              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04957, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.058, i64 4 ; 2 uses
  %i.as = icmp samesign ult i32 %i.ap, %i.v
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !65
  %i.au = icmp eq i32 %i.at, %2
  br i1 %i.au, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !714
}

declare i32 @_ir_ALLOCA(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @jit_observer_fcall_end(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.a, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 536) to i64)) #34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !57
  %i.e = icmp eq i8 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !57
  %i.g = trunc i64 %i.f to i32
  br label %jit_CONST_ADDR.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 536) to i64)) #34 ; 2 uses
  %i.i = sext i32 %i.h to i64
  store i64 %i.i, ptr %i.b, align 8, !tbaa !57
  store i32 4, ptr %i.c, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  %i.j = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %.0.i) #34
  %i.k = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 270, i32 noundef %1, i32 noundef %i.j) #34
  %i.l = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.k) #34 ; 2 uses
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.l) #34
  %i.m = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.a, i64 noundef ptrtoint (ptr @zend_observer_fcall_end_prechecked to i64)) #34 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !57
  %i.p = icmp eq i8 %i.o, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %jit_CONST_ADDR.exit
  %i.q = load i64, ptr %i.m, align 8, !tbaa !57
  %i.r = trunc i64 %i.q to i32
  br label %jit_CONST_FUNC.exit

bb.e:                                             ; preds = %jit_CONST_ADDR.exit
  %i.s = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_observer_fcall_end_prechecked to i64)) #34 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !419
  %i.u = sext i32 %i.s to i64                     ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  store i32 1605, ptr %i.v, align 8, !tbaa !57
  store i64 %i.u, ptr %i.m, align 8, !tbaa !57
  store i32 4, ptr %i.n, align 8, !tbaa !57
  br label %jit_CONST_FUNC.exit

jit_CONST_FUNC.exit:                              ; preds = %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.w = tail call i32 @_ir_CALL_2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i.i, i32 noundef %1, i32 noundef %2) #34 ; 0 uses
  %i.x = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.l) #34
  %i.y = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.x, i32 noundef %i.y) #34
  ret void
}

declare void @zend_fcall_interrupt(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @zend_jit_vm_stack_free_args_helper(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %zend_vm_stack_free_args.exit, label %bb.b, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.c

bb.c:                                             ; preds = %zval_ptr_dtor_nogc.exit.i, %bb.b
  %.05.i = phi i32 [ %i.b, %bb.b ], [ %i.l, %zval_ptr_dtor_nogc.exit.i ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %zval_ptr_dtor_nogc.exit.i ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !57
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %zval_ptr_dtor_nogc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %.0.i, align 8, !tbaa !57  ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !317  ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !317
  %.not3.i.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i.i, label %bb.e, label %zval_ptr_dtor_nogc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %.0.i, align 8, !tbaa !57
  tail call void @rc_dtor_func(ptr noundef %i.j) #34
  br label %zval_ptr_dtor_nogc.exit.i

zval_ptr_dtor_nogc.exit.i:                        ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.l = add i32 %.05.i, -1                       ; 2 uses
  %.not7.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i, label %zend_vm_stack_free_args.exit, label %bb.c, !llvm.loop !715

zend_vm_stack_free_args.exit:                     ; preds = %zval_ptr_dtor_nogc.exit.i, %bb.a
  ret void
}

declare void @zend_free_extra_named_params(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @jit_OBJ_RELEASE(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_ir_LOAD(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %1) #34
  %i.b = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef 1) #34
  %i.c = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1051, i32 noundef %i.a, i32 noundef %i.b) #34 ; 2 uses
  tail call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.c) #34
  %i.d = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.c) #34 ; 2 uses
end_hunk_3
begin_hunk_4_@zend_jit_cmp_long_double:bb.a
  br label %jit_set_Z_TYPE_INFO_ref.exit

bb.h:                                             ; preds = %bb.f
  %i.q = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 8) #34 ; 2 uses
  %i.r = sext i32 %i.q to i64
  store i64 %i.r, ptr %i.k, align 8, !tbaa !57
  store i32 4, ptr %i.l, align 8, !tbaa !57
  br label %jit_set_Z_TYPE_INFO_ref.exit

jit_set_Z_TYPE_INFO_ref.exit:                     ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i32 [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  %i.s = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.f, i32 noundef %.0.i.i.i) #34
  tail call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef %i.i) #34
  br label %bb.i

bb.i:                                             ; preds = %zend_jit_cmp_op.exit, %jit_set_Z_TYPE_INFO_ref.exit
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = ptrtoint ptr %7 to i64                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.v = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.u, i64 noundef %i.t) #34 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !57
  %i.y = icmp eq i8 %i.x, 4                       ; 2 uses
  switch i8 %4, label %bb.n [
    i8 46, label %bb.k
    i8 43, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.v, align 8, !tbaa !57
  %i.aa = trunc i64 %i.z to i32
  br label %jit_CONST_ADDR.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.t) #34 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !57
  store i32 4, ptr %i.w, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.l, %bb.m
  %.0.i49 = phi i32 [ %i.ab, %bb.m ], [ %i.aa, %bb.l ]
  tail call void @_ir_GUARD(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %.0.i49) #34
  br label %bb.s

bb.n:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !57
  %i.ae = trunc i64 %i.ad to i32
  br label %jit_CONST_ADDR.exit52

bb.p:                                             ; preds = %bb.n
  %i.af = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.t) #34 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  store i64 %i.ag, ptr %i.v, align 8, !tbaa !57
  store i32 4, ptr %i.w, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit52

jit_CONST_ADDR.exit52:                            ; preds = %bb.o, %bb.p
  %.0.i50 = phi i32 [ %i.af, %bb.p ], [ %i.ae, %bb.o ]
  tail call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %.0.i50) #34
  br label %bb.s

bb.q:                                             ; preds = %bb.i
  %.not48 = icmp eq i8 %4, 0
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = icmp eq i8 %4, 43
  %or.cond11 = or i1 %i.ah, %i.e
  %i.ai = select i1 %or.cond11, i32 %6, i32 %5
  %i.aj = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.d) #34 ; 2 uses
  tail call void @ir_set_op(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef 3, i32 noundef %i.ai) #34
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %jit_CONST_ADDR.exit, %jit_CONST_ADDR.exit52
  %i.ak = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i32 [ %i.ak, %bb.s ], [ %i.aj, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zend_jit_cmp_long_long(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, i64 noundef %6, i8 noundef zeroext %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8, !tbaa !682
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !683
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %3, 3
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %3 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.049.i = phi i64 [ %i.a, %bb.b ], [ %i.g, %bb.d ] ; 8 uses
  %.048.i = phi i64 [ %i.c, %bb.b ], [ %i.g, %bb.d ] ; 6 uses
  %.not53.i = icmp eq ptr %4, null
  br i1 %.not53.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %4, align 8, !tbaa !682
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !683
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = and i64 %5, 3
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.m = inttoptr i64 %5 to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.047.i = phi i64 [ %i.h, %bb.f ], [ %i.n, %bb.h ] ; 8 uses
  %.0.i = phi i64 [ %i.j, %bb.f ], [ %i.n, %bb.h ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !102
  switch i8 %i.p, label %bb.r [
    i8 18, label %bb.j
    i8 16, label %bb.j
    i8 48, label %bb.j
    i8 -60, label %bb.j
    i8 19, label %bb.l
    i8 17, label %bb.l
    i8 20, label %bb.n
    i8 21, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.q = icmp eq i64 %.049.i, %.048.i
  %i.r = icmp eq i64 %.047.i, %.0.i
  %or.cond.i = select i1 %i.q, i1 %i.r, i1 false
  %i.s = icmp eq i64 %.049.i, %.047.i
  %or.cond56.i = select i1 %or.cond.i, i1 %i.s, i1 false
  br i1 %or.cond56.i, label %zend_jit_is_constant_cmp_long_long.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = icmp slt i64 %.048.i, %.047.i
  %i.u = icmp sgt i64 %.049.i, %.0.i
  %or.cond57.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond57.i, label %zend_jit_is_constant_cmp_long_long.exit, label %bb.ab

bb.l:                                             ; preds = %bb.i, %bb.i
  %i.v = icmp eq i64 %.049.i, %.048.i
  %i.w = icmp eq i64 %.047.i, %.0.i
  %or.cond58.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp eq i64 %.049.i, %.047.i
  %or.cond59.i = select i1 %or.cond58.i, i1 %i.x, i1 false
  br i1 %or.cond59.i, label %zend_jit_is_constant_cmp_long_long.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp slt i64 %.048.i, %.047.i
  %i.z = icmp sgt i64 %.049.i, %.0.i
  %or.cond60.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond60.i, label %zend_jit_is_constant_cmp_long_long.exit, label %bb.ab

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp slt i64 %.048.i, %.047.i
  br i1 %i.aa, label %zend_jit_is_constant_cmp_long_long.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not55.i = icmp slt i64 %.049.i, %.0.i
  br i1 %.not55.i, label %bb.ab, label %zend_jit_is_constant_cmp_long_long.exit

bb.p:                                             ; preds = %bb.i
  %.not54.i = icmp sgt i64 %.048.i, %.047.i
  br i1 %.not54.i, label %bb.q, label %zend_jit_is_constant_cmp_long_long.exit

bb.q:                                             ; preds = %bb.p
  %i.ab = icmp sgt i64 %.049.i, %.0.i
  br i1 %i.ab, label %zend_jit_is_constant_cmp_long_long.exit, label %bb.ab

bb.r:                                             ; preds = %bb.i
  unreachable

zend_jit_is_constant_cmp_long_long.exit:          ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i = phi i1 [ true, %bb.p ], [ false, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ true, %bb.j ], [ false, %bb.q ] ; 2 uses
  switch i8 %7, label %jit_set_Z_TYPE_INFO.exit [
    i8 47, label %bb.s
    i8 46, label %bb.s
    i8 0, label %bb.s
  ]

bb.s:                                             ; preds = %zend_jit_is_constant_cmp_long_long.exit, %zend_jit_is_constant_cmp_long_long.exit, %zend_jit_is_constant_cmp_long_long.exit
  %i.ac = select i1 %.sink.i, i32 3, i32 2        ; 2 uses
  %i.ad = and i64 %6, 3
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.af = and i64 %6, 252
  %i.ag = icmp eq i64 %i.af, 48
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8 ; 2 uses
  %i.ai = icmp ne ptr %i.ah, null
  %or.cond.i113 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond.i113, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = lshr i64 %6, 12
  %i.ak = and i64 %i.aj, 268435455
  %i.al = add nuw nsw i64 %i.ak, 4294967291
  %i.am = and i64 %i.al, 4294967295
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 61
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !57
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i32 %i.ac, %i.aq
  br i1 %i.ar, label %jit_set_Z_TYPE_INFO.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.as = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef %i.ac) #34
  tail call fastcc void @jit_set_Z_TYPE_INFO_ex(ptr noundef nonnull %0, i64 noundef %6, i32 noundef %i.as)
  br label %jit_set_Z_TYPE_INFO.exit

jit_set_Z_TYPE_INFO.exit:                         ; preds = %bb.v, %bb.u, %zend_jit_is_constant_cmp_long_long.exit
  %i.at = icmp eq i8 %7, 0
  %i.au = icmp ne ptr %10, null
  %or.cond7 = or i1 %i.at, %i.au
  br i1 %or.cond7, label %bb.z, label %bb.w

bb.w:                                             ; preds = %jit_set_Z_TYPE_INFO.exit
  %11 = select i1 %.sink.i, i32 %8, i32 %9        ; 2 uses
  switch i8 %7, label %bb.y [
    i8 46, label %bb.x
    i8 43, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.av = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef -2) #34 ; 2 uses
  tail call void @ir_set_op(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef 3, i32 noundef %11) #34
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  %i.aw = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef -3) #34 ; 2 uses
  tail call void @ir_set_op(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef 3, i32 noundef %11) #34
  br label %bb.bd

bb.z:                                             ; preds = %jit_set_Z_TYPE_INFO.exit
  %i.ax = load i8, ptr %i.o, align 4, !tbaa !102
  switch i8 %i.ax, label %bb.aa [
    i8 16, label %bb.bd
    i8 17, label %bb.bd
    i8 -60, label %bb.bd
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ay = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  br label %bb.bd

bb.ab:                                            ; preds = %bb.q, %bb.o, %bb.g, %bb.m, %bb.c, %bb.k
  %i.az = getelementptr i8, ptr %1, i64 28        ; 3 uses
  %.val = load i8, ptr %i.az, align 4, !tbaa !102
  switch i8 %.val, label %bb.af [
    i8 18, label %zend_jit_cmp_op.exit
    i8 16, label %zend_jit_cmp_op.exit
    i8 48, label %zend_jit_cmp_op.exit
    i8 -60, label %zend_jit_cmp_op.exit
    i8 19, label %bb.ac
    i8 17, label %bb.ac
    i8 20, label %bb.ad
    i8 21, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  br label %zend_jit_cmp_op.exit

bb.ad:                                            ; preds = %bb.ab
  br label %zend_jit_cmp_op.exit

bb.ae:                                            ; preds = %bb.ab
  br label %zend_jit_cmp_op.exit

bb.af:                                            ; preds = %bb.ab
  unreachable

zend_jit_cmp_op.exit:                             ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i114 = phi i32 [ 274, %bb.ae ], [ 271, %bb.ac ], [ 272, %bb.ad ], [ 270, %bb.ab ], [ 270, %bb.ab ], [ 270, %bb.ab ], [ 270, %bb.ab ]
  %i.ba = tail call fastcc i32 @jit_Z_LVAL(ptr noundef nonnull %0, i64 noundef %3)
  %i.bb = tail call fastcc i32 @jit_Z_LVAL(ptr noundef nonnull %0, i64 noundef %5)
  %i.bc = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef %.0.i114, i32 noundef %i.ba, i32 noundef %i.bb) #34 ; 6 uses
  %i.bd = icmp eq i8 %7, 46
  switch i8 %7, label %bb.aj [
    i8 47, label %bb.ag
    i8 46, label %bb.ag
    i8 0, label %bb.ag
  ]

bb.ag:                                            ; preds = %zend_jit_cmp_op.exit, %zend_jit_cmp_op.exit, %zend_jit_cmp_op.exit
  %i.be = tail call fastcc i32 @jit_ZVAL_ADDR(ptr noundef nonnull %0, i64 noundef %6)
  %i.bf = tail call i32 @ir_fold1(ptr noundef nonnull %0, i32 noundef 1058, i32 noundef %i.bc) #34
  %i.bg = tail call i32 @ir_const_u32(ptr noundef nonnull %0, i32 noundef 2) #34
  %i.bh = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1050, i32 noundef %i.bf, i32 noundef %i.bg) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bj = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.bi, i64 noundef 8) #34 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !57
  %i.bm = icmp eq i8 %i.bl, 4
  br i1 %i.bm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bo = trunc i64 %i.bn to i32
  br label %jit_set_Z_TYPE_INFO_ref.exit

bb.ai:                                            ; preds = %bb.ag
  %i.bp = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef 8) #34 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  store i64 %i.bq, ptr %i.bj, align 8, !tbaa !57
  store i32 4, ptr %i.bk, align 8, !tbaa !57
  br label %jit_set_Z_TYPE_INFO_ref.exit

jit_set_Z_TYPE_INFO_ref.exit:                     ; preds = %bb.ah, %bb.ai
  %.0.i.i.i = phi i32 [ %i.bp, %bb.ai ], [ %i.bo, %bb.ah ]
  %i.br = tail call i32 @ir_fold2(ptr noundef nonnull %0, i32 noundef 1562, i32 noundef %i.be, i32 noundef %.0.i.i.i) #34
  tail call void @_ir_STORE(ptr noundef nonnull %0, i32 noundef %i.br, i32 noundef %i.bh) #34
  br label %bb.aj

bb.aj:                                            ; preds = %zend_jit_cmp_op.exit, %jit_set_Z_TYPE_INFO_ref.exit
  %.not103 = icmp eq ptr %10, null
  br i1 %.not103, label %bb.az, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bs = load i8, ptr %i.az, align 4, !tbaa !102
  %.not105 = icmp eq i8 %i.bs, 17                 ; 2 uses
  %i.bt = ptrtoint ptr %10 to i64                 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bv = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.bu, i64 noundef %i.bt) #34 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 5 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !57
  %i.by = icmp eq i8 %i.bx, 4                     ; 4 uses
  switch i8 %7, label %bb.as [
    i8 46, label %bb.al
    i8 43, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  br i1 %.not105, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.by, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !57
  %i.ca = trunc i64 %i.bz to i32
  br label %jit_CONST_ADDR.exit

bb.ao:                                            ; preds = %bb.am
  %i.cb = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.bt) #34 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  store i64 %i.cc, ptr %i.bv, align 8, !tbaa !57
  store i32 4, ptr %i.bw, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.an, %bb.ao
  %.0.i115 = phi i32 [ %i.cb, %bb.ao ], [ %i.ca, %bb.an ]
  tail call void @_ir_GUARD(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %.0.i115) #34
  br label %bb.bb

bb.ap:                                            ; preds = %bb.al
  br i1 %i.by, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cd = load i64, ptr %i.bv, align 8, !tbaa !57
  %i.ce = trunc i64 %i.cd to i32
  br label %jit_CONST_ADDR.exit118

bb.ar:                                            ; preds = %bb.ap
  %i.cf = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.bt) #34 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  store i64 %i.cg, ptr %i.bv, align 8, !tbaa !57
  store i32 4, ptr %i.bw, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit118

jit_CONST_ADDR.exit118:                           ; preds = %bb.aq, %bb.ar
  %.0.i116 = phi i32 [ %i.cf, %bb.ar ], [ %i.ce, %bb.aq ]
  tail call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %.0.i116) #34
  br label %bb.bb

bb.as:                                            ; preds = %bb.ak
  br i1 %.not105, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %i.by, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ch = load i64, ptr %i.bv, align 8, !tbaa !57
  %i.ci = trunc i64 %i.ch to i32
  br label %jit_CONST_ADDR.exit121

bb.av:                                            ; preds = %bb.at
  %i.cj = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.bt) #34 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  store i64 %i.ck, ptr %i.bv, align 8, !tbaa !57
  store i32 4, ptr %i.bw, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit121

jit_CONST_ADDR.exit121:                           ; preds = %bb.au, %bb.av
  %.0.i119 = phi i32 [ %i.cj, %bb.av ], [ %i.ci, %bb.au ]
  tail call void @_ir_GUARD_NOT(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %.0.i119) #34
  br label %bb.bb

bb.aw:                                            ; preds = %bb.as
  br i1 %i.by, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cl = load i64, ptr %i.bv, align 8, !tbaa !57
  %i.cm = trunc i64 %i.cl to i32
  br label %jit_CONST_ADDR.exit124

bb.ay:                                            ; preds = %bb.aw
  %i.cn = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef %i.bt) #34 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  store i64 %i.co, ptr %i.bv, align 8, !tbaa !57
  store i32 4, ptr %i.bw, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit124

jit_CONST_ADDR.exit124:                           ; preds = %bb.ax, %bb.ay
  %.0.i122 = phi i32 [ %i.cn, %bb.ay ], [ %i.cm, %bb.ax ]
  tail call void @_ir_GUARD(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %.0.i122) #34
  br label %bb.bb

bb.az:                                            ; preds = %bb.aj
  %.not104 = icmp eq i8 %7, 0
  br i1 %.not104, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cp = icmp eq i8 %7, 43
  %or.cond25 = or i1 %i.cp, %i.bd
  %i.cq = select i1 %or.cond25, i32 %9, i32 %8
  %i.cr = tail call i32 @_ir_IF(ptr noundef nonnull %0, i32 noundef %i.bc) #34 ; 2 uses
  tail call void @ir_set_op(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef 3, i32 noundef %i.cq) #34
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az, %jit_CONST_ADDR.exit118, %jit_CONST_ADDR.exit, %jit_CONST_ADDR.exit124, %jit_CONST_ADDR.exit121
  %i.cs = load i8, ptr %i.az, align 4, !tbaa !102
end_hunk_4
begin_hunk_5_@zend_jit_find_method_tmp_helper
define internal ptr @zend_jit_find_method_tmp_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !246 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !726  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !687
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !740
  %i.i = load ptr, ptr %1, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = tail call ptr %i.h(ptr noundef %2, ptr noundef %i.i, ptr noundef nonnull %i.j) #34, !inline_history !741 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.d, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !676
  %.not30.i = icmp eq ptr %i.m, null
  br i1 %.not30.i, label %bb.c, label %zend_jit_find_method_helper.exit, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !57
  tail call void @zend_undefined_method(ptr noundef %i.d, ptr noundef %i.n) #34
  br label %zend_jit_find_method_helper.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.k, align 8, !tbaa !57
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.i, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !107
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ]
  %.not27.i = icmp eq ptr %i.x, null
  br i1 %.not27.i, label %bb.h, label %bb.i, !prof !88

bb.h:                                             ; preds = %bb.g
  tail call void @zend_init_func_run_time_cache(ptr noundef nonnull %i.k) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !742    ; 3 uses
  %.not28.i = icmp eq ptr %0, %i.y
  br i1 %.not28.i, label %bb.j, label %bb.l, !prof !67

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = and i32 %i.aa, 786432
  %.not29.i = icmp eq i32 %i.ab, 0
  br i1 %.not29.i, label %bb.k, label %bb.l, !prof !67

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !732
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !57
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  store ptr %i.d, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.k, ptr %i.ai, align 8, !tbaa !60
  %.pre = load ptr, ptr %2, align 8, !tbaa !742
  br label %bb.l

zend_jit_find_method_helper.exit:                 ; preds = %bb.c, %bb.b
  %i.aj = load i32, ptr %0, align 8, !tbaa !317   ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.al, ptr %0, align 8, !tbaa !317
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split, label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.an = phi ptr [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %.pre, %bb.k ] ; 3 uses
  %.not13 = icmp eq ptr %0, %i.an
  br i1 %.not13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !317
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !317
  %i.aq = load i32, ptr %0, align 8, !tbaa !317   ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.as, ptr %0, align 8, !tbaa !317
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.m, %zend_jit_find_method_helper.exit
  tail call void @zend_objects_store_del(ptr noundef nonnull %0) #34
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %bb.m, %zend_jit_find_method_helper.exit
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_find_method_helper(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !246 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !726  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !687
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !740
  %i.i = load ptr, ptr %1, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = tail call ptr %i.h(ptr noundef %2, ptr noundef %i.i, ptr noundef nonnull %i.j) #34 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.d, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !676
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.c, label %bb.l, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !57
  tail call void @zend_undefined_method(ptr noundef %i.d, ptr noundef %i.n) #34
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.k, align 8, !tbaa !57
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.i, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !107
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ]
  %.not27 = icmp eq ptr %i.x, null
  br i1 %.not27, label %bb.h, label %bb.i, !prof !88

bb.h:                                             ; preds = %bb.g
  tail call void @zend_init_func_run_time_cache(ptr noundef nonnull %i.k) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !742
  %.not28 = icmp eq ptr %0, %i.y
  br i1 %.not28, label %bb.j, label %bb.l, !prof !67

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = and i32 %i.aa, 786432
  %.not29 = icmp eq i32 %i.ab, 0
  br i1 %.not29, label %bb.k, label %bb.l, !prof !67

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !732
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !57
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  store ptr %i.d, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.k, ptr %i.ai, align 8, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %bb.b, %bb.c
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_push_static_method_call_frame_tmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726
  %i.c = load i32, ptr %0, align 8, !tbaa !317    ; 2 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %0, align 8, !tbaa !317
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @zend_objects_store_del(ptr noundef nonnull %0) #34
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !676
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %zend_vm_stack_push_call_frame_ex.exit, !prof !67

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = add i32 %2, 5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57
  %i.k = add i32 %i.h, %i.j                       ; 2 uses
  %i.l = load i8, ptr %1, align 8, !tbaa !57
  %.not.i.i = icmp eq i8 %i.l, 1
  br i1 %.not.i.i, label %zend_vm_stack_push_call_frame.exit, label %bb.d, !prof !88

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !57
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %2)
  %i.q = add i32 %i.n, %i.k
  %i.r = sub i32 %i.q, %..i.i
  br label %zend_vm_stack_push_call_frame.exit

zend_vm_stack_push_call_frame.exit:               ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.r, %bb.d ], [ %i.k, %bb.c ]
  %i.s = shl i32 %.0.i.i, 4
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720 ; 3 uses
  %i.u = zext i32 %i.s to i64                     ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !743
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, %i.u
  br i1 %i.z, label %bb.e, label %bb.f, !prof !88

bb.e:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.aa = tail call ptr @zend_vm_stack_extend(i64 noundef %i.u) #34
  br label %zend_vm_stack_push_call_frame_ex.exit.sink.split

bb.f:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720
  br label %zend_vm_stack_push_call_frame_ex.exit.sink.split

zend_vm_stack_push_call_frame_ex.exit.sink.split: ; preds = %bb.e, %bb.f
  %.sink14 = phi ptr [ %i.t, %bb.f ], [ %i.aa, %bb.e ] ; 5 uses
  %.sink = phi i32 [ 0, %bb.f ], [ 262144, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink14, i64 24
  store ptr %1, ptr %i.ac, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink14, i64 32
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink14, i64 40
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %.sink14, i64 44
  store i32 %2, ptr %i.af, align 4, !tbaa !57
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %zend_vm_stack_push_call_frame_ex.exit.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.sink14, %zend_vm_stack_push_call_frame_ex.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_push_static_method_call_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726
  %i.c = add i32 %2, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %i.f = add i32 %i.c, %i.e                       ; 2 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !57
  %.not.i.i = icmp eq i8 %i.g, 1
  br i1 %.not.i.i, label %zend_vm_stack_push_call_frame.exit, label %bb.b, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %2)
  %i.l = add i32 %i.i, %i.f
  %i.m = sub i32 %i.l, %..i.i
  br label %zend_vm_stack_push_call_frame.exit

zend_vm_stack_push_call_frame.exit:               ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.m, %bb.b ], [ %i.f, %bb.a ]
  %i.n = shl i32 %.0.i.i, 4
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720 ; 3 uses
  %i.p = zext i32 %i.n to i64                     ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !743
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, %i.p
  br i1 %i.u, label %bb.c, label %bb.d, !prof !88

bb.c:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.v = tail call ptr @zend_vm_stack_extend(i64 noundef %i.p) #34
  br label %zend_vm_stack_push_call_frame_ex.exit

bb.d:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %bb.c, %bb.d
  %.sink10 = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.d ] ; 5 uses
  %.sink = phi i32 [ 262144, %bb.c ], [ 0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sink10, i64 24
  store ptr %1, ptr %i.x, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %.sink10, i64 32
  store ptr %i.b, ptr %i.y, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %.sink10, i64 40
  store i32 %.sink, ptr %i.z, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink10, i64 44
  store i32 %2, ptr %i.aa, align 4, !tbaa !57
  ret ptr %.sink10
}

declare void @zend_undefined_method(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_init_func_run_time_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_find_class_helper(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !193    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.c = load i8, ptr %i.b, align 1, !tbaa !322
  switch i8 %i.c, label %bb.e [
    i8 1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !732
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f, !prof !88

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = tail call ptr @zend_fetch_class_by_name(ptr noundef %i.p, ptr noundef %i.r, i32 noundef 512) #34
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !57
  %i.v = tail call ptr @zend_fetch_class(ptr noundef null, i32 noundef %i.u) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !57
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ], [ %i.v, %bb.d ], [ %i.aa, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_find_static_method_helper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !193    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.c = load i8, ptr %i.b, align 1, !tbaa !322
  %i.d = icmp eq i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !732
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread, label %bb.r, !prof !88

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %bb.d, label %.thread, !prof !67

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  br label %bb.r

.thread:                                          ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !744  ; 2 uses
  %.not62 = icmp eq ptr %i.v, null
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.x = tail call ptr %i.v(ptr noundef nonnull %1, ptr noundef %i.w) #34
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = tail call ptr @zend_std_get_static_method(ptr noundef nonnull %1, ptr noundef %i.w, ptr noundef nonnull %i.y) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.053 = phi ptr [ %i.x, %bb.e ], [ %i.z, %bb.f ] ; 10 uses
  %.not68 = icmp eq ptr %.053, null
  br i1 %.not68, label %bb.h, label %bb.j, !prof !88

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !676
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.i, label %bb.r, !prof !67

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !57
  tail call void @zend_undefined_method(ptr noundef nonnull %1, ptr noundef %i.ab) #34
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.053, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57
  %i.ae = and i32 %i.ad, 786432
  %.not63 = icmp eq i32 %i.ae, 0
  br i1 %.not63, label %bb.k, label %bb.m, !prof !67

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.053, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !431
  %i.aj = and i32 %i.ai, 2
  %.not64 = icmp eq i32 %i.aj, 0
  br i1 %.not64, label %bb.l, label %bb.m, !prof !67

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !732
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !57
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao ; 2 uses
  store ptr %1, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.053, ptr %i.aq, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ar = load i8, ptr %.053, align 8, !tbaa !57
  %i.as = icmp eq i8 %i.ar, 2
  br i1 %i.as, label %bb.n, label %bb.r, !prof !67

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.053, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = and i64 %i.av, 1
  %.not65 = icmp eq i64 %i.aw, 0
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !107
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.av
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ba = phi ptr [ %i.az, %bb.o ], [ %i.au, %bb.n ]
  %.not66 = icmp eq ptr %i.ba, null
  br i1 %.not66, label %bb.q, label %bb.r, !prof !88

bb.q:                                             ; preds = %bb.p
  tail call void @zend_init_func_run_time_cache(ptr noundef nonnull %.053) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.h, %bb.q, %bb.p, %bb.m, %bb.b, %bb.d
  %.1 = phi ptr [ null, %bb.h ], [ %.053, %bb.q ], [ null, %bb.i ], [ %i.l, %bb.b ], [ %i.p, %bb.d ], [ %.053, %bb.m ], [ %.053, %bb.p ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_push_this_method_call_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !246 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i8 %i.d, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !726  ; 2 uses
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %instanceof_function.exit.thread, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.b
  %i.i = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.g, ptr noundef %0) #34
  br i1 %i.i, label %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, label %bb.c

instanceof_function.exit.instanceof_function.exit.thread_crit_edge: ; preds = %instanceof_function.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %instanceof_function.exit.thread

bb.c:                                             ; preds = %instanceof_function.exit, %bb.a
  tail call void @zend_non_static_method_call(ptr noundef %1) #34
  br label %zend_vm_stack_push_call_frame_ex.exit

instanceof_function.exit.thread:                  ; preds = %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = add i32 %2, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %i.n = add i32 %i.k, %i.m                       ; 2 uses
  %i.o = load i8, ptr %1, align 8, !tbaa !57
  %.not.i.i = icmp eq i8 %i.o, 1
  br i1 %.not.i.i, label %zend_vm_stack_push_call_frame.exit, label %bb.d, !prof !88

bb.d:                                             ; preds = %instanceof_function.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %2)
  %i.t = add i32 %i.q, %i.n
  %i.u = sub i32 %i.t, %..i.i
  br label %zend_vm_stack_push_call_frame.exit

zend_vm_stack_push_call_frame.exit:               ; preds = %instanceof_function.exit.thread, %bb.d
  %.0.i.i = phi i32 [ %i.u, %bb.d ], [ %i.n, %instanceof_function.exit.thread ]
  %i.v = shl i32 %.0.i.i, 4
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720 ; 7 uses
  %i.x = zext i32 %i.v to i64                     ; 3 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !743
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !88

bb.e:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.ad = tail call ptr @zend_vm_stack_extend(i64 noundef %i.x) #34 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %1, ptr %i.ae, align 8, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.j, ptr %i.af, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 262920, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 %2, ptr %i.ah, align 4, !tbaa !57
  br label %zend_vm_stack_push_call_frame_ex.exit

bb.f:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %1, ptr %i.aj, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.j, ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 776, ptr %i.al, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  store i32 %2, ptr %i.am, align 4, !tbaa !57
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.ad, %bb.e ], [ %i.w, %bb.f ]
  ret ptr %.0
}

declare ptr @zend_fetch_class_by_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @zend_fetch_class(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @zend_std_get_static_method(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_non_static_method_call(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @zend_jit_rope_end(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add i32 %1, 1                            ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %i.a, 4
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.02431 = phi i32 [ 512, %.new ], [ %i.ah, %bb.b ]
  %.02530 = phi i64 [ 0, %.new ], [ %i.ak, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57
  %i.g = and i32 %.02431, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !298
  %i.j = add i64 %i.i, %.02530
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = and i32 %i.g, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !298
  %i.s = add i64 %i.r, %i.j
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !445  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !57
  %i.y = and i32 %i.p, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !298
  %i.ab = add i64 %i.aa, %i.s
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !445 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !57
  %i.ah = and i32 %i.y, %i.ag                     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !298
  %i.ak = add i64 %i.aj, %i.ab                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %zend_string_alloc.exit.unr-lcssa, label %bb.b, !llvm.loop !745

zend_string_alloc.exit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zend_string_alloc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %zend_string_alloc.exit.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %zend_string_alloc.exit.unr-lcssa ]
  %.02431.epil.init = phi i32 [ 512, %bb.a ], [ %i.ah, %zend_string_alloc.exit.unr-lcssa ]
  %.02530.epil.init = phi i64 [ 0, %bb.a ], [ %i.ak, %zend_string_alloc.exit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.02431.epil = phi i32 [ %.02431.epil.init, %.epil.preheader ], [ %i.ap, %bb.c ]
  %.02530.epil = phi i64 [ %.02530.epil.init, %.epil.preheader ], [ %i.as, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !445 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !57
  %i.ap = and i32 %.02431.epil, %i.ao             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !298
  %i.as = add i64 %i.ar, %.02530.epil             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %zend_string_alloc.exit, label %bb.c, !llvm.loop !746

zend_string_alloc.exit:                           ; preds = %bb.c, %zend_string_alloc.exit.unr-lcssa
  %.lcssa43 = phi i32 [ %i.ah, %zend_string_alloc.exit.unr-lcssa ], [ %i.ap, %bb.c ]
  %.lcssa42 = phi i64 [ %i.ak, %zend_string_alloc.exit.unr-lcssa ], [ %i.as, %bb.c ] ; 2 uses
  %i.at = and i64 %.lcssa42, -8
  %i.au = add i64 %i.at, 32
  %i.av = tail call noalias ptr @_emalloc(i64 noundef %i.au) #37 ; 6 uses
  store i32 1, ptr %i.av, align 4, !tbaa !317
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !685
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.lcssa42, ptr %i.ay, align 8, !tbaa !298
  %i.az = or disjoint i32 %.lcssa43, 22
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  br label %bb.d

bb.d:                                             ; preds = %zend_string_alloc.exit, %zend_string_release_ex.exit
  %.033 = phi ptr [ %i.ba, %zend_string_alloc.exit ], [ %i.bh, %zend_string_release_ex.exit ] ; 2 uses
  %.132 = phi i32 [ 0, %zend_string_alloc.exit ], [ %i.bp, %zend_string_release_ex.exit ] ; 2 uses
  %i.bb = zext i32 %.132 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !445 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !298 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.033, ptr nonnull align 8 %i.be, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.033, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57
  %i.bk = and i32 %i.bj, 64
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.e, label %zend_string_release_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !317 ; 2 uses
  %i.bm = icmp ne i32 %i.bl, 0
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bd, align 8, !tbaa !317
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_efree(ptr noundef nonnull %i.bd) #34
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  %i.bp = add i32 %.132, 1                        ; 2 uses
  %.not28 = icmp ugt i32 %i.bp, %1
  br i1 %.not28, label %bb.g, label %bb.d, !llvm.loop !747

bb.g:                                             ; preds = %zend_string_release_ex.exit
  store i8 0, ptr %i.bh, align 1, !tbaa !57
  ret ptr %i.av
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jit_frameless_observer(ptr noundef nonnull %0, i32 %.20.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load ptr, ptr @zend_flf_functions, align 8, !tbaa !748
  %i.c = zext i32 %.20.val to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.f = call fastcc i64 @jit_observer_fcall_is_unobserved_start(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.a, i32 noundef 0, i32 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.h = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.g, i64 noundef ptrtoint (ptr @zend_frameless_observed_call to i64)) #34 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !57
  %i.k = icmp eq i8 %i.j, 4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.h, align 8, !tbaa !57
  %i.m = trunc i64 %i.l to i32
  br label %jit_CONST_ADDR.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_frameless_observed_call to i64)) #34 ; 2 uses
  %i.o = sext i32 %i.n to i64
  store i64 %i.o, ptr %i.h, align 8, !tbaa !57
  store i32 4, ptr %i.i, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.n, %bb.c ], [ %i.m, %bb.b ]
end_hunk_5
begin_hunk_6_@zend_jit_compute_post_order:bb.a
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !65 ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.ab, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !413 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %zend_worklist_push.exit33
  %indvars.iv = phi i64 [ %indvars.iv.next, %zend_worklist_push.exit33 ], [ %i.ad, %.preheader ] ; 4 uses
  %i.am = phi i32 [ %i.bq, %zend_worklist_push.exit33 ], [ %i.ak, %.preheader ]
  %i.an = phi ptr [ %i.as, %zend_worklist_push.exit33 ], [ %i.ai, %.preheader ]
  %i.ao = phi i32 [ %i.aq, %zend_worklist_push.exit33 ], [ %i.ag, %.preheader ]
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !414
  br label %bb.e

bb.e:                                             ; preds = %zend_worklist_push.exit33.thread, %.lr.ph
  %.025 = phi i32 [ %i.am, %.lr.ph ], [ %i.bt, %zend_worklist_push.exit33.thread ] ; 2 uses
  %.0 = phi ptr [ %i.ap, %.lr.ph ], [ %i.bs, %zend_worklist_push.exit33.thread ] ; 2 uses
  %i.aq = load i32, ptr %.0, align 4, !tbaa !65   ; 8 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [64 x i8], ptr %i.ab, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !338
  %i.av = and i32 %i.au, 448
  %.not29 = icmp eq i32 %i.av, 0
  br i1 %.not29, label %bb.f, label %zend_worklist_push.exit33.thread

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp samesign ult i32 %i.aq, %i.m
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !135
  %i.bb = and i64 %i.ax, 63
  %i.bc = lshr i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %zend_worklist_push.exit33.thread, label %zend_worklist_push.exit33

zend_worklist_push.exit33:                        ; preds = %bb.f
  %i.be = and i32 %i.aq, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = lshr i32 %i.aq, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = or i64 %i.bk, %i.bg
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !135
  %i.bm = icmp slt i64 %indvars.iv, %i.ac
  tail call void @llvm.assume(i1 %i.bm)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.aq, ptr %i.bn, align 4, !tbaa !65
  %i.bo = icmp ne i64 %indvars.iv.next, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !413 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %.loopexit.loopexit57

zend_worklist_push.exit33.thread:                 ; preds = %bb.f, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.bt = add nsw i32 %.025, -1
  %i.bu = icmp sgt i32 %.025, 1
  br i1 %i.bu, label %bb.e, label %.loopexit.loopexit, !llvm.loop !763

.loopexit.loopexit:                               ; preds = %zend_worklist_push.exit33.thread
  %i.bv = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit.loopexit57:                             ; preds = %zend_worklist_push.exit33
  %i.bw = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit57, %.loopexit.loopexit, %.preheader
  %.sroa.11.150 = phi i32 [ %i.bv, %.loopexit.loopexit ], [ %.sroa.11.054, %.preheader ], [ %i.bw, %.loopexit.loopexit57 ]
  %i.bx = phi i32 [ %i.ao, %.loopexit.loopexit ], [ %i.ag, %.preheader ], [ %i.aq, %.loopexit.loopexit57 ]
  %i.by = add nsw i32 %.sroa.11.150, -1           ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv66
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !65
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !764

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.ca = trunc nuw i64 %indvars.iv.next67 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %.026.lcssa = phi i32 [ %i.ca, %._crit_edge.loopexit ], [ 0, %bb.d ]
  br i1 %i.j, label %bb.g, label %bb.h, !prof !88

bb.g:                                             ; preds = %._crit_edge
  call void @_efree(ptr noundef %i.n) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret i32 %.026.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_jit_recv_entry(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !375
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.e
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !378
  %i.m = sext i32 %i.j to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !65   ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !340
  tail call void @_ir_ENTRY(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.r) #34
  %i.s = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_MERGE_2(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef %i.o) #34
  %i.t = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !378
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.m
  store i32 %i.t, ptr %i.v, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_jit_bb_start(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316  ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !373
  %i.d = icmp slt i32 %1, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !353
  %i.g = sext i32 %1 to i64                       ; 4 uses
  %i.h = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !338  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !376  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  switch i32 %i.m, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !154
  %i.q = and i32 %i.p, 256
  %.not203 = icmp eq i32 %i.q, 0
  br i1 %.not203, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  %i.s = tail call i32 @ir_emit1(ptr noundef nonnull %0, i32 noundef 101, i32 noundef %i.r) #34 ; 2 uses
  store i32 %i.s, ptr %i.n, align 8, !tbaa !57
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !565
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !713
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !378
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !375
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.g
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !65 ; 7 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ir_BEGIN(ptr noundef nonnull %0, i32 noundef 0) #34
  br label %jit_IF_TRUE_FALSE_ex.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !419
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !57
  switch i8 %i.an, label %switch.edge [
    i8 111, label %bb.g
    i8 112, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !57 ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i32 %i.ap, %1
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.ai) #34
  br label %jit_IF_TRUE_FALSE_ex.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.ai) #34
  br label %jit_IF_TRUE_FALSE_ex.exit

bb.j:                                             ; preds = %bb.f
  tail call fastcc void @zend_jit_case_start(ptr noundef %0, i32 noundef %i.z, i32 noundef %1, i32 noundef %i.ai)
  br label %jit_IF_TRUE_FALSE_ex.exit

switch.edge:                                      ; preds = %bb.f
  %i.as = and i32 %i.j, 4096
  %.not201 = icmp eq i32 %i.as, 0
  br i1 %.not201, label %bb.m, label %bb.k

bb.k:                                             ; preds = %switch.edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !154
  %i.av = and i32 %i.au, 256
  %.not202.a = icmp eq i32 %i.av, 0
  br i1 %.not202.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call i32 @ir_emit1(ptr noundef nonnull %0, i32 noundef 101, i32 noundef %i.ai) #34
  store i32 %i.aw, ptr %i.n, align 8, !tbaa !57
  br label %jit_IF_TRUE_FALSE_ex.exit

bb.m:                                             ; preds = %bb.k, %switch.edge
  tail call void @_ir_BEGIN(ptr noundef nonnull %0, i32 noundef %i.ai) #34
  br label %jit_IF_TRUE_FALSE_ex.exit

jit_IF_TRUE_FALSE_ex.exit:                        ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %bb.j, %bb.e
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !57
  br label %bb.ad

bb.n:                                             ; preds = %bb.a
  %i.ay = sext i32 %i.m to i64
  %i.az = shl nsw i64 %i.ay, 2                    ; 3 uses
  %i.ba = icmp ugt i64 %i.az, 32768               ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p, !prof !88

bb.o:                                             ; preds = %bb.n
  %i.bb = tail call noalias ptr @_emalloc(i64 noundef %i.az) #37
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bc = alloca i8, i64 %i.az, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bd = phi ptr [ %i.bc, %bb.p ], [ %i.bb, %bb.o ] ; 3 uses
  %i.be = icmp sgt i32 %i.m, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !565
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !713
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %switch.edge205
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %switch.edge205 ] ; 3 uses
  %.0183212 = phi i32 [ 0, %.lr.ph ], [ %.1, %switch.edge205 ] ; 7 uses
  %.0184211 = phi i32 [ 0, %.lr.ph ], [ %.1185, %switch.edge205 ] ; 2 uses
  %.0186210 = phi ptr [ %i.bl, %.lr.ph ], [ %i.cr, %switch.edge205 ] ; 2 uses
  %i.bp = load i32, ptr %.0186210, align 4, !tbaa !65 ; 2 uses
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !374
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !65
  %.not199 = icmp eq i32 %i.bt, 0
  br i1 %.not199, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = add nsw i32 %.0184211, 1                ; 6 uses
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !378
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !375
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.g
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !65
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = add nsw i32 %i.by, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !65 ; 8 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %switch.edge205, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load ptr, ptr %0, align 8, !tbaa !419
  %i.cg = sext i32 %i.cd to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !57
  switch i8 %i.ci, label %bb.y [
    i8 111, label %bb.u
    i8 112, label %bb.x
    i8 116, label %switch.edge205
    i8 109, label %switch.edge205
    i8 115, label %switch.edge205
  ]

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !57 ; 2 uses
  %i.cl = icmp ne i32 %i.ck, 0
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i32 %i.ck, %1
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %i.cd) #34
  br label %jit_IF_TRUE_FALSE_ex.exit207

bb.w:                                             ; preds = %bb.u
  tail call void @_ir_IF_FALSE(ptr noundef nonnull %0, i32 noundef %i.cd) #34
  br label %jit_IF_TRUE_FALSE_ex.exit207

jit_IF_TRUE_FALSE_ex.exit207:                     ; preds = %bb.v, %bb.w
  %i.cn = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  br label %switch.edge205

bb.x:                                             ; preds = %bb.t
  tail call fastcc void @zend_jit_case_start(ptr noundef %0, i32 noundef %i.bp, i32 noundef %1, i32 noundef %i.cd)
  %i.co = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  br label %switch.edge205

bb.y:                                             ; preds = %bb.t
  unreachable

bb.z:                                             ; preds = %bb.r
  %i.cp = add nsw i32 %.0183212, 1
  br label %switch.edge205

switch.edge205:                                   ; preds = %bb.t, %bb.t, %bb.t, %bb.s, %jit_IF_TRUE_FALSE_ex.exit207, %bb.x, %bb.z
  %.sink = phi i32 [ %i.cn, %jit_IF_TRUE_FALSE_ex.exit207 ], [ 0, %bb.s ], [ %i.co, %bb.x ], [ 0, %bb.z ], [ %i.cd, %bb.t ], [ %i.cd, %bb.t ], [ %i.cd, %bb.t ]
  %.1185 = phi i32 [ %i.bu, %jit_IF_TRUE_FALSE_ex.exit207 ], [ %i.bu, %bb.s ], [ %i.bu, %bb.x ], [ %.0184211, %bb.z ], [ %i.bu, %bb.t ], [ %i.bu, %bb.t ], [ %i.bu, %bb.t ]
  %.1 = phi i32 [ %.0183212, %jit_IF_TRUE_FALSE_ex.exit207 ], [ %.0183212, %bb.s ], [ %.0183212, %bb.x ], [ %i.cp, %bb.z ], [ %.0183212, %bb.t ], [ %.0183212, %bb.t ], [ %.0183212, %bb.t ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store i32 %.sink, ptr %i.cq, align 4, !tbaa !65
  %i.cr = getelementptr inbounds nuw i8, ptr %.0186210, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !765

._crit_edge:                                      ; preds = %switch.edge205, %bb.q
  %i.cs = load i32, ptr %i.i, align 8, !tbaa !338
  %i.ct = and i32 %i.cs, 65536
  %.not196 = icmp eq i32 %i.ct, 0
  call void @_ir_MERGE_N(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef %i.bd) #34
  br i1 %.not196, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.cu = load ptr, ptr %0, align 8, !tbaa !419
  %i.cv = load i32, ptr %i.n, align 8, !tbaa !57
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cw
  store i8 108, ptr %i.cx, align 8, !tbaa !57
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa
  %.0187 = load i32, ptr %i.n, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ba, label %bb.ac, label %bb.ad, !prof !88

bb.ac:                                            ; preds = %bb.ab
  call void @_efree(ptr noundef %i.bd) #34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %jit_IF_TRUE_FALSE_ex.exit, %bb.b, %bb.c
  %.1188 = phi i32 [ %i.s, %bb.c ], [ 1, %bb.b ], [ %i.ax, %jit_IF_TRUE_FALSE_ex.exit ], [ %.0187, %bb.ac ], [ %.0187, %bb.ab ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 %1, ptr %i.cy, align 8, !tbaa !310
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !374 ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.g
  store i32 %.1188, ptr %i.db, align 4, !tbaa !65
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !338
  %i.dd = and i32 %i.dc, 16
  %.not204 = icmp eq i32 %i.dd, 0
  br i1 %.not204, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !657 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dh = zext nneg i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !65
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !684
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.1188, ptr %i.dn, align 4, !tbaa !684
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  ret void
}

end_hunk_6
