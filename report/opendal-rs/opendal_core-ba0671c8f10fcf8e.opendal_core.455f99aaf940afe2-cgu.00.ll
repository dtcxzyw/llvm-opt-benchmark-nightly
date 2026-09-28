Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.00?download=true
inline.NumInlined: 560
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs3_NtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util9multipartNtB5_9MixedPartNtB5_4Part5parse:bb.a

_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit381: ; preds = %.noexc380, %.noexc379
  %.merged.i376 = phi { ptr, i64 } [ %..i378, %.noexc380 ], [ %i.ep, %.noexc379 ] ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %.merged.i376, 0
  %i.ey = extractvalue { ptr, i64 } %.merged.i376, 1
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i351, %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit381
  %.sroa.435.0 = phi i64 [ %i.ey, %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit381 ], [ 0, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i351 ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ex, %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit381 ], [ inttoptr (i64 1 to ptr), %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i351 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 %.sroa.435.0
  store i64 0, ptr %i.aj, align 8
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.435.0, ptr %.sroa.4212.0..sroa_idx, align 8
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.033.0, ptr %.sroa.5213.0..sroa_idx, align 8
  %.sroa.5213.sroa.4.0..sroa.5213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.435.0, ptr %.sroa.5213.sroa.4.0..sroa.5213.0..sroa_idx.sroa_idx, align 8
  %.sroa.5213.sroa.5.0..sroa.5213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %.sroa.033.0, ptr %.sroa.5213.sroa.5.0..sroa.5213.0..sroa_idx.sroa_idx, align 8
  %.sroa.5213.sroa.6.0..sroa.5213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %i.ez, ptr %.sroa.5213.sroa.6.0..sroa.5213.0..sroa_idx.sroa_idx, align 8
  %.sroa.5213.sroa.7.0..sroa.5213.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 0, ptr %.sroa.5213.sroa.7.0..sroa.5213.0..sroa_idx.sroa_idx, align 8
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i8 1, ptr %.sroa.6214.0..sroa_idx, align 8
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  store i8 0, ptr %.sroa.7215.0..sroa_idx, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.fb = invoke fastcc { ptr, i64 } @_RINvYINtNtNtCsgxBkk5gSRhY_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull %i.fa) #30
          to label %bb.ac unwind label %.loopexit.split-lp721

bb.ac:                                            ; preds = %bb.ab
  %i.fc = extractvalue { ptr, i64 } %i.fb, 0
  %.not.i.not = icmp eq ptr %i.fc, null
  br i1 %.not.i.not, label %.thread652, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fd = invoke fastcc { ptr, i64 } @_RINvYINtNtNtCsgxBkk5gSRhY_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull %i.fa)
          to label %bb.ae unwind label %.loopexit.split-lp721 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 4 uses
  %.not311 = icmp eq ptr %i.fe, null
  br i1 %.not311, label %.thread652, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 2 uses
  switch i64 %i.ff, label %thread-pre-split.i [
    i64 0, label %.thread652
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fg = load i8, ptr %i.fe, align 1, !alias.scope !1673, !noundef !11 ; 2 uses
  switch i8 %i.fg, label %bb.ah [
    i8 43, label %.thread652
    i8 45, label %.thread652
  ]

thread-pre-split.i:                               ; preds = %bb.af
  %.pr.i = load i8, ptr %i.fe, align 1, !alias.scope !1673
  br label %bb.ah

bb.ah:                                            ; preds = %thread-pre-split.i, %bb.ag
  %i.fh = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.fg, %bb.ag ]
  %cond.i = icmp eq i8 %i.fh, 43                  ; 2 uses
  %i.fi = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ff, %i.fi        ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.fj = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.fj, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.ah
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.ak
  %.not53.i = icmp eq i64 %i.fn, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.al, %bb.am, %bb.an, %bb.ao, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.hc, %bb.ao ], [ 0, %.preheader.i ], [ %i.ge, %bb.al ], [ %i.gm, %bb.am ], [ %i.gu, %bb.an ], [ %i.fy, %.preheader58.i ]
  %i.fk = zext i16 %.sroa.043.1.i to i32
  %i.fl = shl nuw i32 %i.fk, 16
  br label %.thread652

.preheader58.i.preheader:                         ; preds = %bb.ah, %.preheader58.i
  %.sroa.0.1.i3851191 = phi ptr [ %i.fm, %.preheader58.i ], [ %.sroa.0.0.i, %bb.ah ] ; 2 uses
  %.sroa.15.1.i1190 = phi i64 [ %i.fn, %.preheader58.i ], [ %.sroa.15.0.i, %bb.ah ]
  %.sroa.043.0.i1189 = phi i16 [ %i.fy, %.preheader58.i ], [ 0, %bb.ah ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i3851191, i64 1
  %i.fn = add nsw i64 %.sroa.15.1.i1190, -1       ; 2 uses
  %i.fo = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i1189, i16 10) ; 2 uses
  %i.fp = extractvalue { i16, i1 } %i.fo, 0       ; 2 uses
  %i.fq = extractvalue { i16, i1 } %i.fo, 1
  %i.fr = load i8, ptr %.sroa.0.1.i3851191, align 1, !alias.scope !1673, !noundef !11 ; 2 uses
  br i1 %i.fq, label %bb.aj, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %.preheader58.i.preheader
  %i.fs = zext i8 %i.fr to i32
  %i.ft = add nsw i32 %i.fs, -48                  ; 2 uses
  %i.fu = icmp ult i32 %i.ft, 10
  br i1 %i.fu, label %bb.ak, label %.thread652

bb.aj:                                            ; preds = %.preheader58.i.preheader
  %i.fv = add i8 %i.fr, -48
  %i.fw = icmp ult i8 %i.fv, 10
  %spec.select.i386 = select i1 %i.fw, i32 513, i32 257
  br label %.thread652

bb.ak:                                            ; preds = %bb.ai
  %i.fx = trunc nuw nsw i32 %i.ft to i16
  %i.fy = add i16 %i.fp, %i.fx                    ; 3 uses
  %i.fz = icmp ult i16 %i.fy, %i.fp
  br i1 %i.fz, label %.thread652, label %.preheader58.i, !prof !30

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ga = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1673, !noundef !11
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, -48                  ; 2 uses
  %i.gd = icmp ult i32 %i.gc, 10
  br i1 %i.gd, label %bb.al, label %.thread652

bb.al:                                            ; preds = %.lr.ph.i
  %i.ge = trunc nuw nsw i32 %i.gc to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.al
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !1673, !noundef !11
  %i.gh = zext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, -48                  ; 2 uses
  %i.gj = icmp ult i32 %i.gi, 10
  br i1 %i.gj, label %bb.am, label %.thread652

bb.am:                                            ; preds = %.lr.ph.i.1
  %i.gk = mul nuw nsw i16 %i.ge, 10
  %i.gl = trunc nuw nsw i32 %i.gi to i16
  %i.gm = add nuw nsw i16 %i.gk, %i.gl            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !1673, !noundef !11
  %i.gp = zext i8 %i.go to i32
  %i.gq = add nsw i32 %i.gp, -48                  ; 2 uses
  %i.gr = icmp ult i32 %i.gq, 10
  br i1 %i.gr, label %bb.an, label %.thread652

bb.an:                                            ; preds = %.lr.ph.i.2
  %i.gs = mul nuw i16 %i.gm, 10
  %i.gt = trunc nuw nsw i32 %i.gq to i16
  %i.gu = add nuw nsw i16 %i.gs, %i.gt            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.an
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !1673, !noundef !11
  %i.gx = zext i8 %i.gw to i32
  %i.gy = add nsw i32 %i.gx, -48                  ; 2 uses
  %i.gz = icmp ult i32 %i.gy, 10
  br i1 %i.gz, label %bb.ao, label %.thread652

bb.ao:                                            ; preds = %.lr.ph.i.3
  %i.ha = mul i16 %i.gu, 10
  %i.hb = trunc nuw nsw i32 %i.gy to i16
  %i.hc = add i16 %i.ha, %i.hb
  br label %.loopexit.i

.thread671.loopexit:                              ; preds = %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread659

.thread671.loopexit.split-lp.loopexit:            ; preds = %bb.cs, %bb.cc, %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432, %bb.bd, %bb.bb, %bb.ay, %bb.az, %select.unfold674
  %lpad.loopexit703 = landingpad { ptr, i32 }
          cleanup
  br label %.thread659

.thread671.loopexit.split-lp.loopexit.split-lp:   ; preds = %bb.cy
  %lpad.loopexit.split-lp704 = landingpad { ptr, i32 }
          cleanup
  br label %.thread659

bb.ap:                                            ; preds = %bb.bt
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread656

.thread652:                                       ; preds = %bb.ak, %bb.ai, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.ac, %bb.ae, %bb.aj, %.loopexit.i, %bb.ag, %bb.ag, %bb.af
  %.sroa.8.0.insert.insert.i = phi i32 [ 1, %bb.ac ], [ %i.fl, %.loopexit.i ], [ 257, %bb.ag ], [ 1, %bb.af ], [ 257, %bb.ag ], [ %spec.select.i386, %bb.aj ], [ 1, %bb.ae ], [ 257, %.lr.ph.i ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 513, %bb.ak ], [ 257, %bb.ai ] ; 2 uses
  %i.hd = trunc i32 %.sroa.8.0.insert.insert.i to i1
  %.sroa.5295.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16
  %.sroa.5295.0.extract.trunc = trunc nuw i32 %.sroa.5295.0.extract.shift to i16
  %.sroa.039.0 = select i1 %i.hd, i16 200, i16 %.sroa.5295.0.extract.trunc ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.he = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i16 0, ptr %i.he, align 8, !alias.scope !1674
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store ptr inttoptr (i64 2 to ptr), ptr %i.hf, align 8, !alias.scope !1674
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store i64 0, ptr %i.hg, align 8, !alias.scope !1674
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 0, ptr %i.hh, align 8, !alias.scope !1674
  %.sroa.4.0..sroa_idx.i387 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i387, align 8, !alias.scope !1674
  %.sroa.5.0..sroa_idx.i388 = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.42.0..sroa_idx.i389 = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i388, i8 0, i64 16, i1 false), !alias.scope !1674
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i389, align 8, !alias.scope !1674
  %.sroa.53.0..sroa_idx.i390 = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i390, align 8, !alias.scope !1674
  store i64 0, ptr %i.ai, align 8, !alias.scope !1674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 1, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 6 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 %i.de, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr %i.dc, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.sroa.2.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  store i64 %i.de, ptr %.sroa.2.sroa.3.sroa.2.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.sroa.4.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  store i64 %i.de, ptr %.sroa.2.sroa.3.sroa.4.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.sroa.5.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 3 uses
  store i32 10, ptr %.sroa.2.sroa.3.sroa.5.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.sroa.6.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  store i32 10, ptr %.sroa.2.sroa.3.sroa.6.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.2.sroa.3.sroa.7.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.2.sroa.3.sroa.7.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 2 uses
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 73 ; 3 uses
  store i8 0, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 1
  %.sroa.0255.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %.sroa.0255.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %.sroa.0255.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %.sroa.0255.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 121
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.6629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.7527.0..sroa_idx528 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9531.0..sroa_idx532 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.11535.0..sroa_idx536 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit461, %.thread652
  %i.hn = phi i64 [ %.pre, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit461 ], [ 1, %.thread652 ] ; 2 uses
  %.not312 = icmp eq i64 %i.hn, 0
  br i1 %.not312, label %bb.ar, label %bb.ay, !prof !17

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %i.ho = load i8, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 1, !range !27, !alias.scope !1675, !noundef !11
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %.thread676, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val.i391 = load ptr, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !1675, !nonnull !11, !noundef !11 ; 3 uses
  %.val1.i392 = load i64, ptr %.sroa.2.sroa.3.sroa.2.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !1675, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.hq = load i64, ptr %.sroa.2.sroa.3.sroa.4.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !1677, !noalias !1678, !noundef !11 ; 5 uses
  %.not.i.i393 = icmp ugt i64 %i.hq, %.val1.i392
  %.promoted.i.i394 = load i64, ptr %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !1677, !noalias !1678 ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %.promoted.i.i394
  %or.cond20.i.i395 = or i1 %.not.i.i393, %i.hr
  br i1 %or.cond20.i.i395, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402, label %.lr.ph.split.preheader.i.i396

.lr.ph.split.preheader.i.i396:                    ; preds = %bb.as
  %i.hs = load i8, ptr %.sroa.2.sroa.3.sroa.7.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !1677, !noalias !1678, !noundef !11 ; 2 uses
  %i.ht = zext nneg i8 %i.hs to i64               ; 4 uses
  %i.hu = icmp ult i8 %i.hs, 5
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr i8, ptr %.sroa.2.sroa.3.sroa.5.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.ht
  %i.hw = getelementptr i8, ptr %i.hv, i64 -1
  %.pre.i.i397 = load i8, ptr %i.hw, align 1, !alias.scope !1677, !noalias !1678 ; 2 uses
  br label %.lr.ph.split.i.i398

.lr.ph.split.i.i398:                              ; preds = %bb.aw, %.lr.ph.split.preheader.i.i396
  %i.hx = phi i64 [ %i.im, %bb.aw ], [ %.promoted.i.i394, %.lr.ph.split.preheader.i.i396 ] ; 3 uses
  %i.hy = sub nuw i64 %i.hq, %i.hx                ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i391, i64 %i.hx ; 2 uses
  %i.ia = icmp samesign ult i64 %i.hy, 16
  br i1 %i.ia, label %.preheader.i.i.i417, label %bb.at

.preheader.i.i.i417:                              ; preds = %.lr.ph.split.i.i398
  %.not.i.i.i418 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i418, label %._crit_edge.i.i.i422, label %.lr.ph.i.i.i419

bb.at:                                            ; preds = %.lr.ph.split.i.i398
  %i.ib = invoke { i64, i64 } @_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i397, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef range(i64 0, -9223372036854775808) %i.hy)
          to label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i399 unwind label %.thread671.loopexit

._crit_edge.i.i.i422:                             ; preds = %bb.au, %.lr.ph.i.i.i419, %.preheader.i.i.i417
  %.sroa.01.0.lcssa.i.i.i423 = phi i64 [ 0, %.preheader.i.i.i417 ], [ %i.hy, %bb.au ], [ %.sroa.01.05.i.i.i420, %.lr.ph.i.i.i419 ]
  %.sroa.0.1.i.i.i424 = phi i64 [ 0, %.preheader.i.i.i417 ], [ 0, %bb.au ], [ 1, %.lr.ph.i.i.i419 ]
  %i.ic = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i424, 0
  %i.id = insertvalue { i64, i64 } %i.ic, i64 %.sroa.01.0.lcssa.i.i.i423, 1
  br label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i399

.lr.ph.i.i.i419:                                  ; preds = %.preheader.i.i.i417, %bb.au
  %.sroa.01.05.i.i.i420 = phi i64 [ %i.ih, %bb.au ], [ 0, %.preheader.i.i.i417 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.01.05.i.i.i420
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !1679, !noalias !1680, !noundef !11
  %i.ig = icmp eq i8 %i.if, %.pre.i.i397
  br i1 %i.ig, label %._crit_edge.i.i.i422, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i419
  %i.ih = add nuw nsw i64 %.sroa.01.05.i.i.i420, 1 ; 2 uses
  %exitcond.not.i.i.i421 = icmp eq i64 %i.ih, %i.hy
  br i1 %exitcond.not.i.i.i421, label %._crit_edge.i.i.i422, label %.lr.ph.i.i.i419

_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i399: ; preds = %bb.at, %._crit_edge.i.i.i422
  %.merged.i.i.i400 = phi { i64, i64 } [ %i.id, %._crit_edge.i.i.i422 ], [ %i.ib, %bb.at ] ; 2 uses
  %i.ii = extractvalue { i64, i64 } %.merged.i.i.i400, 0
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.av, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402.sink.split

bb.av:                                            ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i399
  %i.ik = extractvalue { i64, i64 } %.merged.i.i.i400, 1
  %i.il = add i64 %i.hx, 1
  %i.im = add i64 %i.il, %i.ik                    ; 9 uses
  %.not11.i.i412 = icmp ult i64 %i.im, %i.ht
  %.not12.i.i413 = icmp ugt i64 %i.im, %.val1.i392
  %or.cond.i.i414 = or i1 %.not11.i.i412, %.not12.i.i413
  br i1 %or.cond.i.i414, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.in = icmp ult i64 %i.hq, %i.im
  br i1 %i.in, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402.sink.split, label %.lr.ph.split.i.i398

bb.ax:                                            ; preds = %bb.av
  %i.io = sub nuw i64 %i.im, %i.ht
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i391, i64 %i.io
  %bcmp.i.i415 = call i32 @bcmp(ptr nonnull %i.ip, ptr nonnull %.sroa.2.sroa.3.sroa.5.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.ht), !noalias !1678
  %i.iq = icmp eq i32 %bcmp.i.i415, 0
  br i1 %i.iq, label %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416, label %bb.aw

_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416: ; preds = %bb.ax
  store i64 %i.im, ptr %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.ir = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1675, !noundef !11 ; 2 uses
  %i.is = sub nuw i64 %i.im, %i.ir
  store i64 %i.im, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1675
  br label %select.unfold674

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402.sink.split: ; preds = %bb.aw, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i399
  %.sink = phi i64 [ %i.hq, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i399 ], [ %i.im, %bb.aw ]
  store i64 %.sink, ptr %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402: ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402.sink.split, %bb.as
  store i8 1, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 1, !alias.scope !1681
  %i.it = load i8, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !range !27, !alias.scope !1681, !noundef !11
  %i.iu = trunc nuw i8 %i.it to i1
  %.pre.i2.i403 = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1681 ; 3 uses
  %.pre2.i.i405 = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !1681 ; 2 uses
  %.not.i3.i406 = icmp ne i64 %.pre2.i.i405, %.pre.i2.i403
  %or.cond.not.i.i407 = select i1 %i.iu, i1 true, i1 %.not.i3.i406
  %i.iv = sub nuw i64 %.pre2.i.i405, %.pre.i2.i403
  br i1 %or.cond.not.i.i407, label %select.unfold674, label %.thread676

bb.ay:                                            ; preds = %bb.aq
  store i64 0, ptr %i.ah, align 8
  %i.iw = invoke fastcc noundef i64 @_RINvYNtNtNtCsgxBkk5gSRhY_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.2.0..sroa_idx, i64 noundef %i.hn)
          to label %bb.ba unwind label %.thread671.loopexit.split-lp.loopexit

select.unfold674:                                 ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416
  %.sroa.4.1.i410 = phi i64 [ %i.is, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416 ], [ %i.iv, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402 ] ; 4 uses
  %.pn702 = phi i64 [ %i.ir, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i416 ], [ %.pre.i2.i403, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402 ]
  %.sroa.0.1.i411 = getelementptr inbounds nuw i8, ptr %.val.i391, i64 %.pn702 ; 4 uses
  %i.ix = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i411, 0
  %i.iy = insertvalue { ptr, i64 } %i.ix, i64 %.sroa.4.1.i410, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1682
  store i32 10, ptr %i.c, align 4, !noalias !1682
  %i.iz = invoke noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i411, i64 noundef %.sroa.4.1.i410, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %.noexc430 unwind label %.thread671.loopexit.split-lp.loopexit

.noexc430:                                        ; preds = %select.unfold674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1682
  br i1 %i.iz, label %bb.az, label %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432

bb.az:                                            ; preds = %.noexc430
  %i.ja = add i64 %.sroa.4.1.i410, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1682
  store i32 13, ptr %i.b, align 4, !noalias !1682
  %i.jb = invoke noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i411, i64 noundef %i.ja, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc431 unwind label %.thread671.loopexit.split-lp.loopexit ; 2 uses

.noexc431:                                        ; preds = %bb.az
  %i.jc = insertvalue { ptr, i64 } %i.iy, i64 %i.ja, 1
  %i.jd = add i64 %.sroa.4.1.i410, -2
  %.sroa.0.0.i15.i428 = select i1 %i.jb, ptr %.sroa.0.1.i411, ptr null
  %i.je = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i428, 0
  %i.jf = insertvalue { ptr, i64 } %i.je, i64 %i.jd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1682
  %..i429 = select i1 %i.jb, { ptr, i64 } %i.jf, { ptr, i64 } %i.jc
  br label %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432

.thread676:                                       ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE7get_endCs5XgW7KoffLW_12opendal_core.exit.i402, %bb.ar, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.080.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false)
  %i.jg = add i16 %.sroa.039.0, -100
  %or.cond = icmp ult i16 %i.jg, 900
  br i1 %or.cond, label %bb.bf, label %bb.be

_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432: ; preds = %.noexc431, %.noexc430, %bb.bd
  %.pn = phi { ptr, i64 } [ %i.jk, %bb.bd ], [ %..i429, %.noexc431 ], [ %i.iy, %.noexc430 ] ; 2 uses
  %.sroa.049.0 = extractvalue { ptr, i64 } %.pn, 0
  %.sroa.7.0 = extractvalue { ptr, i64 } %.pn, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMsu_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.049.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 2)
          to label %bb.cc unwind label %.thread671.loopexit.split-lp.loopexit

bb.ba:                                            ; preds = %bb.ay
  %.not314 = icmp eq i64 %i.iw, 0
  br i1 %.not314, label %bb.bb, label %.thread676

bb.bb:                                            ; preds = %bb.ba
  %i.jh = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.2.0..sroa_idx)
          to label %bb.bc unwind label %.thread671.loopexit.split-lp.loopexit ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ji = extractvalue { ptr, i64 } %i.jh, 0      ; 2 uses
  %.not315 = icmp eq ptr %i.ji, null
  br i1 %.not315, label %.thread676, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jj = extractvalue { ptr, i64 } %i.jh, 1
  %i.jk = invoke fastcc { ptr, i64 } @_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ji, i64 noundef %i.jj)
          to label %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432 unwind label %.thread671.loopexit.split-lp.loopexit

bb.be:                                            ; preds = %.thread676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 47)
          to label %bb.bl unwind label %bb.bz

bb.bf:                                            ; preds = %.thread676
  %3 = icmp ne i16 %.sroa.039.0, 0
  call void @llvm.assume(i1 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.080.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false)
  %.sroa.080.sroa.0.sroa.0.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.080.sroa.0.sroa.0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.080.sroa.0.sroa.0.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  %.sroa.080.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.080.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.080.sroa.0.sroa.0, i64 192, i1 false)
  %.sroa.080.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 -1, ptr %.sroa.080.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.080.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 -1, ptr %.sroa.080.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i16 %.sroa.039.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 346
  store i8 2, ptr %.sroa.10.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.thread698 unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit unwind label %.loopexit.split-lp726.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit495 unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body.thread698, %bb.em, %bb.bj
  %common.resume.op = phi { ptr, i32 } [ %i.nu, %bb.em ], [ %i.jn, %bb.bj ], [ %.pn336, %.body.thread698 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit495: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit, %bb.el
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

bb.bl:                                            ; preds = %bb.be
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.h)
          to label %bb.bm unwind label %bb.bz

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.088.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.690.0.copyload = load i16, ptr %.sroa.690.0..sroa_idx, align 8
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.5291.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.893.0..sroa_idx, i64 78, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.088.0.copyload, ptr %i.jp, align 8
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.690.0.copyload, ptr %.sroa.4290.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.jq = load ptr, ptr %i.y, align 8, !alias.scope !1685, !noundef !11 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.js = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !1688, !noundef !11
  %i.jv = load ptr, ptr %i.js, align 8, !alias.scope !1688, !nonnull !11, !align !12, !noundef !11
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !1688, !nonnull !11, !noundef !11
  %i.jy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !alias.scope !1688, !noundef !11
  %i.ka = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !1688, !noundef !11
  invoke void %i.jx(ptr noundef %i.ju, ptr noundef %i.jz, i64 noundef %i.kb)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.bq, !inline_history !24

bb.bo:                                            ; preds = %bb.bm
  %i.kc = atomicrmw sub ptr %i.jq, i64 1 release, align 8, !noalias !1689
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.bp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #24
          to label %bb.br unwind label %bb.by

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.bo, %bb.bn, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z)
          to label %bb.bt unwind label %bb.bs

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %.pn324 = phi { ptr, i32 } [ %i.kf, %bb.bs ], [ %i.ke, %bb.bq ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa) #24
          to label %.thread656 unwind label %bb.by

bb.bs:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bt:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa)
          to label %bb.bu unwind label %bb.ap

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473: ; preds = %bb.dg, %bb.df, %bb.dh, %bb.bu
  %.sroa.0103.6 = phi i8 [ 0, %bb.bu ], [ 1, %bb.dh ], [ 1, %bb.df ], [ 1, %bb.dg ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body unwind label %bb.bx

bb.bw:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit473
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecReEECs5XgW7KoffLW_12opendal_core.exit450 unwind label %.loopexit.split-lp726.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.by:                                            ; preds = %bb.ei, %bb.db, %.thread, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit493, %bb.di, %.thread659, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit470, %bb.cb, %bb.ca, %bb.bz, %bb.br, %bb.bq, %.thread656, %.body.thread698
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bz:                                            ; preds = %bb.bl, %bb.be
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.y) #24
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #24
          to label %bb.cb unwind label %bb.by

bb.cb:                                            ; preds = %bb.ca
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header3map9HeaderMapECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa) #24
          to label %.thread656 unwind label %bb.by

bb.cc:                                            ; preds = %_RNvXs3_NtCsgxBkk5gSRhY_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 0, ptr %.sroa.0255.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.7.0, ptr %.sroa.0255.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.0255.sroa.6.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.0255.sroa.7.0..sroa_idx, align 1
  store i64 2, ptr %.sroa.4256.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCsgxBkk5gSRhY_4core3str4iter6SplitNB10_EE9from_iterCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.af)
          to label %bb.cd unwind label %.thread671.loopexit.split-lp.loopexit
end_hunk_0
