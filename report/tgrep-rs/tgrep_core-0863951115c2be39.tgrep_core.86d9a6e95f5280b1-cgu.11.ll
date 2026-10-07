Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.11?download=true
inline.NumInlined: 561
inline.NumDeleted: 278
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_delta:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.bp

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 9)
          to label %bb.w unwind label %.loopexit.split-lp684

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !648
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc444 unwind label %.loopexit.split-lp684

.noexc444:                                        ; preds = %bb.u
  %i.ce = load i64, ptr %i.c, align 8, !range !10, !noalias !648, !noundef !5
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !16, !noalias !648, !noundef !5 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.v, label %bb.dy, !prof !14

bb.v:                                             ; preds = %.noexc444
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !648
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #27
          to label %.noexc445 unwind label %.loopexit.split-lp684

.noexc445:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File6createNtNtB8_4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
          to label %bb.x unwind label %.loopexit.split-lp684

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ck = load i32, ptr %i.ak, align 8, !range !4, !noundef !5
  %i.cl = trunc nuw i32 %i.ck to i1
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 0, ptr %0, align 8
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %.sroa.4287.0..sroa_idx, align 8
  br label %bb.dx

bb.z:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al, i64 noundef 8192, i32 noundef %i.cp)
          to label %bb.aa unwind label %.loopexit.split-lp684

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 10)
          to label %bb.ad unwind label %bb.ac

bb.ab:                                            ; preds = %.body481, %bb.ac
  %.pn429.pn = phi { ptr, i32 } [ %.pn429, %.body481 ], [ %i.cq, %bb.ac ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al) #22
          to label %bb.f unwind label %bb.dw

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit483, %bb.bm, %bb.ag, %bb.ad, %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File6createNtNtB8_4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cr = load i32, ptr %i.ah, align 8, !range !4, !noundef !5
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 0, ptr %0, align 8
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.4290.0..sroa_idx, align 8
  br label %bb.dv

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, i64 noundef 8192, i32 noundef %i.cw)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 65536, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aj unwind label %bb.ai

.body481:                                         ; preds = %bb.ds, %bb.ai, %.body
  %.pn429 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cx, %bb.ai ], [ %i.jx, %bb.ds ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #22
          to label %bb.ab unwind label %bb.dw

bb.ai:                                            ; preds = %bb.dt, %bb.bl, %bb.ak, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body481

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load i64, ptr %i.k, align 8, !range !10, !noundef !5
  %i.cz = trunc nuw i64 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !16, !noundef !5 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.cz, label %bb.ak, label %bb.al, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load i64, ptr %i.dc, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.db, i64 %i.dd) #27
          to label %bb.cq unwind label %bb.ai

bb.al:                                            ; preds = %bb.aj
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
          to label %bb.an unwind label %bb.am

.body:                                            ; preds = %bb.br, %bb.am, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.di, %bb.am ], [ %i.ez, %bb.br ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #22
          to label %.body481 unwind label %bb.dw

bb.am:                                            ; preds = %bb.bs, %bb.bk, %bb.ao, %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.al
  %i.dj = load i64, ptr %i.j, align 8, !range !10, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !16, !noundef !5 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.dk, label %bb.ao, label %bb.ap, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.do = load i64, ptr %i.dn, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dm, i64 %i.do) #27
          to label %bb.cq unwind label %bb.am

bb.ap:                                            ; preds = %bb.an
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
  %i.du = load i64, ptr %i.dt, align 8, !noundef !5 ; 3 uses
  store i64 %i.du, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !5 ; 4 uses
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

.outer:                                           ; preds = %.loopexit669, %bb.ap
  %i.eb = phi i64 [ %10, %.loopexit669 ], [ 0, %bb.ap ]
  %i.ec = phi i64 [ %11, %.loopexit669 ], [ 0, %bb.ap ]
  %i.ed = phi i64 [ %12, %.loopexit669 ], [ 0, %bb.ap ]
  %i.ee = phi i64 [ %13, %.loopexit669 ], [ 0, %bb.ap ]
  %.sroa.882.0.ph = phi i64 [ %.sroa.882.2641, %.loopexit669 ], [ undef, %bb.ap ]
  %.sroa.075.0.ph = phi i32 [ %.sroa.075.2652, %.loopexit669 ], [ undef, %bb.ap ]
  %.sroa.073.0.ph = phi i64 [ %i.im, %.loopexit669 ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.071.0.ph = phi i64 [ %i.il, %.loopexit669 ], [ 0, %bb.ap ] ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.outer, %bb.ch
  %storemerge.in = phi i64 [ %15, %bb.ch ], [ %i.eb, %.outer ] ; 7 uses
  %i.ef = phi i64 [ %16, %bb.ch ], [ %i.ec, %.outer ] ; 4 uses
  %i.eg = phi i64 [ %17, %bb.ch ], [ %i.ed, %.outer ] ; 6 uses
  %i.eh = phi i64 [ %18, %bb.ch ], [ %i.ee, %.outer ] ; 3 uses
  %.sroa.882.0 = phi i64 [ %.sroa.882.2641830848, %bb.ch ], [ %.sroa.882.0.ph, %.outer ]
  %.sroa.075.0 = phi i32 [ %.sroa.075.2652829849, %bb.ch ], [ %.sroa.075.0.ph, %.outer ]
  %i.ei = icmp ult i64 %i.eh, %i.du
  br i1 %i.ei, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ej = icmp ult i64 %i.ef, %i.dw
  br i1 %i.ej, label %.thread636, label %.thread537

.thread537:                                       ; preds = %.thread517, %bb.ba, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk20flush_lookup_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2_11IndexReader15nth_trigram_raw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5, i64 noundef %i.eh)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.at:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ab, ptr %i.y, align 8
  %.sroa.4295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4295.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ad, ptr %i.ek, align 8
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4299.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @36, ptr noundef nonnull %i.y)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.df, %bb.dh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ct, %bb.cs
  %lpad.loopexit666 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.dl
  %lpad.loopexit670 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cu
  %lpad.loopexit674 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %.thread636, %bb.as
  %lpad.loopexit680 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.cz, %bb.ci
  %lpad.loopexit.split-lp681 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread537, %bb.bd, %bb.bg, %bb.bj, %bb.ce, %bb.cp, %bb.dg, %bb.at, %bb.aw, %bb.bz, %bb.cg, %bb.de
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit666, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit670, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit674, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit680, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp681, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #22
          to label %.body unwind label %bb.dw

bb.au:                                            ; preds = %bb.as
  %.sroa.485.8.copyload = load i32, ptr %i.i, align 8 ; 2 uses
  %.sroa.787.8.copyload = load ptr, ptr %.sroa.787.8..sroa_idx, align 8 ; 3 uses
  %.sroa.888.8.copyload = load i64, ptr %.sroa.888.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.el = icmp ult i64 %i.eg, %i.du
  %.not412 = icmp eq ptr %.sroa.787.8.copyload, null ; 2 uses
  %or.cond = select i1 %i.el, i1 %.not412, i1 false
  br i1 %or.cond, label %bb.at, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.em = icmp ult i64 %i.ef, %i.dw
  br i1 %i.em, label %.thread636, label %.thread517

.thread636:                                       ; preds = %bb.ar, %bb.av
  %i.en = phi i64 [ %i.eg, %bb.av ], [ %i.eh, %bb.ar ]
  %.sroa.075.2650 = phi i32 [ %.sroa.485.8.copyload, %bb.av ], [ %.sroa.075.0, %bb.ar ] ; 5 uses
  %.sroa.378.1646 = phi ptr [ %.sroa.787.8.copyload, %bb.av ], [ null, %bb.ar ] ; 4 uses
  %.sroa.882.2645 = phi i64 [ %.sroa.888.8.copyload, %bb.av ], [ %.sroa.882.0, %bb.ar ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2_11IndexReader15nth_trigram_raw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %6, i64 noundef %i.ef)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.aw:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.aa, ptr %i.w, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4305.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ac, ptr %i.eo, align 8
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4309.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @35, ptr noundef nonnull %i.w)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit448 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %.thread636
  %.sroa.4105.8.copyload = load i32, ptr %i.h, align 8 ; 3 uses
  %.sroa.7107.8.copyload = load ptr, ptr %.sroa.7107.8..sroa_idx, align 8 ; 3 uses
  %.sroa.8108.8.copyload = load i64, ptr %.sroa.8108.8..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ep = icmp ult i64 %storemerge.in, %i.dw
  %.not413 = icmp eq ptr %.sroa.7107.8.copyload, null ; 3 uses
  %or.cond434 = select i1 %i.ep, i1 %.not413, i1 false
  br i1 %or.cond434, label %bb.aw, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not414 = icmp eq ptr %.sroa.378.1646, null
  br i1 %.not414, label %bb.ba, label %bb.az

.thread517:                                       ; preds = %bb.av
  br i1 %.not412, label %.thread537, label %.thread530

bb.az:                                            ; preds = %bb.ay
  br i1 %.not413, label %.thread530, label %bb.bu

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not413, label %.thread537, label %.thread

bb.bb:                                            ; preds = %.thread537
  %i.eq = load i64, ptr %i.o, align 8, !range !7, !noundef !5
  %.not416 = icmp eq i64 %i.eq, -1
  br i1 %.not416, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bq

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.er = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %.not417 = icmp eq ptr %i.er, null
  br i1 %.not417, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i64 0, ptr %0, align 8
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.er, ptr %.sroa.4385.0..sroa_idx, align 8
  br label %bb.bq

bb.bg:                                            ; preds = %bb.be
  %i.es = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %.not418 = icmp eq ptr %i.es, null
  br i1 %.not418, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i64 0, ptr %0, align 8
  %.sroa.4388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %.sroa.4388.0..sroa_idx, align 8
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bf, ptr %i.ew, align 8, !alias.scope !650
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.bg, ptr %.sroa.4503.0..sroa_idx, align 8, !alias.scope !650
  %.sroa.5504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %7, ptr %.sroa.5504.0..sroa_idx, align 8, !alias.scope !650
  store ptr %i.eu, ptr %i.n, align 8, !alias.scope !651, !noalias !649
  %i.ex = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ev, ptr %i.ex, align 8, !alias.scope !651, !noalias !649
  %i.ey = zext i1 %8 to i8
  invoke fastcc void @_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder20write_files_and_metaINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtB13_3map3MapINtNtB13_6filter6FilterINtNtNtB17_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvB2_22merge_index_with_deltas9_0ENvMB2X_B2V_6as_strEIB1R_B2u_B48_EEEB4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.n, i64 noundef %.sroa.073.0.ph, i8 noundef %i.ey)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.bl unwind label %bb.am

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af)
          to label %bb.bm unwind label %bb.ai

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai)
          to label %bb.bn unwind label %bb.ac

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al)
          to label %bb.bo unwind label %.loopexit.split-lp684

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit, %bb.bo
  ret void

bb.bq:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit448, %bb.cc, %bb.bi, %bb.bf, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.am

bb.bt:                                            ; preds = %bb.br
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread:                                          ; preds = %bb.bu, %bb.ba
  %storemerge = add i64 %storemerge.in, 1         ; 3 uses
  store i64 %storemerge, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %.sroa.4105.8.copyload, ptr %i.v, align 4
  %i.fb = udiv i64 %.sroa.8108.8.copyload, 6
  br label %bb.cd

bb.bu:                                            ; preds = %bb.az
  %i.fc = call i8 @llvm.ucmp.i8.i32(i32 %.sroa.075.2650, i32 %.sroa.4105.8.copyload)
  switch i8 %i.fc, label %bb.bv [
    i8 -1, label %bb.bw
    i8 0, label %bb.bx
    i8 1, label %.thread
  ]

.thread530:                                       ; preds = %.thread517, %bb.az
  %i.fd = phi i64 [ %storemerge.in, %bb.az ], [ %i.ef, %.thread517 ]
  %.sroa.075.2654 = phi i32 [ %.sroa.075.2650, %bb.az ], [ %.sroa.485.8.copyload, %.thread517 ]
  %.sroa.378.1649 = phi ptr [ %.sroa.378.1646, %bb.az ], [ %.sroa.787.8.copyload, %.thread517 ]
  %.sroa.882.2643 = phi i64 [ %.sroa.882.2645, %bb.az ], [ %.sroa.888.8.copyload, %.thread517 ]
  %i.fe = add i64 %i.eg, 1                        ; 2 uses
  store i64 %i.fe, ptr %i.ab, align 8
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ff = add i64 %i.eg, 1                        ; 2 uses
  store i64 %i.ff, ptr %i.ab, align 8
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

bb.bx:                                            ; preds = %bb.bu
  %i.fg = add i64 %i.eg, 1                        ; 2 uses
  store i64 %i.fg, ptr %i.ab, align 8
  %i.fh = add i64 %storemerge.in, 1               ; 3 uses
  store i64 %i.fh, ptr %i.aa, align 8
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit: ; preds = %.thread530, %bb.bx, %bb.bw
  %i.fi = phi i64 [ %storemerge.in, %.thread530 ], [ %i.fh, %bb.bx ], [ %storemerge.in, %bb.bw ] ; 3 uses
  %i.fj = phi i64 [ %i.fd, %.thread530 ], [ %i.fh, %bb.bx ], [ %storemerge.in, %bb.bw ] ; 3 uses
  %i.fk = phi i64 [ %i.fe, %.thread530 ], [ %i.fg, %bb.bx ], [ %i.ff, %bb.bw ] ; 6 uses
  %.sroa.075.2653 = phi i32 [ %.sroa.075.2654, %.thread530 ], [ %.sroa.075.2650, %bb.bx ], [ %.sroa.075.2650, %bb.bw ] ; 6 uses
  %.sroa.378.1648 = phi ptr [ %.sroa.378.1649, %.thread530 ], [ %.sroa.378.1646, %bb.bx ], [ %.sroa.378.1646, %bb.bw ] ; 4 uses
  %.sroa.882.2642 = phi i64 [ %.sroa.882.2643, %.thread530 ], [ %.sroa.882.2645, %bb.bx ], [ %.sroa.882.2645, %bb.bw ]
  %.sroa.8129.0.ph = phi i64 [ undef, %.thread530 ], [ %.sroa.8108.8.copyload, %bb.bx ], [ undef, %bb.bw ] ; 4 uses
  %.sroa.0126.0.ph = phi ptr [ null, %.thread530 ], [ %.sroa.7107.8.copyload, %bb.bx ], [ null, %bb.bw ] ; 4 uses
  %.sroa.882.2642.fr = freeze i64 %.sroa.882.2642 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %.sroa.075.2653, ptr %i.v, align 4
  %i.fl = udiv i64 %.sroa.882.2642.fr, 6
  %i.fm = urem i64 %.sroa.882.2642.fr, 6
  br i1 %i.ap, label %.loopexit677, label %bb.by

bb.by:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit
  %.idx742 = sub nuw i64 %.sroa.882.2642.fr, %i.fm
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.378.1648, i64 %.idx742
  %i.fo = icmp ult i64 %.sroa.882.2642.fr, 6
  br i1 %i.fo, label %.loopexit677.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph

.loopexit677.thread:                              ; preds = %bb.by
  %.not.i450816 = icmp eq ptr %.sroa.0126.0.ph, null
  %9 = udiv i64 %.sroa.8129.0.ph, 6
  br i1 %.not.i450816, label %bb.ch, label %bb.cd

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph: ; preds = %bb.by
  %i.fp = load i64, ptr %i.bd, align 8, !noundef !5
  %i.fq = load ptr, ptr %i.bc, align 8, !nonnull !5
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph, %bb.ca
  %.sroa.0132.1729 = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph ], [ %i.ga, %bb.ca ]
  %.sroa.0135.0728 = phi ptr [ %.sroa.378.1648, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph ], [ %i.fv, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.0312.0.copyload = load i32, ptr %.sroa.0135.0728, align 1 ; 2 uses
  store i32 %.sroa.0312.0.copyload, ptr %i.u, align 4
  %i.fr = zext i32 %.sroa.0312.0.copyload to i64  ; 2 uses
  %i.fs = icmp ugt i64 %i.fp, %i.fr
  br i1 %i.fs, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !652
  store ptr %i.v, ptr %i.b, align 8, !noalias !652
  %.sroa.42.0..sroa_idx.i453 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i453, align 8, !noalias !652
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %i.ft, align 8, !noalias !652
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !652
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fu, ptr noundef nonnull @11, ptr noundef nonnull %i.b)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0135.0728, i64 6 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr
  %i.fx = load i32, ptr %i.fw, align 4, !noundef !5
  %i.fy = icmp ne i32 %i.fx, -1
  %i.fz = zext i1 %i.fy to i64
  %i.ga = add i64 %.sroa.0132.1729, %i.fz         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gb = icmp eq ptr %i.fv, %i.fn
  br i1 %i.gb, label %.loopexit677, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !652
  %.sroa.6151.0.copyload = load ptr, ptr %i.fu, align 8
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8154.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 3, ptr %0, align 8
  %.sroa.4320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6151.0.copyload, ptr %.sroa.4320.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.dq, %bb.dr, %bb.dk, %bb.do, %bb.ck, %bb.cx, %bb.dc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bq

.loopexit677:                                     ; preds = %bb.ca, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit
  %.sroa.0132.0 = phi i64 [ %i.fl, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRShE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas3_0EB10_.exit ], [ %i.ga, %bb.ca ] ; 2 uses
  %.not.i450 = icmp eq ptr %.sroa.0126.0.ph, null ; 2 uses
  %i.gc = udiv i64 %.sroa.8129.0.ph, 6
  %.sroa.03.0.i451 = select i1 %.not.i450, i64 0, i64 %i.gc
  %i.gd = add i64 %.sroa.0132.0, %.sroa.03.0.i451 ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %.sroa.0132.0
  br i1 %i.ge, label %bb.ce, label %bb.cd, !prof !653

bb.cd:                                            ; preds = %.loopexit677.thread, %.thread, %.loopexit677
  %10 = phi i64 [ %storemerge, %.thread ], [ %i.fi, %.loopexit677 ], [ %i.fi, %.loopexit677.thread ] ; 2 uses
  %11 = phi i64 [ %storemerge, %.thread ], [ %i.fj, %.loopexit677 ], [ %i.fj, %.loopexit677.thread ] ; 2 uses
  %12 = phi i64 [ %i.eg, %.thread ], [ %i.fk, %.loopexit677 ], [ %i.fk, %.loopexit677.thread ] ; 2 uses
  %13 = phi i64 [ %i.en, %.thread ], [ %i.fk, %.loopexit677 ], [ %i.fk, %.loopexit677.thread ] ; 2 uses
  %.sroa.075.2652 = phi i32 [ %.sroa.075.2650, %.thread ], [ %.sroa.075.2653, %.loopexit677 ], [ %.sroa.075.2653, %.loopexit677.thread ] ; 2 uses
  %.sroa.882.2641 = phi i64 [ %.sroa.882.2645, %.thread ], [ %.sroa.882.2642.fr, %.loopexit677 ], [ %.sroa.882.2642.fr, %.loopexit677.thread ] ; 2 uses
  %14 = phi i64 [ %i.fb, %.thread ], [ %i.gd, %.loopexit677 ], [ %9, %.loopexit677.thread ] ; 4 uses
  %.not.i450604 = phi i1 [ false, %.thread ], [ %.not.i450, %.loopexit677 ], [ false, %.loopexit677.thread ]
  %.not.i566577603 = phi i1 [ true, %.thread ], [ false, %.loopexit677 ], [ false, %.loopexit677.thread ]
  %.sroa.0115.0564578602 = phi i32 [ %.sroa.4105.8.copyload, %.thread ], [ %.sroa.075.2653, %.loopexit677 ], [ %.sroa.075.2653, %.loopexit677.thread ]
  %.sroa.0117.0562579601 = phi ptr [ null, %.thread ], [ %.sroa.378.1648, %.loopexit677 ], [ %.sroa.378.1648, %.loopexit677.thread ] ; 3 uses
  %.sroa.10.0560580600 = phi i64 [ 0, %.thread ], [ %.sroa.882.2642.fr, %.loopexit677 ], [ %.sroa.882.2642.fr, %.loopexit677.thread ] ; 6 uses
  %.sroa.0126.0558581599 = phi ptr [ %.sroa.7107.8.copyload, %.thread ], [ %.sroa.0126.0.ph, %.loopexit677 ], [ %.sroa.0126.0.ph, %.loopexit677.thread ]
  %.sroa.8129.0556582598 = phi i64 [ %.sroa.8108.8.copyload, %.thread ], [ %.sroa.8129.0.ph, %.loopexit677 ], [ %.sroa.8129.0.ph, %.loopexit677.thread ]
  %i.gf = icmp ugt i64 %14, 4294967295
  br i1 %i.gf, label %bb.cg, label %bb.cf

bb.ce:                                            ; preds = %.loopexit677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas6_0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.cd
  %i.gg = icmp eq i64 %14, 0
  br i1 %i.gg, label %bb.ch, label %bb.ci

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !654
  store ptr %i.v, ptr %i.a, align 8, !noalias !654
  %.sroa.42.0..sroa_idx.i455 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i455, align 8, !noalias !654
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gh, ptr noundef nonnull @13, ptr noundef nonnull %i.a)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %.loopexit677.thread, %bb.cf
  %15 = phi i64 [ %10, %bb.cf ], [ %i.fi, %.loopexit677.thread ]
  %16 = phi i64 [ %11, %bb.cf ], [ %i.fj, %.loopexit677.thread ]
  %17 = phi i64 [ %12, %bb.cf ], [ %i.fk, %.loopexit677.thread ]
  %18 = phi i64 [ %13, %bb.cf ], [ %i.fk, %.loopexit677.thread ]
  %.sroa.075.2652829849 = phi i32 [ %.sroa.075.2652, %bb.cf ], [ %.sroa.075.2653, %.loopexit677.thread ]
  %.sroa.882.2641830848 = phi i64 [ %.sroa.882.2641, %bb.cf ], [ %.sroa.882.2642.fr, %.loopexit677.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aq

bb.ci:                                            ; preds = %bb.cf
  %.sroa.8129.0556582598.fr.le = freeze i64 %.sroa.8129.0556582598 ; 2 uses
  %i.gi = trunc nuw i64 %14 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.0115.0564578602, ptr %i.dx, align 8
  store i64 %.sroa.071.0.ph, ptr %i.s, align 8
  store i32 %i.gi, ptr %i.dy, align 4
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk18write_lookup_entryINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gj = load i64, ptr %i.t, align 8, !range !7, !noundef !5
  %.not421 = icmp eq i64 %i.gj, -1
  br i1 %.not421, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cc

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %.not.i566577603, label %.loopexit673, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.ap, label %bb.cn, label %.preheader672

.preheader672:                                    ; preds = %bb.cm
  %i.gk = icmp eq i64 %.sroa.10.0560580600, 0
  br i1 %i.gk, label %.loopexit673, label %.lr.ph735

.loopexit673:                                     ; preds = %bb.cy, %.preheader672, %bb.da, %bb.db, %bb.cl
  %i.gl = icmp eq i64 %.sroa.8129.0556582598.fr.le, 0
  %or.cond741 = or i1 %.not.i450604, %i.gl
  br i1 %or.cond741, label %.loopexit669, label %.lr.ph740

bb.cn:                                            ; preds = %bb.cm
  %i.gm = load i64, ptr %i.al, align 8, !range !17, !noundef !5
  %i.gn = load i64, ptr %i.dz, align 8, !noundef !5 ; 4 uses
  %i.go = icmp sgt i64 %i.gn, -1
  call void @llvm.assume(i1 %i.go)
  %i.gp = sub nsw i64 %i.gm, %i.gn
  %i.gq = icmp ult i64 %.sroa.10.0560580600, %i.gp
  br i1 %i.gq, label %bb.da, label %bb.cz, !prof !13

.lr.ph735:                                        ; preds = %.preheader672, %bb.cy
  %.sroa.8349.0734 = phi i64 [ %i.gt, %bb.cy ], [ %.sroa.10.0560580600, %.preheader672 ] ; 3 uses
  %.sroa.0343.0733 = phi ptr [ %i.gs, %bb.cy ], [ %.sroa.0117.0562579601, %.preheader672 ] ; 3 uses
  %i.gr = call i64 @llvm.umin.i64(i64 %.sroa.8349.0734, i64 49152) ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0343.0733, i64 %i.gr
  %i.gt = sub i64 %.sroa.8349.0734, %i.gr         ; 2 uses
  store i64 0, ptr %i.ds, align 8
  %.lhs.trunc664 = trunc nuw i64 %i.gr to i16     ; 2 uses
  %i.gu = urem i16 %.lhs.trunc664, 6
  %narrow = sub i16 %.lhs.trunc664, %i.gu
  %.idx743 = zext i16 %narrow to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0343.0733, i64 %.idx743
  %i.gw = icmp ult i64 %.sroa.8349.0734, 6
  br i1 %i.gw, label %._crit_edge732, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460: ; preds = %.lr.ph735, %bb.cr
  %i.gx = phi i64 [ %i.hn, %bb.cr ], [ 0, %.lr.ph735 ]
  %.sroa.0205.0731 = phi ptr [ %i.gy, %bb.cr ], [ %.sroa.0343.0733, %.lr.ph735 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0205.0731, i64 6 ; 2 uses
  %.sroa.0355.0.copyload = load i32, ptr %.sroa.0205.0731, align 1
  %i.gz = zext i32 %.sroa.0355.0.copyload to i64  ; 3 uses
  %i.ha = load i64, ptr %i.bd, align 8, !noundef !5 ; 2 uses
  %i.hb = icmp ugt i64 %i.ha, %i.gz
  br i1 %i.hb, label %bb.co, label %bb.cp

._crit_edge732:                                   ; preds = %bb.cr, %.lr.ph735
  %i.hc = phi i64 [ 0, %.lr.ph735 ], [ %i.hn, %bb.cr ] ; 4 uses
  %i.hd = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.he = load i64, ptr %i.al, align 8, !range !17, !noundef !5
  %i.hf = load i64, ptr %i.dz, align 8, !noundef !5 ; 4 uses
  %i.hg = icmp sgt i64 %i.hf, -1
  call void @llvm.assume(i1 %i.hg)
  %i.hh = sub nsw i64 %i.he, %i.hf
  %i.hi = icmp ult i64 %i.hc, %i.hh
  br i1 %i.hi, label %bb.cv, label %bb.cu, !prof !13

bb.co:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460
  %i.hj = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.gz
  %i.hl = load i32, ptr %i.hk, align 4, !noundef !5 ; 2 uses
  %i.hm = icmp eq i32 %i.hl, -1
  br i1 %i.hm, label %bb.cr, label %bb.cs

bb.cp:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gz, i64 noundef %i.ha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #27
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp, %bb.ao, %bb.ak
  unreachable

bb.cr:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464, %bb.co
  %i.hn = phi i64 [ %i.ia, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464 ], [ %i.gx, %bb.co ] ; 2 uses
  %i.ho = icmp eq ptr %i.gy, %i.gv
  br i1 %i.ho, label %._crit_edge732, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit460

bb.cs:                                            ; preds = %bb.co
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 4)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit

bb.ct:                                            ; preds = %bb.cs
  %i.hp = load i64, ptr %i.ds, align 8, !alias.scope !655, !noundef !5 ; 2 uses
  %i.hq = icmp sgt i64 %i.hp, -1
  call void @llvm.assume(i1 %i.hq)
  %i.hr = load ptr, ptr %i.dr, align 8, !alias.scope !655, !nonnull !5, !noundef !5
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hp
  store i32 %i.hl, ptr %i.hs, align 1
  %.pre.i = load i64, ptr %i.ds, align 8, !alias.scope !655
  %i.ht = add i64 %.pre.i, 4
  store i64 %i.ht, ptr %i.ds, align 8, !alias.scope !655
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 2)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464 unwind label %.loopexit.split-lp.loopexit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit464: ; preds = %bb.ct
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0205.0731, i64 4
  %i.hv = load i64, ptr %i.ds, align 8, !alias.scope !656, !noundef !5 ; 2 uses
  %i.hw = icmp sgt i64 %i.hv, -1
  call void @llvm.assume(i1 %i.hw)
  %i.hx = load ptr, ptr %i.dr, align 8, !alias.scope !656, !nonnull !5, !noundef !5
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hv
  %i.hz = load i16, ptr %i.hu, align 1
  store i16 %i.hz, ptr %i.hy, align 1
  %.pre.i462 = load i64, ptr %i.ds, align 8, !alias.scope !656
  %i.ia = add i64 %.pre.i462, 2                   ; 2 uses
  store i64 %i.ia, ptr %i.ds, align 8, !alias.scope !656
  br label %bb.cr

bb.cu:                                            ; preds = %._crit_edge732
  %i.ib = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.hc)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.cv:                                            ; preds = %._crit_edge732
  %i.ic = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull align 1 %i.hd, i64 %i.hc, i1 false)
  %i.ie = add i64 %i.hf, %i.hc
  store i64 %i.ie, ptr %i.dz, align 8
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  %.not423 = icmp eq ptr %i.ib, null
  br i1 %.not423, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i64 0, ptr %0, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.4357.0..sroa_idx, align 8
  br label %bb.cc

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %i.if = icmp eq i64 %i.gt, 0
  br i1 %i.if, label %.loopexit673, label %.lr.ph735

bb.cz:                                            ; preds = %bb.cn
  %i.ig = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0117.0562579601, i64 noundef %.sroa.10.0560580600)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.da:                                            ; preds = %bb.cn
  %i.ih = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull align 1 %.sroa.0117.0562579601, i64 %.sroa.10.0560580600, i1 false)
  %i.ij = add i64 %i.gn, %.sroa.10.0560580600
  store i64 %i.ij, ptr %i.dz, align 8
  br label %.loopexit673

bb.db:                                            ; preds = %bb.cz
  %.not424 = icmp eq ptr %i.ig, null
  br i1 %.not424, label %.loopexit673, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i64 0, ptr %0, align 8
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ig, ptr %.sroa.4341.0..sroa_idx, align 8
  br label %bb.cc

.loopexit669:                                     ; preds = %bb.dp, %.loopexit673
  %i.ik = mul nuw nsw i64 %14, 6
  %i.il = add i64 %i.ik, %.sroa.071.0.ph
  %i.im = add i64 %.sroa.073.0.ph, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.outer

.lr.ph740:                                        ; preds = %.loopexit673, %bb.dp
  %.sroa.5362.0739 = phi i64 [ %i.ip, %bb.dp ], [ %.sroa.8129.0556582598.fr.le, %.loopexit673 ] ; 3 uses
  %.sroa.0359.0738 = phi ptr [ %i.io, %bb.dp ], [ %.sroa.0126.0558581599, %.loopexit673 ] ; 3 uses
  %i.in = call i64 @llvm.umin.i64(i64 %.sroa.5362.0739, i64 49152) ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0359.0738, i64 %i.in
  %i.ip = sub i64 %.sroa.5362.0739, %i.in         ; 2 uses
  store i64 0, ptr %i.ds, align 8
  %.lhs.trunc660 = trunc nuw i64 %i.in to i16     ; 2 uses
  %i.iq = urem i16 %.lhs.trunc660, 6
  %narrow745 = sub i16 %.lhs.trunc660, %i.iq
  %.idx744 = zext i16 %narrow745 to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0359.0738, i64 %.idx744
  %i.is = icmp ult i64 %.sroa.5362.0739, 6
  br i1 %i.is, label %._crit_edge737, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470: ; preds = %.lr.ph740, %bb.di
  %.sroa.0216.0736 = phi ptr [ %i.it, %bb.di ], [ %.sroa.0359.0738, %.lr.ph740 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0216.0736, i64 6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.0365.0.copyload = load i32, ptr %.sroa.0216.0736, align 1 ; 3 uses
  store i32 %.sroa.0365.0.copyload, ptr %i.r, align 4
  %i.iu = zext i32 %.sroa.0365.0.copyload to i64
  %.not426 = icmp samesign ugt i64 %i.bm, %i.iu
  br i1 %.not426, label %bb.dd, label %bb.de

._crit_edge737:                                   ; preds = %bb.di, %.lr.ph740
  %i.iv = phi i64 [ 0, %.lr.ph740 ], [ %i.jp, %bb.di ] ; 4 uses
  %i.iw = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ix = load i64, ptr %i.al, align 8, !range !17, !noundef !5
  %i.iy = load i64, ptr %i.dz, align 8, !noundef !5 ; 4 uses
  %i.iz = icmp sgt i64 %i.iy, -1
  call void @llvm.assume(i1 %i.iz)
  %i.ja = sub nsw i64 %i.ix, %i.iy
  %i.jb = icmp ult i64 %i.iv, %i.ja
  br i1 %i.jb, label %bb.dm, label %bb.dl, !prof !13

bb.dd:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470
  %i.jc = add i32 %.sroa.0365.0.copyload, %.sroa.020.0.lcssa ; 2 uses
  %i.jd = icmp ult i32 %i.jc, %.sroa.020.0.lcssa
  br i1 %i.jd, label %bb.dg, label %bb.df, !prof !14

bb.de:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4369.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @34, ptr noundef nonnull %i.p)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit472 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.dd
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 4)
          to label %bb.dh unwind label %.loopexit

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas8_0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.df
  %i.je = load i64, ptr %i.ds, align 8, !alias.scope !657, !noundef !5 ; 2 uses
  %i.jf = icmp sgt i64 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = load ptr, ptr %i.dr, align 8, !alias.scope !657, !nonnull !5, !noundef !5
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.je
  store i32 %i.jc, ptr %i.jh, align 1
  %.pre.i473 = load i64, ptr %i.ds, align 8, !alias.scope !657
  %i.ji = add i64 %.pre.i473, 4
  store i64 %i.ji, ptr %i.ds, align 8, !alias.scope !657
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 2)
          to label %bb.di unwind label %.loopexit

bb.di:                                            ; preds = %bb.dh
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0216.0736, i64 4
  %i.jk = load i64, ptr %i.ds, align 8, !alias.scope !658, !noundef !5 ; 2 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = load ptr, ptr %i.dr, align 8, !alias.scope !658, !nonnull !5, !noundef !5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  %i.jo = load i16, ptr %i.jj, align 1
  store i16 %i.jo, ptr %i.jn, align 1
  %.pre.i476 = load i64, ptr %i.ds, align 8, !alias.scope !658
  %i.jp = add i64 %.pre.i476, 2                   ; 2 uses
  store i64 %i.jp, ptr %i.ds, align 8, !alias.scope !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.jq = icmp eq ptr %i.it, %i.ir
  br i1 %i.jq, label %._crit_edge737, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCsbzNSmZPCnTx_10tgrep_core.exit470

bb.dj:                                            ; preds = %bb.dg
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
  br label %bb.dk

bb.dk:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit472, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.cc

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit472: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.dk

bb.dl:                                            ; preds = %._crit_edge737
  %i.jr = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iw, i64 noundef %i.iv)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.dm:                                            ; preds = %._crit_edge737
  %i.js = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.iy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jt, ptr nonnull align 1 %i.iw, i64 %i.iv, i1 false)
  %i.ju = add i64 %i.iy, %i.iv
  store i64 %i.ju, ptr %i.dz, align 8
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.not427 = icmp eq ptr %i.jr, null
  br i1 %.not427, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 0, ptr %0, align 8
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jr, ptr %.sroa.4382.0..sroa_idx, align 8
  br label %bb.cc

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  %i.jv = icmp eq i64 %i.ip, 0
  br i1 %i.jv, label %.loopexit669, label %.lr.ph740

bb.dq:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !654
  %.sroa.7169.0.copyload = load i32, ptr %i.gh, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5339.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9172.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 3, ptr %0, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7169.0.copyload, ptr %.sroa.4338.0..sroa_idx, align 8
  br label %bb.cc

bb.dr:                                            ; preds = %bb.ce
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5330.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8190.0..sroa_idx, i64 16, i1 false)
  %i.jw = load <2 x i64>, ptr %i.f, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store <2 x i64> %i.jw, ptr %0, align 8
  br label %bb.cc

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit448: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.bq

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.bq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.dt unwind label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body481 unwind label %bb.du

bb.dt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit483 unwind label %bb.ai

bb.du:                                            ; preds = %bb.ds
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit483: ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!453 = !{!333, !332, !331}
!454 = !{!333, !331}
!455 = !{!335}
!456 = !{!337}
!457 = !{!333}
!458 = !{!339}
!459 = !{!341}
!460 = !{!341, !339, !337, !335, !331}
!461 = !{!333, !332}
!462 = !{!341, !339, !337, !335, !333, !331}
!463 = !{!343}
!464 = !{!345}
!465 = !{!345, !343, !337, !335, !331}
!466 = !{!345, !343, !337, !335, !333, !331}
!467 = !{!347}
!468 = !{!349}
!469 = !{!351, !349, !350, !333, !332, !331}
!470 = !{!351, !350, !333, !332, !331}
!471 = !{!351, !349, !350, !333, !331}
!472 = !{!351, !349, !333, !331}
!473 = !{!349, !350, !333, !332, !331}
!474 = !{!359, !357, !355, !353, !351, !349, !333, !331}
!475 = !{!363, !361, !355, !353, !351, !349, !333, !331}
!476 = !{!351, !333, !331}
!477 = !{!366, !365}
!478 = !{!366}
!479 = !{!368}
!480 = !{!371, !370, !366, !365}
!481 = !{!365}
!482 = !{!373}
!483 = !{!375}
!484 = !{i8 0, i8 44}
!485 = !{!378}
!486 = !{!379}
!487 = !{!378, !380, !379}
!488 = !{!378, !379}
!489 = !{!380, !379}
!490 = !{!382}
!491 = !{!384}
!492 = !{!386}
!493 = !{!388}
!494 = !{!388, !386, !384, !382, !379}
!495 = !{!378, !380}
!496 = !{!388, !386, !384, !382, !378, !379}
!497 = !{!390}
!498 = !{!392}
!499 = !{!392, !390, !384, !382, !379}
!500 = !{!392, !390, !384, !382, !378, !379}
!501 = !{!394}
!502 = !{!396}
!503 = !{!398, !397, !378, !380, !379}
!504 = !{!398, !396, !397, !378, !379}
!505 = !{!401, !400, !398, !396, !397, !378, !380, !379}
!506 = !{!401, !398, !396, !378, !379}
!507 = !{!398, !396, !378, !379}
!508 = !{!398, !396, !397, !378, !380, !379}
!509 = !{!400, !398, !396, !397, !378, !380, !379}
!510 = !{!409, !407, !405, !403, !398, !396, !378, !379}
!511 = !{!413, !411, !405, !403, !398, !396, !378, !379}
!512 = !{!398, !378, !379}
!513 = !{!415}
!514 = !{!417}
!515 = !{!418}
!516 = !{!417, !419, !418}
!517 = !{!417, !418}
!518 = !{!419, !418}
!519 = !{!421}
!520 = !{!423}
!521 = !{!425}
!522 = !{!427}
!523 = !{!427, !425, !423, !421, !418}
!524 = !{!417, !419}
!525 = !{!427, !425, !423, !421, !417, !418}
!526 = !{!429}
!527 = !{!431}
!528 = !{!431, !429, !423, !421, !418}
!529 = !{!431, !429, !423, !421, !417, !418}
!530 = !{!433}
!531 = !{!435}
!532 = !{!437, !435, !436, !417, !419, !418}
!533 = !{!437, !436, !417, !419, !418}
!534 = !{!437, !435, !436, !417, !418}
!535 = !{!437, !435, !417, !418}
!536 = !{!435, !436, !417, !419, !418}
!537 = !{!445, !443, !441, !439, !437, !435, !417, !418}
!538 = !{!449, !447, !441, !439, !437, !435, !417, !418}
!539 = !{!437, !417, !418}
!540 = !{!451}
!541 = distinct !{!541, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_"}
!542 = distinct !{!542, !541, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_: argument 0"}
!543 = distinct !{!543, i1 false, !"_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_9IndexRead16verified_version"}
!544 = distinct !{!544, !543, !"_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_9IndexRead16verified_version: argument 1"}
!545 = distinct !{!545, !543, !"_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_9IndexRead16verified_version: argument 0"}
!546 = distinct !{!546, i1 false, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB1X_9IndexRead16verified_versions_0EB1Z_"}
!547 = distinct !{!547, !546, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB1X_9IndexRead16verified_versions_0EB1Z_: argument 0"}
!548 = distinct !{!548, i1 false, !"_RNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB7_9IndexRead16verified_versions_0B9_"}
!549 = distinct !{!549, !548, !"_RNCNvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB7_9IndexRead16verified_versions_0B9_: argument 0"}
!550 = distinct !{!550, i1 false, !"_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!551 = distinct !{!551, !550, !"_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!552 = distinct !{!552, !550, !"_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!553 = distinct !{!553, i1 false, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbzNSmZPCnTx_10tgrep_core"}
!554 = distinct !{!554, !553, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!555 = distinct !{!555, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core"}
!556 = distinct !{!556, !555, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!557 = !{!542}
!558 = !{!544}
!559 = !{!545}
!560 = !{!545, !544}
!561 = !{!547}
!562 = !{!547, !545, !544}
!563 = !{!549, !547, !545, !544}
!564 = !{!551}
!565 = !{!552}
!566 = !{!552, !549, !547, !545, !544}
!567 = !{!552, !544}
!568 = !{!551, !549, !547, !545}
!569 = !{i32 -1, i32 1000000000}
!570 = !{!554}
!571 = !{!556}
!572 = distinct !{!572, i1 false, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!573 = distinct !{!573, !572, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!574 = distinct !{!574, !572, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!575 = distinct !{!575, i1 false, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEE3newB14_"}
!576 = distinct !{!576, !575, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEE3newB14_: argument 0"}
!577 = distinct !{!577, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!578 = distinct !{!578, !577, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!579 = distinct !{!579, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!580 = distinct !{!580, !579, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!581 = distinct !{!581, i1 false, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_"}
!582 = distinct !{!582, !581, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_: argument 1"}
!583 = distinct !{!583, !581, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_: argument 0"}
!584 = distinct !{!584, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!585 = distinct !{!585, !584, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!586 = distinct !{!586, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!587 = distinct !{!587, !586, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!588 = distinct !{!588, !572, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1:h.rot"}
!589 = distinct !{!589, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!590 = distinct !{!590, !589, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!591 = distinct !{!591, !589, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!592 = distinct !{!592, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_filess_0B5_"}
!593 = distinct !{!593, !592, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_filess_0B5_: argument 0"}
!594 = distinct !{!594, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!595 = distinct !{!595, !594, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!596 = distinct !{!596, !594, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!597 = distinct !{!597, !581, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_: argument 1:h.rot"}
!598 = distinct !{!598, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!599 = distinct !{!599, !598, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!600 = distinct !{!600, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!601 = distinct !{!601, !600, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!602 = !{!"address", !"read_provenance"}
!603 = !{!573}
!604 = !{!574}
!605 = !{!574, !573}
!606 = !{!576}
!607 = !{!578}
!608 = !{!580}
!609 = !{!580, !578}
!610 = !{!582}
!611 = !{!583}
!612 = !{!585}
!613 = !{!587}
!614 = !{!587, !585}
!615 = !{!588}
!616 = !{!590}
!617 = !{!591}
!618 = !{!593}
!619 = !{!595}
!620 = !{!596}
!621 = !{!597}
!622 = !{!599}
!623 = !{!601}
!624 = !{!601, !599}
!625 = distinct !{!625, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!626 = distinct !{!626, !625, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!627 = distinct !{!627, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!628 = distinct !{!628, !627, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!629 = distinct !{!629, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas0_0B5_"}
!630 = distinct !{!630, !629, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas0_0B5_: argument 0"}
!631 = distinct !{!631, i1 false, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas9_0ENvMB1F_B1D_6as_strENtNtNtBa_6traits8iterator8Iterator5chainIB4_B1d_B3n_EEB2m_"}
!632 = distinct !{!632, !631, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas9_0ENvMB1F_B1D_6as_strENtNtNtBa_6traits8iterator8Iterator5chainIB4_B1d_B3n_EEB2m_: argument 1"}
!633 = distinct !{!633, !631, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas9_0ENvMB1F_B1D_6as_strENtNtNtBa_6traits8iterator8Iterator5chainIB4_B1d_B3n_EEB2m_: argument 0"}
!634 = distinct !{!634, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas4_0B5_"}
!635 = distinct !{!635, !634, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas4_0B5_: argument 0"}
!636 = distinct !{!636, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas7_0B5_"}
!637 = distinct !{!637, !636, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder22merge_index_with_deltas7_0B5_: argument 0"}
!638 = distinct !{!638, i1 false, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!639 = distinct !{!639, !638, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!640 = distinct !{!640, i1 false, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!641 = distinct !{!641, !640, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!642 = distinct !{!642, i1 false, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!643 = distinct !{!643, !642, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!644 = distinct !{!644, i1 false, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!645 = distinct !{!645, !644, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!646 = !{!626}
!647 = !{!628}
!648 = !{!630}
!649 = !{!632}
!650 = !{!633, !632}
!651 = !{!633}
!652 = !{!635}
!653 = !{!"branch_weights", !"expected", i32 2457019, i32 2145026629}
!654 = !{!637}
!655 = !{!639}
!656 = !{!641}
!657 = !{!643}
!658 = !{!645}
!659 = distinct !{!659, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_index0B5_"}
!660 = distinct !{!660, !659, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_index0B5_: argument 0"}
!661 = distinct !{!661, i1 false, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB1j_B1h_6as_strENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsbzNSmZPCnTx_10tgrep_core"}
!662 = distinct !{!662, !661, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB1j_B1h_6as_strENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!663 = distinct !{!663, i1 false, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core"}
!664 = distinct !{!664, !663, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!665 = distinct !{!665, i1 false, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!666 = distinct !{!666, !665, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!667 = distinct !{!667, !665, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!668 = distinct !{!668, i1 false, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!669 = distinct !{!669, !668, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!670 = distinct !{!670, i1 false, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core"}
!671 = distinct !{!671, !670, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!672 = distinct !{!672, i1 false, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!673 = distinct !{!673, !672, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!674 = distinct !{!674, !672, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!675 = distinct !{!675, i1 false, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!676 = distinct !{!676, !675, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!677 = distinct !{!677, i1 false, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core"}
!678 = distinct !{!678, !677, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0ECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!679 = distinct !{!679, i1 false, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!680 = distinct !{!680, !679, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!681 = distinct !{!681, !679, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!682 = distinct !{!682, i1 false, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!683 = distinct !{!683, !682, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!684 = distinct !{!684, i1 false, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs1_0EB1x_"}
!685 = distinct !{!685, !684, !"_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE6map_orjNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs1_0EB1x_: argument 0"}
!686 = distinct !{!686, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs3_0B5_"}
!687 = distinct !{!687, !686, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs3_0B5_: argument 0"}
!688 = distinct !{!688, i1 false, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs4_0B5_"}
!689 = distinct !{!689, !688, !"_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23append_overlay_to_indexs4_0B5_: argument 0"}
!690 = distinct !{!690, i1 false, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!691 = distinct !{!691, !690, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!692 = !{!660}
!693 = !{!662}
!694 = !{!669, !667, !666, !664}
!695 = !{!676, !674, !673, !671}
!696 = !{!683, !681, !680, !678}
!697 = !{!685}
!698 = !{!687}
!699 = !{!689}
!700 = !{!691}
!701 = distinct !{!701, i1 false, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_"}
!702 = distinct !{!702, !701, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEE3newB14_: argument 0"}
!703 = !{!702}
!704 = distinct !{!704, i1 false, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_"}
!705 = distinct !{!705, !704, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 0"}
!706 = distinct !{!706, !704, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 3"}
!707 = distinct !{!707, !704, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 2"}
!708 = distinct !{!708, !704, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder17write_index_filesINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvMB2c_B2a_6as_strEEB4_: argument 1"}
!709 = distinct !{!709, i1 false, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmEB1q_"}
!710 = distinct !{!710, !709, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmEB1q_: argument 0"}
!711 = distinct !{!711, !709, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmEB1q_: argument 1"}
!712 = distinct !{!712, i1 false, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1s_"}
!713 = distinct !{!713, !712, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1s_: argument 0"}
!714 = distinct !{!714, i1 false, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!715 = distinct !{!715, !714, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!716 = distinct !{!716, !714, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!717 = distinct !{!717, i1 false, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!718 = distinct !{!718, !717, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!719 = !{!705}
!720 = !{!706}
!721 = !{!705, !707, !706}
!722 = !{!708, !707, !706}
!723 = !{!705, !708, !707, !706}
!724 = !{!705, !707}
!725 = !{!710, !706}
!726 = !{!711, !705, !708, !707}
!727 = !{!705, !708, !707}
!728 = !{!718, !716, !715, !713, !705, !707}
!729 = distinct !{!729, i1 false, !"_RNvXsr_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidenceNtNtCsf3Ta7LF998c_4core7default7Default7default"}
!730 = distinct !{!730, !729, !"_RNvXsr_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidenceNtNtCsf3Ta7LF998c_4core7default7Default7default: argument 0"}
!731 = distinct !{!731, i1 false, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!732 = distinct !{!732, !731, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!733 = distinct !{!733, !731, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!734 = distinct !{!734, !731, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1:h.rot"}
!735 = !{!730}
!736 = !{!732}
!737 = !{!733}
!738 = !{!734}
!739 = distinct !{!739, i1 false, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting16sort_unstable_byNCNvNtBz_7builder28write_index_v2_from_postings0EBz_"}
!740 = distinct !{!740, !739, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPosting16sort_unstable_byNCNvNtBz_7builder28write_index_v2_from_postings0EBz_: argument 0"}
!741 = distinct !{!741, i1 false, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder21count_sorted_trigrams"}
!742 = distinct !{!742, !741, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder21count_sorted_trigrams: argument 0"}
!743 = distinct !{!743, !768}
!744 = distinct !{!744, i1 false, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_"}
!745 = distinct !{!745, !744, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 0"}
!746 = distinct !{!746, !744, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 3"}
!747 = distinct !{!747, !744, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 2"}
!748 = distinct !{!748, !744, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_: argument 1"}
!749 = distinct !{!749, i1 false, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_"}
!750 = distinct !{!750, !749, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 1"}
!751 = distinct !{!751, !749, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 2"}
!752 = distinct !{!752, !749, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 3"}
!753 = distinct !{!753, !749, !"_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_: argument 0"}
!754 = distinct !{!754, i1 false, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core"}
!755 = distinct !{!755, !754, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!756 = distinct !{!756, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!757 = distinct !{!757, !756, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!758 = distinct !{!758, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!759 = distinct !{!759, !758, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!760 = distinct !{!760, i1 false, !"_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core"}
!761 = distinct !{!761, !760, !"_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!762 = distinct !{!762, !760, !"_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!763 = distinct !{!763, i1 false, !"_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE25write_to_buffer_uncheckedCsbzNSmZPCnTx_10tgrep_core"}
!764 = distinct !{!764, !763, !"_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE25write_to_buffer_uncheckedCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!765 = distinct !{!765, !763, !"_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE25write_to_buffer_uncheckedCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!766 = !{!740}
!767 = !{!742}
!768 = !{!"llvm.loop.peeled.count", i32 1}
!769 = !{!745}
!770 = !{!746}
!771 = !{!745, !747, !746}
!772 = !{!748, !747, !746}
!773 = !{!745, !748, !747, !746}
!774 = !{!745, !746}
!775 = !{!745, !748, !747}
!776 = !{!750}
!777 = !{!751}
!778 = !{!752}
!779 = !{!753, !750, !751, !745, !748, !747, !746}
!780 = !{!751, !746}
!781 = !{!753, !750, !752, !745, !748, !747}
!782 = !{!755, !752}
!783 = !{!753, !751, !745, !747, !746}
!784 = !{!757, !752}
!785 = !{!759, !752}
!786 = !{!761}
!787 = !{!761, !750}
!788 = !{!762, !753, !751, !752, !745, !748, !747, !746}
!789 = !{!764}
!790 = !{!764, !761, !750}
!791 = !{!765, !762, !753, !751, !752, !745, !748, !747, !746}
!792 = !{!764, !761, !753, !751, !745, !747, !746}
!793 = distinct !{!793, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!794 = distinct !{!794, !793, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!795 = distinct !{!795, !793, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!796 = distinct !{!796, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core"}
!797 = distinct !{!797, !796, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!798 = distinct !{!798, i1 false, !"_RNvXNtCsbzNSmZPCnTx_10tgrep_core6walkerNtB2_11WalkOptionsNtNtCsf3Ta7LF998c_4core7default7Default7default"}
!799 = distinct !{!799, !798, !"_RNvXNtCsbzNSmZPCnTx_10tgrep_core6walkerNtB2_11WalkOptionsNtNtCsf3Ta7LF998c_4core7default7Default7default: argument 0"}
!800 = distinct !{!800, i1 false, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtBQ_4path7PathBufEINtNtNtBQ_4sync6poison11PoisonErrorBH_EE6unwrapCsbzNSmZPCnTx_10tgrep_core"}
!801 = distinct !{!801, !800, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtBQ_4path7PathBufEINtNtNtBQ_4sync6poison11PoisonErrorBH_EE6unwrapCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!802 = distinct !{!802, !800, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtBQ_4path7PathBufEINtNtNtBQ_4sync6poison11PoisonErrorBH_EE6unwrapCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!803 = distinct !{!803, i1 false, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps"}
!804 = distinct !{!804, !803, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 3"}
!805 = distinct !{!805, !803, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 2"}
!806 = distinct !{!806, !803, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 1"}
!807 = distinct !{!807, !803, !"_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder23walked_paths_for_stamps: argument 0"}
!808 = distinct !{!808, i1 false, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core"}
!809 = distinct !{!809, !808, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!810 = distinct !{!810, !808, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!811 = distinct !{!811, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!812 = distinct !{!812, !811, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!813 = distinct !{!813, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!814 = distinct !{!814, !813, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!815 = distinct !{!815, i1 false, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_"}
!816 = distinct !{!816, !815, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_: argument 1"}
!817 = distinct !{!817, !815, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_: argument 0"}
!818 = distinct !{!818, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!819 = distinct !{!819, !818, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!820 = distinct !{!820, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!821 = distinct !{!821, !820, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!822 = distinct !{!822, !808, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core: argument 1:h.rot"}
!823 = distinct !{!823, i1 false, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core"}
!824 = distinct !{!824, !823, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!825 = distinct !{!825, !823, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEE8push_mutCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!826 = distinct !{!826, i1 false, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_"}
!827 = distinct !{!827, !826, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_: argument 1"}
!828 = distinct !{!828, !826, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_: argument 2"}
!829 = distinct !{!829, !826, !"_RINvMs_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_11PostingSink9push_fileINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtB7_7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB25_13TrigramHasherEEEB7_: argument 0"}
!830 = distinct !{!830, i1 false, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB16_13TrigramHasherEENtNtNtNtB1Z_4iter6traits7collect12IntoIterator9into_iterB18_"}
!831 = distinct !{!831, !830, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB16_13TrigramHasherEENtNtNtNtB1Z_4iter6traits7collect12IntoIterator9into_iterB18_: argument 1"}
!832 = distinct !{!832, !830, !"_RNvXsx_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB16_13TrigramHasherEENtNtNtNtB1Z_4iter6traits7collect12IntoIterator9into_iterB18_: argument 0"}
!833 = distinct !{!833, i1 false, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3mapNtNtB14_8external14TrigramPostingNCINvMs_NtB14_7builderNtB3v_11PostingSink9push_fileINtB6_7HashMapmB10_INtNtB1Z_4hash18BuildHasherDefaultNtB12_13TrigramHasherEEE0EB14_"}
!834 = distinct !{!834, !833, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3mapNtNtB14_8external14TrigramPostingNCINvMs_NtB14_7builderNtB3v_11PostingSink9push_fileINtB6_7HashMapmB10_INtNtB1Z_4hash18BuildHasherDefaultNtB12_13TrigramHasherEEE0EB14_: argument 0"}
!835 = distinct !{!835, !833, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoItermNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3mapNtNtB14_8external14TrigramPostingNCINvMs_NtB14_7builderNtB3v_11PostingSink9push_fileINtB6_7HashMapmB10_INtNtB1Z_4hash18BuildHasherDefaultNtB12_13TrigramHasherEEE0EB14_: argument 1"}
!836 = distinct !{!836, !815, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_: argument 1:h.rot"}
!837 = distinct !{!837, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_"}
!838 = distinct !{!838, !837, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetEEB1d_: argument 0"}
!839 = distinct !{!839, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!840 = distinct !{!840, !839, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!841 = distinct !{!841, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_"}
!842 = distinct !{!842, !841, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_: argument 0"}
!843 = distinct !{!843, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_"}
!844 = distinct !{!844, !843, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_: argument 0"}
!845 = distinct !{!845, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!846 = distinct !{!846, !845, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!847 = distinct !{!847, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_"}
!848 = distinct !{!848, !847, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEEB1z_: argument 0"}
!849 = distinct !{!849, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_"}
!850 = distinct !{!850, !849, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreEEB1d_: argument 0"}
!851 = distinct !{!851, i1 false, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_"}
!852 = distinct !{!852, !851, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore21CaseInsensitiveIgnoreENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_: argument 0"}
!853 = !{!794}
end_hunk_1
