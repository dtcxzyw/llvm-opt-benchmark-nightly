Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/url-87b1260612fb7523.url.f576e06f7f472a39-cgu.00?download=true
inline.NumInlined: 293
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url13make_relative:bb.a

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit278, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit281, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit286, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit288, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit291, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit283, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split ], [ %lpad.loopexit392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit ], [ %lpad.loopexit.split-lp393, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #17
          to label %bb.dn unwind label %bb.dm

bb.am:                                            ; preds = %bb.al
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  %i.cw = extractvalue { ptr, i64 } %i.cu, 1
  invoke fastcc void @_RNvNvMs_Csl4BgoAJVhPh_3urlNtB6_3Url13make_relative21extract_path_filename(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cw)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.de = invoke { ptr, i64 } @_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.df = extractvalue { ptr, i64 } %i.de, 0
  %i.dg = extractvalue { ptr, i64 } %i.de, 1
  invoke fastcc void @_RNvNvMs_Csl4BgoAJVhPh_3urlNtB6_3Url13make_relative21extract_path_filename(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dg)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !noundef !4 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  store i64 0, ptr %i.do, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.cz, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store ptr %i.cx, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %i.cz, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  store i64 0, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 %i.cz, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  store i32 47, ptr %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 47, ptr %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx, align 4
  %.sroa.536.sroa.9.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  store i8 1, ptr %.sroa.536.sroa.9.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i8 1, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 89 ; 3 uses
  store i8 0, ptr %.sroa.738.0..sroa_idx, align 1
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i64 0, ptr %i.dp, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.dj, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.dh, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 %i.dj, ptr %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  store i64 0, ptr %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  store i64 %i.dj, ptr %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  store i32 47, ptr %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.8.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 47, ptr %.sroa.560.sroa.8.0..sroa.560.0..sroa_idx.sroa_idx, align 4
  %.sroa.560.sroa.9.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store i8 1, ptr %.sroa.560.sroa.9.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 1, ptr %.sroa.661.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 89 ; 3 uses
  store i8 0, ptr %.sroa.762.0..sroa_idx, align 1
  store i64 0, ptr %i.d, align 8
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl4BgoAJVhPh_3url.exit261

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl4BgoAJVhPh_3url.exit261: ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl4BgoAJVhPh_3url.exit261.backedge, %bb.ap
  %i.dq = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECsl4BgoAJVhPh_3url(ptr noalias noundef align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 dereferenceable(72) %i.do)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.aq:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl4BgoAJVhPh_3url.exit261
  %i.dr = load ptr, ptr %i.dq, align 8, !noundef !4
  %.not90 = icmp eq ptr %i.dr, null
  br i1 %.not90, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECsl4BgoAJVhPh_3url(ptr noalias noundef align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 dereferenceable(72) %i.do)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread: ; preds = %bb.be, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit, %bb.bb, %bb.bc, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8 ; 2 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.572.0.copyload = load i64, ptr %.sroa.572.0..sroa_idx, align 8 ; 2 uses
  %.promoted319 = load i64, ptr %i.c, align 8     ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 89 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val.i129 = load ptr, ptr %i.dv, align 8, !nonnull !4 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val1.i130 = load i64, ptr %i.dw, align 8      ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.dy = load i64, ptr %i.dx, align 8            ; 5 uses
  %.not.i.i = icmp ugt i64 %i.dy, %.val1.i130
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.eb = load i8, ptr %i.ea, align 8             ; 2 uses
  %i.ec = zext nneg i8 %i.eb to i64               ; 4 uses
  %i.ed = icmp ult i8 %i.eb, 5
  %i.ee = getelementptr i8, ptr %i.dz, i64 %i.ec
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.eh = load i8, ptr %i.eg, align 8, !range !5
  %i.ei = trunc nuw i8 %i.eh to i1                ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 4 uses
  %.promoted326 = load i64, ptr %i.dt, align 8    ; 4 uses
  %.not.i.i.fr = freeze i1 %.not.i.i
  br i1 %.not.i.i.fr, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.preheader

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.preheader: ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.promoted321 = load i64, ptr %i.ej, align 8
  %i.ek = trunc nuw i64 %.promoted319 to i1
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us: ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread
  %.promoted336 = load i8, ptr %i.du, align 1     ; 2 uses
  %.not.i3.i.us = icmp ne i64 %.pre2.i.i, %.promoted326
  %or.cond.not.i.i.us = select i1 %i.ei, i1 true, i1 %.not.i3.i.us ; 3 uses
  %i.el = sub nuw i64 %.pre2.i.i, %.promoted326
  %.sroa.3.0.i.i.us = select i1 %or.cond.not.i.i.us, i64 %i.el, i64 undef ; 2 uses
  %i.em = trunc nuw i64 %.promoted319 to i1
  br i1 %i.em, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i.us.peel, label %bb.as

bb.as:                                            ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i129, i64 %.promoted326
  %.sroa.0.0.i.i131.us = select i1 %or.cond.not.i.i.us, ptr %i.en, ptr null
  %i.eo = trunc nuw i8 %.promoted336 to i1
  br i1 %i.eo, label %.split331, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i.us.peel

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i.us.peel: ; preds = %bb.as, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us
  %i.ep = phi i8 [ %.promoted336, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us ], [ 1, %bb.as ]
  %.sroa.7.0.us.peel = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us ], [ %.sroa.3.0.i.i.us, %bb.as ]
  %.sroa.010.0.us.peel = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.us ], [ %.sroa.0.0.i.i131.us, %bb.as ]
  %.not95.us.peel = icmp eq ptr %.sroa.010.0.us.peel, null
  %i.eq = icmp eq i64 %.sroa.7.0.us.peel, 0
  %or.cond101.us.peel = select i1 %.not95.us.peel, i1 true, i1 %i.eq
  br i1 %or.cond101.us.peel, label %.split331, label %bb.at

bb.at:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i.us.peel
  %i.er = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !4 ; 4 uses
  %i.es = icmp sgt i64 %i.er, -1
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp eq i64 %i.er, 0
  br i1 %i.et, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit190.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit190.us.peel: ; preds = %bb.au
  %i.eu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !422, !nonnull !4, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.er
  store i8 47, ptr %i.ev, align 1
  %i.ew = add nuw i64 %i.er, 1
  store i64 %i.ew, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !422
  br label %bb.av

bb.av:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit190.us.peel, %bb.at
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us.peel: ; preds = %bb.av
  %i.ex = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !423, !noundef !4 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !423, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  store i16 11822, ptr %i.fa, align 1
  %.pre.i191.us.peel = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !423 ; 2 uses
  %i.fb = trunc nuw i8 %i.ep to i1
  %storemerge506 = add i64 %.pre.i191.us.peel, 2  ; 4 uses
  store i64 %storemerge506, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !423
  br i1 %i.fb, label %.split331, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us.peel
  %i.fc = icmp ne i64 %.sroa.3.0.i.i.us, 0
  %.not497 = select i1 %or.cond.not.i.i.us, i1 %i.fc, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  br i1 %.not497, label %bb.aw, label %.split331

bb.aw:                                            ; preds = %.lr.ph
  %i.fd = icmp sgt i64 %storemerge506, -1
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %storemerge506, 0
  br i1 %i.fe, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit190.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit190.us: ; preds = %bb.ax
  %i.ff = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !422, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %storemerge506
  store i8 47, ptr %i.fg, align 1
  %i.fh = add i64 %.pre.i191.us.peel, 3
  store i64 %i.fh, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !422
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit190.us, %bb.aw
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us: ; preds = %bb.ay
  %i.fi = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !423, !noundef !4 ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !423, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  store i16 11822, ptr %i.fl, align 1
  %.pre.i191.us = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !423
  %storemerge = add i64 %.pre.i191.us, 2
  store i64 %storemerge, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !423
  br label %.split331

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit: ; preds = %bb.ax, %bb.ay
  %lpad.loopexit392 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp: ; preds = %bb.au, %bb.av
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.ar
  %i.fm = load ptr, ptr %i.ds, align 8, !noundef !4
  %.not91 = icmp eq ptr %i.fm, null               ; 2 uses
  %i.fn = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECsl4BgoAJVhPh_3url(ptr noalias noundef align 8 dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(72) %i.dp)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fo = load ptr, ptr %i.fn, align 8, !noundef !4 ; 2 uses
  %.not92 = icmp eq ptr %i.fo, null
  br i1 %.not92, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not91, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread, label %bb.be

bb.bc:                                            ; preds = %bb.ba
  br i1 %.not91, label %bb.bd, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread

bb.bd:                                            ; preds = %bb.bc, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit
  %.sroa.066.0.copyload = load i64, ptr %i.e, align 8
  store i64 0, ptr %i.e, align 8
  %i.fp = trunc nuw i64 %.sroa.066.0.copyload to i1
  br i1 %i.fp, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl4BgoAJVhPh_3url.exit227, label %bb.cw

bb.be:                                            ; preds = %bb.bb
  %i.fq = getelementptr i8, ptr %i.ds, i64 8
  %..val105 = load i64, ptr %i.fq, align 8, !noundef !4 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fn, i64 8
  %.val107 = load i64, ptr %i.fr, align 8, !noundef !4
  %i.fs = icmp eq i64 %..val105, %.val107
  br i1 %i.fs, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit: ; preds = %bb.be
  %..val = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %..val, ptr nonnull readonly %i.fo, i64 %..val105), !alias.scope !426
  %i.ft = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ft, label %bb.bd, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split: ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.preheader, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193
  %.lcssa296328 = phi i64 [ %.lcssa296327, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193 ], [ %.promoted326, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.preheader ] ; 7 uses
  %.lcssa318324 = phi i64 [ %.lcssa318323, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193 ], [ %.promoted321, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.preheader ] ; 4 uses
  %.sroa.070.0.copyload320 = phi i1 [ false, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193 ], [ %i.ek, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split.preheader ]
  br i1 %.sroa.070.0.copyload320, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.fu = load i8, ptr %i.du, align 1, !range !5, !alias.scope !424, !noundef !4
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.split331, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.fw = icmp ult i64 %i.dy, %.lcssa318324
  br i1 %i.fw, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bg
  call void @llvm.assume(i1 %i.ed)
  %.pre.i.i = load i8, ptr %i.ef, align 1, !alias.scope !427 ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bl, %.lr.ph.i.i
  %i.fx = phi i64 [ %.lcssa318324, %.lr.ph.i.i ], [ %i.gm, %bb.bl ] ; 3 uses
  %i.fy = sub nuw i64 %i.dy, %i.fx                ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i129, i64 %i.fx ; 2 uses
  %i.ga = icmp samesign ult i64 %i.fy, 16
  br i1 %i.ga, label %.preheader.i.i.i, label %bb.bi

.preheader.i.i.i:                                 ; preds = %bb.bh
  %.not.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.gb = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.fy)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.bj, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.fy, %bb.bj ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.bj ], [ 1, %.lr.ph.i.i.i ]
  %i.gc = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.gd = insertvalue { i64, i64 } %i.gc, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.bj
  %.sroa.01.05.i.i.i = phi i64 [ %i.gh, %bb.bj ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sroa.01.05.i.i.i
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !428, !noalias !429, !noundef !4
  %i.gg = icmp eq i8 %i.gf, %.pre.i.i
  br i1 %i.gg, label %._crit_edge.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.gh = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gh, %i.fy
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.bi, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.gd, %._crit_edge.i.i.i ], [ %i.gb, %bb.bi ] ; 2 uses
  %i.gi = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.gj = trunc nuw i64 %i.gi to i1
  br i1 %i.gj, label %bb.bk, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i

bb.bk:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.gk = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.gl = add i64 %i.fx, 1
  %i.gm = add i64 %i.gl, %i.gk                    ; 8 uses
  %.not12.i.i = icmp ult i64 %i.gm, %i.ec
  %.not13.i.i = icmp ugt i64 %i.gm, %.val1.i130
  %or.cond.i.i = or i1 %.not12.i.i, %.not13.i.i
  br i1 %or.cond.i.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %i.gn = icmp ult i64 %i.dy, %i.gm
  br i1 %i.gn, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i, label %bb.bh

bb.bm:                                            ; preds = %bb.bk
  %i.go = sub nuw i64 %i.gm, %i.ec                ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i129, i64 %i.go
  %bcmp.i.i132 = call i32 @bcmp(ptr nonnull %i.gp, ptr nonnull %i.dz, i64 %i.ec), !noalias !430
  %i.gq = icmp eq i32 %bcmp.i.i132, 0
  br i1 %i.gq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.bl

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.bm
  %i.gr = sub nuw i64 %i.go, %.lcssa296328
  %i.gs = getelementptr inbounds nuw i8, ptr %.val.i129, i64 %.lcssa296328
  br label %bb.bn

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i: ; preds = %bb.bl, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %bb.bg
  %.lcssa318322 = phi i64 [ %.lcssa318324, %bb.bg ], [ %i.dy, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ], [ %i.gm, %bb.bl ]
  store i8 1, ptr %i.du, align 1, !alias.scope !431
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa296328
  %or.cond.not.i.i = select i1 %i.ei, i1 true, i1 %.not.i3.i ; 2 uses
  %i.gt = sub nuw i64 %.pre2.i.i, %.lcssa296328
  %i.gu = getelementptr inbounds nuw i8, ptr %.val.i129, i64 %.lcssa296328
  %.sroa.3.0.i.i = select i1 %or.cond.not.i.i, i64 %i.gt, i64 undef
  %.sroa.0.0.i.i131 = select i1 %or.cond.not.i.i, ptr %i.gu, ptr null
  br label %bb.bn

bb.bn:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split
  %.lcssa296327 = phi i64 [ %.lcssa296328, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split ], [ %.lcssa296328, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i ], [ %i.gm, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.lcssa318323 = phi i64 [ %.lcssa318324, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split ], [ %.lcssa318322, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i ], [ %i.gm, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split ], [ %.sroa.3.0.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i ], [ %i.gr, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl4BgoAJVhPh_3url.exit.thread.split ], [ %.sroa.0.0.i.i131, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i ], [ %i.gs, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.not95 = icmp eq ptr %.sroa.010.0, null
  %i.gv = icmp eq i64 %.sroa.7.0, 0
  %or.cond101 = select i1 %.not95, i1 true, i1 %i.gv
  br i1 %or.cond101, label %.split331, label %bb.bo

.split331:                                        ; preds = %bb.bf, %bb.bn, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us.peel, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit193.us, %.lr.ph, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i.us.peel, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8 ; 2 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.575.0.copyload = load i64, ptr %.sroa.575.0..sroa_idx, align 8
  %.promoted345 = load i64, ptr %i.b, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 89 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i133 = load ptr, ptr %i.gy, align 8, !nonnull !4 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val1.i134 = load i64, ptr %i.gz, align 8      ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hc = load i64, ptr %i.hb, align 8            ; 5 uses
  %.not.i.i137 = icmp ugt i64 %i.hc, %.val1.i134
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.hf = load i8, ptr %i.he, align 8             ; 2 uses
  %i.hg = zext nneg i8 %i.hf to i64               ; 4 uses
  %i.hh = icmp ult i8 %i.hf, 5
  %i.hi = getelementptr i8, ptr %i.hd, i64 %i.hg
  %i.hj = getelementptr i8, ptr %i.hi, i64 -1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hl = load i8, ptr %i.hk, align 8, !range !5
  %i.hm = trunc nuw i8 %i.hl to i1
  %.phi.trans.insert.i.i144 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre2.i.i145 = load i64, ptr %.phi.trans.insert.i.i144, align 8 ; 2 uses
  %.promoted347 = load i64, ptr %i.ha, align 8
  %.promoted352 = load i64, ptr %i.gw, align 8
  %i.hn = trunc nuw i64 %.promoted345 to i1
  %.not96 = icmp eq ptr %.sroa.474.0.copyload, null
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ho = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !4 ; 4 uses
  %i.hp = icmp sgt i64 %i.ho, -1
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %bb.cv, label %bb.cu

bb.bp:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit188, %.split331
  %.lcssa293354 = phi i64 [ %.lcssa293353485, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit188 ], [ %.promoted352, %.split331 ] ; 7 uses
  %.lcssa344350 = phi i64 [ %.lcssa344349486, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit188 ], [ %.promoted347, %.split331 ] ; 4 uses
  %.sroa.073.0.copyload346 = phi i1 [ false, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit188 ], [ %i.hn, %.split331 ]
  br i1 %.sroa.073.0.copyload346, label %bb.by, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.hr = load i8, ptr %i.gx, align 1, !range !5, !alias.scope !432, !noundef !4
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %.thread469, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.ht = icmp ult i64 %i.hc, %.lcssa344350
  %brmerge = select i1 %i.ht, i1 true, i1 %.not.i.i137
  br i1 %brmerge, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142, label %.lr.ph.split.i.i138

.lr.ph.split.i.i138:                              ; preds = %bb.br
  call void @llvm.assume(i1 %i.hh)
  %.pre.i.i139 = load i8, ptr %i.hj, align 1, !alias.scope !434 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bw, %.lr.ph.split.i.i138
  %i.hu = phi i64 [ %.lcssa344350, %.lr.ph.split.i.i138 ], [ %i.ij, %bb.bw ] ; 3 uses
  %i.hv = sub nuw i64 %i.hc, %i.hu                ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i133, i64 %i.hu ; 2 uses
  %i.hx = icmp samesign ult i64 %i.hv, 16
  br i1 %i.hx, label %.preheader.i.i.i157, label %bb.bt

.preheader.i.i.i157:                              ; preds = %bb.bs
  %.not.i.i.i158 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i158, label %._crit_edge.i.i.i162, label %.lr.ph.i.i.i159

bb.bt:                                            ; preds = %bb.bs
  %i.hy = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i139, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef range(i64 0, -9223372036854775808) %i.hv)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i140 unwind label %.loopexit

._crit_edge.i.i.i162:                             ; preds = %bb.bu, %.lr.ph.i.i.i159, %.preheader.i.i.i157
  %.sroa.01.0.lcssa.i.i.i163 = phi i64 [ 0, %.preheader.i.i.i157 ], [ %i.hv, %bb.bu ], [ %.sroa.01.05.i.i.i160, %.lr.ph.i.i.i159 ]
  %.sroa.0.1.i.i.i164 = phi i64 [ 0, %.preheader.i.i.i157 ], [ 0, %bb.bu ], [ 1, %.lr.ph.i.i.i159 ]
  %i.hz = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i164, 0
  %i.ia = insertvalue { i64, i64 } %i.hz, i64 %.sroa.01.0.lcssa.i.i.i163, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i140

.lr.ph.i.i.i159:                                  ; preds = %.preheader.i.i.i157, %bb.bu
  %.sroa.01.05.i.i.i160 = phi i64 [ %i.ie, %bb.bu ], [ 0, %.preheader.i.i.i157 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.01.05.i.i.i160
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !435, !noalias !436, !noundef !4
  %i.id = icmp eq i8 %i.ic, %.pre.i.i139
  br i1 %i.id, label %._crit_edge.i.i.i162, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i159
  %i.ie = add nuw nsw i64 %.sroa.01.05.i.i.i160, 1 ; 2 uses
  %exitcond.not.i.i.i161 = icmp eq i64 %i.ie, %i.hv
  br i1 %exitcond.not.i.i.i161, label %._crit_edge.i.i.i162, label %.lr.ph.i.i.i159

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i140: ; preds = %bb.bt, %._crit_edge.i.i.i162
  %.merged.i.i.i141 = phi { i64, i64 } [ %i.ia, %._crit_edge.i.i.i162 ], [ %i.hy, %bb.bt ] ; 2 uses
  %i.if = extractvalue { i64, i64 } %.merged.i.i.i141, 0
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.bv, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142

bb.bv:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i140
  %i.ih = extractvalue { i64, i64 } %.merged.i.i.i141, 1
  %i.ii = add i64 %i.hu, 1
  %i.ij = add i64 %i.ii, %i.ih                    ; 8 uses
  %.not12.i.i152 = icmp ult i64 %i.ij, %i.hg
  %.not13.i.i153 = icmp ugt i64 %i.ij, %.val1.i134
  %or.cond.i.i154 = or i1 %.not12.i.i152, %.not13.i.i153
  br i1 %or.cond.i.i154, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %i.ik = icmp ult i64 %i.hc, %i.ij
  br i1 %i.ik, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142, label %bb.bs

bb.bx:                                            ; preds = %bb.bv
  %i.il = sub nuw i64 %i.ij, %i.hg                ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.val.i133, i64 %i.il
  %bcmp.i.i155 = call i32 @bcmp(ptr nonnull %i.im, ptr nonnull %i.hd, i64 %i.hg), !noalias !437
  %i.in = icmp eq i32 %bcmp.i.i155, 0
  br i1 %i.in, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156, label %bb.bw

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156: ; preds = %bb.bx
  %i.io = sub nuw i64 %i.il, %.lcssa293354
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i133, i64 %.lcssa293354
  br label %.thread479

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142: ; preds = %bb.bw, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i140, %bb.br
  %.lcssa344348 = phi i64 [ %.lcssa344350, %bb.br ], [ %i.hc, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i140 ], [ %i.ij, %bb.bw ]
  store i8 1, ptr %i.gx, align 1, !alias.scope !438
  %.not.i3.i146 = icmp ne i64 %.pre2.i.i145, %.lcssa293354
  %or.cond.not.i.i147 = select i1 %i.hm, i1 true, i1 %.not.i3.i146
  %i.iq = sub nuw i64 %.pre2.i.i145, %.lcssa293354
  %i.ir = getelementptr inbounds nuw i8, ptr %.val.i133, i64 %.lcssa293354
  br i1 %or.cond.not.i.i147, label %.thread479, label %.thread469

bb.by:                                            ; preds = %bb.bp
  br i1 %.not96, label %.thread469, label %.thread479

.thread479:                                       ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156, %bb.by
  %.sroa.013.0488 = phi ptr [ %.sroa.474.0.copyload, %bb.by ], [ %i.ip, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156 ], [ %i.ir, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142 ]
  %.sroa.715.0487 = phi i64 [ %.sroa.575.0.copyload, %bb.by ], [ %i.io, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156 ], [ %i.iq, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142 ] ; 4 uses
  %.lcssa344349486 = phi i64 [ %.lcssa344350, %bb.by ], [ %i.ij, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156 ], [ %.lcssa344348, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142 ]
  %.lcssa293353485 = phi i64 [ %.lcssa293354, %bb.by ], [ %i.ij, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i156 ], [ %.lcssa293354, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142 ]
  %i.is = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !4 ; 4 uses
  %i.it = icmp sgt i64 %i.is, -1
  call void @llvm.assume(i1 %i.it)
  %i.iu = icmp eq i64 %i.is, 0
  br i1 %i.iu, label %bb.cs, label %bb.cr

.thread469:                                       ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl4BgoAJVhPh_3url.exit.i142, %bb.bq, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.iv = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !4 ; 6 uses
  %i.iw = icmp sgt i64 %i.iv, -1
  call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp eq i64 %i.iv, 0                    ; 2 uses
  %i.iy = icmp eq i64 %i.dd, %i.dn
  %or.cond = and i1 %i.iy, %i.ix
  br i1 %or.cond, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.thread469
  %bcmp97 = call i32 @bcmp(ptr nonnull %i.db, ptr nonnull %i.dl, i64 %i.dd)
  %.not98 = icmp eq i32 %bcmp97, 0
  br i1 %.not98, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.thread469, %bb.bz
  %i.iz = icmp eq i64 %i.dn, 0
  br i1 %i.iz, label %bb.cc, label %bb.cd

.sink.split:                                      ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit
  %.sink = phi i64 [ %i.jl, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsl4BgoAJVhPh_3url.exit ], [ %i.jd, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit ]
  store i64 %.sink, ptr %.sroa.528.0..sroa_idx, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split, %bb.bz
  %i.ja = invoke { ptr, i64 } @_RNvMs_Csl4BgoAJVhPh_3urlNtB4_3Url5query(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.cc
  %i.jb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !439, !nonnull !4, !noundef !4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iv
  store i8 47, ptr %i.jc, align 1
  %i.jd = add nuw i64 %i.iv, 1
  br label %.sink.split

bb.cd:                                            ; preds = %bb.ca
  br i1 %i.ix, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl4BgoAJVhPh_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
