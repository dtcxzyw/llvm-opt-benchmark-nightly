Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/url-0ea03bfcb986b98b.url.1d492e49ee020898-cgu.0?download=true
inline.NumInlined: 292
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url13make_relative:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load i16, ptr %i.cm, align 8, !range !13, !noundef !5 ; 2 uses
  %i.co = trunc nuw i16 %i.cl to i1
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread266
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = trunc nuw i16 %i.cn to i1
  %i.cu = icmp eq i16 %i.cs, %i.cq
  %or.cond270.not = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond270.not, label %bb.ah, label %bb.dg

bb.ag:                                            ; preds = %.thread266
  %i.cv = trunc nuw i16 %i.cn to i1
  br i1 %i.cv, label %bb.dg, label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 16 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 35 uses
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cw = invoke { ptr, i64 } @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.bp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.co, %bb.cn
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bd
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split: ; preds = %bb.bl, %bb.bk
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cz
  %lpad.loopexit280 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cs
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255, %bb.an, %bb.av
  %lpad.loopexit285 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.bx, %bb.ce, %bb.by, %bb.ca, %bb.cb, %bb.cd, %bb.cf, %bb.ci, %bb.ck
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

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
  %3 = sub nuw i64 %.pre2.i.i, %.promoted320
  %.sroa.3.0.i.i.us = select i1 %or.cond.not.i.i.us, i64 %3, i64 undef ; 2 uses
  %i.en = trunc nuw i64 %.promoted313 to i1
  br i1 %i.en, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.promoted320
  %.sroa.0.0.i.i119.us = select i1 %or.cond.not.i.i.us, ptr %i.eo, ptr null
  %i.ep = trunc nuw i8 %.promoted330 to i1
  br i1 %i.ep, label %.split325, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel: ; preds = %bb.ao, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us
  %i.eq = phi i8 [ %.promoted330, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ 1, %bb.ao ]
  %.sroa.7.0.us.peel = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ %.sroa.3.0.i.i.us, %bb.ao ]
  %.sroa.010.0.us.peel = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ %.sroa.0.0.i.i119.us, %bb.ao ]
  %.not88.us.peel = icmp eq ptr %.sroa.010.0.us.peel, null
  %i.er = icmp eq i64 %.sroa.7.0.us.peel, 0
  %or.cond94.us.peel = select i1 %.not88.us.peel, i1 true, i1 %i.er
  br i1 %or.cond94.us.peel, label %.split325, label %bb.ap

bb.ap:                                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel
  %i.es = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.et = icmp sgt i64 %i.es, -1
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel: ; preds = %bb.aq
  %i.ev = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !441, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  store i8 47, ptr %i.ew, align 1
  %i.ex = add nuw i64 %i.es, 1
  store i64 %i.ex, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !441
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel, %bb.ap
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel: ; preds = %bb.ar
  %i.ey = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !442, !noundef !5 ; 2 uses
  %i.ez = icmp sgt i64 %i.ey, -1
  call void @llvm.assume(i1 %i.ez)
  %i.fa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !442, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store i16 11822, ptr %i.fb, align 1
  %.pre.i.us.peel = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !442 ; 2 uses
  %i.fc = trunc nuw i8 %i.eq to i1
  %storemerge494 = add i64 %.pre.i.us.peel, 2     ; 4 uses
  store i64 %storemerge494, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !442
  br i1 %i.fc, label %.split325, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel
  %i.fd = icmp ne i64 %.sroa.3.0.i.i.us, 0
  %.not485 = select i1 %or.cond.not.i.i.us, i1 %i.fd, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  br i1 %.not485, label %bb.as, label %.split325

bb.as:                                            ; preds = %.lr.ph
  %i.fe = icmp sgt i64 %storemerge494, -1
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq i64 %storemerge494, 0
  br i1 %i.ff, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us: ; preds = %bb.at
  %i.fg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !441, !nonnull !5, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %storemerge494
  store i8 47, ptr %i.fh, align 1
  %i.fi = add i64 %.pre.i.us.peel, 3
  store i64 %i.fi, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !441
  br label %bb.au

bb.au:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us, %bb.as
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us: ; preds = %bb.au
  %i.fj = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !442, !noundef !5 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  call void @llvm.assume(i1 %i.fk)
  %i.fl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !442, !nonnull !5, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i16 11822, ptr %i.fm, align 1
  %.pre.i.us = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !442
  %storemerge = add i64 %.pre.i.us, 2
  store i64 %storemerge, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !442
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
  %i.fn = load ptr, ptr %i.du, align 8, !noundef !5
  %.not84 = icmp eq ptr %i.fn, null               ; 2 uses
  %i.fo = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(72) %i.dr)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.fp = load ptr, ptr %i.fo, align 8, !noundef !5 ; 2 uses
  %.not85 = icmp eq ptr %i.fp, null
  br i1 %.not85, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not84, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  br i1 %.not84, label %bb.az, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread

bb.az:                                            ; preds = %bb.ay, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit
  %.sroa.066.0.copyload = load i64, ptr %i.e, align 8
  store i64 0, ptr %i.e, align 8
  %i.fq = trunc nuw i64 %.sroa.066.0.copyload to i1
  br i1 %i.fq, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit219, label %bb.cq

bb.ba:                                            ; preds = %bb.ax
  %i.fr = getelementptr i8, ptr %i.du, i64 8
  %..val98 = load i64, ptr %i.fr, align 8, !noundef !5 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fo, i64 8
  %.val100 = load i64, ptr %i.fs, align 8, !noundef !5
  %i.ft = icmp eq i64 %..val98, %.val100
  br i1 %i.ft, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit: ; preds = %bb.ba
  %..val = load ptr, ptr %i.du, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %..val, ptr nonnull readonly %i.fp, i64 %..val98), !alias.scope !445
  %i.fu = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fu, label %bb.az, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit
  %.lcssa290322 = phi i64 [ %.lcssa290321, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit ], [ %.promoted320, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader ] ; 7 uses
  %.lcssa312318 = phi i64 [ %.lcssa312317, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit ], [ %.promoted315, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader ] ; 4 uses
  %.sroa.070.0.copyload314 = phi i1 [ false, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit ], [ %i.em, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader ]
  br i1 %.sroa.070.0.copyload314, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.fv = load i8, ptr %i.dw, align 1, !range !6, !alias.scope !443, !noundef !5
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.split325, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.fx = icmp ult i64 %i.ea, %.lcssa312318
  br i1 %i.fx, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.bc
  call void @llvm.assume(i1 %i.ef)
  %.pre.i.i = load i8, ptr %i.eh, align 1, !alias.scope !446, !noalias !447 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.bg, %.lr.ph.split.preheader.i.i
  %i.fy = phi i64 [ %i.gn, %bb.bg ], [ %.lcssa312318, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.fz = sub nuw i64 %i.ea, %i.fy                ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %i.fy ; 2 uses
  %i.gb = icmp samesign ult i64 %i.fz, 16
  br i1 %i.gb, label %.preheader.i.i.i, label %bb.bd

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bd:                                            ; preds = %.lr.ph.split.i.i
  %i.gc = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.fz)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.be, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.fz, %bb.be ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.be ], [ 1, %.lr.ph.i.i.i ]
  %i.gd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ge = insertvalue { i64, i64 } %i.gd, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.be
  %.sroa.01.05.i.i.i = phi i64 [ %i.gi, %bb.be ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.sroa.01.05.i.i.i
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !448, !noalias !449, !noundef !5
  %i.gh = icmp eq i8 %i.gg, %.pre.i.i
  br i1 %i.gh, label %._crit_edge.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.gi = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gi, %i.fz
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.bd, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ge, %._crit_edge.i.i.i ], [ %i.gc, %bb.bd ] ; 2 uses
  %i.gj = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.gk = trunc nuw i64 %i.gj to i1
  br i1 %i.gk, label %bb.bf, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i

bb.bf:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.gl = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.gm = add i64 %i.fy, 1
  %i.gn = add i64 %i.gm, %i.gl                    ; 8 uses
  %.not11.i.i = icmp ult i64 %i.gn, %i.ee
  %.not12.i.i = icmp ugt i64 %i.gn, %.val1.i118
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %i.go = icmp ult i64 %i.ea, %i.gn
  br i1 %i.go, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, label %.lr.ph.split.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gp = sub nuw i64 %i.gn, %i.ee                ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %i.gp
  %bcmp.i.i120 = call i32 @bcmp(ptr nonnull %i.gq, ptr nonnull %i.eb, i64 %i.ee), !noalias !447
  %i.gr = icmp eq i32 %bcmp.i.i120, 0
  br i1 %i.gr, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.bg

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.bh
  %i.gs = sub nuw i64 %i.gp, %.lcssa290322
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.lcssa290322
  br label %bb.bi

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i: ; preds = %bb.bg, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.bc
  %.lcssa312316 = phi i64 [ %.lcssa312318, %bb.bc ], [ %i.ea, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.gn, %bb.bg ]
  store i8 1, ptr %i.dw, align 1, !alias.scope !450
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa290322
  %or.cond.not.i.i = select i1 %i.ek, i1 true, i1 %.not.i3.i ; 2 uses
  %i.gu = sub nuw i64 %.pre2.i.i, %.lcssa290322
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.lcssa290322
  %.sroa.3.0.i.i = select i1 %or.cond.not.i.i, i64 %i.gu, i64 undef
  %.sroa.0.0.i.i119 = select i1 %or.cond.not.i.i, ptr %i.gv, ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split
  %.lcssa290321 = phi i64 [ %.lcssa290322, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.lcssa290322, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gn, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.lcssa312317 = phi i64 [ %.lcssa312318, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.lcssa312316, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gn, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.sroa.3.0.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gs, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.sroa.0.0.i.i119, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gt, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.not88 = icmp eq ptr %.sroa.010.0, null
  %i.gw = icmp eq i64 %.sroa.7.0, 0
  %or.cond94 = select i1 %.not88, i1 true, i1 %i.gw
  br i1 %or.cond94, label %.split325, label %bb.bj

.split325:                                        ; preds = %bb.bb, %bb.bi, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us, %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8 ; 2 uses
end_hunk_0
