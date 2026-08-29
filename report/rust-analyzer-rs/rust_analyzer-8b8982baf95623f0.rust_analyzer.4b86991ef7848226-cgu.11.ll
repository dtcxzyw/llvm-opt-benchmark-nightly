Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification31handle_did_change_watched_files:bb.a

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

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread: ; preds = %bb.j, %.lr.ph.i, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.m, %bb.h, %bb.h, %bb.g, %bb.f, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
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
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i42, i64 1
  %i.r = add nsw i64 %.sroa.15.1.i41, -1          ; 2 uses
  %.not55.i = icmp eq i64 %i.r, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.l, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.ak, %bb.l ], [ 0, %.preheader.i ], [ %i.y, %.preheader60.i ]
  %i.s = zext i32 %.sroa.045.1.i to i64
  %i.t = shl nuw i64 %i.s, 32
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %bb.i, %.preheader60.i
  %.sroa.0.1.i42 = phi ptr [ %i.q, %.preheader60.i ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.15.1.i41 = phi i64 [ %i.r, %.preheader60.i ], [ %.sroa.15.0.i, %bb.i ]
  %.sroa.045.0.i40 = phi i32 [ %i.y, %.preheader60.i ], [ 0, %bb.i ] ; 2 uses
  %2 = icmp ugt i32 %.sroa.045.0.i40, 429496729
  br i1 %2, label %bb.k, label %bb.j, !prof !433

bb.j:                                             ; preds = %.preheader60.i.preheader
  %3 = mul nuw i32 %.sroa.045.0.i40, 10           ; 2 uses
  %i.u = load i8, ptr %.sroa.0.1.i42, align 1, !alias.scope !5628, !noundef !10
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ugt i32 %i.w, 9
  %i.y = add i32 %i.w, %3                         ; 3 uses
  %i.z = icmp ult i32 %i.y, %3
  %or.cond = select i1 %i.x, i1 true, i1 %i.z, !prof !2887
  br i1 %or.cond, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread, label %.preheader60.i, !prof !2887

bb.k:                                             ; preds = %.preheader60.i.preheader
  %i.aa = load i8, ptr %.sroa.0.1.i42, align 1, !alias.scope !5628, !noundef !10
  %i.ab = add i8 %i.aa, -48
  %i.ac = icmp ult i8 %i.ab, 10
  %spec.select.i = select i1 %i.ac, i64 513, i64 257
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.sroa.0.271.i = phi ptr [ %i.aj, %bb.l ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.270.i = phi i64 [ %i.ai, %bb.l ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.269.i = phi i32 [ %i.ak, %bb.l ], [ 0, %.preheader.i ]
  %i.ad = load i8, ptr %.sroa.0.271.i, align 1, !alias.scope !5628, !noundef !10
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %i.ag = icmp ult i32 %i.af, 10
  br i1 %i.ag, label %bb.l, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = mul i32 %.sroa.045.269.i, 10
  %i.ai = add nsw i64 %.sroa.15.270.i, -1         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i, i64 1
  %i.ak = add i32 %i.af, %i.ah                    ; 2 uses
  %.not56.i = icmp eq i64 %i.ai, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i

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
end_hunk_0
begin_hunk_1_@_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config24prime_caches_num_threads
declare noundef i64 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config24prime_caches_num_threads(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB3_8TaskPoolNtNtB5_9main_loop4TaskE17spawn_with_senderNCNvMs0_BZ_NtNtB5_12global_state11GlobalState12prime_caches0EB5_(ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer8mem_docsNtB2_7MemDocs4iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCs4sl5YdnrCxp_3vfs6FileIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB22_10filter_map9FilterMapINtNtB22_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtB13_8vfs_path7VfsPathINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer8mem_docs12DocumentDataEENCNvMs0_NtB5y_9main_loopNtNtB5y_12global_state11GlobalState12update_tests0ENCB6s_s_0ENCB6s_s0_0EE9from_iterB5y_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB3_8TaskPoolNtNtB5_9main_loop4TaskE5spawnNCNvMs0_BZ_NtNtB5_12global_state11GlobalState12update_testss1_0EB5_(ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino8Utf8PathNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCsaWIbZW7RmAr_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath18name_and_extension(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCshzWfHUSfYae_4core3stre9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs4_NtCs50pZefIA5Ye_8triomphe6headerINtNtB7_3arc3ArceEINtNtCshzWfHUSfYae_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs4sl5YdnrCxp_3vfs8vfs_pathNtB4_7VfsPathINtNtCshzWfHUSfYae_4core7convert4FromNtCs9R0CJ7nmiec_5paths10AbsPathBufE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_Cs85r3Sry2XhC_10load_cargoNtB4_16SourceRootConfig15path_is_library(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer8mem_docsNtB2_7MemDocs8contains(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvMs1_Cs4sl5YdnrCxp_3vfsNtB5_3Vfs7file_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_Cs4sl5YdnrCxp_3vfsNtB5_3Vfs17set_file_contents(ptr noalias nofree noundef align 8 dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications18CancelNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications34WorkDoneProgressCancelNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications31DidOpenTextDocumentNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications33DidChangeTextDocumentNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications32DidCloseTextDocumentNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications31DidSaveTextDocumentNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications34DidChangeConfigurationNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications37DidChangeWorkspaceFoldersNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtCs1lnireelaHN_13gen_lsp_types9generated13notifications33DidChangeWatchedFilesNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtBa_3lsp3ext26CancelFlycheckNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtBa_3lsp3ext25ClearFlycheckNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtBa_3lsp3ext23RunFlycheckNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB6_22NotificationDispatcher11on_sync_mutNtNtNtBa_3lsp3ext24AbortRunTestNotificationEBa_(ptr noalias nofree noundef align 8 dereferenceable(104), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCs6u1mgJOKDyY_13rust_analyzer8handlers8dispatchNtB5_22NotificationDispatcher6finish(ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcSNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config21main_loop_num_threads(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB3_8TaskPoolNtNtB5_9main_loop4TaskE17spawn_with_senderNCNvMs0_BZ_NtNtB5_12global_state11GlobalState18update_diagnosticss1_0EB5_(ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config35add_discovered_project_from_command(ptr noalias nofree noundef align 8 dereferenceable(4640), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config15diagnostics_map(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4640), i32 noundef range(i32 0, 2), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection20add_check_diagnostic(ptr noalias nofree noundef align 8 dereferenceable(136), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(312), ptr noalias noundef align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection11clear_check(ptr noalias nofree noundef align 8 dereferenceable(136), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection23clear_check_for_package(ptr noalias nofree noundef align 8 dereferenceable(136), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection22clear_check_older_than(ptr noalias nofree noundef align 8 dereferenceable(136), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection34clear_check_older_than_for_package(ptr noalias nofree noundef align 8 dereferenceable(136), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE11resize_withNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB1o_12global_state11GlobalState19handle_flycheck_msgs_0EB1o_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB3_8TaskPoolNtNtB5_9main_loop4TaskE17spawn_with_senderNCNvMs0_BZ_NtNtB5_12global_state11GlobalState20handle_deferred_task0EB5_(ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(304)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB3_8TaskPoolNtNtB5_9main_loop4TaskE17spawn_with_senderNCNvMs0_BZ_NtNtB5_12global_state11GlobalState20handle_deferred_tasks_0EB5_(ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #30

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities26server_status_notification(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB16_12global_state11GlobalState23update_status_or_notify0EB16_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6u1mgJOKDyY_13rust_analyzer8discover14DiscoverHandleE5drainNtNtNtCshzWfHUSfYae_4core3ops5range9RangeFullEBJ_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer7commandINtB5_13CommandHandleNtNtB7_8discover22DiscoverProjectMessageE10has_exitedB7_(ptr noalias nofree noundef align 8 dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCsM5evIHPibA_17crossbeam_channel5waker5WakerE4lockCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdFG_QL0_NtNtCs6u1mgJOKDyY_13rust_analyzer12global_state11GlobalStateNtBQ_8ResponseEuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE6removeBO_EB1H_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEE14insert_no_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_Cs4sl5YdnrCxp_3vfsNtB5_3Vfs9file_path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCs4sl5YdnrCxp_3vfs8vfs_pathNtB2_7VfsPath3pop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs4sl5YdnrCxp_3vfs8vfs_pathNtB2_7VfsPath4join(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto17url_from_abs_path(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_CslLuZgPVt6hg_3ideNtB5_8Analysis15file_line_index(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull align 8, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities19negotiated_encoding(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB4_11ProjectJson13crate_by_root(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_14CargoWorkspace14target_by_root(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_14CargoWorkspace12package_flag(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(448)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBR_3vec3VecBN_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCsdcPuHeDsw6v_13project_model7sysrootNtB4_7Sysroot4root(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvMs1_CslLuZgPVt6hg_3ideNtB5_8Analysis10crate_root(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer8discover14DiscoverHandleE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer9main_loop19PrimeCachesProgressE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryE8grow_oneCs89JjGp7luZU_4stdx(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input5CrateE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenE8grow_oneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures17FileSystemWatcherE8grow_oneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url13path_segments(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs2vT3jxLudSK_3url28file_url_segments_to_pathbuf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCscAsMj0W7j8b_3std4time7InstantENtNtNtB2d_4hash6random11RandomStateE12contains_keyBO_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_Cs4sl5YdnrCxp_3vfsNtB5_3Vfs12take_changes(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs89JjGp7luZU_4stdx6thread4poolNtB3_4Pool6scopedNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB10_11GlobalState15process_changes0TNtNtCs33K2ylI4knu_10hir_expand6change20ChangeWithProcMacrosINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtCshzWfHUSfYae_4core6option6OptionTNtCs9R0CJ7nmiec_5paths10AbsPathBufbEEEEB12_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2k_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB4x_11GlobalState15process_changess0_0EE9from_iterB4z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtBP_10ChangeKindNtNtBP_8vfs_path7VfsPathENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtCs4sl5YdnrCxp_3vfs6FileIdTNtBV_10ChangeKindNtNtBV_8vfs_path7VfsPathEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_12ConfigChange29change_source_root_parent_map(ptr noalias nofree noundef align 8 dereferenceable(128), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathENtB5_5Value6recordCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtCs4sl5YdnrCxp_3vfs10ChangeKindENtB5_5Value6recordCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs0_1__NtB8_8FileText4textNtCs6oosyzwIepl_6ide_db12RootDatabaseECs6u1mgJOKDyY_13rust_analyzer(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_12ConfigChange18change_user_config(ptr noalias nofree noundef align 8 dereferenceable(128), ptr noundef, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs1_1__NtB8_19FileSourceRootInput14source_root_idNtCs6oosyzwIepl_6ide_db12RootDatabaseECs6u1mgJOKDyY_13rust_analyzer(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs2_1__NtB8_15SourceRootInput11source_rootNtCs6oosyzwIepl_6ide_db12RootDatabaseECs6u1mgJOKDyY_13rust_analyzer(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNtB5_13SliceContains14slice_containsCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdENtB5_5Value6recordCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_12ConfigChange13change_ratoml(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(128), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_12ConfigChange23change_workspace_ratoml(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(128), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs4sl5YdnrCxp_3vfs8vfs_pathNtB5_7VfsPathNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs6u1mgJOKDyY_13rust_analyzer9main_loop12DeferredTaskE4sendB12_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCscAsMj0W7j8b_3std4time7InstantENtNtNtB2c_4hash6random11RandomStateE6insertCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB3_8TaskPoolNtNtB5_9main_loop4TaskE17spawn_with_senderNCNvMs_NtB5_12global_stateNtB1K_11GlobalState19publish_diagnostics0EB5_(ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCsgIpRO4v45SJ_7base_db10all_crates(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs2_NtCsdcPuHeDsw6v_13project_model13manifest_pathNtB5_12ManifestPathNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCsM5evIHPibA_17crossbeam_channel7channel5after(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs4sl5YdnrCxp_3vfs6loader7MessageECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCs65Ktfge4woL_10vfs_notifyNtB2_12NotifyHandleNtNtCs4sl5YdnrCxp_3vfs6loader6Handle5spawn(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i64 noundef range(i64 0, 3), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCs65Ktfge4woL_10vfs_notifyNtB2_12NotifyHandleNtNtCs4sl5YdnrCxp_3vfs6loader6Handle10set_config(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCs65Ktfge4woL_10vfs_notifyNtB2_12NotifyHandleNtNtCs4sl5YdnrCxp_3vfs6loader6Handle10invalidate(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCs65Ktfge4woL_10vfs_notifyNtB2_12NotifyHandleNtNtCs4sl5YdnrCxp_3vfs6loader6Handle9load_sync(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs6u1mgJOKDyY_13rust_analyzer9main_loop4TaskEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer9task_poolINtB2_8TaskPoolNtNtB4_9main_loop4TaskE16new_with_threadsB4_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i64 noundef range(i64 0, 3), ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs89JjGp7luZU_4stdx6thread4poolNtB2_4Pool3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs6u1mgJOKDyY_13rust_analyzer9main_loop12DeferredTaskEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost3new(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), i16 noundef range(i16 0, 2), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck15FlycheckMessageEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner16CargoTestMessageEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs6u1mgJOKDyY_13rust_analyzer8discover22DiscoverProjectMessageEBW_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs4sl5YdnrCxp_3vfs8file_setNtB5_13FileSetConfigNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXs8_NtCs50pZefIA5Ye_8triomphe10unique_arcINtB6_9UniqueArcSINtNtCshzWfHUSfYae_4core6option6OptionINtNtB13_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEEEINtNtNtNtB13_4iter6traits7collect12FromIteratorBY_E9from_iterABY_j0_ECs6u1mgJOKDyY_13rust_analyzer() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXs8_NtCs50pZefIA5Ye_8triomphe10unique_arcINtB6_9UniqueArcSNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBY_E9from_iterABY_j0_EB12_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageE4sendCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCscAsMj0W7j8b_3std4time7InstantENtNtNtB2d_4hash6random11RandomStateE6removeBO_ECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdENtB5_5Value6recordCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities16open_server_logs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f64(double) #30

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors13ProgressTokenENtB5_5Value6recordCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils8ProgressENtB5_5Value6recordB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8yjYO7b73r2_10serde_json5value8to_valueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures21WorkDoneProgressBeginECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8yjYO7b73r2_10serde_json5value8to_valueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22WorkDoneProgressReportECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8yjYO7b73r2_10serde_json5value8to_valueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures19WorkDoneProgressEndECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs_NtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utilsNtNtB17_12global_state11GlobalState18show_and_log_errors_0EB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #29
end_hunk_1
