inline.NumInlined: 6676
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@rb_iseq_build_from_ary:bb.a
  unreachable

bb.aj:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit105
  %i.fc = icmp eq i64 %i.n, 0
  %i.fd = and i64 %i.n, 7
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = or i1 %i.fc, %i.fe
  br i1 %i.ff, label %rbimpl_RB_TYPE_P_fastpath.exit103.thread, label %rbimpl_RB_TYPE_P_fastpath.exit103

rbimpl_RB_TYPE_P_fastpath.exit103:                ; preds = %bb.aj
  %i.fg = inttoptr i64 %i.n to ptr                ; 5 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !74 ; 3 uses
  %i.fi = and i64 %i.fh, 31
  %i.fj = icmp eq i64 %i.fi, 7
  br i1 %i.fj, label %bb.ak, label %rbimpl_RB_TYPE_P_fastpath.exit103.thread

bb.ak:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit103
  %i.fk = and i64 %i.fh, 8192
  %.not.i.i123 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fl = lshr i64 %i.fh, 15
  %i.fm = and i64 %i.fl, 127
  br label %rb_array_len.exit.i124

bb.am:                                            ; preds = %bb.ak
  %i.fn = getelementptr i8, ptr %i.fg, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !20
  br label %rb_array_len.exit.i124

rb_array_len.exit.i124:                           ; preds = %bb.am, %bb.al
  %.0.i.i125 = phi i64 [ %i.fm, %bb.al ], [ %i.fo, %bb.am ] ; 5 uses
  %i.fp = add i64 %.0.i.i125, 2147483648
  %.not.i1.i126 = icmp ult i64 %i.fp, 4294967296
  br i1 %.not.i1.i126, label %RARRAY_LENINT.exit127, label %bb.an

bb.an:                                            ; preds = %rb_array_len.exit.i124
  call void @rb_out_of_int(i64 noundef %.0.i.i125) #38
  unreachable

RARRAY_LENINT.exit127:                            ; preds = %rb_array_len.exit.i124
  %i.fq = trunc nsw i64 %.0.i.i125 to i32         ; 2 uses
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  %i.ft = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 8
  %i.fw = select i1 %i.fs, i16 2, i16 0
  %i.fx = and i16 %i.fv, -3
  %i.fy = or disjoint i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %i.fu, align 8
  %i.fz = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = and i16 %i.gb, 2
  %.not99 = icmp eq i16 %i.gc, 0
  br i1 %.not99, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %RARRAY_LENINT.exit127
  %i.gd = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0.i.i125, i64 noundef 8) #39 ; 2 uses
  %i.ge = icmp sgt i64 %.0.i.i125, 0
  br i1 %i.ge, label %.lr.ph250, label %._crit_edge251

.lr.ph250:                                        ; preds = %bb.ao
  %i.gf = getelementptr i8, ptr %i.fg, i64 16
  %i.gg = getelementptr i8, ptr %i.fg, i64 32
  %smax300 = call i32 @llvm.smax.i32(i32 %i.fq, i32 1)
  %wide.trip.count301 = zext nneg i32 %smax300 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph250, %RARRAY_AREF.exit130
  %indvars.iv297 = phi i64 [ 0, %.lr.ph250 ], [ %indvars.iv.next298, %RARRAY_AREF.exit130 ] ; 3 uses
  %i.gh = load i64, ptr %i.fg, align 8, !tbaa !74
  %i.gi = and i64 %i.gh, 8192
  %.not.i.i128 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i128, label %bb.aq, label %RARRAY_AREF.exit130

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !20
  br label %RARRAY_AREF.exit130

RARRAY_AREF.exit130:                              ; preds = %bb.ap, %bb.aq
  %.0.i.i129 = phi ptr [ %i.gj, %bb.aq ], [ %i.gf, %bb.ap ]
  %i.gk = getelementptr [8 x i8], ptr %.0.i.i129, i64 %indvars.iv297
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !36
  %i.gm = call fastcc ptr @register_label(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.gl)
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.gd, i64 %indvars.iv297
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !36
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge251, label %bb.ap, !llvm.loop !296

._crit_edge251:                                   ; preds = %RARRAY_AREF.exit130, %bb.ao
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

bb.as:                                            ; preds = %._crit_edge251, %RARRAY_LENINT.exit127, %rbimpl_RB_TYPE_P_fastpath.exit103.thread
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
  %.not.i.i60.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i60.i, label %bb.bb, label %RARRAY_AREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.bb, %bb.ba
  %.0.i.i61.i = phi ptr [ %i.ik, %bb.bb ], [ %i.if, %bb.ba ]
  %i.il = getelementptr [8 x i8], ptr %.0.i.i61.i, i64 %indvars.iv.i
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
  br i1 %i.iw, label %RB_SYMBOL_P.exit.thread.i, label %.thread.loopexit.split.loop.exit95.i

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

.thread.loopexit.split.loop.exit95.i:             ; preds = %RB_SYMBOL_P.exit.i
  %i.jc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split.loop.exit95.i, %.thread.loopexit.split.loop.exit.i, %int_param.exit.i
  %.054.lcssa.i = phi i32 [ 0, %int_param.exit.i ], [ %i.jc, %.thread.loopexit.split.loop.exit95.i ], [ %i.jb, %.thread.loopexit.split.loop.exit.i ] ; 4 uses
  %i.jd = icmp eq i32 %.054.lcssa.i, %i.hi
  br i1 %i.jd, label %iseq_build_kw.exit, label %bb.bd

bb.bd:                                            ; preds = %.thread.i
  %i.je = sub i32 %i.hi, %.054.lcssa.i            ; 3 uses
  %i.jf = icmp sgt i32 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.jg, i64 noundef 8) #39 ; 2 uses
  %i.ji = icmp slt i32 %.054.lcssa.i, %i.hi
  br i1 %i.ji, label %.lr.ph84.i, label %._crit_edge.i

.lr.ph84.i:                                       ; preds = %bb.bd
  %i.jj = getelementptr i8, ptr %i.gy, i64 16
  %i.jk = getelementptr i8, ptr %i.gy, i64 32
  %i.jl = ptrtoint ptr %0 to i64
  %i.jm = zext i32 %.054.lcssa.i to i64
  br label %bb.be

bb.be:                                            ; preds = %rb_obj_write.exit.i, %.lr.ph84.i
  %indvars.iv87.i = phi i64 [ %i.jm, %.lr.ph84.i ], [ %indvars.iv.next88.i, %rb_obj_write.exit.i ] ; 3 uses
  %.05582.i = phi i32 [ 0, %.lr.ph84.i ], [ %i.kr, %rb_obj_write.exit.i ] ; 2 uses
  %i.jn = load i64, ptr %i.gy, align 8, !tbaa !74
  %i.jo = and i64 %i.jn, 8192
  %.not.i.i62.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i62.i, label %bb.bf, label %RARRAY_AREF.exit64.i

bb.bf:                                            ; preds = %bb.be
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !20
  br label %RARRAY_AREF.exit64.i

RARRAY_AREF.exit64.i:                             ; preds = %bb.bf, %bb.be
  %.0.i.i63.i = phi ptr [ %i.jp, %bb.bf ], [ %i.jj, %bb.be ]
  %i.jq = getelementptr [8 x i8], ptr %.0.i.i63.i, i64 %indvars.iv87.i
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !36 ; 3 uses
  %i.js = call i64 @rb_to_array_type(i64 noundef %i.jr) #37 ; 0 uses
  %i.jt = inttoptr i64 %i.jr to ptr               ; 6 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !74 ; 2 uses
  %i.jv = and i64 %i.ju, 8192
  %.not.i.i131 = icmp eq i64 %i.jv, 0             ; 3 uses
  br i1 %.not.i.i131, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %RARRAY_AREF.exit64.i
  %i.jw = lshr i64 %i.ju, 15
  %i.jx = and i64 %i.jw, 127
  br label %rb_array_len.exit.i132

bb.bh:                                            ; preds = %RARRAY_AREF.exit64.i
  %i.jy = getelementptr i8, ptr %i.jt, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !20
  br label %rb_array_len.exit.i132

rb_array_len.exit.i132:                           ; preds = %bb.bh, %bb.bg
  %.0.i65.i = phi i64 [ %i.jx, %bb.bg ], [ %i.jz, %bb.bh ]
  switch i64 %.0.i65.i, label %bb.bo [
    i64 1, label %bb.bi
    i64 2, label %bb.bl
  ]

bb.bi:                                            ; preds = %rb_array_len.exit.i132
  br i1 %.not.i.i131, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ka = getelementptr i8, ptr %i.jt, i64 16
  br label %RARRAY_AREF.exit68.i

bb.bk:                                            ; preds = %bb.bi
  %i.kb = getelementptr i8, ptr %i.jt, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !20
  br label %RARRAY_AREF.exit68.i

bb.bl:                                            ; preds = %rb_array_len.exit.i132
  br i1 %.not.i.i131, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr i8, ptr %i.jt, i64 16
  br label %RARRAY_AREF.exit74.i

bb.bn:                                            ; preds = %bb.bl
  %i.ke = getelementptr i8, ptr %i.jt, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !20
  br label %RARRAY_AREF.exit74.i

RARRAY_AREF.exit74.i:                             ; preds = %bb.bn, %bb.bm
  %.in.i = phi ptr [ %i.kd, %bb.bm ], [ %i.kf, %bb.bn ] ; 2 uses
  %i.kg = getelementptr i8, ptr %.in.i, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !36
  br label %RARRAY_AREF.exit68.i

bb.bo:                                            ; preds = %rb_array_len.exit.i132
  %i.ki = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ki, ptr noundef nonnull @.str.198, i64 noundef %i.jr) #41
  unreachable

RARRAY_AREF.exit68.i:                             ; preds = %RARRAY_AREF.exit74.i, %bb.bk, %bb.bj
  %.057.i = phi i64 [ %i.kh, %RARRAY_AREF.exit74.i ], [ 36, %bb.bj ], [ 36, %bb.bk ] ; 4 uses
  %.056.in.i = phi ptr [ %.in.i, %RARRAY_AREF.exit74.i ], [ %i.ka, %bb.bj ], [ %i.kc, %bb.bk ]
  %.056.i = load i64, ptr %.056.in.i, align 8, !tbaa !36
  %i.kj = call i64 @rb_sym2id(i64 noundef %.056.i) #37
  %i.kk = getelementptr [8 x i8], ptr %i.id, i64 %indvars.iv87.i
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !36
  %i.kl = sext i32 %.05582.i to i64
  %i.km = getelementptr [8 x i8], ptr %i.jh, i64 %i.kl
  store i64 %.057.i, ptr %i.km, align 8, !tbaa !36
  %i.kn = icmp eq i64 %.057.i, 0
  %i.ko = and i64 %.057.i, 7
  %i.kp = icmp ne i64 %i.ko, 0
  %i.kq = or i1 %i.kn, %i.kp
  br i1 %i.kq, label %rb_obj_write.exit.i, label %bb.bp

bb.bp:                                            ; preds = %RARRAY_AREF.exit68.i
  call void @rb_gc_writebarrier(i64 noundef %i.jl, i64 noundef %.057.i) #37
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.bp, %RARRAY_AREF.exit68.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1
  %i.kr = add nuw i32 %.05582.i, 1                ; 2 uses
  %exitcond90.not.i = icmp eq i32 %i.kr, %i.je
  br i1 %exitcond90.not.i, label %._crit_edge.i, label %bb.be, !llvm.loop !298

._crit_edge.i:                                    ; preds = %rb_obj_write.exit.i, %bb.bd
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.id, ptr %i.ks, align 8, !tbaa !227
  br label %iseq_build_kw.exit

iseq_build_kw.exit:                               ; preds = %RB_SYMBOL_P.exit.thread.i, %.thread.i, %._crit_edge.i
  %.sink101.i = phi i64 [ 24, %._crit_edge.i ], [ 16, %.thread.i ], [ 16, %RB_SYMBOL_P.exit.thread.i ]
  %.sink.i = phi ptr [ %i.jh, %._crit_edge.i ], [ %i.id, %.thread.i ], [ %i.id, %RB_SYMBOL_P.exit.thread.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.sink101.i
  store ptr %.sink.i, ptr %i.kt, align 8, !tbaa !88
  %i.ku = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.kv = getelementptr i8, ptr %i.ku, i64 56
  store ptr %i.hj, ptr %i.kv, align 8, !tbaa !211
  br label %bb.br

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.as, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.kw = icmp eq i64 %i.q, 4
  br i1 %i.kw, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.kx = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kx, ptr noundef nonnull @.str.23, i64 noundef %i.q) #41
  unreachable

bb.br:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %iseq_build_kw.exit
  %i.ky = call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 16) #37
  %i.kz = call i64 @rb_id2sym(i64 noundef %i.ky) #37
  %i.la = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.kz) #37
  %i.lb = icmp eq i64 %i.la, 20
  br i1 %i.lb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lc = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ld = getelementptr i8, ptr %i.lc, i64 16     ; 2 uses
  %i.le = load i16, ptr %i.ld, align 8
  %i.lf = or i16 %i.le, 128
  store i16 %i.lf, ptr %i.ld, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.lg = call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 9) #37
  %i.lh = call i64 @rb_id2sym(i64 noundef %i.lg) #37
  %i.li = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.lh) #37
  %i.lj = icmp eq i64 %i.li, 20
  br i1 %i.lj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.lk = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ll = getelementptr i8, ptr %i.lk, i64 16     ; 2 uses
  %i.lm = load i16, ptr %i.ll, align 8
  %i.ln = or i16 %i.lm, 4096
  store i16 %i.ln, ptr %i.ll, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lo = call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 6) #37
  %i.lp = call i64 @rb_id2sym(i64 noundef %i.lo) #37 ; 2 uses
  %i.lq = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.lp) #37 ; 4 uses
  %i.lr = trunc i64 %i.lq to i1
  br i1 %i.lr, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ls = icmp eq i64 %i.lq, 4
  br i1 %i.ls, label %int_param.exit135.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lt = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.lt, ptr noundef nonnull @.str.196, i64 noundef %i.lp, i64 noundef %i.lq) #41
end_hunk_0
begin_hunk_1_@rb_iseq_build_from_ary:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.adr = load volatile i64, ptr %i.adq, align 8, !tbaa !36 ; 0 uses
  %i.ads = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.adc, ptr %i.ads, align 8, !tbaa !36
  %i.adt = icmp eq i64 %i.adc, 0
  %i.adu = and i64 %i.adc, 7
  %i.adv = icmp ne i64 %i.adu, 0
  %i.adw = or i1 %i.adt, %i.adv
  br i1 %i.adw, label %rb_obj_written.exit184.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.adc) #37
  br label %rb_obj_written.exit184.i

rb_obj_written.exit184.i:                         ; preds = %bb.fx, %bb.fw
  %i.adx = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ady = getelementptr i8, ptr %i.adx, i64 244  ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !124
  %i.aea = add i32 %i.adz, 1
  store i32 %i.aea, ptr %i.ady, align 4, !tbaa !124
  br label %rb_obj_written.exit.i

.thread.i166:                                     ; preds = %rb_array_len.exit183.thread.i
  %i.aeb = getelementptr i8, ptr %i.adh, i64 16
  br label %RARRAY_AREF.exit187.i

bb.fy:                                            ; preds = %rb_array_len.exit183.i
  %i.aec = getelementptr i8, ptr %i.adh, i64 32
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !20
  br label %RARRAY_AREF.exit187.i

RARRAY_AREF.exit187.i:                            ; preds = %bb.fy, %.thread.i166
  %.0.i.i186.i = phi ptr [ %i.aeb, %.thread.i166 ], [ %i.aed, %bb.fy ]
  %i.aee = getelementptr [8 x i8], ptr %.0.i.i186.i, i64 %i.adg
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !36
  %i.aeg = call i64 @rb_to_symbol_type(i64 noundef %i.aef) #37
  %i.aeh = call i64 @rb_ary_push(i64 noundef %i.adc, i64 noundef %i.aeg) #37 ; 0 uses
  %i.aei = add i32 %.0148.i, 1
  %.pre324.i = load i64, ptr %i.d, align 8, !tbaa !36
  br label %bb.fv, !llvm.loop !306

bb.fz:                                            ; preds = %insn_op_type.exit.i
  %i.aej = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aaq, ptr %i.aej, align 8, !tbaa !36
  %i.aek = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ael = call i64 @rb_num2uint(i64 noundef %i.aek) #37
  %i.aem = trunc i64 %i.ael to i32
  %i.aen = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aeo = getelementptr i8, ptr %i.aen, i64 252
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !123
  %.not157.i = icmp ugt i32 %i.aep, %i.aem
  br i1 %.not157.i, label %rb_obj_written.exit.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aeq = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.aer = trunc i64 %i.aeq to i1
  br i1 %i.aer, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aes = call i64 @rb_fix2int(i64 noundef %i.aeq) #37
  br label %rb_num2int_inline.exit189.i

bb.gc:                                            ; preds = %bb.ga
  %i.aet = call i64 @rb_num2int(i64 noundef %i.aeq) #37
  br label %rb_num2int_inline.exit189.i

rb_num2int_inline.exit189.i:                      ; preds = %bb.gc, %bb.gb
  %.0.i188.i = phi i64 [ %i.aes, %bb.gb ], [ %i.aet, %bb.gc ]
  %i.aeu = trunc i64 %.0.i188.i to i32
  %i.aev = add i32 %i.aeu, 1
  %i.aew = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aex = getelementptr i8, ptr %i.aew, i64 252
  store i32 %i.aev, ptr %i.aex, align 4, !tbaa !123
  br label %rb_obj_written.exit.i

bb.gd:                                            ; preds = %insn_op_type.exit.i
  %i.aey = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aaq, ptr %i.aey, align 8, !tbaa !36
  %i.aez = load i64, ptr %i.d, align 8, !tbaa !36
  %i.afa = call i64 @rb_num2uint(i64 noundef %i.aez) #37
  %i.afb = trunc i64 %i.afa to i32
  %i.afc = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.afd = getelementptr i8, ptr %i.afc, i64 256
  %i.afe = load i32, ptr %i.afd, align 8, !tbaa !122
  %.not156.i = icmp ugt i32 %i.afe, %i.afb
  br i1 %.not156.i, label %rb_obj_written.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aff = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.afg = trunc i64 %i.aff to i1
  br i1 %i.afg, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.afh = call i64 @rb_fix2int(i64 noundef %i.aff) #37
  br label %rb_num2int_inline.exit191.i

bb.gg:                                            ; preds = %bb.ge
  %i.afi = call i64 @rb_num2int(i64 noundef %i.aff) #37
  br label %rb_num2int_inline.exit191.i

rb_num2int_inline.exit191.i:                      ; preds = %bb.gg, %bb.gf
  %.0.i190.i = phi i64 [ %i.afh, %bb.gf ], [ %i.afi, %bb.gg ]
  %i.afj = trunc i64 %.0.i190.i to i32
  %i.afk = add i32 %i.afj, 1
  %i.afl = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.afm = getelementptr i8, ptr %i.afl, i64 256
  store i32 %i.afk, ptr %i.afm, align 8, !tbaa !122
  br label %rb_obj_written.exit.i

bb.gh:                                            ; preds = %insn_op_type.exit.i
  %i.afn = icmp eq i64 %i.aaq, 4
  br i1 %i.afn, label %.thread.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afo = call i64 @rb_intern2(ptr noundef nonnull @.str.220, i64 noundef 3) #37
  %i.afp = call i64 @rb_id2sym(i64 noundef %i.afo) #37
  %i.afq = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afp) #37 ; 2 uses
  %i.afr = call i64 @rb_intern2(ptr noundef nonnull @.str.221, i64 noundef 4) #37
  %i.afs = call i64 @rb_id2sym(i64 noundef %i.afr) #37
  %i.aft = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afs) #37 ; 2 uses
  %i.afu = call i64 @rb_intern2(ptr noundef nonnull @.str.222, i64 noundef 9) #37
  %i.afv = call i64 @rb_id2sym(i64 noundef %i.afu) #37
  %i.afw = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afv) #37 ; 2 uses
  %i.afx = call i64 @rb_intern2(ptr noundef nonnull @.str.223, i64 noundef 6) #37
  %i.afy = call i64 @rb_id2sym(i64 noundef %i.afx) #37
  %i.afz = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afy) #37 ; 2 uses
  %i.aga = icmp eq i64 %i.afq, 4
  br i1 %i.aga, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agb = call i64 @rb_sym2id(i64 noundef %i.afq) #37
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.0.i192.i = phi i64 [ 0, %bb.gi ], [ %i.agb, %bb.gj ] ; 2 uses
  %i.agc = icmp eq i64 %i.aft, 4
  br i1 %i.agc, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.agd = call i64 @rb_num2uint(i64 noundef %i.aft) #37
  %i.age = trunc i64 %i.agd to i32
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.037.i.i = phi i32 [ 0, %bb.gk ], [ %i.age, %bb.gl ] ; 4 uses
  %i.agf = icmp eq i64 %i.afw, 4
  br i1 %i.agf, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agg = call i64 @rb_fix2int(i64 noundef %i.afw) #37
  %i.agh = trunc i64 %i.agg to i32
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.035.i.i = phi i32 [ 0, %bb.gm ], [ %i.agh, %bb.gn ] ; 2 uses
  %i.agi = icmp eq i64 %i.afz, 4
  br i1 %i.agi, label %.thread.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.agj = inttoptr i64 %i.afz to ptr             ; 5 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !74 ; 2 uses
  %i.agl = and i64 %i.agk, 8192
  %.not.i.i.i193.i = icmp eq i64 %i.agl, 0
  br i1 %.not.i.i.i193.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agm = lshr i64 %i.agk, 15
  %i.agn = and i64 %i.agm, 127
  br label %rb_array_len.exit.i.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.ago = getelementptr i8, ptr %i.agj, i64 16
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i.i

rb_array_len.exit.i.i.i:                          ; preds = %bb.gr, %bb.gq
  %.0.i.i.i.i = phi i64 [ %i.agn, %bb.gq ], [ %i.agp, %bb.gr ] ; 6 uses
  %i.agq = add i64 %.0.i.i.i.i, 2147483648
  %.not.i1.i.i.i = icmp ult i64 %i.agq, 4294967296
  br i1 %.not.i1.i.i.i, label %RARRAY_LENINT.exit.i.i, label %bb.gs

bb.gs:                                            ; preds = %rb_array_len.exit.i.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i.i) #38
  unreachable

RARRAY_LENINT.exit.i.i:                           ; preds = %rb_array_len.exit.i.i.i
  %i.agr = trunc nsw i64 %.0.i.i.i.i to i32       ; 2 uses
  %i.ags = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  %i.agt = call i64 @rb_size_mul_add_or_raise(i64 noundef %.0.i.i.i.i, i64 noundef 8, i64 noundef 8, i64 noundef %i.ags) #37
  %i.agu = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.agt) #42 ; 4 uses
  %i.agv = getelementptr i8, ptr %i.agu, i64 4
  store i32 0, ptr %i.agv, align 4, !tbaa !7
  store i32 %i.agr, ptr %i.agu, align 8, !tbaa !7
  %i.agw = icmp sgt i64 %.0.i.i.i.i, 0
  br i1 %i.agw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %RARRAY_LENINT.exit.i.i
  %i.agx = getelementptr i8, ptr %i.agj, i64 16
  %i.agy = getelementptr i8, ptr %i.agj, i64 32
  %i.agz = getelementptr i8, ptr %i.agu, i64 8
  br label %bb.gt

bb.gt:                                            ; preds = %RARRAY_AREF.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i196.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i197.i, %RARRAY_AREF.exit.i.i ] ; 3 uses
  %i.aha = load i64, ptr %i.agj, align 8, !tbaa !74
  %i.ahb = and i64 %i.aha, 8192
  %.not.i.i42.i.i = icmp eq i64 %i.ahb, 0
  br i1 %.not.i.i42.i.i, label %bb.gu, label %RARRAY_AREF.exit.i.i

bb.gu:                                            ; preds = %bb.gt
  %i.ahc = load ptr, ptr %i.agy, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.gu, %bb.gt
  %.0.i.i43.i.i = phi ptr [ %i.ahc, %bb.gu ], [ %i.agx, %bb.gt ]
  %i.ahd = getelementptr [8 x i8], ptr %.0.i.i43.i.i, i64 %indvars.iv.i196.i
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !36 ; 2 uses
  %i.ahf = call i64 @rb_sym2id(i64 noundef %i.ahe) #37 ; 0 uses
  %i.ahg = getelementptr [8 x i8], ptr %i.agz, i64 %indvars.iv.i196.i
  store i64 %i.ahe, ptr %i.ahg, align 8, !tbaa !36
  %indvars.iv.next.i197.i = add nuw nsw i64 %indvars.iv.i196.i, 1 ; 2 uses
  %exitcond.not.i198.i = icmp eq i64 %indvars.iv.next.i197.i, %.0.i.i.i.i
  br i1 %exitcond.not.i198.i, label %._crit_edge.i.i, label %bb.gt, !llvm.loop !307

._crit_edge.i.i:                                  ; preds = %RARRAY_AREF.exit.i.i, %RARRAY_LENINT.exit.i.i
  %i.ahh = or i32 %.037.i.i, 32
  %i.ahi = add i32 %.035.i.i, %i.agr
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.go, %bb.gh
  %.in.in.in.i.i = phi i32 [ %.037.i.i, %._crit_edge.i.i ], [ %.037.i.i, %bb.go ], [ 0, %bb.gh ]
  %.153.i.i = phi i64 [ %.0.i192.i, %._crit_edge.i.i ], [ %.0.i192.i, %bb.go ], [ 0, %bb.gh ] ; 3 uses
  %.14052.i.i = phi ptr [ %i.agu, %._crit_edge.i.i ], [ null, %bb.go ], [ null, %bb.gh ] ; 2 uses
  %.015.i.i.i = phi i32 [ %i.ahh, %._crit_edge.i.i ], [ %.037.i.i, %bb.go ], [ 0, %bb.gh ] ; 3 uses
  %.0.i.i194.i = phi i32 [ %i.ahi, %._crit_edge.i.i ], [ %.035.i.i, %bb.go ], [ 0, %bb.gh ] ; 3 uses
  %.in.in.i.i = lshr i32 %.in.in.in.i.i, 4
  %.in.i.i = and i32 %.in.in.i.i, 1
  %i.ahj = xor i32 %.in.i.i, 1
  %i.ahk = and i32 %.015.i.i.i, 8291
  %i.ahl = or i32 %i.ahk, %i.ahj
  %or.cond.not.i.i.i = icmp eq i32 %i.ahl, 0
  %i.ahm = or i32 %.015.i.i.i, 16
  %spec.select.i.i195.i = select i1 %or.cond.not.i.i.i, i32 %i.ahm, i32 %.015.i.i.i ; 3 uses
  %i.ahn = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aho = getelementptr i8, ptr %i.ahn, i64 260  ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !109
  %i.ahq = add i32 %i.ahp, 1
  store i32 %i.ahq, ptr %i.aho, align 4, !tbaa !109
  %.not.i.i44.i.i = icmp ugt i64 %.153.i.i, 4294967295
  %i.ahr = icmp ugt i32 %spec.select.i.i195.i, 65535
  %or.cond13.i.i.i.i = or i1 %.not.i.i44.i.i, %i.ahr
  br i1 %or.cond13.i.i.i.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %.thread.i.i
  %i.ahs = icmp ugt i32 %.0.i.i194.i, 32767
  %i.aht = icmp ne ptr %.14052.i.i, null
  %or.cond.i.i.i.i = or i1 %i.aht, %i.ahs
  br i1 %or.cond.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ahu = shl nuw i64 %.153.i.i, 32
  %i.ahv = shl nuw i32 %spec.select.i.i195.i, 16
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = or disjoint i64 %i.ahu, %i.ahw
  %i.ahy = shl nuw nsw i32 %.0.i.i194.i, 1
  %i.ahz = zext nneg i32 %i.ahy to i64
  %i.aia = or disjoint i64 %i.ahx, %i.ahz
  %i.aib = or disjoint i64 %i.aia, 1
  %i.aic = inttoptr i64 %i.aib to ptr
  br label %vm_ci_new_.exit.i.i.i

bb.gx:                                            ; preds = %bb.gv, %.thread.i.i
  %i.aid = call ptr @rb_vm_ci_lookup(i64 noundef %.153.i.i, i32 noundef %spec.select.i.i195.i, i32 noundef %.0.i.i194.i, ptr noundef %.14052.i.i) #37
  br label %vm_ci_new_.exit.i.i.i

vm_ci_new_.exit.i.i.i:                            ; preds = %bb.gx, %bb.gw
  %.0.i.i45.i.i = phi ptr [ %i.aid, %bb.gx ], [ %i.aic, %bb.gw ] ; 2 uses
  %i.aie = ptrtoint ptr %.0.i.i45.i.i to i64      ; 4 uses
  %i.aif = icmp eq ptr %.0.i.i45.i.i, null
  %i.aig = and i64 %i.aie, 7
  %i.aih = icmp ne i64 %i.aig, 0
  %i.aii = or i1 %i.aif, %i.aih
  br i1 %i.aii, label %iseq_build_callinfo_from_hash.exit.i, label %bb.gy

bb.gy:                                            ; preds = %vm_ci_new_.exit.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.aie) #37
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.aie) #37
  br label %iseq_build_callinfo_from_hash.exit.i

iseq_build_callinfo_from_hash.exit.i:             ; preds = %bb.gy, %vm_ci_new_.exit.i.i.i
  %i.aij = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aie, ptr %i.aij, align 8, !tbaa !36
  br label %rb_obj_written.exit.i

bb.gz:                                            ; preds = %insn_op_type.exit.i
  %i.aik = call i64 @rb_to_symbol_type(i64 noundef %i.aaq) #37
  %i.ail = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aik, ptr %i.ail, align 8, !tbaa !36
  br label %rb_obj_written.exit.i

bb.ha:                                            ; preds = %insn_op_type.exit.i
  %i.aim = inttoptr i64 %i.aaq to ptr             ; 2 uses
  %i.ain = load i64, ptr %i.aim, align 8, !tbaa !74 ; 2 uses
  %i.aio = and i64 %i.ain, 8192
  %.not.i199.i = icmp eq i64 %i.aio, 0
  br i1 %.not.i199.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aip = lshr i64 %i.ain, 15
  %i.aiq = and i64 %i.aip, 127
  br label %rb_array_len.exit201.i

bb.hc:                                            ; preds = %bb.ha
  %i.air = getelementptr i8, ptr %i.aim, i64 16
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !20
  br label %rb_array_len.exit201.i

rb_array_len.exit201.i:                           ; preds = %bb.hc, %bb.hb
  %.0.i200.i = phi i64 [ %i.aiq, %bb.hb ], [ %i.ais, %bb.hc ]
  %i.ait = sdiv i64 %.0.i200.i, 2
  %i.aiu = call i64 @rb_hash_new_with_size(i64 noundef %i.ait) #37 ; 7 uses
  %i.aiv = call ptr @rb_hash_tbl_raw(i64 noundef %i.aiu, ptr noundef nonnull @.str, i32 noundef 12136) #37
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 8
  store ptr @cdhash_type, ptr %i.aiw, align 8, !tbaa !308
  %i.aix = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aiy = call i64 @rb_to_array_type(i64 noundef %i.aix) #37 ; 2 uses
  store i64 %i.aiy, ptr %i.d, align 8, !tbaa !36
  br label %bb.hd

bb.hd:                                            ; preds = %register_label.exit, %rb_array_len.exit201.i
  %i.aiz = phi i64 [ %i.aiy, %rb_array_len.exit201.i ], [ %.pre.i165, %register_label.exit ]
  %.0145.i = phi i32 [ 0, %rb_array_len.exit201.i ], [ %i.all, %register_label.exit ] ; 2 uses
  %i.aja = sext i32 %.0145.i to i64               ; 3 uses
  %i.ajb = inttoptr i64 %i.aiz to ptr             ; 4 uses
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !74 ; 2 uses
  %i.ajd = and i64 %i.ajc, 8192
  %.not.i202.i = icmp eq i64 %i.ajd, 0
  br i1 %.not.i202.i, label %rb_array_len.exit204.i, label %rb_array_len.exit204.thread.i

rb_array_len.exit204.i:                           ; preds = %bb.hd
  %i.aje = getelementptr i8, ptr %i.ajb, i64 16
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !20
  %i.ajg = icmp sgt i64 %i.ajf, %i.aja
  br i1 %i.ajg, label %bb.he, label %bb.hj

rb_array_len.exit204.thread.i:                    ; preds = %bb.hd
  %i.ajh = lshr i64 %i.ajc, 15
  %i.aji = and i64 %i.ajh, 127
  %i.ajj = icmp sgt i64 %i.aji, %i.aja
  br i1 %i.ajj, label %.thread222.i, label %bb.hj

.thread222.i:                                     ; preds = %rb_array_len.exit204.thread.i
  %i.ajk = getelementptr i8, ptr %i.ajb, i64 16
  br label %RARRAY_AREF.exit210.i

bb.he:                                            ; preds = %rb_array_len.exit204.i
  %i.ajl = getelementptr i8, ptr %i.ajb, i64 32
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !20
  br label %RARRAY_AREF.exit210.i

RARRAY_AREF.exit210.i:                            ; preds = %bb.he, %.thread222.i
  %.pn.i = phi ptr [ %i.ajk, %.thread222.i ], [ %i.ajm, %bb.he ]
  %.in241.i = getelementptr [8 x i8], ptr %.pn.i, i64 %i.aja ; 2 uses
  %i.ajn = load i64, ptr %.in241.i, align 8, !tbaa !36
  %i.ajo = getelementptr i8, ptr %.in241.i, i64 8
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ajq = call i64 @rb_to_symbol_type(i64 noundef %i.ajp) #37 ; 2 uses
  %i.ajr = call i32 @rb_st_lookup(ptr noundef %i.uf, i64 noundef %i.ajq, ptr noundef nonnull %i.a) #37
  %i.ajs = icmp eq i32 %i.ajr, 0
  br i1 %i.ajs, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %RARRAY_AREF.exit210.i
  %.val13.i.i = load ptr, ptr %i.od, align 8, !tbaa !20
  %i.ajt = getelementptr i8, ptr %.val13.i.i, i64 96 ; 2 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !37 ; 4 uses
  %i.ajv = getelementptr i8, ptr %i.aju, i64 8
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !7 ; 2 uses
  %i.ajx = zext i32 %i.ajw to i64
  %i.ajy = add nuw nsw i64 %i.ajx, 48
  %i.ajz = getelementptr i8, ptr %i.aju, i64 12
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !7 ; 4 uses
  %i.akb = zext i32 %i.aka to i64                 ; 2 uses
  %i.akc = icmp samesign ugt i64 %i.ajy, %i.akb
  br i1 %i.akc, label %.preheader.i.i.i.i.i170, label %new_label_body.exit.i

.preheader.i.i.i.i.i170:                          ; preds = %bb.hf
  %i.akd = icmp ult i32 %i.aka, 48
  br i1 %i.akd, label %.lr.ph.i.i.i.i.i175, label %._crit_edge.i.i.i.i.i171

.lr.ph.i.i.i.i.i175:                              ; preds = %.preheader.i.i.i.i.i170, %bb.hh
  %.027.i.i.i.i.i176 = phi i32 [ %i.akf, %bb.hh ], [ %i.aka, %.preheader.i.i.i.i.i170 ] ; 3 uses
  %i.ake = icmp samesign ugt i32 %.027.i.i.i.i.i176, 1073741822
  br i1 %i.ake, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i175
  call void @rb_memerror() #38
  unreachable

bb.hh:                                            ; preds = %.lr.ph.i.i.i.i.i175
  %i.akf = shl nuw nsw i32 %.027.i.i.i.i.i176, 1  ; 3 uses
  %i.akg = icmp samesign ult i32 %.027.i.i.i.i.i176, 24
  br i1 %i.akg, label %.lr.ph.i.i.i.i.i175, label %._crit_edge.i.i.loopexit.i.i.i177, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i.i177:                ; preds = %bb.hh
  %i.akh = zext nneg i32 %i.akf to i64
  br label %._crit_edge.i.i.i.i.i171

._crit_edge.i.i.i.i.i171:                         ; preds = %._crit_edge.i.i.loopexit.i.i.i177, %.preheader.i.i.i.i.i170
  %.0.lcssa.i.i.i.i.i172 = phi i32 [ %i.aka, %.preheader.i.i.i.i.i170 ], [ %i.akf, %._crit_edge.i.i.loopexit.i.i.i177 ]
  %.lcssa.i.i.i.i.i173 = phi i64 [ %i.akb, %.preheader.i.i.i.i.i170 ], [ %i.akh, %._crit_edge.i.i.loopexit.i.i.i177 ]
  %i.aki = add nuw nsw i64 %.lcssa.i.i.i.i.i173, 16
  %i.akj = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.aki, i64 noundef 1) #39 ; 6 uses
  store ptr %i.akj, ptr %i.aju, align 8, !tbaa !37
  store ptr %i.akj, ptr %i.ajt, align 8, !tbaa !37
  store ptr null, ptr %i.akj, align 8, !tbaa !37
  %i.akk = getelementptr i8, ptr %i.akj, i64 8
  store i32 0, ptr %i.akk, align 8, !tbaa !7
  %i.akl = getelementptr i8, ptr %i.akj, i64 12
  store i32 %.0.lcssa.i.i.i.i.i172, ptr %i.akl, align 4, !tbaa !7
  br label %new_label_body.exit.i

end_hunk_1
begin_hunk_2_@iseq_compile_pattern_each:nd_line.exit
  store ptr %i.bdp, ptr %i.bdf, align 8, !tbaa !11
  %i.bdt = load i64, ptr %2, align 8, !tbaa !176
  %i.bdu = lshr i64 %i.bdt, 15
  %i.bdv = trunc i64 %i.bdu to i32
  %i.bdw = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bdx = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.bdv, i32 noundef %i.bdw, i64 noundef 157, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bdy = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bdz = getelementptr i8, ptr %i.bdx, i64 16
  store ptr %i.bdy, ptr %i.bdz, align 8, !tbaa !34
  %i.bea = getelementptr i8, ptr %i.bdy, i64 8
  store ptr %i.bdx, ptr %i.bea, align 8, !tbaa !35
  store ptr %i.bdx, ptr %i.bdf, align 8, !tbaa !11
  br i1 %5, label %bb.bd, label %nd_line.exit1749

bb.bd:                                            ; preds = %nd_line.exit1746
  %i.beb = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.110, i64 noundef 40) #37
  %i.bec = add i32 %7, 1
  tail call fastcc void @iseq_compile_pattern_set_general_errmsg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.beb, i32 noundef %i.bec)
  br label %nd_line.exit1749

nd_line.exit1749:                                 ; preds = %bb.bd, %nd_line.exit1746
  %i.bed = load i64, ptr %2, align 8, !tbaa !176
  %i.bee = lshr i64 %i.bed, 15
  %i.bef = trunc i64 %i.bee to i32
  %i.beg = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.beh = ptrtoint ptr %i.baa to i64             ; 4 uses
  %i.bei = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bef, i32 noundef %i.beg, i32 noundef 74, i32 noundef 1, i64 noundef %i.beh) ; 3 uses
  %i.bej = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bek = getelementptr i8, ptr %i.bei, i64 16
  store ptr %i.bej, ptr %i.bek, align 8, !tbaa !34
  %i.bel = getelementptr i8, ptr %i.bej, i64 8
  store ptr %i.bei, ptr %i.bel, align 8, !tbaa !35
  store ptr %i.bei, ptr %i.bdf, align 8, !tbaa !11
  %i.bem = load i32, ptr %i.bai, align 8, !tbaa !273
  %i.ben = add i32 %i.bem, 1
  store i32 %i.ben, ptr %i.bai, align 8, !tbaa !273
  %i.beo = icmp eq i64 %.01184, 4
  br i1 %i.beo, label %nd_line.exit1752, label %nd_line.exit1756

nd_line.exit1752:                                 ; preds = %nd_line.exit1749
  %i.bep = load i64, ptr %2, align 8, !tbaa !176
  %i.beq = lshr i64 %i.bep, 15
  %i.ber = trunc i64 %i.beq to i32
  %i.bes = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bet = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.ber, i32 noundef %i.bes, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.beu = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bev = getelementptr i8, ptr %i.bet, i64 16
  store ptr %i.beu, ptr %i.bev, align 8, !tbaa !34
  %i.bew = getelementptr i8, ptr %i.beu, i64 8
  store ptr %i.bet, ptr %i.bew, align 8, !tbaa !35
  store ptr %i.bet, ptr %i.bdf, align 8, !tbaa !11
  br label %nd_line.exit1769

nd_line.exit1756:                                 ; preds = %nd_line.exit1749
  tail call void @rb_obj_freeze_inline(i64 noundef %.01184) #37
  %i.bex = tail call i64 @rb_obj_set_shareable(i64 noundef %.01184) #37 ; 0 uses
  %i.bey = load i64, ptr %2, align 8, !tbaa !176
  %i.bez = lshr i64 %i.bey, 15
  %i.bfa = trunc i64 %i.bez to i32
  %i.bfb = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bfc = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bfa, i32 noundef %i.bfb, i32 noundef 29, i32 noundef 1, i64 noundef %.01184) ; 3 uses
  %i.bfd = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bfe = getelementptr i8, ptr %i.bfc, i64 16
  store ptr %i.bfd, ptr %i.bfe, align 8, !tbaa !34
  %i.bff = getelementptr i8, ptr %i.bfd, i64 8
  store ptr %i.bfc, ptr %i.bff, align 8, !tbaa !35
  store ptr %i.bfc, ptr %i.bdf, align 8, !tbaa !11
  %i.bfg = tail call i64 @rb_obj_hide(i64 noundef %.01184) #37 ; 3 uses
  %i.bfh = icmp eq i64 %i.bfg, 0
  %i.bfi = and i64 %i.bfg, 7
  %i.bfj = icmp ne i64 %i.bfi, 0
  %i.bfk = or i1 %i.bfh, %i.bfj
  br i1 %i.bfk, label %nd_line.exit1769, label %bb.be

bb.be:                                            ; preds = %nd_line.exit1756
  %i.bfl = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bfl, i64 noundef %i.bfg) #37
  br label %nd_line.exit1769

nd_line.exit1769:                                 ; preds = %bb.be, %nd_line.exit1756, %nd_line.exit1752
  %i.bfm = load i64, ptr %2, align 8, !tbaa !176
  %i.bfn = lshr i64 %i.bfm, 15
  %i.bfo = trunc i64 %i.bfn to i32
  %i.bfp = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bfq = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @iseq_compile_pattern_each.rbimpl_id.111, ptr noundef @.str.109) #45
  %i.bfr = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.bfo, i32 noundef %i.bfp, i64 noundef %i.bfq, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bfs = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bft = getelementptr i8, ptr %i.bfr, i64 16
  store ptr %i.bfs, ptr %i.bft, align 8, !tbaa !34
  %i.bfu = getelementptr i8, ptr %i.bfs, i64 8
  store ptr %i.bfr, ptr %i.bfu, align 8, !tbaa !35
  store ptr %i.bfr, ptr %i.bdf, align 8, !tbaa !11
  %i.bfv = load i64, ptr %2, align 8, !tbaa !176
  %i.bfw = lshr i64 %i.bfv, 15
  %i.bfx = trunc i64 %i.bfw to i32
  %i.bfy = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bfz = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bfx, i32 noundef %i.bfy, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bga = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bgb = getelementptr i8, ptr %i.bfz, i64 16
  store ptr %i.bga, ptr %i.bgb, align 8, !tbaa !34
  %i.bgc = getelementptr i8, ptr %i.bga, i64 8
  store ptr %i.bfz, ptr %i.bgc, align 8, !tbaa !35
  store ptr %i.bfz, ptr %i.bdf, align 8, !tbaa !11
  %i.bgd = load i64, ptr %2, align 8, !tbaa !176
  %i.bge = lshr i64 %i.bgd, 15
  %i.bgf = trunc i64 %i.bge to i32
  %i.bgg = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bgh = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bgf, i32 noundef %i.bgg, i32 noundef 51, i32 noundef 1, i64 noundef 17) ; 3 uses
  %i.bgi = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bgj = getelementptr i8, ptr %i.bgh, i64 16
  store ptr %i.bgi, ptr %i.bgj, align 8, !tbaa !34
  %i.bgk = getelementptr i8, ptr %i.bgi, i64 8
  store ptr %i.bgh, ptr %i.bgk, align 8, !tbaa !35
  store ptr %i.bgh, ptr %i.bdf, align 8, !tbaa !11
  %i.bgl = load i64, ptr %2, align 8, !tbaa !176
  %i.bgm = lshr i64 %i.bgl, 15
  %i.bgn = trunc i64 %i.bgm to i32
  %i.bgo = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bgp = ptrtoint ptr %i.bbk to i64
  %i.bgq = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bgn, i32 noundef %i.bgo, i32 noundef 74, i32 noundef 1, i64 noundef %i.bgp) ; 3 uses
  %i.bgr = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bgs = getelementptr i8, ptr %i.bgq, i64 16
  store ptr %i.bgr, ptr %i.bgs, align 8, !tbaa !34
  %i.bgt = getelementptr i8, ptr %i.bgr, i64 8
  store ptr %i.bgq, ptr %i.bgt, align 8, !tbaa !35
  store ptr %i.bgq, ptr %i.bdf, align 8, !tbaa !11
  %i.bgu = load i32, ptr %i.bbs, align 8, !tbaa !273
  %i.bgv = add i32 %i.bgu, 1
  store i32 %i.bgv, ptr %i.bbs, align 8, !tbaa !273
  %i.bgw = getelementptr i8, ptr %2, i64 48       ; 4 uses
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !1129
  %.not1221 = icmp eq ptr %i.bgx, null
  br i1 %.not1221, label %bb.bf, label %nd_line.exit1772

nd_line.exit1772:                                 ; preds = %nd_line.exit1769
  %i.bgy = load i64, ptr %2, align 8, !tbaa !176
  %i.bgz = lshr i64 %i.bgy, 15
  %i.bha = trunc i64 %i.bgz to i32
  %i.bhb = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bhc = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @iseq_compile_pattern_each.rbimpl_id.112, ptr noundef @.str.113) #45
  %i.bhd = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.bha, i32 noundef %i.bhb, i64 noundef %i.bhc, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bhe = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bhf = getelementptr i8, ptr %i.bhd, i64 16
  store ptr %i.bhe, ptr %i.bhf, align 8, !tbaa !34
  %i.bhg = getelementptr i8, ptr %i.bhe, i64 8
  store ptr %i.bhd, ptr %i.bhg, align 8, !tbaa !35
  store ptr %i.bhd, ptr %i.bdf, align 8, !tbaa !11
  br label %bb.bf

bb.bf:                                            ; preds = %nd_line.exit1772, %nd_line.exit1769
  %i.bhh = load ptr, ptr %i.bbx, align 8, !tbaa !1127 ; 2 uses
  %.not1222 = icmp eq ptr %i.bhh, null
  br i1 %.not1222, label %nd_line.exit1866, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bhi = getelementptr i8, ptr %i.bhh, i64 32
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !1073 ; 3 uses
  %.not1223 = icmp eq ptr %i.bhj, null
  br i1 %.not1223, label %.critedge1257, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.bhk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %9, ptr %i.bhk, align 8, !tbaa !11
  %i.bhl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bhm = getelementptr i8, ptr %i.bhj, i64 40
  %i.bhn = load i64, ptr %i.bhm, align 8, !tbaa !20 ; 4 uses
  %i.bho = add i64 %i.bhn, 2147483648
  %.not.i1773 = icmp ult i64 %i.bho, 4294967296
  br i1 %.not.i1773, label %rb_long2int_inline.exit1774, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @rb_out_of_int(i64 noundef %i.bhn) #38
  unreachable

rb_long2int_inline.exit1774:                      ; preds = %bb.bh
  %.not12262256 = icmp sgt i64 %i.bhn, 1
  br i1 %.not12262256, label %.lr.ph2259, label %.critedge1255.thread

.lr.ph2259:                                       ; preds = %rb_long2int_inline.exit1774
  %i.bhp = trunc nuw nsw i64 %i.bhn to i32
  %i.bhq = lshr i32 %i.bhp, 1
  %i.bhr = add i32 %7, 3
  %i.bhs = sext i32 %i.bhr to i64
  %i.bht = shl nsw i64 %i.bhs, 1
  %i.bhu = or disjoint i64 %i.bht, 1
  %i.bhv = add i32 %7, 5
  %i.bhw = sext i32 %i.bhv to i64
  %i.bhx = shl nsw i64 %i.bhw, 1
  %i.bhy = or disjoint i64 %i.bhx, 1
  %i.bhz = add i32 %7, 7
  %i.bia = sext i32 %i.bhz to i64
  %i.bib = shl nsw i64 %i.bia, 1
  %i.bic = or disjoint i64 %i.bib, 1
  %i.bid = add i32 %7, 9
  %i.bie = sext i32 %i.bid to i64
  %i.bif = shl nsw i64 %i.bie, 1
  %i.big = or disjoint i64 %i.bif, 1
  %i.bih = add i32 %7, 1
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph2259, %bb.br
  %.011862258 = phi i32 [ 0, %.lr.ph2259 ], [ %i.brz, %bb.br ]
  %.011872257 = phi ptr [ %i.bhj, %.lr.ph2259 ], [ %i.bry, %bb.br ] ; 2 uses
  %i.bii = getelementptr i8, ptr %.011872257, i64 32
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !941 ; 2 uses
  %i.bik = getelementptr i8, ptr %.011872257, i64 48 ; 2 uses
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !943
  %i.bim = getelementptr i8, ptr %i.bil, i64 32
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !941
  %i.bio = load i64, ptr %i.bij, align 8, !tbaa !176 ; 3 uses
  %i.bip = and i64 %i.bio, 32512
  %cond.i1775 = icmp eq i64 %i.bip, 25856
  br i1 %cond.i1775, label %bb.bk, label %nd_line.exit.i1776

bb.bk:                                            ; preds = %bb.bj
  %i.biq = call i64 @rb_node_sym_string_val(ptr noundef nonnull %i.bij) #37
  br label %nd_line.exit1788

nd_line.exit.i1776:                               ; preds = %bb.bj
  %i.bir = lshr i64 %i.bio, 15
  %i.bis = trunc i64 %i.bir to i32
  %i.bit = trunc i64 %i.bio to i32
  %i.biu = lshr i32 %i.bit, 8
  %i.biv = and i32 %i.biu, 127
  %i.biw = call ptr @ruby_node_name(i32 noundef %i.biv) #37
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.bis, ptr noundef nonnull @.str.128, ptr noundef %i.biw)
  br label %nd_line.exit1788

nd_line.exit1788:                                 ; preds = %bb.bk, %nd_line.exit.i1776
  %.0.i1777 = phi i64 [ %i.biq, %bb.bk ], [ 4, %nd_line.exit.i1776 ] ; 4 uses
  %i.bix = load i64, ptr %2, align 8, !tbaa !176
  %i.biy = lshr i64 %i.bix, 15
  %i.biz = trunc i64 %i.biy to i32
  %i.bja = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bjb = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.biz, i32 noundef %i.bja, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bjc = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bjd = getelementptr i8, ptr %i.bjb, i64 16
  store ptr %i.bjc, ptr %i.bjd, align 8, !tbaa !34
  %i.bje = getelementptr i8, ptr %i.bjc, i64 8
  store ptr %i.bjb, ptr %i.bje, align 8, !tbaa !35
  store ptr %i.bjb, ptr %i.bdf, align 8, !tbaa !11
  %i.bjf = load i64, ptr %2, align 8, !tbaa !176
  %i.bjg = lshr i64 %i.bjf, 15
  %i.bjh = trunc i64 %i.bjg to i32
  %i.bji = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bjj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bjh, i32 noundef %i.bji, i32 noundef 19, i32 noundef 1, i64 noundef %.0.i1777) ; 3 uses
  %i.bjk = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bjl = getelementptr i8, ptr %i.bjj, i64 16
  store ptr %i.bjk, ptr %i.bjl, align 8, !tbaa !34
  %i.bjm = getelementptr i8, ptr %i.bjk, i64 8
  store ptr %i.bjj, ptr %i.bjm, align 8, !tbaa !35
  store ptr %i.bjj, ptr %i.bdf, align 8, !tbaa !11
  %i.bjn = load i64, ptr %2, align 8, !tbaa !176
  %i.bjo = lshr i64 %i.bjn, 15
  %i.bjp = trunc i64 %i.bjo to i32
  %i.bjq = load i32, ptr %i.bdc, align 8, !tbaa !278
  %.pr.i = load i64, ptr @iseq_compile_pattern_each.rbimpl_id.114, align 8, !tbaa !36 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %nd_line.exit1788, %.lr.ph.i
  %i.bjr = call i64 @rb_intern2(ptr noundef nonnull @.str.115, i64 noundef 4) #37 ; 3 uses
  store i64 %i.bjr, ptr @iseq_compile_pattern_each.rbimpl_id.114, align 8, !tbaa !36
  %.not.i1789 = icmp eq i64 %i.bjr, 0
  br i1 %.not.i1789, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !230

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %nd_line.exit1788
  %.lcssa.i = phi i64 [ %.pr.i, %nd_line.exit1788 ], [ %i.bjr, %.lr.ph.i ]
  %i.bjs = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.bjp, i32 noundef %i.bjq, i64 noundef %.lcssa.i, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bjt = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bju = getelementptr i8, ptr %i.bjs, i64 16
  store ptr %i.bjt, ptr %i.bju, align 8, !tbaa !34
  %i.bjv = getelementptr i8, ptr %i.bjt, i64 8
  store ptr %i.bjs, ptr %i.bjv, align 8, !tbaa !35
  store ptr %i.bjs, ptr %i.bdf, align 8, !tbaa !11
  br i1 %5, label %bb.bl, label %nd_line.exit1849

bb.bl:                                            ; preds = %rbimpl_intern_const.exit
  %.val13.i1790 = load ptr, ptr %i.azc, align 8, !tbaa !20
  %i.bjw = getelementptr i8, ptr %.val13.i1790, i64 96 ; 2 uses
  %i.bjx = load ptr, ptr %i.bjw, align 8, !tbaa !37 ; 4 uses
  %i.bjy = getelementptr i8, ptr %i.bjx, i64 8
  %i.bjz = load i32, ptr %i.bjy, align 8, !tbaa !7 ; 2 uses
  %i.bka = zext i32 %i.bjz to i64
  %i.bkb = add nuw nsw i64 %i.bka, 48
  %i.bkc = getelementptr i8, ptr %i.bjx, i64 12
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !7 ; 4 uses
  %i.bke = zext i32 %i.bkd to i64                 ; 2 uses
  %i.bkf = icmp samesign ugt i64 %i.bkb, %i.bke
  br i1 %i.bkf, label %.preheader.i.i.i.i1793, label %nd_line.exit1836

.preheader.i.i.i.i1793:                           ; preds = %bb.bl
  %i.bkg = icmp ult i32 %i.bkd, 48
  br i1 %i.bkg, label %.lr.ph.i.i.i.i1799, label %._crit_edge.i.i.i.i1794

.lr.ph.i.i.i.i1799:                               ; preds = %.preheader.i.i.i.i1793, %bb.bn
  %.027.i.i.i.i1800 = phi i32 [ %i.bki, %bb.bn ], [ %i.bkd, %.preheader.i.i.i.i1793 ] ; 3 uses
  %i.bkh = icmp samesign ugt i32 %.027.i.i.i.i1800, 1073741822
  br i1 %i.bkh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i1799
  call void @rb_memerror() #38
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i1799
  %i.bki = shl nuw nsw i32 %.027.i.i.i.i1800, 1   ; 3 uses
  %i.bkj = icmp samesign ult i32 %.027.i.i.i.i1800, 24
  br i1 %i.bkj, label %.lr.ph.i.i.i.i1799, label %._crit_edge.i.i.loopexit.i.i1801, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i1801:                 ; preds = %bb.bn
  %i.bkk = zext nneg i32 %i.bki to i64
  br label %._crit_edge.i.i.i.i1794

._crit_edge.i.i.i.i1794:                          ; preds = %._crit_edge.i.i.loopexit.i.i1801, %.preheader.i.i.i.i1793
  %.0.lcssa.i.i.i.i1795 = phi i32 [ %i.bkd, %.preheader.i.i.i.i1793 ], [ %i.bki, %._crit_edge.i.i.loopexit.i.i1801 ]
  %.lcssa.i.i.i.i1796 = phi i64 [ %i.bke, %.preheader.i.i.i.i1793 ], [ %i.bkk, %._crit_edge.i.i.loopexit.i.i1801 ]
  %i.bkl = add nuw nsw i64 %.lcssa.i.i.i.i1796, 16
  %i.bkm = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bkl, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bkm, ptr %i.bjx, align 8, !tbaa !37
  store ptr %i.bkm, ptr %i.bjw, align 8, !tbaa !37
  store ptr null, ptr %i.bkm, align 8, !tbaa !37
  %i.bkn = getelementptr i8, ptr %i.bkm, i64 8
  store i32 0, ptr %i.bkn, align 8, !tbaa !7
  %i.bko = getelementptr i8, ptr %i.bkm, i64 12
  store i32 %.0.lcssa.i.i.i.i1795, ptr %i.bko, align 4, !tbaa !7
  br label %nd_line.exit1836

nd_line.exit1836:                                 ; preds = %bb.bl, %._crit_edge.i.i.i.i1794
  %i.bkp = phi i32 [ %i.bjz, %bb.bl ], [ 0, %._crit_edge.i.i.i.i1794 ] ; 2 uses
  %.022.i.i.i.i1792 = phi ptr [ %i.bjx, %bb.bl ], [ %i.bkm, %._crit_edge.i.i.i.i1794 ] ; 2 uses
  %i.bkq = getelementptr i8, ptr %.022.i.i.i.i1792, i64 16
  %i.bkr = getelementptr i8, ptr %.022.i.i.i.i1792, i64 8
  %i.bks = zext i32 %i.bkp to i64
  %i.bkt = getelementptr i8, ptr %i.bkq, i64 %i.bks ; 10 uses
  %i.bku = add i32 %i.bkp, 48
  store i32 %i.bku, ptr %i.bkr, align 8, !tbaa !7
  store i32 1, ptr %i.bkt, align 8, !tbaa !193
  %i.bkv = getelementptr i8, ptr %i.bkt, i64 8
  store ptr null, ptr %i.bkv, align 8, !tbaa !194
  %i.bkw = load ptr, ptr %i.azc, align 8, !tbaa !20
  %i.bkx = getelementptr i8, ptr %i.bkw, i64 132  ; 2 uses
  %i.bky = load i32, ptr %i.bkx, align 4, !tbaa !195 ; 2 uses
  %i.bkz = add i32 %i.bky, 1
  store i32 %i.bkz, ptr %i.bkx, align 4, !tbaa !195
  %i.bla = getelementptr i8, ptr %i.bkt, i64 24
  store i32 %i.bky, ptr %i.bla, align 8, !tbaa !94
  %i.blb = getelementptr i8, ptr %i.bkt, i64 40   ; 2 uses
  %i.blc = getelementptr i8, ptr %i.bkt, i64 44   ; 2 uses
  %i.bld = load i8, ptr %i.blc, align 4
  %i.ble = and i8 %i.bld, -16
  store i8 %i.ble, ptr %i.blc, align 4
  %i.blf = getelementptr i8, ptr %i.bkt, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.blf, align 4, !tbaa !7
  %i.blg = load i64, ptr %2, align 8, !tbaa !176
  %i.blh = lshr i64 %i.blg, 15
  %i.bli = trunc i64 %i.blh to i32
  %i.blj = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.blk = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.bli, i32 noundef %i.blj, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bll = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.blm = getelementptr i8, ptr %i.blk, i64 16
  store ptr %i.bll, ptr %i.blm, align 8, !tbaa !34
  %i.bln = getelementptr i8, ptr %i.bll, i64 8
  store ptr %i.blk, ptr %i.bln, align 8, !tbaa !35
  store ptr %i.blk, ptr %i.bdf, align 8, !tbaa !11
  %i.blo = load i64, ptr %2, align 8, !tbaa !176
  %i.blp = lshr i64 %i.blo, 15
  %i.blq = trunc i64 %i.blp to i32
  %i.blr = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bls = ptrtoint ptr %i.bkt to i64
  %i.blt = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.blq, i32 noundef %i.blr, i32 noundef 73, i32 noundef 1, i64 noundef %i.bls) ; 3 uses
  %i.blu = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.blv = getelementptr i8, ptr %i.blt, i64 16
  store ptr %i.blu, ptr %i.blv, align 8, !tbaa !34
  %i.blw = getelementptr i8, ptr %i.blu, i64 8
  store ptr %i.blt, ptr %i.blw, align 8, !tbaa !35
  store ptr %i.blt, ptr %i.bdf, align 8, !tbaa !11
  %i.blx = load i32, ptr %i.blb, align 8, !tbaa !273
  %i.bly = add i32 %i.blx, 1
  store i32 %i.bly, ptr %i.blb, align 8, !tbaa !273
  %i.blz = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.116, i64 noundef %.0.i1777) #37
  %i.bma = call i64 @rb_str_freeze(i64 noundef %i.blz) #37
  %i.bmb = load i64, ptr %2, align 8, !tbaa !176
  %i.bmc = lshr i64 %i.bmb, 15
  %i.bmd = trunc i64 %i.bmc to i32
  %i.bme = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bmf = call i64 @rb_obj_set_shareable(i64 noundef %i.bma) #37
  %i.bmg = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.bmd, i32 noundef %i.bme, i32 noundef 19, i32 noundef 1, i64 noundef %i.bmf) ; 3 uses
  %i.bmh = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bmi = getelementptr i8, ptr %i.bmg, i64 16
  store ptr %i.bmh, ptr %i.bmi, align 8, !tbaa !34
  %i.bmj = getelementptr i8, ptr %i.bmh, i64 8
  store ptr %i.bmg, ptr %i.bmj, align 8, !tbaa !35
  store ptr %i.bmg, ptr %i.bdf, align 8, !tbaa !11
  %i.bmk = load i64, ptr %2, align 8, !tbaa !176
  %i.bml = lshr i64 %i.bmk, 15
  %i.bmm = trunc i64 %i.bml to i32
  %i.bmn = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bmo = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.bmm, i32 noundef %i.bmn, i32 noundef 45, i32 noundef 1, i64 noundef %i.bhu) ; 3 uses
end_hunk_2
begin_hunk_3_@iseq_compile_pattern_each:nd_line.exit
  %i.bnu = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.bns, i32 noundef %i.bnt, i32 noundef 45, i32 noundef 1, i64 noundef %i.bic) ; 3 uses
  %i.bnv = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bnw = getelementptr i8, ptr %i.bnu, i64 16
  store ptr %i.bnv, ptr %i.bnw, align 8, !tbaa !34
  %i.bnx = getelementptr i8, ptr %i.bnv, i64 8
  store ptr %i.bnu, ptr %i.bnx, align 8, !tbaa !35
  store ptr %i.bnu, ptr %i.bdf, align 8, !tbaa !11
  %i.bny = load i64, ptr %2, align 8, !tbaa !176
  %i.bnz = lshr i64 %i.bny, 15
  %i.boa = trunc i64 %i.bnz to i32
  %i.bob = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.boc = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.boa, i32 noundef %i.bob, i32 noundef 19, i32 noundef 1, i64 noundef %.0.i1777) ; 3 uses
  %i.bod = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.boe = getelementptr i8, ptr %i.boc, i64 16
  store ptr %i.bod, ptr %i.boe, align 8, !tbaa !34
  %i.bof = getelementptr i8, ptr %i.bod, i64 8
  store ptr %i.boc, ptr %i.bof, align 8, !tbaa !35
  store ptr %i.boc, ptr %i.bdf, align 8, !tbaa !11
  %i.bog = load i64, ptr %2, align 8, !tbaa !176
  %i.boh = lshr i64 %i.bog, 15
  %i.boi = trunc i64 %i.boh to i32
  %i.boj = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bok = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.boi, i32 noundef %i.boj, i32 noundef 45, i32 noundef 1, i64 noundef %i.big) ; 3 uses
  %i.bol = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bom = getelementptr i8, ptr %i.bok, i64 16
  store ptr %i.bol, ptr %i.bom, align 8, !tbaa !34
  %i.bon = getelementptr i8, ptr %i.bol, i64 8
  store ptr %i.bok, ptr %i.bon, align 8, !tbaa !35
  store ptr %i.bok, ptr %i.bdf, align 8, !tbaa !11
  %i.boo = load i64, ptr %2, align 8, !tbaa !176
  %i.bop = lshr i64 %i.boo, 15
  %i.boq = trunc i64 %i.bop to i32
  %i.bor = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bos = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.boq, i32 noundef %i.bor, i32 noundef 46, i32 noundef 1, i64 noundef 9) ; 4 uses
  %i.bot = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bou = getelementptr i8, ptr %i.bos, i64 16
  store ptr %i.bot, ptr %i.bou, align 8, !tbaa !34
  %i.bov = getelementptr i8, ptr %i.bot, i64 8
  store ptr %i.bos, ptr %i.bov, align 8, !tbaa !35
  %i.bow = getelementptr i8, ptr %i.bkt, i64 16
  store ptr %i.bos, ptr %i.bow, align 8, !tbaa !34
  %i.box = getelementptr i8, ptr %i.bos, i64 8
  store ptr %i.bkt, ptr %i.box, align 8, !tbaa !35
  store ptr %i.bkt, ptr %i.bdf, align 8, !tbaa !11
  br label %nd_line.exit1849

nd_line.exit1849:                                 ; preds = %nd_line.exit1836, %rbimpl_intern_const.exit
  %i.boy = load i64, ptr %2, align 8, !tbaa !176
  %i.boz = lshr i64 %i.boy, 15
  %i.bpa = trunc i64 %i.boz to i32
  %i.bpb = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bpc = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bpa, i32 noundef %i.bpb, i32 noundef 74, i32 noundef 1, i64 noundef %i.beh) ; 3 uses
  %i.bpd = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bpe = getelementptr i8, ptr %i.bpc, i64 16
  store ptr %i.bpd, ptr %i.bpe, align 8, !tbaa !34
  %i.bpf = getelementptr i8, ptr %i.bpd, i64 8
  store ptr %i.bpc, ptr %i.bpf, align 8, !tbaa !35
  store ptr %i.bpc, ptr %i.bdf, align 8, !tbaa !11
  %i.bpg = load i32, ptr %i.bai, align 8, !tbaa !273
  %i.bph = add i32 %i.bpg, 1
  store i32 %i.bph, ptr %i.bai, align 8, !tbaa !273
  %i.bpi = load i64, ptr %2, align 8, !tbaa !176
  %i.bpj = lshr i64 %i.bpi, 15
  %i.bpk = trunc i64 %i.bpj to i32
  %i.bpl = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bpm = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bpk, i32 noundef %i.bpl, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bpn = load ptr, ptr %i.bhk, align 8, !tbaa !11 ; 2 uses
  %i.bpo = getelementptr i8, ptr %i.bpm, i64 16
  store ptr %i.bpn, ptr %i.bpo, align 8, !tbaa !34
  %i.bpp = getelementptr i8, ptr %i.bpn, i64 8
  store ptr %i.bpm, ptr %i.bpp, align 8, !tbaa !35
  store ptr %i.bpm, ptr %i.bhk, align 8, !tbaa !11
  %i.bpq = load i64, ptr %2, align 8, !tbaa !176
  %i.bpr = lshr i64 %i.bpq, 15
  %i.bps = trunc i64 %i.bpr to i32
  %i.bpt = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bpu = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bps, i32 noundef %i.bpt, i32 noundef 19, i32 noundef 1, i64 noundef %.0.i1777) ; 3 uses
  %i.bpv = load ptr, ptr %i.bhk, align 8, !tbaa !11 ; 2 uses
  %i.bpw = getelementptr i8, ptr %i.bpu, i64 16
  store ptr %i.bpv, ptr %i.bpw, align 8, !tbaa !34
  %i.bpx = getelementptr i8, ptr %i.bpv, i64 8
  store ptr %i.bpu, ptr %i.bpx, align 8, !tbaa !35
  store ptr %i.bpu, ptr %i.bhk, align 8, !tbaa !11
  %i.bpy = load i64, ptr %2, align 8, !tbaa !176
  %i.bpz = lshr i64 %i.bpy, 15
  %i.bqa = trunc i64 %i.bpz to i32
  %i.bqb = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bqc = load ptr, ptr %i.bgw, align 8, !tbaa !1129
  %.not1224 = icmp eq ptr %i.bqc, null
  br i1 %.not1224, label %rbimpl_intern_const.exit1855, label %bb.bo

bb.bo:                                            ; preds = %nd_line.exit1849
  %.pr.i1850 = load i64, ptr @iseq_compile_pattern_each.rbimpl_id.117, align 8, !tbaa !36 ; 2 uses
  %.not4.i1851 = icmp eq i64 %.pr.i1850, 0
  br i1 %.not4.i1851, label %.lr.ph.i1853, label %rbimpl_intern_const.exit1855

.lr.ph.i1853:                                     ; preds = %bb.bo, %.lr.ph.i1853
  %i.bqd = call i64 @rb_intern2(ptr noundef nonnull @.str.118, i64 noundef 6) #37 ; 3 uses
  store i64 %i.bqd, ptr @iseq_compile_pattern_each.rbimpl_id.117, align 8, !tbaa !36
  %.not.i1854 = icmp eq i64 %i.bqd, 0
  br i1 %.not.i1854, label %.lr.ph.i1853, label %rbimpl_intern_const.exit1855, !llvm.loop !230

rbimpl_intern_const.exit1855:                     ; preds = %.lr.ph.i1853, %bb.bo, %nd_line.exit1849
  %i.bqe = phi i64 [ 145, %nd_line.exit1849 ], [ %.pr.i1850, %bb.bo ], [ %i.bqd, %.lr.ph.i1853 ]
  %i.bqf = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.bqa, i32 noundef %i.bqb, i64 noundef %i.bqe, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bqg = load ptr, ptr %i.bhk, align 8, !tbaa !11 ; 2 uses
  %i.bqh = getelementptr i8, ptr %i.bqf, i64 16
  store ptr %i.bqg, ptr %i.bqh, align 8, !tbaa !34
  %i.bqi = getelementptr i8, ptr %i.bqg, i64 8
  store ptr %i.bqf, ptr %i.bqi, align 8, !tbaa !35
  store ptr %i.bqf, ptr %i.bhk, align 8, !tbaa !11
  %.val13.i2132 = load ptr, ptr %i.azc, align 8, !tbaa !20
  %i.bqj = getelementptr i8, ptr %.val13.i2132, i64 96 ; 2 uses
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !37 ; 4 uses
  %i.bql = getelementptr i8, ptr %i.bqk, i64 8
  %i.bqm = load i32, ptr %i.bql, align 8, !tbaa !7 ; 2 uses
  %i.bqn = zext i32 %i.bqm to i64
  %i.bqo = add nuw nsw i64 %i.bqn, 48
  %i.bqp = getelementptr i8, ptr %i.bqk, i64 12
  %i.bqq = load i32, ptr %i.bqp, align 4, !tbaa !7 ; 4 uses
  %i.bqr = zext i32 %i.bqq to i64                 ; 2 uses
  %i.bqs = icmp samesign ugt i64 %i.bqo, %i.bqr
  br i1 %i.bqs, label %.preheader.i.i.i.i2135, label %new_label_body.exit2144

.preheader.i.i.i.i2135:                           ; preds = %rbimpl_intern_const.exit1855
  %i.bqt = icmp ult i32 %i.bqq, 48
  br i1 %i.bqt, label %.lr.ph.i.i.i.i2141, label %._crit_edge.i.i.i.i2136

.lr.ph.i.i.i.i2141:                               ; preds = %.preheader.i.i.i.i2135, %bb.bq
  %.027.i.i.i.i2142 = phi i32 [ %i.bqv, %bb.bq ], [ %i.bqq, %.preheader.i.i.i.i2135 ] ; 3 uses
  %i.bqu = icmp samesign ugt i32 %.027.i.i.i.i2142, 1073741822
  br i1 %i.bqu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i2141
  call void @rb_memerror() #38
  unreachable

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i2141
  %i.bqv = shl nuw nsw i32 %.027.i.i.i.i2142, 1   ; 3 uses
  %i.bqw = icmp samesign ult i32 %.027.i.i.i.i2142, 24
  br i1 %i.bqw, label %.lr.ph.i.i.i.i2141, label %._crit_edge.i.i.loopexit.i.i2143, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i2143:                 ; preds = %bb.bq
  %i.bqx = zext nneg i32 %i.bqv to i64
  br label %._crit_edge.i.i.i.i2136

._crit_edge.i.i.i.i2136:                          ; preds = %._crit_edge.i.i.loopexit.i.i2143, %.preheader.i.i.i.i2135
  %.0.lcssa.i.i.i.i2137 = phi i32 [ %i.bqq, %.preheader.i.i.i.i2135 ], [ %i.bqv, %._crit_edge.i.i.loopexit.i.i2143 ]
  %.lcssa.i.i.i.i2138 = phi i64 [ %i.bqr, %.preheader.i.i.i.i2135 ], [ %i.bqx, %._crit_edge.i.i.loopexit.i.i2143 ]
  %i.bqy = add nuw nsw i64 %.lcssa.i.i.i.i2138, 16
  %i.bqz = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bqy, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bqz, ptr %i.bqk, align 8, !tbaa !37
  store ptr %i.bqz, ptr %i.bqj, align 8, !tbaa !37
  store ptr null, ptr %i.bqz, align 8, !tbaa !37
  %i.bra = getelementptr i8, ptr %i.bqz, i64 8
  store i32 0, ptr %i.bra, align 8, !tbaa !7
  %i.brb = getelementptr i8, ptr %i.bqz, i64 12
  store i32 %.0.lcssa.i.i.i.i2137, ptr %i.brb, align 4, !tbaa !7
  br label %new_label_body.exit2144

new_label_body.exit2144:                          ; preds = %rbimpl_intern_const.exit1855, %._crit_edge.i.i.i.i2136
  %i.brc = phi i32 [ %i.bqm, %rbimpl_intern_const.exit1855 ], [ 0, %._crit_edge.i.i.i.i2136 ] ; 2 uses
  %.022.i.i.i.i2134 = phi ptr [ %i.bqk, %rbimpl_intern_const.exit1855 ], [ %i.bqz, %._crit_edge.i.i.i.i2136 ] ; 2 uses
  %i.brd = getelementptr i8, ptr %.022.i.i.i.i2134, i64 16
  %i.bre = getelementptr i8, ptr %.022.i.i.i.i2134, i64 8
  %i.brf = zext i32 %i.brc to i64
  %i.brg = getelementptr i8, ptr %i.brd, i64 %i.brf ; 10 uses
  %i.brh = add i32 %i.brc, 48
  store i32 %i.brh, ptr %i.bre, align 8, !tbaa !7
  store i32 1, ptr %i.brg, align 8, !tbaa !193
  %i.bri = getelementptr i8, ptr %i.brg, i64 8
  store ptr null, ptr %i.bri, align 8, !tbaa !194
  %i.brj = load ptr, ptr %i.azc, align 8, !tbaa !20
  %i.brk = getelementptr i8, ptr %i.brj, i64 132  ; 2 uses
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !195 ; 2 uses
  %i.brm = add i32 %i.brl, 1
  store i32 %i.brm, ptr %i.brk, align 4, !tbaa !195
  %i.brn = getelementptr i8, ptr %i.brg, i64 24
  store i32 %i.brl, ptr %i.brn, align 8, !tbaa !94
  %i.bro = getelementptr i8, ptr %i.brg, i64 44   ; 2 uses
  %i.brp = load i8, ptr %i.bro, align 4
  %i.brq = and i8 %i.brp, -16
  store i8 %i.brq, ptr %i.bro, align 4
  %i.brr = getelementptr i8, ptr %i.brg, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.brr, align 4, !tbaa !7
  %i.brs = call fastcc i32 @iseq_compile_pattern_each(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %i.bin, ptr noundef nonnull %i.brg, ptr noundef nonnull %i.baa, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %i.bih, i1 noundef zeroext false), !inline_history !1119
  %.not.i1856 = icmp eq i32 %i.brs, 0
  br i1 %.not.i1856, label %.critedge1255, label %bb.br

bb.br:                                            ; preds = %new_label_body.exit2144
  %i.brt = load ptr, ptr %i.bhk, align 8, !tbaa !11 ; 2 uses
  %i.bru = getelementptr i8, ptr %i.brg, i64 16
  store ptr %i.brt, ptr %i.bru, align 8, !tbaa !34
  %i.brv = getelementptr i8, ptr %i.brt, i64 8
  store ptr %i.brg, ptr %i.brv, align 8, !tbaa !35
  store ptr %i.brg, ptr %i.bhk, align 8, !tbaa !11
  %i.brw = load ptr, ptr %i.bik, align 8, !tbaa !943
  %i.brx = getelementptr i8, ptr %i.brw, i64 48
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !943
  %i.brz = add nuw nsw i32 %.011862258, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.brz, %i.bhq
  br i1 %exitcond.not, label %._crit_edge, label %bb.bj, !llvm.loop !1131

._crit_edge:                                      ; preds = %bb.br
  %.pre2317 = load ptr, ptr %i.bhl, align 8, !tbaa !62 ; 2 uses
  %.not.i1859 = icmp eq ptr %.pre2317, null
  br i1 %.not.i1859, label %.critedge1255.thread, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge
  %i.bsa = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bsb = getelementptr i8, ptr %i.bsa, i64 8
  store ptr %.pre2317, ptr %i.bsb, align 8, !tbaa !35
  %i.bsc = load ptr, ptr %i.bhl, align 8, !tbaa !62
  %i.bsd = getelementptr i8, ptr %i.bsc, i64 16
  store ptr %i.bsa, ptr %i.bsd, align 8, !tbaa !34
  store ptr %i.brg, ptr %i.bdf, align 8, !tbaa !11
  br label %.critedge1255.thread

.critedge1255.thread:                             ; preds = %rb_long2int_inline.exit1774, %bb.bs, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.critedge1257

.critedge1255:                                    ; preds = %new_label_body.exit2144
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.critedge1252

nd_line.exit1866:                                 ; preds = %bb.bf
  %i.bse = load i64, ptr %2, align 8, !tbaa !176
  %i.bsf = lshr i64 %i.bse, 15
  %i.bsg = trunc i64 %i.bsf to i32
  %i.bsh = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bsi = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bsg, i32 noundef %i.bsh, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bsj = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bsk = getelementptr i8, ptr %i.bsi, i64 16
  store ptr %i.bsj, ptr %i.bsk, align 8, !tbaa !34
  %i.bsl = getelementptr i8, ptr %i.bsj, i64 8
  store ptr %i.bsi, ptr %i.bsl, align 8, !tbaa !35
  store ptr %i.bsi, ptr %i.bdf, align 8, !tbaa !11
  %i.bsm = load i64, ptr %2, align 8, !tbaa !176
  %i.bsn = lshr i64 %i.bsm, 15
  %i.bso = trunc i64 %i.bsn to i32
  %i.bsp = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bsq = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.bso, i32 noundef %i.bsp, i64 noundef 155, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.bsr = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bss = getelementptr i8, ptr %i.bsq, i64 16
  store ptr %i.bsr, ptr %i.bss, align 8, !tbaa !34
  %i.bst = getelementptr i8, ptr %i.bsr, i64 8
  store ptr %i.bsq, ptr %i.bst, align 8, !tbaa !35
  store ptr %i.bsq, ptr %i.bdf, align 8, !tbaa !11
  br i1 %5, label %bb.bt, label %nd_line.exit1869

bb.bt:                                            ; preds = %nd_line.exit1866
  %i.bsu = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.119, i64 noundef 15) #37
  %i.bsv = add i32 %7, 1
  tail call fastcc void @iseq_compile_pattern_set_general_errmsg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.bsu, i32 noundef %i.bsv)
  br label %nd_line.exit1869

nd_line.exit1869:                                 ; preds = %bb.bt, %nd_line.exit1866
  %i.bsw = load i64, ptr %2, align 8, !tbaa !176
  %i.bsx = lshr i64 %i.bsw, 15
  %i.bsy = trunc i64 %i.bsx to i32
  %i.bsz = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bta = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bsy, i32 noundef %i.bsz, i32 noundef 74, i32 noundef 1, i64 noundef %i.beh) ; 3 uses
  %i.btb = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.btc = getelementptr i8, ptr %i.bta, i64 16
  store ptr %i.btb, ptr %i.btc, align 8, !tbaa !34
  %i.btd = getelementptr i8, ptr %i.btb, i64 8
  store ptr %i.bta, ptr %i.btd, align 8, !tbaa !35
  store ptr %i.bta, ptr %i.bdf, align 8, !tbaa !11
  %i.bte = load i32, ptr %i.bai, align 8, !tbaa !273
  %i.btf = add i32 %i.bte, 1
  store i32 %i.btf, ptr %i.bai, align 8, !tbaa !273
  br label %.critedge1257

.critedge1257:                                    ; preds = %.critedge1255.thread, %bb.bg, %nd_line.exit1869
  %i.btg = load ptr, ptr %i.bgw, align 8, !tbaa !1129
  %magicptr1258 = ptrtoint ptr %i.btg to i64
  switch i64 %magicptr1258, label %nd_line.exit1882 [
    i64 0, label %nd_line.exit1917
    i64 -1, label %nd_line.exit1876
  ]

nd_line.exit1876:                                 ; preds = %.critedge1257
  %i.bth = load i64, ptr %2, align 8, !tbaa !176
  %i.bti = lshr i64 %i.bth, 15
  %i.btj = trunc i64 %i.bti to i32
  %i.btk = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.btl = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.btj, i32 noundef %i.btk, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.btm = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.btn = getelementptr i8, ptr %i.btl, i64 16
  store ptr %i.btm, ptr %i.btn, align 8, !tbaa !34
  %i.bto = getelementptr i8, ptr %i.btm, i64 8
  store ptr %i.btl, ptr %i.bto, align 8, !tbaa !35
  store ptr %i.btl, ptr %i.bdf, align 8, !tbaa !11
  %i.btp = load i64, ptr %2, align 8, !tbaa !176
  %i.btq = lshr i64 %i.btp, 15
  %i.btr = trunc i64 %i.btq to i32
  %i.bts = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.btt = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.btr, i32 noundef %i.bts, i64 noundef 155, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.btu = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.btv = getelementptr i8, ptr %i.btt, i64 16
  store ptr %i.btu, ptr %i.btv, align 8, !tbaa !34
  %i.btw = getelementptr i8, ptr %i.btu, i64 8
  store ptr %i.btt, ptr %i.btw, align 8, !tbaa !35
  store ptr %i.btt, ptr %i.bdf, align 8, !tbaa !11
  br i1 %5, label %bb.bu, label %nd_line.exit1879

bb.bu:                                            ; preds = %nd_line.exit1876
  %i.btx = call i64 @rb_fstring_new(ptr noundef nonnull @.str.120, i64 noundef 23) #37
  %i.bty = add i32 %7, 1
  call fastcc void @iseq_compile_pattern_set_general_errmsg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.btx, i32 noundef %i.bty)
  br label %nd_line.exit1879

nd_line.exit1879:                                 ; preds = %bb.bu, %nd_line.exit1876
  %i.btz = load i64, ptr %2, align 8, !tbaa !176
  %i.bua = lshr i64 %i.btz, 15
  %i.bub = trunc i64 %i.bua to i32
  %i.buc = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bud = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bub, i32 noundef %i.buc, i32 noundef 74, i32 noundef 1, i64 noundef %i.beh) ; 3 uses
  %i.bue = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.buf = getelementptr i8, ptr %i.bud, i64 16
  store ptr %i.bue, ptr %i.buf, align 8, !tbaa !34
  %i.bug = getelementptr i8, ptr %i.bue, i64 8
  store ptr %i.bud, ptr %i.bug, align 8, !tbaa !35
  store ptr %i.bud, ptr %i.bdf, align 8, !tbaa !11
  %i.buh = load i32, ptr %i.bai, align 8, !tbaa !273
  %i.bui = add i32 %i.buh, 1
  store i32 %i.bui, ptr %i.bai, align 8, !tbaa !273
  br label %nd_line.exit1917

nd_line.exit1882:                                 ; preds = %.critedge1257
  %i.buj = load i64, ptr %2, align 8, !tbaa !176
  %i.buk = lshr i64 %i.buj, 15
  %i.bul = trunc i64 %i.buk to i32
  %i.bum = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bun = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bul, i32 noundef %i.bum, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.buo = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bup = getelementptr i8, ptr %i.bun, i64 16
  store ptr %i.buo, ptr %i.bup, align 8, !tbaa !34
  %i.buq = getelementptr i8, ptr %i.buo, i64 8
  store ptr %i.bun, ptr %i.buq, align 8, !tbaa !35
  store ptr %i.bun, ptr %i.bdf, align 8, !tbaa !11
  %i.bur = load ptr, ptr %i.bgw, align 8, !tbaa !1129
  %i.bus = add i32 %7, 1
  %i.but = call fastcc i32 @iseq_compile_pattern_match(ptr noundef %0, ptr noundef %1, ptr noundef %i.bur, ptr noundef nonnull %i.baa, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %i.bus, i1 noundef zeroext false)
  %.not1228 = icmp eq i32 %i.but, 0
  br i1 %.not1228, label %.critedge1252, label %nd_line.exit1917

nd_line.exit1917:                                 ; preds = %.critedge1257, %nd_line.exit1879, %nd_line.exit1882
  %i.buu = load i64, ptr %2, align 8, !tbaa !176
  %i.buv = lshr i64 %i.buu, 15
  %i.buw = trunc i64 %i.buv to i32
  %i.bux = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.buy = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.buw, i32 noundef %i.bux, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.buz = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bva = getelementptr i8, ptr %i.buy, i64 16
  store ptr %i.buz, ptr %i.bva, align 8, !tbaa !34
  %i.bvb = getelementptr i8, ptr %i.buz, i64 8
  store ptr %i.buy, ptr %i.bvb, align 8, !tbaa !35
  store ptr %i.buy, ptr %i.bdf, align 8, !tbaa !11
  %i.bvc = load i64, ptr %2, align 8, !tbaa !176
  %i.bvd = lshr i64 %i.bvc, 15
  %i.bve = trunc i64 %i.bvd to i32
  %i.bvf = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bvg = ptrtoint ptr %3 to i64
  %i.bvh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bve, i32 noundef %i.bvf, i32 noundef 72, i32 noundef 1, i64 noundef %i.bvg) ; 3 uses
  %i.bvi = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bvj = getelementptr i8, ptr %i.bvh, i64 16
  store ptr %i.bvi, ptr %i.bvj, align 8, !tbaa !34
  %i.bvk = getelementptr i8, ptr %i.bvi, i64 8
  store ptr %i.bvh, ptr %i.bvk, align 8, !tbaa !35
  store ptr %i.bvh, ptr %i.bdf, align 8, !tbaa !11
  %i.bvl = getelementptr i8, ptr %3, i64 40       ; 2 uses
  %i.bvm = load i32, ptr %i.bvl, align 8, !tbaa !273
  %i.bvn = add i32 %i.bvm, 1
  store i32 %i.bvn, ptr %i.bvl, align 8, !tbaa !273
  %i.bvo = load i64, ptr %2, align 8, !tbaa !176
  %i.bvp = lshr i64 %i.bvo, 15
  %i.bvq = trunc i64 %i.bvp to i32
  %i.bvr = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bvs = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bvq, i32 noundef %i.bvr, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.bvt = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bvu = getelementptr i8, ptr %i.bvs, i64 16
  store ptr %i.bvt, ptr %i.bvu, align 8, !tbaa !34
  %i.bvv = getelementptr i8, ptr %i.bvt, i64 8
  store ptr %i.bvs, ptr %i.bvv, align 8, !tbaa !35
  %i.bvw = getelementptr i8, ptr %i.bbk, i64 16
  store ptr %i.bvs, ptr %i.bvw, align 8, !tbaa !34
  %i.bvx = getelementptr i8, ptr %i.bvs, i64 8
  store ptr %i.bbk, ptr %i.bvx, align 8, !tbaa !35
  store ptr %i.bbk, ptr %i.bdf, align 8, !tbaa !11
  %i.bvy = load i64, ptr %2, align 8, !tbaa !176
  %i.bvz = lshr i64 %i.bvy, 15
  %i.bwa = trunc i64 %i.bvz to i32
  %i.bwb = load i32, ptr %i.bdc, align 8, !tbaa !278
  %i.bwc = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bwa, i32 noundef %i.bwb, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.bwd = load ptr, ptr %i.bdf, align 8, !tbaa !11 ; 2 uses
  %i.bwe = getelementptr i8, ptr %i.bwc, i64 16
  store ptr %i.bwd, ptr %i.bwe, align 8, !tbaa !34
  %i.bwf = getelementptr i8, ptr %i.bwd, i64 8
  store ptr %i.bwc, ptr %i.bwf, align 8, !tbaa !35
end_hunk_3
