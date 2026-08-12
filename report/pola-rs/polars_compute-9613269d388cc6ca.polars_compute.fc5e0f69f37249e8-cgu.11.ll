inline.NumInlined: 2706
inline.NumDeleted: 1280
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_RINvNtNtCs9o5SvTbM2BP_6chrono6format5parse5parseNtNtB4_8strftime13StrftimeItemsNtB4_4ItemECslFlrwjHoTci_14polars_compute:bb.a
  %i.gz = load i8, ptr %i.bi, align 8, !dbg !13947, !range !13510, !noalias !13502, !noundef !13 ; 3 uses
  %i.ha = icmp eq i8 %i.gz, 7, !dbg !13947
  br i1 %i.ha, label %bb.cq, label %bb.cr, !dbg !13959

bb.cq:                                            ; preds = %bb.cp
  %i.hb = load i8, ptr %i.v, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !14023, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.cr:                                            ; preds = %bb.cp
  %i.hc = load ptr, ptr %i.v, align 8, !dbg !13964, !noalias !13502, !nonnull !13, !noundef !13
  %i.hd = load i64, ptr %i.bj, align 8, !dbg !13964, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !14023, !noalias !13502
  %i.he = load i8, ptr %i.bh, align 8, !dbg !14024, !range !13510, !alias.scope !14030, !noalias !13998, !noundef !13 ; 2 uses
  %.not.i309.i = icmp ne i8 %i.he, 7, !dbg !14024
  %i.hf = icmp ne i8 %i.he, %i.gz
  %or.cond.i310.i = and i1 %.not.i309.i, %i.hf, !dbg !14033
  br i1 %or.cond.i310.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentNtNtB6_7weekday7WeekdayECslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !14033

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentNtNtB6_7weekday7WeekdayECslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %bb.cr
  store i8 %i.gz, ptr %i.bh, align 8, !dbg !14034, !alias.scope !14030, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14035

bb.cs:                                            ; preds = %bb.bz
  %i.hg = load i8, ptr %i.bf, align 8, !dbg !13948, !range !13510, !noalias !13502, !noundef !13 ; 3 uses
  %i.hh = icmp eq i8 %i.hg, 7, !dbg !13948
  br i1 %i.hh, label %bb.ct, label %bb.cu, !dbg !13959

bb.ct:                                            ; preds = %bb.cs
  %i.hi = load i8, ptr %i.u, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !14037, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.cu:                                            ; preds = %bb.cs
  %i.hj = load ptr, ptr %i.u, align 8, !dbg !13964, !noalias !13502, !nonnull !13, !noundef !13
  %i.hk = load i64, ptr %i.bg, align 8, !dbg !13964, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !14037, !noalias !13502
  %i.hl = load i8, ptr %i.bh, align 8, !dbg !14038, !range !13510, !alias.scope !14042, !noalias !13998, !noundef !13 ; 2 uses
  %.not.i312.i = icmp ne i8 %i.hl, 7, !dbg !14038
  %i.hm = icmp ne i8 %i.hl, %i.hg
  %or.cond.i313.i = and i1 %.not.i312.i, %i.hm, !dbg !14045
  br i1 %or.cond.i313.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentNtNtB6_7weekday7WeekdayECslFlrwjHoTci_14polars_compute.exit315.thread.i, !dbg !14045

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentNtNtB6_7weekday7WeekdayECslFlrwjHoTci_14polars_compute.exit315.thread.i: ; preds = %bb.cu
  store i8 %i.hg, ptr %i.bh, align 8, !dbg !14046, !alias.scope !14042, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14047

bb.cv:                                            ; preds = %bb.ca
  %i.hn = load i8, ptr %.sroa.0.0902.i, align 1, !dbg !14049, !noalias !13551, !noundef !13
  %i.ho = or i8 %i.hn, 32, !dbg !14049
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14050
  %i.hq = load i8, ptr %i.hp, align 1, !dbg !14050, !noalias !13551, !noundef !13
  %i.hr = or i8 %i.hq, 32, !dbg !14050            ; 2 uses
  switch i8 %i.ho, label %.loopexit [
    i8 97, label %bb.cw
    i8 112, label %bb.cx
  ], !dbg !14051

bb.cw:                                            ; preds = %bb.cv
  %i.hs = icmp eq i8 %i.hr, 109, !dbg !14051
  br i1 %i.hs, label %bb.cy, label %.loopexit, !dbg !14051

bb.cx:                                            ; preds = %bb.cv
  %i.ht = icmp eq i8 %i.hr, 109, !dbg !14051
  br i1 %i.ht, label %bb.cy, label %.loopexit, !dbg !14051

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.0147.0.i = phi i32 [ 0, %bb.cw ], [ 1, %bb.cx ], !dbg !14052 ; 2 uses
  %i.hu = load i32, ptr %i.bd, align 8, !dbg !14053, !range !13994, !alias.scope !14058, !noalias !13998, !noundef !13
  %i.hv = trunc nuw i32 %i.hu to i1, !dbg !14061
  %.val.i316.i = load i32, ptr %i.be, align 4, !alias.scope !14058, !noalias !13998
  %i.hw = icmp ne i32 %.val.i316.i, %.sroa.0147.0.i
  %or.cond.i317.i = select i1 %i.hv, i1 %i.hw, i1 false, !dbg !14061
  br i1 %or.cond.i317.i, label %.loopexit, label %bb.cz, !dbg !14061

bb.cz:                                            ; preds = %bb.cy
  store i32 1, ptr %i.bd, align 8, !dbg !14062, !alias.scope !14058, !noalias !13998
  store i32 %.sroa.0147.0.i, ptr %i.be, align 4, !dbg !14062, !alias.scope !14058, !noalias !13998
  %.not.i320.not.i = icmp eq i64 %.sroa.90.0901.i, 2, !dbg !14063
  br i1 %.not.i320.not.i, label %.split.i321.i, label %bb.da, !dbg !14063

bb.da:                                            ; preds = %bb.cz
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 2, !dbg !14070
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !14070, !alias.scope !14071, !noalias !13551, !noundef !13
  %i.hz = icmp sgt i8 %i.hy, -65, !dbg !14074
  br i1 %i.hz, label %.split.i321.i, label %.thread430.invoke.i, !dbg !14076

.split.i321.i:                                    ; preds = %bb.da, %bb.cz
  %i.ia = add i64 %.sroa.90.0901.i, -2, !dbg !14077
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 2, !dbg !14080
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14082

bb.db:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14083, !noalias !13502
  store i32 46, ptr %i.c, align 4, !dbg !14083, !noalias !13502
  %i.ic = invoke noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14087, !noalias !13551

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14090, !noalias !13502
  br i1 %i.ic, label %bb.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14091

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !14092, !noalias !13502
  %.not.i325.i = icmp ugt i64 %.sroa.90.0901.i, 1, !dbg !14093
  br i1 %.not.i325.i, label %bb.de, label %.split.i326.i, !dbg !14093

.split.i326.i:                                    ; preds = %bb.dd
  %i.id = icmp eq i64 %.sroa.90.0901.i, 1, !dbg !14100
  br i1 %i.id, label %bb.df, label %.thread430.invoke.i, !dbg !14101

bb.de:                                            ; preds = %bb.dd
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14102
  %i.if = load i8, ptr %i.ie, align 1, !dbg !14102, !alias.scope !14103, !noalias !13551, !noundef !13
  %i.ig = icmp sgt i8 %i.if, -65, !dbg !14106
  br i1 %i.ig, label %bb.df, label %.thread430.invoke.i, !dbg !14101

bb.df:                                            ; preds = %bb.de, %.split.i326.i
  %i.ih = add i64 %.sroa.90.0901.i, -1, !dbg !14108
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14111
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan10nanosecond(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ih)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14092, !noalias !13551

bb.dg:                                            ; preds = %bb.df
  %i.ij = load ptr, ptr %i.t, align 8, !dbg !14092, !noalias !13502, !noundef !13 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null, !dbg !14092
  br i1 %i.ik, label %bb.dh, label %bb.di, !dbg !13959

bb.dh:                                            ; preds = %bb.dg
  %i.il = load i8, ptr %i.bb, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14113, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.di:                                            ; preds = %bb.dg
  %i.im = load i64, ptr %i.bb, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.in = load i32, ptr %i.bc, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14113, !noalias !13502
  %i.io = icmp ult i32 %i.in, 1000000000, !dbg !14114
  br i1 %i.io, label %bb.dj, label %.loopexit, !dbg !14122

bb.dj:                                            ; preds = %bb.di
  %i.ip = load i32, ptr %i.af, align 8, !dbg !14123, !range !13994, !alias.scope !14125, !noalias !13998, !noundef !13
  %i.iq = trunc nuw i32 %i.ip to i1, !dbg !14128
  %.val.i333.i = load i32, ptr %i.ag, align 4, !alias.scope !14125, !noalias !13998
  %i.ir = icmp ne i32 %.val.i333.i, %i.in
  %or.cond.i334.i = select i1 %i.iq, i1 %i.ir, i1 false, !dbg !14128
  br i1 %or.cond.i334.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit336.thread.i, !dbg !14128

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit336.thread.i: ; preds = %bb.dj
  store i32 1, ptr %i.af, align 8, !dbg !14129, !alias.scope !14125, !noalias !13998
  store i32 %i.in, ptr %i.ag, align 4, !dbg !14129, !alias.scope !14125, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14130

bb.dk:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14132, !noalias !13502
  store i32 46, ptr %i.d, align 4, !dbg !14132, !noalias !13502
  %i.is = invoke noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14136, !noalias !13551

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14139, !noalias !13502
  br i1 %i.is, label %bb.dm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14140

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !14141, !noalias !13502
  %.not.i337.i = icmp ugt i64 %.sroa.90.0901.i, 1, !dbg !14142
  br i1 %.not.i337.i, label %bb.dn, label %.split.i338.i, !dbg !14142

.split.i338.i:                                    ; preds = %bb.dm
  %i.it = icmp eq i64 %.sroa.90.0901.i, 1, !dbg !14149
  br i1 %i.it, label %bb.do, label %.thread430.invoke.i, !dbg !14150

bb.dn:                                            ; preds = %bb.dm
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14151
  %i.iv = load i8, ptr %i.iu, align 1, !dbg !14151, !alias.scope !14152, !noalias !13551, !noundef !13
  %i.iw = icmp sgt i8 %i.iv, -65, !dbg !14155
  br i1 %i.iw, label %bb.do, label %.thread430.invoke.i, !dbg !14150

bb.do:                                            ; preds = %bb.dn, %.split.i338.i
  %i.ix = add i64 %.sroa.90.0901.i, -1, !dbg !14157
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14160
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan16nanosecond_fixed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.iy, i64 noundef %i.ix, i64 noundef 3)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14141, !noalias !13551

bb.dp:                                            ; preds = %bb.do
  %i.iz = load ptr, ptr %i.s, align 8, !dbg !14141, !noalias !13502, !noundef !13 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null, !dbg !14141
  br i1 %i.ja, label %bb.dq, label %bb.dr, !dbg !13959

bb.dq:                                            ; preds = %bb.dp
  %i.jb = load i8, ptr %i.az, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14162, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.dr:                                            ; preds = %bb.dp
  %i.jc = load i64, ptr %i.az, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.jd = load i64, ptr %i.ba, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14162, !noalias !13502
  %i.je = icmp ult i64 %i.jd, 1000000000
  br i1 %i.je, label %bb.ds, label %.loopexit, !dbg !14163

bb.ds:                                            ; preds = %bb.dr
  %i.jf = trunc nuw nsw i64 %i.jd to i32, !dbg !14169 ; 2 uses
  %i.jg = load i32, ptr %i.af, align 8, !dbg !14170, !range !13994, !alias.scope !14172, !noalias !13998, !noundef !13
  %i.jh = trunc nuw i32 %i.jg to i1, !dbg !14175
  %.val.i345.i = load i32, ptr %i.ag, align 4, !alias.scope !14172, !noalias !13998
  %i.ji = icmp ne i32 %.val.i345.i, %i.jf
  %or.cond.i346.i = select i1 %i.jh, i1 %i.ji, i1 false, !dbg !14175
  br i1 %or.cond.i346.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit348.thread.i, !dbg !14175

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit348.thread.i: ; preds = %bb.ds
  store i32 1, ptr %i.af, align 8, !dbg !14176, !alias.scope !14172, !noalias !13998
  store i32 %i.jf, ptr %i.ag, align 4, !dbg !14176, !alias.scope !14172, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14177

bb.dt:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14179, !noalias !13502
  store i32 46, ptr %i.e, align 4, !dbg !14179, !noalias !13502
  %i.jj = invoke noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14183, !noalias !13551

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14186, !noalias !13502
  br i1 %i.jj, label %bb.dv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14187

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14188, !noalias !13502
  %.not.i349.i = icmp ugt i64 %.sroa.90.0901.i, 1, !dbg !14189
  br i1 %.not.i349.i, label %bb.dw, label %.split.i350.i, !dbg !14189

.split.i350.i:                                    ; preds = %bb.dv
  %i.jk = icmp eq i64 %.sroa.90.0901.i, 1, !dbg !14196
  br i1 %i.jk, label %bb.dx, label %.thread430.invoke.i, !dbg !14197

bb.dw:                                            ; preds = %bb.dv
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14198
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !14198, !alias.scope !14199, !noalias !13551, !noundef !13
  %i.jn = icmp sgt i8 %i.jm, -65, !dbg !14202
  br i1 %i.jn, label %bb.dx, label %.thread430.invoke.i, !dbg !14197

bb.dx:                                            ; preds = %bb.dw, %.split.i350.i
  %i.jo = add i64 %.sroa.90.0901.i, -1, !dbg !14204
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14207
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan16nanosecond_fixed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef %i.jo, i64 noundef 6)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14188, !noalias !13551

bb.dy:                                            ; preds = %bb.dx
  %i.jq = load ptr, ptr %i.r, align 8, !dbg !14188, !noalias !13502, !noundef !13 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null, !dbg !14188
  br i1 %i.jr, label %bb.dz, label %bb.ea, !dbg !13959

bb.dz:                                            ; preds = %bb.dy
  %i.js = load i8, ptr %i.ax, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14209, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.ea:                                            ; preds = %bb.dy
  %i.jt = load i64, ptr %i.ax, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.ju = load i64, ptr %i.ay, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14209, !noalias !13502
  %i.jv = icmp ult i64 %i.ju, 1000000000
  br i1 %i.jv, label %bb.eb, label %.loopexit, !dbg !14210

bb.eb:                                            ; preds = %bb.ea
  %i.jw = trunc nuw nsw i64 %i.ju to i32, !dbg !14216 ; 2 uses
  %i.jx = load i32, ptr %i.af, align 8, !dbg !14217, !range !13994, !alias.scope !14219, !noalias !13998, !noundef !13
  %i.jy = trunc nuw i32 %i.jx to i1, !dbg !14222
  %.val.i357.i = load i32, ptr %i.ag, align 4, !alias.scope !14219, !noalias !13998
  %i.jz = icmp ne i32 %.val.i357.i, %i.jw
  %or.cond.i358.i = select i1 %i.jy, i1 %i.jz, i1 false, !dbg !14222
  br i1 %or.cond.i358.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit360.thread.i, !dbg !14222

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit360.thread.i: ; preds = %bb.eb
  store i32 1, ptr %i.af, align 8, !dbg !14223, !alias.scope !14219, !noalias !13998
  store i32 %i.jw, ptr %i.ag, align 4, !dbg !14223, !alias.scope !14219, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14224

bb.ec:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14226, !noalias !13502
  store i32 46, ptr %i.f, align 4, !dbg !14226, !noalias !13502
  %i.ka = invoke noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14230, !noalias !13551

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14233, !noalias !13502
  br i1 %i.ka, label %bb.ee, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14234

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !14235, !noalias !13502
  %.not.i361.i = icmp ugt i64 %.sroa.90.0901.i, 1, !dbg !14236
  br i1 %.not.i361.i, label %bb.ef, label %.split.i362.i, !dbg !14236

.split.i362.i:                                    ; preds = %bb.ee
  %i.kb = icmp eq i64 %.sroa.90.0901.i, 1, !dbg !14243
  br i1 %i.kb, label %bb.eg, label %.thread430.invoke.i, !dbg !14244

bb.ef:                                            ; preds = %bb.ee
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14245
  %i.kd = load i8, ptr %i.kc, align 1, !dbg !14245, !alias.scope !14246, !noalias !13551, !noundef !13
  %i.ke = icmp sgt i8 %i.kd, -65, !dbg !14249
  br i1 %i.ke, label %bb.eg, label %.thread430.invoke.i, !dbg !14244

bb.eg:                                            ; preds = %bb.ef, %.split.i362.i
  %i.kf = add i64 %.sroa.90.0901.i, -1, !dbg !14251
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0902.i, i64 1, !dbg !14254
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan16nanosecond_fixed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef %i.kf, i64 noundef 9)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14235, !noalias !13551

bb.eh:                                            ; preds = %bb.eg
  %i.kh = load ptr, ptr %i.q, align 8, !dbg !14235, !noalias !13502, !noundef !13 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null, !dbg !14235
  br i1 %i.ki, label %bb.ei, label %bb.ej, !dbg !13959

bb.ei:                                            ; preds = %bb.eh
  %i.kj = load i8, ptr %i.av, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14256, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.ej:                                            ; preds = %bb.eh
  %i.kk = load i64, ptr %i.av, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.kl = load i64, ptr %i.aw, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14256, !noalias !13502
  %i.km = icmp ult i64 %i.kl, 1000000000
  br i1 %i.km, label %bb.ek, label %.loopexit, !dbg !14257

bb.ek:                                            ; preds = %bb.ej
  %i.kn = trunc nuw nsw i64 %i.kl to i32, !dbg !14263 ; 2 uses
  %i.ko = load i32, ptr %i.af, align 8, !dbg !14264, !range !13994, !alias.scope !14266, !noalias !13998, !noundef !13
  %i.kp = trunc nuw i32 %i.ko to i1, !dbg !14269
  %.val.i369.i = load i32, ptr %i.ag, align 4, !alias.scope !14266, !noalias !13998
  %i.kq = icmp ne i32 %.val.i369.i, %i.kn
  %or.cond.i370.i = select i1 %i.kp, i1 %i.kq, i1 false, !dbg !14269
  br i1 %or.cond.i370.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit372.thread.i, !dbg !14269

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit372.thread.i: ; preds = %bb.ek
  store i32 1, ptr %i.af, align 8, !dbg !14270, !alias.scope !14266, !noalias !13998
  store i32 %i.kn, ptr %i.ag, align 4, !dbg !14270, !alias.scope !14266, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14271

bb.el:                                            ; preds = %bb.cb
  %i.kr = extractvalue { ptr, i64 } %i.gc, 0, !dbg !14273
  %i.ks = extractvalue { ptr, i64 } %i.gc, 1, !dbg !14273
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14274

bb.em:                                            ; preds = %bb.cc
  %i.kt = extractvalue { ptr, i64 } %i.gd, 0, !dbg !14275
  %i.ku = extractvalue { ptr, i64 } %i.gd, 1, !dbg !14275
  invoke void @_RINvNtNtCs9o5SvTbM2BP_6chrono6format4scan15timezone_offsetNvB2_14colon_or_spaceECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kt, i64 noundef %i.ku, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !13951, !noalias !13551

bb.en:                                            ; preds = %bb.em
  %i.kv = load ptr, ptr %i.m, align 8, !dbg !13951, !noalias !13502, !noundef !13 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null, !dbg !13951
  br i1 %i.kw, label %bb.eo, label %bb.ep, !dbg !13959

bb.eo:                                            ; preds = %bb.en
  %i.kx = load i8, ptr %i.at, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14276, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.ep:                                            ; preds = %bb.en
  %i.ky = load i64, ptr %i.at, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.kz = load i32, ptr %i.au, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14276, !noalias !13502
  %i.la = load i32, ptr %i.an, align 8, !dbg !14277, !range !13994, !alias.scope !14283, !noalias !13998, !noundef !13
  %i.lb = trunc nuw i32 %i.la to i1, !dbg !14288
  %.val.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !14283, !noalias !13998
  %i.lc = icmp ne i32 %.val.i.i.i, %i.kz
  %or.cond.i.i.i = select i1 %i.lb, i1 %i.lc, i1 false, !dbg !14288
  br i1 %or.cond.i.i.i, label %.loopexit, label %_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_offset.exit.thread.i, !dbg !14288

_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_offset.exit.thread.i: ; preds = %bb.ep
  store i32 1, ptr %i.an, align 8, !dbg !14289, !alias.scope !14283, !noalias !13998
  store i32 %i.kz, ptr %i.ao, align 4, !dbg !14289, !alias.scope !14283, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14290

bb.eq:                                            ; preds = %bb.cd
  %i.ld = extractvalue { ptr, i64 } %i.ge, 0, !dbg !14292
  %i.le = extractvalue { ptr, i64 } %i.ge, 1, !dbg !14292
  invoke void @_RINvNtNtCs9o5SvTbM2BP_6chrono6format4scan15timezone_offsetNvB2_14colon_or_spaceECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ld, i64 noundef %i.le, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !13954, !noalias !13551

bb.er:                                            ; preds = %bb.eq
  %i.lf = load ptr, ptr %i.l, align 8, !dbg !13954, !noalias !13502, !noundef !13 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null, !dbg !13954
  br i1 %i.lg, label %bb.es, label %bb.et, !dbg !13959

bb.es:                                            ; preds = %bb.er
  %i.lh = load i8, ptr %i.ar, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14293, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.et:                                            ; preds = %bb.er
  %i.li = load i64, ptr %i.ar, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.lj = load i32, ptr %i.as, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14293, !noalias !13502
  %i.lk = load i32, ptr %i.an, align 8, !dbg !14294, !range !13994, !alias.scope !14298, !noalias !13998, !noundef !13
  %i.ll = trunc nuw i32 %i.lk to i1, !dbg !14303
  %.val.i.i373.i = load i32, ptr %i.ao, align 4, !alias.scope !14298, !noalias !13998
  %i.lm = icmp ne i32 %.val.i.i373.i, %i.lj
  %or.cond.i.i374.i = select i1 %i.ll, i1 %i.lm, i1 false, !dbg !14303
  br i1 %or.cond.i.i374.i, label %.loopexit, label %_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_offset.exit376.thread.i, !dbg !14303

_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_offset.exit376.thread.i: ; preds = %bb.et
  store i32 1, ptr %i.an, align 8, !dbg !14304, !alias.scope !14298, !noalias !13998
  store i32 %i.lj, ptr %i.ao, align 4, !dbg !14304, !alias.scope !14298, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14305

bb.eu:                                            ; preds = %bb.ce
  %i.ln = load ptr, ptr %i.j, align 8, !dbg !13957, !noalias !13502, !noundef !13 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, null, !dbg !13957
  br i1 %i.lo, label %bb.ev, label %bb.ew, !dbg !13959

bb.ev:                                            ; preds = %bb.eu
  %i.lp = load i8, ptr %i.aq, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14307, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.ew:                                            ; preds = %bb.eu
  %i.lq = load i64, ptr %i.aq, align 8, !dbg !13964, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14307, !noalias !13502
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14307

bb.ex:                                            ; preds = %bb.cf
  %i.lr = load ptr, ptr %i.i, align 8, !dbg !13958, !noalias !13502, !noundef !13 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null, !dbg !13958
  br i1 %i.ls, label %bb.ey, label %bb.ez, !dbg !13959

bb.ey:                                            ; preds = %bb.ex
  %i.lt = load i8, ptr %i.ap, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14308, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.ez:                                            ; preds = %bb.ex
  %i.lu = load i64, ptr %i.ap, align 8, !dbg !13964, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14308, !noalias !13502
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14308

bb.fa:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14309, !noalias !13502
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  %i.lv = invoke { ptr, i64 } @_RINvMNtCscgRAwXFJnXP_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i)
          to label %bb.fe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14310, !noalias !13551 ; 2 uses

bb.fb:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  %i.lw = icmp ult i64 %.sroa.90.0901.i, 3, !dbg !14312
  br i1 %i.lw, label %.loopexit, label %bb.fi, !dbg !14312

bb.fc:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  %i.lx = icmp ult i64 %.sroa.90.0901.i, 6, !dbg !14313
  br i1 %i.lx, label %.loopexit, label %bb.fn, !dbg !14313

bb.fd:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0902.i) ]
  %i.ly = icmp ult i64 %.sroa.90.0901.i, 9, !dbg !14314
  br i1 %i.ly, label %.loopexit, label %bb.fs, !dbg !14314

bb.fe:                                            ; preds = %bb.fa
  %i.lz = extractvalue { ptr, i64 } %i.lv, 0, !dbg !14315
  %i.ma = extractvalue { ptr, i64 } %i.lv, 1, !dbg !14315
  invoke void @_RINvNtNtCs9o5SvTbM2BP_6chrono6format4scan15timezone_offsetNvB2_14colon_or_spaceECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lz, i64 noundef %i.ma, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14309, !noalias !13551

bb.ff:                                            ; preds = %bb.fe
  %i.mb = load ptr, ptr %i.k, align 8, !dbg !14309, !noalias !13502, !noundef !13 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null, !dbg !14309
  br i1 %i.mc, label %bb.fg, label %bb.fh, !dbg !13959

bb.fg:                                            ; preds = %bb.ff
  %i.md = load i8, ptr %i.al, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14316, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.fh:                                            ; preds = %bb.ff
  %i.me = load i64, ptr %i.al, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.mf = load i32, ptr %i.am, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14316, !noalias !13502
  %i.mg = load i32, ptr %i.an, align 8, !dbg !14317, !range !13994, !alias.scope !14321, !noalias !13998, !noundef !13
  %i.mh = trunc nuw i32 %i.mg to i1, !dbg !14326
  %.val.i.i377.i = load i32, ptr %i.ao, align 4, !alias.scope !14321, !noalias !13998
  %i.mi = icmp ne i32 %.val.i.i377.i, %i.mf
  %or.cond.i.i378.i = select i1 %i.mh, i1 %i.mi, i1 false, !dbg !14326
  br i1 %or.cond.i.i378.i, label %.loopexit, label %_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_offset.exit380.thread.i, !dbg !14326

_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_offset.exit380.thread.i: ; preds = %bb.fh
  store i32 1, ptr %i.an, align 8, !dbg !14327, !alias.scope !14321, !noalias !13998
  store i32 %i.mf, ptr %i.ao, align 4, !dbg !14327, !alias.scope !14321, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14328

bb.fi:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14330, !noalias !13502
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan16nanosecond_fixed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, i64 noundef 3)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14330, !noalias !13551

bb.fj:                                            ; preds = %bb.fi
  %i.mj = load ptr, ptr %i.p, align 8, !dbg !14330, !noalias !13502, !noundef !13 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, null, !dbg !14330
  br i1 %i.mk, label %bb.fk, label %bb.fl, !dbg !13959

bb.fk:                                            ; preds = %bb.fj
  %i.ml = load i8, ptr %i.aj, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14331, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.fl:                                            ; preds = %bb.fj
  %i.mm = load i64, ptr %i.aj, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.mn = load i64, ptr %i.ak, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14331, !noalias !13502
  %i.mo = icmp ult i64 %i.mn, 1000000000
  br i1 %i.mo, label %bb.fm, label %.loopexit, !dbg !14332

bb.fm:                                            ; preds = %bb.fl
  %i.mp = trunc nuw nsw i64 %i.mn to i32, !dbg !14338 ; 2 uses
  %i.mq = load i32, ptr %i.af, align 8, !dbg !14339, !range !13994, !alias.scope !14341, !noalias !13998, !noundef !13
  %i.mr = trunc nuw i32 %i.mq to i1, !dbg !14344
  %.val.i384.i = load i32, ptr %i.ag, align 4, !alias.scope !14341, !noalias !13998
  %i.ms = icmp ne i32 %.val.i384.i, %i.mp
  %or.cond.i385.i = select i1 %i.mr, i1 %i.ms, i1 false, !dbg !14344
  br i1 %or.cond.i385.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit387.thread.i, !dbg !14344

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit387.thread.i: ; preds = %bb.fm
  store i32 1, ptr %i.af, align 8, !dbg !14345, !alias.scope !14341, !noalias !13998
  store i32 %i.mp, ptr %i.ag, align 4, !dbg !14345, !alias.scope !14341, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14346

bb.fn:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14348, !noalias !13502
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan16nanosecond_fixed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, i64 noundef 6)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14348, !noalias !13551

bb.fo:                                            ; preds = %bb.fn
  %i.mt = load ptr, ptr %i.o, align 8, !dbg !14348, !noalias !13502, !noundef !13 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null, !dbg !14348
  br i1 %i.mu, label %bb.fp, label %bb.fq, !dbg !13959

bb.fp:                                            ; preds = %bb.fo
  %i.mv = load i8, ptr %i.ah, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14349, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.fq:                                            ; preds = %bb.fo
  %i.mw = load i64, ptr %i.ah, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.mx = load i64, ptr %i.ai, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14349, !noalias !13502
  %i.my = icmp ult i64 %i.mx, 1000000000
  br i1 %i.my, label %bb.fr, label %.loopexit, !dbg !14350

bb.fr:                                            ; preds = %bb.fq
  %i.mz = trunc nuw nsw i64 %i.mx to i32, !dbg !14356 ; 2 uses
  %i.na = load i32, ptr %i.af, align 8, !dbg !14357, !range !13994, !alias.scope !14359, !noalias !13998, !noundef !13
  %i.nb = trunc nuw i32 %i.na to i1, !dbg !14362
  %.val.i391.i = load i32, ptr %i.ag, align 4, !alias.scope !14359, !noalias !13998
  %i.nc = icmp ne i32 %.val.i391.i, %i.mz
  %or.cond.i392.i = select i1 %i.nb, i1 %i.nc, i1 false, !dbg !14362
  br i1 %or.cond.i392.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit394.thread.i, !dbg !14362

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit394.thread.i: ; preds = %bb.fr
  store i32 1, ptr %i.af, align 8, !dbg !14363, !alias.scope !14359, !noalias !13998
  store i32 %i.mz, ptr %i.ag, align 4, !dbg !14363, !alias.scope !14359, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14364

bb.fs:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14366, !noalias !13502
  invoke void @_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan16nanosecond_fixed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0902.i, i64 noundef %.sroa.90.0901.i, i64 noundef 9)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !14366, !noalias !13551

bb.ft:                                            ; preds = %bb.fs
  %i.nd = load ptr, ptr %i.n, align 8, !dbg !14366, !noalias !13502, !noundef !13 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null, !dbg !14366
  br i1 %i.ne, label %bb.fu, label %bb.fv, !dbg !13959

bb.fu:                                            ; preds = %bb.ft
  %i.nf = load i8, ptr %i.ad, align 8, !dbg !13960, !range !13510, !noalias !13502, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14367, !noalias !13502
  br label %.loopexit, !dbg !13962

bb.fv:                                            ; preds = %bb.ft
  %i.ng = load i64, ptr %i.ad, align 8, !dbg !13964, !noalias !13502, !noundef !13
  %i.nh = load i64, ptr %i.ae, align 8, !dbg !13965, !noalias !13502, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14367, !noalias !13502
  %i.ni = icmp ult i64 %i.nh, 1000000000
  br i1 %i.ni, label %bb.fw, label %.loopexit, !dbg !14368

bb.fw:                                            ; preds = %bb.fv
  %i.nj = trunc nuw nsw i64 %i.nh to i32, !dbg !14374 ; 2 uses
  %i.nk = load i32, ptr %i.af, align 8, !dbg !14375, !range !13994, !alias.scope !14377, !noalias !13998, !noundef !13
  %i.nl = trunc nuw i32 %i.nk to i1, !dbg !14380
  %.val.i398.i = load i32, ptr %i.ag, align 4, !alias.scope !14377, !noalias !13998
  %i.nm = icmp ne i32 %.val.i398.i, %i.nj
  %or.cond.i399.i = select i1 %i.nl, i1 %i.nm, i1 false, !dbg !14380
  br i1 %or.cond.i399.i, label %.loopexit, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit401.thread.i, !dbg !14380

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit401.thread.i: ; preds = %bb.fw
  store i32 1, ptr %i.af, align 8, !dbg !14381, !alias.scope !14377, !noalias !13998
  store i32 %i.nj, ptr %i.ag, align 4, !dbg !14381, !alias.scope !14377, !noalias !13998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, !dbg !14382

_RINvNtNtCs9o5SvTbM2BP_6chrono6format5parse14parse_internalNtNtB4_8strftime13StrftimeItemsNtB4_4ItemECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i, %bb.a
  %.sroa.90.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %.sroa.90.11292.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECslFlrwjHoTci_14polars_compute.exit261.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !13643, !noalias !13502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !14384, !noalias !13502
  %i.nn = icmp eq i64 %.sroa.90.0.lcssa.i, 0, !dbg !14385
  %spec.select = select i1 %i.nn, i8 8, i8 5, !dbg !14385
  br label %bb.fx, !dbg !14385

.loopexit:                                        ; preds = %_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number.exit296.thread470.i, %bb.d, %bb.m, %bb.f, %bb.cr, %bb.cu, %bb.ca, %bb.cx, %bb.cw, %bb.cv, %bb.cy, %bb.ep, %bb.et, %bb.fh, %bb.fb, %bb.fc, %bb.fd, %bb.ck, %bb.cj, %bb.co, %bb.cn, %bb.dj, %bb.di, %bb.ds, %bb.dr, %bb.eb, %bb.ea, %bb.ek, %bb.ej, %bb.fm, %bb.fl, %bb.fr, %bb.fq, %bb.fw, %bb.fv, %bb.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxeEECslFlrwjHoTci_14polars_compute.exit.sink.split.i.i, %.thread186, %bb.fu, %bb.fp, %bb.fk, %bb.fg, %bb.ey, %bb.ev, %bb.es, %bb.eo, %bb.ei, %bb.dz, %bb.dq, %bb.dh, %bb.ct, %bb.cq, %bb.cm, %bb.ci, %bb.bg, %bb.at, %.split.i268.i, %_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number.exit296.thread477.i, %.split.i273.i, %_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number.exit.thread456.i
  %.sroa.51.0 = phi i8 [ %i.kx, %bb.eo ], [ 3, %.thread186 ], [ %.sroa.51.1188.ph580, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxeEECslFlrwjHoTci_14polars_compute.exit.sink.split.i.i ], [ %.sroa.9.3.ph.i, %_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number.exit296.thread477.i ], [ %i.gr, %bb.cm ], [ %i.kj, %bb.ei ], [ %i.nf, %bb.fu ], [ %i.du, %bb.bg ], [ %i.js, %bb.dz ], [ %i.mv, %bb.fp ], [ %i.hi, %bb.ct ], [ %i.jb, %bb.dq ], [ %i.ml, %bb.fk ], [ %i.gh, %bb.ci ], [ %i.il, %bb.dh ], [ %i.md, %bb.fg ], [ %i.lt, %bb.ey ], [ %i.lp, %bb.ev ], [ %i.hb, %bb.cq ], [ %i.lh, %bb.es ], [ %i.de, %bb.at ], [ %.sroa.9410.3.ph.i, %_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number.exit.thread456.i ], [ 4, %.split.i268.i ], [ 4, %.split.i273.i ], [ 1, %bb.fw ], [ 0, %bb.fv ], [ 0, %bb.fq ], [ 0, %bb.fl ], [ 0, %bb.ej ], [ 0, %bb.ea ], [ 0, %bb.dr ], [ 0, %bb.di ], [ 0, %bb.cn ], [ 0, %bb.cj ], [ 3, %bb.cw ], [ 3, %bb.cx ], [ 4, %bb.f ], [ 4, %bb.fd ], [ 1, %bb.ck ], [ 1, %bb.fr ], [ 1, %bb.cr ], [ 1, %bb.cu ], [ 4, %bb.ca ], [ 3, %bb.cv ], [ 1, %bb.co ], [ 1, %bb.dj ], [ 1, %bb.ds ], [ 1, %bb.eb ], [ 1, %bb.cy ], [ 1, %bb.ep ], [ 1, %bb.et ], [ 1, %bb.fh ], [ 1, %bb.ek ], [ 4, %bb.fb ], [ 1, %bb.fm ], [ 4, %bb.fc ], [ 3, %bb.m ], [ %.sroa.0170.0.copyload, %bb.d ], [ 0, %_RNvNtNtCs9o5SvTbM2BP_6chrono6format4scan6number.exit296.thread470.i ], [ %i.dh, %bb.bv ], !dbg !14386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !13643, !noalias !13502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !14384, !noalias !13502
  br label %bb.fx, !dbg !14385

bb.fx:                                            ; preds = %_RINvNtNtCs9o5SvTbM2BP_6chrono6format5parse14parse_internalNtNtB4_8strftime13StrftimeItemsNtB4_4ItemECslFlrwjHoTci_14polars_compute.exit, %.loopexit
  %i.no = phi i8 [ %.sroa.51.0, %.loopexit ], [ %spec.select, %_RINvNtNtCs9o5SvTbM2BP_6chrono6format5parse14parse_internalNtNtB4_8strftime13StrftimeItemsNtB4_4ItemECslFlrwjHoTci_14polars_compute.exit ], !dbg !14385
  ret i8 %i.no, !dbg !14387
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendmE6extendINtNtNtB15_8adapters10filter_map9FilterMapINtNtB25_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtB8_7float164pf16EENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB44_18PrimitiveArgUniqueB3A_ENtB44_15AmortizedUnique10arg_uniques_0EEB48_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14388 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload6 = load ptr, ptr %1, align 8, !dbg !14390, !alias.scope !14396, !nonnull !13, !noundef !13
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14390
  %.sroa.5.0.copyload8 = load ptr, ptr %.sroa.5.0..sroa_idx7, align 8, !dbg !14390, !alias.scope !14396, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14400
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14400 ; 2 uses
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14400 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx9, i64 24, i1 false), !dbg !14390
  tail call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0), !dbg !14402
  store ptr %.sroa.5.0.copyload8, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !14400
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.h = insertelement <2 x ptr> %i.g, ptr %.sroa.312.0..sroa_idx, i64 1
  br label %bb.b, !dbg !14403

bb.b:                                             ; preds = %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit, %bb.a
  %.promoted.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.pre, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit ], [ %.sroa.0.0.copyload6, %bb.a ]
  %i.i = phi ptr [ %.pre, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit ], [ %.sroa.5.0.copyload8, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14405), !dbg !14408
  call void @llvm.experimental.noalias.scope.decl(metadata !14409), !dbg !14412
  call void @llvm.experimental.noalias.scope.decl(metadata !14418), !dbg !14421
  call void @llvm.experimental.noalias.scope.decl(metadata !14424), !dbg !14427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14430
  store <2 x ptr> %i.h, ptr %i.a, align 16, !noalias !14433
  br label %bb.c, !dbg !14436

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi ptr [ %i.k, %bb.d ], [ %.promoted.i.i.i.i, %bb.b ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.j, %i.i, !dbg !14440
  br i1 %.not.not.not.not.i.not.not.not.i.not, label %bb.g, label %bb.d, !dbg !14453

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2, !dbg !14454 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !dbg !14458, !alias.scope !14459, !noalias !14462
  call void @llvm.experimental.noalias.scope.decl(metadata !14463), !dbg !14466
  %i.l = load ptr, ptr %i.d, align 8, !dbg !14467, !alias.scope !14463, !noalias !14472, !nonnull !13, !align !672, !noundef !13
  %i.m = load i64, ptr %i.l, align 8, !dbg !14467, !noalias !14474, !noundef !13
  %i.n = call { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvXs0_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtBW_18PrimitiveArgUniqueNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtBW_15AmortizedUnique10arg_uniques_0INtB7_5FnMutTTjRB2a_EEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.m, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.j), !dbg !14475, !noalias !14424 ; 2 uses
  %i.o = extractvalue { i32, i32 } %i.n, 0, !dbg !14475
  %i.p = load ptr, ptr %i.d, align 8, !dbg !14480, !alias.scope !14463, !noalias !14472, !nonnull !13, !align !672, !noundef !13 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !14480, !noalias !14424, !noundef !13
  %i.r = add i64 %i.q, 1, !dbg !14480
  store i64 %i.r, ptr %i.p, align 8, !dbg !14480, !noalias !14424
  %i.s = trunc i32 %i.o to i1, !dbg !14482
  br i1 %i.s, label %bb.e, label %bb.c, !dbg !14466

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { i32, i32 } %i.n, 1, !dbg !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14489, !noalias !14430
  %i.u = load i32, ptr %i.e, align 8, !dbg !14490, !alias.scope !14493, !noundef !13 ; 2 uses
  %i.v = load i32, ptr %i.f, align 4, !dbg !14496, !range !86, !alias.scope !14493, !noundef !13 ; 2 uses
  %i.w = icmp eq i32 %i.u, %i.v, !dbg !14490
  br i1 %i.w, label %bb.f, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit, !dbg !14490, !prof !351

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1), !dbg !14497
  %.pr = load i32, ptr %i.f, align 4, !dbg !14498, !alias.scope !14493
  %.pre17 = load i32, ptr %i.e, align 8, !dbg !14504, !alias.scope !14493
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit, !dbg !14497

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.pre17, %bb.f ], [ %i.u, %bb.e ], !dbg !14504
  %i.y = phi i32 [ %.pr, %bb.f ], [ %i.v, %bb.e ], !dbg !14498
  %i.z = icmp eq i32 %i.y, 1, !dbg !14505
  %i.aa = load ptr, ptr %0, align 8
  %spec.select = select i1 %i.z, ptr %0, ptr %i.aa, !dbg !14505
  %i.ab = zext i32 %i.x to i64, !dbg !14504
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %i.ab, !dbg !14506
  store i32 %i.t, ptr %i.ac, align 4, !dbg !14509
  %i.ad = load i32, ptr %i.e, align 8, !dbg !14512, !alias.scope !14493, !noundef !13
  %i.ae = add i32 %i.ad, 1, !dbg !14512
  store i32 %i.ae, ptr %i.e, align 8, !dbg !14512, !alias.scope !14493
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !14459, !noalias !14462
  %.promoted.i.i.i.i.pre = load ptr, ptr %i.b, align 8, !alias.scope !14459, !noalias !14462
  br label %bb.b, !dbg !14513

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14489, !noalias !14430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14514
  ret void, !dbg !14515
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendmE6extendINtNtNtB15_8adapters10filter_map9FilterMapINtNtB25_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEENCNvXs1_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB4I_16BinaryViewUniqueNtB4I_15AmortizedUnique10arg_uniques_0EEB4M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14516 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload6 = load ptr, ptr %1, align 8, !dbg !14517, !alias.scope !14520, !nonnull !13, !noundef !13
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14517
  %.sroa.5.0.copyload8 = load ptr, ptr %.sroa.5.0..sroa_idx7, align 8, !dbg !14517, !alias.scope !14520, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14524
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14524 ; 2 uses
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14524 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx9, i64 24, i1 false), !dbg !14517
  tail call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0), !dbg !14526
  store ptr %.sroa.5.0.copyload8, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !14524
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.h = insertelement <2 x ptr> %i.g, ptr %.sroa.312.0..sroa_idx, i64 1
  br label %bb.b, !dbg !14527

bb.b:                                             ; preds = %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit, %bb.a
  %.promoted.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.pre, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit ], [ %.sroa.0.0.copyload6, %bb.a ]
  %i.i = phi ptr [ %.pre, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit ], [ %.sroa.5.0.copyload8, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14529), !dbg !14532
  call void @llvm.experimental.noalias.scope.decl(metadata !14533), !dbg !14536
  call void @llvm.experimental.noalias.scope.decl(metadata !14539), !dbg !14542
  call void @llvm.experimental.noalias.scope.decl(metadata !14545), !dbg !14548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14551
  store <2 x ptr> %i.h, ptr %i.a, align 16, !noalias !14554
  br label %bb.c, !dbg !14557

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi ptr [ %i.k, %bb.d ], [ %.promoted.i.i.i.i, %bb.b ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.j, %i.i, !dbg !14561
  br i1 %.not.not.not.not.i.not.not.not.i.not, label %bb.g, label %bb.d, !dbg !14569

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !14570 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !dbg !14573, !alias.scope !14574, !noalias !14577
  call void @llvm.experimental.noalias.scope.decl(metadata !14578), !dbg !14581
  %i.l = load ptr, ptr %i.d, align 8, !dbg !14582, !alias.scope !14578, !noalias !14585, !nonnull !13, !align !672, !noundef !13
  %i.m = load i64, ptr %i.l, align 8, !dbg !14582, !noalias !14587, !noundef !13
  %i.n = call { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtBW_16BinaryViewUniqueNtBW_15AmortizedUnique10arg_uniques_0INtB7_5FnMutTTjRNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.m, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !14588, !noalias !14545 ; 2 uses
  %i.o = extractvalue { i32, i32 } %i.n, 0, !dbg !14588
  %i.p = load ptr, ptr %i.d, align 8, !dbg !14591, !alias.scope !14578, !noalias !14585, !nonnull !13, !align !672, !noundef !13 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !14591, !noalias !14545, !noundef !13
  %i.r = add i64 %i.q, 1, !dbg !14591
  store i64 %i.r, ptr %i.p, align 8, !dbg !14591, !noalias !14545
  %i.s = trunc i32 %i.o to i1, !dbg !14593
  br i1 %i.s, label %bb.e, label %bb.c, !dbg !14581

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { i32, i32 } %i.n, 1, !dbg !14595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14596, !noalias !14551
  %i.u = load i32, ptr %i.e, align 8, !dbg !14597, !alias.scope !14600, !noundef !13 ; 2 uses
  %i.v = load i32, ptr %i.f, align 4, !dbg !14603, !range !86, !alias.scope !14600, !noundef !13 ; 2 uses
  %i.w = icmp eq i32 %i.u, %i.v, !dbg !14597
  br i1 %i.w, label %bb.f, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit, !dbg !14597, !prof !351

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1), !dbg !14604
  %.pr = load i32, ptr %i.f, align 4, !dbg !14605, !alias.scope !14600
  %.pre17 = load i32, ptr %i.e, align 8, !dbg !14609, !alias.scope !14600
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit, !dbg !14604

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE4pushCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.pre17, %bb.f ], [ %i.u, %bb.e ], !dbg !14609
  %i.y = phi i32 [ %.pr, %bb.f ], [ %i.v, %bb.e ], !dbg !14605
  %i.z = icmp eq i32 %i.y, 1, !dbg !14610
  %i.aa = load ptr, ptr %0, align 8
  %spec.select = select i1 %i.z, ptr %0, ptr %i.aa, !dbg !14610
  %i.ab = zext i32 %i.x to i64, !dbg !14609
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayxE15slice_uncheckedCslFlrwjHoTci_14polars_compute:bb.a
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am, !dbg !29968
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !29971
  %i.ar = sub i64 %i.an, %i.am, !dbg !29972
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !29972
  ret void, !dbg !29973
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayyE15slice_uncheckedCslFlrwjHoTci_14polars_compute(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !29974 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !29975
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !29976 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !29976 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !29976 ; 2 uses
  store ptr null, ptr %i.c, align 8, !dbg !29981
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !29983
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !29986

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !29987
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29987 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !29987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29988), !dbg !29991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29995), !dbg !29998
  %i.d = icmp eq i64 %1, 0, !dbg !30000
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !30002, !noalias !30003 ; 5 uses
  %i.g = icmp eq i64 %2, %i.f
  %or.cond.i.i = select i1 %i.d, i1 %i.g, i1 false, !dbg !30000
  br i1 %or.cond.i.i, label %bb.j, label %bb.c, !dbg !30000

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !30005 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !30011, !alias.scope !30002, !noalias !30003, !noundef !13 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !30011         ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.f
  %or.cond5.i.i = select i1 %i.j, i1 true, i1 %i.k, !dbg !30011
  br i1 %or.cond5.i.i, label %bb.d, label %bb.e, !dbg !30011

.sink.split.sink.split.i.i:                       ; preds = %.noexc1.i, %bb.f, %bb.d
  %.sink.sink.i.i = phi i64 [ %..i.i, %bb.d ], [ %i.ad, %.noexc1.i ], [ -1, %bb.f ]
  store i64 %.sink.sink.i.i, ptr %i.h, align 8, !dbg !30012, !alias.scope !30002, !noalias !30003
  br label %.sink.split.i.i, !dbg !30012

.sink.split.i.i:                                  ; preds = %bb.e, %.sink.split.sink.split.i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !30012, !alias.scope !30002, !noalias !30003, !noundef !13
  %i.m = add i64 %i.l, %1, !dbg !30012
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !30012, !alias.scope !30002, !noalias !30003
  store i64 %2, ptr %i.e, align 8, !dbg !30012, !alias.scope !30002, !noalias !30003
  br label %bb.j, !dbg !30013

bb.d:                                             ; preds = %bb.c
  %..i.i = select i1 %i.j, i64 0, i64 %2, !dbg !30014
  br label %.sink.split.sink.split.i.i, !dbg !30015

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i64 %i.i, -1, !dbg !30016
  br i1 %i.n, label %bb.f, label %.sink.split.i.i, !dbg !30016

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i64 %i.f, 5, !dbg !30017
  %.sroa.0.0.i.i.i = tail call noundef range(i64 32, 3689348814741910324) i64 @llvm.umax.i64(i64 range(i64 0, 3689348814741910324) %i.o, i64 32), !dbg !30018
  %i.p = add i64 %.sroa.0.0.i.i.i, %2, !dbg !30020
  %.not.i.i = icmp ult i64 %i.p, %i.f, !dbg !30020
  br i1 %.not.i.i, label %.sink.split.sink.split.i.i, label %bb.g, !dbg !30020

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !30021, !alias.scope !30002, !noalias !30003, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40, !dbg !30022 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !30022, !noalias !30024, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32, !dbg !30025 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30025, !noalias !30024, !noundef !13
  %i.v = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.s, i64 noundef %i.q, i64 noundef %1)
          to label %.noexc.i unwind label %bb.h, !dbg !30026, !noalias !30027

.noexc.i:                                         ; preds = %bb.g
  %i.w = add i64 %2, %1, !dbg !30021              ; 2 uses
  %i.x = add i64 %i.q, %i.w, !dbg !30021
  %i.y = load i64, ptr %i.r, align 8, !dbg !30028, !noalias !30024, !noundef !13
  %i.z = load ptr, ptr %i.t, align 8, !dbg !30030, !noalias !30024, !noundef !13
  %i.aa = sub i64 %i.f, %i.w, !dbg !30031
  %i.ab = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.y, i64 noundef %i.x, i64 noundef %i.aa)
          to label %.noexc1.i unwind label %bb.h, !dbg !30032, !noalias !30027

.noexc1.i:                                        ; preds = %.noexc.i
  %i.ac = add i64 %i.v, %i.ab, !dbg !30033
  %i.ad = sub i64 %i.i, %i.ac, !dbg !30033
  br label %.sink.split.sink.split.i.i, !dbg !30034

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i, !dbg !30035, !noalias !30003

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !30038, !noalias !30003
  unreachable, !dbg !30038

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !30039

bb.j:                                             ; preds = %bb.b, %.sink.split.i.i
  %.sroa.513.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !30040 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30040, !noalias !30044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, i64 24, i1 false), !dbg !30048
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !30040, !noalias !30049
  %i.ag = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k, !dbg !30050, !noalias !30044

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.o, !dbg !30053, !noalias !30044

bb.l:                                             ; preds = %bb.j
  %.not1.i = icmp eq i64 %i.ag, 0, !dbg !30056
  br i1 %.not1.i, label %bb.m, label %bb.n, !dbg !30057

bb.m:                                             ; preds = %bb.l
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !30058, !noalias !30044
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit.sink.split, !dbg !30061

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload7 = load ptr, ptr %i.a, align 8, !dbg !30062, !noalias !30063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx15, i64 24, i1 false), !dbg !30062, !noalias !30063
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit.sink.split, !dbg !30061

bb.o:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !30064, !noalias !30044
  unreachable, !dbg !30064

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30065, !noalias !30044
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit.sink.split ], !dbg !30066
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !30067
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !30072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !30072
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !30073
  %i.aj = add i64 %2, %1, !dbg !30074
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30067
  %i.al = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslFlrwjHoTci_14polars_compute(i64 noundef %1, i64 noundef %i.aj, i64 noundef %.pre), !dbg !30075 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !30075 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1, !dbg !30075
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30076 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !30076, !noundef !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am, !dbg !30078
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !30081
  %i.ar = sub i64 %i.an, %i.am, !dbg !30082
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !30082
  ret void, !dbg !30083
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_hour12(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30084 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !30085
  %or.cond = icmp ult i64 %i.a, 12, !dbg !30085
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30085

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 12, !dbg !30089
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !30090 ; 2 uses
  %i.d = trunc nuw nsw i64 %1 to i32, !dbg !30091
  %i.e = select i1 %i.b, i32 0, i32 %i.d, !dbg !30089 ; 2 uses
  %i.f = load i32, ptr %i.c, align 8, !dbg !30092, !range !13994, !alias.scope !30094, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132, !dbg !30092 ; 2 uses
  %i.h = trunc nuw i32 %i.f to i1, !dbg !30097
  %.val.i = load i32, ptr %i.g, align 4, !alias.scope !30094
  %i.i = icmp ne i32 %.val.i, %i.e
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false, !dbg !30097
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30097

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30098
  ret i8 %.sroa.0.0, !dbg !30099

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !dbg !30100, !alias.scope !30094
  store i32 %i.e, ptr %i.g, align 4, !dbg !30100, !alias.scope !30094
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30101
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_minute(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30102 {
bb.a:
  %i.a = icmp ult i64 %1, 60
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30103

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !30107 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30108 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30109, !range !13994, !alias.scope !30111, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140, !dbg !30109 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30114
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30111
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30114
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30114

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30115, !alias.scope !30111
  store i32 %i.c, ptr %i.e, align 4, !dbg !30115, !alias.scope !30111
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30116

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30117
  ret i8 %.sroa.0.0, !dbg !30118
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed10set_second(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30119 {
bb.a:
  %i.a = icmp ult i64 %1, 61
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30120

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !30124 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30125 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30126, !range !13994, !alias.scope !30128, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148, !dbg !30126 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30131
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30128
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30131
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30131

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30132, !alias.scope !30128
  store i32 %i.c, ptr %i.e, align 4, !dbg !30132, !alias.scope !30128
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30133

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30134
  ret i8 %.sroa.0.0, !dbg !30135
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed11set_isoweek(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30136 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !30137
  %or.cond = icmp ult i64 %i.a, 53, !dbg !30137
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30137

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !30141 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30142 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30143, !range !13994, !alias.scope !30145, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100, !dbg !30143 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30148
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30145
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30148
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30148

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30149, !alias.scope !30145
  store i32 %i.c, ptr %i.e, align 4, !dbg !30149, !alias.scope !30145
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30150

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30151
  ret i8 %.sroa.0.0, !dbg !30152
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed11set_isoyear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30153 {
bb.a:
  %i.a = add i64 %1, -2147483648, !dbg !30154
  %or.cond = icmp ult i64 %i.a, -4294967296, !dbg !30154
  br i1 %or.cond, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !30154

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30160 ; 2 uses
  %i.c = trunc nsw i64 %1 to i32, !dbg !30161     ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30162, !range !13994, !alias.scope !30164, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44, !dbg !30162 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30167
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30164
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30167
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30167

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30168, !alias.scope !30164
  store i32 %i.c, ptr %i.e, align 4, !dbg !30168, !alias.scope !30164
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30169

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 1, %bb.b ], !dbg !30170
  ret i8 %.sroa.0.0, !dbg !30171
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed11set_ordinal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30172 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !30173
  %or.cond = icmp ult i64 %i.a, 366, !dbg !30173
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30173

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !30177 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30178 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30179, !range !13994, !alias.scope !30181, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108, !dbg !30179 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30184
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30181
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30184
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30184

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30185, !alias.scope !30181
  store i32 %i.c, ptr %i.e, align 4, !dbg !30185, !alias.scope !30181
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30186

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30187
  ret i8 %.sroa.0.0, !dbg !30188
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed11set_quarter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30189 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !30190
  %or.cond = icmp ult i64 %i.a, 4, !dbg !30190
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30190

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !30194 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30195 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30196, !range !13994, !alias.scope !30198, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !30196 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30201
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30198
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30201
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30201

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30202, !alias.scope !30198
  store i32 %i.c, ptr %i.e, align 4, !dbg !30202, !alias.scope !30198
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30203

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30204
  ret i8 %.sroa.0.0, !dbg !30205
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 1, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed13set_timestamp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30206 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !30207, !range !30210, !alias.scope !30211, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30207 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1, !dbg !30214
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !30211
  %i.d = icmp ne i64 %.val.i, %1
  %or.cond.i = select i1 %i.c, i1 %i.d, i1 false, !dbg !30214
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentxECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !30214

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8, !dbg !30215, !alias.scope !30211
  store i64 %1, ptr %i.b, align 8, !dbg !30215, !alias.scope !30211
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentxECslFlrwjHoTci_14polars_compute.exit, !dbg !30216

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentxECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ 8, %bb.b ], [ 1, %bb.a ], !dbg !30217
  ret i8 %.sroa.0.0.i, !dbg !30218
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed14set_nanosecond(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30219 {
bb.a:
  %i.a = icmp ult i64 %1, 1000000000
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30220

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !30224 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30225 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30226, !range !13994, !alias.scope !30228, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156, !dbg !30226 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30231
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30228
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30231
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30231

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30232, !alias.scope !30228
  store i32 %i.c, ptr %i.e, align 4, !dbg !30232, !alias.scope !30228
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30233

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30234
  ret i8 %.sroa.0.0, !dbg !30235
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed16set_year_div_100(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30236 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483648
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30237

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30241 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30242 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30243, !range !13994, !alias.scope !30245, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !30243 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30248
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30245
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30248
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30248

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30249, !alias.scope !30245
  store i32 %i.c, ptr %i.e, align 4, !dbg !30249, !alias.scope !30245
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30250

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30251
  ret i8 %.sroa.0.0, !dbg !30252
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed16set_year_mod_100(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30253 {
bb.a:
  %.sroa.0.0.i = icmp ult i64 %1, 100, !dbg !30254
  br i1 %.sroa.0.0.i, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30258

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30259 ; 2 uses
  %i.b = trunc nuw nsw i64 %1 to i32, !dbg !30260 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !dbg !30261, !range !13994, !alias.scope !30263, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !30261 ; 2 uses
  %i.e = trunc nuw i32 %i.c to i1, !dbg !30266
  %.val.i = load i32, ptr %i.d, align 4, !alias.scope !30263
  %i.f = icmp ne i32 %.val.i, %i.b
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false, !dbg !30266
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30266

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 8, !dbg !30267, !alias.scope !30263
  store i32 %i.b, ptr %i.d, align 4, !dbg !30267, !alias.scope !30263
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30268

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 1, %bb.b ], !dbg !30269
  ret i8 %.sroa.0.0, !dbg !30270
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed17set_week_from_mon(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30271 {
bb.a:
  %i.a = icmp ult i64 %1, 54
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30272

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !30276 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30277 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30278, !range !13994, !alias.scope !30280, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !30278 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30283
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30280
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30283
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30283

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30284, !alias.scope !30280
  store i32 %i.c, ptr %i.e, align 4, !dbg !30284, !alias.scope !30280
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30285

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30286
  ret i8 %.sroa.0.0, !dbg !30287
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed17set_week_from_sun(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30288 {
bb.a:
  %i.a = icmp ult i64 %1, 54
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30289

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !30293 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30294 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30295, !range !13994, !alias.scope !30297, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !30295 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30300
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30297
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30300
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30300

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30301, !alias.scope !30297
  store i32 %i.c, ptr %i.e, align 4, !dbg !30301, !alias.scope !30297
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30302

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30303
  ret i8 %.sroa.0.0, !dbg !30304
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed19set_isoyear_div_100(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30305 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483648
  br i1 %i.a, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30306

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30310 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30311 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30312, !range !13994, !alias.scope !30314, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52, !dbg !30312 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30317
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30314
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30317
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30317

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30318, !alias.scope !30314
  store i32 %i.c, ptr %i.e, align 4, !dbg !30318, !alias.scope !30314
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30319

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30320
  ret i8 %.sroa.0.0, !dbg !30321
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed19set_isoyear_mod_100(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30322 {
bb.a:
  %.sroa.0.0.i = icmp ult i64 %1, 100, !dbg !30323
  br i1 %.sroa.0.0.i, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30327

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !30328 ; 2 uses
  %i.b = trunc nuw nsw i64 %1 to i32, !dbg !30329 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !dbg !30330, !range !13994, !alias.scope !30332, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60, !dbg !30330 ; 2 uses
  %i.e = trunc nuw i32 %i.c to i1, !dbg !30335
  %.val.i = load i32, ptr %i.d, align 4, !alias.scope !30332
  %i.f = icmp ne i32 %.val.i, %i.b
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false, !dbg !30335
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30335

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 8, !dbg !30336, !alias.scope !30332
  store i32 %i.b, ptr %i.d, align 4, !dbg !30336, !alias.scope !30332
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30337

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 1, %bb.b ], !dbg !30338
  ret i8 %.sroa.0.0, !dbg !30339
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed7set_day(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30340 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !30341
  %or.cond = icmp ult i64 %i.a, 31, !dbg !30341
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30341

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30345 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30346 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30347, !range !13994, !alias.scope !30349, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116, !dbg !30347 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30352
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30349
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30352
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30352

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30353, !alias.scope !30349
  store i32 %i.c, ptr %i.e, align 4, !dbg !30353, !alias.scope !30349
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30354

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30355
  ret i8 %.sroa.0.0, !dbg !30356
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed8set_hour(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30357 {
bb.a:
  %or.cond = icmp ult i64 %1, 12, !dbg !30358
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !30358

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i64 %1, 24, !dbg !30359
  br i1 %i.a, label %bb.d, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30359

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i32, !dbg !30360
  br label %bb.e, !dbg !30362

bb.d:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30363
  %i.d = add nsw i32 %i.c, -12, !dbg !30363
  br label %bb.e, !dbg !30365

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.e ], [ 8, %bb.g ], [ 1, %bb.f ], !dbg !30366
  ret i8 %.sroa.0.0, !dbg !30367

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], !dbg !30366 ; 2 uses
  %.sroa.02.0 = phi i32 [ %i.b, %bb.c ], [ %i.d, %bb.d ], !dbg !30366 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !30368 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !dbg !30370, !range !13994, !alias.scope !30372, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124, !dbg !30370 ; 2 uses
  %i.h = trunc nuw i32 %i.f to i1, !dbg !30375
  %.val.i = load i32, ptr %i.g, align 4, !alias.scope !30372
  %i.i = icmp ne i32 %.val.i, %.sroa.06.0
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false, !dbg !30375
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !30375

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 8, !dbg !30376, !alias.scope !30372
  store i32 %.sroa.06.0, ptr %i.g, align 4, !dbg !30376, !alias.scope !30372
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !30377 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !dbg !30378, !range !13994, !alias.scope !30380, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132, !dbg !30378 ; 2 uses
  %i.m = trunc nuw i32 %i.k to i1, !dbg !30383
  %.val.i7 = load i32, ptr %i.l, align 4, !alias.scope !30380
  %i.n = icmp ne i32 %.val.i7, %.sroa.02.0
  %or.cond.i8 = select i1 %i.m, i1 %i.n, i1 false, !dbg !30383
  br i1 %or.cond.i8, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.g, !dbg !30383

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.j, align 8, !dbg !30384, !alias.scope !30380
  store i32 %.sroa.02.0, ptr %i.l, align 4, !dbg !30384, !alias.scope !30380
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30385
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed8set_year(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30386 {
bb.a:
  %i.a = add i64 %1, -2147483648, !dbg !30387
  %or.cond = icmp ult i64 %i.a, -4294967296, !dbg !30387
  br i1 %or.cond, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !30387

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30392 ; 2 uses
  %i.c = trunc nsw i64 %1 to i32, !dbg !30393     ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30394, !range !13994, !alias.scope !30396, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !30394 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30399
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30396
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30399
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30399

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30400, !alias.scope !30396
  store i32 %i.c, ptr %i.e, align 4, !dbg !30400, !alias.scope !30396
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit, !dbg !30401

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentlECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 1, %bb.b ], !dbg !30402
  ret i8 %.sroa.0.0, !dbg !30403
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i8 0, 9) i8 @_RNvMNtNtCs9o5SvTbM2BP_6chrono6format6parsedNtB2_6Parsed9set_month(ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !30404 {
bb.a:
  %i.a = add i64 %1, -1, !dbg !30405
  %or.cond = icmp ult i64 %i.a, 12, !dbg !30405
  br i1 %or.cond, label %bb.b, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30405

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !30409 ; 2 uses
  %i.c = trunc nuw nsw i64 %1 to i32, !dbg !30410 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !dbg !30411, !range !13994, !alias.scope !30413, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !30411 ; 2 uses
  %i.f = trunc nuw i32 %i.d to i1, !dbg !30416
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !30413
  %i.g = icmp ne i32 %.val.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !30416
  br i1 %or.cond.i, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !30416

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !dbg !30417, !alias.scope !30413
  store i32 %i.c, ptr %i.e, align 4, !dbg !30417, !alias.scope !30413
  br label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit, !dbg !30418

_RINvNtNtCs9o5SvTbM2BP_6chrono6format6parsed17set_if_consistentmECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 8, %bb.c ], !dbg !30419
  ret i8 %.sroa.0.0, !dbg !30420
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !30421 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30422
  %i.e = load i32, ptr %i.d, align 8, !dbg !30422, !noundef !13 ; 4 uses
  %i.f = icmp ugt i64 %1, 4294967295, !dbg !30423
  br i1 %i.f, label %.split, label %.split3, !dbg !30423

.split3:                                          ; preds = %bb.a
  %i.g = trunc nuw i64 %1 to i32, !dbg !30432
end_hunk_1
