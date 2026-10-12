Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@setup_parameters_complex:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.eh = and i16 %i.ef, 16
  %.not21.i = icmp eq i16 %i.eh, 0
  %i.ei = or i32 %.0655, 2048
  %spec.select = select i1 %.not21.i, i32 %i.ei, i32 %.0655
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.6661 = phi i32 [ %.0655, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %.0655, %bb.ab ], [ %spec.select, %bb.ac ] ; 5 uses
  %i.ej = phi i64 [ %.pre.i473, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.dz, %bb.ab ], [ %i.dz, %bb.ac ] ; 2 uses
  %.019.i = phi i64 [ %i.ec, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.dn, %bb.ab ], [ %i.dn, %bb.ac ] ; 4 uses
  %i.ek = and i64 %i.ej, 32768
  %.not.i.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.el = lshr i64 %i.ej, 16
  %i.em = and i64 %i.el, 15
  br label %RHASH_EMPTY_P.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.en = add i64 %.019.i, 24
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !301
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.af, %bb.ae
  %.0.i.i.i = phi i64 [ %i.em, %bb.ae ], [ %i.eq, %bb.af ]
  %i.er = icmp eq i64 %.0.i.i.i, 0
  %.pre800.pre = load ptr, ptr %i.c, align 8, !tbaa !158 ; 4 uses
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %RHASH_EMPTY_P.exit.i
  %i.es = getelementptr i8, ptr %.pre800.pre, i64 16
  %i.et = load i16, ptr %i.es, align 8
  %i.eu = and i16 %i.et, 32
  %.not22.i = icmp eq i16 %i.eu, 0
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
  %7 = call i32 @llvm.smax.i32(i32 %i.gx, i32 1)  ; 2 uses
  %wide.trip.count773 = zext nneg i32 %7 to i64   ; 5 uses
  %min.iters.check876 = icmp slt i64 %.0.i.i487, 20
  br i1 %min.iters.check876, label %.lr.ph763.preheader943, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph763.preheader
  %8 = add nsw i32 %7, -1
  %i.hi = add i32 %i.gv, %8
  %i.hj = icmp slt i32 %i.hi, %i.gv
  br i1 %i.hj, label %.lr.ph763.preheader943, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hk = sext i32 %i.gv to i64
  %i.hl = shl nsw i64 %i.hk, 3
  %i.hm = add i64 %i.hl, %i.a
  %i.hn = sub i64 %.0.i485672874, %i.hm
  %diff.check = icmp ugt i64 %i.hn, -32
  br i1 %diff.check, label %.lr.ph763.preheader943, label %vector.ph877

vector.ph877:                                     ; preds = %vector.memcheck
  %n.vec878 = and i64 %wide.trip.count773, 2147483644 ; 4 uses
  %i.ho = trunc nuw nsw i64 %n.vec878 to i32
  %i.hp = add i32 %i.gv, %i.ho                    ; 2 uses
  br label %vector.body879

vector.body879:                                   ; preds = %vector.body879, %vector.ph877
  %index880 = phi i64 [ 0, %vector.ph877 ], [ %index.next882, %vector.body879 ] ; 3 uses
  %i.hq = trunc i64 %index880 to i32
  %i.hr = add i32 %i.gv, %i.hq
  %i.hs = getelementptr [8 x i8], ptr %.0.i485672, i64 %index880 ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  %wide.load = load <2 x i64>, ptr %i.hs, align 8, !tbaa !50
  %wide.load881 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !50
  %i.hu = sext i32 %i.hr to i64
  %i.hv = getelementptr [8 x i8], ptr %4, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  store <2 x i64> %wide.load, ptr %i.hv, align 8, !tbaa !50
  store <2 x i64> %wide.load881, ptr %i.hw, align 8, !tbaa !50
  %index.next882 = add nuw i64 %index880, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next882, %n.vec878
  br i1 %i.hx, label %middle.block883, label %vector.body879, !llvm.loop !765

middle.block883:                                  ; preds = %vector.body879
  %cmp.n884 = icmp eq i64 %n.vec878, %wide.trip.count773
  br i1 %cmp.n884, label %.thread688.thread856, label %.lr.ph763.preheader943

.lr.ph763.preheader943:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph763.preheader, %middle.block883
  %indvars.iv770.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph763.preheader ], [ %n.vec878, %middle.block883 ] ; 3 uses
  %.0336760.ph = phi i32 [ %i.gv, %vector.memcheck ], [ %i.gv, %vector.scevcheck ], [ %i.gv, %.lr.ph763.preheader ], [ %i.hp, %middle.block883 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count773, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph763.prol.loopexit, label %.lr.ph763.prol

.lr.ph763.prol:                                   ; preds = %.lr.ph763.preheader943, %.lr.ph763.prol
  %indvars.iv770.prol = phi i64 [ %indvars.iv.next771.prol, %.lr.ph763.prol ], [ %indvars.iv770.ph, %.lr.ph763.preheader943 ] ; 2 uses
  %.0336760.prol = phi i32 [ %i.ic, %.lr.ph763.prol ], [ %.0336760.ph, %.lr.ph763.preheader943 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph763.prol ], [ 0, %.lr.ph763.preheader943 ]
  %i.hy = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770.prol
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !50
  %i.ia = sext i32 %.0336760.prol to i64
  %i.ib = getelementptr [8 x i8], ptr %4, i64 %i.ia
  store i64 %i.hz, ptr %i.ib, align 8, !tbaa !50
  %i.ic = add i32 %.0336760.prol, 1               ; 3 uses
  %indvars.iv.next771.prol = add nuw nsw i64 %indvars.iv770.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph763.prol.loopexit, label %.lr.ph763.prol, !llvm.loop !766

.lr.ph763.prol.loopexit:                          ; preds = %.lr.ph763.prol, %.lr.ph763.preheader943
  %.lcssa.unr = phi i32 [ poison, %.lr.ph763.preheader943 ], [ %i.ic, %.lr.ph763.prol ]
  %indvars.iv770.unr = phi i64 [ %indvars.iv770.ph, %.lr.ph763.preheader943 ], [ %indvars.iv.next771.prol, %.lr.ph763.prol ]
  %.0336760.unr = phi i32 [ %.0336760.ph, %.lr.ph763.preheader943 ], [ %i.ic, %.lr.ph763.prol ]
  %i.id = sub nsw i64 %indvars.iv770.ph, %wide.trip.count773
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %.thread688.thread856, label %.lr.ph763

.lr.ph763:                                        ; preds = %.lr.ph763.prol.loopexit, %.lr.ph763
  %indvars.iv770 = phi i64 [ %indvars.iv.next771.3, %.lr.ph763 ], [ %indvars.iv770.unr, %.lr.ph763.prol.loopexit ] ; 5 uses
  %.0336760 = phi i32 [ %i.jb, %.lr.ph763 ], [ %.0336760.unr, %.lr.ph763.prol.loopexit ] ; 5 uses
  %i.if = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !50
  %i.ih = sext i32 %.0336760 to i64
  %i.ii = getelementptr [8 x i8], ptr %4, i64 %i.ih
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !50
  %i.ij = add i32 %.0336760, 1
  %i.ik = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !50
  %i.in = sext i32 %i.ij to i64
  %i.io = getelementptr [8 x i8], ptr %4, i64 %i.in
  store i64 %i.im, ptr %i.io, align 8, !tbaa !50
  %i.ip = add i32 %.0336760, 2
  %i.iq = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.ir = getelementptr i8, ptr %i.iq, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !50
  %i.it = sext i32 %i.ip to i64
  %i.iu = getelementptr [8 x i8], ptr %4, i64 %i.it
  store i64 %i.is, ptr %i.iu, align 8, !tbaa !50
  %i.iv = add i32 %.0336760, 3
  %i.iw = getelementptr [8 x i8], ptr %.0.i485672, i64 %indvars.iv770
  %i.ix = getelementptr i8, ptr %i.iw, i64 24
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !50
  %i.iz = sext i32 %i.iv to i64
  %i.ja = getelementptr [8 x i8], ptr %4, i64 %i.iz
  store i64 %i.iy, ptr %i.ja, align 8, !tbaa !50
  %i.jb = add i32 %.0336760, 4                    ; 2 uses
  %indvars.iv.next771.3 = add nuw nsw i64 %indvars.iv770, 4 ; 2 uses
  %exitcond774.not.3 = icmp eq i64 %indvars.iv.next771.3, %wide.trip.count773
  br i1 %exitcond774.not.3, label %.thread688.thread856, label %.lr.ph763, !llvm.loop !767

.thread688.thread856:                             ; preds = %.lr.ph763.prol.loopexit, %.lr.ph763, %middle.block883, %RARRAY_LENINT.exit, %bb.bc
  %i.jc = phi i32 [ %i.gv, %RARRAY_LENINT.exit ], [ %i.hg, %bb.bc ], [ %i.hg, %middle.block883 ], [ %i.hg, %.lr.ph763 ], [ %i.hg, %.lr.ph763.prol.loopexit ]
  %.1339 = phi i32 [ %i.dh, %RARRAY_LENINT.exit ], [ %i.hf, %bb.bc ], [ %i.hf, %middle.block883 ], [ %i.hf, %.lr.ph763 ], [ %i.hf, %.lr.ph763.prol.loopexit ]
  %.1 = phi i32 [ %i.gv, %RARRAY_LENINT.exit ], [ %i.gv, %bb.bc ], [ %i.hp, %middle.block883 ], [ %.lcssa.unr, %.lr.ph763.prol.loopexit ], [ %i.jb, %.lr.ph763 ]
  %i.jd = sext i32 %.1 to i64
  %i.je = getelementptr [8 x i8], ptr %4, i64 %i.jd
  store i64 %.0.i480, ptr %i.je, align 8, !tbaa !50
  %i.jf = add i32 %.1339, -1
  %i.jg = add i32 %i.jc, 1
  store i32 %i.jg, ptr %i.as, align 8, !tbaa !478
  store i64 0, ptr %i.ds, align 8, !tbaa !479
  %i.jh = and i32 %.0.i468, -66
  store i32 %i.jh, ptr %i.b, align 4, !tbaa !48
  br label %.thread688.thread740

.thread855:                                       ; preds = %.thread853, %ignore_keyword_hash_p.exit, %arg_rest_dup.exit, %arg_rest_dup.exit483
  %.1656 = phi i32 [ %.11, %arg_rest_dup.exit483 ], [ %i.fp, %ignore_keyword_hash_p.exit ], [ %.10, %arg_rest_dup.exit ], [ %.7662, %.thread853 ]
  %.0353 = phi i64 [ 4, %arg_rest_dup.exit483 ], [ 4, %ignore_keyword_hash_p.exit ], [ 4, %arg_rest_dup.exit ], [ %.1.i, %.thread853 ]
  %.0348 = phi i64 [ 0, %arg_rest_dup.exit483 ], [ 0, %ignore_keyword_hash_p.exit ], [ %.0.i477, %arg_rest_dup.exit ], [ 0, %.thread853 ]
  %i.ji = load i64, ptr %i.ds, align 8, !tbaa !479
  %i.jj = inttoptr i64 %i.ji to ptr               ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !114 ; 2 uses
  %i.jl = and i64 %i.jk, 8192
  %.not.i.i488 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i488, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread855
  %i.jm = lshr i64 %i.jk, 15
  %i.jn = and i64 %i.jm, 127
  br label %rb_array_len.exit.i489

bb.be:                                            ; preds = %.thread855
  %i.jo = getelementptr i8, ptr %i.jj, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !64
  br label %rb_array_len.exit.i489

rb_array_len.exit.i489:                           ; preds = %bb.be, %bb.bd
  %.0.i.i490 = phi i64 [ %i.jn, %bb.bd ], [ %i.jp, %bb.be ] ; 3 uses
  %i.jq = add i64 %.0.i.i490, 2147483648
  %.not.i1.i491 = icmp ult i64 %i.jq, 4294967296
  br i1 %.not.i1.i491, label %RARRAY_LENINT.exit492, label %bb.bf

bb.bf:                                            ; preds = %rb_array_len.exit.i489
  call void @rb_out_of_int(i64 noundef %.0.i.i490) #57
  unreachable

RARRAY_LENINT.exit492:                            ; preds = %rb_array_len.exit.i489
  %i.jr = trunc nsw i64 %.0.i.i490 to i32
  %i.js = add i32 %i.do, %i.jr
  br label %bb.dp

bb.bg:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.jt = and i32 %.0.i468, 1
  %.not387 = icmp eq i32 %i.jt, 0
  br i1 %.not387, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !785
  %i.jv = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.jv, ptr %i.as, align 8, !tbaa !478
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr [8 x i8], ptr %4, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !50 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !479
  %i.ka = inttoptr i64 %i.jy to ptr               ; 4 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !114 ; 2 uses
  %i.kc = and i64 %i.kb, 8192
  %.not.i.i493 = icmp eq i64 %i.kc, 0             ; 2 uses
  br i1 %.not.i.i493, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kd = lshr i64 %i.kb, 15
  %i.ke = and i64 %i.kd, 127
  br label %rb_array_len.exit.i494

bb.bj:                                            ; preds = %bb.bh
  %i.kf = getelementptr i8, ptr %i.ka, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !64
  br label %rb_array_len.exit.i494

rb_array_len.exit.i494:                           ; preds = %bb.bj, %bb.bi
  %.0.i.i495 = phi i64 [ %i.ke, %bb.bi ], [ %i.kg, %bb.bj ] ; 4 uses
  %i.kh = add i64 %.0.i.i495, 2147483648
  %.not.i1.i496 = icmp ult i64 %i.kh, 4294967296
  br i1 %.not.i1.i496, label %RARRAY_LENINT.exit497, label %bb.bk

bb.bk:                                            ; preds = %rb_array_len.exit.i494
  call void @rb_out_of_int(i64 noundef %.0.i.i495) #57
  unreachable

RARRAY_LENINT.exit497:                            ; preds = %rb_array_len.exit.i494
  %i.ki = trunc nsw i64 %.0.i.i495 to i32
  %i.kj = add i32 %i.ki, -1                       ; 2 uses
  %i.kk = add i32 %i.kj, %i.dh                    ; 9 uses
  %i.kl = icmp eq i32 %.0655, 0
  %i.km = icmp sgt i64 %.0.i.i495, 0
  %or.cond = and i1 %i.kl, %i.km
  br i1 %or.cond, label %bb.bl, label %.thread688

bb.bl:                                            ; preds = %RARRAY_LENINT.exit497
  %i.kn = zext nneg i32 %i.kj to i64              ; 2 uses
  br i1 %.not.i.i493, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ko = getelementptr i8, ptr %i.ka, i64 16
  br label %RARRAY_AREF.exit

bb.bn:                                            ; preds = %bb.bl
  %i.kp = getelementptr i8, ptr %i.ka, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !64
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.bm, %bb.bn
  %.0.i.i499 = phi ptr [ %i.ko, %bb.bm ], [ %i.kq, %bb.bn ]
  %i.kr = getelementptr [8 x i8], ptr %.0.i.i499, i64 %i.kn
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !50 ; 14 uses
  %i.kt = icmp eq i64 %i.ks, 0
  %i.ku = and i64 %i.ks, 7
  %i.kv = icmp ne i64 %i.ku, 0
  %i.kw = or i1 %i.kt, %i.kv
  br i1 %i.kw, label %.thread688.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RARRAY_AREF.exit
  %i.kx = inttoptr i64 %i.ks to ptr
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !114 ; 3 uses
  %i.kz = and i64 %i.ky, 8223
  %or.cond865.not = icmp eq i64 %i.kz, 8200
  br i1 %or.cond865.not, label %bb.bo, label %.thread688.thread

bb.bo:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.la = and i64 %i.ky, 32768
  %.not.i.i.i500 = icmp eq i64 %i.la, 0
  br i1 %.not.i.i.i500, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lb = lshr i64 %i.ky, 16
  %i.lc = and i64 %i.lb, 15
  br label %RHASH_EMPTY_P.exit502
end_hunk_0
begin_hunk_1_@eval_make_iseq:bb.a
    i32 1, label %vm_block_iseq.exit.i
    i32 2, label %vm_block_iseq.exit.i
  ]

bb.b:                                             ; preds = %tailrecurse.i.i
  %i.n = getelementptr i8, ptr %.tr.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  br label %vm_block_iseq.exit.i

bb.c:                                             ; preds = %tailrecurse.i.i
  %i.p = load i64, ptr %.tr.i.i, align 8, !tbaa !64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !355
  br label %tailrecurse.i.i

bb.d:                                             ; preds = %tailrecurse.i.i
  unreachable

vm_block_iseq.exit.i:                             ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ null, %tailrecurse.i.i ], [ null, %tailrecurse.i.i ] ; 4 uses
  %i.t = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.237, i64 noundef 10) #23
  %i.u = tail call i32 @rb_get_coverage_mode() #23
  %i.v = lshr i32 %i.u, 4
  %.lobit.i = and i32 %i.v, 1                     ; 4 uses
  %i.w = getelementptr i8, ptr %3, i64 24
  %.val.i1.i.i = load i32, ptr %i.w, align 8, !tbaa !357
  %i.x = icmp eq i32 %.val.i1.i.i, 3
  br i1 %i.x, label %tailrecurse.i.i.i, label %vm_block_ep.exit.i.i

vm_block_ep.exit.i.i:                             ; preds = %tailrecurse.i.i.i, %vm_block_iseq.exit.i
  %.tr.i.lcssa.i.i = phi ptr [ %3, %vm_block_iseq.exit.i ], [ %i.ae, %tailrecurse.i.i.i ]
  %i.y = getelementptr i8, ptr %.tr.i.lcssa.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 2 uses
  %.05.val10.i.i.i = load i64, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.aa = and i64 %.05.val10.i.i.i, 16
  %.not11.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %compute_isolated_depth_from_block.exit.i

tailrecurse.i.i.i:                                ; preds = %vm_block_iseq.exit.i, %tailrecurse.i.i.i
  %.tr.i2.i.i = phi ptr [ %i.ae, %tailrecurse.i.i.i ], [ %3, %vm_block_iseq.exit.i ]
  %i.ab = load i64, ptr %.tr.i2.i.i, align 8, !tbaa !64
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !355 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %.val.i.i.i = load i32, ptr %i.af, align 8, !tbaa !357
  %i.ag = icmp eq i32 %.val.i.i.i, 3
  br i1 %i.ag, label %tailrecurse.i.i.i, label %vm_block_ep.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %vm_block_ep.exit.i.i, %bb.e
  %.05.val14.i.i.i = phi i64 [ %.05.val.i.i.i, %bb.e ], [ %.05.val10.i.i.i, %vm_block_ep.exit.i.i ]
  %.013.i.i.i = phi i32 [ %i.al, %bb.e ], [ 1, %vm_block_ep.exit.i.i ]
  %.0512.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.z, %vm_block_ep.exit.i.i ]
  %i.ah = and i64 %.05.val14.i.i.i, 2
  %.not7.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not7.i.i.i, label %bb.e, label %compute_isolated_depth_from_block.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr i8, ptr %.0512.i.i.i, i64 -8
  %.05.val9.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.aj = and i64 %.05.val9.i.i.i, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = add i32 %.013.i.i.i, 1                  ; 2 uses
  %.05.val.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.am = and i64 %.05.val.i.i.i, 16
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %compute_isolated_depth_from_block.exit.i

compute_isolated_depth_from_block.exit.i:         ; preds = %bb.e, %.lr.ph.i.i.i, %vm_block_ep.exit.i.i
  %.06.i.i.i = phi i32 [ 1, %vm_block_ep.exit.i.i ], [ %i.al, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %rb_source_location.exit.i

bb.f:                                             ; preds = %compute_isolated_depth_from_block.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  store volatile ptr %i.ao, ptr %i.d, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !66 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ap = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 2 uses
  %.val.i.i146.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !153
  %i.ar = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !154
  %i.as = getelementptr [8 x i8], ptr %.val.i.i146.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.as, %i.aq
  br i1 %.not910.i.i.i, label %.lr.ph.i.i148.i, label %.thread.i

.lr.ph.i.i148.i:                                  ; preds = %bb.f, %bb.g
  %.011.i.i.i = phi ptr [ %i.av, %bb.g ], [ %i.aq, %bb.f ] ; 4 uses
  %i.at = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !56
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !50
  %i.au = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not7.not.i.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i148.i
  %i.av = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.as, %i.av
  br i1 %.not9.i.i.i, label %.lr.ph.i.i148.i, label %.thread.i, !llvm.loop !14

rb_vm_get_ruby_level_next_cfp.exit.i.i:           ; preds = %.lr.ph.i.i148.i
  %i.aw = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i.i) #23
  %i.ax = getelementptr i8, ptr %.011.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !155
  %i.az = tail call i64 @rb_iseq_path(ptr noundef %i.ay) #23
  br label %rb_source_location.exit.i

rb_source_location.exit.i:                        ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i.i, %compute_isolated_depth_from_block.exit.i
  %.0152.i = phi i32 [ %2, %compute_isolated_depth_from_block.exit.i ], [ %i.aw, %rb_vm_get_ruby_level_next_cfp.exit.i.i ] ; 3 uses
  %.0.i = phi i64 [ %1, %compute_isolated_depth_from_block.exit.i ], [ %i.az, %rb_vm_get_ruby_level_next_cfp.exit.i.i ] ; 3 uses
  switch i64 %.0.i, label %bb.h [
    i64 36, label %bb.i
    i64 4, label %.thread.i
  ]

bb.h:                                             ; preds = %rb_source_location.exit.i
  %i.ba = tail call i64 @rb_fstring(i64 noundef %.0.i) #23
  br label %.thread.i

bb.i:                                             ; preds = %rb_source_location.exit.i
  %i.bb = tail call fastcc i64 @get_eval_default_path()
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.i, %bb.h, %rb_source_location.exit.i, %bb.f
  %.0152156.i = phi i32 [ %.0152.i, %bb.i ], [ %.0152.i, %rb_source_location.exit.i ], [ %.0152.i, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %.0131.i = phi i32 [ 0, %bb.i ], [ %.lobit.i, %rb_source_location.exit.i ], [ %.lobit.i, %bb.h ], [ %.lobit.i, %bb.f ], [ %.lobit.i, %bb.g ] ; 2 uses
  %.1.i = phi i64 [ %i.bb, %bb.i ], [ %.0.i, %rb_source_location.exit.i ], [ %i.ba, %bb.h ], [ 4, %bb.f ], [ 4, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %6, i8 0, i64 1000, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 712 ; 2 uses
  call void @pm_options_line_set(ptr noundef nonnull %i.bc, i32 noundef %.0152156.i) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 976
  store i32 %.0131.i, ptr %i.bd, align 8, !tbaa !888
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i
  %indvars.iv193.i = phi i32 [ %indvars.iv.next194.i, %bb.j ], [ 1, %.thread.i ] ; 3 uses
  %.0130.i = phi i32 [ %i.be, %bb.j ], [ 0, %.thread.i ] ; 5 uses
  %.0122.i = phi ptr [ %i.bi, %bb.j ], [ %.0.i.i, %.thread.i ]
  %i.be = add i32 %.0130.i, 1                     ; 2 uses
  %i.bf = getelementptr i8, ptr %.0122.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !158
  %i.bh = getelementptr i8, ptr %i.bg, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !175 ; 2 uses
  %.not140.i = icmp eq ptr %i.bi, null
  %indvars.iv.next194.i = add i32 %indvars.iv193.i, 1
  br i1 %.not140.i, label %bb.k, label %bb.j, !llvm.loop !858

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 840 ; 2 uses
  %i.bk = add i32 %.0130.i, 2
  %i.bl = sext i32 %i.bk to i64
  %i.bm = call zeroext i1 @pm_options_scopes_init(ptr noundef nonnull %i.bc, i64 noundef %i.bl) #23 ; 0 uses
  %i.bn = call ptr @rb_enc_get(i64 noundef %0) #23
  %i.bo = icmp ult i32 %.0130.i, 2147483647       ; 2 uses
  br i1 %i.bo, label %.lr.ph170.i, label %._crit_edge171.i

.lr.ph170.i:                                      ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 792
  %wide.trip.count195.i = zext i32 %indvars.iv193.i to i64
  br label %bb.l

._crit_edge171.i:                                 ; preds = %._crit_edge.i, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 792 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !889
  %i.bs = sext i32 %i.be to i64
  %i.bt = getelementptr [24 x i8], ptr %i.br, i64 %i.bs
  %i.bu = call zeroext i1 @pm_options_scope_init(ptr noundef %i.bt, i64 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.bv = load i8, ptr @ruby_vm_keep_script_lines, align 1, !tbaa !279, !range !147, !noundef !101
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = select i1 %i.bw, ptr %i.i, ptr null
  %i.by = call i64 @pm_parse_string(ptr noundef nonnull %6, i64 noundef %0, i64 noundef %.1.i, ptr noundef %i.bx) #23 ; 2 uses
  %.not141.i = icmp eq i64 %i.by, 4
  br i1 %.not141.i, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %._crit_edge171.i
  br i1 %i.bo, label %.lr.ph179.i, label %._crit_edge180.i

.lr.ph179.i:                                      ; preds = %.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 576 ; 2 uses
  %wide.trip.count206.i = zext i32 %indvars.iv193.i to i64
  br label %bb.aa

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph170.i
  %indvars.iv190.i = phi i64 [ 0, %.lr.ph170.i ], [ %indvars.iv.next191.i, %._crit_edge.i ] ; 2 uses
  %.1123168.i = phi ptr [ %.0.i.i, %.lr.ph170.i ], [ %i.cq, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ca = ptrtoint ptr %.1123168.i to i64
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !50
  %i.cb = getelementptr i8, ptr %.1123168.i, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cd = getelementptr i8, ptr %i.cc, i64 240
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !211 ; 3 uses
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !889
  %i.cg = trunc nuw nsw i64 %indvars.iv190.i to i32
  %i.ch = sub i32 %.0130.i, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [24 x i8], ptr %i.cf, i64 %i.ci ; 3 uses
  %i.ck = sext i32 %i.ce to i64
  %i.cl = call zeroext i1 @pm_options_scope_init(ptr noundef %i.cj, i64 noundef %i.ck) #23 ; 0 uses
  %i.cm = icmp sgt i32 %i.ce, 0
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cn = getelementptr i8, ptr %i.cj, i64 8
  %wide.trip.count.i = zext nneg i32 %i.ce to i64
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.y, %bb.l
  %.0125.lcssa.i = phi i8 [ 0, %bb.l ], [ %.2127.i, %bb.y ]
  call void @pm_options_scope_forwarding_set(ptr noundef %i.cj, i8 noundef zeroext %.0125.lcssa.i) #23
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cp = getelementptr i8, ptr %i.co, i64 168
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store ptr %i.e, ptr %i.h, align 8, !tbaa !112
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #23, !srcloc !890
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %i.cs = load volatile i64, ptr %i.cr, align 8, !tbaa !50 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next191.i, %wide.trip.count195.i
  br i1 %exitcond196.not.i, label %._crit_edge171.i, label %bb.l, !llvm.loop !859

bb.m:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.y ] ; 3 uses
  %.0125165.i = phi i8 [ 0, %.lr.ph.i ], [ %.2127.i, %bb.y ] ; 7 uses
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !892
  %i.cu = getelementptr [24 x i8], ptr %i.ct, i64 %indvars.iv.i ; 5 uses
  %i.cv = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cw = getelementptr i8, ptr %i.cv, i64 144
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !388
  %i.cy = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !50 ; 3 uses
  %i.da = call i32 @rb_is_local_id(i64 noundef %i.cz) #66
  %.not145.i = icmp eq i32 %i.da, 0
  br i1 %.not145.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.db = call i64 @rb_id2str(i64 noundef %i.cz) #23 ; 3 uses
  store i64 %i.db, ptr %i.f, align 8, !tbaa !50
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !114
  %i.de = and i64 %i.dd, 8192
  %.not.i.i = icmp eq i64 %i.de, 0
  %i.df = getelementptr i8, ptr %i.dc, i64 24     ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !64
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.o, %bb.n
  %i.dh = phi ptr [ %i.dg, %bb.o ], [ %i.df, %bb.n ] ; 4 uses
  %i.di = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dh) #56 ; 3 uses
  %i.dj = icmp eq i64 %i.di, 2
  br i1 %i.dj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %RSTRING_PTR.exit.i
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !64
  %i.dl = icmp eq i8 %i.dk, 95
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr i8, ptr %i.dh, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !64
  %i.do = add i8 %i.dn, -49
  %or.cond.i = icmp ult i8 %i.do, 9
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %RSTRING_PTR.exit.i
  %i.dp = call i32 @rb_enc_str_coderange_scan(i64 noundef %i.db, ptr noundef %i.bn) #23
  %i.dq = icmp eq i32 %i.dp, 3145728
  br i1 %i.dq, label %bb.s, label %.critedge.i

.critedge.i:                                      ; preds = %bb.r
  %i.dr = add i64 %i.di, 1                        ; 2 uses
  %i.ds = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.dr) #59 ; 2 uses
  %i.dt = call i64 @strlcpy(ptr noundef nonnull %i.ds, ptr noundef nonnull dereferenceable(1) %i.dh, i64 noundef %i.dr) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %i.f, ptr %i.g, align 8, !tbaa !112
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #23, !srcloc !893
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.dv = load volatile i64, ptr %i.du, align 8, !tbaa !50 ; 0 uses
  call void @pm_string_owned_init(ptr noundef %i.cu, ptr noundef nonnull %i.ds, i64 noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.y

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.m
  switch i64 %i.cz, label %bb.y [
    i64 42, label %bb.u
    i64 134, label %bb.v
    i64 38, label %bb.w
    i64 129, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.dw = or i8 %.0125165.i, 1
  call void @pm_string_constant_init(ptr noundef %i.cu, ptr noundef nonnull @.str.238, i64 noundef 1) #23
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dx = or i8 %.0125165.i, 2
  call void @pm_string_constant_init(ptr noundef %i.cu, ptr noundef nonnull @.str.151, i64 noundef 1) #23
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.dy = or i8 %.0125165.i, 4
  call void @pm_string_constant_init(ptr noundef %i.cu, ptr noundef nonnull @.str.239, i64 noundef 1) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.dz = or i8 %.0125165.i, 8
  call void @pm_string_constant_init(ptr noundef %i.cu, ptr noundef nonnull @.str.240, i64 noundef 1) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %.critedge.i
  %.2127.i = phi i8 [ %.0125165.i, %bb.s ], [ %.0125165.i, %.critedge.i ], [ %i.dw, %bb.u ], [ %i.dx, %bb.v ], [ %i.dy, %bb.w ], [ %i.dz, %bb.x ], [ %.0125165.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !860

bb.z:                                             ; preds = %._crit_edge171.i
  call void @pm_parse_result_free(ptr noundef nonnull %6) #23
  call void @rb_exc_raise(i64 noundef %i.by) #42
  unreachable

._crit_edge180.i:                                 ; preds = %._crit_edge175.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.ea = call ptr @pm_iseq_new_eval(ptr noundef nonnull %i.bj, i64 noundef %i.t, i64 noundef %.1.i, i64 noundef 4, i32 noundef %.0152156.i, ptr noundef %.0.i.i, i32 noundef %.06.i.i.i, ptr noundef nonnull %i.j) #23 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 864
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !894 ; 2 uses
  %.not142181.i = icmp eq ptr %i.ec, null
  br i1 %.not142181.i, label %._crit_edge185.i, label %.lr.ph184.i

bb.aa:                                            ; preds = %._crit_edge175.i, %.lr.ph179.i
  %indvars.iv202.i = phi i64 [ 0, %.lr.ph179.i ], [ %indvars.iv.next203.i, %._crit_edge175.i ] ; 2 uses
  %.0121177.i = phi ptr [ %i.bj, %.lr.ph179.i ], [ %i.ed, %._crit_edge175.i ]
  %.2176.i = phi ptr [ %.0.i.i, %.lr.ph179.i ], [ %i.ey, %._crit_edge175.i ]
  %i.ed = call noalias nonnull dereferenceable(152) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 152) #61 ; 7 uses
  %i.ee = load ptr, ptr %i.bq, align 8, !tbaa !889
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 136
  store i32 %.0131.i, ptr %i.ef, align 8, !tbaa !895
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  store ptr %6, ptr %i.eg, align 8, !tbaa !896
  %i.eh = call ptr @rb_st_init_numtable() #23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 128 ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !897
  %i.ej = getelementptr i8, ptr %.2176.i, i64 16  ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !158
  %i.el = getelementptr i8, ptr %i.ek, i64 240
  %i.em = load i32, ptr %i.el, align 8, !tbaa !211 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 112
  store i32 %i.em, ptr %i.en, align 8, !tbaa !898
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 56 ; 2 uses
  call void @pm_constant_id_list_init(ptr noundef nonnull %i.eo) #23
  %i.ep = icmp sgt i32 %i.em, 0
  br i1 %i.ep, label %.lr.ph174.i, label %._crit_edge175.i

.lr.ph174.i:                                      ; preds = %bb.aa
  %i.eq = trunc nuw nsw i64 %indvars.iv202.i to i32
  %i.er = sub i32 %.0130.i, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [24 x i8], ptr %i.ee, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %wide.trip.count200.i = zext nneg i32 %i.em to i64
  br label %bb.ab

._crit_edge175.i:                                 ; preds = %bb.ag, %bb.aa
  %i.ev = getelementptr i8, ptr %.0121177.i, i64 24
  store ptr %i.ed, ptr %i.ev, align 8, !tbaa !899
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !158
  %i.ex = getelementptr i8, ptr %i.ew, i64 168
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !175
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next203.i, %wide.trip.count206.i
  br i1 %exitcond207.not.i, label %._crit_edge180.i, label %bb.aa, !llvm.loop !861

bb.ab:                                            ; preds = %bb.ag, %.lr.ph174.i
  %indvars.iv197.i = phi i64 [ 0, %.lr.ph174.i ], [ %indvars.iv.next198.i, %bb.ag ] ; 3 uses
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !892
  %i.fa = getelementptr [24 x i8], ptr %i.ez, i64 %indvars.iv197.i ; 2 uses
  %i.fb = call ptr @pm_string_source(ptr noundef %i.fa) #23 ; 3 uses
  %i.fc = call i64 @pm_string_length(ptr noundef %i.fa) #23 ; 2 uses
  switch i64 %i.fc, label %bb.ae [
    i64 0, label %bb.ag
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !64
  %switch.tableidx = add i8 %i.fd, -38            ; 3 uses
  %i.fe = icmp ult i8 %switch.tableidx, 21
  br i1 %i.fe, label %switch.hole_check, label %bb.ad

bb.ad:                                            ; preds = %switch.hole_check, %bb.ac
  %i.ff = call i32 @pm_constant_pool_insert_constant(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.fb, i64 noundef 1) #23
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.fg = call i32 @pm_constant_pool_insert_constant(ptr noundef nonnull %i.bz, ptr noundef %i.fb, i64 noundef %i.fc) #23
  br label %bb.af

switch.hole_check:                                ; preds = %bb.ac
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1048849, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ad

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.eval_make_iseq, i64 %i.fh
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.af

bb.af:                                            ; preds = %switch.lookup, %bb.ae, %bb.ad
  %.0117.i = phi i32 [ %i.ff, %bb.ad ], [ %i.fg, %bb.ae ], [ %switch.load, %switch.lookup ] ; 2 uses
  %i.fi = load ptr, ptr %i.ei, align 8, !tbaa !897
  %i.fj = zext i32 %.0117.i to i64
  %i.fk = call i32 @rb_st_insert(ptr noundef %i.fi, i64 noundef %i.fj, i64 noundef %indvars.iv197.i) #23 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.1118.i = phi i32 [ %.0117.i, %bb.af ], [ 0, %bb.ab ]
  %i.fl = call zeroext i1 @pm_constant_id_list_append(ptr noundef nonnull %i.eo, i32 noundef %.1118.i) #23 ; 0 uses
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %indvars.iv.next198.i, %wide.trip.count200.i
  br i1 %exitcond201.not.i, label %._crit_edge175.i, label %bb.ab, !llvm.loop !862

.lr.ph184.i:                                      ; preds = %._crit_edge180.i, %.lr.ph184.i
  %.0116182.i = phi ptr [ %i.fn, %.lr.ph184.i ], [ %i.ec, %._crit_edge180.i ] ; 4 uses
  %i.fm = getelementptr i8, ptr %.0116182.i, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !899 ; 2 uses
  %i.fo = getelementptr i8, ptr %.0116182.i, i64 56
  call void @pm_constant_id_list_free(ptr noundef %i.fo) #23
  call void @pm_scope_node_destroy(ptr noundef nonnull %.0116182.i) #23
  call void @ruby_xfree(ptr noundef nonnull %.0116182.i) #23
  %.not142.i = icmp eq ptr %i.fn, null
  br i1 %.not142.i, label %._crit_edge185.i, label %.lr.ph184.i, !llvm.loop !863

._crit_edge185.i:                                 ; preds = %.lr.ph184.i, %._crit_edge180.i
  call void @pm_parse_result_free(ptr noundef nonnull %6) #23
  %i.fp = load i32, ptr %i.j, align 4, !tbaa !48  ; 2 uses
  %.not143.i = icmp eq i32 %i.fp, 0
  br i1 %.not143.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge185.i
  call void @rb_jump_tag(i32 noundef %i.fp) #42
  unreachable

bb.ai:                                            ; preds = %._crit_edge185.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !66
  store volatile ptr %i.fr, ptr %i.c, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !66 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fs = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i149.i = load ptr, ptr %i.fs, align 8, !tbaa !77, !nonnull !101, !noundef !101
  %i.ft = getelementptr i8, ptr %.val.i149.i, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !274 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %i.fw = getelementptr i8, ptr %i.fu, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !389
  %i.fy = and i32 %i.fx, 8192
  %.not.i150.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i150.i, label %pm_eval_make_iseq.exit, label %bb.aj, !prof !109

bb.aj:                                            ; preds = %bb.ai
  %i.fz = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !107 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !111
  %i.gd = icmp eq i64 %0, 4
  %i.ge = ptrtoint ptr %i.ea to i64               ; 2 uses
  br i1 %i.gd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gf = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %0, i64 noundef %i.ge) #23
  %.pre.i.i = load ptr, ptr %i.fz, align 8, !tbaa !107
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gg = phi ptr [ %.pre.i.i, %bb.ak ], [ %i.ga, %bb.aj ]
  %i.gh = phi i64 [ %i.gf, %bb.ak ], [ %i.ge, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 8192, ptr %5, align 8, !tbaa !391
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.gi, align 8, !tbaa !392
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.gg, ptr %i.gj, align 8, !tbaa !393
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.gc, ptr %i.gk, align 8, !tbaa !394
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i8 0, i64 24, i1 false)
  store i64 %i.gh, ptr %i.gm, align 8, !tbaa !396
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 36, ptr %i.gn, align 8, !tbaa !397
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.go, align 8, !tbaa !398
  call void @rb_exec_event_hooks(ptr noundef nonnull %5, ptr noundef %i.fv, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %pm_eval_make_iseq.exit

pm_eval_make_iseq.exit:                           ; preds = %bb.ai, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %rb_exec_event_hook_script_compiled.exit

bb.am:                                            ; preds = %bb.a
  %i.gp = tail call i64 @rb_parser_new() #23      ; 3 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.ao, %bb.am
  %.tr.i = phi ptr [ %3, %bb.am ], [ %i.gw, %bb.ao ] ; 3 uses
  %i.gq = getelementptr i8, ptr %.tr.i, i64 24
  %.val.i = load i32, ptr %i.gq, align 8, !tbaa !357
  switch i32 %.val.i, label %bb.ap [
    i32 0, label %bb.an
    i32 3, label %bb.ao
    i32 1, label %vm_block_iseq.exit
    i32 2, label %vm_block_iseq.exit
  ]

bb.an:                                            ; preds = %tailrecurse.i
  %i.gr = getelementptr i8, ptr %.tr.i, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !64
  br label %vm_block_iseq.exit

bb.ao:                                            ; preds = %tailrecurse.i
  %i.gt = load i64, ptr %.tr.i, align 8, !tbaa !64
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = getelementptr i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !355
  br label %tailrecurse.i

bb.ap:                                            ; preds = %tailrecurse.i
  unreachable

vm_block_iseq.exit:                               ; preds = %tailrecurse.i, %tailrecurse.i, %bb.an
  %.0.i35 = phi ptr [ %i.gs, %bb.an ], [ null, %tailrecurse.i ], [ null, %tailrecurse.i ] ; 3 uses
  %i.gx = tail call i32 @rb_get_coverage_mode() #23
  %i.gy = lshr i32 %i.gx, 4
  %.lobit = and i32 %i.gy, 1                      ; 4 uses
  %i.gz = getelementptr i8, ptr %3, i64 24
  %.val.i1.i = load i32, ptr %i.gz, align 8, !tbaa !357
  %i.ha = icmp eq i32 %.val.i1.i, 3
  br i1 %i.ha, label %tailrecurse.i.i37, label %vm_block_ep.exit.i

vm_block_ep.exit.i:                               ; preds = %tailrecurse.i.i37, %vm_block_iseq.exit
  %.tr.i.lcssa.i = phi ptr [ %3, %vm_block_iseq.exit ], [ %i.hh, %tailrecurse.i.i37 ]
  %i.hb = getelementptr i8, ptr %.tr.i.lcssa.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !64 ; 2 uses
  %.05.val10.i.i = load i64, ptr %i.hc, align 8, !tbaa !50 ; 2 uses
  %i.hd = and i64 %.05.val10.i.i, 16
  %.not11.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %compute_isolated_depth_from_block.exit

tailrecurse.i.i37:                                ; preds = %vm_block_iseq.exit, %tailrecurse.i.i37
  %.tr.i2.i = phi ptr [ %i.hh, %tailrecurse.i.i37 ], [ %3, %vm_block_iseq.exit ]
end_hunk_1
