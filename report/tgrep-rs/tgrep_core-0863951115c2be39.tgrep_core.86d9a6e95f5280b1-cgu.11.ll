Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.11?download=true
inline.NumInlined: 561
inline.NumDeleted: 278
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_delta:bb.a
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 9)
          to label %bb.v unwind label %.loopexit.split-lp684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !626
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc444 unwind label %.loopexit.split-lp684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc444:                                        ; preds = %bb.t
  %i.ce = load i64, ptr %i.c, align 8, !range !10, !noalias !626, !noundef !5
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !16, !noalias !626, !noundef !5 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.u, label %bb.dx, !prof !14

bb.u:                                             ; preds = %.noexc444
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !626
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #27
          to label %.noexc445 unwind label %.loopexit.split-lp684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc445:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File6createNtNtB8_4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
          to label %bb.w unwind label %.loopexit.split-lp684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ck = load i32, ptr %i.ak, align 8, !range !4, !noundef !5
  %i.cl = trunc nuw i32 %i.ck to i1
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 0, ptr %0, align 8
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %.sroa.4287.0..sroa_idx, align 8
  br label %bb.dw

bb.y:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al, i64 noundef 8192, i32 noundef %i.cp)
          to label %bb.z unwind label %.loopexit.split-lp684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 10)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %.body481, %bb.ab
  %.pn429.pn = phi { ptr, i32 } [ %.pn429, %.body481 ], [ %i.cq, %bb.ab ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al) #22
          to label %.loopexit.split-lp684 unwind label %bb.dv

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit483, %bb.bl, %bb.af, %bb.ac, %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File6createNtNtB8_4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cr = load i32, ptr %i.ah, align 8, !range !4, !noundef !5
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 0, ptr %0, align 8
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.4290.0..sroa_idx, align 8
  br label %bb.du

bb.af:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, i64 noundef 8192, i32 noundef %i.cw)
          to label %bb.ag unwind label %bb.ab

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 65536, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %bb.ah

.body481:                                         ; preds = %bb.dr, %bb.ah, %.body
  %.pn429 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cx, %bb.ah ], [ %i.jw, %bb.dr ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #22
          to label %bb.aa unwind label %bb.dv

bb.ah:                                            ; preds = %bb.ds, %bb.bk, %bb.aj, %bb.ag
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body481

bb.ai:                                            ; preds = %bb.ag
  %i.cy = load i64, ptr %i.k, align 8, !range !10, !noundef !5
  %i.cz = trunc nuw i64 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !16, !noundef !5 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.cz, label %bb.aj, label %bb.ak, !prof !14

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load i64, ptr %i.dc, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.db, i64 %i.dd) #27
          to label %bb.cp unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai
  %i.de = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5
  %i.df = icmp samesign ugt i64 %i.db, 65535
  call void @llvm.assume(i1 %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.db, ptr %i.af, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.de, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 49152, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.am unwind label %bb.al

.body:                                            ; preds = %bb.bq, %bb.al, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp940, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.di, %bb.al ], [ %i.fc, %bb.bq ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #22
          to label %.body481 unwind label %bb.dv

bb.al:                                            ; preds = %bb.br, %bb.bj, %bb.an, %bb.ak
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ak
  %i.dj = load i64, ptr %i.j, align 8, !range !10, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !16, !noundef !5 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.dk, label %bb.an, label %bb.ao, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.do = load i64, ptr %i.dn, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dm, i64 %i.do) #27
          to label %bb.cp unwind label %bb.al

bb.ao:                                            ; preds = %bb.am
  %i.dp = load ptr, ptr %i.dn, align 8, !nonnull !5, !noundef !5
  %i.dq = icmp samesign ugt i64 %i.dm, 49151
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.dm, ptr %i.ae, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 7 uses
  store ptr %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 15 uses
  store i64 0, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.du = load i64, ptr %i.dt, align 8, !noundef !5
  store i64 %i.du, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !5
  store i64 %i.dw, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8
  %.sroa.787.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.888.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.7107.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8108.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit669, %bb.ao
  %.sroa.882.0.ph = phi i64 [ %.sroa.882.2641, %.loopexit669 ], [ undef, %bb.ao ]
  %.sroa.075.0.ph = phi i32 [ %.sroa.075.2652, %.loopexit669 ], [ undef, %bb.ao ]
  %.sroa.073.0.ph = phi i64 [ %i.il, %.loopexit669 ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.071.0.ph = phi i64 [ %i.ik, %.loopexit669 ], [ 0, %bb.ao ] ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.outer, %bb.cg
  %.sroa.882.0 = phi i64 [ %.sroa.882.2641841859, %bb.cg ], [ %.sroa.882.0.ph, %.outer ]
  %.sroa.075.0 = phi i32 [ %.sroa.075.2652840860, %bb.cg ], [ %.sroa.075.0.ph, %.outer ]
  %i.eb = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.ec = load i64, ptr %i.ad, align 8, !noundef !5
  %i.ed = icmp ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ee = load i64, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ef = load i64, ptr %i.ac, align 8, !noundef !5
  %i.eg = icmp ult i64 %i.ee, %i.ef
  br i1 %i.eg, label %.thread636, label %.thread537

.thread537:                                       ; preds = %.thread517, %bb.az, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk20flush_lookup_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2_11IndexReader15nth_trigram_raw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5, i64 noundef %i.eb)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ab, ptr %i.y, align 8
  %.sroa.4295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4295.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ad, ptr %i.eh, align 8
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4299.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @36, ptr noundef nonnull %i.y)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread636, %bb.ar, %bb.ct, %bb.de, %bb.dg, %bb.cr, %bb.cs, %bb.dk, %bb.ch, %bb.cy, %bb.dd, %bb.cf, %bb.by, %bb.av, %bb.as, %bb.df, %bb.co, %bb.cd, %bb.bi, %bb.bf, %bb.bc, %.thread537
  %lpad.loopexit.split-lp940 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #22
          to label %.body unwind label %bb.dv

bb.at:                                            ; preds = %bb.ar
  %.sroa.485.8.copyload = load i32, ptr %i.i, align 8 ; 2 uses
  %.sroa.787.8.copyload = load ptr, ptr %.sroa.787.8..sroa_idx, align 8 ; 3 uses
  %.sroa.888.8.copyload = load i64, ptr %.sroa.888.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ei = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.ej = load i64, ptr %i.ad, align 8, !noundef !5
  %i.ek = icmp ult i64 %i.ei, %i.ej
  %.not412 = icmp eq ptr %.sroa.787.8.copyload, null ; 2 uses
  %or.cond = select i1 %i.ek, i1 %.not412, i1 false
  br i1 %or.cond, label %bb.as, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.el = load i64, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.em = load i64, ptr %i.ac, align 8, !noundef !5
  %i.en = icmp ult i64 %i.el, %i.em
  br i1 %i.en, label %.thread636, label %.thread517

.thread636:                                       ; preds = %bb.aq, %bb.au
  %i.eo = phi i64 [ %i.el, %bb.au ], [ %i.ee, %bb.aq ]
  %.sroa.075.2650 = phi i32 [ %.sroa.485.8.copyload, %bb.au ], [ %.sroa.075.0, %bb.aq ] ; 5 uses
  %.sroa.378.1646 = phi ptr [ %.sroa.787.8.copyload, %bb.au ], [ null, %bb.aq ] ; 4 uses
  %.sroa.882.2645 = phi i64 [ %.sroa.888.8.copyload, %bb.au ], [ %.sroa.882.0, %bb.aq ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2_11IndexReader15nth_trigram_raw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %6, i64 noundef %i.eo)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.aa, ptr %i.w, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4305.0..sroa_idx, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ac, ptr %i.ep, align 8
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4309.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @35, ptr noundef nonnull %i.w)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit448 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %.thread636
  %.sroa.4105.8.copyload = load i32, ptr %i.h, align 8 ; 3 uses
  %.sroa.7107.8.copyload = load ptr, ptr %.sroa.7107.8..sroa_idx, align 8 ; 3 uses
  %.sroa.8108.8.copyload = load i64, ptr %.sroa.8108.8..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.eq = load i64, ptr %i.aa, align 8, !noundef !5 ; 3 uses
  %i.er = load i64, ptr %i.ac, align 8, !noundef !5
  %i.es = icmp ult i64 %i.eq, %i.er
  %.not413 = icmp eq ptr %.sroa.7107.8.copyload, null ; 3 uses
  %or.cond434 = select i1 %i.es, i1 %.not413, i1 false
  br i1 %or.cond434, label %bb.av, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not414 = icmp eq ptr %.sroa.378.1646, null
  br i1 %.not414, label %bb.az, label %bb.ay

.thread517:                                       ; preds = %bb.au
  br i1 %.not412, label %.thread537, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not413, label %..thread530_crit_edge, label %bb.bt

..thread530_crit_edge:                            ; preds = %bb.ay
  %.pre = load i64, ptr %i.ab, align 8
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

bb.az:                                            ; preds = %bb.ax
  br i1 %.not413, label %.thread537, label %.thread

bb.ba:                                            ; preds = %.thread537
  %i.et = load i64, ptr %i.o, align 8, !range !7, !noundef !5
  %.not416 = icmp eq i64 %i.et, -1
  br i1 %.not416, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bp

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.eu = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not417 = icmp eq ptr %i.eu, null
  br i1 %.not417, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i64 0, ptr %0, align 8
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %.sroa.4385.0..sroa_idx, align 8
  br label %bb.bp

bb.bf:                                            ; preds = %bb.bd
  %i.ev = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %.not418 = icmp eq ptr %i.ev, null
  br i1 %.not418, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i64 0, ptr %0, align 8
  %.sroa.4388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %.sroa.4388.0..sroa_idx, align 8
  br label %bb.bp

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %i.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bf, ptr %i.ez, align 8, !alias.scope !628
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.bg, ptr %.sroa.4503.0..sroa_idx, align 8, !alias.scope !628
  %.sroa.5504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %7, ptr %.sroa.5504.0..sroa_idx, align 8, !alias.scope !628
  store ptr %i.ex, ptr %i.n, align 8, !alias.scope !629
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ey, ptr %i.fa, align 8, !alias.scope !629
  %i.fb = zext i1 %8 to i8
  invoke fastcc void @_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder20write_files_and_metaINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB13_3map3MapINtNtB13_6filter6FilterINtNtNtB17_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvB2_22merge_index_with_deltas9_0ENvMB2X_B2V_6as_strEIB1R_B2u_B48_EEEB4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.n, i64 noundef %.sroa.073.0.ph, i8 noundef %i.fb)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.bk unwind label %bb.al

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af)
          to label %bb.bl unwind label %bb.ah

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai)
          to label %bb.bm unwind label %bb.ab

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al)
          to label %bb.bn unwind label %.loopexit.split-lp684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit, %bb.bn
  ret void

bb.bp:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit448, %bb.cb, %bb.bh, %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.bs

bb.br:                                            ; preds = %bb.bp
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.al

bb.bs:                                            ; preds = %bb.bq
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread:                                          ; preds = %bb.bt, %bb.az
  %storemerge = add i64 %i.eq, 1
  store i64 %storemerge, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %.sroa.4105.8.copyload, ptr %i.v, align 4
  %i.fe = udiv i64 %.sroa.8108.8.copyload, 6
  br label %bb.cc

bb.bt:                                            ; preds = %bb.ay
  %i.ff = call i8 @llvm.ucmp.i8.i32(i32 %.sroa.075.2650, i32 %.sroa.4105.8.copyload)
  switch i8 %i.ff, label %bb.bu [
    i8 -1, label %bb.bv
    i8 0, label %bb.bw
    i8 1, label %.thread
  ]

bb.bu:                                            ; preds = %bb.bt
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fg = load i64, ptr %i.ab, align 8, !noundef !5
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

bb.bw:                                            ; preds = %bb.bt
  %i.fh = load i64, ptr %i.ab, align 8, !noundef !5
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.ab, align 8
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit: ; preds = %.thread517, %..thread530_crit_edge, %bb.bw, %bb.bv
  %.sink868 = phi i64 [ %i.fg, %bb.bv ], [ %i.eq, %bb.bw ], [ %.pre, %..thread530_crit_edge ], [ %i.ei, %.thread517 ]
  %.sink867 = phi ptr [ %i.ab, %bb.bv ], [ %i.aa, %bb.bw ], [ %i.ab, %..thread530_crit_edge ], [ %i.ab, %.thread517 ]
  %.sroa.075.2653 = phi i32 [ %.sroa.075.2650, %bb.bv ], [ %.sroa.075.2650, %bb.bw ], [ %.sroa.075.2650, %..thread530_crit_edge ], [ %.sroa.485.8.copyload, %.thread517 ] ; 6 uses
  %.sroa.378.1648 = phi ptr [ %.sroa.378.1646, %bb.bv ], [ %.sroa.378.1646, %bb.bw ], [ %.sroa.378.1646, %..thread530_crit_edge ], [ %.sroa.787.8.copyload, %.thread517 ] ; 4 uses
  %.sroa.882.2642 = phi i64 [ %.sroa.882.2645, %bb.bv ], [ %.sroa.882.2645, %bb.bw ], [ %.sroa.882.2645, %..thread530_crit_edge ], [ %.sroa.888.8.copyload, %.thread517 ]
  %.sroa.8129.0.ph = phi i64 [ undef, %bb.bv ], [ %.sroa.8108.8.copyload, %bb.bw ], [ undef, %..thread530_crit_edge ], [ undef, %.thread517 ] ; 4 uses
  %.sroa.0126.0.ph = phi ptr [ null, %bb.bv ], [ %.sroa.7107.8.copyload, %bb.bw ], [ null, %..thread530_crit_edge ], [ null, %.thread517 ] ; 4 uses
  %i.fj = add i64 %.sink868, 1
  store i64 %i.fj, ptr %.sink867, align 8
  %.sroa.882.2642.fr = freeze i64 %.sroa.882.2642 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %.sroa.075.2653, ptr %i.v, align 4
  %i.fk = udiv i64 %.sroa.882.2642.fr, 6
  %i.fl = urem i64 %.sroa.882.2642.fr, 6
  br i1 %i.ap, label %.loopexit677, label %bb.bx

bb.bx:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit
  %.idx742 = sub nuw i64 %.sroa.882.2642.fr, %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.378.1648, i64 %.idx742
  %i.fn = icmp ult i64 %.sroa.882.2642.fr, 6
  br i1 %i.fn, label %.loopexit677.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph

.loopexit677.thread:                              ; preds = %bb.bx
  %.not.i450827 = icmp eq ptr %.sroa.0126.0.ph, null
  %9 = udiv i64 %.sroa.8129.0.ph, 6
  br i1 %.not.i450827, label %bb.cg, label %bb.cc

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph: ; preds = %bb.bx
  %i.fo = load i64, ptr %i.bd, align 8, !noundef !5
  %i.fp = load ptr, ptr %i.bc, align 8, !nonnull !5
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph, %bb.bz
  %.sroa.0132.1729 = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph ], [ %i.fz, %bb.bz ]
  %.sroa.0135.0728 = phi ptr [ %.sroa.378.1648, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph ], [ %i.fu, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.0312.0.copyload = load i32, ptr %.sroa.0135.0728, align 1 ; 2 uses
  store i32 %.sroa.0312.0.copyload, ptr %i.u, align 4
  %i.fq = zext i32 %.sroa.0312.0.copyload to i64  ; 2 uses
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !630
  store ptr %i.v, ptr %i.b, align 8, !noalias !630
  %.sroa.42.0..sroa_idx.i453 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i453, align 8, !noalias !630
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %i.fs, align 8, !noalias !630
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !630
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ft, ptr noundef nonnull @11, ptr noundef nonnull %i.b)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0135.0728, i64 6 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fq
  %i.fw = load i32, ptr %i.fv, align 4, !noundef !5
  %i.fx = icmp ne i32 %i.fw, -1
  %i.fy = zext i1 %i.fx to i64
  %i.fz = add i64 %.sroa.0132.1729, %i.fy         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ga = icmp eq ptr %i.fu, %i.fm
  br i1 %i.ga, label %.loopexit677, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !630
  %.sroa.6151.0.copyload = load ptr, ptr %i.ft, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8154.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 3, ptr %0, align 8
  %.sroa.4320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6151.0.copyload, ptr %.sroa.4320.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.dp, %bb.dq, %bb.dj, %bb.dn, %bb.cj, %bb.cw, %bb.db, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bp

.loopexit677:                                     ; preds = %bb.bz, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit
  %.sroa.0132.0 = phi i64 [ %i.fk, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit ], [ %i.fz, %bb.bz ] ; 2 uses
  %.not.i450 = icmp eq ptr %.sroa.0126.0.ph, null ; 2 uses
  %i.gb = udiv i64 %.sroa.8129.0.ph, 6
  %.sroa.03.0.i451 = select i1 %.not.i450, i64 0, i64 %i.gb
  %i.gc = add i64 %.sroa.0132.0, %.sroa.03.0.i451 ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %.sroa.0132.0
  br i1 %i.gd, label %bb.cd, label %bb.cc, !prof !631

bb.cc:                                            ; preds = %.loopexit677.thread, %.thread, %.loopexit677
  %.sroa.075.2652 = phi i32 [ %.sroa.075.2650, %.thread ], [ %.sroa.075.2653, %.loopexit677 ], [ %.sroa.075.2653, %.loopexit677.thread ] ; 2 uses
  %.sroa.882.2641 = phi i64 [ %.sroa.882.2645, %.thread ], [ %.sroa.882.2642.fr, %.loopexit677 ], [ %.sroa.882.2642.fr, %.loopexit677.thread ] ; 2 uses
  %10 = phi i64 [ %i.fe, %.thread ], [ %i.gc, %.loopexit677 ], [ %9, %.loopexit677.thread ] ; 4 uses
  %.not.i450604 = phi i1 [ false, %.thread ], [ %.not.i450, %.loopexit677 ], [ false, %.loopexit677.thread ]
  %.not.i566577603 = phi i1 [ true, %.thread ], [ false, %.loopexit677 ], [ false, %.loopexit677.thread ]
  %.sroa.0115.0564578602 = phi i32 [ %.sroa.4105.8.copyload, %.thread ], [ %.sroa.075.2653, %.loopexit677 ], [ %.sroa.075.2653, %.loopexit677.thread ]
  %.sroa.0117.0562579601 = phi ptr [ null, %.thread ], [ %.sroa.378.1648, %.loopexit677 ], [ %.sroa.378.1648, %.loopexit677.thread ] ; 3 uses
  %.sroa.10.0560580600 = phi i64 [ 0, %.thread ], [ %.sroa.882.2642.fr, %.loopexit677 ], [ %.sroa.882.2642.fr, %.loopexit677.thread ] ; 6 uses
  %.sroa.0126.0558581599 = phi ptr [ %.sroa.7107.8.copyload, %.thread ], [ %.sroa.0126.0.ph, %.loopexit677 ], [ %.sroa.0126.0.ph, %.loopexit677.thread ]
  %.sroa.8129.0556582598 = phi i64 [ %.sroa.8108.8.copyload, %.thread ], [ %.sroa.8129.0.ph, %.loopexit677 ], [ %.sroa.8129.0.ph, %.loopexit677.thread ]
  %i.ge = icmp ugt i64 %10, 4294967295
  br i1 %i.ge, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %.loopexit677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas6_0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cc
  %i.gf = icmp eq i64 %10, 0
  br i1 %i.gf, label %bb.cg, label %bb.ch

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !632
  store ptr %i.v, ptr %i.a, align 8, !noalias !632
  %.sroa.42.0..sroa_idx.i455 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i455, align 8, !noalias !632
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gg, ptr noundef nonnull @13, ptr noundef nonnull %i.a)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %.loopexit677.thread, %bb.ce
  %.sroa.075.2652840860 = phi i32 [ %.sroa.075.2652, %bb.ce ], [ %.sroa.075.2653, %.loopexit677.thread ]
  %.sroa.882.2641841859 = phi i64 [ %.sroa.882.2641, %bb.ce ], [ %.sroa.882.2642.fr, %.loopexit677.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ap

bb.ch:                                            ; preds = %bb.ce
  %.sroa.8129.0556582598.fr.le = freeze i64 %.sroa.8129.0556582598 ; 2 uses
  %i.gh = trunc nuw i64 %10 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.0115.0564578602, ptr %i.dx, align 8
  store i64 %.sroa.071.0.ph, ptr %i.s, align 8
  store i32 %i.gh, ptr %i.dy, align 4
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk18write_lookup_entryINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gi = load i64, ptr %i.t, align 8, !range !7, !noundef !5
  %.not421 = icmp eq i64 %i.gi, -1
  br i1 %.not421, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cb

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %.not.i566577603, label %.loopexit673, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ap, label %bb.cm, label %.preheader672

.preheader672:                                    ; preds = %bb.cl
  %i.gj = icmp eq i64 %.sroa.10.0560580600, 0
  br i1 %i.gj, label %.loopexit673, label %.lr.ph735

.loopexit673:                                     ; preds = %bb.cx, %.preheader672, %bb.cz, %bb.da, %bb.ck
  %i.gk = icmp eq i64 %.sroa.8129.0556582598.fr.le, 0
  %or.cond741 = or i1 %.not.i450604, %i.gk
  br i1 %or.cond741, label %.loopexit669, label %.lr.ph740

bb.cm:                                            ; preds = %bb.cl
  %i.gl = load i64, ptr %i.al, align 8, !range !17, !noundef !5
  %i.gm = load i64, ptr %i.dz, align 8, !noundef !5 ; 4 uses
  %i.gn = icmp sgt i64 %i.gm, -1
  call void @llvm.assume(i1 %i.gn)
  %i.go = sub nsw i64 %i.gl, %i.gm
  %i.gp = icmp ult i64 %.sroa.10.0560580600, %i.go
  br i1 %i.gp, label %bb.cz, label %bb.cy, !prof !13

.lr.ph735:                                        ; preds = %.preheader672, %bb.cx
  %.sroa.8349.0734 = phi i64 [ %i.gs, %bb.cx ], [ %.sroa.10.0560580600, %.preheader672 ] ; 3 uses
  %.sroa.0343.0733 = phi ptr [ %i.gr, %bb.cx ], [ %.sroa.0117.0562579601, %.preheader672 ] ; 3 uses
  %i.gq = call i64 @llvm.umin.i64(i64 %.sroa.8349.0734, i64 49152) ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0343.0733, i64 %i.gq
  %i.gs = sub i64 %.sroa.8349.0734, %i.gq         ; 2 uses
  store i64 0, ptr %i.ds, align 8
  %.lhs.trunc664 = trunc nuw i64 %i.gq to i16     ; 2 uses
  %i.gt = urem i16 %.lhs.trunc664, 6
  %narrow = sub i16 %.lhs.trunc664, %i.gt
  %.idx743 = zext i16 %narrow to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0343.0733, i64 %.idx743
  %i.gv = icmp ult i64 %.sroa.8349.0734, 6
  br i1 %i.gv, label %._crit_edge732, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460: ; preds = %.lr.ph735, %bb.cq
  %i.gw = phi i64 [ %i.hm, %bb.cq ], [ 0, %.lr.ph735 ]
  %.sroa.0205.0731 = phi ptr [ %i.gx, %bb.cq ], [ %.sroa.0343.0733, %.lr.ph735 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0205.0731, i64 6 ; 2 uses
  %.sroa.0355.0.copyload = load i32, ptr %.sroa.0205.0731, align 1
  %i.gy = zext i32 %.sroa.0355.0.copyload to i64  ; 3 uses
  %i.gz = load i64, ptr %i.bd, align 8, !noundef !5 ; 2 uses
  %i.ha = icmp ugt i64 %i.gz, %i.gy
  br i1 %i.ha, label %bb.cn, label %bb.co

._crit_edge732:                                   ; preds = %bb.cq, %.lr.ph735
  %i.hb = phi i64 [ 0, %.lr.ph735 ], [ %i.hm, %bb.cq ] ; 4 uses
  %i.hc = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hd = load i64, ptr %i.al, align 8, !range !17, !noundef !5
  %i.he = load i64, ptr %i.dz, align 8, !noundef !5 ; 4 uses
  %i.hf = icmp sgt i64 %i.he, -1
  call void @llvm.assume(i1 %i.hf)
  %i.hg = sub nsw i64 %i.hd, %i.he
  %i.hh = icmp ult i64 %i.hb, %i.hg
  br i1 %i.hh, label %bb.cu, label %bb.ct, !prof !13

bb.cn:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460
  %i.hi = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.gy
  %i.hk = load i32, ptr %i.hj, align 4, !noundef !5 ; 2 uses
  %i.hl = icmp eq i32 %i.hk, -1
  br i1 %i.hl, label %bb.cq, label %bb.cr

bb.co:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gy, i64 noundef %i.gz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #27
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co, %bb.an, %bb.aj
  unreachable

bb.cq:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464, %bb.cn
  %i.hm = phi i64 [ %i.hz, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464 ], [ %i.gw, %bb.cn ] ; 2 uses
  %i.hn = icmp eq ptr %i.gx, %i.gu
  br i1 %i.hn, label %._crit_edge732, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460

bb.cr:                                            ; preds = %bb.cn
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 4)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cr
  %i.ho = load i64, ptr %i.ds, align 8, !alias.scope !633, !noundef !5 ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, -1
  call void @llvm.assume(i1 %i.hp)
  %i.hq = load ptr, ptr %i.dr, align 8, !alias.scope !633, !nonnull !5, !noundef !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ho
  store i32 %i.hk, ptr %i.hr, align 1
  %.pre.i = load i64, ptr %i.ds, align 8, !alias.scope !633
  %i.hs = add i64 %.pre.i, 4
  store i64 %i.hs, ptr %i.ds, align 8, !alias.scope !633
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 2)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464: ; preds = %bb.cs
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0205.0731, i64 4
  %i.hu = load i64, ptr %i.ds, align 8, !alias.scope !634, !noundef !5 ; 2 uses
  %i.hv = icmp sgt i64 %i.hu, -1
  call void @llvm.assume(i1 %i.hv)
  %i.hw = load ptr, ptr %i.dr, align 8, !alias.scope !634, !nonnull !5, !noundef !5
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  %i.hy = load i16, ptr %i.ht, align 1
  store i16 %i.hy, ptr %i.hx, align 1
  %.pre.i462 = load i64, ptr %i.ds, align 8, !alias.scope !634
  %i.hz = add i64 %.pre.i462, 2                   ; 2 uses
  store i64 %i.hz, ptr %i.ds, align 8, !alias.scope !634
  br label %bb.cq

bb.ct:                                            ; preds = %._crit_edge732
  %i.ia = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hc, i64 noundef %i.hb)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cu:                                            ; preds = %._crit_edge732
  %i.ib = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.he
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull align 1 %i.hc, i64 %i.hb, i1 false)
  %i.id = add i64 %i.he, %i.hb
  store i64 %i.id, ptr %i.dz, align 8
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  %.not423 = icmp eq ptr %i.ia, null
  br i1 %.not423, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i64 0, ptr %0, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ia, ptr %.sroa.4357.0..sroa_idx, align 8
  br label %bb.cb

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.ie = icmp eq i64 %i.gs, 0
  br i1 %i.ie, label %.loopexit673, label %.lr.ph735

bb.cy:                                            ; preds = %bb.cm
  %i.if = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0117.0562579601, i64 noundef %.sroa.10.0560580600)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cz:                                            ; preds = %bb.cm
  %i.ig = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull align 1 %.sroa.0117.0562579601, i64 %.sroa.10.0560580600, i1 false)
  %i.ii = add i64 %i.gm, %.sroa.10.0560580600
  store i64 %i.ii, ptr %i.dz, align 8
  br label %.loopexit673

bb.da:                                            ; preds = %bb.cy
  %.not424 = icmp eq ptr %i.if, null
  br i1 %.not424, label %.loopexit673, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i64 0, ptr %0, align 8
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.if, ptr %.sroa.4341.0..sroa_idx, align 8
  br label %bb.cb

.loopexit669:                                     ; preds = %bb.do, %.loopexit673
  %i.ij = mul nuw nsw i64 %10, 6
  %i.ik = add i64 %i.ij, %.sroa.071.0.ph
  %i.il = add i64 %.sroa.073.0.ph, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.outer

.lr.ph740:                                        ; preds = %.loopexit673, %bb.do
  %.sroa.5362.0739 = phi i64 [ %i.io, %bb.do ], [ %.sroa.8129.0556582598.fr.le, %.loopexit673 ] ; 3 uses
  %.sroa.0359.0738 = phi ptr [ %i.in, %bb.do ], [ %.sroa.0126.0558581599, %.loopexit673 ] ; 3 uses
  %i.im = call i64 @llvm.umin.i64(i64 %.sroa.5362.0739, i64 49152) ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0359.0738, i64 %i.im
  %i.io = sub i64 %.sroa.5362.0739, %i.im         ; 2 uses
  store i64 0, ptr %i.ds, align 8
  %.lhs.trunc660 = trunc nuw i64 %i.im to i16     ; 2 uses
  %i.ip = urem i16 %.lhs.trunc660, 6
  %narrow745 = sub i16 %.lhs.trunc660, %i.ip
  %.idx744 = zext i16 %narrow745 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0359.0738, i64 %.idx744
  %i.ir = icmp ult i64 %.sroa.5362.0739, 6
  br i1 %i.ir, label %._crit_edge737, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470: ; preds = %.lr.ph740, %bb.dh
  %.sroa.0216.0736 = phi ptr [ %i.is, %bb.dh ], [ %.sroa.0359.0738, %.lr.ph740 ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0216.0736, i64 6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.0365.0.copyload = load i32, ptr %.sroa.0216.0736, align 1 ; 3 uses
  store i32 %.sroa.0365.0.copyload, ptr %i.r, align 4
  %i.it = zext i32 %.sroa.0365.0.copyload to i64
  %.not426 = icmp samesign ugt i64 %i.bm, %i.it
  br i1 %.not426, label %bb.dc, label %bb.dd

._crit_edge737:                                   ; preds = %bb.dh, %.lr.ph740
  %i.iu = phi i64 [ 0, %.lr.ph740 ], [ %i.jo, %bb.dh ] ; 4 uses
  %i.iv = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.iw = load i64, ptr %i.al, align 8, !range !17, !noundef !5
  %i.ix = load i64, ptr %i.dz, align 8, !noundef !5 ; 4 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = sub nsw i64 %i.iw, %i.ix
  %i.ja = icmp ult i64 %i.iu, %i.iz
  br i1 %i.ja, label %bb.dl, label %bb.dk, !prof !13

bb.dc:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470
  %i.jb = add i32 %.sroa.0365.0.copyload, %.sroa.020.0.lcssa ; 2 uses
  %i.jc = icmp ult i32 %i.jb, %.sroa.020.0.lcssa
  br i1 %i.jc, label %bb.df, label %bb.de, !prof !14

bb.dd:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4369.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @34, ptr noundef nonnull %i.p)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit472 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dc
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 4)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas8_0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.de
  %i.jd = load i64, ptr %i.ds, align 8, !alias.scope !635, !noundef !5 ; 2 uses
  %i.je = icmp sgt i64 %i.jd, -1
  call void @llvm.assume(i1 %i.je)
  %i.jf = load ptr, ptr %i.dr, align 8, !alias.scope !635, !nonnull !5, !noundef !5
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jd
  store i32 %i.jb, ptr %i.jg, align 1
  %.pre.i473 = load i64, ptr %i.ds, align 8, !alias.scope !635
  %i.jh = add i64 %.pre.i473, 4
  store i64 %i.jh, ptr %i.ds, align 8, !alias.scope !635
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 2)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0216.0736, i64 4
  %i.jj = load i64, ptr %i.ds, align 8, !alias.scope !636, !noundef !5 ; 2 uses
  %i.jk = icmp sgt i64 %i.jj, -1
  call void @llvm.assume(i1 %i.jk)
  %i.jl = load ptr, ptr %i.dr, align 8, !alias.scope !636, !nonnull !5, !noundef !5
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jj
  %i.jn = load i16, ptr %i.ji, align 1
  store i16 %i.jn, ptr %i.jm, align 1
  %.pre.i476 = load i64, ptr %i.ds, align 8, !alias.scope !636
  %i.jo = add i64 %.pre.i476, 2                   ; 2 uses
  store i64 %i.jo, ptr %i.ds, align 8, !alias.scope !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.jp = icmp eq ptr %i.is, %i.iq
  br i1 %i.jp, label %._crit_edge737, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470

bb.di:                                            ; preds = %bb.df
  %.sroa.0232.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6234.0.copyload = load i32, ptr %.sroa.6234.0..sroa_idx, align 8
  %.sroa.8237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.5380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5380.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8237.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.0232.0.copyload, ptr %0, align 8
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6234.0.copyload, ptr %.sroa.4379.0..sroa_idx, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit472, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.cb

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit472: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.dj

bb.dk:                                            ; preds = %._crit_edge737
  %i.jq = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iv, i64 noundef %i.iu)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dl:                                            ; preds = %._crit_edge737
  %i.jr = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.js, ptr nonnull align 1 %i.iv, i64 %i.iu, i1 false)
  %i.jt = add i64 %i.ix, %i.iu
  store i64 %i.jt, ptr %i.dz, align 8
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %.not427 = icmp eq ptr %i.jq, null
  br i1 %.not427, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i64 0, ptr %0, align 8
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jq, ptr %.sroa.4382.0..sroa_idx, align 8
  br label %bb.cb

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %i.ju = icmp eq i64 %i.io, 0
  br i1 %i.ju, label %.loopexit669, label %.lr.ph740

bb.dp:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !632
  %.sroa.7169.0.copyload = load i32, ptr %i.gg, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5339.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9172.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 3, ptr %0, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7169.0.copyload, ptr %.sroa.4338.0..sroa_idx, align 8
  br label %bb.cb

bb.dq:                                            ; preds = %bb.cd
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5330.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8190.0..sroa_idx, i64 16, i1 false)
  %i.jv = load <2 x i64>, ptr %i.f, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store <2 x i64> %i.jv, ptr %0, align 8
  br label %bb.cb

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit448: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.bp

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.bp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.ds unwind label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body481 unwind label %bb.dt

bb.ds:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit483 unwind label %bb.ah

bb.dt:                                            ; preds = %bb.dr
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit483: ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!431 = distinct !{!431, !430, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!432 = distinct !{!432, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!433 = distinct !{!433, !432, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!434 = distinct !{!434, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbzNSmZPCnTx_10tgrep_core"}
!435 = distinct !{!435, !434, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!436 = !{!315}
!437 = !{!317, !316, !315}
!438 = !{!317, !315}
!439 = !{!319}
!440 = !{!321}
!441 = !{!317}
!442 = !{!323}
!443 = !{!325}
!444 = !{!325, !323, !321, !319, !315}
!445 = !{!325, !323, !321, !319, !317, !315}
!446 = !{!327}
!447 = !{!329}
!448 = !{!329, !327, !321, !319, !315}
!449 = !{!329, !327, !321, !319, !317, !315}
!450 = !{!331}
!451 = !{!317, !316}
!452 = !{!333}
!453 = !{!335, !333, !334, !317, !316, !315}
!454 = !{!335, !333, !334, !317, !315}
!455 = !{!335, !333, !317, !315}
!456 = !{!333, !334, !317, !316, !315}
!457 = !{!343, !341, !339, !337, !335, !333, !317, !315}
!458 = !{!347, !345, !339, !337, !335, !333, !317, !315}
!459 = !{!335, !317, !315}
!460 = !{!350, !349}
!461 = !{!350}
!462 = !{!352}
!463 = !{!355, !354, !350, !349}
!464 = !{!349}
!465 = !{!357}
!466 = !{!359}
!467 = !{i8 0, i8 44}
!468 = !{!362}
!469 = !{!363}
!470 = !{!362, !364, !363}
!471 = !{!362, !363}
!472 = !{!366}
!473 = !{!368}
!474 = !{!370}
!475 = !{!372}
!476 = !{!372, !370, !368, !366, !363}
!477 = !{!372, !370, !368, !366, !362, !363}
!478 = !{!374}
!479 = !{!376}
!480 = !{!376, !374, !368, !366, !363}
!481 = !{!376, !374, !368, !366, !362, !363}
!482 = !{!378}
!483 = !{!362, !364}
!484 = !{!380}
!485 = !{!382, !380, !381, !362, !363}
!486 = !{!385, !384, !382, !380, !381, !362, !364, !363}
!487 = !{!385, !382, !380, !362, !363}
!488 = !{!382, !380, !362, !363}
!489 = !{!382, !380, !381, !362, !364, !363}
!490 = !{!384, !382, !380, !381, !362, !364, !363}
!491 = !{!393, !391, !389, !387, !382, !380, !362, !363}
!492 = !{!397, !395, !389, !387, !382, !380, !362, !363}
!493 = !{!382, !362, !363}
!494 = !{!364, !363}
!495 = !{!399}
!496 = !{!401}
!497 = !{!402}
!498 = !{!401, !403, !402}
!499 = !{!401, !402}
!500 = !{!405}
!501 = !{!407}
!502 = !{!409}
!503 = !{!411}
!504 = !{!411, !409, !407, !405, !402}
!505 = !{!411, !409, !407, !405, !401, !402}
!506 = !{!413}
!507 = !{!415}
!508 = !{!415, !413, !407, !405, !402}
!509 = !{!415, !413, !407, !405, !401, !402}
!510 = !{!417}
!511 = !{!401, !403}
!512 = !{!419}
!513 = !{!421, !419, !420, !401, !403, !402}
!514 = !{!421, !419, !420, !401, !402}
!515 = !{!421, !419, !401, !402}
!516 = !{!419, !420, !401, !403, !402}
!517 = !{!429, !427, !425, !423, !421, !419, !401, !402}
!518 = !{!433, !431, !425, !423, !421, !419, !401, !402}
!519 = !{!421, !401, !402}
!520 = !{!403, !402}
!521 = !{!435}
!522 = distinct !{!522, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_"}
!523 = distinct !{!523, !522, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_: argument 0"}
!524 = distinct !{!524, i1 true, !"_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_9IndexRead16verified_version"}
!525 = distinct !{!525, !524, !"_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_9IndexRead16verified_version: argument 1"}
!526 = distinct !{!526, !524, !"_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_9IndexRead16verified_version: argument 0"}
!527 = distinct !{!527, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB1X_9IndexRead16verified_versions_0EB1Z_"}
!528 = distinct !{!528, !527, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB1X_9IndexRead16verified_versions_0EB1Z_: argument 0"}
!529 = distinct !{!529, i1 true, !"_RNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB7_9IndexRead16verified_versions_0B9_"}
!530 = distinct !{!530, !529, !"_RNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB7_9IndexRead16verified_versions_0B9_: argument 0"}
!531 = distinct !{!531, i1 true, !"_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!532 = distinct !{!532, !531, !"_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!533 = distinct !{!533, !531, !"_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!534 = distinct !{!534, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbzNSmZPCnTx_10tgrep_core"}
!535 = distinct !{!535, !534, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!536 = distinct !{!536, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core"}
!537 = distinct !{!537, !536, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!538 = !{!523}
!539 = !{!525}
!540 = !{!526, !525}
!541 = !{!528}
!542 = !{!528, !526, !525}
!543 = !{!530, !528, !526, !525}
!544 = !{!532}
!545 = !{!533}
!546 = !{!533, !525}
!547 = !{!530, !528}
!548 = !{i32 -1, i32 1000000000}
!549 = !{!535}
!550 = !{!537}
!551 = distinct !{!551, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!552 = distinct !{!552, !551, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!553 = distinct !{!553, !551, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!554 = distinct !{!554, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEE3newB14_"}
!555 = distinct !{!555, !554, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEE3newB14_: argument 0"}
!556 = distinct !{!556, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!557 = distinct !{!557, !556, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!558 = distinct !{!558, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!559 = distinct !{!559, !558, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!560 = distinct !{!560, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_"}
!561 = distinct !{!561, !560, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_: argument 1"}
!562 = distinct !{!562, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!563 = distinct !{!563, !562, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!564 = distinct !{!564, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!565 = distinct !{!565, !564, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!566 = distinct !{!566, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!567 = distinct !{!567, !566, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1:h.rot"}
!568 = distinct !{!568, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!569 = distinct !{!569, !568, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!570 = distinct !{!570, !568, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!571 = distinct !{!571, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_filess_0B5_"}
!572 = distinct !{!572, !571, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_filess_0B5_: argument 0"}
!573 = distinct !{!573, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!574 = distinct !{!574, !573, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!575 = distinct !{!575, !573, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!576 = distinct !{!576, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_"}
!577 = distinct !{!577, !576, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_: argument 1:h.rot"}
!578 = distinct !{!578, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!579 = distinct !{!579, !578, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!580 = distinct !{!580, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!581 = distinct !{!581, !580, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!582 = !{!"address", !"read_provenance"}
!583 = !{!552}
!584 = !{!553, !552}
!585 = !{!555}
!586 = !{!557}
!587 = !{!559}
!588 = !{!559, !557}
!589 = !{!561}
!590 = !{!563}
!591 = !{!565}
!592 = !{!565, !563}
!593 = !{!567}
!594 = !{!569}
!595 = !{!570}
!596 = !{!572}
!597 = !{!574}
!598 = !{!575}
!599 = !{!577}
!600 = !{!579}
!601 = !{!581}
!602 = !{!581, !579}
!603 = distinct !{!603, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!604 = distinct !{!604, !603, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!605 = distinct !{!605, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!606 = distinct !{!606, !605, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!607 = distinct !{!607, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas0_0B5_"}
!608 = distinct !{!608, !607, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas0_0B5_: argument 0"}
!609 = distinct !{!609, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas9_0ENvMB1F_B1D_6as_strENtNtNtBa_6traits8iterator8Iterator5chainIB4_B1d_B3n_EEB2m_"}
!610 = distinct !{!610, !609, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas9_0ENvMB1F_B1D_6as_strENtNtNtBa_6traits8iterator8Iterator5chainIB4_B1d_B3n_EEB2m_: argument 1"}
!611 = distinct !{!611, !609, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas9_0ENvMB1F_B1D_6as_strENtNtNtBa_6traits8iterator8Iterator5chainIB4_B1d_B3n_EEB2m_: argument 0"}
!612 = distinct !{!612, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas4_0B5_"}
!613 = distinct !{!613, !612, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas4_0B5_: argument 0"}
!614 = distinct !{!614, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas7_0B5_"}
!615 = distinct !{!615, !614, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas7_0B5_: argument 0"}
!616 = distinct !{!616, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!617 = distinct !{!617, !616, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!618 = distinct !{!618, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!619 = distinct !{!619, !618, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!620 = distinct !{!620, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!621 = distinct !{!621, !620, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!622 = distinct !{!622, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!623 = distinct !{!623, !622, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!624 = !{!604}
!625 = !{!606}
!626 = !{!608}
!627 = !{!610}
!628 = !{!611, !610}
!629 = !{!611}
!630 = !{!613}
!631 = !{!"branch_weights", !"expected", i32 2457019, i32 2145026629}
!632 = !{!615}
!633 = !{!617}
!634 = !{!619}
!635 = !{!621}
!636 = !{!623}
!637 = distinct !{!637, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_index0B5_"}
!638 = distinct !{!638, !637, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_index0B5_: argument 0"}
!639 = distinct !{!639, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB1j_B1h_6as_strENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsbzNSmZPCnTx_10tgrep_core"}
!640 = distinct !{!640, !639, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB1j_B1h_6as_strENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!641 = distinct !{!641, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core"}
!642 = distinct !{!642, !641, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!643 = distinct !{!643, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!644 = distinct !{!644, !643, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!645 = distinct !{!645, !643, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!646 = distinct !{!646, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!647 = distinct !{!647, !646, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!648 = distinct !{!648, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core"}
!649 = distinct !{!649, !648, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!650 = distinct !{!650, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!651 = distinct !{!651, !650, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!652 = distinct !{!652, !650, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!653 = distinct !{!653, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!654 = distinct !{!654, !653, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!655 = distinct !{!655, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core"}
!656 = distinct !{!656, !655, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!657 = distinct !{!657, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!658 = distinct !{!658, !657, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!659 = distinct !{!659, !657, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!660 = distinct !{!660, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!661 = distinct !{!661, !660, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!662 = distinct !{!662, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs1_0EB1x_"}
!663 = distinct !{!663, !662, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs1_0EB1x_: argument 0"}
!664 = distinct !{!664, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs3_0B5_"}
!665 = distinct !{!665, !664, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs3_0B5_: argument 0"}
!666 = distinct !{!666, i1 true, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs4_0B5_"}
!667 = distinct !{!667, !666, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs4_0B5_: argument 0"}
!668 = distinct !{!668, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!669 = distinct !{!669, !668, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!670 = !{!638}
!671 = !{!640}
!672 = !{!647, !645, !644, !642}
!673 = !{!654, !652, !651, !649}
!674 = !{!661, !659, !658, !656}
!675 = !{!663}
!676 = !{!665}
!677 = !{!667}
!678 = !{!669}
!679 = distinct !{!679, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_"}
!680 = distinct !{!680, !679, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_: argument 0"}
!681 = !{!680}
!682 = distinct !{!682, i1 true, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_"}
!683 = distinct !{!683, !682, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 0"}
!684 = distinct !{!684, !682, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 3"}
!685 = distinct !{!685, !682, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 2"}
!686 = distinct !{!686, !682, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 1"}
!687 = distinct !{!687, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmEB1q_"}
!688 = distinct !{!688, !687, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmEB1q_: argument 0"}
!689 = distinct !{!689, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1s_"}
!690 = distinct !{!690, !689, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1s_: argument 0"}
!691 = distinct !{!691, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!692 = distinct !{!692, !691, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!693 = distinct !{!693, !691, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!694 = distinct !{!694, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!695 = distinct !{!695, !694, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!696 = !{!683}
!697 = !{!684}
!698 = !{!683, !685, !684}
!699 = !{!683, !686, !685, !684}
!700 = !{!683, !685}
!701 = !{!688, !684}
!702 = !{!695, !693, !692, !690, !683, !685}
!703 = !{!686, !685, !684}
!704 = distinct !{!704, i1 true, !"_RNvXsr_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidenceNtNtCsf3Ta7LF998c_4core7default7Default7default"}
!705 = distinct !{!705, !704, !"_RNvXsr_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidenceNtNtCsf3Ta7LF998c_4core7default7Default7default: argument 0"}
!706 = distinct !{!706, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!707 = distinct !{!707, !706, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!708 = distinct !{!708, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!709 = distinct !{!709, !708, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1:h.rot"}
!710 = !{!705}
!711 = !{!707}
!712 = !{!709}
!713 = distinct !{!713, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting16sort_unstable_byNCNvNtBz_7builder28write_index_v2_from_postings0EBz_"}
!714 = distinct !{!714, !713, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting16sort_unstable_byNCNvNtBz_7builder28write_index_v2_from_postings0EBz_: argument 0"}
!715 = distinct !{!715, i1 true, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder21count_sorted_trigrams"}
!716 = distinct !{!716, !715, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder21count_sorted_trigrams: argument 0"}
!717 = distinct !{!717, !740}
!718 = distinct !{!718, i1 true, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_"}
!719 = distinct !{!719, !718, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 0"}
!720 = distinct !{!720, !718, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 3"}
!721 = distinct !{!721, !718, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 2"}
!722 = distinct !{!722, !718, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 1"}
!723 = distinct !{!723, i1 true, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_"}
!724 = distinct !{!724, !723, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 1"}
!725 = distinct !{!725, !723, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 2"}
!726 = distinct !{!726, !723, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 3"}
!727 = distinct !{!727, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!728 = distinct !{!728, !727, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!729 = distinct !{!729, !723, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 0"}
!730 = distinct !{!730, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!731 = distinct !{!731, !730, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!732 = distinct !{!732, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!733 = distinct !{!733, !732, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!734 = distinct !{!734, i1 true, !"_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core"}
!735 = distinct !{!735, !734, !"_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!736 = distinct !{!736, i1 true, !"_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE25write_to_buffer_uncheckedCsbzNSmZPCnTx_10tgrep_core"}
!737 = distinct !{!737, !736, !"_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE25write_to_buffer_uncheckedCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!738 = !{!714}
!739 = !{!716}
!740 = !{!"llvm.loop.peeled.count", i32 1}
!741 = !{!719}
!742 = !{!720}
!743 = !{!719, !721, !720}
!744 = !{!719, !722, !721, !720}
!745 = !{!719, !720}
!746 = !{!722, !721, !720}
!747 = !{!724}
!748 = !{!725}
!749 = !{!726}
!750 = !{!725, !720}
!751 = !{!728, !726}
!752 = !{!729, !725, !719, !721, !720}
!753 = !{!731, !726}
!754 = !{!733, !726}
!755 = !{!735}
!756 = !{!735, !724}
!757 = !{!737}
!758 = !{!737, !735, !724}
!759 = !{!737, !735, !729, !725, !719, !721, !720}
!760 = distinct !{!760, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!761 = distinct !{!761, !760, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!762 = distinct !{!762, !760, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!763 = distinct !{!763, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core"}
!764 = distinct !{!764, !763, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!765 = distinct !{!765, i1 true, !"_RNvXNtCsbzNSmZPCnTx_10tgrep_core6walkerNtB2_11WalkOptionsNtNtCsf3Ta7LF998c_4core7default7Default7default"}
!766 = distinct !{!766, !765, !"_RNvXNtCsbzNSmZPCnTx_10tgrep_core6walkerNtB2_11WalkOptionsNtNtCsf3Ta7LF998c_4core7default7Default7default: argument 0"}
!767 = distinct !{!767, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtBQ_4path7PathBufEINtNtNtBQ_4sync6poison11PoisonErrorBH_EE6unwrapCsbzNSmZPCnTx_10tgrep_core"}
!768 = distinct !{!768, !767, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtBQ_4path7PathBufEINtNtNtBQ_4sync6poison11PoisonErrorBH_EE6unwrapCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!769 = distinct !{!769, !767, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtBQ_4path7PathBufEINtNtNtBQ_4sync6poison11PoisonErrorBH_EE6unwrapCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!770 = distinct !{!770, i1 true, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps"}
!771 = distinct !{!771, !770, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 3"}
!772 = distinct !{!772, !770, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 2"}
!773 = distinct !{!773, !770, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 1"}
!774 = distinct !{!774, !770, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 0"}
!775 = distinct !{!775, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!776 = distinct !{!776, !775, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!777 = distinct !{!777, !775, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!778 = distinct !{!778, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!779 = distinct !{!779, !778, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!780 = distinct !{!780, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!781 = distinct !{!781, !780, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!782 = distinct !{!782, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_"}
!783 = distinct !{!783, !782, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_: argument 1"}
!784 = distinct !{!784, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!785 = distinct !{!785, !784, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!786 = distinct !{!786, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!787 = distinct !{!787, !786, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!788 = distinct !{!788, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!789 = distinct !{!789, !788, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1:h.rot"}
!790 = distinct !{!790, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!791 = distinct !{!791, !790, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!792 = distinct !{!792, !790, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!793 = distinct !{!793, i1 true, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_"}
!794 = distinct !{!794, !793, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_: argument 1"}
!795 = distinct !{!795, !793, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_: argument 2"}
!796 = distinct !{!796, !793, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_: argument 0"}
!797 = distinct !{!797, i1 true, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB16_13TrigramHasherEENtNtNtNtB1Z_4iter6traits7collect12IntoIterator9into_iterB18_"}
!798 = distinct !{!798, !797, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB16_13TrigramHasherEENtNtNtNtB1Z_4iter6traits7collect12IntoIterator9into_iterB18_: argument 1"}
!799 = distinct !{!799, !797, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB16_13TrigramHasherEENtNtNtNtB1Z_4iter6traits7collect12IntoIterator9into_iterB18_: argument 0"}
!800 = distinct !{!800, i1 true, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3mapNtNtB14_8external14TrigramPostingNCINvMs_NtB14_7builderNtB3v_11PostingSink9push_fileINtB6_7HashMapmB10_INtNtB1Z_4hash18BuildHasherDefaultNtB12_13TrigramHasherEEE0EB14_"}
!801 = distinct !{!801, !800, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3mapNtNtB14_8external14TrigramPostingNCINvMs_NtB14_7builderNtB3v_11PostingSink9push_fileINtB6_7HashMapmB10_INtNtB1Z_4hash18BuildHasherDefaultNtB12_13TrigramHasherEEE0EB14_: argument 0"}
!802 = distinct !{!802, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_"}
!803 = distinct !{!803, !802, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_: argument 1:h.rot"}
!804 = distinct !{!804, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!805 = distinct !{!805, !804, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!806 = distinct !{!806, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!807 = distinct !{!807, !806, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!808 = distinct !{!808, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_"}
!809 = distinct !{!809, !808, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_: argument 0"}
!810 = distinct !{!810, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_"}
!811 = distinct !{!811, !810, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_: argument 0"}
!812 = distinct !{!812, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!813 = distinct !{!813, !812, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!814 = distinct !{!814, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_"}
!815 = distinct !{!815, !814, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_: argument 0"}
!816 = distinct !{!816, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_"}
!817 = distinct !{!817, !816, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_: argument 0"}
!818 = distinct !{!818, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!819 = distinct !{!819, !818, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!820 = !{!761}
!821 = !{!762}
!822 = !{!764}
!823 = !{!766}
!824 = !{!768}
!825 = !{!769}
!826 = !{!768, !769}
!827 = !{!774, !773, !772, !771}
!828 = !{!776}
!829 = !{!777, !776}
!830 = !{!779}
!831 = !{!781}
end_hunk_1
