Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout:bb.a
  %.sroa.0519.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !136899 ; 6 uses
  %.sroa.6520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6520.0.copyload.i = load i64, ptr %.sroa.6520.0..sroa_idx.i, align 8, !noalias !136899 ; 10 uses
  %.sroa.9522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9522.0.copyload.i = load i64, ptr %.sroa.9522.0..sroa_idx.i, align 8, !noalias !136899
  %.sroa.10523.0.copyload.i = load i64, ptr %i.gp, align 8, !noalias !136899
  call void @llvm.experimental.noalias.scope.decl(metadata !136923)
  %.old1.not.i.i = icmp eq i64 %8, 0
  br i1 %.old1.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aj
  %i.hi = icmp eq i64 %.fr219.i.i, 0
  %.fr.i.i = freeze i64 %.sroa.9522.0.copyload.i
  %i.hj = icmp eq i64 %.fr.i.i, 0
  %i.hk = add i32 %6, 1
  %i.hl = call double @llvm.powi.f64.i32(double %.sroa.046.0.i, i32 %i.hk)
  %i.hm = fmul double %i.hl, -2.000000e-01
  br label %bb.an

bb.ak:                                            ; preds = %.invoke.i.i, %bb.bw, %select.unfold.i.i.i.i.i, %bb.bi, %bb.bb
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %bb.bh, %bb.ak
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hn, %bb.ak ], [ %i.md, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.md, %bb.bh ] ; 2 uses
  %i.ho = icmp eq i64 %.sroa.6520.0.copyload.i, 0
  br i1 %i.ho, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i: ; preds = %.body.i.i
  %i.hp = mul i64 %.sroa.6520.0.copyload.i, 24
  %i.hq = icmp slt i64 %.sroa.6520.0.copyload.i, 768614336404564650
  call void @llvm.assume(i1 %i.hq), !noalias !136924
  %i.hr = and i64 %i.hp, -16                      ; 2 uses
  %i.hs = add i64 %i.hr, 32                       ; 2 uses
  %i.ht = add nsw i64 %.sroa.6520.0.copyload.i, 17
  %i.hu = add i64 %i.ht, %i.hs                    ; 4 uses
  %i.hv = icmp uge i64 %i.hu, %i.hs
  %i.hw = icmp ult i64 %i.hu, 9223372036854775793
  call void @llvm.assume(i1 %i.hv), !noalias !136924
  call void @llvm.assume(i1 %i.hw), !noalias !136924
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload.i) ], !noalias !136924
  %i.hx = icmp eq i64 %i.hu, 0
  br i1 %i.hx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i
  %i.hy = sub i64 -32, %i.hr
  %i.hz = getelementptr inbounds i8, ptr %.sroa.0519.0.copyload.i, i64 %i.hy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hz, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !136925
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i, %.body.i.i
  %i.ia = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.ia, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i
  %i.ib = shl i64 %.sroa.9.0.i, 3
  %i.ic = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ic), !noalias !136924
  %i.id = and i64 %i.ib, -16                      ; 2 uses
  %i.ie = add i64 %i.id, 16                       ; 2 uses
  %i.if = add nsw i64 %.sroa.9.0.i, 17
  %i.ig = add i64 %i.if, %i.ie                    ; 4 uses
  %i.ih = icmp uge i64 %i.ig, %i.ie
  %i.ii = icmp ult i64 %i.ig, 9223372036854775793
  call void @llvm.assume(i1 %i.ih), !noalias !136924
  call void @llvm.assume(i1 %i.ii), !noalias !136924
  %i.ij = icmp eq i64 %i.ig, 0
  br i1 %i.ij, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i
  %i.ik = sub nuw nsw i64 -16, %i.id
  %i.il = getelementptr inbounds i8, ptr %.sroa.0451.0.i, i64 %i.ik
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.il, i64 noundef %i.ig, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !136925
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i: ; preds = %bb.am, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i
  %i.im = icmp eq i64 %.sroa.49.0.i.i939.i, 0
  br i1 %i.im, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.an:                                            ; preds = %.sink.split.i.i.i, %.preheader.i.i
  %.pre.i228.i.i = phi double [ %.pre.i227.i.i, %.sink.split.i.i.i ], [ f0x3FB70A3D70A3D70B, %.preheader.i.i ] ; 4 uses
  %i.in = phi i64 [ %i.ko, %.sink.split.i.i.i ], [ 0, %.preheader.i.i ]
  %i.io = phi double [ %.sroa.03.0.ph.i.i, %.sink.split.i.i.i ], [ +inf, %.preheader.i.i ]
  %.sroa.033.0.i.i = phi i64 [ %i.ip, %.sink.split.i.i.i ], [ 0, %.preheader.i.i ]
  %i.ip = add nuw i64 %.sroa.033.0.i.i, 1         ; 2 uses
  %i.iq = insertelement <2 x double> poison, double %.pre.i228.i.i, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i: ; preds = %bb.ce, %bb.an
  %.sroa.7.0.ph.i.i = phi i64 [ %.lcssa146148.i.i, %bb.ce ], [ 0, %bb.an ] ; 2 uses
  %.sroa.090.0.ph.i.i = phi ptr [ %.lcssa149151.i.i, %bb.ce ], [ %.val199.i, %bb.an ] ; 2 uses
  %.sroa.05.0.ph.i.i = phi i1 [ %spec.select.i.i, %bb.ce ], [ true, %bb.an ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi double [ %i.sb, %bb.ce ], [ 0.000000e+00, %bb.an ] ; 3 uses
  %i.is = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !136925 ; 2 uses
  %i.it = zext i64 %i.is to i128
  br i1 %i.hi, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i, %bb.ao
  %i.iu = phi i64 [ %i.iy, %bb.ao ], [ %.sroa.7.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.iv = phi ptr [ %i.ix, %bb.ao ], [ %.sroa.090.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.iw = icmp eq ptr %i.iv, %i.df
  br i1 %i.iw, label %.split.us.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.iy = add i64 %i.iu, 1                        ; 2 uses
  %.val.i.us.i.i = load ptr, ptr %i.iv, align 8, !noalias !136926, !noundef !67
  %.not.i.not.i.us.i.i = icmp eq ptr %.val.i.us.i.i, null
  br i1 %.not.i.not.i.us.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i, label %select.unfold.loopexit138.split.us.i.i

select.unfold.loopexit138.split.us.i.i:           ; preds = %bb.ao
  %i.iz = and i64 %i.iu, 4294967295
  br label %select.unfold.i.i

.loopexit.i.i:                                    ; preds = %.sink.split.i.i.i, %bb.aj
  %i.ja = icmp eq i64 %.fr219.i.i, 0
  br i1 %i.ja, label %bb.ay, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge
  %i.jb = phi i64 [ %i.jf, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ], [ %.sroa.7.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.jc = phi ptr [ %i.je, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ], [ %.sroa.090.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.jd = icmp eq ptr %i.jc, %i.df
  br i1 %i.jd, label %.split.us.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jf = add i64 %i.jb, 1                        ; 2 uses
  %.val.i.i251.i = load ptr, ptr %i.jc, align 8, !noalias !136926, !noundef !67
  %.not.i.not.i.i252.i = icmp eq ptr %.val.i.i251.i, null
  br i1 %.not.i.not.i.i252.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, label %bb.aq

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge: ; preds = %.lr.ph.i.i.i.i, %bb.ap
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.jg = and i64 %i.jb, 4294967295               ; 3 uses
  %i.jh = xor i64 %i.jg, %.sroa.12458.sroa.8.0.i
  %i.ji = zext i64 %i.jh to i128
  %i.jj = mul nuw i128 %i.ji, %i.it               ; 2 uses
  %i.jk = lshr i128 %i.jj, 64
  %i.jl = xor i128 %i.jk, %i.jj
  %i.jm = trunc i128 %i.jl to i64                 ; 2 uses
  %i.jn = lshr i64 %i.jm, 57
  %i.jo = trunc nuw nsw i64 %i.jn to i8
  %i.jp = insertelement <16 x i8> poison, i8 %i.jo, i64 0
  %i.jq = shufflevector <16 x i8> %i.jp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %i.kh, %bb.at ]
  %.pn.i.i.i.i = phi i64 [ %i.jm, %bb.aq ], [ %i.ki, %bb.at ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %.sroa.9.0.i ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0451.0.i, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.jr, align 1, !noalias !136927 ; 2 uses
  %i.js = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.jq
  %i.jt = bitcast <16 x i1> %i.js to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.jt, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar, %bb.as
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.kg, %bb.as ], [ %i.jt, %bb.ar ] ; 3 uses
  %i.ju = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.jv = zext nneg i16 %i.ju to i64
  %i.jw = add i64 %.sroa.01.0.i.i.i.i.i, %i.jv
  %i.jx = and i64 %i.jw, %.sroa.9.0.i
  %i.jy = sub nsw i64 0, %i.jx
  %i.jz = getelementptr inbounds [8 x i8], ptr %.sroa.0451.0.i, i64 %i.jy
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -8
  %.val2.i.i.i.i.i = load i64, ptr %i.ka, align 8, !noalias !136928, !noundef !67
  %i.kb = icmp eq i64 %i.jg, %.val2.i.i.i.i.i
  br i1 %i.kb, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, label %bb.as, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %bb.ar
  %i.kc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.kd = bitcast <16 x i1> %i.kc to i16
  %i.ke = icmp eq i16 %i.kd, 0
  br i1 %i.ke, label %bb.at, label %select.unfold.i.i, !prof !71

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kf = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.kg = and i16 %i.kf, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.kg, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i
  %i.kh = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ki = add i64 %.sroa.01.0.i.i.i.i.i, %i.kh
  br label %bb.ar

.split.us.i.i:                                    ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i
  %i.kj = fcmp olt double %.sroa.03.0.ph.i.i, %i.io
  br i1 %i.kj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.split.us.i.i
  %i.kk = fmul double %.pre.i228.i.i, 9.000000e-01
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %.split.us.i.i
  %i.kl = add i64 %i.in, 1                        ; 2 uses
  %i.km = icmp ugt i64 %i.kl, 4
  br i1 %i.km, label %bb.aw, label %.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.kn = fdiv double %.pre.i228.i.i, 9.000000e-01
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aw, %bb.av, %bb.au
  %.pre.i227.i.i = phi double [ %.pre.i228.i.i, %bb.av ], [ %i.kn, %bb.aw ], [ %i.kk, %bb.au ]
  %i.ko = phi i64 [ %i.kl, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.au ]
  %i.kp = icmp uge i64 %i.ip, %8
  %or.cond.not.i.i = select i1 %.sroa.05.0.ph.i.i, i1 true, i1 %i.kp
  br i1 %or.cond.not.i.i, label %.loopexit.i.i, label %bb.an

_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block623, %bb.bk, %bb.bj, %.loopexit.i.i
  %i.kq = icmp eq i64 %.sroa.6520.0.copyload.i, 0
  br i1 %i.kq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i
  %i.kr = mul i64 %.sroa.6520.0.copyload.i, 24
  %i.ks = icmp slt i64 %.sroa.6520.0.copyload.i, 768614336404564650
  call void @llvm.assume(i1 %i.ks)
  %i.kt = and i64 %i.kr, -16                      ; 2 uses
  %i.ku = add i64 %i.kt, 32                       ; 2 uses
  %i.kv = add nsw i64 %.sroa.6520.0.copyload.i, 17
  %i.kw = add i64 %i.kv, %i.ku                    ; 4 uses
  %i.kx = icmp uge i64 %i.kw, %i.ku
  %i.ky = icmp ult i64 %i.kw, 9223372036854775793
  call void @llvm.assume(i1 %i.kx)
  call void @llvm.assume(i1 %i.ky)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload.i) ]
  %i.kz = icmp eq i64 %i.kw, 0
  br i1 %i.kz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.la = sub i64 -32, %i.kt
  %i.lb = getelementptr inbounds i8, ptr %.sroa.0519.0.copyload.i, i64 %i.la
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lb, i64 noundef %i.kw, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !136925
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ay:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !136925
  call void @llvm.experimental.noalias.scope.decl(metadata !136929)
  call void @llvm.experimental.noalias.scope.decl(metadata !136930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !136931
  %i.lc = icmp eq i64 %.val200.i, 0
  br i1 %i.lc, label %._crit_edge609, label %.lr.ph608

bb.az:                                            ; preds = %.lr.ph608
  %i.ld = icmp eq ptr %i.lg, %i.df
  br i1 %i.ld, label %._crit_edge609, label %.lr.ph608

.lr.ph608:                                        ; preds = %bb.ay, %bb.az
  %i.le = phi ptr [ %i.lg, %bb.az ], [ %.val199.i, %bb.ay ] ; 2 uses
  %i.lf = phi i64 [ %i.lh, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 3 uses
  %i.lh = add nuw nsw i64 %i.lf, 1                ; 2 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.le, align 8, !noalias !136932, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.az, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph608
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !136933
  %i.li = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136933 ; 4 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.bb, label %bb.bc

._crit_edge609:                                   ; preds = %bb.az, %bb.ay
  store i64 0, ptr %i.g, align 8, !alias.scope !136934, !noalias !136935
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.lk, align 8, !alias.scope !136934, !noalias !136935
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.ll, align 8, !alias.scope !136934, !noalias !136935
  br label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #61
          to label %.noexc.i.i unwind label %bb.ak, !noalias !136925

.noexc.i.i:                                       ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.lm = and i64 %i.lf, 4294967295
  store i64 %i.lm, ptr %i.li, align 8, !noalias !136931
  store i64 4, ptr %i.f, align 8, !noalias !136931
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.li, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !136931
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !136931
  call void @llvm.experimental.noalias.scope.decl(metadata !136936)
  call void @llvm.experimental.noalias.scope.decl(metadata !136937)
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc.i.i.i.i, %bb.bc
  %i.ln = phi ptr [ %i.ma, %.noexc.i.i.i.i ], [ %i.li, %bb.bc ]
  %i.lo = phi i64 [ %i.mc, %.noexc.i.i.i.i ], [ 1, %bb.bc ] ; 5 uses
  %i.lp = phi i64 [ %i.lv, %.noexc.i.i.i.i ], [ %i.lh, %bb.bc ]
  %i.lq = phi ptr [ %i.lu, %.noexc.i.i.i.i ], [ %i.lg, %bb.bc ]
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.lr = phi i64 [ %i.lv, %bb.bf ], [ %i.lp, %bb.bd ] ; 2 uses
  %i.ls = phi ptr [ %i.lu, %bb.bf ], [ %i.lq, %bb.bd ] ; 3 uses
  %i.lt = icmp eq ptr %i.ls, %i.df
  br i1 %i.lt, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3c_5types3any5PyAnyEENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtB27_10UndirectedNtB4e_15AttractiveForceNtB4e_14RepulsiveForceNtB4e_21AdaptiveCoolingSchemeEs1_0EE11spec_extendB4i_.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = add i64 %i.lr, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ls, align 8, !noalias !136938, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lw = and i64 %i.lr, 4294967295
  %i.lx = icmp samesign ult i64 %i.lo, 1152921504606846976
  call void @llvm.assume(i1 %i.lx)
  %i.ly = load i64, ptr %i.f, align 8, !range !70, !alias.scope !136939, !noalias !136940, !noundef !67
  %i.lz = icmp eq i64 %i.lo, %i.ly
  br i1 %i.lz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bg
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.lo, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.bh, !noalias !136931

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !136939, !noalias !136940
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.bg
  %i.ma = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.ln, %bb.bg ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.lo
  store i64 %i.lw, ptr %i.mb, align 8, !noalias !136941
  %i.mc = add nuw nsw i64 %i.lo, 1                ; 2 uses
  store i64 %i.mc, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !136939, !noalias !136940
  br label %bb.bd

bb.bh:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.md = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136942)
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !136942, !noalias !136931 ; 2 uses
  %i.me = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.me, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.bh
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !136942, !noalias !136931, !nonnull !67, !noundef !67
  %i.mf = shl nuw i64 %.val.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.mf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136943
  br label %.body.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3c_5types3any5PyAnyEENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtB27_10UndirectedNtB4e_15AttractiveForceNtB4e_14RepulsiveForceNtB4e_21AdaptiveCoolingSchemeEs1_0EE11spec_extendB4i_.exit.i.i.i.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !136935
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3c_5types3any5PyAnyEENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtB27_10UndirectedNtB4e_15AttractiveForceNtB4e_14RepulsiveForceNtB4e_21AdaptiveCoolingSchemeEs1_0EE11spec_extendB4i_.exit.i.i.i.i, %._crit_edge609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !136931
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %i.et, i64 noundef %.sroa.49.0.i.i939.i, double noundef %12, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.bj unwind label %bb.ak, !noalias !136925

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !136925
  %i.mg = load i64, ptr %13, align 8, !range !68, !alias.scope !136944, !noalias !136945, !noundef !67
  %i.mh = trunc nuw i64 %i.mg to i1
  br i1 %i.mh, label %bb.bk, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.mi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mj = load <2 x double>, ptr %i.mi, align 8, !alias.scope !136944, !noalias !136945 ; 3 uses
  %.idx.i.i.i = shl nsw i64 %.sroa.49.0.i.i939.i, 4 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i
  %i.ml = icmp eq i64 %.sroa.49.0.i.i939.i, 0
  br i1 %i.ml, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bk
  %i.mm = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.mn = lshr exact i64 %i.mm, 4
  %i.mo = add nuw nsw i64 %i.mn, 1                ; 2 uses
  %min.iters.check613 = icmp ult i64 %i.mm, 48
  br i1 %min.iters.check613, label %.lr.ph.i.i.i.preheader628, label %vector.ph614

vector.ph614:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec615 = and i64 %i.mo, 2305843009213693950  ; 3 uses
  %i.mp = shl i64 %n.vec615, 4
  %i.mq = getelementptr i8, ptr %i.et, i64 %i.mp
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next622, %vector.body616 ] ; 2 uses
  %i.mr = shl i64 %index617, 4                    ; 2 uses
  %next.gep618 = getelementptr i8, ptr %i.et, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %i.et, i64 %i.mr
  %next.gep619 = getelementptr i8, ptr %i.ms, i64 16 ; 2 uses
  %wide.load620 = load <2 x double>, ptr %next.gep618, align 8, !alias.scope !136946, !noalias !136925
  %wide.load621 = load <2 x double>, ptr %next.gep619, align 8, !alias.scope !136946, !noalias !136925
  %i.mt = fadd <2 x double> %i.mj, %wide.load620
  %i.mu = fadd <2 x double> %i.mj, %wide.load621
  store <2 x double> %i.mt, ptr %next.gep618, align 8, !alias.scope !136946, !noalias !136925
  store <2 x double> %i.mu, ptr %next.gep619, align 8, !alias.scope !136946, !noalias !136925
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout:bb.a
  %.sroa.0519.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !137504 ; 6 uses
  %.sroa.6520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6520.0.copyload.i = load i64, ptr %.sroa.6520.0..sroa_idx.i, align 8, !noalias !137504 ; 10 uses
  %.sroa.9522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9522.0.copyload.i = load i64, ptr %.sroa.9522.0..sroa_idx.i, align 8, !noalias !137504
  %.sroa.10523.0.copyload.i = load i64, ptr %i.gq, align 8, !noalias !137504
  call void @llvm.experimental.noalias.scope.decl(metadata !137528)
  %.old1.not.i.i = icmp eq i64 %8, 0
  br i1 %.old1.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aj
  %i.hj = icmp eq i64 %.fr219.i.i, 0
  %.fr.i.i = freeze i64 %.sroa.9522.0.copyload.i
  %i.hk = icmp eq i64 %.fr.i.i, 0
  %i.hl = add i32 %6, 1
  %i.hm = call double @llvm.powi.f64.i32(double %.sroa.046.0.i, i32 %i.hl)
  %i.hn = fmul double %i.hm, -2.000000e-01
  br label %bb.an

bb.ak:                                            ; preds = %.invoke.i.i, %bb.bw, %select.unfold.i.i.i.i.i, %bb.bi, %bb.bb
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %bb.bh, %bb.ak
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ho, %bb.ak ], [ %i.me, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.me, %bb.bh ] ; 2 uses
  %i.hp = icmp eq i64 %.sroa.6520.0.copyload.i, 0
  br i1 %i.hp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i: ; preds = %.body.i.i
  %i.hq = mul i64 %.sroa.6520.0.copyload.i, 24
  %i.hr = icmp slt i64 %.sroa.6520.0.copyload.i, 768614336404564650
  call void @llvm.assume(i1 %i.hr), !noalias !137529
  %i.hs = and i64 %i.hq, -16                      ; 2 uses
  %i.ht = add i64 %i.hs, 32                       ; 2 uses
  %i.hu = add nsw i64 %.sroa.6520.0.copyload.i, 17
  %i.hv = add i64 %i.hu, %i.ht                    ; 4 uses
  %i.hw = icmp uge i64 %i.hv, %i.ht
  %i.hx = icmp ult i64 %i.hv, 9223372036854775793
  call void @llvm.assume(i1 %i.hw), !noalias !137529
  call void @llvm.assume(i1 %i.hx), !noalias !137529
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload.i) ], !noalias !137529
  %i.hy = icmp eq i64 %i.hv, 0
  br i1 %i.hy, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i
  %i.hz = sub i64 -32, %i.hs
  %i.ia = getelementptr inbounds i8, ptr %.sroa.0519.0.copyload.i, i64 %i.hz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ia, i64 noundef %i.hv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !137530
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i412.i, %.body.i.i
  %i.ib = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.ib, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i
  %i.ic = shl i64 %.sroa.9.0.i, 3
  %i.id = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.id), !noalias !137529
  %i.ie = and i64 %i.ic, -16                      ; 2 uses
  %i.if = add i64 %i.ie, 16                       ; 2 uses
  %i.ig = add nsw i64 %.sroa.9.0.i, 17
  %i.ih = add i64 %i.ig, %i.if                    ; 4 uses
  %i.ii = icmp uge i64 %i.ih, %i.if
  %i.ij = icmp ult i64 %i.ih, 9223372036854775793
  call void @llvm.assume(i1 %i.ii), !noalias !137529
  call void @llvm.assume(i1 %i.ij), !noalias !137529
  %i.ik = icmp eq i64 %i.ih, 0
  br i1 %i.ik, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i
  %i.il = sub nuw nsw i64 -16, %i.ie
  %i.im = getelementptr inbounds i8, ptr %.sroa.0451.0.i, i64 %i.il
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.im, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !137530
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i: ; preds = %bb.am, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i410.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit413.i
  %i.in = icmp eq i64 %.sroa.49.0.i.i939.i, 0
  br i1 %i.in, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

bb.an:                                            ; preds = %.sink.split.i.i.i, %.preheader.i.i
  %.pre.i228.i.i = phi double [ %.pre.i227.i.i, %.sink.split.i.i.i ], [ f0x3FB70A3D70A3D70B, %.preheader.i.i ] ; 4 uses
  %i.io = phi i64 [ %i.kp, %.sink.split.i.i.i ], [ 0, %.preheader.i.i ]
  %i.ip = phi double [ %.sroa.03.0.ph.i.i, %.sink.split.i.i.i ], [ +inf, %.preheader.i.i ]
  %.sroa.033.0.i.i = phi i64 [ %i.iq, %.sink.split.i.i.i ], [ 0, %.preheader.i.i ]
  %i.iq = add nuw i64 %.sroa.033.0.i.i, 1         ; 2 uses
  %i.ir = insertelement <2 x double> poison, double %.pre.i228.i.i, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i: ; preds = %bb.ce, %bb.an
  %.sroa.7.0.ph.i.i = phi i64 [ %.lcssa146148.i.i, %bb.ce ], [ 0, %bb.an ] ; 2 uses
  %.sroa.090.0.ph.i.i = phi ptr [ %.lcssa149151.i.i, %bb.ce ], [ %.val199.i, %bb.an ] ; 2 uses
  %.sroa.05.0.ph.i.i = phi i1 [ %spec.select.i.i, %bb.ce ], [ true, %bb.an ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi double [ %i.sc, %bb.ce ], [ 0.000000e+00, %bb.an ] ; 3 uses
  %i.it = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !137530 ; 2 uses
  %i.iu = zext i64 %i.it to i128
  br i1 %i.hj, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i, %bb.ao
  %i.iv = phi i64 [ %i.iz, %bb.ao ], [ %.sroa.7.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.iw = phi ptr [ %i.iy, %bb.ao ], [ %.sroa.090.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.ix = icmp eq ptr %i.iw, %i.df
  br i1 %i.ix, label %.split.us.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.iz = add i64 %i.iv, 1                        ; 2 uses
  %.val.i.us.i.i = load ptr, ptr %i.iw, align 8, !noalias !137531, !noundef !67
  %.not.i.not.i.us.i.i = icmp eq ptr %.val.i.us.i.i, null
  br i1 %.not.i.not.i.us.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i, label %select.unfold.loopexit138.split.us.i.i

select.unfold.loopexit138.split.us.i.i:           ; preds = %bb.ao
  %i.ja = and i64 %i.iv, 4294967295
  br label %select.unfold.i.i

.loopexit.i.i:                                    ; preds = %.sink.split.i.i.i, %bb.aj
  %i.jb = icmp eq i64 %.fr219.i.i, 0
  br i1 %i.jb, label %bb.ay, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge
  %i.jc = phi i64 [ %i.jg, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ], [ %.sroa.7.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.jd = phi ptr [ %i.jf, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ], [ %.sroa.090.0.ph.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i ] ; 3 uses
  %i.je = icmp eq ptr %i.jd, %i.df
  br i1 %i.je, label %.split.us.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %i.jg = add i64 %i.jc, 1                        ; 2 uses
  %.val.i.i251.i = load ptr, ptr %i.jd, align 8, !noalias !137531, !noundef !67
  %.not.i.not.i.i252.i = icmp eq ptr %.val.i.i251.i, null
  br i1 %.not.i.not.i.i252.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, label %bb.aq

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge: ; preds = %.lr.ph.i.i.i.i, %bb.ap
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.jh = and i64 %i.jc, 4294967295               ; 3 uses
  %i.ji = xor i64 %i.jh, %.sroa.12458.sroa.8.0.i
  %i.jj = zext i64 %i.ji to i128
  %i.jk = mul nuw i128 %i.jj, %i.iu               ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = xor i128 %i.jl, %i.jk
  %i.jn = trunc i128 %i.jm to i64                 ; 2 uses
  %i.jo = lshr i64 %i.jn, 57
  %i.jp = trunc nuw nsw i64 %i.jo to i8
  %i.jq = insertelement <16 x i8> poison, i8 %i.jp, i64 0
  %i.jr = shufflevector <16 x i8> %i.jq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %i.ki, %bb.at ]
  %.pn.i.i.i.i = phi i64 [ %i.jn, %bb.aq ], [ %i.kj, %bb.at ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %.sroa.9.0.i ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0451.0.i, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.js, align 1, !noalias !137532 ; 2 uses
  %i.jt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.jr
  %i.ju = bitcast <16 x i1> %i.jt to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.ju, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar, %bb.as
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.kh, %bb.as ], [ %i.ju, %bb.ar ] ; 3 uses
  %i.jv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.jw = zext nneg i16 %i.jv to i64
  %i.jx = add i64 %.sroa.01.0.i.i.i.i.i, %i.jw
  %i.jy = and i64 %i.jx, %.sroa.9.0.i
  %i.jz = sub nsw i64 0, %i.jy
  %i.ka = getelementptr inbounds [8 x i8], ptr %.sroa.0451.0.i, i64 %i.jz
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -8
  %.val2.i.i.i.i.i = load i64, ptr %i.kb, align 8, !noalias !137533, !noundef !67
  %i.kc = icmp eq i64 %i.jh, %.val2.i.i.i.i.i
  br i1 %i.kc, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, label %bb.as, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %bb.ar
  %i.kd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ke = bitcast <16 x i1> %i.kd to i16
  %i.kf = icmp eq i16 %i.ke, 0
  br i1 %i.kf, label %bb.at, label %select.unfold.i.i, !prof !71

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kg = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.kh = and i16 %i.kg, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.kh, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ki = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.kj = add i64 %.sroa.01.0.i.i.i.i.i, %i.ki
  br label %bb.ar

.split.us.i.i:                                    ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i.i
  %i.kk = fcmp olt double %.sroa.03.0.ph.i.i, %i.ip
  br i1 %i.kk, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.split.us.i.i
  %i.kl = fmul double %.pre.i228.i.i, 9.000000e-01
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %.split.us.i.i
  %i.km = add i64 %i.io, 1                        ; 2 uses
  %i.kn = icmp ugt i64 %i.km, 4
  br i1 %i.kn, label %bb.aw, label %.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ko = fdiv double %.pre.i228.i.i, 9.000000e-01
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aw, %bb.av, %bb.au
  %.pre.i227.i.i = phi double [ %.pre.i228.i.i, %bb.av ], [ %i.ko, %bb.aw ], [ %i.kl, %bb.au ]
  %i.kp = phi i64 [ %i.km, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.au ]
  %i.kq = icmp uge i64 %i.iq, %8
  %or.cond.not.i.i = select i1 %.sroa.05.0.ph.i.i, i1 true, i1 %i.kq
  br i1 %or.cond.not.i.i, label %.loopexit.i.i, label %bb.an

_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block623, %bb.bk, %bb.bj, %.loopexit.i.i
  %i.kr = icmp eq i64 %.sroa.6520.0.copyload.i, 0
  br i1 %i.kr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i
  %i.ks = mul i64 %.sroa.6520.0.copyload.i, 24
  %i.kt = icmp slt i64 %.sroa.6520.0.copyload.i, 768614336404564650
  call void @llvm.assume(i1 %i.kt)
  %i.ku = and i64 %i.ks, -16                      ; 2 uses
  %i.kv = add i64 %i.ku, 32                       ; 2 uses
  %i.kw = add nsw i64 %.sroa.6520.0.copyload.i, 17
  %i.kx = add i64 %i.kw, %i.kv                    ; 4 uses
  %i.ky = icmp uge i64 %i.kx, %i.kv
  %i.kz = icmp ult i64 %i.kx, 9223372036854775793
  call void @llvm.assume(i1 %i.ky)
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload.i) ]
  %i.la = icmp eq i64 %i.kx, 0
  br i1 %i.la, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.lb = sub i64 -32, %i.ku
  %i.lc = getelementptr inbounds i8, ptr %.sroa.0519.0.copyload.i, i64 %i.lb
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lc, i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !137530
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ay:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !137530
  call void @llvm.experimental.noalias.scope.decl(metadata !137534)
  call void @llvm.experimental.noalias.scope.decl(metadata !137535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !137536
  %i.ld = icmp eq i64 %.val200.i, 0
  br i1 %i.ld, label %._crit_edge609, label %.lr.ph608

bb.az:                                            ; preds = %.lr.ph608
  %i.le = icmp eq ptr %i.lh, %i.df
  br i1 %i.le, label %._crit_edge609, label %.lr.ph608

.lr.ph608:                                        ; preds = %bb.ay, %bb.az
  %i.lf = phi ptr [ %i.lh, %bb.az ], [ %.val199.i, %bb.ay ] ; 2 uses
  %i.lg = phi i64 [ %i.li, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 3 uses
  %i.li = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.lf, align 8, !noalias !137537, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.az, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph608
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !137538
  %i.lj = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137538 ; 4 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.bb, label %bb.bc

._crit_edge609:                                   ; preds = %bb.az, %bb.ay
  store i64 0, ptr %i.g, align 8, !alias.scope !137539, !noalias !137540
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ll, align 8, !alias.scope !137539, !noalias !137540
  %i.lm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.lm, align 8, !alias.scope !137539, !noalias !137540
  br label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #61
          to label %.noexc.i.i unwind label %bb.ak, !noalias !137530

.noexc.i.i:                                       ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ln = and i64 %i.lg, 4294967295
  store i64 %i.ln, ptr %i.lj, align 8, !noalias !137536
  store i64 4, ptr %i.f, align 8, !noalias !137536
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.lj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !137536
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !137536
  call void @llvm.experimental.noalias.scope.decl(metadata !137541)
  call void @llvm.experimental.noalias.scope.decl(metadata !137542)
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc.i.i.i.i, %bb.bc
  %i.lo = phi ptr [ %i.mb, %.noexc.i.i.i.i ], [ %i.lj, %bb.bc ]
  %i.lp = phi i64 [ %i.md, %.noexc.i.i.i.i ], [ 1, %bb.bc ] ; 5 uses
  %i.lq = phi i64 [ %i.lw, %.noexc.i.i.i.i ], [ %i.li, %bb.bc ]
  %i.lr = phi ptr [ %i.lv, %.noexc.i.i.i.i ], [ %i.lh, %bb.bc ]
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.ls = phi i64 [ %i.lw, %bb.bf ], [ %i.lq, %bb.bd ] ; 2 uses
  %i.lt = phi ptr [ %i.lv, %bb.bf ], [ %i.lr, %bb.bd ] ; 3 uses
  %i.lu = icmp eq ptr %i.lt, %i.df
  br i1 %i.lu, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3c_5types3any5PyAnyEENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtB27_8DirectedNtB4e_15AttractiveForceNtB4e_14RepulsiveForceNtB4e_21AdaptiveCoolingSchemeEs1_0EE11spec_extendB4i_.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.lw = add i64 %i.ls, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lt, align 8, !noalias !137543, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lx = and i64 %i.ls, 4294967295
  %i.ly = icmp samesign ult i64 %i.lp, 1152921504606846976
  call void @llvm.assume(i1 %i.ly)
  %i.lz = load i64, ptr %i.f, align 8, !range !70, !alias.scope !137544, !noalias !137545, !noundef !67
  %i.ma = icmp eq i64 %i.lp, %i.lz
  br i1 %i.ma, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bg
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.lp, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.bh, !noalias !137536

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !137544, !noalias !137545
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.bg
  %i.mb = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.lo, %bb.bg ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lp
  store i64 %i.lx, ptr %i.mc, align 8, !noalias !137546
  %i.md = add nuw nsw i64 %i.lp, 1                ; 2 uses
  store i64 %i.md, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !137544, !noalias !137545
  br label %bb.bd

bb.bh:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137547)
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !137547, !noalias !137536 ; 2 uses
  %i.mf = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.mf, label %.body.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.bh
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !137547, !noalias !137536, !nonnull !67, !noundef !67
  %i.mg = shl nuw i64 %.val.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137548
  br label %.body.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3c_5types3any5PyAnyEENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtB27_8DirectedNtB4e_15AttractiveForceNtB4e_14RepulsiveForceNtB4e_21AdaptiveCoolingSchemeEs1_0EE11spec_extendB4i_.exit.i.i.i.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !137540
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3c_5types3any5PyAnyEENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtB27_8DirectedNtB4e_15AttractiveForceNtB4e_14RepulsiveForceNtB4e_21AdaptiveCoolingSchemeEs1_0EE11spec_extendB4i_.exit.i.i.i.i, %._crit_edge609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !137536
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %i.et, i64 noundef %.sroa.49.0.i.i939.i, double noundef %13, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.bj unwind label %bb.ak, !noalias !137530

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !137530
  %i.mh = load i64, ptr %14, align 8, !range !68, !alias.scope !137549, !noalias !137550, !noundef !67
  %i.mi = trunc nuw i64 %i.mh to i1
  br i1 %i.mi, label %bb.bk, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.mj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mk = load <2 x double>, ptr %i.mj, align 8, !alias.scope !137549, !noalias !137550 ; 3 uses
  %.idx.i.i.i = shl nsw i64 %.sroa.49.0.i.i939.i, 4 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i
  %i.mm = icmp eq i64 %.sroa.49.0.i.i939.i, 0
  br i1 %i.mm, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bk
  %i.mn = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.mo = lshr exact i64 %i.mn, 4
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check613 = icmp ult i64 %i.mn, 48
  br i1 %min.iters.check613, label %.lr.ph.i.i.i.preheader628, label %vector.ph614

vector.ph614:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec615 = and i64 %i.mp, 2305843009213693950  ; 3 uses
  %i.mq = shl i64 %n.vec615, 4
  %i.mr = getelementptr i8, ptr %i.et, i64 %i.mq
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next622, %vector.body616 ] ; 2 uses
  %i.ms = shl i64 %index617, 4                    ; 2 uses
  %next.gep618 = getelementptr i8, ptr %i.et, i64 %i.ms ; 2 uses
  %i.mt = getelementptr i8, ptr %i.et, i64 %i.ms
  %next.gep619 = getelementptr i8, ptr %i.mt, i64 16 ; 2 uses
  %wide.load620 = load <2 x double>, ptr %next.gep618, align 8, !alias.scope !137551, !noalias !137530
  %wide.load621 = load <2 x double>, ptr %next.gep619, align 8, !alias.scope !137551, !noalias !137530
  %i.mu = fadd <2 x double> %i.mk, %wide.load620
  %i.mv = fadd <2 x double> %i.mk, %wide.load621
  store <2 x double> %i.mu, ptr %next.gep618, align 8, !alias.scope !137551, !noalias !137530
  store <2 x double> %i.mv, ptr %next.gep619, align 8, !alias.scope !137551, !noalias !137530
end_hunk_1
