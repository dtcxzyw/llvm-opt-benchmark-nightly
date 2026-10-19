Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.09?download=true
inline.NumInlined: 469
inline.NumDeleted: 239
begin_hunk_0_@_RNvNtCs7BtpbLEd5q3_9elfshaker4show3run:bb.a
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body121:                                         ; preds = %bb.cv, %bb.ap, %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit
  %.pn91 = phi { ptr, i32 } [ %.pn.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit ], [ %i.cx, %bb.ap ], [ %i.cz, %bb.as ], [ %i.gx, %bb.cv ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %.body152 unwind label %bb.df

bb.as:                                            ; preds = %bb.cw, %bb.aq, %bb.cp, %bb.av, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body121

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dd
  store ptr %i.db, ptr %i.ab, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.de, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ai, ptr %i.dg, align 8
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0ENtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtB6_6option6OptionzENCINvXsI_B3E_IB3C_INtNtB1B_3vec3VecB2R_EEINtNtNtB4_6traits7collect12FromIteratorIB3C_B2R_EE9from_iterBQ_E0B4h_EB2g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab)
          to label %bb.at unwind label %bb.as

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dh = load i64, ptr %i.ac, align 8, !range !10, !noundef !5
  %.not85 = icmp eq i64 %i.dh, -1
  br i1 %.not85, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.di = invoke noundef nonnull ptr @_RNvNtNtCs3SRGcsf4wgR_4rand4rngs6thread3rng()
          to label %bb.ay unwind label %bb.ax     ; 4 uses

bb.av:                                            ; preds = %bb.at
  %i.dj = invoke { ptr, ptr } @_RNvXsi_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 54)
          to label %bb.aw unwind label %bb.as     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0
  %i.dl = extractvalue { ptr, ptr } %i.dj, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.cw, %bb.aw
  %.sroa.9.0 = phi ptr [ %i.dl, %bb.aw ], [ %.sroa.9.2, %bb.cw ]
  %.sroa.0.0 = phi ptr [ %i.dk, %bb.aw ], [ %.sroa.0.2, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body101, %bb.de, %bb.dd, %bb.bh, %.thread167, %bb.bc, %bb.bd, %bb.dg, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.dg ], [ %i.ee, %bb.bc ], [ %i.dm, %bb.ax ], [ %i.ee, %bb.bd ], [ %i.er, %bb.bh ], [ %i.hg, %bb.de ], [ %eh.lpad-body132166, %.thread167 ], [ %i.hg, %bb.dd ], [ %eh.lpad-body102, %.body101 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #26
          to label %.body121 unwind label %bb.df

bb.ax:                                            ; preds = %bb.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130, %bb.au
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit

bb.ay:                                            ; preds = %bb.au
  store ptr %i.di, ptr %i.x, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 336 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 272
  %.pre.i = load i64, ptr %i.do, align 16, !alias.scope !480
  br label %bb.az

bb.az:                                            ; preds = %.noexc127, %bb.ay
  %i.dq = phi i64 [ %.pre.i, %bb.ay ], [ %i.eb, %.noexc127 ] ; 2 uses
  %.sroa.0.06.i = phi i64 [ 0, %bb.ay ], [ %i.ec, %.noexc127 ] ; 3 uses
  %i.dr = icmp ugt i64 %i.dq, 63
  br i1 %i.dr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXs2_NtNtCs3SRGcsf4wgR_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.dp, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.dn)
          to label %.noexc126 unwind label %bb.bc

.noexc126:                                        ; preds = %bb.ba
  store i64 0, ptr %i.do, align 16, !alias.scope !481
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc126, %bb.az
  %i.ds = phi i64 [ %i.dq, %bb.az ], [ 0, %.noexc126 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ds
  %i.du = sub nuw nsw i64 64, %i.ds
  %i.dv = sub nuw nsw i64 32, %.sroa.0.06.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.06.i
  %i.dx = invoke { i64, i64 } @_RINvNtCs9KyBnLVnQBL_9rand_core5impls15fill_via_chunksmECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dt, i64 noundef %i.du, ptr noalias nofree noundef nonnull %i.dw, i64 noundef %i.dv)
          to label %.noexc127 unwind label %bb.bc ; 2 uses

.noexc127:                                        ; preds = %bb.bb
  %i.dy = extractvalue { i64, i64 } %i.dx, 0
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  %i.ea = load i64, ptr %i.do, align 16, !alias.scope !480, !noundef !5
  %i.eb = add i64 %i.ea, %i.dy                    ; 2 uses
  store i64 %i.eb, ptr %i.do, align 16, !alias.scope !480
  %i.ec = add i64 %i.dz, %.sroa.0.06.i            ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 32
  br i1 %i.ed, label %bb.az, label %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.ef = load ptr, ptr %i.x, align 8, !alias.scope !485, !nonnull !5, !noundef !5 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !485, !noundef !5
  %i.eh = add i64 %i.eg, -1                       ; 2 uses
  store i64 %i.eh, ptr %i.ef, align 8, !noalias !485
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.noexc127
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.ej = load ptr, ptr %i.x, align 8, !alias.scope !489, !nonnull !5, !noundef !5 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !489, !noundef !5
  %i.el = add i64 %i.ek, -1                       ; 2 uses
  store i64 %i.el, ptr %i.ej, align 8, !noalias !489
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130

bb.be:                                            ; preds = %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130 unwind label %bb.ax

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130: ; preds = %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  invoke void @_RINvCs7s9T68JqHVf_3hex6encodeAhj20_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.w)
          to label %bb.bf unwind label %bb.ax

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvNtCsaL1QbXo9JQH_3std3env8temp_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.bg unwind label %bb.dg

bb.bg:                                            ; preds = %bb.bf
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !5, !noundef !5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread167 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %.thread170.loopexit.split-lp

.thread170.loopexit:                              ; preds = %.noexc138, %bb.bq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread167

.thread170.loopexit.split-lp:                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread167

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !490
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !490, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !490, !noundef !5
  invoke void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ev, i64 noundef %i.ex, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, i64 4294967297)
          to label %.noexc134 unwind label %.thread170.loopexit.split-lp

.noexc134:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  %i.ey = load i64, ptr %i.i, align 8, !range !14, !noalias !490, !noundef !5
  %.not.i = icmp eq i64 %i.ey, -2
  br i1 %.not.i, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.noexc134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !490
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !491
  %i.ez = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #24, !noalias !491 ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.bm, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i, !prof !19

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc.i unwind label %bb.bn, !noalias !490

.noexc.i:                                         ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d) #26
          to label %.thread167 unwind label %bb.bo, !noalias !490

bb.bo:                                            ; preds = %bb.bn
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !490
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ez, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !490
  br label %.loopexit

bb.bp:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !490
  %i.fd = load ptr, ptr %i.eu, align 8, !noalias !490, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = load i64, ptr %i.ew, align 8, !noalias !490, !noundef !5 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.fe, 6
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.i
  %i.fg = icmp eq i64 %i.fe, 0
  br i1 %i.fg, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bp
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %.thread27.i, %.lr.ph.i
  %.sroa.02.040.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %i.fl, %.thread27.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.02.040.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !490
  %i.fm = load ptr, ptr %i.fh, align 8, !noalias !490, !nonnull !5, !noundef !5
  %i.fn = load i64, ptr %i.fi, align 8, !noalias !490, !noundef !5
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinRNtNtNtB9_3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef %i.fn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.040.i)
          to label %.noexc138 unwind label %.thread170.loopexit

.noexc138:                                        ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !490
  invoke void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs9open_fileNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc139 unwind label %.thread170.loopexit

.noexc139:                                        ; preds = %.noexc138
  %i.fo = load i32, ptr %i.f, align 8, !range !492, !noalias !490, !noundef !5
  %i.fp = trunc nuw i32 %i.fo to i1
  br i1 %i.fp, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %.noexc139
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !490, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !490
  store ptr %i.fr, ptr %i.b, align 8, !noalias !490
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !490
  %i.fs = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 8, i64 noundef 8) #24, !noalias !490 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.bs, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit15.i, !prof !19

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc18.i unwind label %bb.bt, !noalias !490

.noexc18.i:                                       ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %.thread167 unwind label %bb.bu, !noalias !490

bb.bu:                                            ; preds = %bb.bt
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !490
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit15.i: ; preds = %bb.br
  store ptr %i.fr, ptr %i.fs, align 8, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !490
  br label %bb.cg

bb.bv:                                            ; preds = %.noexc139
  %i.fw = load i32, ptr %i.fj, align 4, !range !493, !noalias !490, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !490
  store i32 %i.fw, ptr %i.g, align 4, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !490
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stdout()
          to label %bb.bx unwind label %bb.bw, !noalias !490

bb.bw:                                            ; preds = %bb.bz, %bb.bx, %bb.bv
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bx:                                            ; preds = %bb.bv
  store ptr %i.fx, ptr %i.e, align 8, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !494
  invoke void @_RINvXs_NtNtNtCs1xwejQucwHj_5alloc2io4copy14specializationNtNtCsaL1QbXo9JQH_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBX_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc20.i unwind label %bb.bw, !noalias !490

.noexc20.i:                                       ; preds = %bb.bx
  %i.fz = load i64, ptr %i.a, align 8, !range !18, !noalias !494, !noundef !5 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 2
  br i1 %i.ga, label %.thread.i, label %bb.by

.thread.i:                                        ; preds = %.noexc20.i
  %i.gb = load ptr, ptr %i.fk, align 8, !noalias !494, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  br label %bb.cb

bb.by:                                            ; preds = %.noexc20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  %i.gc = trunc nuw i64 %i.fz to i1
  br i1 %i.gc, label %bb.bz, label %.thread27.i

bb.bz:                                            ; preds = %bb.by
  %i.gd = invoke { i64, ptr } @_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic12generic_copyNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtB10_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ca unwind label %bb.bw, !noalias !490 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ge = extractvalue { i64, ptr } %i.gd, 0
  %i.gf = trunc nuw i64 %i.ge to i1
  br i1 %i.gf, label %.loopexit30.i, label %.thread27.i

.loopexit30.i:                                    ; preds = %bb.ca
  %i.gg = extractvalue { i64, ptr } %i.gd, 1
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit30.i, %.thread.i
  %.sroa.6.1.i26.i = phi ptr [ %i.gb, %.thread.i ], [ %i.gg, %.loopexit30.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !490
  store ptr %.sroa.6.1.i26.i, ptr %i.c, align 8, !noalias !490
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !490
  %i.gh = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 8, i64 noundef 8) #24, !noalias !490 ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.cc, label %bb.cf, !prof !19

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc22.i unwind label %bb.cd, !noalias !490

.noexc22.i:                                       ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %bb.ch unwind label %bb.ce, !noalias !490

bb.ce:                                            ; preds = %bb.cd
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !490
  unreachable

.thread27.i:                                      ; preds = %bb.ca, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !490
  %.val16.i = load i32, ptr %i.g, align 4, !range !493, !noalias !490, !noundef !5
  %i.gl = call noundef i32 @close(i32 noundef %.val16.i) #24, !noalias !490 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !490
  %i.gm = icmp eq ptr %i.fl, %i.ff
  br i1 %i.gm, label %.loopexit, label %bb.bq

bb.cf:                                            ; preds = %bb.cb
  store ptr %.sroa.6.1.i26.i, ptr %i.gh, align 8, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !490
  %.val.i = load i32, ptr %i.g, align 4, !range !493, !noalias !490, !noundef !5
  %i.gn = call noundef i32 @close(i32 noundef %.val.i) #24, !noalias !490 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit15.i
  %.sroa.0.0.i = phi ptr [ %i.fs, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit15.i ], [ %i.gh, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !490
  br label %.loopexit

bb.ch:                                            ; preds = %bb.cd, %bb.bw
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fy, %bb.bw ], [ %i.gj, %bb.cd ]
  %.val17.i = load i32, ptr %i.g, align 4, !range !493, !noalias !490, !noundef !5
  %i.go = call noundef i32 @close(i32 noundef %.val17.i) #24, !noalias !490 ; 0 uses
  br label %.thread167

.loopexit:                                        ; preds = %.thread27.i, %bb.cg, %bb.bp, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i
  %.sroa.5.1.i = phi ptr [ @5, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i ], [ @3, %bb.cg ], [ undef, %bb.bp ], [ undef, %.thread27.i ] ; 8 uses
  %.sroa.0.1.i = phi ptr [ %i.ez, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i ], [ %.sroa.0.0.i, %bb.cg ], [ null, %bb.bp ], [ null, %.thread27.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.gp = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14remove_dir_allNtNtB4_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.cj unwind label %bb.ci     ; 3 uses

bb.ci:                                            ; preds = %.loopexit
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.body101:                                         ; preds = %bb.cm, %bb.ci
  %eh.lpad-body102 = phi { ptr, i32 } [ %i.gq, %bb.ci ], [ %i.gt, %bb.cm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker(ptr %.sroa.0.1.i, ptr %.sroa.5.1.i) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.cj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not86 = icmp eq ptr %i.gp, null
  br i1 %.not86, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.gp, ptr %i.j, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.gr = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 8, i64 noundef 8) #24 ; 5 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.cl, label %bb.cy, !prof !19

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc140 unwind label %bb.cm

.noexc140:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %.body101 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.co:                                            ; preds = %bb.cj
  %.not87 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not87, label %bb.cp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa)
          to label %bb.cq unwind label %bb.as

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.ak)
          to label %bb.cr unwind label %bb.v

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am)
          to label %bb.cs unwind label %bb.o

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ao)
          to label %bb.ct unwind label %bb.h

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar)
  br label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit, %bb.ct
  %.sroa.9.1 = phi ptr [ %.sroa.9.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit ], [ undef, %bb.ct ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit ], [ null, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.gv = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.gw = insertvalue { ptr, ptr } %i.gv, ptr %.sroa.9.1, 1
  ret { ptr, ptr } %i.gw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.co, %bb.dc, %bb.db, %bb.cy
  %.sroa.9.2 = phi ptr [ @3, %bb.dc ], [ @3, %bb.cy ], [ @3, %bb.db ], [ %.sroa.5.1.i, %bb.co ]
  %.sroa.0.2 = phi ptr [ %i.gr, %bb.dc ], [ %i.gr, %bb.cy ], [ %i.gr, %bb.db ], [ %.sroa.0.1.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body121 unwind label %bb.cx

bb.cw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.as

bb.cx:                                            ; preds = %bb.cv
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cy:                                            ; preds = %bb.ck
  store ptr %i.gp, ptr %i.gr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gz = icmp eq ptr %.sroa.0.1.i, null
  br i1 %i.gz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i) ]
  %i.ha = load ptr, ptr %.sroa.5.1.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void %i.ha(ptr noundef nonnull %.sroa.0.1.i)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !range !9, !invariant.load !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775808) %i.hc, i64 noundef range(i64 1, 536870913) %i.hf) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit

bb.dd:                                            ; preds = %bb.da
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !range !9, !invariant.load !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775808) %i.hi, i64 noundef range(i64 1, 536870913) %i.hl) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154
  %.sroa.9.3 = phi ptr [ @21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154 ], [ %.sroa.9.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit ]
  %.sroa.0.3 = phi ptr [ %i.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154 ], [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.ak)
          to label %bb.dl unwind label %bb.v

bb.df:                                            ; preds = %bb.bd, %.body121, %.body101, %bb.dg, %.thread167, %bb.bh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit, %.body, %.body152, %.body103, %.body105, %.body108
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread167:                                       ; preds = %.thread170.loopexit, %.thread170.loopexit.split-lp, %bb.bj, %bb.ch, %bb.bt, %bb.bn
  %eh.lpad-body132166 = phi { ptr, i32 } [ %i.fu, %bb.bt ], [ %i.es, %bb.bj ], [ %eh.lpad-body.i, %bb.ch ], [ %i.fb, %bb.bn ], [ %lpad.loopexit, %.thread170.loopexit ], [ %lpad.loopexit.split-lp, %.thread170.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.dg:                                            ; preds = %bb.bf
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.dh:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body152 unwind label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154 unwind label %bb.ac

bb.dk:                                            ; preds = %bb.di
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125

bb.dl:                                            ; preds = %bb.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125
  %.sroa.9.4 = phi ptr [ @5, %bb.dm ], [ %.sroa.9.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125 ]
  %.sroa.0.4 = phi ptr [ %i.bw, %bb.dm ], [ %.sroa.0.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am)
          to label %bb.dn unwind label %bb.o

bb.dm:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  br label %bb.dl

bb.dn:                                            ; preds = %bb.do, %bb.dl
  %.sroa.9.5 = phi ptr [ @5, %bb.do ], [ %.sroa.9.4, %bb.dl ]
  %.sroa.0.5 = phi ptr [ %i.bo, %bb.do ], [ %.sroa.0.4, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ao)
          to label %bb.dp unwind label %bb.h

bb.do:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  br label %bb.dn

bb.dp:                                            ; preds = %bb.ds, %bb.dn
  %.sroa.9.6 = phi ptr [ @5, %bb.ds ], [ %.sroa.9.5, %bb.dn ]
  %.sroa.0.6 = phi ptr [ %i.bh, %bb.ds ], [ %.sroa.0.5, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body108, %bb.dq
  %common.resume.op = phi { ptr, i32 } [ %i.hq, %bb.dq ], [ %.pn99, %.body108 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.dp
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %bb.cu

bb.ds:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.dp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs7BtpbLEd5q3_9elfshaker4show7get_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i4 = alloca [16 x i8], align 8         ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.c = alloca [640 x i8], align 8               ; 5 uses
  %i.d = alloca [640 x i8], align 8               ; 8 uses
  %i.e = alloca [640 x i8], align 8               ; 4 uses
  %i.f = alloca [640 x i8], align 8               ; 5 uses
  %i.g = alloca [640 x i8], align 8               ; 8 uses
  %i.h = alloca [640 x i8], align 8               ; 4 uses
  %i.i = alloca [712 x i8], align 8               ; 4 uses
  %i.j = alloca [712 x i8], align 8               ; 5 uses
  %i.k = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4)
  call void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command5aboutReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB3_3Arg3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 8)
          to label %bb.b unwind label %.body.thread18

.body.thread18:                                   ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 632 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !noundef !5
  %i.o = or i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 1, ptr %i.p, align 8, !alias.scope !514
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 1, ptr %i.q, align 8, !alias.scope !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.g, ptr noundef nonnull align 8 dereferenceable(640) %i.f, i64 640, i1 false), !alias.scope !515
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  invoke void @_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 47)
          to label %bb.e unwind label %bb.d, !noalias !519

bb.c:                                             ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.r, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.g) #26
          to label %.body.thread unwind label %bb.l, !noalias !516

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.b, align 8, !range !10, !noalias !518, !noundef !5 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !518
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 488 ; 6 uses
  %i.v = load i64, ptr %i.u, align 8, !range !10, !alias.scope !520, !noundef !5
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.i, !noalias !516

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body.i unwind label %bb.j, !noalias !516

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !516
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.m unwind label %bb.k, !noalias !516

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.x, %bb.i ]
end_hunk_0
