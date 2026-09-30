Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@setup_parameters_complex:bb.a
  br i1 %.not22.i, label %ignore_keyword_hash_p.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %RHASH_EMPTY_P.exit.i
  %i.ev = and i32 %.6661, 2048
  %.not23.i = icmp eq i32 %i.ev, 0
  br i1 %.not23.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ew = getelementptr i8, ptr %.pre800.pre, i64 16
  %i.ex = load i16, ptr %i.ew, align 8
  %i.ey = and i16 %i.ex, 544
  %or.cond.i = icmp eq i16 %i.ey, 0
  br i1 %or.cond.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = or disjoint i32 %.6661, 2048
  %i.fa = call i64 @rb_hash_dup(i64 noundef %.019.i) #23
  %.pre799 = load ptr, ptr %i.c, align 8, !tbaa !158
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fb = phi ptr [ %.pre800.pre, %bb.ai ], [ %.pre799, %bb.aj ], [ %.pre800.pre, %bb.ah ]
  %.7662 = phi i32 [ %.6661, %bb.ai ], [ %i.ez, %bb.aj ], [ %.6661, %bb.ah ] ; 8 uses
  %.1.i = phi i64 [ %.019.i, %bb.ai ], [ %i.fa, %bb.aj ], [ %.019.i, %bb.ah ] ; 7 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %i.fd = load i16, ptr %i.fc, align 8            ; 4 uses
  %i.fe = and i16 %i.fd, 48
  %or.cond28.i = icmp eq i16 %i.fe, 0
  br i1 %or.cond28.i, label %bb.al, label %.thread853

bb.al:                                            ; preds = %bb.ak
  %i.ff = inttoptr i64 %.1.i to ptr
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !114 ; 2 uses
  %i.fh = and i64 %i.fg, 32768
  %.not.i.i.i29.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i29.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fi = lshr i64 %i.fg, 16
  %i.fj = and i64 %i.fi, 15
  br label %RHASH_EMPTY_P.exit31.i

bb.an:                                            ; preds = %bb.al
  %i.fk = add i64 %.1.i, 24
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !301
  br label %RHASH_EMPTY_P.exit31.i

RHASH_EMPTY_P.exit31.i:                           ; preds = %bb.an, %bb.am
  %.0.i.i30.i = phi i64 [ %i.fj, %bb.am ], [ %i.fn, %bb.an ]
  %i.fo = icmp eq i64 %.0.i.i30.i, 0
  br i1 %i.fo, label %ignore_keyword_hash_p.exit, label %bb.ao

ignore_keyword_hash_p.exit:                       ; preds = %bb.z, %bb.ag, %RHASH_EMPTY_P.exit31.i
  %.8 = phi i32 [ %.0655, %bb.z ], [ %.6661, %bb.ag ], [ %.7662, %RHASH_EMPTY_P.exit31.i ]
  %i.fp = and i32 %.8, -2113
  br label %.thread855

bb.ao:                                            ; preds = %RHASH_EMPTY_P.exit31.i
  %i.fq = and i16 %i.fd, 512
  %.not412 = icmp eq i16 %i.fq, 0
  br i1 %.not412, label %bb.as, label %bb.ap, !prof !109

.thread853:                                       ; preds = %bb.ak
  %i.fr = and i16 %i.fd, 512
  %.not412854 = icmp eq i16 %i.fr, 0
  br i1 %.not412854, label %.thread855, label %bb.ap, !prof !109

bb.ap:                                            ; preds = %.thread853, %bb.ao
  %i.fs = and i32 %.7662, 2048
  %.not.i476 = icmp eq i32 %i.fs, 0
  br i1 %.not.i476, label %bb.aq, label %check_kwrestarg.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ft = or disjoint i32 %.7662, 2048
  %i.fu = call i64 @rb_hash_dup(i64 noundef %.1.i) #23
  br label %check_kwrestarg.exit

check_kwrestarg.exit:                             ; preds = %bb.ap, %bb.aq
  %.10 = phi i32 [ %i.ft, %bb.aq ], [ %.7662, %bb.ap ]
  %.0.i477 = phi i64 [ %i.fu, %bb.aq ], [ %.1.i, %bb.ap ] ; 2 uses
  %i.fv = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i478 = icmp eq i32 %i.fv, 0
  %.pre801 = load i64, ptr %i.ds, align 8, !tbaa !479 ; 2 uses
  br i1 %.not.i478, label %bb.ar, label %arg_rest_dup.exit

bb.ar:                                            ; preds = %check_kwrestarg.exit
  %i.fw = call i64 @rb_ary_dup(i64 noundef %.pre801) #23 ; 2 uses
  store i64 %i.fw, ptr %i.ds, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %arg_rest_dup.exit

arg_rest_dup.exit:                                ; preds = %check_kwrestarg.exit, %bb.ar
  %i.fx = phi i64 [ %.pre801, %check_kwrestarg.exit ], [ %i.fw, %bb.ar ]
  %i.fy = call i64 @rb_ary_push(i64 noundef %i.fx, i64 noundef %.0.i477) #23 ; 0 uses
  br label %.thread855

bb.as:                                            ; preds = %bb.ao
  %i.fz = and i32 %.7662, 2048
  %.not.i479 = icmp eq i32 %i.fz, 0
  br i1 %.not.i479, label %bb.at, label %check_kwrestarg.exit481

bb.at:                                            ; preds = %bb.as
  %i.ga = or disjoint i32 %.7662, 2048
  %i.gb = call i64 @rb_hash_dup(i64 noundef %.1.i) #23
  %.pre802 = load ptr, ptr %i.c, align 8, !tbaa !158
  %.phi.trans.insert803 = getelementptr i8, ptr %.pre802, i64 16
  %.pre804 = load i16, ptr %.phi.trans.insert803, align 8
  br label %check_kwrestarg.exit481

check_kwrestarg.exit481:                          ; preds = %bb.as, %bb.at
  %i.gc = phi i16 [ %.pre804, %bb.at ], [ %i.fd, %bb.as ]
  %.11 = phi i32 [ %i.ga, %bb.at ], [ %.7662, %bb.as ] ; 2 uses
  %.0.i480 = phi i64 [ %i.gb, %bb.at ], [ %.1.i, %bb.as ] ; 2 uses
  %i.gd = and i16 %i.gc, 4
  %.not415 = icmp eq i16 %i.gd, 0
  br i1 %.not415, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %check_kwrestarg.exit481
  %i.ge = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i482 = icmp eq i32 %i.ge, 0
  %.pre805 = load i64, ptr %i.ds, align 8, !tbaa !479 ; 2 uses
  br i1 %.not.i482, label %bb.av, label %arg_rest_dup.exit483

bb.av:                                            ; preds = %bb.au
  %i.gf = call i64 @rb_ary_dup(i64 noundef %.pre805) #23 ; 2 uses
  store i64 %i.gf, ptr %i.ds, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %arg_rest_dup.exit483

arg_rest_dup.exit483:                             ; preds = %bb.au, %bb.av
  %i.gg = phi i64 [ %.pre805, %bb.au ], [ %i.gf, %bb.av ]
  %i.gh = call i64 @rb_ary_push(i64 noundef %i.gg, i64 noundef %.0.i480) #23 ; 0 uses
  br label %.thread855

bb.aw:                                            ; preds = %check_kwrestarg.exit481
  %i.gi = load i64, ptr %i.ds, align 8, !tbaa !479
  %i.gj = inttoptr i64 %i.gi to ptr               ; 4 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !114 ; 2 uses
  %i.gl = and i64 %i.gk, 8192
  %.not.i484 = icmp eq i64 %i.gl, 0
  br i1 %.not.i484, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = getelementptr i8, ptr %i.gj, i64 16
  %i.gn = load i32, ptr %i.as, align 8, !tbaa !478
  %i.go = lshr i64 %i.gk, 15
  %i.gp = and i64 %i.go, 127
  br label %rb_array_len.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.gq = getelementptr i8, ptr %i.gj, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !64
  %i.gs = load i32, ptr %i.as, align 8, !tbaa !478
  %i.gt = getelementptr i8, ptr %i.gj, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !64
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ay, %bb.ax
  %i.gv = phi i32 [ %i.gn, %bb.ax ], [ %i.gs, %bb.ay ] ; 12 uses
  %.0.i485672 = phi ptr [ %i.gm, %bb.ax ], [ %i.gr, %bb.ay ] ; 7 uses
  %.0.i.i487 = phi i64 [ %i.gp, %bb.ax ], [ %i.gu, %bb.ay ] ; 7 uses
  %.0.i485672874 = ptrtoaddr ptr %.0.i485672 to i64
  %i.gw = add i64 %.0.i.i487, 2147483648
  %.not.i1.i = icmp ult i64 %i.gw, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.az

bb.az:                                            ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i487) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.gx = trunc i64 %.0.i.i487 to i32             ; 3 uses
  %.not416 = icmp eq i64 %.0.i.i487, 0
  br i1 %.not416, label %.thread688.thread856, label %bb.ba

bb.ba:                                            ; preds = %RARRAY_LENINT.exit
  %i.gy = load ptr, ptr %i.y, align 8, !tbaa !107 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !110
  %i.hb = shl nsw i64 %.0.i.i487, 32
  %sext = add i64 %i.hb, 4294967296
  %i.hc = ashr exact i64 %sext, 29
  %i.hd = getelementptr i8, ptr %i.ha, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 56
  %.not417 = icmp ugt ptr %i.gy, %i.he
  br i1 %.not417, label %bb.bc, label %bb.bb, !prof !109

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @vm_stackoverflow() #58
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hf = add i32 %i.dh, %i.gx                    ; 4 uses
  %i.hg = add i32 %i.gv, %i.gx                    ; 4 uses
  %i.hh = icmp sgt i64 %.0.i.i487, 0
  br i1 %i.hh, label %.lr.ph763.preheader, label %.thread688.thread856

.lr.ph763.preheader:                              ; preds = %bb.bc
  %i.hi = call i32 @llvm.smax.i32(i32 %i.gx, i32 1) ; 2 uses
  %wide.trip.count773 = zext nneg i32 %i.hi to i64 ; 5 uses
  %min.iters.check876 = icmp slt i64 %.0.i.i487, 20
  br i1 %min.iters.check876, label %.lr.ph763.preheader944, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph763.preheader
  %7 = add nsw i32 %i.hi, -1
  %i.hj = add i32 %i.gv, %7
  %i.hk = icmp slt i32 %i.hj, %i.gv
  br i1 %i.hk, label %.lr.ph763.preheader944, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hl = sext i32 %i.gv to i64
  %i.hm = shl nsw i64 %i.hl, 3
  %i.hn = add i64 %i.hm, %i.a
  %i.ho = sub i64 %.0.i485672874, %i.hn
  %diff.check = icmp ugt i64 %i.ho, -32
  br i1 %diff.check, label %.lr.ph763.preheader944, label %vector.ph877

vector.ph877:                                     ; preds = %vector.memcheck
  %n.vec878 = and i64 %wide.trip.count773, 2147483644 ; 4 uses
  %i.hp = trunc nuw nsw i64 %n.vec878 to i32
  %i.hq = add i32 %i.gv, %i.hp                    ; 2 uses
  br label %vector.body879

vector.body879:                                   ; preds = %vector.body879, %vector.ph877
  %index880 = phi i64 [ 0, %vector.ph877 ], [ %index.next882, %vector.body879 ] ; 3 uses
  %i.hr = trunc i64 %index880 to i32
  %i.hs = add i32 %i.gv, %i.hr
  %i.ht = getelementptr [8 x i8], ptr %.0.i485672, i64 %index880 ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  %wide.load = load <2 x i64>, ptr %i.ht, align 8, !tbaa !50
  %wide.load881 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !50
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr [8 x i8], ptr %4, i64 %i.hv ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  store <2 x i64> %wide.load, ptr %i.hw, align 8, !tbaa !50
  store <2 x i64> %wide.load881, ptr %i.hx, align 8, !tbaa !50
  %index.next882 = add nuw i64 %index880, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next882, %n.vec878
  br i1 %i.hy, label %middle.block883, label %vector.body879, !llvm.loop !765

middle.block883:                                  ; preds = %vector.body879
  %cmp.n884 = icmp eq i64 %n.vec878, %wide.trip.count773
  br i1 %cmp.n884, label %.thread688.thread856, label %.lr.ph763.preheader944

.lr.ph763.preheader944:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph763.preheader, %middle.block883
  %indvars.iv770.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph763.preheader ], [ %n.vec878, %middle.block883 ] ; 3 uses
  %.0336760.ph = phi i32 [ %i.gv, %vector.memcheck ], [ %i.gv, %vector.scevcheck ], [ %i.gv, %.lr.ph763.preheader ], [ %i.hq, %middle.block883 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count773, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph763.prol.loopexit, label %.lr.ph763.prol

.lr.ph763.prol:                                   ; preds = %.lr.ph763.preheader944, %.lr.ph763.prol
  %indvars.iv770.prol = phi i64 [ %indvars.iv.next771.prol, %.lr.ph763.prol ], [ %indvars.iv770.ph, %.lr.ph763.preheader944 ] ; 2 uses
  %.0336760.prol = phi i32 [ %i.id, %.lr.ph763.prol ], [ %.0336760.ph, %.lr.ph763.preheader944 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph763.prol ], [ 0, %.lr.ph763.preheader944 ]
  %i.hz = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770.prol
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !50
  %i.ib = sext i32 %.0336760.prol to i64
  %i.ic = getelementptr [8 x i8], ptr %4, i64 %i.ib
  store i64 %i.ia, ptr %i.ic, align 8, !tbaa !50
  %i.id = add i32 %.0336760.prol, 1               ; 3 uses
  %indvars.iv.next771.prol = add nuw nsw i64 %indvars.iv770.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph763.prol.loopexit, label %.lr.ph763.prol, !llvm.loop !766

.lr.ph763.prol.loopexit:                          ; preds = %.lr.ph763.prol, %.lr.ph763.preheader944
  %.lcssa.unr = phi i32 [ poison, %.lr.ph763.preheader944 ], [ %i.id, %.lr.ph763.prol ]
  %indvars.iv770.unr = phi i64 [ %indvars.iv770.ph, %.lr.ph763.preheader944 ], [ %indvars.iv.next771.prol, %.lr.ph763.prol ]
  %.0336760.unr = phi i32 [ %.0336760.ph, %.lr.ph763.preheader944 ], [ %i.id, %.lr.ph763.prol ]
  %i.ie = sub nsw i64 %indvars.iv770.ph, %wide.trip.count773
  %i.if = icmp ugt i64 %i.ie, -4
  br i1 %i.if, label %.thread688.thread856, label %.lr.ph763

.lr.ph763:                                        ; preds = %.lr.ph763.prol.loopexit, %.lr.ph763
  %indvars.iv770 = phi i64 [ %indvars.iv.next771.3, %.lr.ph763 ], [ %indvars.iv770.unr, %.lr.ph763.prol.loopexit ] ; 5 uses
  %.0336760 = phi i32 [ %i.jc, %.lr.ph763 ], [ %.0336760.unr, %.lr.ph763.prol.loopexit ] ; 5 uses
  %i.ig = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !50
  %i.ii = sext i32 %.0336760 to i64
  %i.ij = getelementptr [8 x i8], ptr %4, i64 %i.ii
  store i64 %i.ih, ptr %i.ij, align 8, !tbaa !50
  %i.ik = add i32 %.0336760, 1
  %i.il = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !50
  %i.io = sext i32 %i.ik to i64
  %i.ip = getelementptr [8 x i8], ptr %4, i64 %i.io
  store i64 %i.in, ptr %i.ip, align 8, !tbaa !50
  %i.iq = add i32 %.0336760, 2
  %i.ir = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.is = getelementptr i8, ptr %i.ir, i64 16
  %i.it = load i64, ptr %i.is, align 8, !tbaa !50
  %i.iu = sext i32 %i.iq to i64
  %i.iv = getelementptr [8 x i8], ptr %4, i64 %i.iu
  store i64 %i.it, ptr %i.iv, align 8, !tbaa !50
  %i.iw = add i32 %.0336760, 3
  %i.ix = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.iy = getelementptr i8, ptr %i.ix, i64 24
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !50
  %i.ja = sext i32 %i.iw to i64
  %i.jb = getelementptr [8 x i8], ptr %4, i64 %i.ja
  store i64 %i.iz, ptr %i.jb, align 8, !tbaa !50
  %i.jc = add i32 %.0336760, 4                    ; 2 uses
  %indvars.iv.next771.3 = add nuw nsw i64 %indvars.iv770, 4 ; 2 uses
  %exitcond774.not.3 = icmp eq i64 %indvars.iv.next771.3, %wide.trip.count773
  br i1 %exitcond774.not.3, label %.thread688.thread856, label %.lr.ph763, !llvm.loop !767

.thread688.thread856:                             ; preds = %.lr.ph763.prol.loopexit, %.lr.ph763, %middle.block883, %RARRAY_LENINT.exit, %bb.bc
  %i.jd = phi i32 [ %i.gv, %RARRAY_LENINT.exit ], [ %i.hg, %bb.bc ], [ %i.hg, %middle.block883 ], [ %i.hg, %.lr.ph763 ], [ %i.hg, %.lr.ph763.prol.loopexit ]
  %.1339 = phi i32 [ %i.dh, %RARRAY_LENINT.exit ], [ %i.hf, %bb.bc ], [ %i.hf, %middle.block883 ], [ %i.hf, %.lr.ph763 ], [ %i.hf, %.lr.ph763.prol.loopexit ]
  %.1 = phi i32 [ %i.gv, %RARRAY_LENINT.exit ], [ %i.gv, %bb.bc ], [ %i.hq, %middle.block883 ], [ %.lcssa.unr, %.lr.ph763.prol.loopexit ], [ %i.jc, %.lr.ph763 ]
  %i.je = sext i32 %.1 to i64
  %i.jf = getelementptr [8 x i8], ptr %4, i64 %i.je
  store i64 %.0.i480, ptr %i.jf, align 8, !tbaa !50
  %i.jg = add i32 %.1339, -1
  %i.jh = add i32 %i.jd, 1
  store i32 %i.jh, ptr %i.as, align 8, !tbaa !478
  store i64 0, ptr %i.ds, align 8, !tbaa !479
  %i.ji = and i32 %.0.i468, -66
  store i32 %i.ji, ptr %i.b, align 4, !tbaa !48
  br label %.thread688.thread740

.thread855:                                       ; preds = %.thread853, %ignore_keyword_hash_p.exit, %arg_rest_dup.exit, %arg_rest_dup.exit483
  %.1656 = phi i32 [ %.11, %arg_rest_dup.exit483 ], [ %i.fp, %ignore_keyword_hash_p.exit ], [ %.10, %arg_rest_dup.exit ], [ %.7662, %.thread853 ]
  %.0353 = phi i64 [ 4, %arg_rest_dup.exit483 ], [ 4, %ignore_keyword_hash_p.exit ], [ 4, %arg_rest_dup.exit ], [ %.1.i, %.thread853 ]
  %.0348 = phi i64 [ 0, %arg_rest_dup.exit483 ], [ 0, %ignore_keyword_hash_p.exit ], [ %.0.i477, %arg_rest_dup.exit ], [ 0, %.thread853 ]
  %i.jj = load i64, ptr %i.ds, align 8, !tbaa !479
  %i.jk = inttoptr i64 %i.jj to ptr               ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !114 ; 2 uses
  %i.jm = and i64 %i.jl, 8192
  %.not.i.i488 = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i488, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread855
  %i.jn = lshr i64 %i.jl, 15
  %i.jo = and i64 %i.jn, 127
  br label %rb_array_len.exit.i489

bb.be:                                            ; preds = %.thread855
  %i.jp = getelementptr i8, ptr %i.jk, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !64
  br label %rb_array_len.exit.i489

rb_array_len.exit.i489:                           ; preds = %bb.be, %bb.bd
  %.0.i.i490 = phi i64 [ %i.jo, %bb.bd ], [ %i.jq, %bb.be ] ; 3 uses
  %i.jr = add i64 %.0.i.i490, 2147483648
  %.not.i1.i491 = icmp ult i64 %i.jr, 4294967296
  br i1 %.not.i1.i491, label %RARRAY_LENINT.exit492, label %bb.bf

bb.bf:                                            ; preds = %rb_array_len.exit.i489
  call void @rb_out_of_int(i64 noundef %.0.i.i490) #57
  unreachable

RARRAY_LENINT.exit492:                            ; preds = %rb_array_len.exit.i489
  %i.js = trunc nsw i64 %.0.i.i490 to i32
  %i.jt = add i32 %i.do, %i.js
  br label %bb.dp

bb.bg:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.ju = and i32 %.0.i468, 1
  %.not387 = icmp eq i32 %i.ju, 0
  br i1 %.not387, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !785
  %i.jw = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.jw, ptr %i.as, align 8, !tbaa !478
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr %4, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !50 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !479
  %i.kb = inttoptr i64 %i.jz to ptr               ; 4 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !114 ; 2 uses
  %i.kd = and i64 %i.kc, 8192
  %.not.i.i493 = icmp eq i64 %i.kd, 0             ; 2 uses
  br i1 %.not.i.i493, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ke = lshr i64 %i.kc, 15
  %i.kf = and i64 %i.ke, 127
  br label %rb_array_len.exit.i494

bb.bj:                                            ; preds = %bb.bh
  %i.kg = getelementptr i8, ptr %i.kb, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !64
  br label %rb_array_len.exit.i494

rb_array_len.exit.i494:                           ; preds = %bb.bj, %bb.bi
  %.0.i.i495 = phi i64 [ %i.kf, %bb.bi ], [ %i.kh, %bb.bj ] ; 4 uses
  %i.ki = add i64 %.0.i.i495, 2147483648
  %.not.i1.i496 = icmp ult i64 %i.ki, 4294967296
  br i1 %.not.i1.i496, label %RARRAY_LENINT.exit497, label %bb.bk

bb.bk:                                            ; preds = %rb_array_len.exit.i494
  call void @rb_out_of_int(i64 noundef %.0.i.i495) #57
  unreachable

RARRAY_LENINT.exit497:                            ; preds = %rb_array_len.exit.i494
  %i.kj = trunc nsw i64 %.0.i.i495 to i32
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  %i.kl = add i32 %i.kk, %i.dh                    ; 9 uses
  %i.km = icmp eq i32 %.0655, 0
  %i.kn = icmp sgt i64 %.0.i.i495, 0
  %or.cond = and i1 %i.km, %i.kn
  br i1 %or.cond, label %bb.bl, label %.thread688
end_hunk_0
