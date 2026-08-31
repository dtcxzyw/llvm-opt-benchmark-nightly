Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files:bb.a
.loopexit37:                                      ; preds = %bb.e
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp38:                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtCscFGNKo4Sl5v_9itertools11unique_implINtB2N_8UniqueByBF_RNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EB1W_4next0EB4g_.exit, %bb.s, %bb.x
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtCscFGNKo4Sl5v_9itertools11unique_implINtB2N_8UniqueByBF_RNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EB1W_4next0EB4g_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp10from_proto8abs_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.y)
          to label %bb.m unwind label %.loopexit.split-lp38

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTRNtCs2vT3jxLudSK_3url3UrluEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit13 unwind label %.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit13: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = trunc nuw i8 %.sroa.02.0 to i1
  br i1 %i.ac, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit13
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures27DidChangeWatchedFilesParamsECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures27DidChangeWatchedFilesParamsECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret ptr null

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit13
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ag = invoke noundef zeroext i1 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config13check_on_save(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %i.af, i32 noundef 0, i32 undef)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.ag, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ak, 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.sroa.04.054 = phi ptr [ %i.ao, %bb.l ], [ %i.al, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle17restart_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.04.054, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.l unwind label %.loopexit36

bb.l:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.054, i64 72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = icmp eq ptr %i.ao, %i.am
  br i1 %i.ap, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtCscFGNKo4Sl5v_9itertools11unique_implINtB2N_8UniqueByBF_RNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EB1W_4next0EB4g_.exit
  %i.aq = load i64, ptr %i.d, align 8, !range !13, !noundef !10
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.as = trunc nuw i8 %.sroa.02.0 to i1
  br i1 %i.as, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = load i64, ptr %i.q, align 8, !noundef !10 ; 2 uses
  %.idx80 = mul nuw nsw i64 %i.au, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx80
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit, label %.lr.ph78

bb.p:                                             ; preds = %.noexc17
  %i.ax = icmp eq ptr %i.az, %i.av
  br i1 %i.ax, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.o, %bb.p
  %i.ay = phi ptr [ %i.az, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc15 unwind label %bb.u   ; 2 uses

.noexc15:                                         ; preds = %.lr.ph78
  %i.bb = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %.noexc16 unwind label %bb.u   ; 2 uses

.noexc16:                                         ; preds = %.noexc15
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1
  %i.bd = extractvalue { ptr, i64 } %i.ba, 0
  %i.be = extractvalue { ptr, i64 } %i.bb, 0
  %i.bf = extractvalue { ptr, i64 } %i.bb, 1
  %i.bg = invoke noundef zeroext i1 @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath11starts_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bf)
          to label %.noexc17 unwind label %bb.u

.noexc17:                                         ; preds = %.noexc16
  br i1 %i.bg, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit, label %bb.p

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit: ; preds = %.noexc17, %bb.p, %bb.o, %bb.n
  %.sroa.02.1 = phi i8 [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %.noexc17 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.v, align 8, !invariant.load !10, !nonnull !10
  invoke void %i.bh(ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_filess_0EB2g_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bi = load i64, ptr %i.d, align 8, !range !13, !noundef !10
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %bb.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer.exit27

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXs4_NtCsdRkQxkTxnTp_6anyhow5errorNtB7_5ErrorNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer.exit27 unwind label %.loopexit.split-lp38

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer.exit27: ; preds = %bb.r, %bb.s, %bb.x
  %.sroa.02.2 = phi i8 [ %.sroa.02.0, %bb.x ], [ %.sroa.02.1, %bb.s ], [ %.sroa.02.1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.t:                                             ; preds = %bb.q, %bb.u
  %lpad.phi34 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.q ] ; 2 uses
  %i.bk = load i64, ptr %i.d, align 8, !range !13, !noundef !10
  %.not8 = icmp eq i64 %i.bk, -1
  br i1 %.not8, label %bb.w, label %.body

bb.u:                                             ; preds = %.noexc16, %.lr.ph78, %.noexc15
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #41
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %.body, %bb.w, %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11unique_impl8UniqueByINtNtNtB4_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventERNtCs2vT3jxLudSK_3url3UrlNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files0EEB3t_.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.w:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #41
          to label %.body unwind label %bb.v

bb.x:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCsdRkQxkTxnTp_6anyhow5errorNtB7_5ErrorNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs9R0CJ7nmiec_5paths10AbsPathBufNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer.exit27 unwind label %.loopexit.split-lp38
}

; Function Attrs: nonlazybind uwtable
define internal noalias noundef ptr @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification32handle_work_done_progress_cancel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1632) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !10
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28WorkDoneProgressCancelParamsECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 23)
          to label %bb.f unwind label %bb.e

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.n
  %.pr.pre = load i64, ptr %1, align 8, !alias.scope !5623
  %i.g = icmp eq i64 %.pr.pre, -1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28WorkDoneProgressCancelParamsECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread: ; preds = %bb.j, %.lr.ph.i.a, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.m, %bb.h, %bb.h, %bb.g, %bb.f, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28WorkDoneProgressCancelParamsECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28WorkDoneProgressCancelParamsECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  ret ptr null

bb.e:                                             ; preds = %bb.n, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28WorkDoneProgressCancelParamsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #41
          to label %common.resume unwind label %bb.o

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.g, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.g:                                             ; preds = %bb.f
  %i.k = add i64 %i.e, -23                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 23 ; 3 uses
  switch i64 %i.k, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !5628, !noundef !10 ; 2 uses
  switch i8 %i.m, label %bb.i [
    i8 43, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
    i8 45, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
  ]

thread-pre-split.i:                               ; preds = %bb.g
  %.pr.i = load i8, ptr %i.l, align 1, !alias.scope !5628
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i, %bb.h
  %i.n = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.m, %bb.h ]
  %cond.i = icmp eq i8 %i.n, 43                   ; 2 uses
  %i.o = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.k, %i.o          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.p = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.p, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.i
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i.a

.preheader60.i:                                   ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i42, i64 1
  %i.r = add nsw i64 %.sroa.15.1.i41, -1          ; 2 uses
  %.not55.i = icmp eq i64 %i.r, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.l, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.ak, %bb.l ], [ 0, %.preheader.i ], [ %i.ab, %.preheader60.i ]
  %i.s = zext i32 %.sroa.045.1.i to i64
  %i.t = shl nuw i64 %i.s, 32
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %bb.i, %.preheader60.i
  %.sroa.0.1.i42 = phi ptr [ %i.q, %.preheader60.i ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.15.1.i41 = phi i64 [ %i.r, %.preheader60.i ], [ %.sroa.15.0.i, %bb.i ]
  %.sroa.045.0.i40 = phi i32 [ %i.ab, %.preheader60.i ], [ 0, %bb.i ]
  %i.u = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i40, i32 10) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.k, label %bb.j, !prof !433

bb.j:                                             ; preds = %.preheader60.i.preheader
  %i.w = extractvalue { i32, i1 } %i.u, 0         ; 2 uses
  %i.x = load i8, ptr %.sroa.0.1.i42, align 1, !alias.scope !5628, !noundef !10
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 9
  %i.ab = add i32 %i.z, %i.w                      ; 3 uses
  %i.ac = icmp ult i32 %i.ab, %i.w
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac, !prof !2887
  br i1 %or.cond, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread, label %.preheader60.i, !prof !2887

bb.k:                                             ; preds = %.preheader60.i.preheader
  %i.ad = load i8, ptr %.sroa.0.1.i42, align 1, !alias.scope !5628, !noundef !10
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  %spec.select.i = select i1 %i.af, i64 513, i64 257
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.i.a:                                       ; preds = %.preheader.i, %bb.l
  %.sroa.0.271.i = phi ptr [ %4, %bb.l ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.270.i = phi i64 [ %3, %bb.l ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.269.i = phi i32 [ %i.ak, %bb.l ], [ 0, %.preheader.i ]
  %i.ag = load i8, ptr %.sroa.0.271.i, align 1, !alias.scope !5628, !noundef !10
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.l:                                             ; preds = %.lr.ph.i.a
  %2 = mul i32 %.sroa.045.269.i, 10
  %3 = add nsw i64 %.sroa.15.270.i, -1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i, i64 1
  %i.ak = add i32 %i.ai, %2                       ; 2 uses
  %.not56.i = icmp eq i64 %3, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.a

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %bb.k, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.k ], [ %i.t, %.loopexit.i ] ; 2 uses
  %i.al = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.al, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread, label %bb.m

bb.m:                                             ; preds = %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.58.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.an = load i64, ptr %i.am, align 8, !noundef !10
  %i.ao = icmp ult i64 %.sroa.58.0.extract.shift, %i.an
  br i1 %i.ao, label %bb.n, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !10, !noundef !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %.sroa.58.0.extract.shift
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle6cancel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.as)
          to label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread unwind label %bb.e

bb.o:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noalias noundef ptr @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification35handle_did_change_workspace_folders(ptr noalias nofree noundef align 8 dereferenceable(1632) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [4648 x i8], align 8              ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [112 x i8], align 8               ; 10 uses
  %.sroa.8 = alloca [104 x i8], align 8           ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5631)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5631, !nonnull !10, !noundef !10
  %i.r = load atomic i64, ptr %i.q acquire, align 8, !noalias !5631
  %i.s = icmp eq i64 %i.r, 1
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !5631 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5631
  invoke fastcc void @_RNvXsT_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6ConfigNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(4640) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640) %i.t) #40
          to label %.noexc unwind label %.thread86

.noexc:                                           ; preds = %bb.b
  store i64 1, ptr %i.c, align 8, !noalias !5631
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !5634
  %i.v = tail call noundef align 8 dereferenceable_or_null(4648) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 4649) 4648, i64 noundef 8) #34, !noalias !5634 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs50pZefIA5Ye_8triomphe3arc8ArcInnerNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEE3newB1n_.exit.i, !prof !433

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 4648) #43
          to label %.noexc.i unwind label %bb.d, !noalias !5631

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(4640) %i.u)
          to label %.thread74 unwind label %bb.e, !noalias !5631

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !5631
  unreachable

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs50pZefIA5Ye_8triomphe3arc8ArcInnerNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEE3newB1n_.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4648) %i.v, ptr noundef nonnull align 8 dereferenceable(4648) %i.c, i64 4648, i1 false), !noalias !5631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5631
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigE10drop_innerBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEEB1f_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs50pZefIA5Ye_8triomphe3arc8ArcInnerNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEE3newB1n_.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  store ptr %i.v, ptr %i.p, align 8, !alias.scope !5631
  br label %.thread74

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEEB1f_.exit.i: ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs50pZefIA5Ye_8triomphe3arc8ArcInnerNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEE3newB1n_.exit.i
  store ptr %i.v, ptr %i.p, align 8, !alias.scope !5631
  br label %bb.g

.thread86:                                        ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, %bb.b
  %.sroa.018.1.ph = phi i1 [ true, %bb.b ], [ false, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEEB1f_.exit.i, %bb.a
  %i.aa = phi ptr [ %i.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config6ConfigEEB1f_.exit.i ], [ %.pre.i, %bb.a ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.af = load i64, ptr %i.ac, align 8, !range !769, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !10 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 82351536043346213
  tail call void @llvm.assume(i1 %i.ai)
  %.idx = mul nuw nsw i64 %i.ah, 112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.ae, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph: ; preds = %bb.g
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit

bb.h:                                             ; preds = %.body63, %bb.i
  %.pn26 = phi { ptr, i32 } [ %i.as, %bb.i ], [ %.pn24, %.body63 ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.thread74 unwind label %bb.ad

bb.i:                                             ; preds = %.invoke
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph, %.backedge
  %i.at = phi ptr [ %i.ae, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph ], [ %i.dp, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5637)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5637, !noalias !5640
  %.sroa.0.0.copyload67 = load i64, ptr %i.at, align 8, !noalias !5637 ; 2 uses
  %.sroa.8.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx68, i64 104, i1 false), !noalias !5637
  %.not = icmp eq i64 %.sroa.0.0.copyload67, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.0.0.copyload67, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !5642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url13path_segments(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.j
  %i.av = load i32, ptr %i.al, align 4, !range !5645, !noalias !5646, !noundef !10
  %.not.i = icmp eq i32 %i.av, -1
  br i1 %.not.i, label %.thread102, label %bb.k

bb.k:                                             ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5646
  invoke void @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.k
  %i.aw = load i8, ptr %i.a, align 8, !range !2222, !noalias !5646, !noundef !10
  switch i8 %i.aw, label %bb.q [
    i8 -1, label %bb.l
    i8 0, label %bb.p
  ]

bb.l:                                             ; preds = %bb.r, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5646
  %i.ax = load i64, ptr %i.ao, align 8, !alias.scope !5642, !noalias !5648, !noundef !10 ; 4 uses
  %i.ay = load i32, ptr %i.ap, align 4, !alias.scope !5642, !noalias !5648, !noundef !10 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !5642, !noalias !5648, !nonnull !10, !noundef !10 ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 5 uses
end_hunk_0
