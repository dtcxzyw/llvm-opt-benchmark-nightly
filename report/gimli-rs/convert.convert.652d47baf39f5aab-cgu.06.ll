Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.06?download=true
inline.NumInlined: 219
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert:bb.a
          to label %bb.cq unwind label %.loopexit.i37, !noalias !119

bb.ca:                                            ; preds = %.lr.ph.i35
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef 1)
          to label %bb.cv unwind label %.loopexit.i37, !noalias !119

bb.cb:                                            ; preds = %bb.bw
  %i.ha = load i64, ptr %i.en, align 8, !alias.scope !151, !noalias !152, !noundef !5 ; 2 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %i.hc = load ptr, ptr %i.et, align 8, !alias.scope !151, !noalias !152, !nonnull !5, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha
  store i8 6, ptr %i.hd, align 1, !noalias !119
  %.pre.i.i.i396.i = load i64, ptr %i.en, align 8, !alias.scope !151, !noalias !152
  %i.he = add i64 %.pre.i.i.i396.i, 1
  store i64 %i.he, ptr %i.en, align 8, !alias.scope !151, !noalias !152
  %i.hf = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  br i1 %i.hf, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hg = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %.sroa.54.0.copyload.i, i8 noundef %.sroa.021.0.extract.trunc.i)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42 unwind label %.loopexit.i37, !noalias !119 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42: ; preds = %bb.cc
  %i.hh = and i64 %i.hg, 255
  %.not373.i = icmp eq i64 %i.hh, 255
  br i1 %.not373.i, label %bb.cd, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42, %bb.cb
  %.sroa.0.0.i17.i = phi i64 [ %i.hg, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42 ], [ 7, %bb.cb ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i17.i, ptr %i.hi, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cd:                                            ; preds = %bb.cw, %bb.cu, %bb.co, %bb.ch, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42
  %i.hj = icmp eq ptr %i.gd, %i.gb
  br i1 %i.hj, label %._crit_edge.i40, label %.lr.ph.i35

bb.ce:                                            ; preds = %bb.bx
  %i.hk = load i64, ptr %i.en, align 8, !alias.scope !153, !noalias !154, !noundef !5 ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hl)
  %i.hm = load ptr, ptr %i.et, align 8, !alias.scope !153, !noalias !154, !nonnull !5, !noundef !5
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  store i8 4, ptr %i.hn, align 1, !noalias !119
  %.pre.i.i.i399.i = load i64, ptr %i.en, align 8, !alias.scope !153, !noalias !154
  %i.ho = add i64 %.pre.i.i.i399.i, 1
  store i64 %i.ho, ptr %i.en, align 8, !alias.scope !153, !noalias !154
  %i.hp = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %i.gq)
          to label %bb.cf unwind label %.loopexit.i37, !noalias !119 ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.hq = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %i.gs)
          to label %bb.cg unwind label %.loopexit.i37, !noalias !119 ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.hr = invoke fastcc i64 @_RINvNtNtCsi68uqYEhoRA_5gimli5write3loc16write_expressionINtNtB4_10endian_vec9EndianVecNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv, i32 noundef range(i32 327680, 393216) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt)
          to label %bb.ch unwind label %.loopexit.i37, !noalias !119 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.hs = and i64 %i.hr, 255
  %.not372.i = icmp eq i64 %i.hs, 255
  br i1 %.not372.i, label %bb.cd, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cj:                                            ; preds = %bb.by
  %i.hu = load i64, ptr %i.en, align 8, !alias.scope !155, !noalias !156, !noundef !5 ; 2 uses
  %i.hv = icmp sgt i64 %i.hu, -1
  call void @llvm.assume(i1 %i.hv)
  %i.hw = load ptr, ptr %i.et, align 8, !alias.scope !155, !noalias !156, !nonnull !5, !noundef !5
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  store i8 7, ptr %i.hx, align 1, !noalias !119
  %.pre.i.i.i402.i = load i64, ptr %i.en, align 8, !alias.scope !155, !noalias !156
  %i.hy = add i64 %.pre.i.i.i402.i, 1
  store i64 %i.hy, ptr %i.en, align 8, !alias.scope !155, !noalias !156
  %i.hz = trunc nuw i64 %i.ge to i1
  br i1 %i.hz, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ia = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %.sroa.56.0.copyload.i, i8 noundef %.sroa.021.0.extract.trunc.i)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.i unwind label %.loopexit.i37, !noalias !119 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.i: ; preds = %bb.ck
  %i.ib = and i64 %i.ia, 255
  %.not369.i = icmp eq i64 %i.ib, 255
  br i1 %.not369.i, label %bb.cl, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.thread.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.thread.i: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.i, %bb.cj
  %.sroa.0.0.i41220.i = phi i64 [ %i.ia, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.i ], [ 7, %bb.cj ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i41220.i, ptr %i.ic, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cl:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.i
  %i.id = trunc nuw i64 %.sroa.08.0.copyload.i to i1
  br i1 %i.id, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ie = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %.sroa.59.0.copyload.i, i8 noundef %.sroa.021.0.extract.trunc.i)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.i unwind label %.loopexit.i37, !noalias !119 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.i: ; preds = %bb.cm
  %i.if = and i64 %i.ie, 255
  %.not370.i = icmp eq i64 %i.if, 255
  br i1 %.not370.i, label %bb.cn, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.thread.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.thread.i: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.i, %bb.cl
  %.sroa.0.0.i41523.i = phi i64 [ %i.ie, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.i ], [ 7, %bb.cl ]
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i41523.i, ptr %i.ig, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cn:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.i
  %i.ih = invoke fastcc i64 @_RINvNtNtCsi68uqYEhoRA_5gimli5write3loc16write_expressionINtNtB4_10endian_vec9EndianVecNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv, i32 noundef range(i32 327680, 393216) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv)
          to label %bb.co unwind label %.loopexit.i37, !noalias !119 ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.ii = and i64 %i.ih, 255
  %.not371.i = icmp eq i64 %i.ii, 255
  br i1 %.not371.i, label %bb.cd, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ih, ptr %i.ij, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cq:                                            ; preds = %bb.bz
  %i.ik = load i64, ptr %i.en, align 8, !alias.scope !157, !noalias !158, !noundef !5 ; 2 uses
  %i.il = icmp sgt i64 %i.ik, -1
  call void @llvm.assume(i1 %i.il)
  %i.im = load ptr, ptr %i.et, align 8, !alias.scope !157, !noalias !158, !nonnull !5, !noundef !5
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ik
  store i8 8, ptr %i.in, align 1, !noalias !119
  %.pre.i.i.i405.i = load i64, ptr %i.en, align 8, !alias.scope !157, !noalias !158
  %i.io = add i64 %.pre.i.i.i405.i, 1
  store i64 %i.io, ptr %i.en, align 8, !alias.scope !157, !noalias !158
  %i.ip = trunc nuw i64 %.sroa.011.0.copyload.i to i1
  br i1 %i.ip, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.thread.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.iq = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %.sroa.512.0.copyload.i, i8 noundef %.sroa.021.0.extract.trunc.i)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.i unwind label %.loopexit.i37, !noalias !119 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.i: ; preds = %bb.cr
  %i.ir = and i64 %i.iq, 255
  %.not367.i = icmp eq i64 %i.ir, 255
  br i1 %.not367.i, label %bb.cs, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.thread.i

bb.cs:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.i
  %i.is = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef %i.gy)
          to label %bb.ct unwind label %.loopexit.i37, !noalias !119 ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  %i.it = invoke fastcc i64 @_RINvNtNtCsi68uqYEhoRA_5gimli5write3loc16write_expressionINtNtB4_10endian_vec9EndianVecNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv, i32 noundef range(i32 327680, 393216) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gz)
          to label %bb.cu unwind label %.loopexit.i37, !noalias !119 ; 2 uses

bb.cu:                                            ; preds = %bb.ct
  %i.iu = and i64 %i.it, 255
  %.not368.i = icmp eq i64 %i.iu, 255
  br i1 %.not368.i, label %bb.cd, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.thread.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.thread.i: ; preds = %bb.cu, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.i, %bb.cq
  %.lcssa45.sink.i = phi i64 [ 7, %bb.cq ], [ %i.iq, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.i ], [ %i.it, %bb.cu ]
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa45.sink.i, ptr %i.iv, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cv:                                            ; preds = %bb.ca
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.063.033.i, i64 8
  %i.ix = load i64, ptr %i.en, align 8, !alias.scope !159, !noalias !160, !noundef !5 ; 2 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = load ptr, ptr %i.et, align 8, !alias.scope !159, !noalias !160, !nonnull !5, !noundef !5
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ix
  store i8 5, ptr %i.ja, align 1, !noalias !119
  %.pre.i.i.i408.i = load i64, ptr %i.en, align 8, !alias.scope !159, !noalias !160
  %i.jb = add i64 %.pre.i.i.i408.i, 1
  store i64 %i.jb, ptr %i.en, align 8, !alias.scope !159, !noalias !160
  %i.jc = invoke fastcc i64 @_RINvNtNtCsi68uqYEhoRA_5gimli5write3loc16write_expressionINtNtB4_10endian_vec9EndianVecNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv, i32 noundef range(i32 327680, 393216) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iw)
          to label %bb.cw unwind label %.loopexit.i37, !noalias !119 ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.jd = and i64 %i.jc, 255
  %.not.i39 = icmp eq i64 %i.jd, 255
  br i1 %.not.i39, label %bb.cd, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jc, ptr %i.je, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

._crit_edge37.i:                                  ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert.exit395.i, %bb.bs
  %.val.i41 = phi i64 [ %i.fn, %bb.bs ], [ %i.gm, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert.exit395.i ] ; 2 uses
  %i.jf = icmp sgt i64 %.val.i41, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = sub nsw i64 %.val.i41, %.val376.i
  %i.jh = invoke range(i64 0, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.du, i64 noundef %.val.i.i, i64 noundef %i.jg, i8 noundef range(i8 4, 9) %.sroa.4.0.extract.trunc.i)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !119 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i: ; preds = %._crit_edge37.i
  %i.ji = and i64 %i.jh, 255
  %.not374.i = icmp eq i64 %i.ji, 255
  br i1 %.not374.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jh, ptr %i.jj, align 8, !alias.scope !119, !noalias !131
  br label %bb.da

bb.cz:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !131
  br label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable14write_loclistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit

bb.da:                                            ; preds = %bb.cy, %bb.cx, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit420.thread.i, %bb.cp, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit417.thread.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit414.thread.i, %bb.ci, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43, %bb.bn
  store i64 -1, ptr %0, align 8, !alias.scope !119, !noalias !131
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetEECs8GyQQEoxZtT_7convert.exit.i33 unwind label %bb.db, !noalias !119

bb.db:                                            ; preds = %bb.da
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.dc, !noalias !119

bb.dc:                                            ; preds = %bb.db
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !119
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetEECs8GyQQEoxZtT_7convert.exit.i33: ; preds = %bb.da
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !119
  br label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable14write_loclistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit

bb.dd:                                            ; preds = %.loopexit.split-lp.i29
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !119
  unreachable

_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable14write_loclistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetEECs8GyQQEoxZtT_7convert.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !121
  br label %bb.df

bb.de:                                            ; preds = %bb.d
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.jn, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.4.0.extract.trunc, ptr %.sroa.415.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable14write_loclistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit, %_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable9write_locINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvMNtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB3_5Dwarf5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(224) %0, ptr noalias nofree noundef align 8 dereferenceable(424) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = tail call i64 @_RINvMNtNtCsi68uqYEhoRA_5gimli5write4unitNtB3_9UnitTable5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) ; 3 uses
  %i.e = and i64 %i.d, 255
  %.not = icmp eq i64 %i.e, 255
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.445.0.extract.shift = and i64 %i.d, -256
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.i, 280
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.017.075 = phi ptr [ %i.g, %.lr.ph ], [ %i.t, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr i8, ptr %.sroa.017.075, i64 264
  %.sroa.017.0.val = load i32, ptr %i.m, align 8
  call void @_RINvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB3_11LineProgram5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %.sroa.017.075, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef %.sroa.017.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
  %i.n = load i32, ptr %i.a, align 8, !range !9, !noundef !5
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = tail call i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable5writeINtNtB8_10endian_vec9EndianVecNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) ; 3 uses
  %i.r = and i64 %i.q, 255
  %.not73 = icmp eq i64 %i.r, 255
  br i1 %.not73, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.046.0.copyload = load i64, ptr %i.s, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.050.sroa.4.0.extract.shift = and i64 %.sroa.046.0.copyload, -256
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.075, i64 280 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.b
  %.sroa.6.sroa.0.0 = phi i64 [ %.sroa.445.0.extract.shift, %bb.b ], [ %.sroa.458.0.extract.shift, %bb.h ], [ %spec.select, %bb.i ], [ %.sroa.050.sroa.4.0.extract.shift, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.d, %bb.b ], [ %i.q, %bb.h ], [ %spec.select76, %bb.i ], [ %.sroa.046.0.copyload, %bb.e ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 255
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.sroa.0.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

bb.h:                                             ; preds = %._crit_edge
  %.sroa.458.0.extract.shift = and i64 %i.q, -256
  br label %bb.g

bb.i:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.w = tail call i64 @_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable5writeINtNtB8_10endian_vec9EndianVecNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) ; 3 uses
  %i.x = and i64 %i.w, 255
  %.not74 = icmp eq i64 %i.x, 255                 ; 2 uses
  %.sroa.464.0.extract.shift = and i64 %i.w, -256
  %spec.select = select i1 %.not74, i64 0, i64 %.sroa.464.0.extract.shift
  %spec.select76 = select i1 %.not74, i64 255, i64 %i.w
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(424) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.012.0.extract.trunc = trunc i32 %3 to i8 ; 16 uses
  %.sroa.5.0.extract.shift = lshr i32 %3, 16      ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.5.0.extract.shift to i16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %3, -131072
  %or.cond = icmp ult i32 %i.l, 196608
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.522.0..sroa_idx, align 8
  br label %bb.ch

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %.sroa.5.0.extract.shift, 5
  br i1 %i.m, label %bb.ba, label %bb.cg

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val26 = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !252
  store i64 0, ptr %i.h, align 8, !noalias !252
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !252
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.r, align 8, !noalias !252
  %.idx = shl nuw nsw i64 %.val26, 5
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.t = zext i1 %4 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.neg.i = mul i8 %.sroa.012.0.extract.trunc, 56
  %i.v = and i8 %.neg.i, 56
  %i.w = zext nneg i8 %i.v to i64
  %i.x = lshr i64 -1, %i.w
  %i.y = icmp eq i64 %.val26, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert:bb.a
  store i64 %i.fc, ptr %i.df, align 8, !alias.scope !281, !noalias !257
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.039.031.i, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !257, !nonnull !5, !noundef !5 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.039.031.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !257, !noundef !5 ; 2 uses
  %.idx35.i = mul nuw nsw i64 %i.fg, 48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.idx35.i
  %i.fi = icmp eq i64 %i.fg, 0
  br i1 %i.fi, label %._crit_edge.i40, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.bk, %bb.bs
  %.sroa.042.030.i = phi ptr [ %i.fj, %bb.bs ], [ %i.fe, %bb.bk ] ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 48 ; 2 uses
  %i.fk = load i64, ptr %.sroa.042.030.i, align 8, !range !254, !noalias !255, !noundef !5 ; 4 uses
  %i.fl = icmp ne i64 %i.fk, 4
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nsw i64 %i.fk, -2
  %.inv.i36 = icmp samesign ult i64 %i.fk, 2
  %i.fn = select i1 %.inv.i36, i64 2, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.fo, align 8, !noalias !255 ; 4 uses
  switch i64 %i.fn, label %bb.bl [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
    i64 2, label %bb.bo
    i64 3, label %bb.bp
  ]

._crit_edge.i40:                                  ; preds = %bb.bs, %bb.bk
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 1)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert.exit287.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !255

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert.exit287.i: ; preds = %._crit_edge.i40
  %i.fp = load i64, ptr %i.dt, align 8, !alias.scope !282, !noalias !283, !noundef !5 ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = load ptr, ptr %i.dz, align 8, !alias.scope !282, !noalias !283, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !noalias !255
  %.pre.i.i.i285.i = load i64, ptr %i.dt, align 8, !alias.scope !282, !noalias !283
  %i.ft = add i64 %.pre.i.i.i285.i, 1             ; 3 uses
  store i64 %i.ft, ptr %i.dt, align 8, !alias.scope !282, !noalias !283
  %i.fu = icmp eq ptr %i.ew, %i.eu
  br i1 %i.fu, label %._crit_edge34.i, label %.lr.ph33.i

bb.bl:                                            ; preds = %.lr.ph.i35
  unreachable

bb.bm:                                            ; preds = %.lr.ph.i35
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 16
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !255
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 1)
          to label %bb.bq unwind label %.loopexit.i37, !noalias !255

bb.bn:                                            ; preds = %.lr.ph.i35
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !255, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 1)
          to label %bb.bt unwind label %.loopexit.i37, !noalias !255

bb.bo:                                            ; preds = %.lr.ph.i35
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 24
  %.sroa.08.0.copyload.i = load i64, ptr %i.fx, align 8, !noalias !255
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !255
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 1)
          to label %bb.bu unwind label %.loopexit.i37, !noalias !255

bb.bp:                                            ; preds = %.lr.ph.i35
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 16
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !255
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.042.030.i, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !255, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 1)
          to label %bb.by unwind label %.loopexit.i37, !noalias !255

bb.bq:                                            ; preds = %bb.bm
  %i.ga = load i64, ptr %i.dt, align 8, !alias.scope !284, !noalias !285, !noundef !5 ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  call void @llvm.assume(i1 %i.gb)
  %i.gc = load ptr, ptr %i.dz, align 8, !alias.scope !284, !noalias !285, !nonnull !5, !noundef !5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  store i8 5, ptr %i.gd, align 1, !noalias !255
  %.pre.i.i.i288.i = load i64, ptr %i.dt, align 8, !alias.scope !284, !noalias !285
  %i.ge = add i64 %.pre.i.i.i288.i, 1
  store i64 %i.ge, ptr %i.dt, align 8, !alias.scope !284, !noalias !285
  %i.gf = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  br i1 %i.gf, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gg = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %.sroa.54.0.copyload.i, i8 noundef %.sroa.012.0.extract.trunc)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42 unwind label %.loopexit.i37, !noalias !255 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42: ; preds = %bb.br
  %i.gh = and i64 %i.gg, 255
  %.not265.i = icmp eq i64 %i.gh, 255
  br i1 %.not265.i, label %bb.bs, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42, %bb.bq
  %.sroa.0.0.i17.i = phi i64 [ %i.gg, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42 ], [ 7, %bb.bq ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i17.i, ptr %i.gi, align 8, !alias.scope !255, !noalias !256
  br label %bb.cc

bb.bs:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit306.i, %.invoke.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.i42
  %i.gj = icmp eq ptr %i.fj, %i.fh
  br i1 %i.gj, label %._crit_edge.i40, label %.lr.ph.i35

bb.bt:                                            ; preds = %bb.bn
  %i.gk = load i64, ptr %i.dt, align 8, !alias.scope !286, !noalias !287, !noundef !5 ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gl)
  %i.gm = load ptr, ptr %i.dz, align 8, !alias.scope !286, !noalias !287, !nonnull !5, !noundef !5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gk
  store i8 4, ptr %i.gn, align 1, !noalias !255
  %.pre.i.i.i291.i = load i64, ptr %i.dt, align 8, !alias.scope !286, !noalias !287
  %i.go = add i64 %.pre.i.i.i291.i, 1
  store i64 %i.go, ptr %i.dt, align 8, !alias.scope !286, !noalias !287
  %i.gp = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %.sroa.03.0.copyload.i)
          to label %.invoke.i unwind label %.loopexit.i37, !noalias !255 ; 0 uses

.invoke.i:                                        ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.i, %bb.bt
  %i.gq = phi i64 [ %i.fw, %bb.bt ], [ %i.fz, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.i ]
  %i.gr = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %i.gq)
          to label %bb.bs unwind label %.loopexit.i37, !noalias !255 ; 0 uses

bb.bu:                                            ; preds = %bb.bo
  %i.gs = load i64, ptr %i.dt, align 8, !alias.scope !288, !noalias !289, !noundef !5 ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, -1
  call void @llvm.assume(i1 %i.gt)
  %i.gu = load ptr, ptr %i.dz, align 8, !alias.scope !288, !noalias !289, !nonnull !5, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gs
  store i8 6, ptr %i.gv, align 1, !noalias !255
  %.pre.i.i.i294.i = load i64, ptr %i.dt, align 8, !alias.scope !288, !noalias !289
  %i.gw = add i64 %.pre.i.i.i294.i, 1
  store i64 %i.gw, ptr %i.dt, align 8, !alias.scope !288, !noalias !289
  %i.gx = trunc nuw i64 %i.fk to i1
  br i1 %i.gx, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gy = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %.sroa.03.0.copyload.i, i8 noundef %.sroa.012.0.extract.trunc)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.i unwind label %.loopexit.i37, !noalias !255 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.i: ; preds = %bb.bv
  %i.gz = and i64 %i.gy, 255
  %.not263.i = icmp eq i64 %i.gz, 255
  br i1 %.not263.i, label %bb.bw, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.thread.i

bb.bw:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.i
  %i.ha = trunc nuw i64 %.sroa.08.0.copyload.i to i1
  br i1 %i.ha, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hb = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %.sroa.59.0.copyload.i, i8 noundef %.sroa.012.0.extract.trunc)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit306.i unwind label %.loopexit.i37, !noalias !255 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit306.i: ; preds = %bb.bx
  %i.hc = and i64 %i.hb, 255
  %.not264.i = icmp eq i64 %i.hc, 255
  br i1 %.not264.i, label %bb.bs, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.thread.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.thread.i: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit306.i, %bb.bw, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.i, %bb.bu
  %.sroa.0.0.i30423.sink.i = phi i64 [ 7, %bb.bu ], [ %i.gy, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.i ], [ %i.hb, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit306.i ], [ 7, %bb.bw ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i30423.sink.i, ptr %i.hd, align 8, !alias.scope !255, !noalias !256
  br label %bb.cc

bb.by:                                            ; preds = %bb.bp
  %i.he = load i64, ptr %i.dt, align 8, !alias.scope !290, !noalias !291, !noundef !5 ; 2 uses
  %i.hf = icmp sgt i64 %i.he, -1
  call void @llvm.assume(i1 %i.hf)
  %i.hg = load ptr, ptr %i.dz, align 8, !alias.scope !290, !noalias !291, !nonnull !5, !noundef !5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he
  store i8 7, ptr %i.hh, align 1, !noalias !255
  %.pre.i.i.i297.i = load i64, ptr %i.dt, align 8, !alias.scope !290, !noalias !291
  %i.hi = add i64 %.pre.i.i.i297.i, 1
  store i64 %i.hi, ptr %i.dt, align 8, !alias.scope !290, !noalias !291
  %i.hj = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  br i1 %i.hj, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hk = invoke i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef %.sroa.512.0.copyload.i, i8 noundef %.sroa.012.0.extract.trunc)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.i unwind label %.loopexit.i37, !noalias !255 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.i: ; preds = %bb.bz
  %i.hl = and i64 %i.hk, 255
  %.not.i39 = icmp eq i64 %i.hl, 255
  br i1 %.not.i39, label %.invoke.i, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.thread.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.thread.i: ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.i, %bb.by
  %.sroa.0.0.i30726.i = phi i64 [ %i.hk, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.i ], [ 7, %bb.by ]
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i30726.i, ptr %i.hm, align 8, !alias.scope !255, !noalias !256
  br label %bb.cc

._crit_edge34.i:                                  ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert.exit287.i, %bb.bi
  %.val.i41 = phi i64 [ %i.et, %bb.bi ], [ %i.ft, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert.exit287.i ] ; 2 uses
  %i.hn = icmp sgt i64 %.val.i41, -1
  call void @llvm.assume(i1 %i.hn)
  %i.ho = sub nsw i64 %.val.i41, %.val268.i
  %i.hp = invoke range(i64 0, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.db, i64 noundef %.val.i.i, i64 noundef %i.ho, i8 noundef range(i8 4, 9) %.sroa.4.0.extract.trunc.i)
          to label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !255 ; 2 uses

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i: ; preds = %._crit_edge34.i
  %i.hq = and i64 %i.hp, 255
  %.not266.i = icmp eq i64 %i.hq, 255
  br i1 %.not266.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hp, ptr %i.hr, align 8, !alias.scope !255, !noalias !256
  br label %bb.cc

bb.cb:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !256
  br label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable14write_rnglistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit

bb.cc:                                            ; preds = %bb.ca, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit309.thread.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit303.thread.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert.exit.thread.i43, %bb.bd
  store i64 -1, ptr %0, align 8, !alias.scope !255, !noalias !256
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetEECs8GyQQEoxZtT_7convert.exit.i33 unwind label %bb.cd, !noalias !255

bb.cd:                                            ; preds = %bb.cc
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ce, !noalias !255

bb.ce:                                            ; preds = %bb.cd
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !255
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetEECs8GyQQEoxZtT_7convert.exit.i33: ; preds = %bb.cc
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !255
  br label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable14write_rnglistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit

bb.cf:                                            ; preds = %.loopexit.split-lp.i29
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !255
  unreachable

_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable14write_rnglistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.cb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetEECs8GyQQEoxZtT_7convert.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !257
  br label %bb.ch

bb.cg:                                            ; preds = %bb.d
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.hv, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.5.0.extract.trunc, ptr %.sroa.415.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable14write_rnglistsINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit, %_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable12write_rangesINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMNtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB3_17AbbreviationTable5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %i.b = alloca [11 x i8], align 1                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.6.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.7.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit
  %.sroa.0.07585 = phi ptr [ %i.d, %.lr.ph ], [ %i.m, %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit ] ; 5 uses
  %.sroa.8.084 = phi i64 [ 0, %.lr.ph ], [ %i.n, %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07585, i64 40 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.8.084, 1          ; 2 uses
  %i.o = call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.n) ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.07585, i64 24
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !333, !noalias !334, !noundef !5
  %i.r = zext i16 %i.q to i64
  %i.s = call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.r), !noalias !333 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.07585, i64 26
  %i.u = load i8, ptr %i.t, align 2, !range !8, !alias.scope !333, !noalias !334, !noundef !5
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1), !noalias !333
  %i.v = load i64, ptr %i.i, align 8, !alias.scope !334, !noalias !333, !noundef !5 ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !334, !noalias !333, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.u, ptr %i.y, align 1, !noalias !333
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !334, !noalias !333
  %i.z = add i64 %.pre.i.i.i.i, 1
  store i64 %i.z, ptr %i.i, align 8, !alias.scope !334, !noalias !333
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07585, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !333, !noalias !334, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.07585, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !333, !noalias !334, !noundef !5 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ad, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeINtNtB8_10endian_vec9EndianVecNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit.i
  %.sroa.019.067.i = phi ptr [ %i.bz, %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeINtNtB8_10endian_vec9EndianVecNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert.exit.i ], [ %i.ab, %bb.b ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.019.067.i, i64 8
  %i.ah = load i16, ptr %i.ag, align 8, !alias.scope !335, !noalias !336, !noundef !5 ; 2 uses
  %i.ai = zext i16 %i.ah to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  %i.aj = lshr i64 %i.ai, 7                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0                    ; 2 uses
  %i.al = trunc i16 %i.ah to i8
  %i.am = and i8 %i.al, 127
  %masksel.i35 = select i1 %i.ak, i8 0, i8 -128
  %spec.select.i36 = or disjoint i8 %masksel.i35, %i.am
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = lshr i64 %i.ai, 14                      ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %i.ap = trunc i64 %i.aj to i8
  %i.aq = and i8 %i.ap, 127
  %masksel.1.i37 = select i1 %i.ao, i8 0, i8 -128
  %spec.select.1.i38 = or disjoint i8 %masksel.1.i37, %i.aq
  %i.ar = trunc nuw nsw i64 %i.an to i8
  %spec.select81 = select i1 %i.ao, i8 2, i8 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.5.0.i53 = phi i8 [ 0, %.lr.ph.i ], [ %spec.select.1.i38, %bb.c ]
  %.sroa.6.0.i54 = phi i8 [ 0, %.lr.ph.i ], [ %i.ar, %bb.c ]
  %.lcssa.i62 = phi i8 [ 1, %.lr.ph.i ], [ %spec.select81, %bb.c ]
  store i8 %spec.select.i36, ptr %i.a, align 1, !noalias !338
  store i8 %.sroa.5.0.i53, ptr %.sroa.5.0..sroa_idx.i63, align 1, !noalias !338
  store i8 %.sroa.6.0.i54, ptr %.sroa.6.0..sroa_idx.i64, align 1, !noalias !338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i65, i8 0, i64 7, i1 false)
  store i8 %.lcssa.i62, ptr %i.k, align 1, !noalias !338
  %i.as = call { ptr, i64 } @_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1285bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(11) %i.a), !noalias !338 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 1      ; 4 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef range(i64 0, -9223372036854775808) %i.at), !noalias !339
  %i.au = load i64, ptr %i.i, align 8, !alias.scope !340, !noalias !339, !noundef !5 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.av), !noalias !341
  %.not.i.i.i72 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i72, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert.exit74, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = extractvalue { ptr, i64 } %i.as, 0
  %i.ax = load ptr, ptr %i.j, align 8, !alias.scope !340, !noalias !339, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, -9223372036854775808) %i.at, i1 false), !noalias !341
  %.pre.i.i.i73 = load i64, ptr %i.i, align 8, !alias.scope !340, !noalias !339
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert.exit74

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert.exit74: ; preds = %bb.d, %bb.e
  %i.az = phi i64 [ %.pre.i.i.i73, %bb.e ], [ %i.au, %bb.d ]
  %i.ba = add i64 %i.az, %i.at
  store i64 %i.ba, ptr %i.i, align 8, !alias.scope !340, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.067.i, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !alias.scope !335, !noalias !336, !noundef !5 ; 3 uses
  %i.bd = zext i16 %i.bc to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !343
  %i.be = lshr i64 %i.bd, 7                       ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0                    ; 2 uses
  %i.bg = trunc i16 %i.bc to i8
  %i.bh = and i8 %i.bg, 127
  %masksel.i = select i1 %i.bf, i8 0, i8 -128
  %spec.select.i = or disjoint i8 %masksel.i, %i.bh
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert.exit74
  %i.bi = lshr i64 %i.bd, 14                      ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0                    ; 2 uses
  %i.bk = trunc i64 %i.be to i8
  %i.bl = and i8 %i.bk, 127
  %masksel.1.i = select i1 %i.bj, i8 0, i8 -128
  %spec.select.1.i = or disjoint i8 %masksel.1.i, %i.bl
  %i.bm = trunc nuw nsw i64 %i.bi to i8
  %spec.select83 = select i1 %i.bj, i8 2, i8 3
  br label %bb.g
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB5_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBR_5write4unit6UnitIdNtB1E_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE6insertCs8GyQQEoxZtT_7convert:bb.a
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.021.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ac, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f, !prof !478

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.021.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !478

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i22.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i22.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.g ], [ %.sroa.4.125.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !479, !noalias !480, !nonnull !5, !noundef !5 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !481, !noundef !5
  %i.as = and i8 %i.ar, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = load i64, ptr %i.d, align 8, !alias.scope !479, !noalias !480, !noundef !5
  %i.ax = and i64 %i.aw, %i.av
  store i8 %i.f, ptr %i.aq, align 1, !noalias !481
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.f, ptr %i.az, align 1, !noalias !481
  %i.ba = load <2 x i64>, ptr %i.au, align 8, !alias.scope !479, !noalias !480
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.at, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.au, align 8, !alias.scope !479, !noalias !480
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.ap, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  store i64 %2, ptr %i.bf, align 8, !noalias !479
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.be, i64 -16
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !479
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !479
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bg = load ptr, ptr %1, align 8, !alias.scope !472, !noalias !473, !nonnull !5
  %i.bh = getelementptr inbounds [24 x i8], ptr %i.bg, i64 %i.r ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load <2 x i64>, ptr %i.bi, align 8
  store i64 %3, ptr %i.bi, align 8
  store i64 %4, ptr %i.bj, align 8
  store <2 x i64> %i.bl, ptr %i.bk, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvMsh_NtNtCsi68uqYEhoRA_5gimli5write6abbrevINtB5_11DebugAbbrevINtNtB7_10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianEE6offsetCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.b)
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs7_NtCsiHO4aZxHxup_9hashbrown3mapINtB5_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBN_EINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEENtNtB2h_7default7Default7defaultCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs7_NtCsiHO4aZxHxup_9hashbrown3mapINtB5_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBR_5write4unit6UnitIdNtB1E_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEENtNtB2s_7default7Default7defaultCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsR_NtCskKLDkoKarTP_4core5arrayAINtNtB7_6option6OptionjEje_NtNtB7_7default7Default7defaultCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 8), (16, 24), (32, 40), (48, 56), (64, 72), (80, 88), (96, 104), (112, 120), (128, 136), (144, 152), (160, 168), (176, 184), (192, 200), (208, 216)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !484, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !484, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !484
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs8GyQQEoxZtT_7convert.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !484
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer10write_u128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i128 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  %i.e = tail call i128 @llvm.bswap.i128(i128 %1)
  %storemerge.i = select i1 %i.d, i128 %i.e, i128 %1
  store i128 %storemerge.i, ptr %i.a, align 16, !noalias !492
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 16), !noalias !493
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !494, !noalias !493, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !494, !noalias !493, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !494, !noalias !493
  %i.l = add i64 %.pre.i.i, 16
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !494, !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 3, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_sdataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %2)
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.i = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %2, i1 true)
  switch i8 %i.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %.split
  %.sroa.4.0.insert.ext22 = zext i8 %2 to i64
  %.sroa.4.0.insert.shift23 = shl nuw nsw i64 %.sroa.4.0.insert.ext22, 8
  %.sroa.021.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift23, 4
  br label %bb.h

bb.c:                                             ; preds = %.split
  %i.j = add i64 %1, 128
  %.not31 = icmp ult i64 %i.j, 256
  br i1 %.not31, label %bb.g, label %bb.h

bb.d:                                             ; preds = %.split
  %i.k = add i64 %1, 32768
  %.not30 = icmp ult i64 %i.k, 65536
  br i1 %.not30, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.split
  %i.l = add i64 %1, 2147483648
  %.not = icmp ult i64 %i.l, 4294967296
  br i1 %.not, label %bb.j, label %bb.h

bb.f:                                             ; preds = %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !529
  store i64 0, ptr %i.f, align 8, !noalias !529
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i8, ptr %i.m, align 8, !range !8, !alias.scope !529, !noundef !5
  %i.n = trunc nuw i8 %.val.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !530
  %i.o = tail call i64 @llvm.bswap.i64(i64 %1)
  %storemerge.i.i = select i1 %i.n, i64 %i.o, i64 %1
  store i64 %storemerge.i.i, ptr %i.e, align 8, !noalias !530
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.f, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !530
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 8), !noalias !531
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !532, !noalias !531, !noundef !5 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !532, !noalias !531, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.v = load i64, ptr %i.f, align 8, !noalias !529
  store i64 %i.v, ptr %i.u, align 1
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !532, !noalias !531
  %i.w = add i64 %.pre.i.i.i, 8
  store i64 %i.w, ptr %i.p, align 8, !alias.scope !532, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !529
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.x = trunc nsw i64 %1 to i8
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1), !noalias !533
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !534, !noalias !533, !noundef !5 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !534, !noalias !533, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  store i8 %i.x, ptr %i.ad, align 1
  %.pre.i.i.i32 = load i64, ptr %i.y, align 8, !alias.scope !534, !noalias !533
  %i.ae = add i64 %.pre.i.i.i32, 1
  store i64 %i.ae, ptr %i.y, align 8, !alias.scope !534, !noalias !533
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.j, %bb.i, %bb.g, %bb.f, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.021.0.insert.insert, %bb.b ], [ 255, %bb.f ], [ 255, %bb.g ], [ 3, %bb.c ], [ 255, %bb.i ], [ 3, %bb.d ], [ 255, %bb.j ], [ 3, %bb.e ]
  ret i64 %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  %i.af = trunc nsw i64 %1 to i16                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !535
  store i16 0, ptr %i.d, align 2, !noalias !535
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i33 = load i8, ptr %i.ag, align 8, !range !8, !alias.scope !535, !noundef !5
  %i.ah = trunc nuw i8 %.val.i33 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !536
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.af)
  %storemerge.i.i34 = select i1 %i.ah, i16 %i.ai, i16 %i.af
  store i16 %storemerge.i.i34, ptr %i.c, align 2, !noalias !536
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !536
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 2), !noalias !537
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !538, !noalias !537, !noundef !5 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !538, !noalias !537, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  %i.ap = load i16, ptr %i.d, align 2, !noalias !535
  store i16 %i.ap, ptr %i.ao, align 1
  %.pre.i.i.i35 = load i64, ptr %i.aj, align 8, !alias.scope !538, !noalias !537
  %i.aq = add i64 %.pre.i.i.i35, 2
  store i64 %i.aq, ptr %i.aj, align 8, !alias.scope !538, !noalias !537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !535
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.ar = trunc nsw i64 %1 to i32                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !539
  store i32 0, ptr %i.b, align 4, !noalias !539
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i36 = load i8, ptr %i.as, align 8, !range !8, !alias.scope !539, !noundef !5
  %i.at = trunc nuw i8 %.val.i36 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !540
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %storemerge.i.i37 = select i1 %i.at, i32 %i.au, i32 %i.ar
  store i32 %storemerge.i.i37, ptr %i.a, align 4, !noalias !540
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !540
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4), !noalias !541
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !542, !noalias !541, !noundef !5 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !542, !noalias !541, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw
  %i.bb = load i32, ptr %i.b, align 4, !noalias !539
  store i32 %i.bb, ptr %i.ba, align 1
  %.pre.i.i.i38 = load i64, ptr %i.av, align 8, !alias.scope !542, !noalias !541
  %i.bc = add i64 %.pre.i.i.i38, 4
  store i64 %i.bc, ptr %i.av, align 8, !alias.scope !542, !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !539
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 3, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  switch i8 %2, label %bb.b [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.insert.ext31 = zext i8 %2 to i64
  %.sroa.4.0.insert.shift32 = shl nuw nsw i64 %.sroa.4.0.insert.ext31, 8
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift32, 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not42 = icmp ult i64 %1, 256
  br i1 %.not42, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.a
  %.not41 = icmp ult i64 %1, 65536
  br i1 %.not41, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 16777215
  br i1 %i.i, label %bb.i, label %bb.k

bb.f:                                             ; preds = %bb.a
  %.not = icmp ult i64 %1, 4294967296
  br i1 %.not, label %bb.l, label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !579
  store i64 0, ptr %i.g, align 8, !noalias !579
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i8, ptr %i.j, align 8, !range !8, !alias.scope !579, !noundef !5
  %i.k = trunc nuw i8 %.val.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !580
  %i.l = tail call i64 @llvm.bswap.i64(i64 %1)
  %storemerge.i.i = select i1 %i.k, i64 %i.l, i64 %1
  store i64 %storemerge.i.i, ptr %i.f, align 8, !noalias !580
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.g, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !580
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 8), !noalias !581
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !582, !noalias !581, !noundef !5 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !582, !noalias !581, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.s = load i64, ptr %i.g, align 8, !noalias !579
  store i64 %i.s, ptr %i.r, align 1
  %.pre.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !582, !noalias !581
  %i.t = add i64 %.pre.i.i.i, 8
  store i64 %i.t, ptr %i.m, align 8, !alias.scope !582, !noalias !581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !579
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.u = trunc nuw i64 %1 to i8
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1), !noalias !583
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !584, !noalias !583, !noundef !5 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !584, !noalias !583, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 %i.u, ptr %i.aa, align 1
  %.pre.i.i.i44 = load i64, ptr %i.v, align 8, !alias.scope !584, !noalias !583
  %i.ab = add i64 %.pre.i.i.i44, 1
  store i64 %i.ab, ptr %i.v, align 8, !alias.scope !584, !noalias !583
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.030.0.insert.insert, %bb.b ], [ 255, %bb.g ], [ 255, %bb.h ], [ 3, %bb.c ], [ 255, %bb.j ], [ 3, %bb.d ], [ 255, %bb.k ], [ 3, %bb.e ], [ 255, %bb.l ], [ 3, %bb.f ]
  ret i64 %.sroa.0.0

bb.j:                                             ; preds = %bb.d
  %i.ac = trunc nuw i64 %1 to i16                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !585
  store i16 0, ptr %i.e, align 2, !noalias !585
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i45 = load i8, ptr %i.ad, align 8, !range !8, !alias.scope !585, !noundef !5
  %i.ae = trunc nuw i8 %.val.i45 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !586
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  %storemerge.i.i46 = select i1 %i.ae, i16 %i.af, i16 %i.ac
  store i16 %storemerge.i.i46, ptr %i.d, align 2, !noalias !586
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.e, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !586
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 2), !noalias !587
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !588, !noalias !587, !noundef !5 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !588, !noalias !587, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.am = load i16, ptr %i.e, align 2, !noalias !585
  store i16 %i.am, ptr %i.al, align 1
  %.pre.i.i.i47 = load i64, ptr %i.ag, align 8, !alias.scope !588, !noalias !587
  %i.an = add i64 %.pre.i.i.i47, 2
  store i64 %i.an, ptr %i.ag, align 8, !alias.scope !588, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !585
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 0, ptr %i.h, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val43 = load i8, ptr %i.ao, align 8, !range !8, !noundef !5
  %i.ap = trunc nuw i8 %.val43 to i1
  %i.aq = trunc nuw nsw i64 %1 to i32             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !589
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %storemerge.i = select i1 %i.ap, i32 %i.ar, i32 %i.aq
  store i32 %storemerge.i, ptr %i.c, align 4, !noalias !589
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.h, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !589
  %.val = load i8, ptr %i.ao, align 8, !range !8, !noundef !5
  %.sink54.idx = zext nneg i8 %.val to i64
  %.sink54 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink54.idx
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 3), !noalias !5
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !5, !noundef !5 ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !5, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ax, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sink54, i64 3, i1 false)
  %.pre.i.i48 = load i64, ptr %i.as, align 8, !noalias !5
  %i.ay = add i64 %.pre.i.i48, 3
  store i64 %i.ay, ptr %i.as, align 8, !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.l:                                             ; preds = %bb.f
  %i.az = trunc nuw i64 %1 to i32                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !590
  store i32 0, ptr %i.b, align 4, !noalias !590
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i49 = load i8, ptr %i.ba, align 8, !range !8, !alias.scope !590, !noundef !5
  %i.bb = trunc nuw i8 %.val.i49 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !591
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %storemerge.i.i50 = select i1 %i.bb, i32 %i.bc, i32 %i.az
  store i32 %storemerge.i.i50, ptr %i.a, align 4, !noalias !591
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !591
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4), !noalias !592
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !593, !noalias !592, !noundef !5 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !593, !noalias !592, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  %i.bj = load i32, ptr %i.b, align 4, !noalias !590
  store i32 %i.bj, ptr %i.bi, align 1
  %.pre.i.i.i51 = load i64, ptr %i.bd, align 8, !alias.scope !593, !noalias !592
  %i.bk = add i64 %.pre.i.i.i51, 4
  store i64 %i.bk, ptr %i.bd, align 8, !alias.scope !593, !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !590
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 3, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_offsetCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef range(i8 0, 25) %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 3, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_addressCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !12, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i8 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ 7, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_sleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.b = ashr i64 %1, 6                           ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  %.sroa.011.0.i = icmp ult i64 %i.c, 2           ; 2 uses
  %.off.i = add nsw i64 %i.b, -1
  %switch.i = icmp ult i64 %.off.i, -2
  br i1 %switch.i, label %bb.b, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %1, 7
  %.sroa.0.1.i = select i1 %.sroa.011.0.i, i64 %i.b, i64 %i.d ; 3 uses
  %i.e = ashr i64 %.sroa.0.1.i, 6                 ; 3 uses
  %i.f = add nsw i64 %i.e, 1
  %.sroa.011.0.1.i = icmp ult i64 %i.f, 2         ; 2 uses
  %i.g = trunc i64 %.sroa.0.1.i to i8
  %i.h = and i8 %i.g, 127
  %masksel.1.i = select i1 %.sroa.011.0.1.i, i8 0, i8 -128
  %.sroa.08.0.1.i = or disjoint i8 %masksel.1.i, %i.h ; 9 uses
  %.off.1.i = add nsw i64 %i.e, -1
  %switch.1.i = icmp ult i64 %.off.1.i, -2
  br i1 %switch.1.i, label %bb.c, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.c:                                             ; preds = %bb.b
  %i.i = ashr i64 %.sroa.0.1.i, 7
  %.sroa.0.1.1.i = select i1 %.sroa.011.0.1.i, i64 %i.e, i64 %i.i ; 3 uses
  %i.j = ashr i64 %.sroa.0.1.1.i, 6               ; 3 uses
  %i.k = add nsw i64 %i.j, 1
  %.sroa.011.0.2.i = icmp ult i64 %i.k, 2         ; 2 uses
  %i.l = trunc i64 %.sroa.0.1.1.i to i8
  %i.m = and i8 %i.l, 127
  %masksel.2.i = select i1 %.sroa.011.0.2.i, i8 0, i8 -128
  %.sroa.08.0.2.i = or disjoint i8 %masksel.2.i, %i.m ; 8 uses
  %.off.2.i = add nsw i64 %i.j, -1
  %switch.2.i = icmp ult i64 %.off.2.i, -2
  br i1 %switch.2.i, label %bb.d, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.d:                                             ; preds = %bb.c
  %i.n = ashr i64 %.sroa.0.1.1.i, 7
  %.sroa.0.1.2.i = select i1 %.sroa.011.0.2.i, i64 %i.j, i64 %i.n ; 3 uses
  %i.o = ashr i64 %.sroa.0.1.2.i, 6               ; 3 uses
  %i.p = add nsw i64 %i.o, 1
  %.sroa.011.0.3.i = icmp ult i64 %i.p, 2         ; 2 uses
  %i.q = trunc i64 %.sroa.0.1.2.i to i8
  %i.r = and i8 %i.q, 127
  %masksel.3.i = select i1 %.sroa.011.0.3.i, i8 0, i8 -128
  %.sroa.08.0.3.i = or disjoint i8 %masksel.3.i, %i.r ; 7 uses
  %.off.3.i = add nsw i64 %i.o, -1
  %switch.3.i = icmp ult i64 %.off.3.i, -2
  br i1 %switch.3.i, label %bb.e, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.e:                                             ; preds = %bb.d
  %i.s = ashr i64 %.sroa.0.1.2.i, 7
  %.sroa.0.1.3.i = select i1 %.sroa.011.0.3.i, i64 %i.o, i64 %i.s ; 3 uses
  %i.t = ashr i64 %.sroa.0.1.3.i, 6               ; 3 uses
  %i.u = add nsw i64 %i.t, 1
  %.sroa.011.0.4.i = icmp ult i64 %i.u, 2         ; 2 uses
  %i.v = trunc i64 %.sroa.0.1.3.i to i8
  %i.w = and i8 %i.v, 127
  %masksel.4.i = select i1 %.sroa.011.0.4.i, i8 0, i8 -128
  %.sroa.08.0.4.i = or disjoint i8 %masksel.4.i, %i.w ; 6 uses
  %.off.4.i = add nsw i64 %i.t, -1
  %switch.4.i = icmp ult i64 %.off.4.i, -2
  br i1 %switch.4.i, label %bb.f, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.f:                                             ; preds = %bb.e
  %i.x = ashr i64 %.sroa.0.1.3.i, 7
  %.sroa.0.1.4.i = select i1 %.sroa.011.0.4.i, i64 %i.t, i64 %i.x ; 3 uses
  %i.y = ashr i64 %.sroa.0.1.4.i, 6               ; 3 uses
  %i.z = add nsw i64 %i.y, 1
  %.sroa.011.0.5.i = icmp ult i64 %i.z, 2         ; 2 uses
  %i.aa = trunc i64 %.sroa.0.1.4.i to i8
  %i.ab = and i8 %i.aa, 127
  %masksel.5.i = select i1 %.sroa.011.0.5.i, i8 0, i8 -128
  %.sroa.08.0.5.i = or disjoint i8 %masksel.5.i, %i.ab ; 5 uses
  %.off.5.i = add nsw i64 %i.y, -1
  %switch.5.i = icmp ult i64 %.off.5.i, -2
  br i1 %switch.5.i, label %bb.g, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = ashr i64 %.sroa.0.1.4.i, 7
  %.sroa.0.1.5.i = select i1 %.sroa.011.0.5.i, i64 %i.y, i64 %i.ac ; 3 uses
  %i.ad = ashr i64 %.sroa.0.1.5.i, 6              ; 3 uses
  %i.ae = add nsw i64 %i.ad, 1
  %.sroa.011.0.6.i = icmp ult i64 %i.ae, 2        ; 2 uses
  %i.af = trunc i64 %.sroa.0.1.5.i to i8
  %i.ag = and i8 %i.af, 127
  %masksel.6.i = select i1 %.sroa.011.0.6.i, i8 0, i8 -128
  %.sroa.08.0.6.i = or disjoint i8 %masksel.6.i, %i.ag ; 4 uses
  %.off.6.i = add nsw i64 %i.ad, -1
  %switch.6.i = icmp ult i64 %.off.6.i, -2
  br i1 %switch.6.i, label %bb.h, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = ashr i64 %.sroa.0.1.5.i, 7
  %.sroa.0.1.6.i = select i1 %.sroa.011.0.6.i, i64 %i.ad, i64 %i.ah ; 3 uses
  %i.ai = ashr i64 %.sroa.0.1.6.i, 6              ; 3 uses
  %i.aj = add nsw i64 %i.ai, 1
  %.sroa.011.0.7.i = icmp ult i64 %i.aj, 2        ; 2 uses
  %i.ak = trunc i64 %.sroa.0.1.6.i to i8
  %i.al = and i8 %i.ak, 127
  %masksel.7.i = select i1 %.sroa.011.0.7.i, i8 0, i8 -128
  %.sroa.08.0.7.i = or disjoint i8 %masksel.7.i, %i.al ; 3 uses
  %.off.7.i = add nsw i64 %i.ai, -1
  %switch.7.i = icmp ult i64 %.off.7.i, -2
  br i1 %switch.7.i, label %bb.i, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.i:                                             ; preds = %bb.h
  %i.am = ashr i64 %.sroa.0.1.6.i, 7
  %.sroa.0.1.7.i = select i1 %.sroa.011.0.7.i, i64 %i.ai, i64 %i.am ; 3 uses
  %i.an = ashr i64 %.sroa.0.1.7.i, 6              ; 3 uses
  %i.ao = add nsw i64 %i.an, 1
  %.sroa.011.0.8.i = icmp ult i64 %i.ao, 2        ; 2 uses
  %i.ap = trunc i64 %.sroa.0.1.7.i to i8
  %i.aq = and i8 %i.ap, 127
  %masksel.8.i = select i1 %.sroa.011.0.8.i, i8 0, i8 -128
  %.sroa.08.0.8.i = or disjoint i8 %masksel.8.i, %i.aq ; 2 uses
  %.off.8.i = add nsw i64 %i.an, -1
  %switch.8.i = icmp ult i64 %.off.8.i, -2
  br i1 %switch.8.i, label %bb.j, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = ashr i64 %.sroa.0.1.7.i, 7
  %.sroa.0.1.8.i = select i1 %.sroa.011.0.8.i, i64 %i.an, i64 %i.ar ; 2 uses
  %i.as = ashr i64 %.sroa.0.1.8.i, 6              ; 2 uses
  %i.at = add nsw i64 %i.as, 1
  %.sroa.011.0.9.i = icmp ult i64 %i.at, 2
  %i.au = trunc i64 %.sroa.0.1.8.i to i8
  %i.av = and i8 %i.au, 127
  %masksel.9.i = select i1 %.sroa.011.0.9.i, i8 0, i8 -128
  %.sroa.08.0.9.i = or disjoint i8 %masksel.9.i, %i.av
  %.off.9.i = add nsw i64 %i.as, -1
  %switch.9.i = icmp ult i64 %.off.9.i, -2
  br i1 %switch.9.i, label %bb.k, label %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 10, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !601
  unreachable

_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.3.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.1.i, %bb.j ], [ %.sroa.08.0.1.i, %bb.i ], [ %.sroa.08.0.1.i, %bb.h ], [ %.sroa.08.0.1.i, %bb.g ], [ %.sroa.08.0.1.i, %bb.f ], [ %.sroa.08.0.1.i, %bb.e ], [ %.sroa.08.0.1.i, %bb.d ], [ %.sroa.08.0.1.i, %bb.c ], [ %.sroa.08.0.1.i, %bb.b ]
  %.sroa.4.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.2.i, %bb.j ], [ %.sroa.08.0.2.i, %bb.i ], [ %.sroa.08.0.2.i, %bb.h ], [ %.sroa.08.0.2.i, %bb.g ], [ %.sroa.08.0.2.i, %bb.f ], [ %.sroa.08.0.2.i, %bb.e ], [ %.sroa.08.0.2.i, %bb.d ], [ %.sroa.08.0.2.i, %bb.c ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.3.i, %bb.j ], [ %.sroa.08.0.3.i, %bb.i ], [ %.sroa.08.0.3.i, %bb.h ], [ %.sroa.08.0.3.i, %bb.g ], [ %.sroa.08.0.3.i, %bb.f ], [ %.sroa.08.0.3.i, %bb.e ], [ %.sroa.08.0.3.i, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.4.i, %bb.j ], [ %.sroa.08.0.4.i, %bb.i ], [ %.sroa.08.0.4.i, %bb.h ], [ %.sroa.08.0.4.i, %bb.g ], [ %.sroa.08.0.4.i, %bb.f ], [ %.sroa.08.0.4.i, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.7.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.5.i, %bb.j ], [ %.sroa.08.0.5.i, %bb.i ], [ %.sroa.08.0.5.i, %bb.h ], [ %.sroa.08.0.5.i, %bb.g ], [ %.sroa.08.0.5.i, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.8.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.6.i, %bb.j ], [ %.sroa.08.0.6.i, %bb.i ], [ %.sroa.08.0.6.i, %bb.h ], [ %.sroa.08.0.6.i, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.9.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.7.i, %bb.j ], [ %.sroa.08.0.7.i, %bb.i ], [ %.sroa.08.0.7.i, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.10.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.8.i, %bb.j ], [ %.sroa.08.0.8.i, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.08.0.9.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.lcssa.i = phi i8 [ 1, %bb.a ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ]
  %masksel.i = select i1 %.sroa.011.0.i, i8 0, i8 -128
  %i.aw = trunc i64 %1 to i8
  %i.ax = and i8 %i.aw, 127
  %.sroa.08.0.i = or disjoint i8 %masksel.i, %i.ax
  store i8 %.sroa.08.0.i, ptr %i.a, align 1, !alias.scope !601
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !601
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i, align 1, !alias.scope !601
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %.lcssa.i, ptr %i.ay, align 1, !alias.scope !601
  %i.az = call { ptr, i64 } @_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1285bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(11) %i.a) ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1      ; 4 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %i.ba), !noalias !602
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !603, !noalias !602, !noundef !5 ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bd)
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit
  %i.be = extractvalue { ptr, i64 } %i.az, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !603, !noalias !602, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %i.be, i64 range(i64 0, -9223372036854775808) %i.ba, i1 false)
  %.pre.i.i = load i64, ptr %i.bb, align 8, !alias.scope !603, !noalias !602
  br label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit: ; preds = %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit, %bb.l
  %i.bi = phi i64 [ %.pre.i.i, %bb.l ], [ %i.bc, %_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1286signed.exit ]
  %i.bj = add i64 %i.bi, %i.ba
  store i64 %i.bj, ptr %i.bb, align 8, !alias.scope !603, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = lshr i64 %1, 7                           ; 2 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = trunc i64 %1 to i8
  %i.e = and i8 %i.d, 127
  %masksel = select i1 %i.c, i8 0, i8 -128
  %spec.select = or disjoint i8 %masksel, %i.e
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 14                          ; 2 uses
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  %i.h = trunc i64 %i.b to i8
  %i.i = and i8 %i.h, 127
  %masksel.1 = select i1 %i.g, i8 0, i8 -128
  %spec.select.1 = or disjoint i8 %masksel.1, %i.i ; 8 uses
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %1, 21                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0                      ; 2 uses
  %i.l = trunc i64 %i.f to i8
  %i.m = and i8 %i.l, 127
  %masksel.2 = select i1 %i.k, i8 0, i8 -128
  %spec.select.2 = or disjoint i8 %masksel.2, %i.m ; 7 uses
  br i1 %i.k, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %1, 28                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.p = trunc i64 %i.j to i8
  %i.q = and i8 %i.p, 127
  %masksel.3 = select i1 %i.o, i8 0, i8 -128
  %spec.select.3 = or disjoint i8 %masksel.3, %i.q ; 6 uses
  br i1 %i.o, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = lshr i64 %1, 35                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.t = trunc i64 %i.n to i8
  %i.u = and i8 %i.t, 127
  %masksel.4 = select i1 %i.s, i8 0, i8 -128
  %spec.select.4 = or disjoint i8 %masksel.4, %i.u ; 5 uses
  br i1 %i.s, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i64 %1, 42                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %masksel.5 = select i1 %i.w, i8 0, i8 -128
  %spec.select.5 = or disjoint i8 %masksel.5, %i.y ; 4 uses
  br i1 %i.w, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = lshr i64 %1, 49                          ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.ab = trunc i64 %i.v to i8
  %i.ac = and i8 %i.ab, 127
  %masksel.6 = select i1 %i.aa, i8 0, i8 -128
  %spec.select.6 = or disjoint i8 %masksel.6, %i.ac ; 3 uses
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = lshr i64 %1, 56                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0                    ; 2 uses
  %i.af = trunc i64 %i.z to i8
  %i.ag = and i8 %i.af, 127
  %masksel.7 = select i1 %i.ae, i8 0, i8 -128
  %spec.select.7 = or disjoint i8 %masksel.7, %i.ag ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp slt i64 %1, 0                      ; 2 uses
  %i.ai = trunc nuw i64 %i.ad to i8
  %i.aj = and i8 %i.ai, 127
  %masksel.8 = select i1 %i.ah, i8 -128, i8 0
  %spec.select.8 = or disjoint i8 %masksel.8, %i.aj
  %.lobit = lshr i64 %1, 63
  %spec.select22 = trunc nuw nsw i64 %.lobit to i8
  %spec.select23 = select i1 %i.ah, i8 10, i8 9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.5.0 = phi i8 [ 0, %bb.a ], [ %spec.select.1, %bb.b ], [ %spec.select.1, %bb.c ], [ %spec.select.1, %bb.d ], [ %spec.select.1, %bb.e ], [ %spec.select.1, %bb.f ], [ %spec.select.1, %bb.g ], [ %spec.select.1, %bb.h ], [ %spec.select.1, %bb.i ]
  %.sroa.6.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select.2, %bb.c ], [ %spec.select.2, %bb.d ], [ %spec.select.2, %bb.e ], [ %spec.select.2, %bb.f ], [ %spec.select.2, %bb.g ], [ %spec.select.2, %bb.h ], [ %spec.select.2, %bb.i ]
  %.sroa.7.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select.3, %bb.d ], [ %spec.select.3, %bb.e ], [ %spec.select.3, %bb.f ], [ %spec.select.3, %bb.g ], [ %spec.select.3, %bb.h ], [ %spec.select.3, %bb.i ]
  %.sroa.8.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select.4, %bb.e ], [ %spec.select.4, %bb.f ], [ %spec.select.4, %bb.g ], [ %spec.select.4, %bb.h ], [ %spec.select.4, %bb.i ]
  %.sroa.9.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %spec.select.5, %bb.f ], [ %spec.select.5, %bb.g ], [ %spec.select.5, %bb.h ], [ %spec.select.5, %bb.i ]
  %.sroa.10.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %spec.select.6, %bb.g ], [ %spec.select.6, %bb.h ], [ %spec.select.6, %bb.i ]
  %.sroa.11.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select.7, %bb.h ], [ %spec.select.7, %bb.i ]
  %.sroa.12.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %spec.select.8, %bb.i ]
  %.sroa.13.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %spec.select22, %bb.i ]
  %.lcssa = phi i8 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ %spec.select23, %bb.i ]
  store i8 %spec.select, ptr %i.a, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %.lcssa, ptr %i.ak, align 1
  %i.al = call { ptr, i64 } @_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1285bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(11) %i.a) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 1      ; 4 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %i.am), !noalias !609
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !610, !noalias !609, !noundef !5 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = extractvalue { ptr, i64 } %i.al, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !610, !noalias !609, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.aq, i64 range(i64 0, -9223372036854775808) %i.am, i1 false)
  %.pre.i.i = load i64, ptr %i.an, align 8, !alias.scope !610, !noalias !609
  br label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.j, %bb.k
  %i.au = phi i64 [ %.pre.i.i, %bb.k ], [ %i.ao, %bb.j ]
  %i.av = add i64 %i.au, %i.am
  store i64 %i.av, ptr %i.an, align 8, !alias.scope !610, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  switch i8 %3, label %bb.b [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.insert.ext31 = zext i8 %3 to i64
  %.sroa.4.0.insert.shift32 = shl nuw nsw i64 %.sroa.4.0.insert.ext31, 8
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift32, 4
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.not42 = icmp ult i64 %2, 256
  br i1 %.not42, label %bb.j, label %bb.m

bb.d:                                             ; preds = %bb.a
  %.not41 = icmp ult i64 %2, 65536
  br i1 %.not41, label %bb.n, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %2, 16777215
  br i1 %i.j, label %bb.m, label %bb.q

bb.f:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, 4294967296
  br i1 %.not, label %bb.v, label %bb.m

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !625
  store i64 0, ptr %i.h, align 8, !noalias !625
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i8, ptr %i.k, align 8, !range !8, !alias.scope !625, !noundef !5
  %i.l = trunc nuw i8 %.val.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !626
  %i.m = tail call i64 @llvm.bswap.i64(i64 %2)
  %storemerge.i.i = select i1 %i.l, i64 %i.m, i64 %2
  store i64 %storemerge.i.i, ptr %i.g, align 8, !noalias !626
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.h, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !626
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.n, align 8, !alias.scope !625 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.o, align 8, !alias.scope !625, !noundef !5 ; 3 uses
  %i.p = icmp sgt i64 %.val3.i, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp ugt i64 %1, %.val3.i
  br i1 %i.q, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = sub nuw nsw i64 %.val3.i, %1
  %i.s = icmp samesign ult i64 %i.r, 8
  br i1 %i.s, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.t, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !625
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i = phi i64 [ 255, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !625
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.u = trunc nuw i64 %2 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val48 = load ptr, ptr %i.v, align 8           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val49 = load i64, ptr %i.w, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.u, ptr %i.f, align 1
  %i.x = icmp sgt i64 %.val49, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp ugt i64 %1, %.val49
  br i1 %i.y, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %.val49, %1
  br i1 %i.z, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val48, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i.i50 = phi i64 [ 255, %bb.l ], [ 0, %bb.j ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit, %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.030.0.insert.insert, %bb.b ], [ %.sroa.0.0.i.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit ], [ %.sroa.0.0.i.i50, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.c ], [ %.sroa.0.0.i.i55, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.d ], [ %.sroa.0.1, %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.e ], [ %.sroa.0.0.i.i62, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.f ]
  ret i64 %.sroa.0.0

bb.n:                                             ; preds = %bb.d
  %i.ab = trunc nuw i64 %2 to i16                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !627
  store i16 0, ptr %i.e, align 2, !noalias !627
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i51 = load i8, ptr %i.ac, align 8, !range !8, !alias.scope !627, !noundef !5
  %i.ad = trunc nuw i8 %.val.i51 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !628
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ab)
  %storemerge.i.i52 = select i1 %i.ad, i16 %i.ae, i16 %i.ab
  store i16 %storemerge.i.i52, ptr %i.d, align 2, !noalias !628
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.e, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !628
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i53 = load ptr, ptr %i.af, align 8, !alias.scope !627 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i54 = load i64, ptr %i.ag, align 8, !alias.scope !627, !noundef !5 ; 3 uses
  %i.ah = icmp sgt i64 %.val3.i54, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ugt i64 %1, %.val3.i54
  br i1 %i.ai, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = sub nuw nsw i64 %.val3.i54, %1
  %i.ak = icmp samesign ult i64 %i.aj, 2
  br i1 %i.ak, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i53) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i53, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.al, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !627
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i.i55 = phi i64 [ 255, %bb.p ], [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !627
  br label %bb.m

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 0, ptr %i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val43 = load i8, ptr %i.am, align 8, !range !8, !noundef !5
  %i.an = trunc nuw i8 %.val43 to i1              ; 2 uses
  %i.ao = trunc nuw nsw i64 %2 to i32             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !629
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %storemerge.i = select i1 %i.an, i32 %i.ap, i32 %i.ao
  store i32 %storemerge.i, ptr %i.c, align 4, !noalias !629
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.i, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !629
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val45 = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.ar = icmp sgt i64 %.val45, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ugt i64 %1, %.val45                ; 2 uses
  br i1 %i.an, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.as, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = sub nuw nsw i64 %.val45, %1
  %i.au = icmp samesign ult i64 %i.at, 3
  br i1 %i.au, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split

bb.t:                                             ; preds = %bb.q
  br i1 %i.as, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aw = sub nuw nsw i64 %.val45, %1
  %i.ax = icmp samesign ult i64 %i.aw, 3
  br i1 %i.ax, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split: ; preds = %bb.u, %bb.s
  %.sink72 = phi ptr [ %i.i, %bb.s ], [ %i.av, %bb.u ]
  %.val44.sink73.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val44.sink73 = load ptr, ptr %.val44.sink73.in, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %.val44.sink73, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.ay, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink72, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit: ; preds = %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.0.1 = phi i64 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.r ], [ 1, %bb.u ], [ 255, %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.m

bb.v:                                             ; preds = %bb.f
  %i.az = trunc nuw i64 %2 to i32                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !630
  store i32 0, ptr %i.b, align 4, !noalias !630
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i58 = load i8, ptr %i.ba, align 8, !range !8, !alias.scope !630, !noundef !5
  %i.bb = trunc nuw i8 %.val.i58 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %storemerge.i.i59 = select i1 %i.bb, i32 %i.bc, i32 %i.az
  store i32 %storemerge.i.i59, ptr %i.a, align 4, !noalias !631
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i60 = load ptr, ptr %i.bd, align 8, !alias.scope !630 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i61 = load i64, ptr %i.be, align 8, !alias.scope !630, !noundef !5 ; 3 uses
  %i.bf = icmp sgt i64 %.val3.i61, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ugt i64 %1, %.val3.i61
  br i1 %i.bg, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = sub nuw nsw i64 %.val3.i61, %1
  %i.bi = icmp samesign ult i64 %i.bh, 4
  br i1 %i.bi, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i60) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i60, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.bj, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !630
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i.i62 = phi i64 [ 255, %bb.x ], [ 0, %bb.v ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !630
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer15write_offset_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef range(i8 0, 25) %3, i8 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %4)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer20write_initial_lengthCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i8 noundef range(i8 4, 9) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = icmp eq i8 %2, 8
  br i1 %i.c, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.c
  %.val = phi i64 [ %.val.pre, %._crit_edge ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = icmp sgt i64 %.val, -1
  call void @llvm.assume(i1 %i.d)
  %i.e = call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i8 noundef %2) ; 2 uses
  %i.f = and i64 %i.e, 255
  %.not = icmp eq i64 %i.f, 255
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !641
  store i32 0, ptr %i.b, align 4, !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !642
  store i32 -1, ptr %i.a, align 4, !noalias !642
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !642
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 4), !noalias !643
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !644, !noalias !643, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.b, align 4, !noalias !641
  store i32 %i.m, ptr %i.l, align 1
  %.pre.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !644, !noalias !643
  %i.n = add i64 %.pre.i.i.i, 4                   ; 2 uses
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !644, !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !641
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.e, ptr %i.o, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val, ptr %i.p, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 65288) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef range(i8 4, 9) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1), !noalias !650
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !651, !noalias !650, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !651, !noalias !650, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 %1, ptr %i.f, align 1
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !651, !noalias !650
  %i.g = add i64 %.pre.i.i, 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !651, !noalias !650
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer9write_u16Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !659
  %i.e = tail call i16 @llvm.bswap.i16(i16 %1)
  %storemerge.i = select i1 %i.d, i16 %i.e, i16 %1
  store i16 %storemerge.i, ptr %i.a, align 2, !noalias !659
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 2), !noalias !660
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !661, !noalias !660, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !661, !noalias !660, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = load i16, ptr %i.b, align 2
  store i16 %i.l, ptr %i.k, align 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !661, !noalias !660
  %i.m = add i64 %.pre.i.i, 2
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !661, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer9write_u32Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !669
  %i.e = tail call i32 @llvm.bswap.i32(i32 %1)
  %storemerge.i = select i1 %i.d, i32 %i.e, i32 %1
  store i32 %storemerge.i, ptr %i.a, align 4, !noalias !669
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !669
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4), !noalias !670
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !671, !noalias !670, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !671, !noalias !670, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = load i32, ptr %i.b, align 4
  store i32 %i.l, ptr %i.k, align 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !671, !noalias !670
  %i.m = add i64 %.pre.i.i, 4
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !671, !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer9write_u64Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !679
  %i.e = tail call i64 @llvm.bswap.i64(i64 %1)
  %storemerge.i = select i1 %i.d, i64 %i.e, i64 %1
  store i64 %storemerge.i, ptr %i.a, align 8, !noalias !679
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !679
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 8), !noalias !680
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !681, !noalias !680, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !681, !noalias !680, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = load i64, ptr %i.b, align 8
  store i64 %i.l, ptr %i.k, align 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !681, !noalias !680
  %i.m = add i64 %.pre.i.i, 8
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !681, !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 255
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RINvMNtNtCsi68uqYEhoRA_5gimli5write4unitNtB3_9UnitTable5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(424), ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB3_11LineProgram5writeINtNtB5_10endian_vec9EndianVecNtNtB7_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280), ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable5writeINtNtB8_10endian_vec9EndianVecNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable5writeINtNtB8_10endian_vec9EndianVecNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_14RawLocListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7addressCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_14RawRngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEE11get_addressCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i8 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBU_5write4unit6UnitIdNtB1H_11UnitEntryIdEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0ECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write3loc8LocationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write5range5RangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common16RangeListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common19LocationListsOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write3loc8LocationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write5range5RangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsi68uqYEhoRA_5gimli5write2opNtB2_10Expression4size(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

end_hunk_2
