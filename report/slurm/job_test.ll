Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_test?download=true
inline.NumInlined: 60
inline.NumDeleted: 26
begin_hunk_0_@_allocate_sc:bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 552 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 8
  %.not643 = icmp eq i16 %i.iy, 0
  br i1 %.not643, label %._crit_edge630, label %.lr.ph629

.lr.ph629:                                        ; preds = %.preheader
  %i.iz = icmp ne i16 %.1339, 1
  %i.ja = icmp ule i16 %i.e, %i.fg
  %or.cond.i487.not646 = or i1 %i.iz, %i.ja
  %brmerge = select i1 %.0326, i1 true, i1 %or.cond.i487.not646
  br label %bb.br

bb.be:                                            ; preds = %.lr.ph620, %.critedge
  %indvars.iv712 = phi i64 [ %i.iw, %.lr.ph620 ], [ %indvars.iv.next713, %.critedge ] ; 5 uses
  %.0617 = phi i32 [ %i.if, %.lr.ph620 ], [ %.3514, %.critedge ] ; 4 uses
  %.4521616 = phi i16 [ %.3520, %.lr.ph620 ], [ %.7524, %.critedge ] ; 4 uses
  %.0525615 = phi i16 [ 0, %.lr.ph620 ], [ %.3528, %.critedge ] ; 4 uses
  %i.jb = trunc nuw nsw i64 %indvars.iv712 to i32
  %i.jc = call i32 @slurm_bit_test(ptr noundef %6, i64 noundef %indvars.iv712) #9
  %.not435 = icmp eq i32 %i.jc, 0
  br i1 %.not435, label %.critedge, label %.preheader553

.preheader553:                                    ; preds = %bb.be
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv712 ; 2 uses
  br i1 %.not641, label %.critedge, label %.lr.ph590

.lr.ph590:                                        ; preds = %.preheader553
  %i.je = mul nuw nsw i32 %i.jb, %i.bc
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv712 ; 4 uses
  %.promoted = load i16, ptr %i.jd, align 2       ; 2 uses
  %i.jg = zext nneg i32 %i.je to i64              ; 2 uses
  br i1 %.0326, label %.lr.ph590.split.us, label %.lr.ph590.split

.lr.ph590.split.us:                               ; preds = %.lr.ph590, %bb.bj
  %indvars.iv705 = phi i64 [ %indvars.iv.next706, %bb.bj ], [ 0, %.lr.ph590 ] ; 2 uses
  %i.jh = phi i16 [ %i.jr, %bb.bj ], [ %.promoted, %.lr.ph590 ] ; 4 uses
  %.1512588.us = phi i32 [ %.2513.us, %bb.bj ], [ %.0617, %.lr.ph590 ] ; 6 uses
  %.5522587.us = phi i16 [ %.6523.us, %bb.bj ], [ %.4521616, %.lr.ph590 ] ; 6 uses
  %.1526586.us = phi i16 [ %.2527.us, %bb.bj ], [ %.0525615, %.lr.ph590 ] ; 4 uses
  %.not436.us = icmp eq i16 %i.jh, 0
  br i1 %.not436.us, label %.critedge.sink.split, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph590.split.us
  %i.ji = add nuw nsw i64 %indvars.iv705, %i.jg   ; 3 uses
  %i.jj = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.ji) #9
  %.not437.us = icmp eq i32 %i.jj, 0
  br i1 %.not437.us, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jk = load i16, ptr %i.jf, align 2            ; 3 uses
  %.not.i.us = icmp eq i16 %i.jk, 0
  br i1 %.not.i.us, label %_count_used_cpus.exit.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not15.i.us = icmp ult i16 %i.jk, %.0329
  br i1 %.not15.i.us, label %bb.bi, label %_check_ntasks_per_sock.exit.thread.us

_check_ntasks_per_sock.exit.thread.us:            ; preds = %bb.bh
  %i.jl = and i64 %i.ji, 65535
  call void @bit_clear(ptr noundef %1, i64 noundef %i.jl) #9
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jm = add i16 %i.jk, %i.fg
  br label %_count_used_cpus.exit.us

_count_used_cpus.exit.us:                         ; preds = %bb.bi, %bb.bg
  %storemerge.i.us = phi i16 [ %i.jm, %bb.bi ], [ %i.fg, %bb.bg ] ; 2 uses
  store i16 %storemerge.i.us, ptr %i.jf, align 2
  %i.jn = add i16 %i.jh, -1                       ; 2 uses
  %.not.i478.us = icmp ult i16 %.5522587.us, %i.fg
  %.not28.i.us = icmp sgt i32 %.1512588.us, %i.fh
  %i.jo = sub nsw i32 %.1512588.us, %i.fh
  %storemerge.i480.us = select i1 %.not28.i.us, i32 %i.jo, i32 %i.if
  %.5522.pn.us = call i16 @llvm.umin.i16(i16 %.5522587.us, i16 %i.fg)
  %.10.us = call i16 @llvm.usub.sat.i16(i16 %.5522587.us, i16 %i.fg) ; 2 uses
  %.6.us = select i1 %.not.i478.us, i32 %.1512588.us, i32 %storemerge.i480.us ; 2 uses
  %.8533.us = add i16 %.5522.pn.us, %.1526586.us  ; 2 uses
  %i.jp = load ptr, ptr %i.a, align 8
  call void @bit_set(ptr noundef %i.jp, i64 noundef %i.ji) #9
  %i.jq = icmp ult i16 %.1328, %storemerge.i.us
  br i1 %i.jq, label %.critedge.sink.split, label %bb.bj

bb.bj:                                            ; preds = %_count_used_cpus.exit.us, %_check_ntasks_per_sock.exit.thread.us, %bb.bf
  %i.jr = phi i16 [ %i.jh, %bb.bf ], [ %i.jh, %_check_ntasks_per_sock.exit.thread.us ], [ %i.jn, %_count_used_cpus.exit.us ] ; 2 uses
  %.2527.us = phi i16 [ %.1526586.us, %bb.bf ], [ %.1526586.us, %_check_ntasks_per_sock.exit.thread.us ], [ %.8533.us, %_count_used_cpus.exit.us ] ; 2 uses
  %.6523.us = phi i16 [ %.5522587.us, %bb.bf ], [ %.5522587.us, %_check_ntasks_per_sock.exit.thread.us ], [ %.10.us, %_count_used_cpus.exit.us ] ; 2 uses
  %.2513.us = phi i32 [ %.1512588.us, %bb.bf ], [ %.1512588.us, %_check_ntasks_per_sock.exit.thread.us ], [ %.6.us, %_count_used_cpus.exit.us ] ; 2 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next706, %wide.trip.count710
  br i1 %exitcond711.not, label %.critedge.sink.split, label %.lr.ph590.split.us, !llvm.loop !70

.lr.ph590.split:                                  ; preds = %.lr.ph590, %bb.bq
  %indvars.iv698 = phi i64 [ %indvars.iv.next699, %bb.bq ], [ 0, %.lr.ph590 ] ; 2 uses
  %i.js = phi i16 [ %i.kf, %bb.bq ], [ %.promoted, %.lr.ph590 ] ; 4 uses
  %.1512588 = phi i32 [ %.2513, %bb.bq ], [ %.0617, %.lr.ph590 ] ; 7 uses
  %.5522587 = phi i16 [ %.6523, %bb.bq ], [ %.4521616, %.lr.ph590 ] ; 6 uses
  %.1526586 = phi i16 [ %.2527, %bb.bq ], [ %.0525615, %.lr.ph590 ] ; 4 uses
  %.not436 = icmp eq i16 %i.js, 0
  br i1 %.not436, label %.critedge.sink.split, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph590.split
  %i.jt = add nuw nsw i64 %indvars.iv698, %i.jg   ; 3 uses
  %i.ju = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.jt) #9
  %.not437 = icmp eq i32 %i.ju, 0
  br i1 %.not437, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jv = load i16, ptr %i.jf, align 2            ; 3 uses
  %.not.i = icmp eq i16 %i.jv, 0
  br i1 %.not.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.not15.i = icmp ult i16 %i.jv, %.0329
  br i1 %.not15.i, label %bb.bn, label %_check_ntasks_per_sock.exit.thread

_check_ntasks_per_sock.exit.thread:               ; preds = %bb.bm
  %i.jw = and i64 %i.jt, 65535
  call void @bit_clear(ptr noundef %1, i64 noundef %i.jw) #9
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.jx = add i16 %i.jv, %i.fg
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.jy = phi i16 [ %i.jx, %bb.bn ], [ %i.fg, %bb.bl ] ; 2 uses
  store i16 %i.jy, ptr %i.jf, align 2
  %i.jz = add i16 %i.js, -1                       ; 2 uses
  %.not.i478 = icmp ult i16 %.5522587, %i.fg
  br i1 %.not.i478, label %_count_used_cpus.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %..i = call i32 @llvm.smin.i32(i32 %.1512588, i32 %i.fh)
  %.0.i479 = select i1 %or.cond.i, i32 %..i, i32 %i.fh ; 3 uses
  %i.ka = trunc i32 %.0.i479 to i16               ; 2 uses
  %i.kb = sub i16 %.5522587, %i.ka
  %.not28.i = icmp sgt i32 %.1512588, %.0.i479
  %i.kc = sub nsw i32 %.1512588, %.0.i479
  %storemerge.i480 = select i1 %.not28.i, i32 %i.kc, i32 %i.if
  br label %_count_used_cpus.exit

_count_used_cpus.exit:                            ; preds = %bb.bo, %bb.bp
  %.5522.pn = phi i16 [ %i.ka, %bb.bp ], [ %.5522587, %bb.bo ]
  %.10 = phi i16 [ %i.kb, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  %.6 = phi i32 [ %storemerge.i480, %bb.bp ], [ %.1512588, %bb.bo ] ; 2 uses
  %.8533 = add i16 %.5522.pn, %.1526586           ; 2 uses
  %i.kd = load ptr, ptr %i.a, align 8
  call void @bit_set(ptr noundef %i.kd, i64 noundef %i.jt) #9
  %i.ke = icmp ult i16 %.1328, %i.jy
  br i1 %i.ke, label %.critedge.sink.split, label %bb.bq

bb.bq:                                            ; preds = %_check_ntasks_per_sock.exit.thread, %_count_used_cpus.exit, %bb.bk
  %i.kf = phi i16 [ %i.js, %bb.bk ], [ %i.js, %_check_ntasks_per_sock.exit.thread ], [ %i.jz, %_count_used_cpus.exit ] ; 2 uses
  %.2527 = phi i16 [ %.1526586, %bb.bk ], [ %.1526586, %_check_ntasks_per_sock.exit.thread ], [ %.8533, %_count_used_cpus.exit ] ; 2 uses
  %.6523 = phi i16 [ %.5522587, %bb.bk ], [ %.5522587, %_check_ntasks_per_sock.exit.thread ], [ %.10, %_count_used_cpus.exit ] ; 2 uses
  %.2513 = phi i32 [ %.1512588, %bb.bk ], [ %.1512588, %_check_ntasks_per_sock.exit.thread ], [ %.6, %_count_used_cpus.exit ] ; 2 uses
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond704.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count703
  br i1 %exitcond704.not, label %.critedge.sink.split, label %.lr.ph590.split, !llvm.loop !70

.critedge.sink.split:                             ; preds = %bb.bq, %_count_used_cpus.exit, %.lr.ph590.split, %bb.bj, %_count_used_cpus.exit.us, %.lr.ph590.split.us
  %.sink = phi i16 [ 0, %.lr.ph590.split.us ], [ %i.jn, %_count_used_cpus.exit.us ], [ %i.jr, %bb.bj ], [ %i.jz, %_count_used_cpus.exit ], [ %i.kf, %bb.bq ], [ 0, %.lr.ph590.split ]
  %.3528.ph = phi i16 [ %.1526586.us, %.lr.ph590.split.us ], [ %.8533.us, %_count_used_cpus.exit.us ], [ %.2527.us, %bb.bj ], [ %.8533, %_count_used_cpus.exit ], [ %.2527, %bb.bq ], [ %.1526586, %.lr.ph590.split ]
  %.7524.ph = phi i16 [ %.5522587.us, %.lr.ph590.split.us ], [ %.10.us, %_count_used_cpus.exit.us ], [ %.6523.us, %bb.bj ], [ %.10, %_count_used_cpus.exit ], [ %.6523, %bb.bq ], [ %.5522587, %.lr.ph590.split ]
  %.3514.ph = phi i32 [ %.1512588.us, %.lr.ph590.split.us ], [ %.6.us, %_count_used_cpus.exit.us ], [ %.2513.us, %bb.bj ], [ %.6, %_count_used_cpus.exit ], [ %.2513, %bb.bq ], [ %.1512588, %.lr.ph590.split ]
  store i16 %.sink, ptr %i.jd, align 2
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.preheader553, %bb.be
  %.3528 = phi i16 [ %.0525615, %bb.be ], [ %.0525615, %.preheader553 ], [ %.3528.ph, %.critedge.sink.split ] ; 2 uses
  %.7524 = phi i16 [ %.4521616, %bb.be ], [ %.4521616, %.preheader553 ], [ %.7524.ph, %.critedge.sink.split ] ; 3 uses
  %.3514 = phi i32 [ %.0617, %bb.be ], [ %.0617, %.preheader553 ], [ %.3514.ph, %.critedge.sink.split ] ; 2 uses
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %i.kg = icmp samesign ult i64 %indvars.iv.next713, %i.p
  %i.kh = icmp ne i16 %.7524, 0
  %i.ki = select i1 %i.kg, i1 %i.kh, i1 false
  br i1 %i.ki, label %bb.be, label %.preheader, !llvm.loop !71

bb.br:                                            ; preds = %.lr.ph629, %_count_used_cpus.exit492
  %indvars.iv715 = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next716, %_count_used_cpus.exit492 ] ; 6 uses
  %.4515626 = phi i32 [ %.0.lcssa, %.lr.ph629 ], [ %.5516, %_count_used_cpus.exit492 ] ; 8 uses
  %.8625 = phi i16 [ %.4521.lcssa, %.lr.ph629 ], [ %.9, %_count_used_cpus.exit492 ] ; 8 uses
  %.4529624 = phi i16 [ %.0525.lcssa, %.lr.ph629 ], [ %.5530, %_count_used_cpus.exit492 ] ; 6 uses
  %i.kj = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %indvars.iv715) #9
  %.not432 = icmp eq i32 %i.kj, 0
  br i1 %.not432, label %_count_used_cpus.exit492, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kk = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not433 = icmp eq ptr %i.kk, null
  br i1 %.not433, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kl = call i32 @slurm_bit_test(ptr noundef nonnull %i.kk, i64 noundef %indvars.iv715) #9
  %.not434 = icmp eq i32 %i.kl, 0
  br i1 %.not434, label %bb.bu, label %_count_used_cpus.exit492

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.km = trunc nuw nsw i64 %indvars.iv715 to i32
  %i.kn = udiv i32 %i.km, %i.bc
  %i.ko = zext nneg i32 %i.kn to i64              ; 2 uses
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ko ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 2            ; 2 uses
  %i.kr = icmp ne i16 %i.kq, 0
  %i.ks = icmp ne i16 %.8625, 0
  %or.cond10 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond10, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ko ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 2            ; 3 uses
  %.not.i481 = icmp eq i16 %i.ku, 0
  br i1 %.not.i481, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not15.i482 = icmp ult i16 %i.ku, %.0329
  br i1 %.not15.i482, label %bb.bx, label %_check_ntasks_per_sock.exit485.thread

_check_ntasks_per_sock.exit485.thread:            ; preds = %bb.bw
  call void @bit_clear(ptr noundef %1, i64 noundef %indvars.iv715) #9
  br label %_count_used_cpus.exit492

bb.bx:                                            ; preds = %bb.bw
  %i.kv = add i16 %i.ku, %i.fg
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %storemerge.i484 = phi i16 [ %i.kv, %bb.bx ], [ %i.fg, %bb.bv ]
  store i16 %storemerge.i484, ptr %i.kt, align 2
  %i.kw = add i16 %i.kq, -1
  store i16 %i.kw, ptr %i.kp, align 2
  %.not.i486 = icmp ult i16 %.8625, %i.fg
  br i1 %.not.i486, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %..i491 = call i32 @llvm.smin.i32(i32 %.4515626, i32 %i.fh)
  %.0.i488 = select i1 %brmerge, i32 %i.fh, i32 %..i491 ; 3 uses
  %i.kx = trunc i32 %.0.i488 to i16               ; 2 uses
  %i.ky = sub i16 %.8625, %i.kx
  %i.kz = add i16 %.4529624, %i.kx
  %.not28.i489 = icmp sgt i32 %.4515626, %.0.i488
  %i.la = sub nsw i32 %.4515626, %.0.i488
  %storemerge.i490 = select i1 %.not28.i489, i32 %i.la, i32 %i.if
  br label %_count_used_cpus.exit492

bb.ca:                                            ; preds = %bb.by
  %i.lb = add i16 %.8625, %.4529624
  br label %_count_used_cpus.exit492

bb.cb:                                            ; preds = %bb.bu
  call void @bit_clear(ptr noundef %1, i64 noundef %indvars.iv715) #9
  br label %_count_used_cpus.exit492

_count_used_cpus.exit492:                         ; preds = %bb.ca, %bb.bz, %_check_ntasks_per_sock.exit485.thread, %bb.cb, %bb.br, %bb.bt
  %.5530 = phi i16 [ %.4529624, %bb.br ], [ %.4529624, %_check_ntasks_per_sock.exit485.thread ], [ %.4529624, %bb.bt ], [ %.4529624, %bb.cb ], [ %i.lb, %bb.ca ], [ %i.kz, %bb.bz ] ; 2 uses
  %.9 = phi i16 [ %.8625, %bb.br ], [ %.8625, %_check_ntasks_per_sock.exit485.thread ], [ %.8625, %bb.bt ], [ %.8625, %bb.cb ], [ 0, %bb.ca ], [ %i.ky, %bb.bz ]
  %.5516 = phi i32 [ %.4515626, %bb.br ], [ %.4515626, %_check_ntasks_per_sock.exit485.thread ], [ %.4515626, %bb.bt ], [ %.4515626, %bb.cb ], [ %.4515626, %bb.ca ], [ %storemerge.i490, %bb.bz ]
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %i.lc = load i16, ptr %i.ix, align 8
  %i.ld = zext i16 %i.lc to i64
  %i.le = icmp samesign ult i64 %indvars.iv.next716, %i.ld
  br i1 %i.le, label %bb.br, label %._crit_edge630, !llvm.loop !72

._crit_edge630:                                   ; preds = %_count_used_cpus.exit492, %.preheader
  %.4529.lcssa = phi i16 [ %.0525.lcssa, %.preheader ], [ %.5530, %_count_used_cpus.exit492 ]
  %i.lf = icmp eq i16 %.4, 0
  br i1 %i.lf, label %.thread547, label %bb.cc

.thread547:                                       ; preds = %bb.aj, %bb.e, %bb.d, %bb.ad, %bb.z, %bb.y, %bb.ai, %bb.aw, %bb.av, %._crit_edge569, %bb.ac, %bb.aa, %bb.x, %._crit_edge630
  %.1552 = phi i16 [ %.0318, %._crit_edge630 ], [ -1, %bb.e ], [ %i.dp, %bb.ad ], [ -1, %bb.z ], [ -1, %bb.y ], [ %.0318, %bb.ai ], [ %.0318, %bb.aw ], [ %.0318, %bb.av ], [ %.0318, %._crit_edge569 ], [ %i.dp, %bb.ac ], [ -1, %bb.aa ], [ -1, %bb.x ], [ -1, %bb.d ], [ %.0318, %bb.aj ]
  call void @bit_clear_all(ptr noundef %1) #9
  br label %bb.cc

bb.cc:                                            ; preds = %.thread547, %._crit_edge630
  %.1551 = phi i16 [ %.1552, %.thread547 ], [ %.0318, %._crit_edge630 ]
  %.7532 = phi i16 [ 0, %.thread547 ], [ %.4529.lcssa, %._crit_edge630 ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  %i.lh = load i16, ptr %i.lg, align 2            ; 3 uses
  %.not442 = icmp eq i16 %i.lh, -2
  %.not443 = icmp sgt i16 %i.lh, -1
  %or.cond472 = or i1 %.not442, %.not443
  br i1 %or.cond472, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 544
  %i.lj = load i16, ptr %i.li, align 8            ; 2 uses
  %i.lk = icmp eq i16 %i.lj, 1
  br i1 %i.lk, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ll = load i16, ptr %i.n, align 8
  %i.lm = icmp eq i16 %i.lj, %i.ll
  br i1 %i.lm, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ln = and i16 %i.lh, 32767                    ; 2 uses
  %i.lo = zext nneg i16 %i.ln to i32
  %i.lp = zext i16 %.7532 to i32
  %i.lq = add nuw nsw i32 %i.lo, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.ls = load i16, ptr %i.lr, align 8
  %i.lt = zext i16 %i.ls to i32
  %.not444 = icmp samesign ugt i32 %i.lq, %i.lt
  br i1 %.not444, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %. = call i16 @llvm.umin.i16(i16 %.7532, i16 %i.ln)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %.0357 = phi i16 [ 0, %bb.cf ], [ %., %bb.cg ], [ 0, %bb.cc ], [ 0, %bb.ce ] ; 2 uses
  %i.lu = sub i16 %.7532, %.0357
  %i.lv = call i16 @llvm.umin.i16(i16 %i.lu, i16 %.1551)
  store i16 %i.lv, ptr %i.s, align 8
  %i.lw = load i32, ptr %4, align 4
  %i.lx = trunc i32 %i.lw to i16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.s, i64 34
  store i16 %i.lx, ptr %i.ly, align 2
  %i.lz = call ptr @slurm_xcalloc(i64 noundef %i.p, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 3822, ptr noundef nonnull @__func__._allocate_sc) #9
  %i.ma = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.lz, ptr %i.ma, align 8
  %i.mb = zext i16 %i.m to i32                    ; 2 uses
  %.not647 = icmp eq i16 %i.k, 0
  br i1 %.not647, label %._crit_edge637, label %.lr.ph636

.lr.ph636:                                        ; preds = %bb.ch, %.lr.ph636
  %indvars.iv717 = phi i64 [ %indvars.iv.next718, %.lr.ph636 ], [ 0, %bb.ch ] ; 2 uses
  %.1323634 = phi i32 [ %i.mg, %.lr.ph636 ], [ %i.mb, %bb.ch ] ; 3 uses
  %.1325633 = phi i32 [ %.1323634, %.lr.ph636 ], [ 0, %bb.ch ]
  %i.mc = call i32 @bit_set_count_range(ptr noundef %1, i32 noundef %.1325633, i32 noundef %.1323634) #9
  %i.md = trunc i32 %i.mc to i16
  %i.me = load ptr, ptr %i.ma, align 8
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %indvars.iv717
  store i16 %i.md, ptr %i.mf, align 2
  %i.mg = add nuw i32 %.1323634, %i.mb
  %indvars.iv.next718 = add nuw nsw i64 %indvars.iv717, 1 ; 2 uses
  %exitcond721.not = icmp eq i64 %indvars.iv.next718, %i.p
  br i1 %exitcond721.not, label %._crit_edge637, label %.lr.ph636, !llvm.loop !73

._crit_edge637:                                   ; preds = %.lr.ph636, %bb.ch
  %i.mh = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i16 %i.k, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i16 %.0357, ptr %i.mi, align 8
  %i.mj = load i16, ptr %i.n, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.s, i64 50
  store i16 %i.mj, ptr %i.mk, align 2
  %i.ml = load ptr, ptr %i.a, align 8
  %.not445 = icmp eq ptr %i.ml, null
  br i1 %.not445, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge637
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.s
}

declare void @bit_and_not(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bit_set_count_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @job_mgr_determine_cpus_per_core(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gres_sock_str(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @bit_fls(ptr noundef) local_unnamed_addr #2

declare ptr @next_node(ptr noundef) local_unnamed_addr #2

declare i32 @topology_g_get(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @topology_g_whole_topo_enabled(i32 noundef) local_unnamed_addr #2

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @topology_g_whole_topo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @part_data_dup_res(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @node_data_dup_use(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @part_data_destroy_res(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_build_cr_job_list(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %.off = add nsw i32 %i.c, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.93, ptr noundef nonnull %0) #9 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
end_hunk_0
