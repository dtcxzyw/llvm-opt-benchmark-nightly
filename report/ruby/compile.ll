Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6676
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@rb_iseq_build_from_ary:bb.a
  %i.gd = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0.i.i125, i64 noundef 8) #39 ; 2 uses
  %i.ge = icmp sgt i64 %.0.i.i125, 0
  br i1 %i.ge, label %.lr.ph248, label %._crit_edge249

.lr.ph248:                                        ; preds = %bb.ao
  %i.gf = getelementptr i8, ptr %i.fg, i64 16
  %i.gg = getelementptr i8, ptr %i.fg, i64 32
  %smax298 = call i32 @llvm.smax.i32(i32 %i.fq, i32 1)
  %wide.trip.count299 = zext nneg i32 %smax298 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph248, %RARRAY_AREF.exit130
  %indvars.iv295 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next296, %RARRAY_AREF.exit130 ] ; 3 uses
  %i.gh = load i64, ptr %i.fg, align 8, !tbaa !74
  %i.gi = and i64 %i.gh, 8192
  %.not.i.i128 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i128, label %bb.aq, label %RARRAY_AREF.exit130

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !20
  br label %RARRAY_AREF.exit130

RARRAY_AREF.exit130:                              ; preds = %bb.ap, %bb.aq
  %.0.i.i129 = phi ptr [ %i.gj, %bb.aq ], [ %i.gf, %bb.ap ]
  %i.gk = getelementptr [8 x i8], ptr %.0.i.i129, i64 %indvars.iv295
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !36
  %i.gm = call fastcc ptr @register_label(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.gl)
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.gd, i64 %indvars.iv295
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !36
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge249, label %bb.ap, !llvm.loop !296

._crit_edge249:                                   ; preds = %RARRAY_AREF.exit130, %bb.ao
  %i.gp = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 28
  store i32 %i.fr, ptr %i.gq, align 4, !tbaa !163
  %i.gr = getelementptr i8, ptr %i.gp, i64 48
  store ptr %i.gd, ptr %i.gr, align 8, !tbaa !162
  br label %bb.as

rbimpl_RB_TYPE_P_fastpath.exit103.thread:         ; preds = %bb.aj, %rbimpl_RB_TYPE_P_fastpath.exit103
  %i.gs = icmp eq i64 %i.n, 4
  br i1 %i.gs, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit103.thread
  %i.gt = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gt, ptr noundef nonnull @.str.22, i64 noundef %i.n) #41
  unreachable

bb.as:                                            ; preds = %._crit_edge249, %RARRAY_LENINT.exit127, %rbimpl_RB_TYPE_P_fastpath.exit103.thread
  %i.gu = icmp eq i64 %i.q, 0
  %i.gv = and i64 %i.q, 7
  %i.gw = icmp ne i64 %i.gv, 0
  %i.gx = or i1 %i.gu, %i.gw
  br i1 %i.gx, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.as
  %i.gy = inttoptr i64 %i.q to ptr                ; 8 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !74 ; 3 uses
  %i.ha = and i64 %i.gz, 31
  %i.hb = icmp eq i64 %i.ha, 7
  br i1 %i.hb, label %bb.at, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.at:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.hc = and i64 %i.gz, 8192
  %.not.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hd = lshr i64 %i.gz, 15
  %i.he = and i64 %i.hd, 127
  br label %rb_array_len.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.hf = getelementptr i8, ptr %i.gy, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.av, %bb.au
  %.0.i.i.i = phi i64 [ %i.he, %bb.au ], [ %i.hg, %bb.av ] ; 5 uses
  %i.hh = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.hh, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.aw

bb.aw:                                            ; preds = %rb_array_len.exit.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i) #38
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.hi = trunc nsw i64 %.0.i.i.i to i32          ; 5 uses
  %i.hj = call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #39 ; 6 uses
  %i.hk = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.hl = getelementptr i8, ptr %i.hk, i64 16     ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = or i16 %i.hm, 16
  store i16 %i.hn, ptr %i.hl, align 8
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !220
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hp = call i64 @rb_intern2(ptr noundef nonnull @.str.197, i64 noundef 6) #37
  %i.hq = call i64 @rb_id2sym(i64 noundef %i.hp) #37 ; 2 uses
  %i.hr = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.hq) #37 ; 4 uses
  %i.hs = trunc i64 %i.hr to i1
  br i1 %i.hs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %RARRAY_LENINT.exit.i
  %i.ht = call i64 @rb_fix2int(i64 noundef %i.hr) #37
  %i.hu = trunc i64 %i.ht to i32                  ; 2 uses
  store i32 %i.hu, ptr %i.ho, align 8, !tbaa !7
  br label %int_param.exit.i

bb.ay:                                            ; preds = %RARRAY_LENINT.exit.i
  %i.hv = icmp eq i64 %i.hr, 4
  br i1 %i.hv, label %.int_param.exit_crit_edge.i, label %bb.az

.int_param.exit_crit_edge.i:                      ; preds = %bb.ay
  %.pre.i = load i32, ptr %i.ho, align 8, !tbaa !215
  br label %int_param.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.hw = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hw, ptr noundef nonnull @.str.196, i64 noundef %i.hq, i64 noundef %i.hr) #41
  unreachable

int_param.exit.i:                                 ; preds = %.int_param.exit_crit_edge.i, %bb.ax
  %i.hx = phi i32 [ %.pre.i, %.int_param.exit_crit_edge.i ], [ %i.hu, %bb.ax ]
  %i.hy = sub i32 %i.hx, %i.hi
  %i.hz = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ia = getelementptr i8, ptr %i.hz, i64 144
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !188
  %i.ic = sext i32 %i.hy to i64
  %i.id = getelementptr [8 x i8], ptr %i.ib, i64 %i.ic ; 5 uses
  %i.ie = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ie, label %.lr.ph.i133, label %.thread.i

.lr.ph.i133:                                      ; preds = %int_param.exit.i
  %i.if = getelementptr i8, ptr %i.gy, i64 16
  %i.ig = getelementptr i8, ptr %i.gy, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %RB_SYMBOL_P.exit.thread.i, %.lr.ph.i133
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i133 ], [ %indvars.iv.next.i, %RB_SYMBOL_P.exit.thread.i ] ; 5 uses
  %i.ii = load i64, ptr %i.gy, align 8, !tbaa !74
  %i.ij = and i64 %i.ii, 8192
  %.not.i.i59.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i59.i, label %bb.bb, label %RARRAY_AREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.bb, %bb.ba
  %.0.i.i60.i = phi ptr [ %i.ik, %bb.bb ], [ %i.if, %bb.ba ]
  %i.il = getelementptr [8 x i8], ptr %.0.i.i60.i, i64 %indvars.iv.i
  %i.im = load i64, ptr %i.il, align 8, !tbaa !36 ; 5 uses
  %i.in = and i64 %i.im, 255
  %i.io = icmp eq i64 %i.in, 12
  br i1 %i.io, label %RB_SYMBOL_P.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %RARRAY_AREF.exit.i
  %i.ip = icmp eq i64 %i.im, 0
  %i.iq = and i64 %i.im, 7
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = or i1 %i.ip, %i.ir
  br i1 %i.is, label %.thread.loopexit.split.loop.exit.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.bc
  %i.it = inttoptr i64 %i.im to ptr
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !74
  %i.iv = and i64 %i.iu, 31
  %i.iw = icmp eq i64 %i.iv, 20
  br i1 %i.iw, label %RB_SYMBOL_P.exit.thread.i, label %.thread.loopexit.split.loop.exit94.i

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %RARRAY_AREF.exit.i
  %i.ix = call i64 @rb_sym2id(i64 noundef %i.im) #37
  %i.iy = getelementptr [8 x i8], ptr %i.id, i64 %indvars.iv.i
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !36
  %i.iz = load i32, ptr %i.ih, align 4, !tbaa !226
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.ih, align 4, !tbaa !226
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.0.i.i.i
  br i1 %exitcond.not.i, label %iseq_build_kw.exit, label %bb.ba, !llvm.loop !297

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.bc
  %i.jb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.loopexit.split.loop.exit94.i:             ; preds = %RB_SYMBOL_P.exit.i
  %i.jc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split.loop.exit94.i, %.thread.loopexit.split.loop.exit.i, %int_param.exit.i
  %.056.lcssa.i = phi i32 [ 0, %int_param.exit.i ], [ %i.jc, %.thread.loopexit.split.loop.exit94.i ], [ %i.jb, %.thread.loopexit.split.loop.exit.i ] ; 4 uses
  %i.jd = icmp eq i32 %.056.lcssa.i, %i.hi
  br i1 %i.jd, label %iseq_build_kw.exit, label %bb.bd

bb.bd:                                            ; preds = %.thread.i
  %i.je = sub i32 %i.hi, %.056.lcssa.i            ; 2 uses
  %i.jf = icmp sgt i32 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jh = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.jg, i64 noundef 8) #39 ; 2 uses
  %i.ji = icmp slt i32 %.056.lcssa.i, %i.hi
  br i1 %i.ji, label %.lr.ph83.i, label %._crit_edge.i

.lr.ph83.i:                                       ; preds = %bb.bd
  %i.jj = getelementptr i8, ptr %i.gy, i64 16
  %i.jk = getelementptr i8, ptr %i.gy, i64 32
  %i.jl = ptrtoint ptr %0 to i64
  %i.jm = zext i32 %.056.lcssa.i to i64
  br label %bb.be

bb.be:                                            ; preds = %rb_obj_write.exit.i, %.lr.ph83.i
  %indvars.iv86.i.a = phi i64 [ %i.jm, %.lr.ph83.i ], [ %indvars.iv.next87.i.a, %rb_obj_write.exit.i ] ; 3 uses
  %indvars.iv86.i = phi i64 [ 0, %.lr.ph83.i ], [ %indvars.iv.next87.i, %rb_obj_write.exit.i ] ; 2 uses
  %i.jn = load i64, ptr %i.gy, align 8, !tbaa !74
  %i.jo = and i64 %i.jn, 8192
  %.not.i.i61.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i61.i, label %bb.bf, label %RARRAY_AREF.exit63.i

bb.bf:                                            ; preds = %bb.be
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !20
  br label %RARRAY_AREF.exit63.i

RARRAY_AREF.exit63.i:                             ; preds = %bb.bf, %bb.be
  %.0.i.i62.i = phi ptr [ %i.jp, %bb.bf ], [ %i.jj, %bb.be ]
  %i.jq = getelementptr [8 x i8], ptr %.0.i.i62.i, i64 %indvars.iv86.i.a
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !36 ; 3 uses
  %i.js = call i64 @rb_to_array_type(i64 noundef %i.jr) #37 ; 0 uses
  %i.jt = inttoptr i64 %i.jr to ptr               ; 6 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !74 ; 2 uses
  %i.jv = and i64 %i.ju, 8192
  %.not.i.i131 = icmp eq i64 %i.jv, 0             ; 3 uses
  br i1 %.not.i.i131, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %RARRAY_AREF.exit63.i
  %i.jw = lshr i64 %i.ju, 15
  %i.jx = and i64 %i.jw, 127
  br label %rb_array_len.exit.i132

bb.bh:                                            ; preds = %RARRAY_AREF.exit63.i
  %i.jy = getelementptr i8, ptr %i.jt, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !20
  br label %rb_array_len.exit.i132

rb_array_len.exit.i132:                           ; preds = %bb.bh, %bb.bg
  %.0.i64.i = phi i64 [ %i.jx, %bb.bg ], [ %i.jz, %bb.bh ]
  switch i64 %.0.i64.i, label %bb.bo [
    i64 1, label %bb.bi
    i64 2, label %bb.bl
  ]

bb.bi:                                            ; preds = %rb_array_len.exit.i132
  br i1 %.not.i.i131, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ka = getelementptr i8, ptr %i.jt, i64 16
  br label %RARRAY_AREF.exit67.i

bb.bk:                                            ; preds = %bb.bi
  %i.kb = getelementptr i8, ptr %i.jt, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !20
  br label %RARRAY_AREF.exit67.i

bb.bl:                                            ; preds = %rb_array_len.exit.i132
  br i1 %.not.i.i131, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr i8, ptr %i.jt, i64 16
  br label %RARRAY_AREF.exit73.i

bb.bn:                                            ; preds = %bb.bl
  %i.ke = getelementptr i8, ptr %i.jt, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !20
  br label %RARRAY_AREF.exit73.i

RARRAY_AREF.exit73.i:                             ; preds = %bb.bn, %bb.bm
  %.in.i = phi ptr [ %i.kd, %bb.bm ], [ %i.kf, %bb.bn ] ; 2 uses
  %i.kg = getelementptr i8, ptr %.in.i, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !36
  br label %RARRAY_AREF.exit67.i

bb.bo:                                            ; preds = %rb_array_len.exit.i132
  %i.ki = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ki, ptr noundef nonnull @.str.198, i64 noundef %i.jr) #41
  unreachable

RARRAY_AREF.exit67.i:                             ; preds = %RARRAY_AREF.exit73.i, %bb.bk, %bb.bj
  %.054.in.i = phi ptr [ %.in.i, %RARRAY_AREF.exit73.i ], [ %i.ka, %bb.bj ], [ %i.kc, %bb.bk ]
  %.053.i = phi i64 [ %i.kh, %RARRAY_AREF.exit73.i ], [ 36, %bb.bj ], [ 36, %bb.bk ] ; 4 uses
  %.054.i = load i64, ptr %.054.in.i, align 8, !tbaa !36
  %i.kj = call i64 @rb_sym2id(i64 noundef %.054.i) #37
  %i.kk = getelementptr [8 x i8], ptr %i.id, i64 %indvars.iv86.i.a
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !36
  %i.kl = getelementptr [8 x i8], ptr %i.jh, i64 %indvars.iv86.i
  store i64 %.053.i, ptr %i.kl, align 8, !tbaa !36
  %i.km = icmp eq i64 %.053.i, 0
  %i.kn = and i64 %.053.i, 7
  %i.ko = icmp ne i64 %i.kn, 0
  %i.kp = or i1 %i.km, %i.ko
  br i1 %i.kp, label %rb_obj_write.exit.i, label %bb.bp

bb.bp:                                            ; preds = %RARRAY_AREF.exit67.i
  call void @rb_gc_writebarrier(i64 noundef %i.jl, i64 noundef %.053.i) #37
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.bp, %RARRAY_AREF.exit67.i
  %indvars.iv.next87.i.a = add nuw nsw i64 %indvars.iv86.i.a, 1
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next87.i, %i.jg
  br i1 %exitcond89.not.i, label %._crit_edge.i, label %bb.be, !llvm.loop !298

._crit_edge.i:                                    ; preds = %rb_obj_write.exit.i, %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.id, ptr %i.kq, align 8, !tbaa !227
  br label %iseq_build_kw.exit

iseq_build_kw.exit:                               ; preds = %RB_SYMBOL_P.exit.thread.i, %.thread.i, %._crit_edge.i
  %.sink100.i = phi i64 [ 24, %._crit_edge.i ], [ 16, %.thread.i ], [ 16, %RB_SYMBOL_P.exit.thread.i ]
  %.sink.i = phi ptr [ %i.jh, %._crit_edge.i ], [ %i.id, %.thread.i ], [ %i.id, %RB_SYMBOL_P.exit.thread.i ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.sink100.i
  store ptr %.sink.i, ptr %i.kr, align 8, !tbaa !88
  %i.ks = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.kt = getelementptr i8, ptr %i.ks, i64 56
  store ptr %i.hj, ptr %i.kt, align 8, !tbaa !211
  br label %bb.br

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.as, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ku = icmp eq i64 %i.q, 4
  br i1 %i.ku, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.kv = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kv, ptr noundef nonnull @.str.23, i64 noundef %i.q) #41
  unreachable

bb.br:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %iseq_build_kw.exit
  %i.kw = call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 16) #37
  %i.kx = call i64 @rb_id2sym(i64 noundef %i.kw) #37
  %i.ky = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.kx) #37
  %i.kz = icmp eq i64 %i.ky, 20
  br i1 %i.kz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.la = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.lb = getelementptr i8, ptr %i.la, i64 16     ; 2 uses
  %i.lc = load i16, ptr %i.lb, align 8
  %i.ld = or i16 %i.lc, 128
  store i16 %i.ld, ptr %i.lb, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.le = call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 9) #37
  %i.lf = call i64 @rb_id2sym(i64 noundef %i.le) #37
  %i.lg = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.lf) #37
  %i.lh = icmp eq i64 %i.lg, 20
  br i1 %i.lh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.li = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.lj = getelementptr i8, ptr %i.li, i64 16     ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 8
  %i.ll = or i16 %i.lk, 4096
  store i16 %i.ll, ptr %i.lj, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lm = call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 6) #37
  %i.ln = call i64 @rb_id2sym(i64 noundef %i.lm) #37 ; 2 uses
  %i.lo = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.ln) #37 ; 4 uses
  %i.lp = trunc i64 %i.lo to i1
  br i1 %i.lp, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lq = icmp eq i64 %i.lo, 4
  br i1 %i.lq, label %int_param.exit135.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lr = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.lr, ptr noundef nonnull @.str.196, i64 noundef %i.ln, i64 noundef %i.lo) #41
  unreachable

bb.by:                                            ; preds = %bb.bv
  %i.ls = call i64 @rb_fix2int(i64 noundef %i.lo) #37
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 56
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !211 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ly = call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #39 ; 2 uses
  %i.lz = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 56
  store ptr %i.ly, ptr %i.ma, align 8, !tbaa !211
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.mb = phi ptr [ %i.lz, %bb.bz ], [ %i.lu, %bb.by ]
  %.0 = phi ptr [ %i.ly, %bb.bz ], [ %i.lw, %bb.by ]
  %i.mc = getelementptr i8, ptr %.0, i64 12
  store i32 %i.lt, ptr %i.mc, align 4, !tbaa !225
  %i.md = getelementptr i8, ptr %i.mb, i64 16     ; 2 uses
  %i.me = load i16, ptr %i.md, align 8
  %i.mf = or i16 %i.me, 32
  store i16 %i.mf, ptr %i.md, align 8
  br label %int_param.exit135.thread

int_param.exit135.thread:                         ; preds = %bb.bw, %bb.ca
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 11 uses
  %i.mg = getelementptr i8, ptr %.val, i64 16
  %i.mh = load i16, ptr %i.mg, align 8            ; 4 uses
  %i.mi = and i16 %i.mh, 2
  %i.mj = insertelement <4 x i16> poison, i16 %i.mh, i64 0
  %i.mk = shufflevector <4 x i16> %i.mj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ml = and <4 x i16> %i.mk, <i16 32, i16 16, i16 4, i16 8>
  %i.mm = icmp eq <4 x i16> %i.ml, zeroinitializer ; 4 uses
  %i.mn = and i16 %i.mh, 126
  %or.cond42.i = icmp eq i16 %i.mn, 0
  br i1 %or.cond42.i, label %bb.cm, label %bb.cb

bb.cb:                                            ; preds = %int_param.exit135.thread
  %i.mo = and i16 %i.mh, 64
  %.not31.i = icmp eq i16 %i.mo, 0
  br i1 %.not31.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mp = getelementptr i8, ptr %.val, i64 44
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !231
  %i.mr = add i32 %i.mq, 1
  br label %iseq_calc_param_size.exit

bb.cd:                                            ; preds = %bb.cb
  %i.ms = extractelement <4 x i1> %i.mm, i64 0
  br i1 %i.ms, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mt = getelementptr i8, ptr %.val, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !211
  %i.mv = getelementptr i8, ptr %i.mu, i64 12
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !225
  %i.mx = add i32 %i.mw, 1
  br label %iseq_calc_param_size.exit

bb.cf:                                            ; preds = %bb.cd
  %i.my = extractelement <4 x i1> %i.mm, i64 1
  br i1 %i.my, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mz = getelementptr i8, ptr %.val, i64 56
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !211
  %i.nb = getelementptr i8, ptr %i.na, i64 8
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !215
  %i.nd = add i32 %i.nc, 1
  br label %iseq_calc_param_size.exit

bb.ch:                                            ; preds = %bb.cf
  %i.ne = extractelement <4 x i1> %i.mm, i64 3
  br i1 %i.ne, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nf = getelementptr i8, ptr %.val, i64 36
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !207
  %i.nh = getelementptr i8, ptr %.val, i64 40
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !209
  %i.nj = add i32 %i.ni, %i.ng
  br label %iseq_calc_param_size.exit

bb.cj:                                            ; preds = %bb.ch
  %i.nk = extractelement <4 x i1> %i.mm, i64 2
  br i1 %i.nk, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nl = getelementptr i8, ptr %.val, i64 32
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !205
  %i.nn = add i32 %i.nm, 1
  br label %iseq_calc_param_size.exit

bb.cl:                                            ; preds = %bb.cj
  %i.no = icmp ne i16 %i.mi, 0
  call void @llvm.assume(i1 %i.no)
  %i.np = getelementptr i8, ptr %.val, i64 24
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !190
  %i.nr = getelementptr i8, ptr %.val, i64 28
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !163
  %i.nt = add i32 %i.ns, %i.nq
  br label %iseq_calc_param_size.exit

bb.cm:                                            ; preds = %int_param.exit135.thread
  %i.nu = getelementptr i8, ptr %.val, i64 24
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !190
  br label %iseq_calc_param_size.exit

iseq_calc_param_size.exit:                        ; preds = %bb.cc, %bb.ce, %bb.cg, %bb.ci, %bb.ck, %bb.cl, %bb.cm
  %.sink.i136 = phi i32 [ %i.mr, %bb.cc ], [ %i.nd, %bb.cg ], [ %i.nn, %bb.ck ], [ %i.nt, %bb.cl ], [ %i.nj, %bb.ci ], [ %i.mx, %bb.ce ], [ %i.nv, %bb.cm ]
  %i.nw = getelementptr i8, ptr %.val, i64 20
  store i32 %.sink.i136, ptr %i.nw, align 4, !tbaa !259
  %i.nx = inttoptr i64 %4 to ptr                  ; 3 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 16     ; 2 uses
  %i.nz = getelementptr i8, ptr %i.nx, i64 32
  %i.oa = ptrtoint ptr %0 to i64                  ; 10 uses
  %i.ob = getelementptr i8, ptr %0, i64 24        ; 6 uses
  br label %bb.cn

bb.cn:                                            ; preds = %rb_obj_write.exit.i143, %iseq_calc_param_size.exit
  %.0.i137 = phi i32 [ 0, %iseq_calc_param_size.exit ], [ %i.tt, %rb_obj_write.exit.i143 ] ; 2 uses
  %i.oc = sext i32 %.0.i137 to i64                ; 3 uses
  %i.od = load i64, ptr %i.nx, align 8, !tbaa !74 ; 2 uses
  %i.oe = and i64 %i.od, 8192
end_hunk_0
