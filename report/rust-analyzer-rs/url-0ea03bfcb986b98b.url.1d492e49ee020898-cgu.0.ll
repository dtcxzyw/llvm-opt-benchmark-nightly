Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/url-0ea03bfcb986b98b.url.1d492e49ee020898-cgu.0?download=true
inline.NumInlined: 292
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url13make_relative:bb.a

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit272, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit275, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit280, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit282, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit285, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit277, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split ], [ %lpad.loopexit386, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit ], [ %lpad.loopexit.split-lp387, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #17
          to label %bb.df unwind label %bb.de

bb.ai:                                            ; preds = %bb.ah
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  invoke fastcc void @_RNvNvMs_Cs2vT3jxLudSK_3urlNtB6_3Url13make_relative21extract_path_filename(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cy)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !5 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.df = load i64, ptr %i.de, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dg = invoke { ptr, i64 } @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0
  %i.di = extractvalue { ptr, i64 } %i.dg, 1
  invoke fastcc void @_RNvNvMs_Cs2vT3jxLudSK_3urlNtB6_3Url13make_relative21extract_path_filename(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.di)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  store i64 0, ptr %i.dq, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.db, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store ptr %i.cz, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %i.db, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  store i64 0, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 %i.db, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
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
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i64 0, ptr %i.dr, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.dl, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.dj, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 %i.dl, ptr %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  store i64 0, ptr %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  store i64 %i.dl, ptr %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx, align 8
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
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255.backedge, %bb.al
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(72) %i.dq)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.am:                                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255
  %i.dt = load ptr, ptr %i.ds, align 8, !noundef !5
  %.not83 = icmp eq ptr %i.dt, null
  br i1 %.not83, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(72) %i.dq)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread: ; preds = %bb.ba, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit, %bb.ax, %bb.ay, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8 ; 2 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.572.0.copyload = load i64, ptr %.sroa.572.0..sroa_idx, align 8 ; 2 uses
  %.promoted313 = load i64, ptr %i.c, align 8     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 89 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val.i117 = load ptr, ptr %i.dx, align 8, !nonnull !5 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val1.i118 = load i64, ptr %i.dy, align 8      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ea = load i64, ptr %i.dz, align 8            ; 5 uses
  %.not.i.i = icmp ugt i64 %i.ea, %.val1.i118
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ed = load i8, ptr %i.ec, align 8             ; 2 uses
  %i.ee = zext nneg i8 %i.ed to i64               ; 4 uses
  %i.ef = icmp ult i8 %i.ed, 5
  %i.eg = getelementptr i8, ptr %i.eb, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ej = load i8, ptr %i.ei, align 8, !range !6
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 4 uses
  %.promoted320 = load i64, ptr %i.dv, align 8    ; 4 uses
  %.not.i.i.fr = freeze i1 %.not.i.i
  br i1 %.not.i.i.fr, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.promoted315 = load i64, ptr %i.el, align 8
  %i.em = trunc nuw i64 %.promoted313 to i1
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread
  %.promoted330 = load i8, ptr %i.dw, align 1     ; 2 uses
  %.not.i3.i.us = icmp ne i64 %.pre2.i.i, %.promoted320
  %or.cond.not.i.i.us = select i1 %i.ek, i1 true, i1 %.not.i3.i.us ; 3 uses
  %i.en = sub nuw i64 %.pre2.i.i, %.promoted320
  %.sroa.3.0.i.i.us = select i1 %or.cond.not.i.i.us, i64 %i.en, i64 undef ; 2 uses
  %i.eo = trunc nuw i64 %.promoted313 to i1
  br i1 %i.eo, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.promoted320
  %.sroa.0.0.i.i119.us = select i1 %or.cond.not.i.i.us, ptr %i.ep, ptr null
  %i.eq = trunc nuw i8 %.promoted330 to i1
  br i1 %i.eq, label %.split325, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel: ; preds = %bb.ao, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us
  %i.er = phi i8 [ %.promoted330, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ 1, %bb.ao ]
  %.sroa.7.0.us.peel = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ %.sroa.3.0.i.i.us, %bb.ao ]
  %.sroa.010.0.us.peel = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ %.sroa.0.0.i.i119.us, %bb.ao ]
  %.not88.us.peel = icmp eq ptr %.sroa.010.0.us.peel, null
  %i.es = icmp eq i64 %.sroa.7.0.us.peel, 0
  %or.cond94.us.peel = select i1 %.not88.us.peel, i1 true, i1 %i.es
  br i1 %or.cond94.us.peel, label %.split325, label %bb.ap

bb.ap:                                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel
  %i.et = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.eu = icmp sgt i64 %i.et, -1
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel: ; preds = %bb.aq
  %i.ew = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !435, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et
  store i8 47, ptr %i.ex, align 1
  %i.ey = add nuw i64 %i.et, 1
  store i64 %i.ey, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !435
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel, %bb.ap
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel: ; preds = %bb.ar
  %i.ez = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436, !noundef !5 ; 2 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store i16 11822, ptr %i.fc, align 1
  %.pre.i.us.peel = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436 ; 2 uses
  %i.fd = trunc nuw i8 %i.er to i1
  %storemerge494 = add i64 %.pre.i.us.peel, 2     ; 4 uses
  store i64 %storemerge494, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  br i1 %i.fd, label %.split325, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel
  %i.fe = icmp ne i64 %.sroa.3.0.i.i.us, 0
  %.not485 = select i1 %or.cond.not.i.i.us, i1 %i.fe, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  br i1 %.not485, label %bb.as, label %.split325

bb.as:                                            ; preds = %.lr.ph
  %i.ff = icmp sgt i64 %storemerge494, -1
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i64 %storemerge494, 0
  br i1 %i.fg, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us: ; preds = %bb.at
  %i.fh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !435, !nonnull !5, !noundef !5
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %storemerge494
  store i8 47, ptr %i.fi, align 1
  %i.fj = add i64 %.pre.i.us.peel, 3
  store i64 %i.fj, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !435
  br label %bb.au

bb.au:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us, %bb.as
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us: ; preds = %bb.au
  %i.fk = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436, !noundef !5 ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fk
  store i16 11822, ptr %i.fn, align 1
  %.pre.i.us = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  %storemerge = add i64 %.pre.i.us, 2
  store i64 %storemerge, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  br label %.split325

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit: ; preds = %bb.at, %bb.au
  %lpad.loopexit386 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp: ; preds = %bb.aq, %bb.ar
  %lpad.loopexit.split-lp387 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.an
  %i.fo = load ptr, ptr %i.du, align 8, !noundef !5
  %.not84 = icmp eq ptr %i.fo, null               ; 2 uses
  %i.fp = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(72) %i.dr)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.fq = load ptr, ptr %i.fp, align 8, !noundef !5 ; 2 uses
  %.not85 = icmp eq ptr %i.fq, null
  br i1 %.not85, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not84, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  br i1 %.not84, label %bb.az, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread

bb.az:                                            ; preds = %bb.ay, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit
  %.sroa.066.0.copyload = load i64, ptr %i.e, align 8
  store i64 0, ptr %i.e, align 8
  %i.fr = trunc nuw i64 %.sroa.066.0.copyload to i1
  br i1 %i.fr, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit219, label %bb.cq

bb.ba:                                            ; preds = %bb.ax
  %i.fs = getelementptr i8, ptr %i.du, i64 8
  %..val98 = load i64, ptr %i.fs, align 8, !noundef !5 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fp, i64 8
  %.val100 = load i64, ptr %i.ft, align 8, !noundef !5
  %i.fu = icmp eq i64 %..val98, %.val100
  br i1 %i.fu, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit: ; preds = %bb.ba
  %..val = load ptr, ptr %i.du, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %..val, ptr nonnull readonly %i.fq, i64 %..val98), !alias.scope !439
  %i.fv = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fv, label %bb.az, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit
  %.lcssa290322 = phi i64 [ %.lcssa290321, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit ], [ %.promoted320, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader ] ; 7 uses
  %.lcssa312318 = phi i64 [ %.lcssa312317, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit ], [ %.promoted315, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader ] ; 4 uses
  %.sroa.070.0.copyload314 = phi i1 [ false, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit ], [ %i.em, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader ]
  br i1 %.sroa.070.0.copyload314, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.fw = load i8, ptr %i.dw, align 1, !range !6, !alias.scope !437, !noundef !5
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %.split325, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.fy = icmp ult i64 %i.ea, %.lcssa312318
  br i1 %i.fy, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.bc
  call void @llvm.assume(i1 %i.ef)
  %.pre.i.i = load i8, ptr %i.eh, align 1, !alias.scope !440 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.bg, %.lr.ph.split.preheader.i.i
  %i.fz = phi i64 [ %i.go, %bb.bg ], [ %.lcssa312318, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.ga = sub nuw i64 %i.ea, %i.fz                ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %i.fz ; 2 uses
  %i.gc = icmp samesign ult i64 %i.ga, 16
  br i1 %i.gc, label %.preheader.i.i.i, label %bb.bd

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bd:                                            ; preds = %.lr.ph.split.i.i
  %i.gd = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gb, i64 noundef range(i64 0, -9223372036854775808) %i.ga)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.be, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.ga, %bb.be ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.be ], [ 1, %.lr.ph.i.i.i ]
  %i.ge = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.gf = insertvalue { i64, i64 } %i.ge, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.be
  %.sroa.01.05.i.i.i = phi i64 [ %i.gj, %bb.be ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.01.05.i.i.i
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !441, !noalias !442, !noundef !5
  %i.gi = icmp eq i8 %i.gh, %.pre.i.i
  br i1 %i.gi, label %._crit_edge.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.gj = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gj, %i.ga
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.bd, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.gf, %._crit_edge.i.i.i ], [ %i.gd, %bb.bd ] ; 2 uses
  %i.gk = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %bb.bf, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i

bb.bf:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.gm = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.gn = add i64 %i.fz, 1
  %i.go = add i64 %i.gn, %i.gm                    ; 8 uses
  %.not11.i.i = icmp ult i64 %i.go, %i.ee
  %.not12.i.i = icmp ugt i64 %i.go, %.val1.i118
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %i.gp = icmp ult i64 %i.ea, %i.go
  br i1 %i.gp, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, label %.lr.ph.split.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gq = sub nuw i64 %i.go, %i.ee                ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %i.gq
  %bcmp.i.i120 = call i32 @bcmp(ptr nonnull %i.gr, ptr nonnull %i.eb, i64 %i.ee), !noalias !443
  %i.gs = icmp eq i32 %bcmp.i.i120, 0
  br i1 %i.gs, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.bg

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.bh
  %i.gt = sub nuw i64 %i.gq, %.lcssa290322
  %i.gu = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.lcssa290322
  br label %bb.bi

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i: ; preds = %bb.bg, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.bc
  %.lcssa312316 = phi i64 [ %.lcssa312318, %bb.bc ], [ %i.ea, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.go, %bb.bg ]
  store i8 1, ptr %i.dw, align 1, !alias.scope !444
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa290322
  %or.cond.not.i.i = select i1 %i.ek, i1 true, i1 %.not.i3.i ; 2 uses
  %i.gv = sub nuw i64 %.pre2.i.i, %.lcssa290322
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.lcssa290322
  %.sroa.3.0.i.i = select i1 %or.cond.not.i.i, i64 %i.gv, i64 undef
  %.sroa.0.0.i.i119 = select i1 %or.cond.not.i.i, ptr %i.gw, ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split
  %.lcssa290321 = phi i64 [ %.lcssa290322, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.lcssa290322, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.go, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.lcssa312317 = phi i64 [ %.lcssa312318, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.lcssa312316, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.go, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.sroa.3.0.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gt, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.sroa.0.0.i.i119, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gu, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.not88 = icmp eq ptr %.sroa.010.0, null
  %i.gx = icmp eq i64 %.sroa.7.0, 0
  %or.cond94 = select i1 %.not88, i1 true, i1 %i.gx
  br i1 %or.cond94, label %.split325, label %bb.bj

.split325:                                        ; preds = %bb.bb, %bb.bi, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us, %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8 ; 2 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.575.0.copyload = load i64, ptr %.sroa.575.0..sroa_idx, align 8
  %.promoted339 = load i64, ptr %i.b, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 89 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i123 = load ptr, ptr %i.ha, align 8, !nonnull !5 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val1.i124 = load i64, ptr %i.hb, align 8      ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.he = load i64, ptr %i.hd, align 8            ; 5 uses
  %.not.i.i125 = icmp ugt i64 %i.he, %.val1.i124
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.hh = load i8, ptr %i.hg, align 8             ; 2 uses
  %i.hi = zext nneg i8 %i.hh to i64               ; 4 uses
  %i.hj = icmp ult i8 %i.hh, 5
  %i.hk = getelementptr i8, ptr %i.hf, i64 %i.hi
  %i.hl = getelementptr i8, ptr %i.hk, i64 -1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hn = load i8, ptr %i.hm, align 8, !range !6
  %i.ho = trunc nuw i8 %i.hn to i1
  %.phi.trans.insert.i.i136 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre2.i.i137 = load i64, ptr %.phi.trans.insert.i.i136, align 8 ; 2 uses
  %.promoted341 = load i64, ptr %i.hc, align 8
  %.promoted346 = load i64, ptr %i.gy, align 8
  %i.hp = trunc nuw i64 %.promoted339 to i1
  %.not89 = icmp eq ptr %.sroa.474.0.copyload, null
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.hq = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.hr = icmp sgt i64 %i.hq, -1
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp eq i64 %i.hq, 0
  br i1 %i.hs, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.bk
  %i.ht = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !435, !nonnull !5, !noundef !5
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hq
  store i8 47, ptr %i.hu, align 1
  %i.hv = add nuw i64 %i.hq, 1
  store i64 %i.hv, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !435
  br label %bb.bl

bb.bl:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit, %bb.bj
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit: ; preds = %bb.bl
  %i.hw = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436, !noundef !5 ; 2 uses
  %i.hx = icmp sgt i64 %i.hw, -1
  call void @llvm.assume(i1 %i.hx)
  %i.hy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hw
  store i16 11822, ptr %i.hz, align 1
  %.pre.i = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  %i.ia = add i64 %.pre.i, 2
  store i64 %i.ia, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split

bb.bm:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183, %.split325
  %.lcssa287348 = phi i64 [ %.lcssa287347473, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183 ], [ %.promoted346, %.split325 ] ; 7 uses
  %.lcssa338344 = phi i64 [ %.lcssa338343474, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183 ], [ %.promoted341, %.split325 ] ; 4 uses
  %.sroa.073.0.copyload340 = phi i1 [ false, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183 ], [ %i.hp, %.split325 ]
  br i1 %.sroa.073.0.copyload340, label %bb.bu, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.ib = load i8, ptr %i.gz, align 1, !range !6, !alias.scope !445, !noundef !5
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %.thread457, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.id = icmp ult i64 %i.he, %.lcssa338344
  %or.cond20.i.i127 = or i1 %.not.i.i125, %i.id
  br i1 %or.cond20.i.i127, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, label %.lr.ph.split.preheader.i.i128

.lr.ph.split.preheader.i.i128:                    ; preds = %bb.bo
  call void @llvm.assume(i1 %i.hj)
  %.pre.i.i129 = load i8, ptr %i.hl, align 1, !alias.scope !447 ; 2 uses
  br label %.lr.ph.split.i.i130

.lr.ph.split.i.i130:                              ; preds = %bb.bs, %.lr.ph.split.preheader.i.i128
  %i.ie = phi i64 [ %i.it, %bb.bs ], [ %.lcssa338344, %.lr.ph.split.preheader.i.i128 ] ; 3 uses
  %i.if = sub nuw i64 %i.he, %i.ie                ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %i.ie ; 2 uses
  %i.ih = icmp samesign ult i64 %i.if, 16
  br i1 %i.ih, label %.preheader.i.i.i149, label %bb.bp

.preheader.i.i.i149:                              ; preds = %.lr.ph.split.i.i130
  %.not.i.i.i150 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i150, label %._crit_edge.i.i.i154, label %.lr.ph.i.i.i151

bb.bp:                                            ; preds = %.lr.ph.split.i.i130
  %i.ii = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i129, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ig, i64 noundef range(i64 0, -9223372036854775808) %i.if)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131 unwind label %.loopexit

._crit_edge.i.i.i154:                             ; preds = %bb.bq, %.lr.ph.i.i.i151, %.preheader.i.i.i149
  %.sroa.01.0.lcssa.i.i.i155 = phi i64 [ 0, %.preheader.i.i.i149 ], [ %i.if, %bb.bq ], [ %.sroa.01.05.i.i.i152, %.lr.ph.i.i.i151 ]
  %.sroa.0.1.i.i.i156 = phi i64 [ 0, %.preheader.i.i.i149 ], [ 0, %bb.bq ], [ 1, %.lr.ph.i.i.i151 ]
  %i.ij = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i156, 0
  %i.ik = insertvalue { i64, i64 } %i.ij, i64 %.sroa.01.0.lcssa.i.i.i155, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131

.lr.ph.i.i.i151:                                  ; preds = %.preheader.i.i.i149, %bb.bq
  %.sroa.01.05.i.i.i152 = phi i64 [ %i.io, %bb.bq ], [ 0, %.preheader.i.i.i149 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.01.05.i.i.i152
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !448, !noalias !449, !noundef !5
  %i.in = icmp eq i8 %i.im, %.pre.i.i129
  br i1 %i.in, label %._crit_edge.i.i.i154, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i151
  %i.io = add nuw nsw i64 %.sroa.01.05.i.i.i152, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %i.io, %i.if
  br i1 %exitcond.not.i.i.i153, label %._crit_edge.i.i.i154, label %.lr.ph.i.i.i151

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131: ; preds = %bb.bp, %._crit_edge.i.i.i154
  %.merged.i.i.i132 = phi { i64, i64 } [ %i.ik, %._crit_edge.i.i.i154 ], [ %i.ii, %bb.bp ] ; 2 uses
  %i.ip = extractvalue { i64, i64 } %.merged.i.i.i132, 0
  %i.iq = trunc nuw i64 %i.ip to i1
  br i1 %i.iq, label %bb.br, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134

bb.br:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131
  %i.ir = extractvalue { i64, i64 } %.merged.i.i.i132, 1
  %i.is = add i64 %i.ie, 1
  %i.it = add i64 %i.is, %i.ir                    ; 8 uses
  %.not11.i.i144 = icmp ult i64 %i.it, %i.hi
  %.not12.i.i145 = icmp ugt i64 %i.it, %.val1.i124
  %or.cond.i.i146 = or i1 %.not11.i.i144, %.not12.i.i145
  br i1 %or.cond.i.i146, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %i.iu = icmp ult i64 %i.he, %i.it
  br i1 %i.iu, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, label %.lr.ph.split.i.i130

bb.bt:                                            ; preds = %bb.br
  %i.iv = sub nuw i64 %i.it, %i.hi                ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %i.iv
  %bcmp.i.i147 = call i32 @bcmp(ptr nonnull %i.iw, ptr nonnull %i.hf, i64 %i.hi), !noalias !450
  %i.ix = icmp eq i32 %bcmp.i.i147, 0
  br i1 %i.ix, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148, label %bb.bs

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148: ; preds = %bb.bt
  %i.iy = sub nuw i64 %i.iv, %.lcssa287348
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %.lcssa287348
  br label %.thread467

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134: ; preds = %bb.bs, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131, %bb.bo
  %.lcssa338342 = phi i64 [ %.lcssa338344, %bb.bo ], [ %i.he, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131 ], [ %i.it, %bb.bs ]
  store i8 1, ptr %i.gz, align 1, !alias.scope !451
  %.not.i3.i138 = icmp ne i64 %.pre2.i.i137, %.lcssa287348
  %or.cond.not.i.i139 = select i1 %i.ho, i1 true, i1 %.not.i3.i138
  %i.ja = sub nuw i64 %.pre2.i.i137, %.lcssa287348
  %i.jb = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %.lcssa287348
  br i1 %or.cond.not.i.i139, label %.thread467, label %.thread457

bb.bu:                                            ; preds = %bb.bm
  br i1 %.not89, label %.thread457, label %.thread467

.thread467:                                       ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148, %bb.bu
  %.sroa.013.0476 = phi ptr [ %.sroa.474.0.copyload, %bb.bu ], [ %i.iz, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %i.jb, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ]
  %.sroa.715.0475 = phi i64 [ %.sroa.575.0.copyload, %bb.bu ], [ %i.iy, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %i.ja, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ] ; 4 uses
  %.lcssa338343474 = phi i64 [ %.lcssa338344, %bb.bu ], [ %i.it, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %.lcssa338342, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ]
  %.lcssa287347473 = phi i64 [ %.lcssa287348, %bb.bu ], [ %i.it, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %.lcssa287348, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ]
  %i.jc = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.jd = icmp sgt i64 %i.jc, -1
  call void @llvm.assume(i1 %i.jd)
  %i.je = icmp eq i64 %i.jc, 0
  br i1 %i.je, label %bb.co, label %bb.cn

.thread457:                                       ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, %bb.bn, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jf = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 6 uses
  %i.jg = icmp sgt i64 %i.jf, -1
  call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp eq i64 %i.jf, 0                    ; 2 uses
  %i.ji = icmp eq i64 %i.df, %i.dp
  %or.cond = and i1 %i.ji, %i.jh
  br i1 %or.cond, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.thread457
  %i.jj = icmp eq i64 %i.dp, 0
  br i1 %i.jj, label %bb.by, label %bb.bz

bb.bw:                                            ; preds = %.thread457
  %bcmp90 = call i32 @bcmp(ptr nonnull %i.dd, ptr nonnull %i.dn, i64 %i.df)
  %.not91 = icmp eq i32 %bcmp90, 0
  br i1 %.not91, label %bb.bx, label %bb.bv
end_hunk_0
