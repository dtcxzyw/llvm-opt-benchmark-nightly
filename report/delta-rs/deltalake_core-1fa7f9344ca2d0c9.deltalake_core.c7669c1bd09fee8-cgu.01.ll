Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.01?download=true
inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11add_featureNtB7_22AddTableFeatureBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  store i8 1, ptr %i.gv, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.gx = load i8, ptr %i.gw, align 8, !range !31, !noundef !24
  %i.gy = trunc nuw i8 %i.gx to i1
  %.phi.trans.insert420 = getelementptr i8, ptr %1, i64 256
  %.val99.pre = load i64, ptr %.phi.trans.insert420, align 8 ; 5 uses
  br i1 %i.gy, label %.thread387, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gz = icmp ult i64 %.val99.pre, 384307168202282326
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp eq i64 %.val99.pre, 0
  %.phi.trans.insert418 = getelementptr i8, ptr %1, i64 280
  %.val92.pre = load i64, ptr %.phi.trans.insert418, align 8 ; 3 uses
  %i.hb = icmp ult i64 %.val92.pre, 384307168202282326
  call void @llvm.assume(i1 %i.hb)
  br i1 %i.ha, label %bb.cn, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hc = icmp eq i64 %.val92.pre, 0
  br i1 %i.hc, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hd = icmp eq i32 %i.gh, 3
  %i.he = icmp eq i32 %i.gj, 7
  %or.cond = and i1 %i.hd, %i.he
  br i1 %or.cond, label %.thread387, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke fastcc void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @489, i64 noundef 185)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cs

bb.ci:                                            ; preds = %bb.cg
  %.sroa.52.sroa.0.0.copyload = load i64, ptr %i.af, align 8
  %.sroa.52.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.52.sroa.5.0.copyload = load ptr, ptr %.sroa.52.sroa.5.0..sroa_idx, align 8
  %.sroa.52.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.52.sroa.6.0.copyload = load i64, ptr %.sroa.52.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cr

bb.cj:                                            ; preds = %bb.ce
  %i.hg = icmp slt i32 %i.gh, 3
  br i1 %i.hg, label %bb.ck, label %.thread387

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 158)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cs

bb.cm:                                            ; preds = %bb.ck
  %.sroa.55.sroa.0.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.55.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.55.sroa.5.0.copyload = load ptr, ptr %.sroa.55.sroa.5.0..sroa_idx, align 8
  %.sroa.55.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.55.sroa.6.0.copyload = load i64, ptr %.sroa.55.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cd
  %i.hi = icmp ne i64 %.val92.pre, 0
  %i.hj = icmp slt i32 %i.gj, 7
  %or.cond417 = and i1 %i.hj, %i.hi
  br i1 %or.cond417, label %bb.co, label %.thread387

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @491, i64 noundef 158)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.sroa.58.sroa.0.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.58.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.58.sroa.5.0.copyload = load ptr, ptr %.sroa.58.sroa.5.0..sroa_idx, align 8
  %.sroa.58.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.58.sroa.6.0.copyload = load i64, ptr %.sroa.58.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %bb.cq, %bb.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit198
  %.sroa.29.sroa.0.2 = phi i64 [ %.sroa.29.sroa.0.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit198 ], [ undef, %bb.cq ], [ undef, %bb.cm ], [ undef, %bb.ci ]
  %.sroa.28.2 = phi i64 [ %.sroa.28.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit198 ], [ %.sroa.58.sroa.6.0.copyload, %bb.cq ], [ %.sroa.55.sroa.6.0.copyload, %bb.cm ], [ %.sroa.52.sroa.6.0.copyload, %bb.ci ]
  %.sroa.27.2 = phi ptr [ %.sroa.27.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit198 ], [ %.sroa.58.sroa.5.0.copyload, %bb.cq ], [ %.sroa.55.sroa.5.0.copyload, %bb.cm ], [ %.sroa.52.sroa.5.0.copyload, %bb.ci ]
  %.sroa.19.2 = phi i64 [ %.sroa.19.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit198 ], [ %.sroa.58.sroa.0.0.copyload, %bb.cq ], [ %.sroa.55.sroa.0.0.copyload, %bb.cm ], [ %.sroa.52.sroa.0.0.copyload, %bb.ci ]
  %.sroa.11314.2 = phi i64 [ %.sroa.11314.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit198 ], [ -9223372036854775722, %bb.cq ], [ -9223372036854775722, %bb.cm ], [ -9223372036854775722, %bb.ci ]
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 345 ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !range !31, !noundef !24
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.hb, label %bb.gx

bb.cs:                                            ; preds = %bb.ch, %bb.cp, %bb.cl, %bb.ea, %bb.dz, %bb.dy
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %bb.dy ], [ %i.ku, %bb.dz ], [ %i.kv, %bb.ea ], [ %i.hk, %bb.cp ], [ %i.hh, %bb.cl ], [ %i.hf, %bb.ch ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 345
  %i.hp = load i8, ptr %i.ho, align 1, !range !31, !noundef !24
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.hh, label %.body129

.thread387:                                       ; preds = %bb.cc, %bb.cj, %bb.cf, %bb.cn
  %.val99 = phi i64 [ %.val99.pre, %bb.cj ], [ %.val99.pre, %bb.cf ], [ 0, %bb.cn ], [ %.val99.pre, %bb.cc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 0, ptr %i.gv, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i64 56, i1 false)
  %i.hr = getelementptr i8, ptr %1, i64 248
  %.val98 = load ptr, ptr %i.hr, align 8, !nonnull !24, !noundef !24
  invoke void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB4_11ProtocolExt22append_reader_features(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val98, i64 noundef %.val99)
          to label %bb.ct unwind label %bb.ea

bb.ct:                                            ; preds = %.thread387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gf, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 0, ptr %i.gv, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i64 56, i1 false)
  %i.hs = getelementptr i8, ptr %1, i64 272
  %.val96 = load ptr, ptr %i.hs, align 8, !nonnull !24, !noundef !24
  %i.ht = getelementptr i8, ptr %1, i64 280
  %.val97 = load i64, ptr %i.ht, align 8, !noundef !24
  invoke void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB4_11ProtocolExt22append_writer_features(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val96, i64 noundef %.val97)
          to label %bb.cv unwind label %bb.dz

bb.cu:                                            ; preds = %bb.cw, %bb.cv
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 1, ptr %i.gv, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gf, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hv = load ptr, ptr %i.fj, align 8, !nonnull !24, !align !33, !noundef !24 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %.val87 = load ptr, ptr %i.hw, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.hx = getelementptr i8, ptr %i.hv, i64 16
  %.val88 = load i64, ptr %i.hx, align 8, !noundef !24 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26465)
  call void @llvm.experimental.noalias.scope.decl(metadata !26466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26467
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %.val88, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc133 unwind label %bb.cu

.noexc133:                                        ; preds = %bb.cv
  %i.hy = load i64, ptr %i.e, align 8, !range !28, !noalias !26467, !noundef !24
  %i.hz = trunc nuw i64 %i.hy to i1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !range !29, !noalias !26467, !noundef !24 ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hz, label %bb.cw, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !22

bb.cw:                                            ; preds = %.noexc133
  %i.id = load i64, ptr %i.ic, align 8, !noalias !26467
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ib, i64 %i.id) #41
          to label %.noexc134 unwind label %bb.cu

.noexc134:                                        ; preds = %bb.cw
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc133
  %i.ie = load ptr, ptr %i.ic, align 8, !noalias !26467, !nonnull !24, !noundef !24 ; 3 uses
  %i.if = icmp ule i64 %.val88, %i.ib
  call void @llvm.assume(i1 %i.if)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26467
  %i.ig = getelementptr inbounds nuw i8, ptr %.val87, i64 %.val88
  %i.ih = icmp eq i64 %i.ib, 0
  br i1 %i.ih, label %_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeatures6to_vecBD_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ii = add i64 %i.ib, -1
  %i.ij = call i64 @llvm.umin.i64(i64 %.val88, i64 %i.ii)
  %i.ik = add i64 %i.ij, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 33
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.il = and i64 %i.ik, 31                       ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  %i.in = select i1 %i.im, i64 32, i64 %i.il
  %i.io = sub i64 %i.ik, %i.in                    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val87, i64 %index ; 2 uses
  %i.ip = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !26468, !noalias !26469
  %wide.load448 = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !26468, !noalias !26469
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <16 x i8> %wide.load, ptr %i.iq, align 1, !noalias !26467
  store <16 x i8> %wide.load448, ptr %i.ir, align 1, !noalias !26467
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.is = icmp eq i64 %index.next, %i.io
  br i1 %i.is, label %.lr.ph.i.i.preheader451.loopexit, label %vector.body, !llvm.loop !26384

.lr.ph.i.i.preheader451.loopexit:                 ; preds = %vector.body
  %3 = getelementptr i8, ptr %.val87, i64 %i.io
  %4 = sub i64 %i.ib, %i.io
  br label %.lr.ph.i.i.preheader451

.lr.ph.i.i.preheader451:                          ; preds = %.lr.ph.i.i.preheader451.loopexit, %.lr.ph.i.i.preheader
  %.sroa.013.022.i.i.ph = phi ptr [ %.val87, %.lr.ph.i.i.preheader ], [ %3, %.lr.ph.i.i.preheader451.loopexit ]
  %.sroa.7.021.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.io, %.lr.ph.i.i.preheader451.loopexit ]
  %.sroa.10.020.i.i.ph = phi i64 [ %i.ib, %.lr.ph.i.i.preheader ], [ %4, %.lr.ph.i.i.preheader451.loopexit ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader451, %bb.cx
  %.sroa.013.022.i.i = phi ptr [ %i.iw, %bb.cx ], [ %.sroa.013.022.i.i.ph, %.lr.ph.i.i.preheader451 ] ; 3 uses
  %.sroa.7.021.i.i = phi i64 [ %i.iv, %bb.cx ], [ %.sroa.7.021.i.i.ph, %.lr.ph.i.i.preheader451 ] ; 2 uses
  %.sroa.10.020.i.i = phi i64 [ %i.iu, %bb.cx ], [ %.sroa.10.020.i.i.ph, %.lr.ph.i.i.preheader451 ]
  %i.it = icmp eq ptr %.sroa.013.022.i.i, %i.ig
  br i1 %i.it, label %_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeatures6to_vecBD_.exit, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i
  %i.iu = add i64 %.sroa.10.020.i.i, -1           ; 2 uses
  %i.iv = add nuw i64 %.sroa.7.021.i.i, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i, i64 1
  %.val12.i.i = load i8, ptr %.sroa.013.022.i.i, align 1, !range !139, !alias.scope !26468, !noalias !26469, !noundef !24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.7.021.i.i
  store i8 %.val12.i.i, ptr %i.ix, align 1, !noalias !26467
  %i.iy = icmp eq i64 %i.iu, 0
  br i1 %i.iy, label %_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeatures6to_vecBD_.exit, label %.lr.ph.i.i, !llvm.loop !26385

_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeatures6to_vecBD_.exit: ; preds = %bb.cx, %.lr.ph.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 347 ; 2 uses
  store i8 1, ptr %i.iz, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ib, ptr %i.ja, align 8
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ie, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %.val88, ptr %.sroa.6274.0..sroa_idx, align 8
  store i64 8, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.jb = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 272, i64 noundef range(i64 8, 17) 8) #46 ; 4 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.cy, label %bb.da, !prof !37

bb.cy:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeatures6to_vecBD_.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #41
          to label %.noexc135 unwind label %bb.cz

.noexc135:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.da:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeatures6to_vecBD_.exit
  store i8 0, ptr %i.gv, align 1
  %.sroa.5277.0..sroa.0275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5277.0..sroa.0275.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i64 56, i1 false)
  store i64 3, ptr %i.jb, align 8
  store i64 1, ptr %i.x, align 8, !alias.scope !26470, !noalias !26471
  %i.je = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.jb, ptr %i.je, align 8, !alias.scope !26470, !noalias !26471
  %i.jf = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %i.jf, align 8, !alias.scope !26470, !noalias !26471
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 346 ; 2 uses
  store i8 1, ptr %i.jg, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !26472)
  call void @llvm.experimental.noalias.scope.decl(metadata !26473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26474
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jh)
          to label %.noexc136 unwind label %bb.dd

.noexc136:                                        ; preds = %bb.da
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26474
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBN_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ji)
          to label %bb.de unwind label %bb.db, !noalias !26472

bb.db:                                            ; preds = %.noexc136
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.body137 unwind label %bb.dc, !noalias !26472

bb.dc:                                            ; preds = %bb.db
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !26472
  unreachable

bb.dd:                                            ; preds = %bb.da
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.de:                                            ; preds = %.noexc136
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !26473, !noalias !26472, !noundef !24
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.jp = load i8, ptr %i.jo, align 8, !range !31, !alias.scope !26473, !noalias !26472, !noundef !24
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.jr = load i8, ptr %i.jq, align 1, !range !38, !alias.scope !26473, !noalias !26472, !noundef !24
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.js, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !26473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !26473
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %i.jn, ptr %i.jt, align 8, !alias.scope !26472, !noalias !26473
  %i.ju = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i8 %i.jp, ptr %i.ju, align 8, !alias.scope !26472, !noalias !26473
  %i.jv = getelementptr inbounds nuw i8, ptr %i.r, i64 81
  store i8 %i.jr, ptr %i.jv, align 1, !alias.scope !26472, !noalias !26473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26474
  invoke void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilderINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_16CommitPropertiesE4from(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.r)
          to label %bb.dg unwind label %bb.df

.body137:                                         ; preds = %bb.dd, %bb.db, %bb.df
  %.pn34 = phi { ptr, i32 } [ %i.jw, %bb.df ], [ %i.jl, %bb.dd ], [ %i.jj, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dw

bb.df:                                            ; preds = %bb.de
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.jg, align 2
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder12with_actions(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.jz = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(144) %i.t, i64 144, i1 false), !alias.scope !26475, !noalias !26476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ka = getelementptr i8, ptr %1, i64 160
  %.val85 = load ptr, ptr %i.ka, align 8, !noundef !24 ; 3 uses
  %.not.i139 = icmp eq ptr %.val85, null
  br i1 %.not.i139, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kb = getelementptr i8, ptr %1, i64 168
  %.val86 = load ptr, ptr %i.kb, align 8, !nonnull !24, !noundef !24
  %i.kc = atomicrmw add ptr %.val85, i64 1 monotonic, align 8
  %i.kd = icmp slt i64 %i.kc, 0
  br i1 %i.kd, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.trap()
  unreachable

bb.dl:                                            ; preds = %bb.dj, %bb.di
  %.sroa.3.0.i = phi ptr [ undef, %bb.di ], [ %.val86, %bb.dj ]
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder29with_post_commit_hook_handler(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.u, ptr noundef %.val85, ptr %.sroa.3.0.i)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val105 = load ptr, ptr %i.kf, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.kg = getelementptr i8, ptr %1, i64 152
  %.val106 = load ptr, ptr %i.kg, align 8         ; 2 uses
  %i.kh = atomicrmw add ptr %.val105, i64 1 monotonic, align 8
  %i.ki = icmp slt i64 %i.kh, 0
  br i1 %i.ki, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call void @llvm.trap()
  unreachable

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val106) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 0, ptr %i.iz, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.q, ptr noundef nonnull align 8 dereferenceable(408) %i.y, i64 408, i1 false)
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder5build(ptr noalias noundef nonnull sret([584 x i8]) align 8 captures(none) dereferenceable(584) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.v, ptr noundef nonnull %i.ga, ptr nonnull @383, ptr noundef nonnull %.val105, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val106, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.q)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.kj = invoke { ptr, ptr } @_RNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(584) %i.w)
          to label %bb.dt unwind label %bb.ds     ; 2 uses

bb.dr:                                            ; preds = %bb.du, %bb.ds
  %.pn45 = phi { ptr, i32 } [ %i.kk, %bb.ds ], [ %i.ko, %bb.du ]
end_hunk_0
begin_hunk_1_@_RNvXs9P_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33915
  br label %_RNvXs9Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %.noexc4 unwind label %bb.t

.noexc4:                                          ; preds = %bb.p
  store i64 -9223372036854775808, ptr %i.d, align 8
  br label %_RNvXs9Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.u, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.r ], [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.z = load i64, ptr %i.h, align 8, !range !57, !alias.scope !33917, !noundef !24
  %i.aa = icmp eq i64 %i.z, 69
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v, !inline_history !78

bb.r:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenEECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.t:                                             ; preds = %bb.p, %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.t ], [ %.pn.i.i, %bb.k ] ; 2 uses
  %i.ad = load i8, ptr %i.g, align 8, !range !79, !alias.scope !33918, !noundef !24
  %i.ae = icmp eq i8 %i.ad, 103
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.u:                                             ; preds = %.body
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v

_RNvXs9Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc4, %_RNvXsa9_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.h, i64 328, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ah, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %bb.u, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs9Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [200 x i8], align 8               ; 6 uses
  %i.e = load i64, ptr %1, align 8, !range !29, !noundef !24
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33922
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB5_13AttachedTokenNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.f) #44, !noalias !33923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33922
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1)
          to label %bb.e unwind label %bb.d, !noalias !33923

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.g, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #42
          to label %bb.h unwind label %bb.g, !noalias !33923

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33922
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke fastcc void @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB5_13AttachedTokenNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h)
          to label %_RNvXsa9_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.f, !noalias !33923

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #42
          to label %bb.c unwind label %bb.g, !noalias !33923

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !33923
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn.i

_RNvXsa9_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !33924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !33924
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !33924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXsa9_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB5_8SaveModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33936)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33937
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33937
  %i.g = load i64, ptr %i.a, align 8, !range !28, !noalias !33937, !noundef !24
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !29, !noalias !33937, !noundef !24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !33937
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #41, !noalias !33937
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !33937, !nonnull !24, !noundef !24 ; 14 uses
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33937
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.thread, label %iter.check

_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.thread: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 %i.j, ptr %i.d, align 8, !alias.scope !33936, !noalias !33938
  %.sroa.5.0..sroa_idx6.i17 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx6.i17, align 8, !alias.scope !33936, !noalias !33938
  %.sroa.7.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i18, align 8, !alias.scope !33936, !noalias !33938
  br label %bb.j

iter.check:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !33939
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %2, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !33940, !noalias !33941 ; 2 uses
  %wide.load20 = load <16 x i8>, ptr %i.p, align 1, !alias.scope !33940, !noalias !33941 ; 2 uses
  %i.q = add <16 x i8> %wide.load, splat (i8 -65)
  %i.r = add <16 x i8> %wide.load20, splat (i8 -65)
  %i.s = icmp ult <16 x i8> %i.q, splat (i8 26)
  %i.t = icmp ult <16 x i8> %i.r, splat (i8 26)
  %i.u = select <16 x i1> %i.s, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.v = select <16 x i1> %i.t, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.w = or <16 x i8> %i.u, %wide.load
  %i.x = or <16 x i8> %i.v, %wide.load20
  store <16 x i8> %i.w, ptr %i.o, align 1, !alias.scope !33940, !noalias !33941
  store <16 x i8> %i.x, ptr %i.p, align 1, !alias.scope !33940, !noalias !33941
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !33933

middle.block:                                     ; preds = %vector.body
  %3 = and i64 %2, 24
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33942

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %2, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %index22 ; 2 uses
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1, !alias.scope !33940, !noalias !33941 ; 2 uses
  %i.aa = add <8 x i8> %wide.load23, splat (i8 -65)
  %i.ab = icmp ult <8 x i8> %i.aa, splat (i8 26)
  %i.ac = select <8 x i1> %i.ab, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ad = or <8 x i8> %i.ac, %wide.load23
  store <8 x i8> %i.ad, ptr %i.z, align 1, !alias.scope !33940, !noalias !33941
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33934

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %2, %n.vec21
  br i1 %cmp.n25, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.05.i.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !33940, !noalias !33941, !noundef !24 ; 2 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.aj, %i.ag
  store i8 %.sroa.03.0.i.i, ptr %i.af, align 1, !alias.scope !33940, !noalias !33941
  %i.ak = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i, !llvm.loop !33935

_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  store i64 %i.j, ptr %i.d, align 8, !alias.scope !33936, !noalias !33938
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !33936, !noalias !33938
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !33936, !noalias !33938
  switch i64 %2, label %bb.j [
    i64 6, label %bb.c
    i64 9, label %bb.e
    i64 5, label %bb.g
  ]

bb.c:                                             ; preds = %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit
  %i.al = load i32, ptr %i.m, align 1
  %i.am = xor i32 %i.al, 1701867617
  %i.an = getelementptr i8, ptr %i.m, i64 4
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i32
  %i.aq = xor i32 %i.ap, 25710
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.av, align 8
  br label %bb.m

bb.e:                                             ; preds = %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit
  %i.aw = load i64, ptr %i.m, align 1
  %i.ax = xor i64 %i.aw, 8388361638300186223
  %i.ay = getelementptr i8, ptr %i.m, i64 8
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = xor i64 %i.ba, 101
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bg, align 8
  br label %bb.m

bb.g:                                             ; preds = %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit
  %i.bh = load i32, ptr %i.m, align 1
  %i.bi = xor i32 %i.bh, 1869771365
  %i.bj = getelementptr i8, ptr %i.m, i64 4
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = xor i32 %i.bl, 114
  %i.bn = or i32 %i.bi, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.br, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.bs = load i32, ptr %i.m, align 1
  %i.bt = xor i32 %i.bs, 1869506409
  %i.bu = getelementptr i8, ptr %i.m, i64 4
  %i.bv = load i16, ptr %i.bu, align 1
  %i.bw = zext i16 %i.bv to i32
  %i.bx = xor i32 %i.bw, 25970
  %i.by = or i32 %i.bt, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.e, %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.thread, %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @1205, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.cc, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #42
          to label %common.resume unwind label %bb.p

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, %bb.k, %bb.h, %bb.f, %bb.d
  %.sink = phi i64 [ -9223372036854775722, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit ], [ -9223372036854775711, %bb.k ], [ -9223372036854775711, %bb.h ], [ -9223372036854775711, %bb.f ], [ -9223372036854775711, %bb.d ]
  store i64 %.sink, ptr %0, align 16
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.n ], [ %i.cd, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 16, !range !31, !noundef !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load i8, ptr %i.c, align 16, !range !31, !noundef !24
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsg_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.g = load i8, ptr %i.f, align 1, !range !38, !noundef !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.i = load i8, ptr %i.h, align 1, !range !38, !noundef !24
  %i.j = icmp eq i8 %i.g, %i.i
end_hunk_1
