Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCsc4241EHy6Do_9typst_kit6serverNtB2_10HttpServer3new:bb.a
  store i32 1, ptr %i.dy, align 8, !noalias !5475
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ai, i64 76
  store i32 253, ptr %i.dz, align 4, !noalias !5475
  invoke void @_RNvXs0_NtCscpCkzoVBb9P_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ai)
          to label %bb.x unwind label %bb.p, !noalias !5462

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5462
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5462
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5480
  %i.ea = call noundef align 8 dereferenceable_or_null(1408) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1408, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5480 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.invoke.i.i, label %bb.z

.invoke.i.i:                                      ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1408) #45
          to label %.cont.i.i unwind label %bb.ad, !noalias !5462

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5462
  store i64 1, ptr %i.ah, align 8, !noalias !5462
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.ec, align 8, !noalias !5462
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 0, ptr %i.ed, align 8, !noalias !5462
  %.sroa.03.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i8 0, ptr %.sroa.03.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !5462
  %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 8, ptr %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !5462
  %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.ea, ptr %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !5462
  %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 20, i1 false), !noalias !5462
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5483
  %i.ee = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5483 ; 6 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.aa, label %bb.ae, !prof !11

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #45
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !5462

.noexc.i.i.i:                                     ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue13MessagesQueueNtB1l_7MessageEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah) #46
          to label %.thread.i120.i unwind label %bb.ac, !noalias !5462

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !5462
  unreachable

bb.ad:                                            ; preds = %.invoke.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i120.i

bb.ae:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !noalias !5462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5462
  store ptr %i.ee, ptr %i.an, align 8, !noalias !5462
  %i.ej = load ptr, ptr %i.ar, align 8, !noalias !5462, !nonnull !28, !noundef !28
  %i.ek = atomicrmw add ptr %i.ej, i64 1 monotonic, align 8, !noalias !5462
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = load ptr, ptr %i.ar, align 8, !noalias !5462, !nonnull !28, !noundef !28
  %i.en = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !5462
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.cg, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5462
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.em, ptr %i.ep, align 8, !noalias !5462
  store i32 0, ptr %i.al, align 8, !noalias !5462
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.db, ptr %i.eq, align 4, !noalias !5462
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 0, ptr %i.er, align 8, !noalias !5462
  %i.es = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ee, ptr %i.es, align 8, !noalias !5462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5462
  %i.et = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 -1, ptr %i.et, align 8, !noalias !5462
  store i64 0, ptr %i.ak, align 8, !noalias !5462
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i8 0, ptr %i.eu, align 8, !noalias !5462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5486
  store ptr null, ptr %i.ag, align 8, !noalias !5491
  %i.ev = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !5491 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5491
  invoke void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 14)
          to label %.noexc.i.i.i.i unwind label %bb.av, !noalias !5491

.noexc.i.i.i.i:                                   ; preds = %bb.ai
  %i.ex = load i64, ptr %i.y, align 8, !range !69, !noalias !5491, !noundef !28 ; 5 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ex, -1
  br i1 %.not.i.i.i.i.i, label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB19_6Server13from_listenerNtNtNtBa_3net3tcp11TcpListenerE0uE00Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ey = add i64 %i.ev, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB17_6Server13from_listenerNtNtNtB8_3net3tcp11TcpListenerE0uE0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i

bb.ak:                                            ; preds = %.noexc.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5491, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.55.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5496
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef %.sroa.55.0.copyload.i.i.i.i.i)
          to label %bb.an unwind label %bb.al, !noalias !5496

bb.al:                                            ; preds = %bb.ak
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = icmp eq i64 %i.ex, 0
  br i1 %i.fa, label %.body35.thread.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5499
  br label %.body35.thread.i.i.i.i

bb.an:                                            ; preds = %bb.ak
  %i.fb = load i64, ptr %i.x, align 8, !range !30, !noalias !5496, !noundef !28
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5496
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !5496, !nonnull !28, !noundef !28 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !5496, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5496
  switch i64 %i.fg, label %thread-pre-split.i.i.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fh = load i8, ptr %i.fe, align 1, !alias.scope !5502, !noalias !5505, !noundef !28 ; 2 uses
  switch i8 %i.fh, label %bb.ar [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.ap
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.fe, align 1, !alias.scope !5502, !noalias !5505
  br label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.aq
  %i.fi = phi i8 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %i.fh, %bb.aq ]
  %cond.i.i.i.i.i.i.i = icmp eq i8 %i.fi, 43      ; 2 uses
  %i.fj = sext i1 %cond.i.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i.i = add nsw i64 %i.fg, %i.fj ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.0.0.idx.i.i.i.i.i.i.i ; 2 uses
  %i.fk = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i.i, 17
  br i1 %i.fk, label %.preheader.i.i.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.ar
  %.not5366.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.preheader56.i.i.i.i.i.i.i:                       ; preds = %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i168, i64 1
  %i.fm = add nsw i64 %.sroa.15.1.i.i.i.i.i.i.i167, -1 ; 2 uses
  %.not52.i.not.i.i.i.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not52.i.not.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.i.i.preheader:             ; preds = %bb.ar, %.preheader56.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i168 = phi ptr [ %i.fl, %.preheader56.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i167 = phi i64 [ %i.fm, %.preheader56.i.i.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i.i.i, %bb.ar ]
  %.sroa.042.0.i.i.i.i.i.i.i166 = phi i64 [ %i.fs, %.preheader56.i.i.i.i.i.i.i ], [ 0, %bb.ar ]
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i.i.i166, i64 10) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, label %bb.as, !prof !74

bb.as:                                            ; preds = %.preheader56.i.i.i.i.i.i.i.preheader
  %8 = extractvalue { i64, i1 } %6, 0             ; 2 uses
  %i.fn = load i8, ptr %.sroa.0.1.i.i.i.i.i.i.i168, align 1, !alias.scope !5502, !noalias !5505, !noundef !28
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -48                  ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 9
  %i.fr = zext nneg i32 %i.fp to i64
  %i.fs = add i64 %8, %i.fr                       ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %8
  %or.cond.i.i.i.i.i.i = select i1 %i.fq, i1 true, i1 %i.ft, !prof !215
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i.i, !prof !215

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.at
  %.sroa.0.269.i.i.i.i.i.i.i = phi ptr [ %i.ga, %bb.at ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i.i.i = phi i64 [ %i.fz, %bb.at ], [ %.sroa.15.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i.i.i = phi i64 [ %i.gc, %bb.at ], [ 0, %.preheader.i.i.i.i.i.i.i ]
  %i.fu = load i8, ptr %.sroa.0.269.i.i.i.i.i.i.i, align 1, !alias.scope !5502, !noalias !5505, !noundef !28
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nsw i32 %i.fv, -48                  ; 2 uses
  %i.fx = icmp ugt i32 %i.fw, 9
  br i1 %i.fx, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fy = mul i64 %.sroa.042.267.i.i.i.i.i.i.i, 10
  %i.fz = add nsw i64 %.sroa.15.268.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i.i.i, i64 1
  %i.gb = zext nneg i32 %i.fw to i64
  %i.gc = add i64 %i.fy, %i.gb                    ; 2 uses
  %.not53.i.i.i.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not53.i.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i: ; preds = %bb.as, %.preheader56.i.i.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i.i.i, %bb.at, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %bb.aq, %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 2097152, %bb.ao ], [ 0, %.preheader.i.i.i.i.i.i.i ], [ 2097152, %bb.aq ], [ 2097152, %bb.ap ], [ 2097152, %bb.aq ], [ %i.gc, %bb.at ], [ 2097152, %.lr.ph.i.i.i.i.i.i.i ], [ 2097152, %bb.as ], [ 2097152, %.preheader56.i.i.i.i.i.i.i.preheader ], [ %i.fs, %.preheader56.i.i.i.i.i.i.i ] ; 2 uses
  %i.gd = icmp eq i64 %i.ex, 0
  br i1 %i.gd, label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB19_6Server13from_listenerNtNtNtBa_3net3tcp11TcpListenerE0uE00Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5507
  br label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB19_6Server13from_listenerNtNtNtBa_3net3tcp11TcpListenerE0uE00Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB19_6Server13from_listenerNtNtNtBa_3net3tcp11TcpListenerE0uE00Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.au, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i.i, %bb.au ], [ %.sroa.0.1.i.i.i.i.i.i, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i.i ], [ 2097152, %.noexc.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5491
  %i.ge = add i64 %.sroa.0.0.i.i.i.i.i, 1
  store atomic i64 %i.ge, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !5491
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB17_6Server13from_listenerNtNtNtB8_3net3tcp11TcpListenerE0uE0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i

.body35.i.i.i.i:                                  ; preds = %bb.ay, %.thread.i.i.i.i, %bb.av
  %.sroa.016.0.i.i.i.i = phi i8 [ %.sroa.016.2.i.i.i.i, %bb.ay ], [ %.sroa.017.1.i.i.i.i, %bb.av ], [ %.sroa.016.2.i.i.i.i, %.thread.i.i.i.i ]
  %.sroa.017.0.i.i.i.i = phi i8 [ %.sroa.017.2.i.i.i.i, %bb.ay ], [ %.sroa.017.1.i.i.i.i, %bb.av ], [ %.sroa.017.2.i.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  %.pn27.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %bb.ay ], [ %i.gg, %bb.av ], [ %.pn.pn.i.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  %i.gf = trunc nuw i8 %.sroa.016.0.i.i.i.i to i1
  br i1 %i.gf, label %.body35.thread.i.i.i.i, label %bb.cc

bb.av:                                            ; preds = %bb.bx, %bb.aw, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB17_6Server13from_listenerNtNtNtB8_3net3tcp11TcpListenerE0uE0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.ai
  %.sroa.017.1.i.i.i.i = phi i8 [ 0, %bb.bx ], [ 1, %bb.aw ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB17_6Server13from_listenerNtNtNtB8_3net3tcp11TcpListenerE0uE0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i ], [ 1, %bb.ai ] ; 2 uses
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i.i.i

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB17_6Server13from_listenerNtNtNtB8_3net3tcp11TcpListenerE0uE0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB19_6Server13from_listenerNtNtNtBa_3net3tcp11TcpListenerE0uE00Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.aj
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ey, %bb.aj ], [ %.sroa.0.0.i.i.i.i.i, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB19_6Server13from_listenerNtNtNtBa_3net3tcp11TcpListenerE0uE00Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i ]
  %i.gh = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.aw unwind label %bb.av, !noalias !5491

bb.aw:                                            ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB17_6Server13from_listenerNtNtNtB8_3net3tcp11TcpListenerE0uE0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5491
  %i.gi = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.gh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.et)
          to label %bb.ax unwind label %bb.av, !noalias !5510

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.gi, ptr %i.af, align 8, !noalias !5491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5491
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %bb.ba unwind label %bb.az, !noalias !5491

.thread.i.i.i.i:                                  ; preds = %bb.cb, %bb.by, %.body29.thread.i.i.i.i, %bb.be, %bb.az
  %.sroa.016.2.i.i.i.i = phi i8 [ 1, %bb.cb ], [ 0, %bb.be ], [ 1, %bb.az ], [ 0, %.body29.thread.i.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %.sroa.017.2.i.i.i.i = phi i8 [ 0, %bb.cb ], [ 0, %bb.be ], [ 1, %bb.az ], [ 0, %.body29.thread.i.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.gr, %bb.cb ], [ %i.gt, %bb.be ], [ %i.gm, %bb.az ], [ %eh.lpad-body3010.i.i.i.i, %.body29.thread.i.i.i.i ], [ %eh.lpad-body3010.i.i.i.i, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  call void @llvm.experimental.noalias.scope.decl(metadata !5514)
  call void @llvm.experimental.noalias.scope.decl(metadata !5517)
  call void @llvm.experimental.noalias.scope.decl(metadata !5520)
  %i.gj = load ptr, ptr %i.af, align 8, !alias.scope !5523, !noalias !5491, !nonnull !28, !noundef !28
  %i.gk = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !noalias !5524
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.ay, label %.body35.i.i.i.i

bb.ay:                                            ; preds = %.thread.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #48
          to label %.body35.i.i.i.i unwind label %bb.ca, !noalias !5491

bb.az:                                            ; preds = %bb.ax
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5491
  store i64 1, ptr %i.z, align 8, !noalias !5491
  %i.gn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %i.gn, align 8, !noalias !5491
  %i.go = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 0, i64 16, i1 false), !noalias !5491
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5525
  %i.gp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5525 ; 6 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.bb, label %bb.bf, !prof !11

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc38.i.i.i.i unwind label %bb.bc, !noalias !5491

.noexc38.i.i.i.i:                                 ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z) #46
          to label %bb.cb unwind label %bb.bd, !noalias !5491

bb.bd:                                            ; preds = %bb.bc
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !5491
  unreachable

bb.be:                                            ; preds = %bb.bw
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gp, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !5491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5491
  store ptr %i.gp, ptr %i.ad, align 8, !noalias !5491
  %i.gu = atomicrmw add ptr %i.gp, i64 1 monotonic, align 8, !noalias !5491
  %i.gv = icmp slt i64 %i.gu, 0
  br i1 %i.gv, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !5528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !5491
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.gp, ptr %i.gx, align 8, !noalias !5491
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !5491, !noundef !28 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.ha)
          to label %bb.bj unwind label %bb.bz, !noalias !5491

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !noalias !5491
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5529
  %i.hb = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5529 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.bk, label %bb.bn, !prof !11

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc39.i.i.i.i unwind label %bb.bl, !noalias !5491

.noexc39.i.i.i.i:                                 ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtB1J_6Server13from_listenerNtNtNtBK_3net3tcp11TcpListenerE0uEs_0ECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ab) #46
          to label %.body29.thread.i.i.i.i unwind label %bb.bm, !noalias !5491

bb.bm:                                            ; preds = %bb.bl
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !5491
  unreachable

.body29.i.i.i.i:                                  ; preds = %bb.bt
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread.i.i.i.i

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hb, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !noalias !5491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5491
  %i.hg = load ptr, ptr %i.af, align 8, !noalias !5491, !nonnull !28, !noundef !28
  %i.hh = atomicrmw add ptr %i.hg, i64 1 monotonic, align 8, !noalias !5491
  %i.hi = icmp slt i64 %i.hh, 0
  br i1 %i.hi, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hj = load ptr, ptr %i.af, align 8, !noalias !5491, !nonnull !28, !noundef !28
  store ptr %i.hj, ptr %i.aa, align 8, !noalias !5491
end_hunk_0
begin_hunk_1_@_RNvMNtCsc4241EHy6Do_9typst_kit6serverNtB2_10HttpServer3new:bb.a

bb.fx:                                            ; preds = %bb.fw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i31.i
  %i.rb = phi ptr [ %i.qy, %bb.fw ], [ %i.qn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i31.i ]
  %i.rc = phi ptr [ %i.qy, %bb.fw ], [ %i.qp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i31.i ]
  %i.rd = phi ptr [ %i.qy, %bb.fw ], [ %i.qq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i31.i ]
  %i.re = phi i64 [ %i.qz, %bb.fw ], [ %i.qs, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i31.i ]
  %i.rf = add i64 %i.re, %2                       ; 2 uses
  store i64 %i.rf, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5676, !noalias !5641
  br label %bb.fo

bb.fy:                                            ; preds = %bb.fk
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.fz:                                            ; preds = %bb.fs, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.058.0.copyload = phi i64 [ %.sroa.058.0.copyload.pre, %bb.fs ], [ %i.pr, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 3 uses
  %i.rh = phi i64 [ %i.py, %bb.fs ], [ %i.pm, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i ]
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i24, align 8, !noalias !5663 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5678
  %i.ri = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5678 ; 6 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %bb.ga, label %bb.gd, !prof !11

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #45
          to label %.noexc.i29 unwind label %bb.gb, !noalias !5683

.noexc.i29:                                       ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %bb.ga
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rl = icmp eq i64 %.sroa.058.0.copyload, 0
  br i1 %i.rl, label %.thread, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.058.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5684
  br label %.thread

bb.gd:                                            ; preds = %bb.fz
  %i.rm = add nuw i64 %i.rh, %gepdiff.i
  store i64 %.sroa.058.0.copyload, ptr %i.ri, align 8, !noalias !5683
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !5683
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store i64 %i.rm, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !5683
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5691
  %i.rn = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5691 ; 12 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.ge, label %bb.gh, !prof !11

bb.ge:                                            ; preds = %bb.gd
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc32 unwind label %bb.gf

.noexc32:                                         ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.ge
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCsc4241EHy6Do_9typst_kit6server6BucketINtNtBG_5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtB1h_8HttpBodyENtNtB4_6marker4SendNtB3A_4SyncEL_EEEEB1j_(ptr nonnull %i.ri, ptr nonnull @272) #46
          to label %.thread unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.gh:                                            ; preds = %bb.gd
  store i64 1, ptr %i.rn, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i64 1, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store ptr %i.ri, ptr %.sroa.6.0..sroa_idx76, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  store ptr @272, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 40
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  store ptr %i.rn, ptr %i.bi, align 8
  %i.rr = atomicrmw add ptr %i.rn, i64 1 monotonic, align 8
  %i.rs = icmp slt i64 %i.rr, 0
  br i1 %i.rs, label %bb.ih, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bg, ptr noundef nonnull align 8 dereferenceable(136) %i.bj, i64 136, i1 false)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.ru = zext i1 %5 to i8
  store i8 %i.ru, ptr %i.rt, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  store ptr %i.rn, ptr %i.rv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store i64 -1, ptr %i.rw, align 8
  store i64 0, ptr %i.bf, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i8 0, ptr %i.rx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5694
  store ptr null, ptr %i.l, align 8, !noalias !5699
  %i.ry = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !5699 ; 2 uses
  %i.rz = icmp eq i64 %i.ry, 0
  br i1 %i.rz, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5699
  invoke void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 14)
          to label %.noexc.i.i36 unwind label %bb.gw, !noalias !5699

.noexc.i.i36:                                     ; preds = %bb.gj
  %i.sa = load i64, ptr %i.d, align 8, !range !69, !noalias !5699, !noundef !28 ; 5 uses
  %.not.i.i.i37 = icmp eq i64 %i.sa, -1
  br i1 %.not.i.i.i37, label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB15_10HttpServer3new0uE00B17_.exit.i.i.i, label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.sb = add i64 %i.ry, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB13_10HttpServer3new0uE0B15_.exit.i.i

bb.gl:                                            ; preds = %.noexc.i.i36
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5699, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5704
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i.i.i, i64 noundef %.sroa.55.0.copyload.i.i.i)
          to label %bb.go unwind label %bb.gm, !noalias !5704

bb.gm:                                            ; preds = %bb.gl
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sd = icmp eq i64 %i.sa, 0
  br i1 %i.sd, label %.body35.thread.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %i.sa, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5707
  br label %.body35.thread.i.i

bb.go:                                            ; preds = %bb.gl
  %i.se = load i64, ptr %i.c, align 8, !range !30, !noalias !5704, !noundef !28
  %i.sf = trunc nuw i64 %i.se to i1
  br i1 %i.sf, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5704
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i

bb.gq:                                            ; preds = %bb.go
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !noalias !5704, !nonnull !28, !noundef !28 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.sj = load i64, ptr %i.si, align 8, !noalias !5704, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5704
  switch i64 %i.sj, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i64 1, label %bb.gr
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.sk = load i8, ptr %i.sh, align 1, !alias.scope !5710, !noalias !5713, !noundef !28 ; 2 uses
  switch i8 %i.sk, label %bb.gs [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.gq
  %.pr.i.i.i.i.i = load i8, ptr %i.sh, align 1, !alias.scope !5710, !noalias !5713
  br label %bb.gs

bb.gs:                                            ; preds = %thread-pre-split.i.i.i.i.i, %bb.gr
  %i.sl = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.sk, %bb.gr ]
  %cond.i.i.i.i.i = icmp eq i8 %i.sl, 43          ; 2 uses
  %i.sm = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.sj, %i.sm ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i38 = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.sn = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.sn, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.gs
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.gt
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i171, i64 1
  %i.sp = add nsw i64 %.sroa.15.1.i.i.i.i.i170, -1 ; 2 uses
  %.not52.i.not.i.i.i.i = icmp eq i64 %i.sp, 0
  br i1 %.not52.i.not.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.gs, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i171 = phi ptr [ %i.so, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i38, %bb.gs ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i170 = phi i64 [ %i.sp, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.gs ]
  %.sroa.042.0.i.i.i.i.i169 = phi i64 [ %i.sv, %.preheader56.i.i.i.i.i ], [ 0, %bb.gs ]
  %9 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i169, i64 10) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.gt, !prof !74

bb.gt:                                            ; preds = %.preheader56.i.i.i.i.i.preheader
  %11 = extractvalue { i64, i1 } %9, 0            ; 2 uses
  %i.sq = load i8, ptr %.sroa.0.1.i.i.i.i.i171, align 1, !alias.scope !5710, !noalias !5713, !noundef !28
  %i.sr = zext i8 %i.sq to i32
  %i.ss = add nsw i32 %i.sr, -48                  ; 2 uses
  %i.st = icmp ugt i32 %i.ss, 9
  %i.su = zext nneg i32 %i.ss to i64
  %i.sv = add i64 %11, %i.su                      ; 3 uses
  %i.sw = icmp ult i64 %i.sv, %11
  %or.cond.i.i.i.i = select i1 %i.st, i1 true, i1 %i.sw, !prof !215
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !215

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.gu
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.td, %bb.gu ], [ %.sroa.0.0.i.i.i.i.i38, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.tc, %bb.gu ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.tf, %bb.gu ], [ 0, %.preheader.i.i.i.i.i ]
  %i.sx = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !5710, !noalias !5713, !noundef !28
  %i.sy = zext i8 %i.sx to i32
  %i.sz = add nsw i32 %i.sy, -48                  ; 2 uses
  %i.ta = icmp ugt i32 %i.sz, 9
  br i1 %i.ta, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tb = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.tc = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.te = zext nneg i32 %i.sz to i64
  %i.tf = add i64 %i.tb, %i.te                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.tc, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.gt, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.gu, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.gr, %bb.gr, %bb.gq, %bb.gp
  %.sroa.0.1.i.i.i.i = phi i64 [ 2097152, %bb.gp ], [ 0, %.preheader.i.i.i.i.i ], [ 2097152, %bb.gr ], [ 2097152, %bb.gq ], [ 2097152, %bb.gr ], [ %i.tf, %bb.gu ], [ 2097152, %.lr.ph.i.i.i.i.i ], [ 2097152, %bb.gt ], [ 2097152, %.preheader56.i.i.i.i.i.preheader ], [ %i.sv, %.preheader56.i.i.i.i.i ] ; 2 uses
  %i.tg = icmp eq i64 %i.sa, 0
  br i1 %i.tg, label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB15_10HttpServer3new0uE00B17_.exit.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %i.sa, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5715
  br label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB15_10HttpServer3new0uE00B17_.exit.i.i.i

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB15_10HttpServer3new0uE00B17_.exit.i.i.i: ; preds = %bb.gv, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, %.noexc.i.i36
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i, %bb.gv ], [ %.sroa.0.1.i.i.i.i, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i ], [ 2097152, %.noexc.i.i36 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5699
  %i.th = add i64 %.sroa.0.0.i.i.i, 1
  store atomic i64 %i.th, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !5699
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB13_10HttpServer3new0uE0B15_.exit.i.i

.body35.i.i:                                      ; preds = %bb.gz, %.thread.i.i, %bb.gw
  %.sroa.016.0.i.i = phi i8 [ %.sroa.016.2.i.i, %bb.gz ], [ %.sroa.017.1.i.i, %bb.gw ], [ %.sroa.016.2.i.i, %.thread.i.i ]
  %.sroa.017.0.i.i = phi i8 [ %.sroa.017.2.i.i, %bb.gz ], [ %.sroa.017.1.i.i, %bb.gw ], [ %.sroa.017.2.i.i, %.thread.i.i ] ; 2 uses
  %.pn27.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.gz ], [ %i.tj, %bb.gw ], [ %.pn.pn.i.i, %.thread.i.i ] ; 2 uses
  %i.ti = trunc nuw i8 %.sroa.016.0.i.i to i1
  br i1 %i.ti, label %.body35.thread.i.i, label %bb.id

bb.gw:                                            ; preds = %bb.hy, %bb.gx, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB13_10HttpServer3new0uE0B15_.exit.i.i, %bb.gj
  %.sroa.017.1.i.i = phi i8 [ 0, %bb.hy ], [ 1, %bb.gx ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB13_10HttpServer3new0uE0B15_.exit.i.i ], [ 1, %bb.gj ] ; 2 uses
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB13_10HttpServer3new0uE0B15_.exit.i.i: ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB15_10HttpServer3new0uE00B17_.exit.i.i.i, %bb.gk
  %.sroa.02.0.i.i = phi i64 [ %i.sb, %bb.gk ], [ %.sroa.0.0.i.i.i, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB15_10HttpServer3new0uE00B17_.exit.i.i.i ]
  %i.tk = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.gx unwind label %bb.gw, !noalias !5699

bb.gx:                                            ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB13_10HttpServer3new0uE0B15_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5699
  %i.tl = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.tk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.rw)
          to label %bb.gy unwind label %bb.gw, !noalias !5718

bb.gy:                                            ; preds = %bb.gx
  store ptr %i.tl, ptr %i.k, align 8, !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5699
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.hb unwind label %bb.ha, !noalias !5699

.thread.i.i:                                      ; preds = %bb.ic, %bb.hz, %.body29.thread.i.i, %bb.hf, %bb.ha
  %.sroa.016.2.i.i = phi i8 [ 1, %bb.ic ], [ 0, %bb.hf ], [ 1, %bb.ha ], [ 0, %.body29.thread.i.i ], [ 0, %bb.hz ] ; 2 uses
  %.sroa.017.2.i.i = phi i8 [ 0, %bb.ic ], [ 0, %bb.hf ], [ 1, %bb.ha ], [ 0, %.body29.thread.i.i ], [ 0, %bb.hz ] ; 2 uses
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.tu, %bb.ic ], [ %i.tw, %bb.hf ], [ %i.tp, %bb.ha ], [ %eh.lpad-body3010.i.i, %.body29.thread.i.i ], [ %eh.lpad-body3010.i.i, %bb.hz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5719)
  call void @llvm.experimental.noalias.scope.decl(metadata !5722)
  call void @llvm.experimental.noalias.scope.decl(metadata !5725)
  call void @llvm.experimental.noalias.scope.decl(metadata !5728)
  %i.tm = load ptr, ptr %i.k, align 8, !alias.scope !5731, !noalias !5699, !nonnull !28, !noundef !28
  %i.tn = atomicrmw sub ptr %i.tm, i64 1 release, align 8, !noalias !5732
  %i.to = icmp eq i64 %i.tn, 1
  br i1 %i.to, label %bb.gz, label %.body35.i.i

bb.gz:                                            ; preds = %.thread.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #48
          to label %.body35.i.i unwind label %bb.ib, !noalias !5699

bb.ha:                                            ; preds = %bb.gy
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.hb:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5699
  store i64 1, ptr %i.e, align 8, !noalias !5699
  %i.tq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.tq, align 8, !noalias !5699
  %i.tr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, i8 0, i64 16, i1 false), !noalias !5699
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5733
  %i.ts = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5733 ; 6 uses
  %i.tt = icmp eq ptr %i.ts, null
  br i1 %i.tt, label %bb.hc, label %bb.hg, !prof !11

bb.hc:                                            ; preds = %bb.hb
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc38.i.i unwind label %bb.hd, !noalias !5699

.noexc38.i.i:                                     ; preds = %bb.hc
  unreachable

bb.hd:                                            ; preds = %bb.hc
  %i.tu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #46
          to label %bb.ic unwind label %bb.he, !noalias !5699

bb.he:                                            ; preds = %bb.hd
  %i.tv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !5699
  unreachable

bb.hf:                                            ; preds = %bb.hx
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.hg:                                            ; preds = %bb.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ts, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5699
  store ptr %i.ts, ptr %i.i, align 8, !noalias !5699
  %i.tx = atomicrmw add ptr %i.ts, i64 1 monotonic, align 8, !noalias !5699
  %i.ty = icmp slt i64 %i.tx, 0
  br i1 %i.ty, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.tz = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.tz, ptr noundef nonnull align 8 dereferenceable(152) %i.bg, i64 152, i1 false), !noalias !5736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !5699
  %i.ua = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr %i.ts, ptr %i.ua, align 8, !noalias !5699
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !noalias !5699, !noundef !28 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i34, label %bb.hk, label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.trap()
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.ud)
          to label %bb.hk unwind label %bb.ia, !noalias !5699

bb.hk:                                            ; preds = %bb.hj, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.g, ptr noundef nonnull align 8 dereferenceable(192) %i.h, i64 192, i1 false), !noalias !5699
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5737
  %i.ue = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5737 ; 3 uses
  %i.uf = icmp eq ptr %i.ue, null
  br i1 %i.uf, label %bb.hl, label %bb.ho, !prof !11

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #45
          to label %.noexc39.i.i unwind label %bb.hm, !noalias !5699

.noexc39.i.i:                                     ; preds = %bb.hl
  unreachable

bb.hm:                                            ; preds = %bb.hl
  %i.ug = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB1F_10HttpServer3new0uEs_0EB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.g) #46
          to label %.body29.thread.i.i unwind label %bb.hn, !noalias !5699

bb.hn:                                            ; preds = %bb.hm
  %i.uh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !5699
  unreachable

.body29.i.i:                                      ; preds = %bb.hu
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread.i.i

bb.ho:                                            ; preds = %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ue, ptr noundef nonnull align 8 dereferenceable(192) %i.h, i64 192, i1 false), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5699
  %i.uj = load ptr, ptr %i.k, align 8, !noalias !5699, !nonnull !28, !noundef !28
  %i.uk = atomicrmw add ptr %i.uj, i64 1 monotonic, align 8, !noalias !5699
  %i.ul = icmp slt i64 %i.uk, 0
  br i1 %i.ul, label %bb.ht, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.um = load ptr, ptr %i.k, align 8, !noalias !5699, !nonnull !28, !noundef !28
  store ptr %i.um, ptr %i.f, align 8, !noalias !5699
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages7package:bb.a

bb.cd:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, %bb.by, %bb.bx
  %.sroa.027.0.i129 = phi ptr [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i132, %bb.by ], [ %.val.i132, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122 ]
  %.sroa.6165.sroa.0.0.copyload = load i64, ptr %i.au, align 8, !alias.scope !7525
  %.sroa.6165.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6165.sroa.4.0.copyload = load i32, ptr %.sroa.6165.sroa.4.0..sroa_idx, align 8, !alias.scope !7525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7525
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ci, %bb.cd
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0 = phi i64 [ %i.fa, %bb.ci ], [ %.sroa.4178.0.copyload, %bb.cd ]
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.0.0 = phi i32 [ undef, %bb.ci ], [ %.sroa.0177.0.copyload, %bb.cd ]
  %.sroa.53.sroa.0.sroa.0.sroa.5.0 = phi i64 [ %i.ah, %bb.ci ], [ %i.fn, %bb.cd ]
  %.sroa.53.sroa.0.sroa.6.0 = phi ptr [ %.sroa.027.0.i105, %bb.ci ], [ %i.fo, %bb.cd ]
  %.sroa.53.sroa.8.sroa.5.0 = phi i32 [ undef, %bb.ci ], [ %.sroa.6165.sroa.4.0.copyload, %bb.cd ]
  %.sroa.53.sroa.8.sroa.0.0 = phi i64 [ %.sroa.9.0.insert.ext, %bb.ci ], [ %.sroa.6165.sroa.0.0.copyload, %bb.cd ]
  %.sroa.53.sroa.7.0 = phi i64 [ %.sroa.7170.32.copyload, %bb.ci ], [ %.val45.i133, %bb.cd ]
  %.sroa.53.sroa.6.0 = phi ptr [ %i.gg, %bb.ci ], [ %.sroa.027.0.i129, %bb.cd ]
  %.sroa.02.0 = phi i32 [ 0, %bb.ci ], [ 1, %bb.cd ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.02.0, ptr %i.fv, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.0.0, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0, ptr %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.53.sroa.0.sroa.0.sroa.5.0, ptr %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.53.sroa.0.sroa.6.0, ptr %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.53.sroa.6.0, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.53.sroa.7.0, ptr %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.53.sroa.8.sroa.0.0, ptr %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.8.sroa.5.0..sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.53.sroa.8.sroa.5.0, ptr %.sroa.53.sroa.8.sroa.5.0..sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.fw, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !7526)
  %i.fx = icmp eq i32 %i.es, 0
  br i1 %i.fx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fy = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7529)
  %.val.i.i143 = load ptr, ptr %i.fy, align 8, !alias.scope !7532 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %.val1.i.i144 = load i8, ptr %i.fz, align 1, !alias.scope !7532, !noundef !28
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i144, -1
  br i1 %.not.i.i.i.i, label %bb.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i143) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i143, inttoptr (i64 16 to ptr)
  %i.ga = getelementptr inbounds i8, ptr %.val.i.i143, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.cg
  %i.gb = atomicrmw sub ptr %i.ga, i64 1 release, align 8, !noalias !7532
  %.not.i.i.i.i.i = icmp eq i64 %i.gb, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7532
  %i.gc = getelementptr i8, ptr %.val.i.i143, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !7532, !noundef !28 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.ch, !prof !24

bb.ch:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #45
          to label %.noexc145 unwind label %bb.bk

.noexc145:                                        ; preds = %bb.ch
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %i.gd = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ga, ptr %i.ge, align 8, !noalias !7532
  store i64 8, ptr %i.c, align 8, !noalias !7532
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.gd, ptr %i.gf, align 8, !noalias !7532
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc146 unwind label %bb.bk

.noexc146:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7532
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

bb.ci:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, %bb.bq, %bb.bp
  %.sroa.027.0.i105 = phi ptr [ inttoptr (i64 16 to ptr), %bb.bp ], [ %.val.i108, %bb.bq ], [ %.val.i108, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98 ]
  %.sroa.7170.32.copyload = load i64, ptr %i.au, align 8, !alias.scope !7519
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.32..sroa_idx, align 8, !alias.scope !7519
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.0.copyload to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7519
  %i.gg = inttoptr i64 %.val45.i109 to ptr
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit: ; preds = %.noexc146, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.cg, %bb.cf, %bb.ce
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package22VersionlessPackageSpecECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %bb.cj unwind label %bb.bh

bb.cj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7533
  switch i64 %i.bz, label %default.unreachable [
    i64 2, label %bb.cm
    i64 3, label %bb.ck
    i64 0, label %bb.cm
    i64 1, label %bb.cl
  ], !prof !191

bb.ck:                                            ; preds = %bb.cj
  %i.gh = icmp ult ptr %.val75, inttoptr (i64 188978561024 to ptr)
  %i.gi = and i64 %i.by, 1095216660480
  %i.gj = icmp ne i64 %i.gi, 1095216660480
  call void @llvm.assume(i1 %i.gh)
  call void @llvm.assume(i1 %i.gj)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.gk = getelementptr i8, ptr %.val75, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.gk, ptr %i.gl, align 8, !alias.scope !7536, !noalias !7533
  store i8 3, ptr %i.b, align 8, !alias.scope !7536, !noalias !7533
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %bb.cm unwind label %.body86

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.cj, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.au

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit91: ; preds = %bb.av, %bb.au, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  ret void

bb.cn:                                            ; preds = %.noexc77, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.gm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gm) #46
          to label %.thread unwind label %bb.be
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4growCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !28 ; 4 uses
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1SAYzCH86J4_12vello_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7539)
  %i.b = load i64, ptr %0, align 8, !range !64, !alias.scope !7539, !noundef !28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7539, !noundef !28 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7539, !noundef !28 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !7539, !nonnull !28, !noundef !28 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !7539
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !7539
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7539, !nonnull !28, !noundef !28 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !7539
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 121) %3) unnamed_addr #13 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !215
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !215

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #42
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #42
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_14ProgressReader3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %4, i64 noundef %5, i32 noundef range(i32 0, 1000000000) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %8) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7542
  %i.a = tail call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !7542 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EECsc4241EHy6Do_9typst_kit(ptr nonnull %3, ptr nonnull %4) #46
          to label %bb.i unwind label %bb.g

bb.c:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 200) #45
          to label %bb.h unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.d = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.f = extractvalue { i64, i32 } %i.d, 0
  %i.g = extractvalue { i64, i32 } %i.d, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %4, ptr %i.i, align 8
  store i64 %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %5, ptr %.sroa.81.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %6, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.102.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %7, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %8, ptr %i.l, align 8
  ret void

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_14ProgressReader8download(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7545
  %i.d = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #42, !noalias !7545 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i, label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit.exit

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i
  unreachable

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsc4241EHy6Do_9typst_kit.exit, %bb.c
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsc4241EHy6Do_9typst_kit.exit ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit10downloader14ProgressReaderEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %1) #46
          to label %bb.aw unwind label %bb.av

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = load i64, ptr %1, align 8, !range !30, !noundef !28
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !28 ; 6 uses
  %.not.i = icmp slt i64 %i.j, 0
  br i1 %.not.i, label %.invoke, label %bb.e, !prof !215

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7550
  %i.l = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !7550 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = ptrtoint ptr %i.l to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit

bb.h:                                             ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7553
  %i.o = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !7553 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.invoke, label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.l, %.loopexit, %bb.i
  %.pn13 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn, %.loopexit ], [ %.pn, %bb.l ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !7556
  br label %bb.b

bb.i:                                             ; preds = %.invoke
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsc4241EHy6Do_9typst_kit.exit

bb.j:                                             ; preds = %bb.h, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit
  %.sink125 = phi i64 [ %i.j, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit ], [ 8192, %bb.h ]
  %.sink = phi ptr [ %i.aq, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit ], [ %i.o, %bb.h ] ; 2 uses
  store i64 %.sink125, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !28, !noundef !28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !align !163, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !28, !nonnull !28
end_hunk_2
begin_hunk_3_@_RNvNtCsc4241EHy6Do_9typst_kit6server6handle:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8654
  store i64 0, ptr %i.av, align 8, !noalias !8654
  %i.adj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.adj, align 8, !noalias !8654
  %i.adk = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %i.adk, align 8, !noalias !8654
  br label %bb.ed

bb.ed:                                            ; preds = %bb.fr, %bb.ec
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %bb.fr ], [ %i.nj, %bb.ec ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.fr ], [ %i.ni, %bb.ec ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !8654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.at, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !8654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !8654
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8699
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !8702
  %i.adl = call noundef align 8 dereferenceable_or_null(768) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !8702 ; 2 uses
  %i.adm = icmp eq ptr %i.adl, null
  br i1 %i.adm, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 768) #45
          to label %bb.fk unwind label %bb.fl, !noalias !8705

bb.ef:                                            ; preds = %bb.ed
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr %.sroa.0.1.i, ptr %i.adn, align 8, !noalias !8699
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i64 %.sroa.4.1.i, ptr %i.ado, align 8, !noalias !8699
  %i.adp = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store i16 200, ptr %i.adp, align 8, !noalias !8699
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  store i64 16, ptr %i.adq, align 8, !noalias !8699
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 3 uses
  store ptr %i.adl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8699
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !8699
  store i64 1, ptr %i.aj, align 8, !noalias !8699
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store i64 %.sroa.4.1.i, ptr %i.adr, align 8, !noalias !8699
  %i.ads = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %i.ads, align 8, !noalias !8699
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.ar, align 8, !alias.scope !8696, !noalias !8706 ; 4 uses
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.46.0.copyload.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !8696, !noalias !8706, !nonnull !28, !noundef !28 ; 5 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.57.0.copyload.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !8696, !noalias !8706 ; 3 uses
  %i.adt = icmp ult i64 %.sroa.57.0.copyload.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.adt)
  %.idx.i.i = mul nuw nsw i64 %.sroa.57.0.copyload.i.i, 48
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload.i.i, i64 %.idx.i.i ; 4 uses
  %i.adv = icmp sgt i64 %.sroa.05.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.adv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8699
  store ptr %.sroa.46.0.copyload.i.i, ptr %i.ai, align 8, !noalias !8699
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.05.0.copyload.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !8699
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.adu, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !8699
  %i.adw = icmp eq i64 %.sroa.57.0.copyload.i.i, 0
  br i1 %i.adw, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.lr.ph.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.lr.ph.i.i: ; preds = %bb.ef
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ady = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.adz = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.i.i

.body50.i:                                        ; preds = %bb.ff, %bb.fe, %.thread44.i.i
  %eh.lpad-body51.i = phi { ptr, i32 } [ %i.aed, %.thread44.i.i ], [ %lpad.phi.i.i, %bb.fe ], [ %lpad.phi.i.i, %bb.ff ]
  store ptr %i.aeb, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !8699
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #46, !noalias !8707
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbGiR87yI9G2_9tiny_http8response8ResponseRShEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aj) #46, !noalias !8707
  br label %bb.kh

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.fj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.lr.ph.i.i
  %i.aea = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.lr.ph.i.i ], [ %i.agr, %bb.fj ] ; 9 uses
  %.pre.i.i = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.lr.ph.i.i ], [ %.pre.i137.i, %bb.fj ] ; 3 uses
  %.sroa.46.0.copyload538.i.i = phi ptr [ %.sroa.46.0.copyload.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.lr.ph.i.i ], [ %i.aeb, %bb.fj ] ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload538.i.i, i64 48 ; 4 uses
  %.sroa.06.0.copyload7.i.i = load i64, ptr %.sroa.46.0.copyload538.i.i, align 8, !noalias !8708 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.06.0.copyload7.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %bb.eg

bb.eg:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.7.0..sroa.46.0.copyload5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload538.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8699
  store i64 %.sroa.06.0.copyload7.i.i, ptr %i.ah, align 8, !noalias !8699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa.46.0.copyload5.sroa_idx.i.i, i64 40, i1 false), !noalias !8707
  call void @llvm.experimental.noalias.scope.decl(metadata !8711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !alias.scope !8716, !noalias !8723
  %i.aec = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 10)
          to label %bb.eh unwind label %.thread37.loopexit.split-lp.i.i, !noalias !8724

.thread44.i.i:                                    ; preds = %bb.ez
  %i.aed = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ah) #46, !noalias !8707
  br label %.body50.i

.thread37.loopexit.i.i:                           ; preds = %.lr.ph254
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread37.i.i

.thread37.loopexit.split-lp.i.i:                  ; preds = %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread37.i.i

.thread37.i.i:                                    ; preds = %.thread37.loopexit.split-lp.i.i, %.thread37.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.thread37.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread37.loopexit.split-lp.i.i ] ; 2 uses
  %.val16.i.i = load i64, ptr %i.q, align 8, !noalias !8714 ; 2 uses
  %i.aee = icmp eq i64 %.val16.i.i, 0
  br i1 %i.aee, label %bb.fe, label %bb.fd

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.aec, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aef = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 7)
          to label %bb.ej unwind label %.thread37.loopexit.split-lp.i.i, !noalias !8724

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.aef, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aeg = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 17)
          to label %bb.el unwind label %.thread37.loopexit.split-lp.i.i, !noalias !8724

bb.el:                                            ; preds = %bb.ek
  br i1 %i.aeg, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aeh = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 7)
          to label %bb.en unwind label %.thread37.loopexit.split-lp.i.i, !noalias !8724

bb.en:                                            ; preds = %bb.em
  br i1 %i.aeh, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aei = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 14)
          to label %bb.ep unwind label %.thread37.loopexit.split-lp.i.i, !noalias !8724

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.aei, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aej = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 12)
          to label %bb.ew unwind label %.thread37.loopexit.split-lp.i.i, !noalias !8724

bb.er:                                            ; preds = %bb.ep
  %i.aek = load ptr, ptr %.sink70.i.sroa.gep.i, align 8, !noalias !8714, !nonnull !28, !noundef !28 ; 3 uses
  %i.ael = load i64, ptr %i.ady, align 8, !noalias !8714, !noundef !28 ; 2 uses
  switch i64 %i.ael, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i
    i64 1, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er
  %i.aem = load i8, ptr %i.aek, align 1, !alias.scope !8725, !noalias !8728, !noundef !28 ; 2 uses
  switch i8 %i.aem, label %bb.et [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.er
  %.pr.i.i.i = load i8, ptr %i.aek, align 1, !alias.scope !8725, !noalias !8728
  br label %bb.et

bb.et:                                            ; preds = %thread-pre-split.i.i.i, %bb.es
  %i.aen = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.aem, %bb.es ]
  %cond.i.i.i = icmp eq i8 %i.aen, 43             ; 2 uses
  %i.aeo = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.ael, %i.aeo  ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i48.i = getelementptr inbounds nuw i8, ptr %i.aek, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.aep = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.aep, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.et
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i49.i

.preheader56.i.i.i:                               ; preds = %bb.eu
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i257, i64 1
  %i.aer = add nsw i64 %.sroa.15.1.i.i.i256, -1   ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.aer, 0
  br i1 %.not52.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.et, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i257 = phi ptr [ %i.aeq, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i48.i, %bb.et ] ; 2 uses
  %.sroa.15.1.i.i.i256 = phi i64 [ %i.aer, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.et ]
  %.sroa.042.0.i.i.i255 = phi i64 [ %i.aex, %.preheader56.i.i.i ], [ 0, %bb.et ]
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i255, i64 10) ; 2 uses
  %3 = extractvalue { i64, i1 } %2, 1
  br i1 %3, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.eu, !prof !74

bb.eu:                                            ; preds = %.preheader56.i.i.i.preheader
  %4 = extractvalue { i64, i1 } %2, 0             ; 2 uses
  %i.aes = load i8, ptr %.sroa.0.1.i.i.i257, align 1, !alias.scope !8725, !noalias !8728, !noundef !28
  %i.aet = zext i8 %i.aes to i32
  %i.aeu = add nsw i32 %i.aet, -48                ; 2 uses
  %i.aev = icmp ugt i32 %i.aeu, 9
  %i.aew = zext nneg i32 %i.aeu to i64
  %i.aex = add i64 %4, %i.aew                     ; 3 uses
  %i.aey = icmp ult i64 %i.aex, %4
  %or.cond.i.i = select i1 %i.aev, i1 true, i1 %i.aey, !prof !215
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i, label %.preheader56.i.i.i, !prof !215

.lr.ph.i.i49.i:                                   ; preds = %.preheader.i.i.i, %bb.ev
  %.sroa.0.269.i.i.i = phi ptr [ %i.aff, %bb.ev ], [ %.sroa.0.0.i.i48.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.afe, %bb.ev ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.afh, %bb.ev ], [ 0, %.preheader.i.i.i ]
  %i.aez = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !8725, !noalias !8728, !noundef !28
  %i.afa = zext i8 %i.aez to i32
  %i.afb = add nsw i32 %i.afa, -48                ; 2 uses
  %i.afc = icmp ult i32 %i.afb, 10
  br i1 %i.afc, label %bb.ev, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ev:                                            ; preds = %.lr.ph.i.i49.i
  %i.afd = mul i64 %.sroa.042.267.i.i.i, 10
  %i.afe = add nsw i64 %.sroa.15.268.i.i.i, -1    ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.afg = zext nneg i32 %i.afb to i64
  %i.afh = add i64 %i.afd, %i.afg                 ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.afe, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i49.i

bb.ew:                                            ; preds = %bb.eq
  br i1 %i.aej, label %bb.ex, label %.loopexit.i.i

bb.ex:                                            ; preds = %bb.ew
  %i.afi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8711, !noalias !8730, !nonnull !28, !noundef !28 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aea, 48
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 %.idx
  %i.afk = icmp eq i64 %i.aea, 0
  br i1 %i.afk, label %.loopexit.i.i, label %.lr.ph254

bb.ey:                                            ; preds = %.noexc.i47.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afn, i64 48 ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.afj
  br i1 %i.afm, label %.loopexit.i.i, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.ex, %bb.ey
  %i.afn = phi ptr [ %i.afl, %bb.ey ], [ %i.afi, %bb.ex ] ; 4 uses
  %i.afo = invoke noundef zeroext i1 @_RNvMsd_NtCsbGiR87yI9G2_9tiny_http6commonNtB5_11HeaderField5equiv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 12)
          to label %.noexc.i47.i unwind label %.thread37.loopexit.i.i, !noalias !8724

.noexc.i47.i:                                     ; preds = %.lr.ph254
  br i1 %i.afo, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs_NtBX_8responseINtB2s_8ResponseRShE10add_headerBT_E0ECsc4241EHy6Do_9typst_kit.exit.i.i, label %bb.ey

.loopexit.i.i:                                    ; preds = %bb.ey, %bb.ex, %bb.ew
  %i.afp = phi i64 [ %.pre.i.i, %bb.ew ], [ %i.aea, %bb.ex ], [ %i.aea, %bb.ey ] ; 3 uses
  %i.afq = load i64, ptr %i.adq, align 8, !range !64, !alias.scope !8731, !noalias !8734, !noundef !28
  %i.afr = icmp eq i64 %i.afp, %i.afq
  br i1 %i.afr, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %.loopexit.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adq)
          to label %bb.fb unwind label %.thread44.i.i, !noalias !8736

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs_NtBX_8responseINtB2s_8ResponseRShE10add_headerBT_E0ECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %.noexc.i47.i
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 24 ; 2 uses
  %.val14.i.i = load i64, ptr %i.afs, align 8, !noalias !8724 ; 2 uses
  %i.aft = icmp eq i64 %.val14.i.i, 0
  br i1 %i.aft, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i, label %bb.fa

bb.fa:                                            ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs_NtBX_8responseINtB2s_8ResponseRShE10add_headerBT_E0ECsc4241EHy6Do_9typst_kit.exit.i.i
  %i.afu = getelementptr i8, ptr %i.afn, i64 32
  %.val15.i.i = load ptr, ptr %i.afu, align 8, !noalias !8724, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i, i64 noundef %.val14.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8724
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.fa, %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs_NtBX_8responseINtB2s_8ResponseRShE10add_headerBT_E0ECsc4241EHy6Do_9typst_kit.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afs, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.adx, i64 24, i1 false), !noalias !8737
  %.val20.i.i = load i64, ptr %i.q, align 8, !noalias !8714 ; 2 uses
  %i.afv = icmp eq i64 %.val20.i.i, 0
  br i1 %i.afv, label %bb.fj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.sink.split.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.sink.split.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i
  %.pre.i135.i = phi i64 [ %.pre.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i ], [ %i.aea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i ]
  %.sink70.i.sroa.phi.i = phi ptr [ %.sink70.i.sroa.gep.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i ], [ %.sink70.i.sroa.gep52.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i ]
  %.val12.sink.i.i = phi i64 [ %.val12.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i ], [ %.val20.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i ]
  %.val13.i.i = load ptr, ptr %.sink70.i.sroa.phi.i, align 8, !noalias !8714, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef %.val12.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8724
  br label %bb.fj

bb.fb:                                            ; preds = %bb.ez, %.loopexit.i.i
  %i.afw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8731, !noalias !8734, !nonnull !28, !noundef !28
  %i.afx = getelementptr inbounds nuw [48 x i8], ptr %i.afw, i64 %i.afp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.afx, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !8707
  %i.afy = add i64 %i.afp, 1                      ; 3 uses
  store i64 %i.afy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !8731, !noalias !8734
  br label %bb.fj

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %.preheader56.i.i.i, %bb.ev, %.preheader.i.i.i
  %.sroa.1028.0.i.i = phi i64 [ %i.afh, %bb.ev ], [ 0, %.preheader.i.i.i ], [ %i.aex, %.preheader56.i.i.i ]
  store i64 1, ptr %i.aj, align 8, !alias.scope !8711, !noalias !8730
  store i64 %.sroa.1028.0.i.i, ptr %i.adr, align 8, !alias.scope !8711, !noalias !8730
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i: ; preds = %bb.eu, %.preheader56.i.i.i.preheader, %.lr.ph.i.i49.i, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %bb.es, %bb.es, %bb.er, %bb.en, %bb.el, %bb.ej, %bb.eh
  %.val18.i.i = load i64, ptr %i.q, align 8, !noalias !8714 ; 2 uses
  %i.afz = icmp eq i64 %.val18.i.i, 0
  br i1 %i.afz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i, label %bb.fc

bb.fc:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i
  %.val19.i.i = load ptr, ptr %.sink70.i.sroa.gep52.i, align 8, !noalias !8714, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i, i64 noundef %.val18.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8724
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i: ; preds = %bb.fc, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i
  %.val12.i.i = load i64, ptr %i.adz, align 8, !noalias !8714 ; 2 uses
  %i.aga = icmp eq i64 %.val12.i.i, 0
  br i1 %i.aga, label %bb.fj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.sink.split.i.i

bb.fd:                                            ; preds = %.thread37.i.i
  %.val17.i.i = load ptr, ptr %.sink70.i.sroa.gep52.i, align 8, !noalias !8714, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef %.val16.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8724
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %.thread37.i.i
  %.val.i.i = load i64, ptr %i.adz, align 8, !noalias !8714 ; 2 uses
  %i.agb = icmp eq i64 %.val.i.i, 0
  br i1 %i.agb, label %.body50.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.val9.i.i = load ptr, ptr %.sink70.i.sroa.gep.i, align 8, !noalias !8714, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8724
  br label %.body50.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.ef
  %.sroa.46.0.copyload425.i.i = phi ptr [ %.sroa.46.0.copyload.i.i, %bb.ef ], [ %i.aeb, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 3 uses
  %i.agc = ptrtoint ptr %i.adu to i64
  %i.agd = ptrtoint ptr %.sroa.46.0.copyload425.i.i to i64
  %i.age = sub nuw i64 %i.agc, %i.agd
  %i.agf = udiv exact i64 %i.age, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !8738)
  %i.agg = icmp eq ptr %i.adu, %.sroa.46.0.copyload425.i.i
  br i1 %i.agg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %.lr.ph.i.i.i.i30.i

.lr.ph.i.i.i.i30.i:                               ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.thread.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.agi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.thread.i.i ] ; 2 uses
  %i.agh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.46.0.copyload425.i.i, i64 %.sroa.0.07.i.i.i.i.i ; 4 uses
  %i.agi = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8741)
  %.val4.i.i.i.i.i.i = load i64, ptr %i.agh, align 8, !alias.scope !8744, !noalias !8745 ; 2 uses
  %i.agj = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.agj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.i.i.i.i30.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.agk, align 8, !alias.scope !8744, !noalias !8745, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8750
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.fg, %.lr.ph.i.i.i.i30.i
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.agl, align 8, !alias.scope !8744, !noalias !8745 ; 2 uses
  %i.agm = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.agm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agh, i64 32
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.agn, align 8, !alias.scope !8744, !noalias !8745, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8750
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.fh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %i.ago = icmp eq i64 %i.agi, %i.agf
  br i1 %i.ago, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %.lr.ph.i.i.i.i30.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %bb.fj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  %i.agp = icmp eq i64 %.sroa.05.0.copyload.i.i, 0
  br i1 %i.agp, label %bb.ft, label %bb.fi

bb.fi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.agq = mul nuw i64 %.sroa.05.0.copyload.i.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i, i64 noundef %i.agq, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !8745
  br label %bb.ft

bb.fj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i, %bb.fb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.sink.split.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i
  %i.agr = phi i64 [ %i.aea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i ], [ %i.afy, %bb.fb ], [ %i.aea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.sink.split.i.i ], [ %i.aea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i ]
  %.pre.i137.i = phi i64 [ %.pre.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit23.i.i ], [ %i.afy, %bb.fb ], [ %.pre.i135.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6common11HeaderFieldECsc4241EHy6Do_9typst_kit.exit.sink.split.i.i ], [ %i.aea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdnE3c6dgt4b_5ascii12ascii_string11AsciiStringECsc4241EHy6Do_9typst_kit.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8699
  %i.ags = icmp eq ptr %i.aeb, %i.adu
  br i1 %i.ags, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit.i.i

bb.fk:                                            ; preds = %bb.ee
  unreachable

bb.fl:                                            ; preds = %bb.ee
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ar) #46, !noalias !8751
  br label %bb.kh

bb.fm:                                            ; preds = %bb.fn, %bb.bs, %.thread.i
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

bb.fn:                                            ; preds = %bb.bx, %bb.bw, %bb.br
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @196, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #49
          to label %.noexc.i unwind label %bb.fm, !noalias !8592
end_hunk_3
begin_hunk_4_@_RNvNtCsc4241EHy6Do_9typst_kit6server6handle:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit64 unwind label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit64: ; preds = %_RNvNtCsc4241EHy6Do_9typst_kit6server11handle_body.exit, %bb.kn
  %i.are = icmp sgt i64 %i.cp, 0
  br i1 %i.are, label %bb.ko, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit67

bb.ko:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit64
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8946
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit67

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit67: ; preds = %bb.ko, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit64
  %.val30 = load i64, ptr %i.bj, align 8, !range !64, !alias.scope !2523, !noundef !28 ; 2 uses
  %i.arf = icmp eq i64 %.val30, 0
  br i1 %i.arf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68, label %bb.kp

bb.kp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit67
  %i.arg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val31 = load ptr, ptr %i.arg, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %.val30, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8951
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68: ; preds = %bb.kp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.val28 = load i64, ptr %i.bn, align 8, !range !64, !alias.scope !2523, !noundef !28 ; 2 uses
  %i.arh = icmp eq i64 %.val28, 0
  br i1 %i.arh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68, %bb.ne
  %.val28.sink = phi i64 [ %.val24, %bb.ne ], [ %.val28, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.3, %bb.ne ], [ %.sroa.0.0.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68 ]
  %i.ari = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.val29 = load ptr, ptr %i.ari, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %.val28.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68, %bb.ne
  %.sroa.0.0 = phi ptr [ %.sroa.0.3, %bb.ne ], [ %.sroa.0.0.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit68 ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  ret ptr %.sroa.0.0

.body60:                                          ; preds = %bb.kq
  %i.arj = landingpad { ptr, i32 }
          cleanup
  br label %.body53

bb.kq:                                            ; preds = %bb.kk
  %.sroa.4.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i55, i8 0, i64 16, i1 false), !alias.scope !8936, !noalias !8956
  store i64 1, ptr %i.bd, align 8, !alias.scope !8936, !noalias !8956
  %.sroa.54.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 16, ptr %.sroa.54.0..sroa_idx.i56, align 8, !alias.scope !8936, !noalias !8956
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.ara, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !8936, !noalias !8956
  %.sroa.7.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i58, align 8, !alias.scope !8936, !noalias !8956
  %.sroa.8.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store i16 404, ptr %.sroa.8.0..sroa_idx.i59, align 8, !alias.scope !8936, !noalias !8956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8936
  %i.ark = invoke fastcc noundef ptr @_RINvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB6_7Request7respondNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.be, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.bd)
          to label %bb.kr unwind label %.body60   ; 2 uses

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.arl = cmpxchg ptr %i.dg, i8 1, i8 0 release monotonic, align 1
  %i.arm = extractvalue { i8, i1 } %i.arl, 1
  br i1 %i.arm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit71, label %bb.ks, !prof !24

bb.ks:                                            ; preds = %bb.kr
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.dg, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit71 unwind label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit71: ; preds = %bb.ks, %bb.kr, %bb.na
  %.sroa.0.1 = phi ptr [ null, %bb.na ], [ %i.ark, %bb.kr ], [ %i.ark, %bb.ks ] ; 2 uses
  %i.arn = icmp sgt i64 %i.cp, 0
  br i1 %i.arn, label %bb.kt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit74

bb.kt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit71
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8957
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit74

bb.ku:                                            ; preds = %bb.kl
  %i.aro = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.p) #46, !noalias !8962
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(176) %i.be) #46
          to label %.body53 unwind label %bb.kv

bb.kv:                                            ; preds = %bb.aa, %bb.nk, %bb.ni, %bb.nf, %bb.ku
  %i.arp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.kw:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.n, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  %i.arq = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store ptr %.0.val, ptr %i.arq, align 8, !noalias !8963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8963
  %i.arr = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 -1, ptr %i.arr, align 8, !noalias !8963
  store i64 0, ptr %i.m, align 8, !noalias !8963
  %i.ars = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 0, ptr %i.ars, align 8, !noalias !8963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8966
  store ptr null, ptr %i.l, align 8, !noalias !8971
  %i.art = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !8971 ; 2 uses
  %i.aru = icmp eq i64 %i.art, 0
  br i1 %i.aru, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8971
  invoke void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 14)
          to label %.noexc.i.i.i unwind label %bb.lk, !noalias !8971

.noexc.i.i.i:                                     ; preds = %bb.kx
  %i.arv = load i64, ptr %i.d, align 8, !range !69, !noalias !8971, !noundef !28 ; 5 uses
  %.not.i.i.i.i78 = icmp eq i64 %i.arv, -1
  br i1 %.not.i.i.i.i78, label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE00B16_.exit.i.i.i.i, label %bb.kz

bb.ky:                                            ; preds = %bb.kw
  %i.arw = add i64 %i.art, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE0B14_.exit.i.i.i

bb.kz:                                            ; preds = %.noexc.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8971, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !8971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8976
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i.i.i.i, i64 noundef %.sroa.55.0.copyload.i.i.i.i)
          to label %bb.lc unwind label %bb.la, !noalias !8976

bb.la:                                            ; preds = %bb.kz
  %i.arx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ary = icmp eq i64 %i.arv, 0
  br i1 %i.ary, label %.body35.thread.i.i.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %i.arv, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8979
  br label %.body35.thread.i.i.i

bb.lc:                                            ; preds = %bb.kz
  %i.arz = load i64, ptr %i.c, align 8, !range !30, !noalias !8976, !noundef !28
  %i.asa = trunc nuw i64 %i.arz to i1
  br i1 %i.asa, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8976
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i

bb.le:                                            ; preds = %bb.lc
  %i.asb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.asc = load ptr, ptr %i.asb, align 8, !noalias !8976, !nonnull !28, !noundef !28 ; 3 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ase = load i64, ptr %i.asd, align 8, !noalias !8976, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8976
  switch i64 %i.ase, label %thread-pre-split.i.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i
    i64 1, label %bb.lf
  ]

bb.lf:                                            ; preds = %bb.le
  %i.asf = load i8, ptr %i.asc, align 1, !alias.scope !8982, !noalias !8985, !noundef !28 ; 2 uses
  switch i8 %i.asf, label %bb.lg [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.le
  %.pr.i.i.i.i.i.i = load i8, ptr %i.asc, align 1, !alias.scope !8982, !noalias !8985
  br label %bb.lg

bb.lg:                                            ; preds = %thread-pre-split.i.i.i.i.i.i, %bb.lf
  %i.asg = phi i8 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %i.asf, %bb.lf ]
  %cond.i.i.i.i.i.i = icmp eq i8 %i.asg, 43       ; 2 uses
  %i.ash = sext i1 %cond.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i = add nsw i64 %i.ase, %i.ash ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asc, i64 %.sroa.0.0.idx.i.i.i.i.i.i ; 2 uses
  %i.asi = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i, 17
  br i1 %i.asi, label %.preheader.i.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i:                           ; preds = %bb.lg
  %.not5366.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader56.i.i.i.i.i.i:                         ; preds = %bb.lh
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i264, i64 1
  %i.ask = add nsw i64 %.sroa.15.1.i.i.i.i.i.i263, -1 ; 2 uses
  %.not52.i.not.i.i.i.i.i = icmp eq i64 %i.ask, 0
  br i1 %.not52.i.not.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.i.preheader:               ; preds = %bb.lg, %.preheader56.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i264 = phi ptr [ %i.asj, %.preheader56.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.lg ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i263 = phi i64 [ %i.ask, %.preheader56.i.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i.i, %bb.lg ]
  %.sroa.042.0.i.i.i.i.i.i262 = phi i64 [ %i.asq, %.preheader56.i.i.i.i.i.i ], [ 0, %bb.lg ]
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i.i262, i64 10) ; 2 uses
  %6 = extractvalue { i64, i1 } %5, 1
  br i1 %6, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %bb.lh, !prof !74

bb.lh:                                            ; preds = %.preheader56.i.i.i.i.i.i.preheader
  %7 = extractvalue { i64, i1 } %5, 0             ; 2 uses
  %i.asl = load i8, ptr %.sroa.0.1.i.i.i.i.i.i264, align 1, !alias.scope !8982, !noalias !8985, !noundef !28
  %i.asm = zext i8 %i.asl to i32
  %i.asn = add nsw i32 %i.asm, -48                ; 2 uses
  %i.aso = icmp ugt i32 %i.asn, 9
  %i.asp = zext nneg i32 %i.asn to i64
  %i.asq = add i64 %7, %i.asp                     ; 3 uses
  %i.asr = icmp ult i64 %i.asq, %7
  %or.cond.i.i.i.i.i = select i1 %i.aso, i1 true, i1 %i.asr, !prof !215
  br i1 %or.cond.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.preheader56.i.i.i.i.i.i, !prof !215

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.li
  %.sroa.0.269.i.i.i.i.i.i = phi ptr [ %i.asy, %bb.li ], [ %.sroa.0.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i.i = phi i64 [ %i.asx, %bb.li ], [ %.sroa.15.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i.i = phi i64 [ %i.ata, %bb.li ], [ 0, %.preheader.i.i.i.i.i.i ]
  %i.ass = load i8, ptr %.sroa.0.269.i.i.i.i.i.i, align 1, !alias.scope !8982, !noalias !8985, !noundef !28
  %i.ast = zext i8 %i.ass to i32
  %i.asu = add nsw i32 %i.ast, -48                ; 2 uses
  %i.asv = icmp ugt i32 %i.asu, 9
  br i1 %i.asv, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %bb.li

bb.li:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.asw = mul i64 %.sroa.042.267.i.i.i.i.i.i, 10
  %i.asx = add nsw i64 %.sroa.15.268.i.i.i.i.i.i, -1 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i.i, i64 1
  %i.asz = zext nneg i32 %i.asu to i64
  %i.ata = add i64 %i.asw, %i.asz                 ; 2 uses
  %.not53.i.i.i.i.i.i = icmp eq i64 %i.asx, 0
  br i1 %.not53.i.i.i.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i: ; preds = %bb.lh, %.preheader56.i.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i.i, %bb.li, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.lf, %bb.lf, %bb.le, %bb.ld
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 2097152, %bb.ld ], [ 0, %.preheader.i.i.i.i.i.i ], [ 2097152, %bb.lf ], [ 2097152, %bb.le ], [ 2097152, %bb.lf ], [ %i.ata, %bb.li ], [ 2097152, %.lr.ph.i.i.i.i.i.i ], [ 2097152, %bb.lh ], [ %i.asq, %.preheader56.i.i.i.i.i.i ], [ 2097152, %.preheader56.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.atb = icmp eq i64 %i.arv, 0
  br i1 %i.atb, label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE00B16_.exit.i.i.i.i, label %bb.lj

bb.lj:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %i.arv, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8987
  br label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE00B16_.exit.i.i.i.i

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE00B16_.exit.i.i.i.i: ; preds = %bb.lj, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i, %bb.lj ], [ %.sroa.0.1.i.i.i.i.i, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ 2097152, %.noexc.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8971
  %i.atc = add i64 %.sroa.0.0.i.i.i.i, 1
  store atomic i64 %i.atc, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !8971
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE0B14_.exit.i.i.i

.body35.i.i.i:                                    ; preds = %bb.ln, %.thread.i.i.i, %bb.lk
  %.sroa.016.0.i.i.i = phi i8 [ %.sroa.016.2.i.i.i, %bb.ln ], [ %.sroa.017.1.i.i.i, %bb.lk ], [ %.sroa.016.2.i.i.i, %.thread.i.i.i ]
  %.sroa.017.0.i.i.i = phi i8 [ %.sroa.017.2.i.i.i, %bb.ln ], [ %.sroa.017.1.i.i.i, %bb.lk ], [ %.sroa.017.2.i.i.i, %.thread.i.i.i ] ; 2 uses
  %.pn27.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.ln ], [ %i.ate, %bb.lk ], [ %.pn.pn.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.atd = trunc nuw i8 %.sroa.016.0.i.i.i to i1
  br i1 %i.atd, label %.body35.thread.i.i.i, label %bb.mr

bb.lk:                                            ; preds = %bb.mm, %bb.ll, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE0B14_.exit.i.i.i, %bb.kx
  %.sroa.017.1.i.i.i = phi i8 [ 0, %bb.mm ], [ 1, %bb.ll ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE0B14_.exit.i.i.i ], [ 1, %bb.kx ] ; 2 uses
  %i.ate = landingpad { ptr, i32 }
          cleanup
  br label %.body35.i.i.i

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE0B14_.exit.i.i.i: ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE00B16_.exit.i.i.i.i, %bb.ky
  %.sroa.02.0.i.i.i = phi i64 [ %i.arw, %bb.ky ], [ %.sroa.0.0.i.i.i.i, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE00B16_.exit.i.i.i.i ]
  %i.atf = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.ll unwind label %bb.lk, !noalias !8971

bb.ll:                                            ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uE0B14_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8971
  %i.atg = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.atf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.arr)
          to label %bb.lm unwind label %bb.lk, !noalias !8990

bb.lm:                                            ; preds = %bb.ll
  store ptr %i.atg, ptr %i.k, align 8, !noalias !8971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8971
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.lp unwind label %bb.lo, !noalias !8971

.thread.i.i.i:                                    ; preds = %bb.mq, %bb.mn, %.body29.thread.i.i.i, %bb.lt, %bb.lo
  %.sroa.016.2.i.i.i = phi i8 [ 1, %bb.mq ], [ 0, %bb.lt ], [ 1, %bb.lo ], [ 0, %.body29.thread.i.i.i ], [ 0, %bb.mn ] ; 2 uses
  %.sroa.017.2.i.i.i = phi i8 [ 0, %bb.mq ], [ 0, %bb.lt ], [ 1, %bb.lo ], [ 0, %.body29.thread.i.i.i ], [ 0, %bb.mn ] ; 2 uses
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.atp, %bb.mq ], [ %i.atr, %bb.lt ], [ %i.atk, %bb.lo ], [ %eh.lpad-body3010.i.i.i, %.body29.thread.i.i.i ], [ %eh.lpad-body3010.i.i.i, %bb.mn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8991)
  call void @llvm.experimental.noalias.scope.decl(metadata !8994)
  call void @llvm.experimental.noalias.scope.decl(metadata !8997)
  call void @llvm.experimental.noalias.scope.decl(metadata !9000)
  %i.ath = load ptr, ptr %i.k, align 8, !alias.scope !9003, !noalias !8971, !nonnull !28, !noundef !28
  %i.ati = atomicrmw sub ptr %i.ath, i64 1 release, align 8, !noalias !9004
  %i.atj = icmp eq i64 %i.ati, 1
  br i1 %i.atj, label %bb.ln, label %.body35.i.i.i

bb.ln:                                            ; preds = %.thread.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #48
          to label %.body35.i.i.i unwind label %bb.mp, !noalias !8971

bb.lo:                                            ; preds = %bb.lm
  %i.atk = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.lp:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8971
  store i64 1, ptr %i.e, align 8, !noalias !8971
  %i.atl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.atl, align 8, !noalias !8971
  %i.atm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.atm, i8 0, i64 16, i1 false), !noalias !8971
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !9005
  %i.atn = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !9005 ; 6 uses
  %i.ato = icmp eq ptr %i.atn, null
  br i1 %i.ato, label %bb.lq, label %bb.lu, !prof !11

bb.lq:                                            ; preds = %bb.lp
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc38.i.i.i unwind label %bb.lr, !noalias !8971

.noexc38.i.i.i:                                   ; preds = %bb.lq
  unreachable

bb.lr:                                            ; preds = %bb.lq
  %i.atp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #46
          to label %bb.mq unwind label %bb.ls, !noalias !8971

bb.ls:                                            ; preds = %bb.lr
  %i.atq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !8971
  unreachable

bb.lt:                                            ; preds = %bb.ml
  %i.atr = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.lu:                                            ; preds = %bb.lp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.atn, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !8971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8971
  store ptr %i.atn, ptr %i.i, align 8, !noalias !8971
  %i.ats = atomicrmw add ptr %i.atn, i64 1 monotonic, align 8, !noalias !8971
  %i.att = icmp slt i64 %i.ats, 0
  br i1 %i.att, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.h, ptr noundef nonnull align 8 dereferenceable(184) %i.n, i64 184, i1 false), !noalias !9008
  %i.atu = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.atu, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !8971
  %i.atv = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  store ptr %i.atn, ptr %i.atv, align 8, !noalias !8971
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atn, i64 16
  %i.atx = load ptr, ptr %i.atw, align 8, !noalias !8971, !noundef !28 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.atx, null
  br i1 %.not.i.i.i75, label %bb.ly, label %bb.lx

bb.lw:                                            ; preds = %bb.lu
  call void @llvm.trap()
  unreachable

bb.lx:                                            ; preds = %bb.lv
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.aty)
          to label %bb.ly unwind label %bb.mo, !noalias !8971

bb.ly:                                            ; preds = %bb.lx, %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 8 dereferenceable(224) %i.h, i64 224, i1 false), !noalias !8971
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !9009
  %i.atz = call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !9009 ; 3 uses
  %i.aua = icmp eq ptr %i.atz, null
  br i1 %i.aua, label %bb.lz, label %bb.mc, !prof !11

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #45
          to label %.noexc39.i.i.i unwind label %bb.ma, !noalias !8971

.noexc39.i.i.i:                                   ; preds = %bb.lz
  unreachable

bb.ma:                                            ; preds = %bb.lz
  %i.aub = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uEs_0EB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.g) #46
          to label %.body29.thread.i.i.i unwind label %bb.mb, !noalias !8971

bb.mb:                                            ; preds = %bb.ma
  %i.auc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !8971
  unreachable

.body29.i.i.i:                                    ; preds = %bb.mi
  %i.aud = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread.i.i.i

bb.mc:                                            ; preds = %bb.ly
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.atz, ptr noundef nonnull align 8 dereferenceable(224) %i.h, i64 224, i1 false), !noalias !8971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8971
  %i.aue = load ptr, ptr %i.k, align 8, !noalias !8971, !nonnull !28, !noundef !28
  %i.auf = atomicrmw add ptr %i.aue, i64 1 monotonic, align 8, !noalias !8971
  %i.aug = icmp slt i64 %i.auf, 0
  br i1 %i.aug, label %bb.mh, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.auh = load ptr, ptr %i.k, align 8, !noalias !8971, !nonnull !28, !noundef !28
  store ptr %i.auh, ptr %i.f, align 8, !noalias !8971
end_hunk_4
begin_hunk_5_@_RNvXs1_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_16SystemDownloaderNtB5_10Downloader6stream:bb.a
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !9589 ; 2 uses

.noexc10.i.i.i:                                   ; preds = %bb.co
  %i.me = extractvalue { i64, i64 } %i.md, 0
  %i.mf = extractvalue { i64, i64 } %i.md, 1
  %i.mg = trunc nuw i64 %i.me to i1
  br i1 %i.mg, label %.loopexit.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.cp
  %.sroa.04.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mk, %bb.cp ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i
  %i.mi = load i8, ptr %i.mh, align 1, !alias.scope !9616, !noalias !9619, !noundef !28
  %i.mj = icmp eq i8 %i.mi, 58
  br i1 %i.mj, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.mk = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mk, %i.ma
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mf, %.noexc10.i.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ml = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, %i.ma
  call void @llvm.assume(i1 %i.ml)
  %i.mm = add i64 %i.lz, 1
  %i.mn = add i64 %i.mm, %.sroa.5.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %.not12.i.i.i.i.i.i.i.i = icmp ugt i64 %i.mn, %i.kz
  %i.mo = add i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, %i.lz ; 3 uses
  %or.cond.i.i.i.i.i.i.i.not.i = icmp ult i64 %i.mo, %i.kz
  br i1 %or.cond.i.i.i.i.i.i.i.not.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %.loopexit.i.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.mo
  %lhsc475.i = load i8, ptr %i.mp, align 1, !noalias !9418
  %i.mq = icmp eq i8 %lhsc475.i, 58
  br i1 %i.mq, label %select.unfold.i.i.i.i.i, label %bb.cq

select.unfold.i.i.i.i.i:                          ; preds = %bb.cr, %bb.cq, %.noexc10.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %bb.cp, %.lr.ph.split.i.i.i.i.i
  %i.mr = phi i64 [ %i.kz, %bb.cp ], [ %i.lx, %.lr.ph.split.i.i.i.i.i ], [ %i.mn, %bb.cr ], [ %i.kz, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.kz, %.noexc10.i.i.i ], [ %i.mn, %bb.cq ]
  %.lcssa912.i.i.i.i.i = phi i64 [ %.lcssa91314.i.i.i.i.i, %bb.cp ], [ %.lcssa91314.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.mn, %bb.cr ], [ %.lcssa91314.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.lcssa91314.i.i.i.i.i, %.noexc10.i.i.i ], [ %.lcssa91314.i.i.i.i.i, %bb.cq ]
  %i.ms = phi i1 [ true, %bb.cp ], [ true, %.lr.ph.split.i.i.i.i.i ], [ false, %bb.cr ], [ true, %.preheader.i.i.i.i.i.i.i.i.i ], [ true, %.noexc10.i.i.i ], [ true, %bb.cq ]
  %.pn.i.i.i.i252.i = phi i64 [ %i.kz, %bb.cp ], [ %i.kz, %.lr.ph.split.i.i.i.i.i ], [ %i.mo, %bb.cr ], [ %i.kz, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.kz, %.noexc10.i.i.i ], [ %i.kz, %bb.cq ]
  %.sroa.4.1.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i252.i, %.lcssa91314.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.lcssa91314.i.i.i.i.i
  %i.mt = icmp samesign ult i64 %i.lw, 576460752303423488
  call void @llvm.assume(i1 %i.mt)
  %i.mu = load i64, ptr %i.c, align 8, !range !64, !alias.scope !9629, !noalias !9630, !noundef !28
  %i.mv = icmp eq i64 %i.lw, %i.mu
  br i1 %i.mv, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i.i.i254.i, label %.noexc11.i.i253.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i.i.i254.i: ; preds = %select.unfold.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.lw, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i..noexc11_crit_edge.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !9589

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i..noexc11_crit_edge.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i.i.i254.i
  %.pre.i.i256.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i241.i, align 8, !alias.scope !9629, !noalias !9630
  br label %.noexc11.i.i253.i

.noexc11.i.i253.i:                                ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i..noexc11_crit_edge.i.i.i, %select.unfold.i.i.i.i.i
  %i.mw = phi ptr [ %.pre.i.i256.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i..noexc11_crit_edge.i.i.i ], [ %i.lv, %select.unfold.i.i.i.i.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.mw, i64 %i.lw ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr %i.mx, align 8, !noalias !9631, !captures !8374
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i.i.i, ptr %i.my, align 8, !noalias !9631
  %i.mz = add nuw nsw i64 %i.lw, 1                ; 2 uses
  store i64 %i.mz, ptr %.sroa.64.0..sroa_idx.i.i242.i, align 8, !alias.scope !9629, !noalias !9630
  br i1 %i.ms, label %bb.cv, label %.lr.ph.split.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.co
  %lpad.loopexit.i.i247.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp.i.i.i:                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i.i.i254.i
  %lpad.loopexit.split-lp.i.i255.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i247.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i255.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.c, align 8, !noalias !9589 ; 2 uses
  %i.na = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.na, label %.body261.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.val9.i.i248.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i241.i, align 8, !noalias !9589, !nonnull !28, !noundef !28
  br label %common.resume.sink.split.i.i

common.resume.sink.split.i.i:                     ; preds = %bb.cu, %bb.ct
  %.sroa.05.0.copyload94.sink.i.i = phi i64 [ %.val.i.i.i, %bb.ct ], [ %.sroa.05.0.copyload94.i.i, %bb.cu ]
  %.sroa.5.0.copyload93.sink.i.i = phi ptr [ %.val9.i.i248.i, %bb.ct ], [ %.sroa.5.0.copyload93.i.i, %bb.cu ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.ct ], [ %i.nc, %bb.cu ]
  %i.nb = shl nuw i64 %.sroa.05.0.copyload94.sink.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload93.sink.i.i, i64 noundef %i.nb, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !9606
  br label %.body261.i

bb.cu:                                            ; preds = %bb.cz
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = icmp eq i64 %.sroa.05.0.copyload94.i.i, 0
  br i1 %i.nd, label %.body261.i, label %common.resume.sink.split.i.i

.thread.i257.i:                                   ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc4241EHy6Do_9typst_kit.exit.i.i240.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9589
  br label %bb.cw

bb.cv:                                            ; preds = %.noexc11.i.i253.i
  %.sroa.05.0.copyload.pre103.i.i = load i64, ptr %i.c, align 8, !noalias !9632
  %.sroa.5.0.copyload.pre104.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i241.i, align 8, !noalias !9632 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9589
  %i.ne = load ptr, ptr %.sroa.5.0.copyload.pre104.i.i, align 8, !noalias !9633, !nonnull !28, !noundef !28
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.pre104.i.i, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !9633, !noundef !28
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.pre104.i.i, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !9636, !nonnull !28, !noundef !28
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.pre104.i.i, i64 24
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !9636, !noundef !28
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.thread.i257.i
  %i.nl = phi i64 [ %i.ng, %bb.cv ], [ %.sroa.4.1.i.i.i.i.i, %.thread.i257.i ] ; 7 uses
  %i.nm = phi ptr [ %i.ne, %bb.cv ], [ %i.kx, %.thread.i257.i ]
  %.sroa.05.0.copyload94.i.i = phi i64 [ %.sroa.05.0.copyload.pre103.i.i, %bb.cv ], [ 4, %.thread.i257.i ] ; 4 uses
  %.sroa.5.0.copyload93.i.i = phi ptr [ %.sroa.5.0.copyload.pre104.i.i, %bb.cv ], [ %i.ls, %.thread.i257.i ] ; 2 uses
  %.sroa.3.0.i114.i.i = phi i64 [ %i.nk, %bb.cv ], [ undef, %.thread.i257.i ] ; 2 uses
  %.sroa.0.0.i115.i.i = phi ptr [ %i.ni, %bb.cv ], [ null, %.thread.i257.i ] ; 4 uses
  %.not.i.i251.i = icmp slt i64 %i.nl, 0
  br i1 %.not.i.i251.i, label %bb.cz, label %bb.cx, !prof !215

bb.cx:                                            ; preds = %bb.cw
  %i.nn = icmp eq i64 %i.nl, 0
  br i1 %i.nn, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.thread26.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !9639
  %i.no = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.nl, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !9639 ; 3 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cw
  %.sroa.414.0.ph.i.i = phi i64 [ 1, %bb.cy ], [ 0, %bb.cw ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.414.0.ph.i.i, i64 %i.nl) #45
          to label %bb.dr unwind label %bb.cu, !noalias !9606

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.thread26.i.i: ; preds = %bb.da, %bb.cx
  %i.nq = phi ptr [ %i.no, %bb.da ], [ inttoptr (i64 1 to ptr), %bb.cx ]
  %.not105.i.i = icmp eq ptr %.sroa.0.0.i115.i.i, null
  br i1 %.not105.i.i, label %bb.dp, label %bb.db

bb.da:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.no, ptr nonnull align 1 %i.nm, i64 %i.nl, i1 false), !noalias !9606
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.thread26.i.i

bb.db:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.thread26.i.i
  switch i64 %.sroa.3.0.i114.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db
  %i.nr = load i8, ptr %.sroa.0.0.i115.i.i, align 1, !alias.scope !9642, !noalias !9606, !noundef !28 ; 2 uses
  switch i8 %i.nr, label %bb.dd [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.db
  %.pr.i.i.i = load i8, ptr %.sroa.0.0.i115.i.i, align 1, !alias.scope !9642, !noalias !9606
  br label %bb.dd

bb.dd:                                            ; preds = %thread-pre-split.i.i.i, %bb.dc
  %i.ns = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.nr, %bb.dc ]
  %cond.i.i.i = icmp eq i8 %i.ns, 43              ; 2 uses
  %i.nt = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %.sroa.3.0.i114.i.i, %i.nt ; 10 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i118.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i115.i.i, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  %i.nu = icmp samesign ult i64 %.sroa.15.0.i.i.i, 9
  br i1 %i.nu, label %.preheader.i.i.i, label %.preheader60.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.dd
  %.not5668.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5668.i.i.i, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i

.preheader60.i.i.i:                               ; preds = %bb.dg
  %.not55.i.i.i = icmp eq i64 %i.ny, 0
  br i1 %.not55.i.i.i, label %.loopexit.i119.i.i, label %.preheader60.i.i.i.preheader

.loopexit.i119.i.i:                               ; preds = %.preheader60.i.i.i, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %.preheader.i.i.i
  %.sroa.045.1.i.i.i = phi i32 [ %i.qh, %bb.do ], [ 0, %.preheader.i.i.i ], [ %i.oj, %bb.dh ], [ %i.or, %bb.di ], [ %i.oy, %bb.dj ], [ %i.pf, %bb.dk ], [ %i.pm, %bb.dl ], [ %i.pt, %bb.dm ], [ %i.qa, %bb.dn ], [ %i.of, %.preheader60.i.i.i ]
  %i.nv = zext i32 %.sroa.045.1.i.i.i to i64
  %i.nw = shl nuw i64 %i.nv, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

.preheader60.i.i.i.preheader:                     ; preds = %bb.dd, %.preheader60.i.i.i
  %.sroa.0.1.i.i.i348 = phi ptr [ %i.nx, %.preheader60.i.i.i ], [ %.sroa.0.0.i118.i.i, %bb.dd ] ; 2 uses
  %.sroa.15.1.i.i.i347 = phi i64 [ %i.ny, %.preheader60.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.dd ]
  %.sroa.045.0.i.i.i346 = phi i32 [ %i.of, %.preheader60.i.i.i ], [ 0, %bb.dd ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i348, i64 1
  %i.ny = add nsw i64 %.sroa.15.1.i.i.i347, -1    ; 2 uses
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i346, i32 10) ; 2 uses
  %7 = extractvalue { i32, i1 } %6, 0             ; 2 uses
  %8 = extractvalue { i32, i1 } %6, 1
  %i.nz = load i8, ptr %.sroa.0.1.i.i.i348, align 1, !alias.scope !9642, !noalias !9606, !noundef !28 ; 2 uses
  br i1 %8, label %bb.df, label %bb.de, !prof !74

bb.de:                                            ; preds = %.preheader60.i.i.i.preheader
  %i.oa = zext i8 %i.nz to i32
  %i.ob = add nsw i32 %i.oa, -48                  ; 2 uses
  %i.oc = icmp ult i32 %i.ob, 10
  br i1 %i.oc, label %bb.dg, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.df:                                            ; preds = %.preheader60.i.i.i.preheader
  %i.od = add i8 %i.nz, -48
  %i.oe = icmp ult i8 %i.od, 10
  %spec.select.i.i.i = select i1 %i.oe, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dg:                                            ; preds = %bb.de
  %i.of = add i32 %i.ob, %7                       ; 3 uses
  %i.og = icmp ult i32 %i.of, %7
  br i1 %i.og, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader60.i.i.i, !prof !74

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.oh = load i8, ptr %.sroa.0.0.i118.i.i, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.oi = zext i8 %i.oh to i32
  %i.oj = add nsw i32 %i.oi, -48                  ; 3 uses
  %i.ok = icmp ult i32 %i.oj, 10
  br i1 %i.ok, label %bb.dh, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dh:                                            ; preds = %.lr.ph.i.i.i
  %.not56.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1
  br i1 %.not56.i.i.i, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.dh
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 1
  %i.om = load i8, ptr %i.ol, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.on = zext i8 %i.om to i32
  %i.oo = add nsw i32 %i.on, -48                  ; 2 uses
  %i.op = icmp ult i32 %i.oo, 10
  br i1 %i.op, label %bb.di, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.di:                                            ; preds = %.lr.ph.i.i.i.1
  %i.oq = mul nuw nsw i32 %i.oj, 10
  %i.or = add nuw nsw i32 %i.oo, %i.oq            ; 2 uses
  %.not56.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2
  br i1 %.not56.i.i.i.1, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.di
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 2
  %i.ot = load i8, ptr %i.os, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.ou = zext i8 %i.ot to i32
  %i.ov = add nsw i32 %i.ou, -48                  ; 2 uses
  %i.ow = icmp ult i32 %i.ov, 10
  br i1 %i.ow, label %bb.dj, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dj:                                            ; preds = %.lr.ph.i.i.i.2
  %i.ox = mul nuw nsw i32 %i.or, 10
  %i.oy = add nuw nsw i32 %i.ov, %i.ox            ; 2 uses
  %.not56.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3
  br i1 %.not56.i.i.i.2, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.dj
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 3
  %i.pa = load i8, ptr %i.oz, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.pb = zext i8 %i.pa to i32
  %i.pc = add nsw i32 %i.pb, -48                  ; 2 uses
  %i.pd = icmp ult i32 %i.pc, 10
  br i1 %i.pd, label %bb.dk, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dk:                                            ; preds = %.lr.ph.i.i.i.3
  %i.pe = mul nuw nsw i32 %i.oy, 10
  %i.pf = add nuw nsw i32 %i.pc, %i.pe            ; 2 uses
  %.not56.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i, 4
  br i1 %.not56.i.i.i.3, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.dk
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 4
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.pi = zext i8 %i.ph to i32
  %i.pj = add nsw i32 %i.pi, -48                  ; 2 uses
  %i.pk = icmp ult i32 %i.pj, 10
  br i1 %i.pk, label %bb.dl, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dl:                                            ; preds = %.lr.ph.i.i.i.4
  %i.pl = mul i32 %i.pf, 10
  %i.pm = add i32 %i.pj, %i.pl                    ; 2 uses
  %.not56.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i, 5
  br i1 %.not56.i.i.i.4, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.dl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 5
  %i.po = load i8, ptr %i.pn, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.pp = zext i8 %i.po to i32
  %i.pq = add nsw i32 %i.pp, -48                  ; 2 uses
  %i.pr = icmp ult i32 %i.pq, 10
  br i1 %i.pr, label %bb.dm, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dm:                                            ; preds = %.lr.ph.i.i.i.5
  %i.ps = mul i32 %i.pm, 10
  %i.pt = add i32 %i.pq, %i.ps                    ; 2 uses
  %.not56.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i, 6
  br i1 %.not56.i.i.i.5, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %bb.dm
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 6
  %i.pv = load i8, ptr %i.pu, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.pw = zext i8 %i.pv to i32
  %i.px = add nsw i32 %i.pw, -48                  ; 2 uses
  %i.py = icmp ult i32 %i.px, 10
  br i1 %i.py, label %bb.dn, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.dn:                                            ; preds = %.lr.ph.i.i.i.6
  %i.pz = mul i32 %i.pt, 10
  %i.qa = add i32 %i.px, %i.pz                    ; 2 uses
  %.not56.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i, 7
  br i1 %.not56.i.i.i.6, label %.loopexit.i119.i.i, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %bb.dn
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i118.i.i, i64 7
  %i.qc = load i8, ptr %i.qb, align 1, !alias.scope !9642, !noalias !9606, !noundef !28
  %i.qd = zext i8 %i.qc to i32
  %i.qe = add nsw i32 %i.qd, -48                  ; 2 uses
  %i.qf = icmp ult i32 %i.qe, 10
  br i1 %i.qf, label %bb.do, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.do:                                            ; preds = %.lr.ph.i.i.i.7
  %i.qg = mul i32 %i.qa, 10
  %i.qh = add i32 %i.qe, %i.qg
  br label %.loopexit.i119.i.i

bb.dp:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.thread26.i.i
  %.sroa.12316.36.insert.insert.i = phi i64 [ %i.qn, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.thread26.i.i ] ; 2 uses
  %i.qi = icmp eq i64 %.sroa.05.0.copyload94.i.i, 0
  br i1 %i.qi, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qj = shl nuw i64 %.sroa.05.0.copyload94.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload93.i.i, i64 noundef %i.qj, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !9645
  br label %bb.du

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.dg, %bb.de, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %bb.df, %.loopexit.i119.i.i, %bb.dc, %bb.dc, %bb.db
  %.sroa.8.0.insert.insert.i.i.i = phi i64 [ 257, %.lr.ph.i.i.i ], [ %i.nw, %.loopexit.i119.i.i ], [ 257, %bb.dc ], [ 1, %bb.db ], [ 257, %bb.dc ], [ %spec.select.i.i.i, %bb.df ], [ 257, %.lr.ph.i.i.i.7 ], [ 257, %.lr.ph.i.i.i.6 ], [ 257, %.lr.ph.i.i.i.5 ], [ 257, %.lr.ph.i.i.i.4 ], [ 257, %.lr.ph.i.i.i.3 ], [ 257, %.lr.ph.i.i.i.2 ], [ 257, %.lr.ph.i.i.i.1 ], [ 257, %bb.de ], [ 513, %bb.dg ] ; 3 uses
  %i.qk = trunc i64 %.sroa.8.0.insert.insert.i.i.i to i1
  %.sroa.5102.0.extract.shift.i.i = and i64 %.sroa.8.0.insert.insert.i.i.i, -4294967296
  %not..i.i = and i64 %.sroa.8.0.insert.insert.i.i.i, 1
  %i.ql = select i1 %i.qk, i64 0, i64 %.sroa.5102.0.extract.shift.i.i
  %i.qm = or disjoint i64 %i.ql, %not..i.i
  %i.qn = xor i64 %i.qm, 1
  br label %bb.dp

bb.dr:                                            ; preds = %bb.cz
  unreachable

bb.ds:                                            ; preds = %bb.cg, %.thread616.i
  %.sroa.0137.0637.i = phi i64 [ -1, %.thread616.i ], [ %.sroa.0137.0.i, %bb.cg ] ; 2 uses
  %.sroa.0127.0634.i = phi i64 [ -1, %.thread616.i ], [ %.sroa.0127.0.i, %bb.cg ] ; 2 uses
  %.sroa.4130.sroa.0.0631.i = phi ptr [ undef, %.thread616.i ], [ %.sroa.4130.sroa.0.0.i, %bb.cg ] ; 2 uses
  %.sroa.3.sroa.0.0628.i = phi ptr [ undef, %.thread616.i ], [ %.sroa.3.sroa.0.0.i, %bb.cg ] ; 2 uses
  %.sroa.5289.0604627.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread616.i ], [ %.sroa.5289.0.copyload.i, %bb.cg ] ; 2 uses
  %.sroa.0288.0609626.i = phi i64 [ 0, %.thread616.i ], [ %.sroa.0288.0.copyload.i, %bb.cg ] ; 2 uses
  %.sroa.5124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i32 -1, ptr %.sroa.5124.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.6125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  store i32 -1, ptr %.sroa.6125.0..sroa_idx.i, align 4, !alias.scope !9409, !noalias !9482
  %.sroa.7126.sroa.4.0..sroa.7126.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.y, i8 -1, i64 16, i1 false), !alias.scope !9409, !noalias !9482
  store ptr null, ptr %.sroa.7126.sroa.4.0..sroa.7126.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.7126.sroa.6.0..sroa.7126.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i8 9, ptr %.sroa.7126.sroa.6.0..sroa.7126.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %i.qo = icmp sgt i64 %.sroa.0127.0634.i, 0
  br i1 %i.qo, label %bb.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit.exit265.i

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4130.sroa.0.0631.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4130.sroa.0.0631.i, i64 noundef %.sroa.0127.0634.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !9648
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit.exit265.i

bb.du:                                            ; preds = %bb.dq, %bb.dp
  %.sroa.12316.36.extract.shift320.i = lshr i64 %.sroa.12316.36.insert.insert.i, 32
  %.sroa.12316.36.extract.trunc321.i = trunc nuw i64 %.sroa.12316.36.extract.shift320.i to i32
  %i.qp = trunc i64 %.sroa.12316.36.insert.insert.i to i1
  %.sroa.058.1.i = select i1 %i.qp, i32 %.sroa.12316.36.extract.trunc321.i, i32 %..i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.nl, ptr %i.qq, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.nq, ptr %.sroa.054.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %i.nl, ptr %.sroa.054.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 %.sroa.0137.0.i, ptr %.sroa.054.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %.sroa.3.sroa.0.0.i, ptr %.sroa.054.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 %.sroa.3.sroa.3.0.i, ptr %.sroa.054.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i64 %.sroa.0127.0.i, ptr %.sroa.054.sroa.7.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.7.sroa.4.0..sroa.054.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store ptr %.sroa.4130.sroa.0.0.i, ptr %.sroa.054.sroa.7.sroa.4.0..sroa.054.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.054.sroa.7.sroa.5.0..sroa.054.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i64 %.sroa.4130.sroa.3.0.i, ptr %.sroa.054.sroa.7.sroa.5.0..sroa.054.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i32 %.sroa.058.1.i, ptr %.sroa.655.0..sroa_idx.i, align 8, !alias.scope !9409, !noalias !9482
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  store i8 %.sroa.014.1.i, ptr %.sroa.756.0..sroa_idx.i, align 4, !alias.scope !9409, !noalias !9482
  store i64 -2, ptr %i.y, align 8, !alias.scope !9409, !noalias !9482
  %i.qr = icmp eq i64 %.sroa.0288.0.copyload.i, 0
  br i1 %i.qr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterReEEECsc4241EHy6Do_9typst_kit.exit266.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qs = shl nuw i64 %.sroa.0288.0.copyload.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5289.0.copyload.i, i64 noundef %i.qs, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !9653
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterReEEECsc4241EHy6Do_9typst_kit.exit266.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterReEEECsc4241EHy6Do_9typst_kit.exit266.i: ; preds = %bb.dv, %bb.du
  %i.qt = icmp eq i64 %.sroa.0280.0.copyload.i, 0
  br i1 %i.qt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterReEECsc4241EHy6Do_9typst_kit.exit267.i, label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterReEEECsc4241EHy6Do_9typst_kit.exit266.i
  %i.qu = shl nuw i64 %.sroa.0280.0.copyload.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.qu, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !9656
end_hunk_5
begin_hunk_6_@_RNvXs1_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_16SystemDownloaderNtB5_10Downloader6stream:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9704)
  %i.rx = load ptr, ptr %i.rw, align 8, !alias.scope !9707, !noalias !9708, !nonnull !28, !noundef !28
  %i.ry = atomicrmw sub ptr %i.rx, i64 1 release, align 8, !noalias !9710
  %i.rz = icmp eq i64 %i.ry, 1
  br i1 %i.rz, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCsiQVcNa4glHQ_4ureq6stream12TlsConnectorEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.rw) #48
          to label %bb.eu unwind label %bb.es, !noalias !9708

bb.es:                                            ; preds = %bb.er
  %i.sa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ru, ptr %i.rw, align 8, !alias.scope !9695, !noalias !9708
  %i.sb = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  store ptr @20, ptr %i.sb, align 8, !alias.scope !9695, !noalias !9708
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent12AgentBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.af) #46
          to label %.sink.split320 unwind label %bb.et, !noalias !9708

bb.et:                                            ; preds = %bb.es
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !9708
  unreachable

bb.eu:                                            ; preds = %bb.er, %bb.eq
  store ptr %i.ru, ptr %i.rw, align 8, !alias.scope !9695, !noalias !9708
  %i.sd = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  store ptr @20, ptr %i.sd, align 8, !alias.scope !9695, !noalias !9708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ao, ptr noundef nonnull align 8 dereferenceable(256) %i.af, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.aa, ptr noundef nonnull align 8 dereferenceable(256) %i.ao, i64 256, i1 false)
  %i.se = invoke { ptr, ptr } @_RNvMs1_NtCsiQVcNa4glHQ_4ureq5agentNtB5_12AgentBuilder5build(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(256) %i.aa)
          to label %bb.ev unwind label %.body101  ; 2 uses

bb.ev:                                            ; preds = %bb.eu
  %i.sf = extractvalue { ptr, ptr } %i.se, 0
  %i.sg = extractvalue { ptr, ptr } %i.se, 1
  store ptr %i.sf, ptr %i.ab, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 9 uses
  store ptr %i.sg, ptr %i.sh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs0_NtCsiQVcNa4glHQ_4ureq5agentNtB5_5Agent3get(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.ex unwind label %bb.ew

bb.ew:                                            ; preds = %.invoke, %bb.ex, %bb.ev
  %i.si = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ab) #46
          to label %.sink.split320 unwind label %bb.fn

bb.ex:                                            ; preds = %bb.ev
  invoke void @_RNvMs_NtCsiQVcNa4glHQ_4ureq7requestNtB4_7Request4call(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.ac)
          to label %bb.ey unwind label %bb.ew

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.sj = load i64, ptr %i.ad, align 8, !range !2579, !noundef !28
  %.not96 = icmp eq i64 %i.sj, -2
  br i1 %.not96, label %bb.ez, label %.invoke

.invoke:                                          ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.w, ptr noundef nonnull align 8 dereferenceable(272) %i.ad, i64 272, i1 false)
  %i.sk = load i64, ptr %i.w, align 8, !range !69, !noundef !28
  %i.sl = icmp ne i64 %i.sk, -1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.sn = load i16, ptr %i.sm, align 8
  %i.so = icmp eq i16 %i.sn, 404
  %or.cond = select i1 %i.sl, i1 %i.so, i1 false
  %. = select i1 %or.cond, i8 0, i8 42
  %i.sp = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtCsiQVcNa4glHQ_4ureq5error5ErrorEB1m_(i8 noundef %., ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.w)
          to label %bb.fo unwind label %bb.ew

bb.ez:                                            ; preds = %bb.ey
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.082.0.copyload = load i64, ptr %i.sq, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.584.0..sroa_idx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %.sroa.082.0.copyload, ptr %i.ae, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.483.0.copyload, ptr %.sroa.449.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9711)
  call void @llvm.experimental.noalias.scope.decl(metadata !9714)
  call void @llvm.experimental.noalias.scope.decl(metadata !9717)
  %i.sr = load ptr, ptr %i.ab, align 8, !alias.scope !9720, !nonnull !28, !noundef !28
  %i.ss = atomicrmw sub ptr %i.sr, i64 1 release, align 8, !noalias !9720
  %i.st = icmp eq i64 %i.ss, 1
  br i1 %i.st, label %bb.fa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9721)
  call void @llvm.experimental.noalias.scope.decl(metadata !9724)
  %i.sv = load ptr, ptr %i.sh, align 8, !alias.scope !9727, !nonnull !28, !noundef !28
  %i.sw = atomicrmw sub ptr %i.sv, i64 1 release, align 8, !noalias !9728
  %i.sx = icmp eq i64 %i.sw, 1
  br i1 %i.sx, label %bb.fc, label %.body123.thread

bb.fc:                                            ; preds = %bb.fb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsiQVcNa4glHQ_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sh) #48
          to label %.body123.thread unwind label %bb.fe

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.fa, %bb.ez
  call void @llvm.experimental.noalias.scope.decl(metadata !9729)
  call void @llvm.experimental.noalias.scope.decl(metadata !9732)
  %i.sy = load ptr, ptr %i.sh, align 8, !alias.scope !9735, !nonnull !28, !noundef !28
  %i.sz = atomicrmw sub ptr %i.sy, i64 1 release, align 8, !noalias !9736
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %bb.fd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit

bb.fd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsiQVcNa4glHQ_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sh) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit unwind label %.body123.thread164

bb.fe:                                            ; preds = %bb.fc
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.body123.thread164:                               ; preds = %bb.fd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body123.thread

.body123:                                         ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split320

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.tc = invoke { ptr, i64 } @_RNvMs_NtCsiQVcNa4glHQ_4ureq8responseNtB4_8Response6header(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 14)
          to label %bb.ff unwind label %.body123.thread164 ; 2 uses

bb.ff:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit
  %i.td = extractvalue { ptr, i64 } %i.tc, 0      ; 4 uses
  %.not97 = icmp eq ptr %i.td, null
  br i1 %.not97, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.te = extractvalue { ptr, i64 } %i.tc, 1      ; 3 uses
  switch i64 %i.te, label %thread-pre-split.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
    i64 1, label %bb.fh
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.tf = load i8, ptr %i.td, align 1, !alias.scope !9737, !noalias !9740, !noundef !28 ; 2 uses
  switch i8 %i.tf, label %bb.fi [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  ]

thread-pre-split.i:                               ; preds = %bb.fg
  %.pr.i = load i8, ptr %i.td, align 1, !alias.scope !9737, !noalias !9740
  br label %bb.fi

bb.fi:                                            ; preds = %thread-pre-split.i, %bb.fh
  %i.tg = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.tf, %bb.fh ]
  %cond.i = icmp eq i8 %i.tg, 43                  ; 2 uses
  %i.th = sext i1 %cond.i to i64
  %.sroa.15.0.i125 = add nsw i64 %i.te, %i.th     ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i126 = getelementptr inbounds nuw i8, ptr %i.td, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.ti = icmp samesign ult i64 %.sroa.15.0.i125, 17
  br i1 %i.ti, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.fi
  %.not5366.i = icmp eq i64 %.sroa.15.0.i125, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.fj
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i351, i64 1
  %i.tk = add nsw i64 %.sroa.15.1.i350, -1        ; 2 uses
  %.not52.i.not = icmp eq i64 %i.tk, 0
  br i1 %.not52.i.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.fi, %.preheader56.i
  %.sroa.0.1.i351 = phi ptr [ %i.tj, %.preheader56.i ], [ %.sroa.0.0.i126, %bb.fi ] ; 2 uses
  %.sroa.15.1.i350 = phi i64 [ %i.tk, %.preheader56.i ], [ %.sroa.15.0.i125, %bb.fi ]
  %.sroa.042.0.i349 = phi i64 [ %i.tq, %.preheader56.i ], [ 0, %bb.fi ]
  %9 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i349, i64 10) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.fj, !prof !74

bb.fj:                                            ; preds = %.preheader56.i.preheader
  %11 = extractvalue { i64, i1 } %9, 0            ; 2 uses
  %i.tl = load i8, ptr %.sroa.0.1.i351, align 1, !alias.scope !9737, !noalias !9740, !noundef !28
  %i.tm = zext i8 %i.tl to i32
  %i.tn = add nsw i32 %i.tm, -48                  ; 2 uses
  %i.to = icmp ugt i32 %i.tn, 9
  %i.tp = zext nneg i32 %i.tn to i64
  %i.tq = add i64 %11, %i.tp                      ; 3 uses
  %i.tr = icmp ult i64 %i.tq, %11
  %or.cond175 = select i1 %i.to, i1 true, i1 %i.tr, !prof !215
  br i1 %or.cond175, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i, !prof !215

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.fk
  %.sroa.0.269.i = phi ptr [ %i.ty, %bb.fk ], [ %.sroa.0.0.i126, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.tx, %bb.fk ], [ %.sroa.15.0.i125, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ua, %bb.fk ], [ 0, %.preheader.i ]
  %i.ts = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !9737, !noalias !9740, !noundef !28
  %i.tt = zext i8 %i.ts to i32
  %i.tu = add nsw i32 %i.tt, -48                  ; 2 uses
  %i.tv = icmp ugt i32 %i.tu, 9
  br i1 %i.tv, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i
  %i.tw = mul i64 %.sroa.042.267.i, 10
  %i.tx = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.tz = zext nneg i32 %i.tu to i64
  %i.ua = add i64 %i.tw, %i.tz                    ; 2 uses
  %.not53.i = icmp eq i64 %i.tx, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.fj, %.preheader56.i.preheader, %bb.fk, %.lr.ph.i, %.preheader.i, %bb.fh, %bb.fh, %bb.fg, %bb.ff
  %.sroa.452.0 = phi i64 [ undef, %bb.ff ], [ 0, %.preheader.i ], [ undef, %bb.fh ], [ undef, %bb.fg ], [ undef, %bb.fh ], [ %i.ua, %bb.fk ], [ undef, %.lr.ph.i ], [ undef, %bb.fj ], [ undef, %.preheader56.i.preheader ], [ %i.tq, %.preheader56.i ]
  %.sroa.051.0 = phi i64 [ 0, %bb.ff ], [ 1, %.preheader.i ], [ 0, %bb.fh ], [ %i.te, %bb.fg ], [ 0, %bb.fh ], [ 1, %bb.fk ], [ 0, %.lr.ph.i ], [ 0, %bb.fj ], [ 0, %.preheader56.i.preheader ], [ 1, %.preheader56.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef nonnull align 8 dereferenceable(264) %i.ae, i64 264, i1 false)
  %i.ub = invoke { ptr, ptr } @_RNvMs_NtCsiQVcNa4glHQ_4ureq8responseNtB4_8Response11into_reader(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.z)
          to label %bb.fl unwind label %.body123  ; 2 uses

bb.fl:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.uc = extractvalue { ptr, ptr } %i.ub, 0
  %i.ud = extractvalue { ptr, ptr } %i.ub, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %.sroa.051.0, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.452.0, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.uc, ptr %.sroa.559.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ud, ptr %.sroa.660.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgSlMZLQvLVR_10native_tls19TlsConnectorBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(72) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit134, %bb.el, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  ret void

.body123.thread:                                  ; preds = %bb.fb, %bb.fc, %.body123.thread164
  %eh.lpad-body124162 = phi { ptr, i32 } [ %lpad.thr_comm, %.body123.thread164 ], [ %i.su, %bb.fc ], [ %i.su, %bb.fb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq8response8ResponseECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(264) %i.ae) #46
          to label %.sink.split320 unwind label %bb.fn

bb.fn:                                            ; preds = %.body101.thread281, %bb.fu, %.body123.thread, %bb.ew
  %i.ue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.fo:                                            ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sp, ptr %i.uf, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9742)
  call void @llvm.experimental.noalias.scope.decl(metadata !9745)
  call void @llvm.experimental.noalias.scope.decl(metadata !9748)
  %i.ug = load ptr, ptr %i.ab, align 8, !alias.scope !9751, !nonnull !28, !noundef !28
  %i.uh = atomicrmw sub ptr %i.ug, i64 1 release, align 8, !noalias !9751
  %i.ui = icmp eq i64 %i.uh, 1
  br i1 %i.ui, label %bb.fp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i128

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i128 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.uj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9752)
  call void @llvm.experimental.noalias.scope.decl(metadata !9755)
  %i.uk = load ptr, ptr %i.sh, align 8, !alias.scope !9758, !nonnull !28, !noundef !28
  %i.ul = atomicrmw sub ptr %i.uk, i64 1 release, align 8, !noalias !9759
  %i.um = icmp eq i64 %i.ul, 1
  br i1 %i.um, label %bb.fr, label %.sink.split320

bb.fr:                                            ; preds = %bb.fq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsiQVcNa4glHQ_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sh) #48
          to label %.sink.split320 unwind label %bb.ft

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i128: ; preds = %bb.fp, %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !9760)
  call void @llvm.experimental.noalias.scope.decl(metadata !9763)
  %i.un = load ptr, ptr %i.sh, align 8, !alias.scope !9766, !nonnull !28, !noundef !28
  %i.uo = atomicrmw sub ptr %i.un, i64 1 release, align 8, !noalias !9767
  %i.up = icmp eq i64 %i.uo, 1
  br i1 %i.up, label %bb.fs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit134

bb.fs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i128
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsiQVcNa4glHQ_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sh) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit134 unwind label %.body101

bb.ft:                                            ; preds = %bb.fr
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent5AgentECsc4241EHy6Do_9typst_kit.exit134: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsiQVcNa4glHQ_4ureq5agent11AgentConfigEECsc4241EHy6Do_9typst_kit.exit.i128, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgSlMZLQvLVR_10native_tls19TlsConnectorBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(72) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.fm

bb.fu:                                            ; preds = %bb.ep
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @SSL_CTX_free(ptr noundef %.sroa.072.0.copyload) #42, !noalias !9768
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent12AgentBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(256) %i.af) #46
          to label %.sink.split320 unwind label %bb.fn

.sink.split320:                                   ; preds = %bb.es, %bb.fq, %bb.fr, %bb.fu, %.body123, %.body123.thread, %bb.ew, %bb.b, %.body101
  %.pn278.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp287, %.body101 ], [ %i.sa, %bb.es ], [ %i.uj, %bb.fq ], [ %i.uj, %bb.fr ], [ %i.ur, %bb.fu ], [ %lpad.thr_comm.split-lp, %.body123 ], [ %eh.lpad-body124162, %.body123.thread ], [ %i.si, %bb.ew ], [ %i.bb, %bb.b ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgSlMZLQvLVR_10native_tls19TlsConnectorBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(72) %i.an) #46
  br label %bb.fv

bb.fv:                                            ; preds = %.sink.split320, %.body101.thread281
  %.pn278 = phi { ptr, i32 } [ %.pn284, %.body101.thread281 ], [ %.pn278.ph, %.sink.split320 ]
  resume { ptr, i32 } %.pn278

.body101.thread281:                               ; preds = %bb.o, %bb.g, %bb.f, %.body.i, %.body101.thread288
  %.pn284 = phi { ptr, i32 } [ %lpad.thr_comm286, %.body101.thread288 ], [ %.pn160.i, %bb.o ], [ %i.bl, %bb.g ], [ %i.bl, %bb.f ], [ %.pn160.i, %.body.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgSlMZLQvLVR_10native_tls19TlsConnectorBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(72) %i.an) #46
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiQVcNa4glHQ_4ureq5agent12AgentBuilderECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(256) %i.ao) #46
          to label %bb.fv unwind label %bb.fn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_7TempdirNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9771)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9771, !nonnull !28, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !9771, !noundef !28
  %i.d = tail call noundef ptr @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs14remove_dir_all(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !9771 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9774
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
    i64 1, label %bb.d
  ], !prof !191

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !9777, !noalias !9774
  store i8 3, ptr %i.a, align 8, !alias.scope !9777, !noalias !9774
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l), !noalias !9774
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9774
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB6_5Debug3fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_6
begin_hunk_7_@_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.d = icmp eq i64 %..i, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !noundef !28
  store i8 %i.e, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit, %bb.b
  %i.f = sub nuw nsw i64 %i.b, %..i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %..i
  store ptr %i.g, ptr %0, align 8, !captures !8374
  store i64 %i.f, ptr %i.a, align 8
  %i.h = inttoptr i64 %..i to ptr
  %i.i = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.h, 1
  ret { i64, ptr } %i.i

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %..i, i1 false), !alias.scope !10008, !noalias !10012
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noalias noundef ptr @_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read8read_buf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #24 personality ptr @rust_eh_personality {
_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsc4241EHy6Do_9typst_kit.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !28 ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !28 ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.e) ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i
  %i.j = sub nuw nsw i64 %i.g, %..i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %i.h, i64 range(i64 0, -9223372036854775808) %..i, i1 false), !alias.scope !10014
  %i.l = load i64, ptr %i.c, align 8, !noalias !10018, !noundef !28
  %i.m = add i64 %i.l, %..i
  store i64 %i.m, ptr %i.c, align 8, !noalias !10018
  store ptr %i.i, ptr %0, align 8, !captures !8374
  store i64 %i.j, ptr %i.f, align 8
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_8ProgressNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !28 ; 5 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterjENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtB1f_5accumjINtB2l_3SumRjE3sumBY_E0ECsc4241EHy6Do_9typst_kit.exit, label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit.exit

_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.m, align 8, !alias.scope !10021, !noalias !10024 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load i64, ptr %i.n, align 8, !alias.scope !10021, !noalias !10024 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.o = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.o    ; 5 uses
  %i.p = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.p, %i.k           ; 2 uses
  %i.q = add i64 %.sroa.04.0.i.i, %i.k
  %i.r = sub nuw i64 %i.k, %i.p
  %i.s = shl nuw nsw i64 %i.r, 3
  %.sroa.5.0.i = select i1 %.not11.i.i, i64 %.val.i, i64 %i.q ; 2 uses
  %.sroa.11.0.i = select i1 %.not11.i.i, i64 %i.s, i64 0 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !10021, !noalias !10024, !nonnull !28, !noundef !28 ; 3 uses
  %.idx78 = shl nuw nsw i64 %.sroa.04.0.i.i, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx78 ; 2 uses
  %i.w = icmp samesign eq i64 %.sroa.04.0.i.i, %.sroa.5.0.i
  br i1 %i.w, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit.exit
  %i.x = sub nuw nsw i64 %.sroa.5.0.i, %.sroa.04.0.i.i ; 4 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !noalias !10026
  %wide.load96 = load <2 x i64>, ptr %i.z, align 8, !noalias !10026
  %i.aa = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ab = add <2 x i64> %wide.load96, %vec.phi95  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !10029

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.i73.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %bb.b ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i73 = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.04.0.i.i73.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.02.0.i.i.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.04.0.i.i73
  %.val.i.i = load i64, ptr %i.ae, align 8, !noalias !10026, !noundef !28
  %i.af = add i64 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i73, 1        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.x
  br i1 %i.ah, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i, label %scalar.ph, !llvm.loop !10032

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %scalar.ph, %middle.block, %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit.exit
  %.sroa.0.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit.exit ], [ %i.ad, %middle.block ], [ %i.af, %scalar.ph ] ; 3 uses
  %i.ai = icmp samesign eq i64 %.sroa.11.0.i, 0
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i
  %i.aj = lshr exact i64 %.sroa.11.0.i, 3         ; 3 uses
  %min.iters.check98 = icmp samesign ult i64 %.sroa.11.0.i, 32
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %bb.c
  %n.vec100 = and i64 %i.aj, 1152921504606846972  ; 3 uses
  %i.ak = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.0.i.i, i64 0
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %vec.phi103 = phi <2 x i64> [ %i.ak, %vector.ph99 ], [ %i.an, %vector.body101 ]
  %vec.phi104 = phi <2 x i64> [ zeroinitializer, %vector.ph99 ], [ %i.ao, %vector.body101 ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index102 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load105 = load <2 x i64>, ptr %i.al, align 8, !noalias !10026
  %wide.load106 = load <2 x i64>, ptr %i.am, align 8, !noalias !10026
  %i.an = add <2 x i64> %wide.load105, %vec.phi103 ; 2 uses
  %i.ao = add <2 x i64> %wide.load106, %vec.phi104 ; 2 uses
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.ap, label %middle.block108, label %vector.body101, !llvm.loop !10033

middle.block108:                                  ; preds = %vector.body101
  %bin.rdx109 = add <2 x i64> %i.ao, %i.an
  %i.aq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx109) ; 2 uses
  %cmp.n110 = icmp eq i64 %i.aj, %n.vec100
  br i1 %cmp.n110, label %.loopexit, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %bb.c, %middle.block108
  %.sroa.04.0.i1.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec100, %middle.block108 ]
  %.sroa.02.0.i2.i.ph = phi i64 [ %.sroa.0.0.i.i, %bb.c ], [ %i.aq, %middle.block108 ]
  br label %scalar.ph97

scalar.ph97:                                      ; preds = %scalar.ph97.preheader, %scalar.ph97
  %.sroa.04.0.i1.i = phi i64 [ %i.at, %scalar.ph97 ], [ %.sroa.04.0.i1.i.ph, %scalar.ph97.preheader ] ; 2 uses
  %.sroa.02.0.i2.i = phi i64 [ %i.as, %scalar.ph97 ], [ %.sroa.02.0.i2.i.ph, %scalar.ph97.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i1.i
  %.val.i3.i = load i64, ptr %i.ar, align 8, !noalias !10026, !noundef !28
  %i.as = add i64 %.val.i3.i, %.sroa.02.0.i2.i    ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.04.0.i1.i, 1     ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.aj
  br i1 %i.au, label %.loopexit, label %scalar.ph97, !llvm.loop !10034

_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterjENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtB1f_5accumjINtB2l_3SumRjE3sumBY_E0ECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a
  %i.av = load i64, ptr %0, align 8, !range !30, !noundef !28
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = trunc nuw i64 %i.av to i1
  %spec.select = select i1 %i.ay, i64 %i.ax, i64 0
  br label %bb.d

.loopexit:                                        ; preds = %scalar.ph97, %middle.block108, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i
  %.sroa.0.0.i4.i.ph = phi i64 [ %.sroa.0.0.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvXsM_NtBW_5accumjINtB1N_3SumRjE3sumINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterjEE0ECsc4241EHy6Do_9typst_kit.exit.i ], [ %i.aq, %middle.block108 ], [ %i.as, %scalar.ph97 ]
  %i.az = udiv i64 %.sroa.0.0.i4.i.ph, %i.k
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterjENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtB1f_5accumjINtB2l_3SumRjE3sumBY_E0ECsc4241EHy6Do_9typst_kit.exit, %.loopexit
  %.sroa.01.0 = phi i64 [ %i.az, %.loopexit ], [ %spec.select, %_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterjENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtB1f_5accumjINtB2l_3SumRjE3sumBY_E0ECsc4241EHy6Do_9typst_kit.exit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !28 ; 2 uses
  %i.bc = zext i64 %i.bb to i128
  %i.bd = mul nuw nsw i128 %i.bc, 1000000000
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load i32, ptr %i.be, align 8, !range !7568, !noundef !28 ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i128
  %i.bh = add nuw nsw i128 %i.bd, %i.bg           ; 2 uses
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.bj = udiv i128 1000000000, %i.bh
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = mul i64 %.sroa.01.0, %i.bk
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.06.0 = phi i64 [ %i.bl, %bb.e ], [ %.sroa.01.0, %bb.d ] ; 2 uses
  %i.bm = load i64, ptr %0, align 8, !range !30, !noundef !28
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noundef !28 ; 2 uses
  %i.bs = uitofp i64 %i.br to double              ; 2 uses
  %i.bt = uitofp i64 %i.bp to double              ; 2 uses
  %i.bu = fdiv double %i.bs, %i.bt
  %i.bv = icmp eq i64 %.sroa.01.0, 0
  br i1 %i.bv, label %bb.k, label %bb.j, !prof !74

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !28
  %i.by = uitofp i64 %i.bx to double
  store double %i.by, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bz = uitofp i64 %.sroa.06.0 to double
  store double %i.bz, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.453.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ca, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.457.0..sroa_idx, align 8
  %i.cb = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !28, !align !163, !noundef !28
  %i.ce = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd, ptr noundef nonnull @364, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %.sroa.0.1.in = phi i1 [ %i.dc, %bb.m ], [ %i.ce, %bb.h ]
  ret i1 %.sroa.0.1.in

bb.j:                                             ; preds = %bb.g
  %i.cf = sub i64 %i.bp, %i.br
  %i.cg = udiv i64 %i.cf, %.sroa.01.0             ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 4294967295
  %i.ci = select i1 %i.ch, i64 0, i64 %i.cg
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.010.0 = phi i64 [ 0, %bb.g ], [ %i.ci, %bb.j ] ; 2 uses
  %i.cj = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bb, i64 %.sroa.010.0) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %select.unfold, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.cl = zext nneg i32 %i.bf to i64
  %i.cm = mul nuw nsw i64 %.sroa.010.0, %i.cl     ; 2 uses
  %2 = extractvalue { i64, i1 } %i.cj, 0          ; 2 uses
  %i.cn = udiv i64 %i.cm, 1000000000
  %i.co = urem i64 %i.cm, 1000000000
  %i.cp = add i64 %2, %i.cn                       ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %2
  br i1 %i.cq, label %select.unfold, label %bb.m, !prof !74

bb.m:                                             ; preds = %bb.l
  %i.cr = trunc nuw nsw i64 %i.co to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store double %i.bs, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store double %i.bt, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cs = fmul double %i.bu, 1.000000e+02
  store double %i.cs, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ct = uitofp i64 %.sroa.06.0 to double
  store double %i.ct, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.cp, ptr %i.e, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.cr, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.421.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.cv, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.425.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.cw, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %i.cx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.433.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.e, ptr %i.cy, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader14format_seconds0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.437.0..sroa_idx, align 8
  %i.cz = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !28, !align !163, !noundef !28
  %i.dc = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.db, ptr noundef nonnull @367, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

select.unfold:                                    ; preds = %bb.l, %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesINtNtCs1xwejQucwHj_5alloc3vec3VechENtB5_8Bytelike6as_strCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !28
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesINtNtCs1xwejQucwHj_5alloc3vec3VechENtB5_8Bytelike8as_bytesCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !28
  %i.c = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.val1, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsL_NtNtCsaL1QbXo9JQH_3std4sync4mpscNtB5_9RecvErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_9PathErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !479, !noundef !28
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 9, i64 7
  %.1 = select i1 %i.b, ptr @377, ptr @376
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10035)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10035, !noundef !28 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !64, !alias.scope !10038, !noundef !28
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, !prof !74

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !10035, !nonnull !28, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !10035
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !10035
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !10035
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !10035
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !10035
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !10035
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !10035
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !10035
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !10035
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !10035
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !10035
  ret i1 false
}

end_hunk_7
begin_hunk_8_@_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run
declare void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_CsgSlMZLQvLVR_10native_tlsNtB5_11Certificate8from_pem(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs261H7cERR92_10serde_json5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #37

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB2_5Bytes5lines(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath4join(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB2_5Bytes6as_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_CsbGiR87yI9G2_9tiny_httpNtB5_16IncomingRequestsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsZ7O2w1b9D3_6notify5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsd_NtCsdaEETE4DqmE_13typst_library4diagNtB5_9FileError7from_io(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsA_NtCsaL1QbXo9JQH_3std2fsNtB5_8DirEntry4path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_CskXGPWmRzvaD_6fontdbNtB5_8Database17load_system_fonts(ptr noalias nofree noundef align 8 dereferenceable(152)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsbhNE34pNdVO_5infer3get(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #33

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsaL1QbXo9JQH_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #36

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_CsZ7O2w1b9D3_6notifyINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtB4_5error5ErrorEENtB4_12EventHandler12handle_event(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsZ7O2w1b9D3_6notify7inotifyNtB4_14INotifyWatcher18from_event_handler(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsZ7O2w1b9D3_6notify7inotifyNtB5_14INotifyWatcherNtB7_7Watcher7unwatch(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 1, 13) i8 @_RNvMNtCs36kBOm3CFn1_4time4dateNtB2_4Date5month(i32 noundef range(i32 1, 0)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMNtCs36kBOm3CFn1_4time4dateNtB2_4Date3day(i32 noundef range(i32 1, 0)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate12from_ymd_opt(i32 noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6offset5localNtB4_5LocalNtB6_8TimeZone24offset_from_utc_datetime(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #38

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8datetimeNtB2_8Datetime8from_ymd(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i8 noundef, i8 noundef) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB2_7Condvar10notify_one(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #38

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #39

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #40

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #41

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #30

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now() unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #42

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs2N41nl8cATr_6flate22gzNtB5_8GzHeaderINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14GzHeaderParserE4from(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCs261H7cERR92_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs261H7cERR92_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCsdaEETE4DqmE_13typst_library(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCsdaEETE4DqmE_13typst_library(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #38

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsdaEETE4DqmE_13typst_library(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCs261H7cERR92_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCs261H7cERR92_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath7realize(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpec11versionless(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue7ControlNtB1c_7MessageEE4growB1c_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1SAYzCH86J4_12vello_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #38

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NvMs2_NtNtCs3oUPovFnLWP_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs261H7cERR92_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE8grow_oneCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #36

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare noundef i64 @_RNvMs_NtCsg5ZWEykmiUC_11parking_lot7condvarNtB4_7Condvar15notify_all_slow(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCsg5ZWEykmiUC_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8, ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs6HMuMFW9x1t_4dirs8data_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs6HMuMFW9x1t_4dirs9cache_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #37

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsdaEETE4DqmE_13typst_library4diagNtB5_10TracepointNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB2_5Bytes8as_slice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs1xwejQucwHj_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cs431wuiqtBa9_3urlNtB4_3Url4path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_CsosBOcykZR2_16percent_encodingNtB5_13PercentDecode11decode_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsjfGn3GvpENR_8fastrand10global_rng11random_seed() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsl8oL64ujIrP_7openssl5errorNtB5_10ErrorStackNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String11try_reserve(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsiQVcNa4glHQ_4ureq5agentNtB5_12AgentBuilder3new(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsiQVcNa4glHQ_4ureq5agentNtB5_12AgentBuilder10user_agent(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(256), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs1Vqg6CvxgtF_9env_proxyNtB2_8ProxyUrl6to_url(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsiQVcNa4glHQ_4ureq5agentNtB5_12AgentBuilder5proxy(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(256), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCsl8oL64ujIrP_7openssl4x509NtB5_4X509NtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsa_CsgSlMZLQvLVR_10native_tlsNtB5_19TlsConnectorBuilder20add_root_certificate(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_CsgSlMZLQvLVR_10native_tlsNtB5_19TlsConnectorBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs1_NtCsiQVcNa4glHQ_4ureq5agentNtB5_12AgentBuilder5build(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(256)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsiQVcNa4glHQ_4ureq5agentNtB5_5Agent3get(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsiQVcNa4glHQ_4ureq7requestNtB4_7Request4call(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCsiQVcNa4glHQ_4ureq8responseNtB4_8Response6header(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs_NtCsiQVcNa4glHQ_4ureq8responseNtB4_8Response11into_reader(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtCsiQVcNa4glHQ_4ureq5error5ErrorEB1m_(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCsl8oL64ujIrP_7openssl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs7PiwjADO7TO_10serde_core2deDNtB5_8ExpectedEL_NtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_22VersionlessPackageSpecNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @X509_free(ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library4text4fontNtB2_4Font3new(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i32 noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @SSL_CTX_free(ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXs7_NtNtCs2N41nl8cATr_6flate23ffi1cNtB5_13DirDecompressNtB5_9Direction7destroy(ptr noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #6
end_hunk_8
