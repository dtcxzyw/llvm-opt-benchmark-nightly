Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.09?download=true
inline.NumInlined: 1503
inline.NumDeleted: 537
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations15shard_set_unionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_ECsQbU2fm3lSD_3xet:bb.a
bb.az:                                            ; preds = %.lr.ph512.i
  %i.hk = load i64, ptr %i.ap, align 8, !range !19, !noalias !4594, !noundef !5
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = load ptr, ptr %i.dj, align 8, !noalias !4594 ; 2 uses
  br i1 %i.hl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4594
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.496.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4442.0..sroa_idx.i, i64 40, i1 false), !noalias !4594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4594
  store ptr %i.hm, ptr %i.aq, align 8, !noalias !4594
  %i.hn = invoke { i64, ptr } @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bc unwind label %.loopexit237.i, !noalias !4592 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ho = extractvalue { i64, ptr } %i.hn, 0
  %i.hp = trunc nuw i64 %i.ho to i1
  br i1 %i.hp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hq = extractvalue { i64, ptr } %i.hn, 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4594
  %exitcond718.not.i = icmp eq i32 %i.fw, %i.fc
  br i1 %exitcond718.not.i, label %._crit_edge513.i, label %.lr.ph512.i

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %.sink = phi ptr [ %i.hq, %bb.bd ], [ %i.hm, %bb.ba ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hr, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.4447.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4594
  br label %bb.dt

bb.bg:                                            ; preds = %bb.ak
  %i.hs = load i64, ptr %i.ar, align 8, !range !19, !noalias !4594, !noundef !5
  %i.ht = trunc nuw i64 %i.hs to i1
  %i.hu = load ptr, ptr %i.di, align 8, !noalias !4594 ; 2 uses
  br i1 %i.ht, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4594
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.282.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.4432.0..sroa_idx.i, i64 28, i1 false), !noalias !4594
  %.sroa.5433.0.copyload.i = load i32, ptr %.sroa.5433.0..sroa_idx.i, align 4, !noalias !4594 ; 2 uses
  %.sroa.6434.0.copyload.i = load i64, ptr %.sroa.6434.0..sroa_idx.i, align 8, !noalias !4594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4594
  store ptr %i.hu, ptr %i.as, align 8, !noalias !4594
  store i32 %.sroa.5433.0.copyload.i, ptr %.sroa.383.0..sroa_idx.i, align 4, !noalias !4594
  store i64 %.sroa.6434.0.copyload.i, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !4594
  %i.hv = zext i32 %.sroa.5433.0.copyload.i to i64
  %i.hw = add i64 %i.fm, %i.hv                    ; 4 uses
  store i64 %i.hw, ptr %i.bl, align 8, !noalias !4594
  %i.hx = invoke { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bj unwind label %.loopexit.split-lp238.loopexit.i, !noalias !4592 ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hy = extractvalue { i64, ptr } %i.hx, 0
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ia = extractvalue { i64, ptr } %i.hx, 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4594
  %exitcond717.not.i = icmp eq i32 %i.fn, %i.fc
  br i1 %exitcond717.not.i, label %._crit_edge510.i, label %bb.ak

bb.bm:                                            ; preds = %bb.bk, %bb.bh
  %.sink770 = phi ptr [ %i.ia, %bb.bk ], [ %i.hu, %bb.bh ]
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ib, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink770, ptr %.sroa.4439.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4594
  br label %bb.dt

bb.bn:                                            ; preds = %bb.aa
  %i.ic = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %i.ei ; 9 uses
  %i.id = load i64, ptr %i.ic, align 8, !range !19, !noalias !4594, !noundef !5
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.bo, label %.invoke.i, !prof !4

bb.bo:                                            ; preds = %bb.bn
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ei
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !4592, !noalias !4620, !nonnull !5, !align !31, !noundef !5 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ij = load i32, ptr %i.ii, align 8, !noalias !4594, !noundef !5 ; 2 uses
  %i.ik = lshr i32 %i.ij, 30
  %.lobit230.i = and i32 %i.ik, 1                 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.im = load i32, ptr %i.il, align 4, !noalias !4594, !noundef !5 ; 2 uses
  %i.in = shl i32 %i.im, 1
  %i.io = or disjoint i32 %i.in, %.lobit230.i
  %i.ip = add i32 %.lobit230.i, %i.im
  %.not652960.i = icmp slt i32 %i.ij, 0
  %.sroa.0131.0.i = select i1 %.not652960.i, i32 %i.io, i32 %i.ip
  %i.iq = zext i32 %.sroa.0131.0.i to i64
  %i.ir = mul nuw nsw i64 %i.iq, 48
  %i.is = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ih, i64 noundef 2, i64 noundef %i.ir)
          to label %bb.bp unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.it = extractvalue { i64, ptr } %i.is, 0
  %i.iu = trunc nuw i64 %i.it to i1
  br i1 %i.iu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iv = extractvalue { i64, ptr } %i.is, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.iw, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.iv, ptr %.sroa.4465.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dt

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4628
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ih)
          to label %.noexc40 unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc40:                                         ; preds = %bb.br
  %i.ix = load i64, ptr %i.b, align 8, !range !19, !noalias !4628, !noundef !5
  %i.iy = trunc nuw i64 %i.ix to i1
  %i.iz = load ptr, ptr %i.dn, align 8, !noalias !4628 ; 3 uses
  br i1 %i.iy, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.noexc40
  %.sroa.420.0.copyload.i25 = load i64, ptr %.sroa.420.0..sroa_idx.i24, align 8, !noalias !4628 ; 2 uses
  %.sroa.521.0.copyload.i27 = load i64, ptr %.sroa.521.0..sroa_idx.i26, align 8, !noalias !4628 ; 2 uses
  %i.ja = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i28, align 8, !noalias !4628
  %.sroa.622.0.copyload.i29 = load i64, ptr %.sroa.622.0..sroa_idx.i28, align 8, !noalias !4628
  %.sroa.7.i22.sroa.4.0.copyload = load i64, ptr %.sroa.7.i22.sroa.4.0..sroa.723.0..sroa_idx.i30.sroa_idx, align 8, !noalias !4628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4628
  %i.jb = icmp eq ptr %i.iz, inttoptr (i64 -1 to ptr)
  %i.jc = icmp eq i64 %.sroa.420.0.copyload.i25, -1
  %or.cond.i31 = select i1 %i.jb, i1 %i.jc, i1 false
  %i.jd = icmp eq i64 %.sroa.521.0.copyload.i27, -1
  %or.cond5.i32 = select i1 %or.cond.i31, i1 %i.jd, i1 false
  %i.je = icmp eq i64 %.sroa.622.0.copyload.i29, -1
  %or.cond8.i33 = select i1 %or.cond5.i32, i1 %i.je, i1 false
  br i1 %or.cond8.i33, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jf = ptrtoint ptr %i.iz to i64
  br label %bb.bv

bb.bu:                                            ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4628
  %i.jg = ptrtoint ptr %i.iz to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jh, align 8, !noalias !4601
  %.sroa.6134.i.sroa.7.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.jg, ptr %.sroa.6134.i.sroa.7.0..sroa_idx101, align 8, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dt

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.1699.0.ph = phi i64 [ undef, %bb.bs ], [ %.sroa.7.i22.sroa.4.0.copyload, %bb.bt ]
  %.sroa.1390.0.ph = phi i64 [ undef, %bb.bs ], [ %.sroa.521.0.copyload.i27, %bb.bt ]
  %.sroa.1187.0.ph = phi i64 [ undef, %bb.bs ], [ %.sroa.420.0.copyload.i25, %bb.bt ]
  %.sroa.785.0.ph = phi i64 [ undef, %bb.bs ], [ %i.jf, %bb.bt ]
  %.sroa.084.0.ph = phi i64 [ 0, %bb.bs ], [ 1, %bb.bt ]
  %i.ji = phi <2 x i64> [ undef, %bb.bs ], [ %i.ja, %bb.bt ]
  store i64 %.sroa.785.0.ph, ptr %i.if, align 8, !noalias !4594
  %.sroa.6134.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %.sroa.1187.0.ph, ptr %.sroa.6134.i.sroa.7.0..sroa_idx, align 8, !noalias !4594
  %.sroa.6134.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i64 %.sroa.1390.0.ph, ptr %.sroa.6134.i.sroa.9.0..sroa_idx, align 8, !noalias !4594
  %.sroa.6134.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  store <2 x i64> %i.ji, ptr %.sroa.6134.i.sroa.11.0..sroa_idx, align 8, !noalias !4594
  store i64 %.sroa.084.0.ph, ptr %i.ic, align 8, !noalias !4594
  %.sroa.3141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  store i64 %.sroa.1699.0.ph, ptr %.sroa.3141.0..sroa_idx.i, align 8, !noalias !4594
  br label %bb.ad

bb.bw:                                            ; preds = %bb.ae
  %i.jj = load i64, ptr %i.da, align 8, !range !19, !noalias !4594, !noundef !5
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.bx, label %.invoke.i, !prof !4

bb.bx:                                            ; preds = %bb.bw
  %i.jl = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594, !noundef !5 ; 3 uses
  %.not644.i = icmp slt i32 %i.jl, 0              ; 5 uses
  %i.jm = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594 ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 0
  %.sroa.0151.0.i = select i1 %.not644.i, i1 true, i1 %i.jn ; 2 uses
  %i.jo = and i32 %i.jl, 1073741824               ; 2 uses
  %.not645.i = icmp ne i32 %i.jo, 0               ; 3 uses
  %i.jp = and i32 %i.jm, 1073741824
  %i.jq = icmp ne i32 %i.jp, 0
  %.sroa.0153.0.i = select i1 %.not645.i, i1 true, i1 %i.jq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4594
  %.sroa.0155.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4594 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3157.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !4594
  %i.jr = load i32, ptr %i.db, align 4, !noalias !4594, !noundef !5 ; 4 uses
  store i64 %.sroa.0155.0.copyload.i, ptr %i.i, align 8, !noalias !4594
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader3newmECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.i, i32 noundef %i.jr, i1 noundef zeroext %.sroa.0151.0.i, i1 noundef zeroext %.sroa.0153.0.i)
          to label %bb.by unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4594
  %i.js = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bz unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.jt = extractvalue { i64, ptr } %i.js, 0
  %i.ju = extractvalue { i64, ptr } %i.js, 1      ; 2 uses
  %i.jv = trunc nuw i64 %i.jt to i1
  br i1 %i.jv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jw, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ju, ptr %.sroa.4471.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dg

bb.cb:                                            ; preds = %bb.bz
  %i.jx = ptrtoint ptr %i.ju to i64
  %.not545.i = icmp eq i32 %i.jr, 0
  br i1 %.not545.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.dr, %bb.cb
  %i.jy = phi i64 [ %i.ef, %bb.cb ], [ %i.nv, %bb.dr ]
  %i.jz = zext i32 %i.jr to i64
  %i.ka = mul nuw nsw i64 %i.jz, 48
  %i.kb = add i64 %i.ka, %.sroa.0.1515.i
  %i.kc = add i64 %i.kb, %i.jx                    ; 3 uses
  %i.kd = load i32, ptr %i.dd, align 4, !noalias !4594, !noundef !5
  %i.ke = zext i32 %i.kd to i64
  %i.kf = mul nuw nsw i64 %i.ke, 48
  %i.kg = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 2, i64 noundef %i.kf)
          to label %bb.cc unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592 ; 2 uses

.lr.ph.i:                                         ; preds = %bb.cb, %bb.dr
  %i.kh = phi i64 [ %i.nv, %bb.dr ], [ %i.ef, %bb.cb ]
  %.sroa.0608.0501.i = phi i32 [ %i.ki, %bb.dr ], [ 0, %bb.cb ]
  %i.ki = add nuw i32 %.sroa.0608.0501.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4594
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dm unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592

bb.cc:                                            ; preds = %._crit_edge.i
  %i.kj = extractvalue { i64, ptr } %i.kg, 0
  %i.kk = trunc nuw i64 %i.kj to i1
  br i1 %i.kk, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kl = extractvalue { i64, ptr } %i.kg, 1
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.km, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kl, ptr %.sroa.4484.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dg

bb.ce:                                            ; preds = %bb.cc
  br i1 %.sroa.0151.0.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %._crit_edge506.i, %bb.ce
  %.sroa.0.5.i = phi i64 [ %i.kc, %bb.ce ], [ %.sroa.0.6.lcssa.i, %._crit_edge506.i ], [ %.sroa.0.6.lcssa.i, %bb.cj ] ; 2 uses
  br i1 %.sroa.0153.0.i, label %bb.cn, label %bb.cl

bb.cg:                                            ; preds = %bb.ce
  %.lobit.i = lshr i32 %i.jl, 31
  %.658.i = zext nneg i32 %.lobit.i to i64
  %.sroa.gep11.sroa.gep.val.i = load i32, ptr %i.db, align 4, !noalias !4594
  %.sroa.gep.sroa.gep.val.i = load i32, ptr %i.dd, align 4, !noalias !4594
  %i.kn = select i1 %.not644.i, i32 %.sroa.gep11.sroa.gep.val.i, i32 %.sroa.gep.sroa.gep.val.i ; 2 uses
  %.not546.i = icmp eq i32 %i.kn, 0
  br i1 %.not546.i, label %._crit_edge506.i, label %.lr.ph505.i

.lr.ph505.i:                                      ; preds = %bb.cg
  %i.ko = select i1 %.not644.i, ptr %2, ptr %4
  br label %bb.ch

._crit_edge506.i:                                 ; preds = %bb.dl, %bb.cg
  %.sroa.0.6.lcssa.i = phi i64 [ %i.kc, %bb.cg ], [ %i.np, %bb.dl ] ; 2 uses
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val.i = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val.i = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  %i.kp = select i1 %.not644.i, i32 %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val.i, i32 %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val.i
  %.not647.i = icmp sgt i32 %i.kp, -1
  br i1 %.not647.i, label %bb.cf, label %bb.ci

bb.ch:                                            ; preds = %bb.dl, %.lr.ph505.i
  %.sroa.0.6503.i = phi i64 [ %i.kc, %.lr.ph505.i ], [ %i.np, %bb.dl ]
  %.sroa.0619.0502.i = phi i32 [ 0, %.lr.ph505.i ], [ %i.kq, %bb.dl ]
  %i.kq = add nuw i32 %.sroa.0619.0502.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4594
  invoke void @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ko)
          to label %bb.dh unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.i, !noalias !4592

bb.ci:                                            ; preds = %._crit_edge506.i
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.658.i
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !4592, !noalias !4620, !nonnull !5, !align !31, !noundef !5
  %.sroa.gep.sroa.gep.val224.i = load i32, ptr %i.dd, align 4, !noalias !4594
  %.sroa.gep11.sroa.gep.val225.i = load i32, ptr %i.db, align 4, !noalias !4594
  %i.kt = select i1 %.not644.i, i32 %.sroa.gep.sroa.gep.val224.i, i32 %.sroa.gep11.sroa.gep.val225.i
  %i.ku = zext i32 %i.kt to i64
  %i.kv = mul nuw nsw i64 %i.ku, 48
  %i.kw = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ks, i64 noundef 2, i64 noundef %i.kv)
          to label %bb.cj unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.kx = extractvalue { i64, ptr } %i.kw, 0
  %i.ky = trunc nuw i64 %i.kx to i1
  br i1 %i.ky, label %bb.ck, label %bb.cf

bb.ck:                                            ; preds = %bb.cj
  %i.kz = extractvalue { i64, ptr } %i.kw, 1
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.la, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kz, ptr %.sroa.4495.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dg

bb.cl:                                            ; preds = %bb.ct, %bb.cf
  %.sroa.0.7.i = phi i64 [ %i.ln, %bb.ct ], [ %.sroa.0.5.i, %bb.cf ]
  %i.lb = load i64, ptr %i.cd, align 8, !alias.scope !4632, !noalias !4594, !noundef !5 ; 3 uses
  %i.lc = load i64, ptr %i.aw, align 8, !range !33, !alias.scope !4632, !noalias !4594, !noundef !5
  %i.ld = icmp eq i64 %i.lb, %i.lc
  br i1 %i.ld, label %bb.cm, label %bb.cx

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTymEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw) #20
          to label %bb.cx unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592

bb.cn:                                            ; preds = %bb.cf
  %.lobit226.i = lshr exact i32 %i.jo, 30
  %.662.i = zext nneg i32 %.lobit226.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4594
  %i.le = select i1 %.not645.i, ptr %2, ptr %4
  invoke void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_15FileMetadataExt11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.le)
          to label %bb.co unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592

bb.co:                                            ; preds = %bb.cn
  %i.lf = load i64, ptr %i.ag, align 8, !range !19, !noalias !4594, !noundef !5
  %i.lg = trunc nuw i64 %i.lf to i1
  %i.lh = load ptr, ptr %i.df, align 8, !noalias !4594 ; 2 uses
  br i1 %i.lg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4594
  br label %.loopexit782

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4205.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4498.0..sroa_idx.i, i64 40, i1 false), !noalias !4594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4594
  store ptr %i.lh, ptr %i.ah, align 8, !noalias !4594
  %i.li = invoke { i64, ptr } @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_15FileMetadataExt9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cr unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592 ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.lj = extractvalue { i64, ptr } %i.li, 0
  %i.lk = extractvalue { i64, ptr } %i.li, 1      ; 2 uses
  %i.ll = trunc nuw i64 %i.lj to i1
  br i1 %i.ll, label %.loopexit782, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = add i64 %.sroa.0.5.i, %i.lm
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val227.i = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val228.i = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  %i.lo = select i1 %.not645.i, i32 %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val227.i, i32 %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val228.i
  %i.lp = and i32 %i.lo, 1073741824
  %.not648.i = icmp eq i32 %i.lp, 0
  br i1 %.not648.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4594
  br label %bb.cl

bb.cu:                                            ; preds = %bb.cs
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.662.i
  %i.lr = load ptr, ptr %i.lq, align 8, !alias.scope !4592, !noalias !4620, !nonnull !5, !align !31, !noundef !5
  %i.ls = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lr, i64 noundef 2, i64 noundef 48)
          to label %bb.cv unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4592 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.lt = extractvalue { i64, ptr } %i.ls, 0
  %i.lu = trunc nuw i64 %i.lt to i1
  br i1 %i.lu, label %bb.cw, label %bb.ct

bb.cw:                                            ; preds = %bb.cv
  %i.lv = extractvalue { i64, ptr } %i.ls, 1
  br label %.loopexit782

bb.cx:                                            ; preds = %bb.cm, %bb.cl
  %i.lw = load ptr, ptr %i.cc, align 8, !alias.scope !4632, !noalias !4594, !nonnull !5, !noundef !5
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %i.lb ; 2 uses
  store i64 %.sroa.0155.0.copyload.i, ptr %i.lx, align 8, !noalias !4592
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 %.sroa.038.1514.i, ptr %i.ly, align 8, !noalias !4592
  %i.lz = add i64 %i.lb, 1
  store i64 %i.lz, ptr %i.cd, align 8, !alias.scope !4632, !noalias !4594
  %i.ma = load i32, ptr %i.dg, align 8, !noalias !4594, !noundef !5 ; 2 uses
  %i.mb = lshr i32 %i.ma, 30
  %.lobit229.i = and i32 %i.mb, 1                 ; 2 uses
  %i.mc = load i32, ptr %i.dh, align 4, !noalias !4594, !noundef !5 ; 2 uses
  %i.md = shl i32 %i.mc, 1
  %i.me = or disjoint i32 %i.md, %.lobit229.i
  %i.mf = add i32 %.lobit229.i, %i.mc
  %.not650959.i = icmp slt i32 %i.ma, 0
  %.sroa.0216.0.i = select i1 %.not650959.i, i32 %i.me, i32 %i.mf
  %i.mg = add i32 %.sroa.038.1514.i, 1
  %i.mh = add i32 %i.mg, %.sroa.0216.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4635
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc20 unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc20:                                         ; preds = %bb.cx
  %i.mi = load i64, ptr %i.c, align 8, !range !19, !noalias !4635, !noundef !5
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = load ptr, ptr %i.dl, align 8, !noalias !4635 ; 3 uses
  br i1 %i.mj, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %.noexc20
  %.sroa.420.0.copyload.i5 = load i64, ptr %.sroa.420.0..sroa_idx.i4, align 8, !noalias !4635 ; 2 uses
  %.sroa.521.0.copyload.i7 = load i64, ptr %.sroa.521.0..sroa_idx.i6, align 8, !noalias !4635 ; 2 uses
  %i.ml = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i8, align 8, !noalias !4635
  %.sroa.622.0.copyload.i9 = load i64, ptr %.sroa.622.0..sroa_idx.i8, align 8, !noalias !4635
  %.sroa.7.i2.sroa.4.0.copyload = load i64, ptr %.sroa.7.i2.sroa.4.0..sroa.723.0..sroa_idx.i10.sroa_idx, align 8, !noalias !4635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4635
  %i.mm = icmp eq ptr %i.mk, inttoptr (i64 -1 to ptr)
  %i.mn = icmp eq i64 %.sroa.420.0.copyload.i5, -1
  %or.cond.i11 = select i1 %i.mm, i1 %i.mn, i1 false
  %i.mo = icmp eq i64 %.sroa.521.0.copyload.i7, -1
  %or.cond5.i12 = select i1 %or.cond.i11, i1 %i.mo, i1 false
  %i.mp = icmp eq i64 %.sroa.622.0.copyload.i9, -1
  %or.cond8.i13 = select i1 %or.cond5.i12, i1 %i.mp, i1 false
  br i1 %or.cond8.i13, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mq = ptrtoint ptr %i.mk to i64
  br label %bb.db

bb.da:                                            ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4635
  %i.mr = ptrtoint ptr %i.mk to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ms, align 8, !noalias !4601
  %.sroa.6219.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mr, ptr %.sroa.6219.i.sroa.7.0..sroa_idx, align 8, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dg

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.16124.0.ph = phi i64 [ undef, %bb.cy ], [ %.sroa.7.i2.sroa.4.0.copyload, %bb.cz ]
  %.sroa.13115.0.ph = phi i64 [ undef, %bb.cy ], [ %.sroa.521.0.copyload.i7, %bb.cz ]
  %.sroa.11112.0.ph = phi i64 [ undef, %bb.cy ], [ %.sroa.420.0.copyload.i5, %bb.cz ]
  %.sroa.7110.0.ph = phi i64 [ undef, %bb.cy ], [ %i.mq, %bb.cz ]
  %.sroa.0109.0.ph = phi i64 [ 0, %bb.cy ], [ 1, %bb.cz ]
  %i.mt = phi <2 x i64> [ undef, %bb.cy ], [ %i.ml, %bb.cz ]
  store i64 %.sroa.7110.0.ph, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4594
  store i64 %.sroa.11112.0.ph, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  store i64 %.sroa.13115.0.ph, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  store <2 x i64> %i.mt, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  store i64 %.sroa.0109.0.ph, ptr %i.av, align 8, !noalias !4594
  store i64 %.sroa.16124.0.ph, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !4594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4639
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc:                                           ; preds = %bb.db
  %i.mu = load i64, ptr %i.d, align 8, !range !19, !noalias !4639, !noundef !5
  %i.mv = trunc nuw i64 %i.mu to i1
  %i.mw = load ptr, ptr %i.dm, align 8, !noalias !4639 ; 3 uses
  br i1 %i.mv, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %.noexc
  %.sroa.420.0.copyload.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !4639 ; 2 uses
  %.sroa.521.0.copyload.i = load i64, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !4639 ; 2 uses
  %i.mx = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !4639
  %.sroa.622.0.copyload.i = load i64, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !4639
  %.sroa.7.i.sroa.4.0.copyload = load i64, ptr %.sroa.7.i.sroa.4.0..sroa.723.0..sroa_idx.i.sroa_idx, align 8, !noalias !4639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4639
  %i.my = icmp eq ptr %i.mw, inttoptr (i64 -1 to ptr)
  %i.mz = icmp eq i64 %.sroa.420.0.copyload.i, -1
  %or.cond.i = select i1 %i.my, i1 %i.mz, i1 false
  %i.na = icmp eq i64 %.sroa.521.0.copyload.i, -1
  %or.cond5.i = select i1 %or.cond.i, i1 %i.na, i1 false
  %i.nb = icmp eq i64 %.sroa.622.0.copyload.i, -1
  %or.cond8.i = select i1 %or.cond5.i, i1 %i.nb, i1 false
  br i1 %or.cond8.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nc = ptrtoint ptr %i.mw to i64
  br label %bb.df

bb.de:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4639
  %i.nd = ptrtoint ptr %i.mw to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ne, align 8, !noalias !4601
  %.sroa.6229.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nd, ptr %.sroa.6229.i.sroa.7.0..sroa_idx, align 8, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.16145.0.ph = phi i64 [ undef, %bb.dc ], [ %.sroa.7.i.sroa.4.0.copyload, %bb.dd ]
  %.sroa.13136.0.ph = phi i64 [ undef, %bb.dc ], [ %.sroa.521.0.copyload.i, %bb.dd ]
  %.sroa.11133.0.ph = phi i64 [ undef, %bb.dc ], [ %.sroa.420.0.copyload.i, %bb.dd ]
  %.sroa.7131.0.ph = phi i64 [ undef, %bb.dc ], [ %i.nc, %bb.dd ]
  %.sroa.0130.0.ph = phi i64 [ 0, %bb.dc ], [ 1, %bb.dd ]
  %i.nf = phi <2 x i64> [ undef, %bb.dc ], [ %i.mx, %bb.dd ]
  store i64 %.sroa.7131.0.ph, ptr %.sroa.258.0..sroa_idx.i, align 8, !noalias !4594
  store i64 %.sroa.11133.0.ph, ptr %.sroa.258.sroa.2.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  store i64 %.sroa.13136.0.ph, ptr %.sroa.258.sroa.3.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  store <2 x i64> %i.nf, ptr %.sroa.258.sroa.4.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4594
  store i64 %.sroa.0130.0.ph, ptr %i.da, align 8, !noalias !4594
  store i64 %.sroa.16145.0.ph, ptr %.sroa.359.0..sroa_idx.i, align 8, !noalias !4594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4594
  br label %bb.ad

bb.dg:                                            ; preds = %bb.ds, %.loopexit780, %.loopexit782, %bb.de, %bb.da, %bb.ck, %bb.cd, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4594
  br label %bb.dt

.loopexit782:                                     ; preds = %bb.cr, %bb.cw, %bb.cp
  %.sink772 = phi ptr [ %i.lv, %bb.cw ], [ %i.lh, %bb.cp ], [ %i.lk, %bb.cr ]
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ng, align 8, !alias.scope !4589, !noalias !4601
  %.sroa.4506.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink772, ptr %.sroa.4506.0..sroa_idx.i, align 8, !alias.scope !4589, !noalias !4601
  store i64 1, ptr %0, align 8, !alias.scope !4589, !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4594
  br label %bb.dg

bb.dh:                                            ; preds = %bb.ch
  %i.nh = load i64, ptr %i.ai, align 8, !range !19, !noalias !4594, !noundef !5
  %i.ni = trunc nuw i64 %i.nh to i1
end_hunk_0
