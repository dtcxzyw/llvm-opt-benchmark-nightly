inline.NumInlined: 822
inline.NumDeleted: 279
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState13process_alert:bb.a
bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 823
  %i.x = load i8, ptr %i.w, align 1, !range !30, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !range !2173 ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 0
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.p, %bb.j, %bb.h, %_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorEB5_.exit
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.aa, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.ad, ptr %i.af, align 2
  store i8 10, ptr %i.e, align 8
  %i.ag = icmp eq i8 %i.h, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 827
  store i8 1, ptr %i.ah, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 812 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4, !noundef !5 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.k:                                             ; preds = %bb.i
  store i8 9, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 66, ptr %.sroa.424.0..sroa_idx, align 1
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %i.al = add i8 %i.aj, -1
  store i8 %i.al, ptr %i.ai, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.an = load i16, ptr %i.am, align 8, !range !31, !noundef !5
  %cond36 = icmp eq i16 %i.an, 5
  %cond = icmp eq i8 %i.aa, 23                    ; 2 uses
  br i1 %cond36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %cond, label %bb.q, label %bb.r

bb.n:                                             ; preds = %bb.l
  br i1 %cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, i8 noundef 16, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.q:                                             ; preds = %bb.n, %bb.t, %bb.r, %bb.m
  store i8 -1, ptr %0, align 8
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  %i.ao = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 6
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ugt i64 %i.ao, 1
  br i1 %i.aq, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5alert19AlertMessagePayloadNtB6_5Debug3fmtBC_, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @12, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 20, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @12, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 20, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @11, ptr %i.au, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @10, ptr noundef nonnull %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.u:                                             ; preds = %bb.k, %bb.q
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e)
  br label %bb.p

bb.v:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #27
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState13start_traffic(ptr noalias nofree noundef align 8 dereferenceable(840) initializes((822, 824)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 823
  store i8 1, ptr %i.a, align 1
  tail call void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState22start_outgoing_traffic(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState15write_plaintext(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(840) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [168 x i8], align 8               ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 16 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = load ptr, ptr %2, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = sub i64 %i.s, %i.u
  %.sroa.06.0 = select i1 %.not, i64 %i.u, i64 %i.v ; 2 uses
  %i.w = icmp eq i64 %.sroa.06.0, 0
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !5 ; 5 uses
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload37 = load i64, ptr %.sroa.6.0..sroa_idx36, align 8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aa, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.ab = add i64 %.sroa.06.0, -1
  %i.ac = add i64 %i.ab, %i.y                     ; 2 uses
  %i.ad = udiv i64 %i.ac, %i.y                    ; 2 uses
  %.not68 = icmp ugt i64 %i.y, %i.ac
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.aj = load i16, ptr %i.ai, align 8, !range !31
  %.fr = freeze i16 %i.aj
  %cond = icmp eq i16 %.fr, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 831
  br i1 %cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.sroa.019.067.us = phi i64 [ %i.al, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.al = add nuw i64 %.sroa.019.067.us, 1        ; 2 uses
  %5 = add nuw i64 %i.af, %.sroa.019.067.us       ; 2 uses
  %i.am = icmp eq i64 %5, %i.ah
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.an = icmp ugt i64 %5, -3
  br i1 %i.an, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState17send_close_notify.exit, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  store i8 1, ptr %i.ak, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = icmp ult i64 %i.al, %i.ad
  br i1 %i.ao, label %.lr.ph.split.us, label %._crit_edge

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

._crit_edge:                                      ; preds = %bb.ai, %bb.g, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !alias.scope !2182 ; 2 uses
  store i64 -1, ptr %i.ap, align 8, !alias.scope !2182
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState24perhaps_write_key_update.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2182
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !noalias !2182
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ar = call noundef i64 @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2182
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState24perhaps_write_key_update.exit

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState24perhaps_write_key_update.exit: ; preds = %._crit_edge, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.at = call noundef i64 @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.as), !noalias !2185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2188
  store ptr %i.q, ptr %i.o, align 8, !noalias !2190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.6.0.copyload37, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2190
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.u, ptr %.sroa.638.0..sroa_idx, align 8, !noalias !2190
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.s, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !2190
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.y, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !2190
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store i16 4, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !2190
  %.sroa.1144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  store i8 3, ptr %.sroa.1144.0..sroa_idx, align 4, !noalias !2190
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2191
  call void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls4msgs10fragmenterNtB5_7ChunkerNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o), !noalias !2195
  %i.au = load i64, ptr %i.m, align 8, !range !1927, !noalias !2191, !noundef !5
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %.lr.ph.i, label %_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState19check_required_sizeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtNtB5_4msgs10fragmenter7ChunkerNCNvMs_B27_NtB27_17MessageFragmenter16fragment_payload0EEB5_.exit

.lr.ph.i:                                         ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState24perhaps_write_key_update.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.01.06.i = phi i64 [ %i.at, %.lr.ph.i ], [ %i.bb, %bb.j ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !noalias !2188
  %i.ax = load i8, ptr %.sroa.1144.0..sroa_idx, align 4, !range !2198, !alias.scope !2199, !noalias !2202, !noundef !5
  %i.ay = load i8, ptr %.sroa.12.0..sroa_idx, align 1, !alias.scope !2199, !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2205
  store i8 %i.ax, ptr %.sroa.5.0..sroa_idx.i28, align 8, !noalias !2188
  store i8 %i.ay, ptr %.sroa.6.0..sroa_idx.i, align 1, !noalias !2188
  %i.az = load <2 x i16>, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !2199, !noalias !2202
  store <2 x i16> %i.az, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !2188
  %i.ba = call noundef i64 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB2_20OutboundPlainMessage11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %1), !noalias !2185
  %i.bb = add i64 %i.ba, %.sroa.01.06.i           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2206
  call void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls4msgs10fragmenterNtB5_7ChunkerNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o), !noalias !2195
  %i.bc = load i64, ptr %i.m, align 8, !range !1927, !noalias !2206, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState19check_required_sizeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtNtB5_4msgs10fragmenter7ChunkerNCNvMs_B27_NtB27_17MessageFragmenter16fragment_payload0EEB5_.exit

_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState19check_required_sizeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtNtB5_4msgs10fragmenter7ChunkerNCNvMs_B27_NtB27_17MessageFragmenter16fragment_payload0EEB5_.exit: ; preds = %bb.j, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState24perhaps_write_key_update.exit
  %.sroa.01.0.lcssa.i = phi i64 [ %i.at, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState24perhaps_write_key_update.exit ], [ %i.bb, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2188
  %i.be = icmp ugt i64 %.sroa.01.0.lcssa.i, %4
  br i1 %i.be, label %bb.k, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ai
  %.sroa.019.067 = phi i64 [ %i.bf, %bb.ai ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = add nuw i64 %.sroa.019.067, 1           ; 2 uses
  %6 = add nuw i64 %i.af, %.sroa.019.067          ; 2 uses
  %i.bg = icmp eq i64 %6, %i.ah
  br i1 %i.bg, label %bb.aj, label %bb.ah

bb.k:                                             ; preds = %_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState19check_required_sizeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtNtB5_4msgs10fragmenter7ChunkerNCNvMs_B27_NtB27_17MessageFragmenter16fragment_payload0EEB5_.exit
  store i64 0, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.lcssa.i, ptr %i.bh, align 8
  br label %bb.ag

bb.l:                                             ; preds = %_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState19check_required_sizeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtNtB5_4msgs10fragmenter7ChunkerNCNvMs_B27_NtB27_17MessageFragmenter16fragment_payload0EEB5_.exit
  %i.bi = load i64, ptr %i.x, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2208
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3pop(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.as), !noalias !2213
  %i.bj = load i64, ptr %i.l, align 8, !range !125, !noalias !2208, !noundef !5
  %.not45.i = icmp eq i64 %i.bj, -1
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %.lr.ph.i29
  %.sroa.0.046.i = phi i64 [ 0, %.lr.ph.i29 ], [ %i.bo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2208
  %i.bm = load i64, ptr %i.bk, align 8, !noalias !2208, !noundef !5 ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw i64 %i.bm, %.sroa.0.046.i       ; 4 uses
  %.not12.i = icmp ugt i64 %i.bo, %4
  br i1 %.not12.i, label %bb.o, label %bb.n, !prof !87

._crit_edge.i:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.l
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %i.bo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !2214
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bi, ptr %.sroa.450.0..sroa_idx, align 8, !noalias !2214
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i16 4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2214
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 44 ; 2 uses
  store i8 3, ptr %.sroa.652.0..sroa_idx, align 4, !noalias !2214
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2215
  call void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls4msgs10fragmenterNtB5_7ChunkerNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j), !noalias !2219
  %i.bp = load i64, ptr %i.f, align 8, !range !1927, !noalias !2215, !noundef !5
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %.lr.ph49.i, label %_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState15write_fragmentsINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtNtB5_4msgs10fragmenter7ChunkerNCNvMs_B23_NtB23_17MessageFragmenter16fragment_payload0EEB5_.exit

.lr.ph49.i:                                       ; preds = %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.6.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %.sroa.7.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.i, i64 34
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.046.i
  %i.bv = load ptr, ptr %i.bl, align 8, !noalias !2208, !nonnull !5, !noundef !5
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.bu, i64 noundef %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.q unwind label %.loopexit25.i, !noalias !2220

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.046.i, i64 noundef %i.bo, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
          to label %bb.v unwind label %.loopexit.split-lp26.i, !noalias !2220

.loopexit25.i:                                    ; preds = %bb.n
  %lpad.loopexit27.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp26.i:                           ; preds = %bb.o
  %lpad.loopexit.split-lp28.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp26.i, %.loopexit25.i
  %lpad.phi29.i = phi { ptr, i32 } [ %lpad.loopexit27.i, %.loopexit25.i ], [ %lpad.loopexit.split-lp28.i, %.loopexit.split-lp26.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %common.resume.i unwind label %bb.w, !noalias !2220

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.t unwind label %bb.r, !noalias !2220

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !2221, !noalias !2208 ; 2 uses
  %i.bx = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bx, label %common.resume.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !2226, !noalias !2208, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2227
  br label %common.resume.i

bb.t:                                             ; preds = %bb.q
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !2221, !noalias !2208 ; 2 uses
  %i.by = icmp eq i64 %.val.i.i, 0
  br i1 %i.by, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !2226, !noalias !2208, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2230
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i

common.resume.i:                                  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.s, %bb.r, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %i.cj, %bb.ac ], [ %i.bw, %bb.r ], [ %i.bw, %bb.s ], [ %i.cj, %bb.ad ], [ %lpad.phi29.i, %bb.p ], [ %lpad.phi.i, %bb.aa ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2208
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3pop(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.as), !noalias !2220
  %i.bz = load i64, ptr %i.l, align 8, !range !125, !noalias !2208, !noundef !5
  %.not.i30 = icmp eq i64 %i.bz, -1
  br i1 %.not.i30, label %._crit_edge.i, label %bb.m

bb.v:                                             ; preds = %bb.z, %bb.o
  unreachable

bb.w:                                             ; preds = %bb.aa, %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2220
  unreachable

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit19.i, %.lr.ph49.i
  %.sroa.0.147.i = phi i64 [ %.sroa.0.0.lcssa.i, %.lr.ph49.i ], [ %i.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit19.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !noalias !2208
  %i.cb = load i8, ptr %.sroa.652.0..sroa_idx, align 4, !range !2198, !alias.scope !2235, !noalias !2238, !noundef !5
  %i.cc = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !2235, !noalias !2238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2241
  store i8 %i.cb, ptr %.sroa.5.0..sroa_idx.i31, align 8, !noalias !2208
  store i8 %i.cc, ptr %.sroa.6.0..sroa_idx.i32, align 1, !noalias !2208
  %i.cd = load <2 x i16>, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2235, !noalias !2238
  store <2 x i16> %i.cd, ptr %.sroa.7.0..sroa_idx.i33, align 2, !noalias !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2208
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer16encrypt_outgoing(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i), !noalias !2220
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_21OutboundOpaqueMessage6encode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g), !noalias !2220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2208
  %i.ce = load i64, ptr %i.bs, align 8, !noalias !2208, !noundef !5 ; 4 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw i64 %i.ce, %.sroa.0.147.i       ; 4 uses
  %.not11.i = icmp ugt i64 %i.cg, %4
  br i1 %.not11.i, label %bb.z, label %bb.y, !prof !87

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.147.i
  %i.ci = load ptr, ptr %i.bt, align 8, !noalias !2208, !nonnull !5, !noundef !5
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.ch, i64 noundef %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.ab unwind label %.loopexit.i, !noalias !2220

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.147.i, i64 noundef %i.cg, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30
          to label %bb.v unwind label %.loopexit.split-lp.i, !noalias !2220

.loopexit.i:                                      ; preds = %bb.y
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %bb.z
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %common.resume.i unwind label %bb.w, !noalias !2220

bb.ab:                                            ; preds = %bb.y
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ac, !noalias !2220

bb.ac:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i14.i = load i64, ptr %i.h, align 8, !alias.scope !2242, !noalias !2208 ; 2 uses
  %i.ck = icmp eq i64 %.val2.i14.i, 0
  br i1 %i.ck, label %common.resume.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val3.i15.i = load ptr, ptr %i.bt, align 8, !alias.scope !2247, !noalias !2208, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i15.i, i64 noundef %.val2.i14.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2248
  br label %common.resume.i

bb.ae:                                            ; preds = %bb.ab
  %.val.i17.i = load i64, ptr %i.h, align 8, !alias.scope !2242, !noalias !2208 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_5Debug3fmtCs7ZUl82OSlxp_6rustls:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3pop(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer16encrypt_outgoing(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_21OutboundOpaqueMessage6encode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB2_20OutboundPlainMessage11encoded_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7Message17is_handshake_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i8 noundef range(i8 0, 21), i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs4KeUGOPwGKr_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23ClientKeyExchangeParamsNtB6_8KxDecode6decode(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1s_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23ServerKeyExchangeParamsNtB6_8KxDecode6decode(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtB4_7set_val9SetValZSTENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_7AeadKeyNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEE32forget_allocation_drop_remainingCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEE32forget_allocation_drop_remainingCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerE32forget_allocation_drop_remainingCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5alert19AlertMessagePayloadNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls4msgs10fragmenterNtB5_7ChunkerNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer25prepare_message_encrypter(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer25prepare_message_decrypter(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload8into_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvXs4_NtCs7ZUl82OSlxp_6rustls5errorNtNtB7_5enums16AlertDescriptionINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_16CertificateErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7Message23build_key_update_notify(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB4_12PlainMessageINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_7MessageE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer3new(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload6encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEE13push_back_mutCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB2_20OutboundPlainMessage21to_unencrypted_opaque(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2n_6filter6FilterINtNtNtB2r_5slice4iter4IterB11_ENCNvMNtB15_5tls12NtB4a_16Tls12CipherSuite19resolve_sig_schemes0EEE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCs7ZUl82OSlxp_6rustls6suitesNtB2_17CipherSuiteCommon4fips(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB7_9handshake16EchConfigPayloadENtB5_5Codec4readB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1S_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContents31has_unknown_mandatory_extension(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1S_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContents23has_duplicate_extension(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10EchVersionNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1V_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtB8_5codec5Codec6encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_7AeadKey3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtNtB6_5error5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_25UnsupportedOperationErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5codectNtB5_5Codec6encode(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENCNvMs3_NtNtB1C_6client3echNtB2F_8EchState10grease_psk0EB1w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1C_5error5ErrorENCINvXso_B3y_IB3w_INtNtCs4wP2HXfJTCR_5alloc3vec3VecB1w_EB4i_EINtNtNtB4_6traits7collect12FromIteratorIB3w_B1w_B4i_EE9from_iterBQ_E0B4V_EB1C_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload14payload_encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB6_7Payload3newINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_25KeyScheduleHandshakeStart30server_ech_confirmation_secret(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2j_6filter6FilterINtNtNtB2n_5slice4iter4IterB11_ENCNvMs3_NtNtB15_6client3echNtB49_8EchState18encode_inner_hello0EEE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsL_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_16ClientExtensions33used_extensions_in_encoding_order(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3e_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16ClientExtensions12collect_used(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1318fill_in_psk_binder(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsQ_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_18ClientHelloPayload18ech_inner_encoding(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB15_7sources6repeat6RepeathEEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload9handshake(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3e_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16ClientExtensions9clone_one(ptr noalias nofree noundef align 8 dereferenceable(560), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i16 noundef range(i16 0, 44), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsf_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_17ServerNamePayloadINtNtCsj6eKBz9Db1c_4core7convert4FromRNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule34server_ech_hrr_confirmation_secret(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_6Random3new(ptr dead_on_unwind noalias nofree noundef writable sret([33 x i8]) align 1 captures(none) dereferenceable(33), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18ClientHelloPayloadNtNtB6_5codec5Codec12get_encodingB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1N_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayloadNtNtB8_5codec5Codec6encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer19append_limited_copy(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload20build_handshake_hash(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadNtNtB6_5codec5Codec12get_encodingB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB12_3VechEENvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameINtNtBc_7convert4FromB1L_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB22_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB22_E0INtNtBc_6result6ResultB49_zEEB28_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0
end_hunk_1
