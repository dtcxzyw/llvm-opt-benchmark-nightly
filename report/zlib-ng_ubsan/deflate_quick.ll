Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/deflate_quick?download=true
inline.NumInlined: 19
inline.NumDeleted: 14
begin_hunk_0_@deflate_quick:bb.a
bb.ew:                                            ; preds = %bb.ev
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @82, i64 %i.fm, i64 %i.fn) #5, !nosanitize !12
  br label %bb.ex, !nosanitize !12

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  br i1 %i.ff, label %zng_memread_2.exit.i, label %bb.ey, !prof !13, !nosanitize !12

bb.ey:                                            ; preds = %bb.ex
  %i.ft = ptrtoint ptr %i.fc to i64, !nosanitize !12 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @226, i64 %i.ft) #5, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @227, i64 %i.ft) #5, !nosanitize !12
  br label %zng_memread_2.exit.i, !nosanitize !12

zng_memread_2.exit.i:                             ; preds = %bb.ey, %bb.ex
  %i.fu = load i16, ptr %i.fc, align 1, !tbaa !30
  br i1 %i.fo, label %zng_memcmp_2.exit, label %bb.ez, !prof !13, !nosanitize !12

bb.ez:                                            ; preds = %zng_memread_2.exit.i
  %i.fv = ptrtoint ptr %i.fl to i64, !nosanitize !12 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @226, i64 %i.fv) #5, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @227, i64 %i.fv) #5, !nosanitize !12
  br label %zng_memcmp_2.exit, !nosanitize !12

zng_memcmp_2.exit:                                ; preds = %zng_memread_2.exit.i, %bb.ez
  %i.fw = load i16, ptr %i.fl, align 1, !tbaa !30
  %.not119 = icmp eq i16 %i.fu, %i.fw
  br i1 %.not119, label %bb.fa, label %.thread

bb.fa:                                            ; preds = %zng_memcmp_2.exit
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 32), align 8, !tbaa !49 ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 -8
  %i.fz = load i32, ptr %i.fy, align 4, !nosanitize !12
  %i.ga = icmp eq i32 %i.fz, -1056584962, !nosanitize !12
  br i1 %i.ga, label %bb.fb, label %bb.fd, !nosanitize !12

bb.fb:                                            ; preds = %bb.fa
  %i.gb = getelementptr i8, ptr %i.fx, i64 -4
  %i.gc = load i32, ptr %i.gb, align 8, !nosanitize !12
  %i.gd = icmp eq i32 %i.gc, 1620576812, !nosanitize !12
  br i1 %i.gd, label %bb.fd, label %bb.fc, !prof !13, !nosanitize !12

bb.fc:                                            ; preds = %bb.fb
  %i.ge = ptrtoint ptr %i.fx to i64, !nosanitize !12
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @84, i64 %i.ge) #5, !nosanitize !12
  br label %bb.fd, !nosanitize !12

bb.fd:                                            ; preds = %bb.fb, %bb.fc, %bb.fa
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.gg = ptrtoint ptr %i.fc to i64, !nosanitize !12 ; 2 uses
  %i.gh = add i64 %i.gg, 2, !nosanitize !12       ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  %i.gj = xor i1 %i.ff, %i.gi
  %i.gk = icmp ult ptr %i.fc, inttoptr (i64 -2 to ptr)
  %i.gl = and i1 %i.gk, %i.gj, !nosanitize !12
  br i1 %i.gl, label %bb.ff, label %bb.fe, !prof !13, !nosanitize !12

bb.fe:                                            ; preds = %bb.fd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @85, i64 %i.gg, i64 %i.gh) #5, !nosanitize !12
  br label %bb.ff, !nosanitize !12

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gn = ptrtoint ptr %i.fl to i64, !nosanitize !12 ; 2 uses
  %i.go = add i64 %i.gn, 2, !nosanitize !12       ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  %i.gq = xor i1 %i.fo, %i.gp
  %i.gr = icmp ult ptr %i.fl, inttoptr (i64 -2 to ptr)
  %i.gs = and i1 %i.gr, %i.gq, !nosanitize !12
  br i1 %i.gs, label %bb.fh, label %bb.fg, !prof !13, !nosanitize !12

bb.fg:                                            ; preds = %bb.ff
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @86, i64 %i.gn, i64 %i.go) #5, !nosanitize !12
  br label %bb.fh, !nosanitize !12

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.gt = call i32 %i.fx(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gm) #5 ; 2 uses
  %i.gu = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.gt, i32 2), !nosanitize !12 ; 2 uses
  %i.gv = extractvalue { i32, i1 } %i.gu, 0, !nosanitize !12 ; 3 uses
  %i.gw = extractvalue { i32, i1 } %i.gu, 1, !nosanitize !12
  br i1 %i.gw, label %bb.fi, label %bb.fj, !prof !28, !nosanitize !12

bb.fi:                                            ; preds = %bb.fh
  %i.gx = zext i32 %i.gt to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @87, i64 %i.gx, i64 2) #6, !nosanitize !12
  br label %bb.fj, !nosanitize !12

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.gy = icmp ugt i32 %i.gv, 3
  br i1 %i.gy, label %bb.fk, label %.thread

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.aw, label %bb.fm, label %bb.fl, !prof !13, !nosanitize !12

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @88, i64 %.pre-phi136) #5, !nosanitize !12
  br label %bb.fm, !nosanitize !12

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  br i1 %i.bi, label %bb.fo, label %bb.fn, !prof !13, !nosanitize !12

bb.fn:                                            ; preds = %bb.fm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @89, i64 %i.bg) #5, !nosanitize !12
  br label %bb.fo, !nosanitize !12

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.gz = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.ha = icmp ugt i32 %i.gv, %i.gz
  br i1 %i.ha, label %bb.fp, label %bb.fu, !prof !45

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.aw, label %bb.fr, label %bb.fq, !prof !13, !nosanitize !12

bb.fq:                                            ; preds = %bb.fp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @90, i64 %.pre-phi136) #5, !nosanitize !12
  br label %bb.fr, !nosanitize !12

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  br i1 %i.bi, label %bb.ft, label %bb.fs, !prof !13, !nosanitize !12

bb.fs:                                            ; preds = %bb.fr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.bg) #5, !nosanitize !12
  br label %bb.ft, !nosanitize !12

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.hb = load i32, ptr %i.bf, align 4, !tbaa !42
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fo
  %.097 = phi i32 [ %i.hb, %bb.ft ], [ %i.gv, %bb.fo ] ; 2 uses
  %i.hc = icmp ugt i32 %.097, 258
  br i1 %i.hc, label %bb.fv, label %bb.fw, !prof !45

bb.fv:                                            ; preds = %bb.fu
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.1 = phi i32 [ 258, %bb.fv ], [ %.097, %bb.fu ] ; 6 uses
  %i.hd = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.1, i32 3), !nosanitize !12 ; 2 uses
  %i.he = extractvalue { i32, i1 } %i.hd, 0, !nosanitize !12 ; 3 uses
  %i.hf = extractvalue { i32, i1 } %i.hd, 1, !nosanitize !12
  br i1 %i.hf, label %bb.fx, label %bb.fy, !prof !28, !nosanitize !12

bb.fx:                                            ; preds = %bb.fw
  %i.hg = zext nneg i32 %.1 to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @92, i64 %i.hg, i64 3) #6, !nosanitize !12
  br label %bb.fy, !nosanitize !12

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.hh = trunc nuw i64 %i.eq to i32
  br i1 %i.aw, label %bb.ga, label %bb.fz, !prof !13, !nosanitize !12

bb.fz:                                            ; preds = %bb.fy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @228, i64 %.pre-phi136) #5, !nosanitize !12
  br label %bb.ga, !nosanitize !12

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  br i1 %i.cf, label %bb.gc, label %bb.gb, !prof !13, !nosanitize !12

bb.gb:                                            ; preds = %bb.ga
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @229, i64 %i.cd) #5, !nosanitize !12
  br label %bb.gc, !nosanitize !12

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.hi = load i32, ptr %i.cc, align 64, !tbaa !29 ; 8 uses
  br i1 %i.aw, label %bb.ge, label %bb.gd, !prof !13, !nosanitize !12

bb.gd:                                            ; preds = %bb.gc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @230, i64 %.pre-phi136) #5, !nosanitize !12
  br label %bb.ge, !nosanitize !12

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  br i1 %i.cj, label %bb.gg, label %bb.gf, !prof !13, !nosanitize !12

bb.gf:                                            ; preds = %bb.ge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @231, i64 %i.ch) #5, !nosanitize !12
  br label %bb.gg, !nosanitize !12

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.hj = load i64, ptr %i.cg, align 8, !tbaa !31 ; 3 uses
  %i.hk = zext i32 %i.he to i64, !nosanitize !12  ; 4 uses
  %i.hl = icmp ult i32 %i.he, 256
  br i1 %i.hl, label %bb.gi, label %bb.gh, !prof !13, !nosanitize !12

bb.gh:                                            ; preds = %bb.gg
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @233, i64 %i.hk) #5, !nosanitize !12
  br label %bb.gi, !nosanitize !12

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.hm = getelementptr inbounds nuw i8, ptr @zng_length_code, i64 %i.hk
  %i.hn = add i64 %i.hk, ptrtoint (ptr @zng_length_code to i64), !nosanitize !12 ; 2 uses
  %.not.i.i = icmp ult i64 %i.hn, ptrtoint (ptr @zng_length_code to i64), !nosanitize !12
  br i1 %.not.i.i, label %bb.gj, label %bb.gk, !prof !28, !nosanitize !12

bb.gj:                                            ; preds = %bb.gi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @234, i64 ptrtoint (ptr @zng_length_code to i64), i64 %i.hn) #5, !nosanitize !12
  br label %bb.gk, !nosanitize !12

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %i.ho = load i8, ptr %i.hm, align 1, !tbaa !30  ; 3 uses
  %i.hp = zext i8 %i.ho to i64                    ; 5 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %i.hp ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.hq = shl nuw nsw i64 %i.hp, 2                ; 3 uses
  %i.hr = add i64 %i.hq, add (i64 ptrtoint (ptr @static_ltree to i64), i64 1028), !nosanitize !12 ; 3 uses
  %.not83.i.i = icmp ult i64 %i.hr, ptrtoint (ptr @static_ltree to i64), !nosanitize !12 ; 2 uses
  br i1 %.not83.i.i, label %bb.gl, label %.critedge.i.i, !prof !28, !nosanitize !12

bb.gl:                                            ; preds = %bb.gk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @235, i64 ptrtoint (ptr @static_ltree to i64), i64 %i.hr) #5, !nosanitize !12
  br label %.critedge.i.i, !nosanitize !12

.critedge.i.i:                                    ; preds = %bb.gk, %bb.gl
  %i.hs = load i16, ptr %3, align 4, !tbaa !30
  %i.ht = zext i16 %i.hs to i64                   ; 2 uses
  br i1 %.not83.i.i, label %bb.gm, label %.critedge97.i.i, !prof !28, !nosanitize !12

bb.gm:                                            ; preds = %.critedge.i.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @236, i64 ptrtoint (ptr @static_ltree to i64), i64 %i.hr) #5, !nosanitize !12
  br label %.critedge97.i.i, !nosanitize !12

.critedge97.i.i:                                  ; preds = %bb.gm, %.critedge.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 1030
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !30 ; 3 uses
  %i.hw = zext i16 %i.hv to i32                   ; 2 uses
  %i.hx = icmp ult i8 %i.ho, 29
  br i1 %i.hx, label %bb.go, label %bb.gn, !prof !13, !nosanitize !12

bb.gn:                                            ; preds = %.critedge97.i.i
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @239, i64 %i.hp) #5, !nosanitize !12
  br label %bb.go, !nosanitize !12

bb.go:                                            ; preds = %bb.gn, %.critedge97.i.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %i.hp
  %i.hz = add i64 %i.hq, ptrtoint (ptr @extra_lbits to i64), !nosanitize !12 ; 2 uses
  %.not84.i.i = icmp ult i64 %i.hz, ptrtoint (ptr @extra_lbits to i64), !nosanitize !12
  br i1 %.not84.i.i, label %bb.gp, label %bb.gq, !prof !28, !nosanitize !12

bb.gp:                                            ; preds = %bb.go
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @240, i64 ptrtoint (ptr @extra_lbits to i64), i64 %i.hz) #5, !nosanitize !12
  br label %bb.gq, !nosanitize !12

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !50 ; 2 uses
  %i.ib = add i8 %i.ho, -28
  %.not85.i.i = icmp ult i8 %i.ib, -20
  br i1 %.not85.i.i, label %bb.gz, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %i.hp
  %i.id = add i64 %i.hq, ptrtoint (ptr @base_length to i64), !nosanitize !12 ; 2 uses
  %.not86.i.i = icmp ult i64 %i.id, ptrtoint (ptr @base_length to i64), !nosanitize !12
  br i1 %.not86.i.i, label %bb.gs, label %bb.gt, !prof !28, !nosanitize !12

bb.gs:                                            ; preds = %bb.gr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @241, i64 ptrtoint (ptr @base_length to i64), i64 %i.id) #5, !nosanitize !12
  br label %bb.gt, !nosanitize !12

bb.gt:                                            ; preds = %bb.gr, %bb.gs
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !50 ; 2 uses
  %i.if = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 range(i32 -3, 256) %i.he, i32 %i.ie), !nosanitize !12 ; 2 uses
  %i.ig = extractvalue { i32, i1 } %i.if, 0, !nosanitize !12
  %i.ih = extractvalue { i32, i1 } %i.if, 1, !nosanitize !12
  br i1 %i.ih, label %bb.gu, label %bb.gv, !prof !28, !nosanitize !12

bb.gu:                                            ; preds = %bb.gt
  %i.ii = zext i32 %i.ie to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @242, i64 %i.hk, i64 %i.ii) #6, !nosanitize !12
  br label %bb.gv, !nosanitize !12

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.ij = zext i32 %i.ig to i64                   ; 3 uses
  %i.ik = zext i16 %i.hv to i64                   ; 4 uses
  %i.il = icmp ult i16 %i.hv, 64
  %i.im = sub nuw nsw i64 63, %i.ik
  %i.in = lshr i64 %i.ij, %i.im
  %i.io = icmp samesign ult i64 %i.in, 2
  %i.ip = select i1 %i.il, i1 %i.io, i1 false
  br i1 %i.ip, label %bb.gx, label %bb.gw, !prof !13, !nosanitize !12

bb.gw:                                            ; preds = %bb.gv
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @243, i64 %i.ij, i64 %i.ik) #6, !nosanitize !12
  br label %bb.gx, !nosanitize !12

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.iq = shl i64 %i.ij, %i.ik
  %i.ir = or i64 %i.iq, %i.ht                     ; 2 uses
  %i.is = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.hw, i32 %i.ia), !nosanitize !12 ; 2 uses
  %i.it = extractvalue { i32, i1 } %i.is, 0, !nosanitize !12 ; 2 uses
  %i.iu = extractvalue { i32, i1 } %i.is, 1, !nosanitize !12
  br i1 %i.iu, label %bb.gy, label %bb.gz, !prof !28, !nosanitize !12

bb.gy:                                            ; preds = %bb.gx
  %i.iv = zext i32 %i.ia to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @244, i64 %i.ik, i64 %i.iv) #6, !nosanitize !12
  br label %bb.gz, !nosanitize !12

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %bb.gq
  %.067.i.i = phi i64 [ %i.ht, %bb.gq ], [ %i.ir, %bb.gy ], [ %i.ir, %bb.gx ]
  %.066.i.i = phi i32 [ %i.hw, %bb.gq ], [ %i.it, %bb.gy ], [ %i.it, %bb.gx ] ; 3 uses
  %i.iw = add i32 %i.hh, -1                       ; 4 uses
  %i.ix = icmp samesign ult i64 %i.eq, 257
  br i1 %i.ix, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.iy = zext nneg i32 %i.iw to i64, !nosanitize !12 ; 3 uses
  %i.iz = add i64 %i.iy, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !12 ; 2 uses
  %.not89.i.i = icmp ult i64 %i.iz, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !12
  br i1 %.not89.i.i, label %bb.hb, label %bb.hg, !prof !28, !nosanitize !12

bb.hb:                                            ; preds = %bb.ha
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @246, i64 ptrtoint (ptr @zng_dist_code to i64), i64 %i.iz) #5, !nosanitize !12
  br label %bb.hg, !nosanitize !12

bb.hc:                                            ; preds = %bb.gz
  %i.ja = lshr i32 %i.iw, 7
  %i.jb = add nuw nsw i32 %i.ja, 256
  %i.jc = zext nneg i32 %i.jb to i64, !nosanitize !12 ; 4 uses
  %i.jd = icmp samesign ult i64 %i.eq, 32769
  br i1 %i.jd, label %bb.he, label %bb.hd, !prof !13, !nosanitize !12

bb.hd:                                            ; preds = %bb.hc
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @247, i64 %i.jc) #5, !nosanitize !12
  br label %bb.he, !nosanitize !12

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.je = add i64 %i.jc, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !12 ; 2 uses
  %.not87.i.i = icmp ult i64 %i.je, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !12
  br i1 %.not87.i.i, label %bb.hf, label %bb.hg, !prof !28, !nosanitize !12

bb.hf:                                            ; preds = %bb.he
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @248, i64 ptrtoint (ptr @zng_dist_code to i64), i64 %i.je) #5, !nosanitize !12
  br label %bb.hg, !nosanitize !12

bb.hg:                                            ; preds = %bb.he, %bb.hf, %bb.ha, %bb.hb
  %.pn = phi i64 [ %i.iy, %bb.ha ], [ %i.iy, %bb.hb ], [ %i.jc, %bb.hf ], [ %i.jc, %bb.he ]
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %.pn
  %.in.i.i = load i8, ptr %.in.in.i.i, align 1, !tbaa !30 ; 3 uses
  %i.jf = zext i8 %.in.i.i to i64                 ; 6 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %i.jf ; 2 uses
  %i.jh = shl nuw nsw i64 %i.jf, 2                ; 3 uses
  %i.ji = add i64 %i.jh, ptrtoint (ptr @static_dtree to i64), !nosanitize !12 ; 3 uses
  %.not91.i.i = icmp ult i64 %i.ji, ptrtoint (ptr @static_dtree to i64), !nosanitize !12 ; 2 uses
  br i1 %.not91.i.i, label %bb.hh, label %.critedge99.i.i, !prof !28, !nosanitize !12

bb.hh:                                            ; preds = %bb.hg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @249, i64 ptrtoint (ptr @static_dtree to i64), i64 %i.ji) #5, !nosanitize !12
  br label %.critedge99.i.i, !nosanitize !12

.critedge99.i.i:                                  ; preds = %bb.hg, %bb.hh
  %i.jj = load i16, ptr %i.jg, align 4, !tbaa !30
  %i.jk = zext i16 %i.jj to i64                   ; 3 uses
  %i.jl = zext i32 %.066.i.i to i64               ; 4 uses
  %i.jm = icmp ult i32 %.066.i.i, 64
  %i.jn = sub nuw nsw i64 63, %i.jl
  %i.jo = lshr i64 %i.jk, %i.jn
  %i.jp = icmp samesign ult i64 %i.jo, 2
  %i.jq = select i1 %i.jm, i1 %i.jp, i1 false
  br i1 %i.jq, label %bb.hj, label %bb.hi, !prof !13, !nosanitize !12

bb.hi:                                            ; preds = %.critedge99.i.i
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @250, i64 %i.jk, i64 %i.jl) #6, !nosanitize !12
  br label %bb.hj, !nosanitize !12

bb.hj:                                            ; preds = %bb.hi, %.critedge99.i.i
  %i.jr = shl i64 %i.jk, %i.jl
  %i.js = or i64 %i.jr, %.067.i.i                 ; 2 uses
  br i1 %.not91.i.i, label %bb.hk, label %.critedge101.i.i, !prof !28, !nosanitize !12

bb.hk:                                            ; preds = %bb.hj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @251, i64 ptrtoint (ptr @static_dtree to i64), i64 %i.ji) #5, !nosanitize !12
  br label %.critedge101.i.i, !nosanitize !12

.critedge101.i.i:                                 ; preds = %bb.hk, %bb.hj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !30 ; 2 uses
  %i.jv = zext i16 %i.ju to i32
  %i.jw = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.066.i.i, i32 %i.jv), !nosanitize !12 ; 2 uses
  %i.jx = extractvalue { i32, i1 } %i.jw, 0, !nosanitize !12 ; 4 uses
  %i.jy = extractvalue { i32, i1 } %i.jw, 1, !nosanitize !12
  br i1 %i.jy, label %bb.hl, label %bb.hm, !prof !28, !nosanitize !12

bb.hl:                                            ; preds = %.critedge101.i.i
  %i.jz = zext i16 %i.ju to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @252, i64 %i.jl, i64 %i.jz) #6, !nosanitize !12
  br label %bb.hm, !nosanitize !12

bb.hm:                                            ; preds = %bb.hl, %.critedge101.i.i
  %i.ka = icmp ult i8 %.in.i.i, 30                ; 2 uses
  br i1 %i.ka, label %bb.ho, label %bb.hn, !prof !13, !nosanitize !12

bb.hn:                                            ; preds = %bb.hm
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @254, i64 %i.jf) #5, !nosanitize !12
  br label %bb.ho, !nosanitize !12

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %i.jf
  %i.kc = add i64 %i.jh, ptrtoint (ptr @extra_dbits to i64), !nosanitize !12 ; 2 uses
  %.not92.i.i = icmp ult i64 %i.kc, ptrtoint (ptr @extra_dbits to i64), !nosanitize !12
  br i1 %.not92.i.i, label %bb.hp, label %bb.hq, !prof !28, !nosanitize !12

bb.hp:                                            ; preds = %bb.ho
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @255, i64 ptrtoint (ptr @extra_dbits to i64), i64 %i.kc) #5, !nosanitize !12
  br label %bb.hq, !nosanitize !12

bb.hq:                                            ; preds = %bb.ho, %bb.hp
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !50 ; 2 uses
  %.not93.i.i = icmp ult i8 %.in.i.i, 4
  br i1 %.not93.i.i, label %bb.ib, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.ka, label %bb.ht, label %bb.hs, !prof !13, !nosanitize !12

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @256, i64 %i.jf) #5, !nosanitize !12
  br label %bb.ht, !nosanitize !12

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %i.jf
  %i.kf = add i64 %i.jh, ptrtoint (ptr @base_dist to i64), !nosanitize !12 ; 2 uses
  %.not94.i.i = icmp ult i64 %i.kf, ptrtoint (ptr @base_dist to i64), !nosanitize !12
  br i1 %.not94.i.i, label %bb.hu, label %bb.hv, !prof !28, !nosanitize !12

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @257, i64 ptrtoint (ptr @base_dist to i64), i64 %i.kf) #5, !nosanitize !12
  br label %bb.hv, !nosanitize !12

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !50 ; 2 uses
  %i.kh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.iw, i32 %i.kg), !nosanitize !12 ; 2 uses
  %i.ki = extractvalue { i32, i1 } %i.kh, 0, !nosanitize !12
  %i.kj = extractvalue { i32, i1 } %i.kh, 1, !nosanitize !12
  br i1 %i.kj, label %bb.hw, label %bb.hx, !prof !28, !nosanitize !12

bb.hw:                                            ; preds = %bb.hv
  %i.kk = zext i32 %i.iw to i64, !nosanitize !12
  %i.kl = zext i32 %i.kg to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @258, i64 %i.kk, i64 %i.kl) #6, !nosanitize !12
  br label %bb.hx, !nosanitize !12

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.km = zext i32 %i.ki to i64                   ; 3 uses
  %i.kn = zext i32 %i.jx to i64                   ; 4 uses
  %i.ko = icmp ult i32 %i.jx, 64
  %i.kp = sub nuw nsw i64 63, %i.kn
  %i.kq = lshr i64 %i.km, %i.kp
  %i.kr = icmp samesign ult i64 %i.kq, 2
  %i.ks = select i1 %i.ko, i1 %i.kr, i1 false
  br i1 %i.ks, label %bb.hz, label %bb.hy, !prof !13, !nosanitize !12

bb.hy:                                            ; preds = %bb.hx
end_hunk_0
