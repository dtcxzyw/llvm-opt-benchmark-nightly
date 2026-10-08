Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.02?download=true
inline.NumInlined: 373
inline.NumDeleted: 189
begin_hunk_0_@_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB16_17SubrequestSpawner27spawn_background_subrequest0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB16_:bb.a
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0EEB1A_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !877 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !877

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !7, !invariant.load !6, !noalias !877 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0EEB1A_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !6, !noalias !877
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #18, !noalias !877
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0EEB1A_.exit

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !6, !noalias !877 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !6, !noalias !877
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #18, !noalias !877
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.e, ptr noundef nonnull align 8 dereferenceable(592) %1, i64 592, i1 false)
  invoke void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0EEB1A_.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.b, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.e, ptr noundef nonnull align 8 dereferenceable(592) %1, i64 592, i1 false)
  call void @_RNvXs3_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %.body, %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.thread:                                          ; preds = %.body, %bb.n
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ab, %bb.n ]
  resume { ptr, i32 } %.pn8

bb.n:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB1A_17SubrequestSpawner27spawn_background_subrequest0EEB1A_(ptr noundef nonnull align 8 %1) #21
          to label %.thread unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define noalias noundef align 8 ptr @_RNvNtCs3Kwrwkha1e5_13pingora_proxy8proxy_h226update_h2_scheme_authority(ptr noalias nofree noundef align 8 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %2, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.q = load i64, ptr %i.m, align 8, !range !9, !noundef !6
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %.split67, label %bb.e

.split67:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRShNtB6_5Debug3fmtCs3Kwrwkha1e5_13pingora_proxy, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @24, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !906
  call void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 13, ptr %i.s, align 8, !noalias !907
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.t, align 1, !noalias !906
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.u, align 8, !noalias !906
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.v, align 8, !noalias !906
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !908
  %i.w = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 769) 72, i64 noundef range(i64 8, 129) 8) #18, !noalias !908 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit, !prof !18

bb.b:                                             ; preds = %.split67
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc.i unwind label %bb.c, !noalias !906

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #21
          to label %common.resume unwind label %bb.d, !noalias !906

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !906
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.af, %bb.z, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.cv, %bb.z ], [ %i.y, %bb.c ], [ %i.cx, %bb.ac ], [ %i.cy, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit: ; preds = %.split67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 91, ptr %i.c, align 4
  %i.ae = call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ae, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %.lr.ph.split.i.i.backedge
  %i.af = phi i64 [ %i.at, %.lr.ph.split.i.i.backedge ], [ 0, %bb.e ] ; 5 uses
  %i.ag = sub nuw i64 %i.ad, %i.af                ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ag, 16
  br i1 %i.ai, label %.preheader.i.i.i, label %bb.f

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.ad, %i.af
  br i1 %.not.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %i.aj = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ag), !noalias !909 ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  %i.am = trunc nuw i64 %i.ak to i1
  br i1 %i.am, label %.loopexit.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.g
  %.sroa.04.011.i.i.i = phi i64 [ %i.aq, %bb.g ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.04.011.i.i.i
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !910, !noalias !909, !noundef !6
  %i.ap = icmp eq i8 %i.ao, 58
  br i1 %i.ap, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aq, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.5.0.i.i.i = phi i64 [ %i.al, %bb.f ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = icmp ult i64 %.sroa.5.0.i.i.i, %i.ag
  call void @llvm.assume(i1 %i.ar)
  %i.as = add i64 %i.af, 1
  %i.at = add i64 %i.as, %.sroa.5.0.i.i.i         ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.at, %i.ad         ; 2 uses
  %i.au = add i64 %.sroa.5.0.i.i.i, %i.af         ; 3 uses
  %or.cond.i.not.i = icmp ult i64 %i.au, %i.ad
  br i1 %or.cond.i.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i
  br i1 %.not12.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.split.i.i.backedge

bb.i:                                             ; preds = %.loopexit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %lhsc.i = load i8, ptr %i.av, align 1, !alias.scope !911
  %i.aw = icmp eq i8 %lhsc.i, 58                  ; 2 uses
  %brmerge.i = or i1 %.not12.i.i, %i.aw
  br i1 %brmerge.i, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.i, %bb.h
  br label %.lr.ph.split.i.i

_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.i
  br i1 %i.aw, label %bb.j, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit
  %i.ax = add nuw i64 %i.au, 1                    ; 5 uses
  %i.ay = icmp eq i64 %i.ad, %i.ax
  br i1 %i.ay, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ax ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !912, !noundef !6
  %i.bb = icmp sgt i8 %i.ba, -65
  br i1 %i.bb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bc = sub nuw i64 %i.ad, %i.ax                ; 4 uses
  br label %.lr.ph.split.i.i82

.lr.ph.split.i.i82:                               ; preds = %.lr.ph.split.i.i82.backedge, %bb.l
  %i.bd = phi i64 [ 0, %bb.l ], [ %i.br, %.lr.ph.split.i.i82.backedge ] ; 5 uses
  %i.be = sub nuw i64 %i.bc, %i.bd                ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bg = icmp samesign ult i64 %i.be, 16
  br i1 %i.bg, label %.preheader.i.i.i94, label %bb.m

.preheader.i.i.i94:                               ; preds = %.lr.ph.split.i.i82
  %.not.i.i.i95 = icmp eq i64 %i.bc, %i.bd
  br i1 %.not.i.i.i95, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.i.i.i96

bb.m:                                             ; preds = %.lr.ph.split.i.i82
  %i.bh = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef range(i64 0, -9223372036854775808) %i.be), !noalias !913 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  %i.bj = extractvalue { i64, i64 } %i.bh, 1
  %i.bk = trunc nuw i64 %i.bi to i1
  br i1 %i.bk, label %.loopexit.i.i85, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112

.lr.ph.i.i.i96:                                   ; preds = %.preheader.i.i.i94, %bb.n
  %.sroa.04.011.i.i.i97 = phi i64 [ %i.bo, %bb.n ], [ 0, %.preheader.i.i.i94 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.04.011.i.i.i97
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !914, !noalias !913, !noundef !6
  %i.bn = icmp eq i8 %i.bm, 58
  br i1 %i.bn, label %.loopexit.i.i85, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i96
  %i.bo = add nuw nsw i64 %.sroa.04.011.i.i.i97, 1 ; 2 uses
  %exitcond.not.i.i.i98 = icmp eq i64 %i.bo, %i.be
  br i1 %exitcond.not.i.i.i98, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.i.i.i96

.loopexit.i.i85:                                  ; preds = %.lr.ph.i.i.i96, %bb.m
  %.sroa.5.0.i.i.i86 = phi i64 [ %i.bj, %bb.m ], [ %.sroa.04.011.i.i.i97, %.lr.ph.i.i.i96 ] ; 3 uses
  %i.bp = icmp ult i64 %.sroa.5.0.i.i.i86, %i.be
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add i64 %i.bd, 1
  %i.br = add i64 %i.bq, %.sroa.5.0.i.i.i86       ; 2 uses
  %.not12.i.i87 = icmp ugt i64 %i.br, %i.bc       ; 2 uses
  %i.bs = add i64 %.sroa.5.0.i.i.i86, %i.bd       ; 3 uses
  %or.cond.i.not.i88 = icmp ult i64 %i.bs, %i.bc
  br i1 %or.cond.i.not.i88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i85
  br i1 %.not12.i.i87, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %.lr.ph.split.i.i82.backedge

bb.p:                                             ; preds = %.loopexit.i.i85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bs
  %lhsc.i92 = load i8, ptr %i.bt, align 1, !alias.scope !915
  %i.bu = icmp eq i8 %lhsc.i92, 58                ; 2 uses
  %brmerge.i93 = or i1 %.not12.i.i87, %i.bu
  br i1 %brmerge.i93, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit99, label %.lr.ph.split.i.i82.backedge

.lr.ph.split.i.i82.backedge:                      ; preds = %bb.p, %bb.o
  br label %.lr.ph.split.i.i82

_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit99: ; preds = %bb.p
  br i1 %i.bu, label %bb.r, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112

bb.q:                                             ; preds = %bb.k
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, i64 noundef %i.ax, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
  unreachable

bb.r:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit99
  %i.bv = add i64 %i.bs, %i.ax                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i100 = icmp ult i64 %i.bv, %i.ad
  br i1 %.not.i100, label %bb.t, label %.split.i101

.split.i101:                                      ; preds = %bb.s
  %i.bx = icmp eq i64 %i.bv, %i.ad
  br i1 %i.bx, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bv
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !916, !noundef !6
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112, label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.i101
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, i64 noundef 0, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112: ; preds = %bb.h, %bb.f, %.preheader.i.i.i, %bb.g, %bb.o, %bb.m, %.preheader.i.i.i94, %bb.n, %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit, %bb.j, %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit99, %bb.t, %.split.i101, %bb.r, %bb.e
  %.sroa.10.1.sink = phi i64 [ %i.ad, %bb.e ], [ %i.ad, %bb.j ], [ %i.ad, %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit ], [ %i.bv, %bb.t ], [ %i.ad, %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit99 ], [ 0, %bb.r ], [ %i.ad, %bb.o ], [ %i.ad, %.split.i101 ], [ %i.ad, %bb.g ], [ %i.ad, %bb.n ], [ %i.ad, %.preheader.i.i.i94 ], [ %i.ad, %bb.m ], [ %i.ad, %.preheader.i.i.i ], [ %i.ad, %bb.f ], [ %i.ad, %bb.h ] ; 2 uses
  store ptr %i.ab, ptr %i.n, align 8, !captures !917
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.10.1.sink, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %. = select i1 %3, i64 5, i64 4
  %.75 = select i1 %3, ptr @21, ptr @20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 -1, ptr %i.g, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.548.0..sroa_idx, align 8
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %.sroa.649.0..sroa_idx, align 8
  call void @_RINvMNtNtCs84JG9zk80ZV_4http3uri7builderNtB3_7Builder3mapNCINvB2_6schemeReE0ECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.75, i64 noundef %.)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RINvMNtNtCs84JG9zk80ZV_4http3uri7builderNtB3_7Builder3mapNCINvB2_9authorityReE0ECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %.sroa.10.1.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !17, !noundef !6
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = icmp ne i64 %i.cg, 0
  %or.cond.not = select i1 %i.ce, i1 %i.ch, i1 false
  br i1 %or.cond.not, label %bb.w, label %bb.v, !prof !18

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !6, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !6 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %spec.select = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %spec.select78 = select i1 %i.cm, ptr @23, ptr %i.cj
  call void @_RINvMNtNtCs84JG9zk80ZV_4http3uri7builderNtB3_7Builder3mapNCINvB2_14path_and_queryReE0ECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select78, i64 noundef %spec.select)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCs84JG9zk80ZV_4http3uri7builderNtB2_7Builder5build(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cn = load i8, ptr %i.f, align 8, !range !918, !noundef !6
  %i.co = icmp eq i8 %i.cn, -1
  br i1 %i.co, label %.split, label %bb.ab

bb.w:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre4findcECs3Kwrwkha1e5_13pingora_proxy.exit.thread112
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  unreachable

.split:                                           ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.d, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs3Kwrwkha1e5_13pingora_proxy, ptr %.sroa.457.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @24, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !919
  call void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 13, ptr %i.cp, align 8, !noalias !920
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 3, ptr %i.cq, align 1, !noalias !919
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.cr, align 8, !noalias !919
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.cs, align 8, !noalias !919
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !921
  %i.ct = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 769) 72, i64 noundef range(i64 8, 129) 8) #18, !noalias !921 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.y, label %_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit104, !prof !18

bb.y:                                             ; preds = %.split
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc.i103 unwind label %bb.z, !noalias !919

.noexc.i103:                                      ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #21
          to label %common.resume unwind label %bb.aa, !noalias !919

bb.aa:                                            ; preds = %bb.z
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !919
  unreachable

_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit104: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !919
  br label %bb.ae

bb.ab:                                            ; preds = %bb.v
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(88) %i.cc)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cc, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  br label %common.resume
end_hunk_0
