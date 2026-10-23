Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.04?download=true
inline.NumInlined: 681
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto5tls136expandAhj40_KBN_EB6_:bb.a
  %i.b = alloca [64 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64) #29
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto5tls136expandAhj8_KBN_EB6_(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %i.b, i64 noundef 8) #29
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit: ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.01.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto5tls136expandAhjc_KBN_EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [12 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %i.b, i64 noundef 12) #29
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto5tls136expandNtNtB4_6cipher2IvKjc_EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [12 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %i.b, i64 noundef 12) #29
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto5tls136expandNtNtB4_6cipher7AeadKeyKj20_EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #29
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1317OutputLengthErrorE6expectBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 32, ptr %i.f, align 8, !alias.scope !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs7ZUl82OSlxp_6rustls4quicNtB2_4Quic8write_hs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef align 8 dereferenceable(496) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [240 x i8], align 8               ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %i.m = alloca [176 x i8], align 8               ; 21 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [176 x i8], align 8               ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEE9pop_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !range !5, !noundef !6
  %.not40 = icmp eq i64 %i.t, -1
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 305
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.ad = load i64, ptr %i.v, align 8, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ad)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.ae = load i64, ptr %i.w, align 8, !alias.scope !520, !noundef !6 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %i.x, align 8, !alias.scope !520, !nonnull !6, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.ac, i64 %i.ad, i1 false)
  %.pre.i = load i64, ptr %i.w, align 8, !alias.scope !520
  br label %bb.e

.loopexit:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit, %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 305 ; 2 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 3 uses
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.not23 = icmp eq i8 %.sroa.5.0.copyload, 2
  br i1 %.not23, label %bb.q, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %common.resume unwind label %bb.m

bb.e:                                             ; preds = %bb.c, %.noexc
  %i.aj = phi i64 [ %.pre.i, %bb.c ], [ %i.ae, %.noexc ]
  %i.ak = add i64 %i.aj, %i.ad
  store i64 %i.ak, ptr %i.w, align 8, !alias.scope !520
  %i.al = load i64, ptr %i.y, align 8, !noundef !6
  %.not20 = icmp eq i64 %i.al, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.z, align 8, !noundef !6 ; 2 uses
  %i.an = load i64, ptr %i.r, align 8, !range !15, !noundef !6 ; 2 uses
  %.not21 = icmp ult i64 %i.am, %i.an
  %i.ao = select i1 %.not21, i64 0, i64 %i.an
  %.sroa.013.0 = sub nuw i64 %i.am, %i.ao
  %i.ap = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %.sroa.013.0
  %i.ar = load i8, ptr %i.aq, align 8, !range !12, !noundef !6
  %.not28 = icmp eq i8 %i.ar, 0
  %i.as = load i8, ptr %i.ab, align 1, !range !19
  %.not22 = icmp eq i8 %i.as, 2
  %or.cond.not = select i1 %.not28, i1 true, i1 %.not22
  br i1 %or.cond.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.d, %.body, %.body36, %bb.k, %bb.h, %bb.af, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cq, %bb.af ], [ %i.at, %bb.h ], [ %i.aw, %bb.k ], [ %i.bq, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.body36 ], [ %i.ai, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEE9pop_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.av = load i64, ptr %i.s, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.av, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit31 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit31: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit

bb.m:                                             ; preds = %bb.ai, %.body36, %.body, %bb.d
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %.loopexit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(169) %i.o, ptr noundef nonnull align 8 dereferenceable(169) %i.az, i64 169, i1 false)
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.o, i64 169
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 1
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.o, i64 170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.ba = trunc nuw i8 %.sroa.5.0.copyload to i1  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.0.0.i = select i1 %i.ba, ptr %i.bb, ptr %i.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !522
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !521, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.bf = load ptr, ptr %i.o, align 8, !alias.scope !521, !nonnull !6, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !521, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.bj = load i8, ptr %i.bi, align 8, !range !19, !alias.scope !521, !noundef !6 ; 2 uses
  invoke void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4quicNtB5_15DirectionalKeys3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noundef nonnull %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.0.i, i8 noundef %i.bj)
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %bb.n
  %.sroa.01.0.i = select i1 %i.ba, ptr %i.bc, ptr %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !522
  invoke void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4quicNtB5_15DirectionalKeys3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noundef nonnull %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.01.0.i, i8 noundef %i.bj)
          to label %bb.s unwind label %bb.o, !noalias !523

bb.o:                                             ; preds = %.noexc32
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic15DirectionalKeysEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.p, !noalias !523

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !523
  unreachable

bb.q:                                             ; preds = %.loopexit
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 481 ; 2 uses
  %.sroa.58.0.copyload = load i8, ptr %.sroa.58.0..sroa_idx, align 1 ; 3 uses
  store i8 2, ptr %.sroa.58.0..sroa_idx, align 1
  %.not24 = icmp eq i8 %.sroa.58.0.copyload, 2
  br i1 %.not24, label %bb.y, label %bb.x

bb.r:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.bk, %bb.o ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsEBF_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.o) #25
          to label %common.resume unwind label %bb.m

bb.s:                                             ; preds = %.noexc32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !521
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !524
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %i.bc, ptr %i.h, align 8, !noalias !524
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !noalias !524
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsEBF_.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !525
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  store ptr %i.bb, ptr %i.g, align 8, !noalias !525
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !noalias !525
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !525
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsEBF_.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !526
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  store ptr %i.bb, ptr %i.f, align 8, !noalias !526
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !noalias !526
  call void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.w

bb.w:                                             ; preds = %bb.aj, %bb.y, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsEBF_.exit
  ret void

bb.x:                                             ; preds = %bb.q
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 482
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(169) %i.m, ptr noundef nonnull align 8 dereferenceable(169) %i.bw, i64 169, i1 false)
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.m, i64 169
  store i8 %.sroa.58.0.copyload, ptr %.sroa.58.0..sroa_idx9, align 1
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.m, i64 170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.611.0..sroa_idx12, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.611.0..sroa_idx, i64 6, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 490 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 2, !range !12, !noundef !6
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ac, label %bb.z

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsEBF_.exit39, %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 -1, ptr %i.ca, align 1
  br label %bb.w

bb.z:                                             ; preds = %bb.x
  store i8 1, ptr %i.bx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.cb = trunc nuw i8 %.sroa.58.0.copyload to i1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.0.0.i34 = select i1 %i.cb, ptr %i.cc, ptr %i.cd
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1212server_helloNtB2_27CompleteServerHelloHandling19handle_server_hello:bb.a
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [144 x i8], align 8               ; 14 uses
  %i.r = alloca [32 x i8], align 8                ; 13 uses
  %i.s = alloca [8 x i8], align 8                 ; 16 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.w, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.bp, %bb.g, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread, %bb.e, %bb.a
  %.sroa.033.1 = phi i1 [ false, %bb.bp ], [ true, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread ], [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.a ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  %i.aa = icmp eq i64 %i.z, 91288358664752964
  %brmerge.not = and i1 %5, %i.aa
  br i1 %brmerge.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !range !7, !noundef !6 ; 3 uses
  %i.ad = icmp ne i64 %i.ac, -2                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.af = load i64, ptr %i.ae, align 8            ; 11 uses
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ah = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ah, i8 noundef 13, i8 undef, i8 noundef 0)
          to label %bb.cb unwind label %bb.b

_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138.thread: ; preds = %bb.f, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.aj, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  br label %bb.k

_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6 ; 3 uses
  store ptr %i.am, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  br i1 %i.ad, label %bb.j, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !632, !noundef !6
  %.not.i = icmp eq i64 %i.af, %i.ar
  br i1 %.not.i, label %.lr.ph.preheader.i, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138.thread

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.as = icmp ugt i64 %i.af, 32
  br i1 %i.as, label %bb.g, label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader.i
  %min.iters.check = icmp ult i64 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.af, 16
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 48                      ; 4 uses
  %wide.load = load <16 x i8>, ptr %i.ao, align 8, !alias.scope !631
  %wide.load227 = load <16 x i8>, ptr %i.ap, align 8, !alias.scope !632
  %i.au = xor <16 x i8> %wide.load227, %wide.load ; 2 uses
  %i.av = icmp eq i64 %n.vec, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 384
  %wide.load.1 = load <16 x i8>, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load227.1 = load <16 x i8>, ptr %i.ax, align 8
  %i.ay = xor <16 x i8> %wide.load227.1, %wide.load.1
  %i.az = or <16 x i8> %i.ay, %i.au
  %.lcssa272 = select i1 %i.av, <16 x i8> %i.au, <16 x i8> %i.az
  %i.ba = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %.lcssa272) ; 3 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !633

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec228 = and i64 %i.af, 60                   ; 3 uses
  %i.bb = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index229 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi230 = phi <4 x i8> [ %i.bb, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index229
  %wide.load231 = load <4 x i8>, ptr %i.bc, align 4, !alias.scope !631
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index229
  %wide.load232 = load <4 x i8>, ptr %i.bd, align 4, !alias.scope !632
  %i.be = xor <4 x i8> %wide.load232, %wide.load231
  %i.bf = or <4 x i8> %i.be, %vec.phi230          ; 2 uses
  %index.next233 = add nuw i64 %index229, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.bf) ; 2 uses
  %cmp.n234 = icmp eq i64 %i.af, %n.vec228
  br i1 %cmp.n234, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.09.i.ph = phi i8 [ 0, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.sroa.04.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec228, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.01.09.i = phi i8 [ %i.bo, %.lr.ph.i ], [ %.sroa.01.09.i.ph, %.lr.ph.i.preheader ]
  %.sroa.04.08.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bi = add nuw nsw i64 %.sroa.04.08.i, 1       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.08.i
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !631, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.04.08.i
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !632, !noundef !6
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = or i8 %i.bn, %.sroa.01.09.i             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.af
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i, !llvm.loop !583

bb.g:                                             ; preds = %.lr.ph.preheader.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #30
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.g
  unreachable

_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %vector.ph
  %.lcssa225 = phi i8 [ %i.bh, %vec.epilog.middle.block ], [ %i.ba, %vector.ph ], [ %i.bo, %.lr.ph.i ]
  %i.bp = icmp eq i8 %.lcssa225, 0
  br i1 %i.bp, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138.thread

_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bq = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.bq, i8 noundef 13, i8 undef, i8 noundef 57)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.br)
          to label %bb.bs unwind label %bb.cn

bb.j:                                             ; preds = %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.448.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5.0..sroa_idx, i64 144, i1 false)
  store i64 %i.ac, ptr %i.b, align 8
  %.not51 = icmp eq i64 %i.ac, -1
  br i1 %.not51, label %bb.o, label %bb.m

bb.k:                                             ; preds = %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138.thread, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138
  %i.bs = phi ptr [ %i.aj, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138.thread ], [ %i.am, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread138 ]
  store i64 -1, ptr %i.q, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.bt = phi ptr [ %.pre, %bb.n ], [ %i.bs, %bb.k ]
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  %i.bx = load i8, ptr %i.bw, align 8, !range !12, !noundef !6 ; 5 uses
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 356
  %i.ca = load i8, ptr %i.bz, align 4, !range !12, !noundef !6
  %.not6 = icmp eq i8 %i.ca, 0
  %brmerge7 = or i1 %.not6, %i.by
  br i1 %brmerge7, label %bb.p, label %bb.q

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.pre = phi ptr [ %.pre.pre, %._crit_edge ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.o:                                             ; preds = %bb.j
  store i64 -1, ptr %i.q, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client2hs18ClientSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.b)
          to label %._crit_edge unwind label %.thread141

._crit_edge:                                      ; preds = %bb.o
  %.pre.pre = load ptr, ptr %i.s, align 8
  br label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEBH_.exit110: ; preds = %bb.by, %bb.r
  br i1 %.sroa.027.3.lpad-body, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEBH_.exit110.thread204, label %.critedge75

.thread141:                                       ; preds = %bb.o, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEBH_.exit110.thread204

bb.p:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 191
  %i.cd = load i8, ptr %i.cc, align 1, !range !12, !noundef !6
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cf = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775807, ptr %i.o, align 8
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.cf, i8 noundef 6, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.ah, %bb.s
  %.sroa.027.3.lpad-body = phi i1 [ true, %bb.s ], [ false, %bb.ah ]
  %.sroa.025.1.lpad-body = phi i1 [ %.sroa.025.1, %bb.s ], [ %.not54, %bb.ah ]
  %eh.lpad-body77 = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %i.ev, %bb.ah ] ; 2 uses
  %i.cg = load i64, ptr %i.q, align 8, !range !5, !noundef !6
  %i.ch = icmp ne i64 %i.cg, -1
  %or.cond11 = and i1 %.sroa.025.1.lpad-body, %i.ch
  br i1 %or.cond11, label %bb.by, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEBH_.exit110

bb.s:                                             ; preds = %bb.bh, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit94.thread165, %bb.ab, %bb.x, %bb.q
  %.sroa.025.1 = phi i1 [ false, %bb.bh ], [ true, %bb.q ], [ false, %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit94.thread165 ], [ true, %bb.ab ], [ true, %bb.x ]
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cj = load i64, ptr %i.q, align 8, !range !5, !noundef !6
  %.not53 = icmp eq i64 %i.cj, -1
  br i1 %.not53, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEBH_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist19ClientSessionCommonEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEBH_.exit.thread unwind label %.thread141

bb.v:                                             ; preds = %bb.y, %bb.w, %bb.p
  %.sroa.014.0 = phi i8 [ 0, %bb.p ], [ 1, %bb.w ], [ 1, %bb.y ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 193
  %i.cl = load i8, ptr %i.ck, align 1, !range !12, !noundef !6 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.aa, label %bb.z

bb.w:                                             ; preds = %bb.p
  %i.cn = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 6
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp samesign ugt i64 %i.cn, 3
  br i1 %i.cp, label %bb.x, label %bb.v

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @17, ptr %i.n, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 35, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @17, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 35, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @16, ptr %i.ct, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 47 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.y unwind label %bb.s

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.v

bb.z:                                             ; preds = %bb.ac, %bb.aa, %bb.v
  %i.cu = load i64, ptr %i.q, align 8, !range !5, !noundef !6
  %.not54 = icmp eq i64 %i.cu, -1                 ; 2 uses
  br i1 %.not54, label %bb.af, label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.cv = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 6
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp samesign ugt i64 %i.cv, 3
  br i1 %i.cx, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @17, ptr %i.m, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 35, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @17, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 35, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @19, ptr %i.db, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 63 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.ac unwind label %bb.s

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 144, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !636, !noundef !6 ; 11 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !637, !noundef !6
  %.not.i82 = icmp eq i64 %i.df, %i.dh
  br i1 %.not.i82, label %.preheader.i84, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit94.thread165

.preheader.i84:                                   ; preds = %bb.ad
  %.not10.i85 = icmp eq i64 %i.df, 0
  br i1 %.not10.i85, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit94.thread, label %.lr.ph.preheader.i86

.lr.ph.preheader.i86:                             ; preds = %.preheader.i84
  %i.di = icmp ugt i64 %i.df, 32
  br i1 %i.di, label %bb.ae, label %iter.check249

iter.check249:                                    ; preds = %.lr.ph.preheader.i86
  %min.iters.check236 = icmp ult i64 %i.df, 4
  br i1 %min.iters.check236, label %.lr.ph.i88.preheader, label %vector.main.loop.iter.check237

vector.main.loop.iter.check237:                   ; preds = %iter.check249
  %min.iters.check238 = icmp ult i64 %i.df, 16
  br i1 %min.iters.check238, label %vec.epilog.ph253, label %vector.ph239

vector.ph239:                                     ; preds = %vector.main.loop.iter.check237
  %i.dj = and i64 %i.df, 12
  %n.vec240 = and i64 %i.df, 48                   ; 4 uses
  %wide.load244 = load <16 x i8>, ptr %i.dc, align 8, !alias.scope !636
  %wide.load245 = load <16 x i8>, ptr %i.dd, align 8, !alias.scope !637
  %i.dk = xor <16 x i8> %wide.load245, %wide.load244 ; 2 uses
  %i.dl = icmp eq i64 %n.vec240, 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %wide.load244.1 = load <16 x i8>, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load245.1 = load <16 x i8>, ptr %i.dn, align 8
  %i.do = xor <16 x i8> %wide.load245.1, %wide.load244.1
  %i.dp = or <16 x i8> %i.do, %i.dk
  %.lcssa269 = select i1 %i.dl, <16 x i8> %i.dk, <16 x i8> %i.dp
  %i.dq = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %.lcssa269) ; 3 uses
  %cmp.n248 = icmp eq i64 %i.df, %n.vec240
  br i1 %cmp.n248, label %_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionIdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit94, label %vec.epilog.iter.check250

vec.epilog.iter.check250:                         ; preds = %vector.ph239
  %min.epilog.iters.check252 = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph.i88.preheader, label %vec.epilog.ph253, !prof !633

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check237, %vec.epilog.iter.check250
  %vec.epilog.resume.val254 = phi i64 [ %n.vec240, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check237 ]
  %bc.merge.rdx255 = phi i8 [ %i.dq, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check237 ]
  %n.vec256 = and i64 %i.df, 60                   ; 3 uses
  %i.dr = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx255, i64 0
  br label %vec.epilog.vector.body257

vec.epilog.vector.body257:                        ; preds = %vec.epilog.vector.body257, %vec.epilog.ph253
  %index258 = phi i64 [ %vec.epilog.resume.val254, %vec.epilog.ph253 ], [ %index.next262, %vec.epilog.vector.body257 ] ; 3 uses
  %vec.phi259 = phi <4 x i8> [ %i.dr, %vec.epilog.ph253 ], [ %i.dv, %vec.epilog.vector.body257 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index258
  %wide.load260 = load <4 x i8>, ptr %i.ds, align 4, !alias.scope !636
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index258
  %wide.load261 = load <4 x i8>, ptr %i.dt, align 4, !alias.scope !637
  %i.du = xor <4 x i8> %wide.load261, %wide.load260
  %i.dv = or <4 x i8> %i.du, %vec.phi259          ; 2 uses
  %index.next262 = add nuw i64 %index258, 4       ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling19handle_client_hello:bb.a
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %i.w = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.653 = alloca [64 x i8], align 8          ; 6 uses
  %i.x = alloca [168 x i8], align 8               ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [144 x i8], align 8              ; 5 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [144 x i8], align 8              ; 9 uses
  %i.ae = alloca [144 x i8], align 8              ; 10 uses
  %i.af = alloca [144 x i8], align 8              ; 7 uses
  %i.ag = alloca [64 x i8], align 8               ; 9 uses
  %i.ah = alloca [64 x i8], align 8               ; 4 uses
  %i.ai = alloca [64 x i8], align 8               ; 4 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [144 x i8], align 8              ; 28 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [152 x i8], align 8              ; 11 uses
  %i.an = alloca [64 x i8], align 8               ; 4 uses
  %i.ao = alloca [64 x i8], align 8               ; 4 uses
  %i.ap = alloca [64 x i8], align 8               ; 4 uses
  %i.aq = alloca [64 x i8], align 8               ; 4 uses
  %i.ar = alloca [64 x i8], align 8               ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.at = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.au = icmp ult i64 %i.at, 4611686018427387904
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeE6retainNvMBH_BF_18supported_in_tls13EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.d unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.aw = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.aw, i8 noundef 13, i8 undef, i8 noundef 38)
          to label %bb.ff unwind label %.loopexit.split-lp365.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp365.loopexit.split-lp, %bb.ex, %bb.et, %.thread336, %.thread, %bb.x
  %.sroa.086.0 = phi i8 [ 0, %bb.ex ], [ 0, %bb.et ], [ %.sroa.086.2.ph, %bb.x ], [ %.sroa.086.2.ph, %.thread336 ], [ 1, %.thread ], [ %.sroa.086.1.ph.ph, %.loopexit.split-lp365.loopexit.split-lp ], [ 1, %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.092.0 = phi i8 [ 0, %bb.ex ], [ 0, %bb.et ], [ %.sroa.092.2.ph, %bb.x ], [ %.sroa.092.2.ph, %.thread336 ], [ 1, %.thread ], [ %.sroa.092.1.ph.ph, %.loopexit.split-lp365.loopexit.split-lp ], [ 1, %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn175 = phi { ptr, i32 } [ %i.pt, %bb.ex ], [ %i.pp, %bb.et ], [ %.pn173.ph, %bb.x ], [ %.pn173.ph, %.thread336 ], [ %i.gy, %.thread ], [ %lpad.loopexit.split-lp372, %.loopexit.split-lp365.loopexit.split-lp ], [ %lpad.loopexit.split-lp442, %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %8) #25
          to label %.body233 unwind label %bb.be

.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %.lr.ph437, %.noexc
  %lpad.loopexit.split-lp442 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp365.loopexit.split-lp:          ; preds = %bb.er, %bb.dv, %bb.bg, %bb.f, %bb.ep, %bb.eo, %bb.en, %.loopexit369, %bb.w, %bb.p, %bb.n, %bb.m, %bb.e, %bb.c, %bb.b
  %.sroa.086.1.ph.ph = phi i8 [ %.sroa.086.4, %bb.bg ], [ 0, %bb.dv ], [ 1, %bb.eo ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.er ], [ 1, %bb.ep ], [ 1, %bb.en ], [ 1, %.loopexit369 ], [ 1, %bb.m ], [ 1, %bb.w ], [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.f ]
  %.sroa.092.1.ph.ph = phi i8 [ 1, %bb.bg ], [ 0, %bb.dv ], [ 1, %bb.eo ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.er ], [ 1, %bb.ep ], [ 1, %bb.en ], [ 1, %.loopexit369 ], [ 1, %bb.m ], [ 1, %bb.w ], [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.f ]
  %lpad.loopexit.split-lp372 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.val202 = load ptr, ptr %i.ax, align 8, !nonnull !6, !noundef !6 ; 16 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val202, i64 264
  %i.az = load i64, ptr %i.ay, align 8, !range !5, !noundef !6
  %.not146 = icmp eq i64 %i.az, -1
  br i1 %.not146, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = invoke noundef zeroext i1 @_RNvMsQ_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_18ClientHelloPayload38has_keyshare_extension_with_duplicates(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5)
          to label %bb.l unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !710
  store i64 -9223372036854775805, ptr %i.d, align 8, !noalias !710
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.bb, i8 noundef 6, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !710
  %.sroa.08.0.copyload = load i8, ptr %i.g, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4107.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.610.0..sroa_idx, i64 7, i1 false)
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.612.0.copyload = load ptr, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.815.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 %.sroa.08.0.copyload, ptr %0, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.612.0.copyload, ptr %.sroa.5108.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.fb, %bb.fc, %bb.ff, %bb.fe, %bb.fd, %bb.g
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %.body233.thread unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit unwind label %bb.ee

bb.k:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.e
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = invoke noundef zeroext i1 @_RNvMsQ_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_18ClientHelloPayload53has_certificate_compression_extension_with_duplicates(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5)
          to label %bb.o unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bf = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.bf, i8 noundef 13, i8 undef, i8 noundef 35)
          to label %bb.fe unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bg = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.bg, i8 noundef 13, i8 undef, i8 noundef 34)
          to label %bb.fd unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.val202, i64 144
  %i.bi = load i64, ptr %i.bh, align 8, !range !5, !noundef !6
  %.not147 = icmp eq i64 %i.bi, -1
  br i1 %.not147, label %.loopexit370, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val203 = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bk = getelementptr i8, ptr %.val202, i64 152
  %.val204 = load ptr, ptr %i.bk, align 8, !alias.scope !711
  %i.bl = getelementptr i8, ptr %.val202, i64 160
  %.val205 = load i64, ptr %i.bl, align 8, !alias.scope !711
  %i.bm = getelementptr inbounds nuw i8, ptr %.val203, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val203, i64 72
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !6 ; 2 uses
  %.idx438 = shl nuw nsw i64 %i.bp, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx438
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %.loopexit370, label %.lr.ph437

bb.s:                                             ; preds = %.noexc235
  %i.bt = icmp eq ptr %i.bv, %i.bq
  br i1 %i.bt, label %.loopexit370, label %.lr.ph437

.lr.ph437:                                        ; preds = %bb.r, %bb.s
  %i.bu = phi ptr [ %i.bv, %bb.s ], [ %i.bn, %bb.r ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !712
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !712, !nonnull !6, !noundef !6
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !712, !nonnull !6, !align !11, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !6, !noalias !712, !nonnull !6
  %i.cb = invoke { i16, i16 } %i.ca(ptr noundef nonnull %i.bw) #29
          to label %.noexc unwind label %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !673 ; 2 uses

.noexc:                                           ; preds = %.lr.ph437
  %i.cc = extractvalue { i16, i16 } %i.cb, 0
  %i.cd = extractvalue { i16, i16 } %i.cb, 1
  store i16 %i.cc, ptr %i.c, align 2, !noalias !712
  store i16 %i.cd, ptr %i.br, align 2, !noalias !712
  %i.ce = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val204, i64 noundef %.val205)
          to label %.noexc235 unwind label %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc235:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !712
  br i1 %i.ce, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtNtNtBW_6server5tls1312client_helloNtB2B_27CompleteClientHelloHandling19handle_client_hellos_00EBW_.exit.i, label %bb.s

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtNtNtBW_6server5tls1312client_helloNtB2B_27CompleteClientHelloHandling19handle_client_hellos_00EBW_.exit.i: ; preds = %.noexc235
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cg = load ptr, ptr %i.bu, align 8, !nonnull !6, !noundef !6
  %i.ch = load ptr, ptr %i.cf, align 8, !nonnull !6, !align !11, !noundef !6
  br label %.loopexit370

.loopexit370:                                     ; preds = %bb.s, %bb.r, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtNtNtBW_6server5tls1312client_helloNtB2B_27CompleteClientHelloHandling19handle_client_hellos_00EBW_.exit.i, %bb.q
  %.sroa.9.0 = phi ptr [ undef, %bb.q ], [ %i.ch, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtNtNtBW_6server5tls1312client_helloNtB2B_27CompleteClientHelloHandling19handle_client_hellos_00EBW_.exit.i ], [ undef, %bb.r ], [ undef, %bb.s ] ; 2 uses
  %.sroa.020.0 = phi ptr [ null, %bb.q ], [ %i.cg, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtNtNtBW_6server5tls1312client_helloNtB2B_27CompleteClientHelloHandling19handle_client_hellos_00EBW_.exit.i ], [ null, %bb.r ], [ null, %bb.s ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val202, i64 551
  %i.cj = load i8, ptr %i.ci, align 1, !range !12, !noundef !6
  %i.ck = trunc nuw i8 %i.cj to i1                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 8, !range !12, !noundef !6
  %.not = icmp ne i8 %i.cm, 0
  %brmerge.not = and i1 %.not, %i.ck
  br i1 %brmerge.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.loopexit370
  %i.cn = getelementptr inbounds nuw i8, ptr %.val202, i64 272
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val202, i64 280
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cq, 5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %.loopexit369, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !6, !noalias !713, !nonnull !6
  br label %bb.u

bb.u:                                             ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i, %.lr.ph.i
  %i.cv = phi ptr [ %i.co, %.lr.ph.i ], [ %i.cw, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.cx = invoke { i16, i16 } %i.cu(ptr noundef nonnull %6) #29
          to label %.noexc236 unwind label %.loopexit.split-lp365.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !681 ; 2 uses

.noexc236:                                        ; preds = %bb.u
  %i.cy = extractvalue { i16, i16 } %i.cx, 0      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.da = load i16, ptr %i.cz, align 8, !range !25, !alias.scope !714, !noalias !715, !noundef !6
  %i.db = icmp eq i16 %i.da, %i.cy
  br i1 %i.db, label %bb.v, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i

bb.v:                                             ; preds = %.noexc236
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 26
  %i.dd = extractvalue { i16, i16 } %i.cx, 1
  %i.de = icmp ne i16 %i.cy, 15
  %i.df = load i16, ptr %i.dc, align 2, !alias.scope !714, !noalias !715
  %i.dg = icmp eq i16 %i.df, %i.dd
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %bb.y, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i: ; preds = %bb.v, %.noexc236
  %i.dh = icmp eq ptr %i.cw, %i.cr
  br i1 %i.dh, label %.loopexit369, label %bb.u

bb.w:                                             ; preds = %.loopexit370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.di = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.di, i8 noundef 13, i8 undef, i8 noundef 9)
          to label %bb.fc unwind label %.loopexit.split-lp365.loopexit.split-lp

.loopexit369:                                     ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i, %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dk = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %4)
          to label %bb.em unwind label %.loopexit.split-lp365.loopexit.split-lp ; 0 uses

.thread336:                                       ; preds = %.loopexit, %.loopexit.split-lp, %bb.ea, %bb.dx, %bb.dq, %bb.dm, %bb.ef, %bb.cj, %bb.au, %bb.ek, %bb.by, %bb.bd
  %.sroa.086.2.ph = phi i8 [ 1, %bb.au ], [ 1, %bb.bd ], [ 1, %bb.by ], [ 0, %bb.ea ], [ %.sroa.086.5.ph, %bb.ek ], [ 0, %bb.cj ], [ 0, %bb.ef ], [ 0, %bb.dm ], [ 0, %bb.dq ], [ 0, %bb.dx ], [ 1, %.loopexit ], [ %.sroa.086.3.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.092.2.ph = phi i8 [ 1, %bb.au ], [ 1, %bb.bd ], [ 1, %bb.by ], [ 0, %bb.ea ], [ 1, %bb.ek ], [ 1, %bb.cj ], [ 1, %bb.ef ], [ 0, %bb.dm ], [ 0, %bb.dq ], [ 0, %bb.dx ], [ 1, %.loopexit ], [ 1, %.loopexit.split-lp ] ; 2 uses
  %.pn173.ph = phi { ptr, i32 } [ %i.fo, %bb.au ], [ %i.gd, %bb.bd ], [ %i.hq, %bb.by ], [ %i.oa, %bb.ea ], [ %.pn171.ph, %bb.ek ], [ %lpad.thr_comm.split-lp, %bb.cj ], [ %i.od, %bb.ef ], [ %i.mr, %bb.dm ], [ %i.nd, %bb.dq ], [ %i.nq, %bb.dx ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.pr = load i64, ptr %i.ak, align 8, !alias.scope !716
  %i.dl = icmp eq i64 %.pr, -1
  br i1 %i.dl, label %.body, label %bb.x

bb.x:                                             ; preds = %.thread336
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %.body unwind label %bb.be

.loopexit:                                        ; preds = %bb.ao, %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread336

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.bb, %bb.bm, %bb.bv, %bb.bw, %bb.bz, %bb.eh, %bb.ca
  %.sroa.086.3.ph = phi i8 [ 1, %bb.bb ], [ 1, %bb.ae ], [ 1, %bb.bv ], [ 1, %bb.bz ], [ 1, %bb.bw ], [ 1, %bb.bm ], [ 1, %bb.ca ], [ 0, %bb.eh ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %bb.ab ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread336

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.cv, ptr %i.al, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %6, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %7, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 -1, ptr %i.ak, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.val202, i64 168
  %i.dn = load i64, ptr %i.dm, align 8, !range !5, !noundef !6
  %.not149 = icmp eq i64 %i.dn, -1
  br i1 %.not149, label %.thread310, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %.val202, i64 546
  %i.dp = load i8, ptr %i.do, align 2, !range !19, !noundef !6
  %.not150 = icmp eq i8 %i.dp, 2
  br i1 %.not150, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %.val202, i64 208 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !6 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 384307168202282326
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.du = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.du, i8 noundef 25, i8 undef, i8 noundef 32)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %.val202, i64 184 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !6 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 288230376151711744
  call void @llvm.assume(i1 %i.dx)
  %.not151 = icmp eq i64 %i.dr, %i.dw
  br i1 %.not151, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.dy = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dy, i8 noundef 16, i8 undef, i8 noundef 30)
          to label %bb.bi unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !6, !noundef !6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  invoke void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig12current_time(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.eb)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ec = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ec, i8 noundef 13, i8 undef, i8 noundef 40)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  %i.ed = load i8, ptr %i.ag, align 8, !range !23, !noundef !6 ; 2 uses
  %.not152 = icmp eq i8 %i.ed, -1
  br i1 %.not152, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4119.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4115.0..sroa_idx, i64 7, i1 false)
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5116.0.copyload = load i64, ptr %.sroa.5116.0..sroa_idx, align 8
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6121.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6117.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 %i.ed, ptr %0, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5116.0.copyload, ptr %.sroa.5120.0..sroa_idx, align 8
  br label %bb.bf

bb.ai:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val202, i64 176
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ei = load i64, ptr %i.dv, align 8, !noundef !6 ; 2 uses
  %.idx387 = shl nuw nsw i64 %i.ei, 5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx387
  %i.ek = icmp eq i64 %i.ei, 0
  br i1 %i.ek, label %.thread310, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %.sroa.4295.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %.sroa.6297.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %.sroa.7298.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %.sroa.9300.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 142
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %.sroa.7291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 140
  %.sroa.8292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 141
  %.sroa.9293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 142
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.as
  %.sroa.0265.0386 = phi ptr [ %i.eh, %.lr.ph ], [ %i.en, %bb.as ] ; 4 uses
  %.sroa.8267.0385 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %bb.as ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 32 ; 2 uses
  %i.eo = add nuw nsw i64 %.sroa.8267.0385, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !6, !noundef !6
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noundef !6
  %.val206 = load ptr, ptr %i.dz, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling31attempt_tls13_ticket_decryption(ptr noalias nofree noundef align 8 captures(address) dereferenceable(144) %i.f, ptr nonnull %.val206, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.es)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.et = load i64, ptr %i.f, align 8, !range !5, !noundef !6
  %.not154 = icmp eq i64 %i.et, -1
  br i1 %.not154, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = load <2 x i64>, ptr %.sroa.4295.0..sroa_idx.a, align 8
  %.sroa.4295.0.copyload = load i64, ptr %.sroa.4295.0..sroa_idx.a, align 8
  %.sroa.6297.0.copyload = load i32, ptr %.sroa.6297.0..sroa_idx.a, align 8 ; 2 uses
  %.sroa.7298.0.copyload = load i8, ptr %.sroa.7298.0..sroa_idx.a, align 4
  %.sroa.9300.0.copyload = load i16, ptr %.sroa.9300.0..sroa_idx.a, align 2
  %i.ev = getelementptr i8, ptr %.sroa.0265.0386, i64 24
  %.val207 = load i32, ptr %i.ev, align 8, !noundef !6
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %i.ef, i64 %.sroa.4295.0.copyload)
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ex, i32 1000) ; 2 uses
  %i.ez = extractvalue { i32, i1 } %i.ey, 0
  %i.fa = extractvalue { i32, i1 } %i.ey, 1
  br i1 %i.fa, label %bb.am, label %bb.ap, !prof !14

bb.am:                                            ; preds = %bb.al
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  store i64 -1, ptr %i.ae, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.fb = load ptr, ptr %i.el, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fc = load ptr, ptr %i.em, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 112
  invoke fastcc void @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueE6filterNCNvMNtNtNtBO_6server5tls1312client_helloNtB1T_27CompleteClientHelloHandling19handle_client_hellos2_0EBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %i.af, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %bb.aq unwind label %.loopexit

bb.ap:                                            ; preds = %bb.am, %bb.al
  %.sroa.01.0.i = phi i32 [ -1, %bb.am ], [ %i.ez, %bb.al ] ; 3 uses
  %i.fe = sub i32 %.val207, %.sroa.6297.0.copyload ; 3 uses
  %i.ff = icmp ult i32 %.sroa.01.0.i, %i.fe
  %i.fg = sub nuw i32 %i.fe, %.sroa.01.0.i
  %i.fh = sub nuw i32 %.sroa.01.0.i, %i.fe
  %.sroa.0.0.i239 = select i1 %i.ff, i32 %i.fg, i32 %i.fh
  %i.fi = icmp ult i32 %.sroa.0.0.i239, 60001
  %i.fj = zext i1 %i.fi to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  store <2 x i64> %i.eu, ptr %.sroa.4288.0..sroa_idx, align 8
  store i32 %.sroa.6297.0.copyload, ptr %.sroa.6290.0..sroa_idx, align 8
  store i8 %.sroa.7298.0.copyload, ptr %.sroa.7291.0..sroa_idx, align 4
  store i8 %i.fj, ptr %.sroa.8292.0..sroa_idx, align 1
  store i16 %.sroa.9300.0.copyload, ptr %.sroa.9293.0..sroa_idx, align 2
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.fk = load i64, ptr %i.af, align 8, !range !5, !noundef !6
  %.not155 = icmp eq i64 %i.fk, -1
  br i1 %.not155, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, ptr noundef nonnull align 8 dereferenceable(144) %i.af, i64 144, i1 false)
  %i.fl = load i64, ptr %i.dq, align 8, !noundef !6 ; 2 uses
  %i.fm = icmp ult i64 %.sroa.8267.0385, %i.fl
  br i1 %i.fm, label %bb.aw, label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fn = icmp eq ptr %i.en, %i.ej
  br i1 %i.fn, label %.thread310, label %bb.aj

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8267.0385, i64 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31
          to label %bb.av unwind label %bb.bd

bb.au:                                            ; preds = %bb.ba
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 144, i1 false)
  br label %.thread336

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.ar
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !6
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !6, !noundef !6
  %i.ft = load ptr, ptr %i.el, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fu = getelementptr inbounds nuw i8, ptr %.val202, i64 200
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %.sroa.8267.0385 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %.val209 = load ptr, ptr %i.fx, align 8, !nonnull !6, !noundef !6
  %i.fy = getelementptr i8, ptr %i.fw, i64 16
  %.val210 = load i64, ptr %i.fy, align 8, !noundef !6
  %i.fz = invoke fastcc noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling12check_binder(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ft, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.fq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val209, i64 noundef %.val210)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ga = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ga, i8 noundef 17, i8 undef, i8 noundef 23)
          to label %bb.bb unwind label %bb.bd

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, ptr noundef nonnull align 8 dereferenceable(144) %i.ad, i64 144, i1 false)
  %i.gb = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !717, !noundef !6
  %i.gc = icmp eq i64 %i.gb, -1
  br i1 %i.gc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241 unwind label %bb.au

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ad)
          to label %bb.bc unwind label %.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bf

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241: ; preds = %bb.az, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.thread310

bb.bd:                                            ; preds = %bb.ay, %bb.aw, %bb.at
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ad) #25
          to label %.thread336 unwind label %bb.be

bb.be:                                            ; preds = %bb.fo, %bb.fm, %bb.fl, %bb.x, %.noexc258, %bb.fg, %bb.ek, %bb.ej, %bb.ef, %bb.bd, %.body
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bf:                                            ; preds = %bb.ah, %bb.bc, %bb.ei, %bb.bj, %bb.bi, %bb.bh
  %.sroa.086.4 = phi i8 [ 1, %bb.bj ], [ 1, %bb.bi ], [ 1, %bb.bh ], [ %.sroa.086.9, %bb.ei ], [ 1, %bb.bc ], [ 1, %bb.ah ] ; 4 uses
  %i.gf = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !718, !noundef !6
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243 unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.bh:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bf

bb.bi:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bf

bb.bj:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bf

.thread310:                                       ; preds = %bb.as, %bb.ai, %bb.y, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241
  %.sroa.442.0 = phi i64 [ undef, %bb.y ], [ %.sroa.8267.0385, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241 ], [ undef, %bb.ai ], [ undef, %bb.as ]
  %.sroa.041.0 = phi i64 [ 0, %bb.y ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241 ], [ 0, %bb.ai ], [ 0, %bb.as ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val202, i64 546
  %i.gi = load i8, ptr %i.gh, align 2, !range !19, !noundef !6
  %i.gj = icmp eq i8 %i.gi, 1
  br i1 %i.gj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread310
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 240
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !6 ; 2 uses
  %.not158 = icmp eq i64 %i.gn, 0
  br i1 %.not158, label %bb.br, label %bb.bs

bb.bl:                                            ; preds = %.thread310
  %i.go = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.gp = icmp ult i64 %i.go, 6
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp samesign ugt i64 %i.go, 3
  br i1 %i.gq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @32, ptr %i.aa, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 35, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr @32, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 35, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr @31, ptr %i.gu, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bl, %bb.bp
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 0, ptr %i.gv, align 8
  %i.gw = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !719, !noundef !6
  %i.gx = icmp eq i64 %i.gw, -1
  br i1 %i.gx, label %.thread321, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %.thread321 unwind label %.thread

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bn

.thread:                                          ; preds = %bb.bo
  %i.gy = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.ak, align 8
  br label %.body

.thread321:                                       ; preds = %bb.bo, %bb.bn
  store i64 -1, ptr %i.ak, align 8
  br label %bb.bw

bb.bq:                                            ; preds = %bb.br, %bb.bu, %bb.bt
  %.sroa.049.0 = phi i64 [ %i.hb, %bb.br ], [ %i.hi, %bb.bu ], [ %..i, %bb.bt ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %.sroa.049.0, ptr %i.gz, align 8
  %.pr320 = load i64, ptr %i.ak, align 8
  %.not160 = icmp eq i64 %.pr320, -1
  br i1 %.not160, label %bb.bw, label %bb.bv

bb.br:                                            ; preds = %bb.bk
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 232
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !6
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bk
  %i.hc = getelementptr inbounds nuw i8, ptr %.val202, i64 552
  %i.hd = load i8, ptr %i.hc, align 8, !range !12, !noundef !6
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.hf = load i64, ptr %i.ak, align 8, !range !5, !noundef !6
  %.not159 = icmp eq i64 %i.hf, -1
  %.sroa.050.0.in.v = select i1 %.not159, i64 553, i64 554
  %.sroa.050.0.in = getelementptr inbounds nuw i8, ptr %.val202, i64 %.sroa.050.0.in.v
  %.sroa.050.0 = load i8, ptr %.sroa.050.0.in, align 1, !noundef !6
  %i.hg = zext i8 %.sroa.050.0 to i64
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.gn, i64 %i.hg)
  br label %bb.bq

bb.bu:                                            ; preds = %bb.bs
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 232
  %i.hi = load i64, ptr %i.hh, align 8, !noundef !6
  br label %bb.bq

bb.bv:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hj)
          to label %bb.bx unwind label %.loopexit.split-lp

thread-pre-split325:                              ; preds = %bb.bz
  %.pr326 = load i64, ptr %i.ak, align 8
  %i.hk = icmp eq i64 %.pr326, -1
  br label %bb.bw

bb.bw:                                            ; preds = %thread-pre-split325, %.thread321, %bb.bq
  %.not161 = phi i1 [ %i.hk, %thread-pre-split325 ], [ true, %.thread321 ], [ true, %bb.bq ] ; 2 uses
  %.sroa.041.2324 = phi i64 [ %.sroa.041.0, %thread-pre-split325 ], [ 0, %.thread321 ], [ %.sroa.041.0, %bb.bq ]
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.hm = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %4)
          to label %bb.ca unwind label %.loopexit.split-lp ; 0 uses

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !6, !align !11, !noundef !6
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hp)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %i.hn, align 8, !nonnull !6, !align !11, !noundef !6
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  br label %.thread336

bb.bz:                                            ; preds = %bb.bx
  %i.ht = load ptr, ptr %i.hn, align 8, !nonnull !6, !align !11, !noundef !6
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.hv = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 752
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  invoke fastcc void @_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainENtNtB7_5clone5Clone10clone_fromBQ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hx)
          to label %thread-pre-split325 unwind label %.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !nonnull !6, !align !11, !noundef !6
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ic = load i64, ptr %i.ak, align 8, !range !5, !noundef !6
  %.not162 = icmp eq i64 %i.ic, -1                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val212 = load ptr, ptr %i.id, align 8, !nonnull !6
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val213 = load i64, ptr %i.ie, align 8
  %.sroa.558.0 = select i1 %.not162, i64 undef, i64 %.val213
  %.sroa.057.0 = select i1 %.not162, ptr null, ptr %.val212
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 10 uses
  %i.ig = load ptr, ptr %i.if, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.val214 = load ptr, ptr %2, align 8
  %i.ih = getelementptr i8, ptr %i.ig, i64 176
  %.val215 = load ptr, ptr %i.ih, align 8
  %i.ii = getelementptr i8, ptr %i.ig, i64 184
  %.val216 = load ptr, ptr %i.ii, align 8
  invoke fastcc void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_hello17emit_server_hello(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.w, ptr noalias nofree noundef align 8 dereferenceable(56) %i.hl, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %i.hy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ia, ptr %.val214, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ib, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.al, i64 noundef %.sroa.041.2324, i64 %.sroa.442.0, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.057.0, i64 %.sroa.558.0, ptr %.val215, ptr %.val216)
          to label %bb.cb unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  %i.ij = load ptr, ptr %i.w, align 8, !noundef !6 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null
  %i.il = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.653, ptr noundef nonnull align 8 dereferenceable(64) %i.il, i64 64, i1 false)
  br i1 %i.ik, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling19handle_client_hello:bb.a
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.mc = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState22start_outgoing_traffic(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.mc, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.md)
          to label %bb.dk unwind label %bb.ef

.critedge:                                        ; preds = %bb.dh
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 96
  %i.mf = load i64, ptr %i.me, align 8, !noundef !6 ; 2 uses
  %i.mg = icmp ult i64 %i.mf, 576460752303423488
  call void @llvm.assume(i1 %i.mg)
  %i.mh = icmp eq i64 %i.mf, 0
  br i1 %i.mh, label %bb.dz, label %bb.dw

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.mi = icmp eq i8 %i.jl, 2
  br i1 %i.mi, label %bb.do, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dk
  %.pre = load ptr, ptr %i.if, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge, %bb.do
  %i.mj = phi ptr [ %.pre, %._crit_edge ], [ %.pre397, %bb.do ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.hl, i64 56, i1 false)
  %i.mk = load ptr, ptr %i.hz, align 8, !nonnull !6, !align !11, !noundef !6
  %i.ml = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ml, ptr noundef nonnull align 8 dereferenceable(312) %i.n, i64 312, i1 false)
  %i.mm = load i64, ptr %i.jf, align 8, !noundef !6
  %i.mn = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.mj, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.mk, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  store i64 %i.mm, ptr %i.mp, align 8
  %i.mq = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 392)
          to label %bb.dt unwind label %bb.dm     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.h) #25
          to label %.thread336 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.do:                                            ; preds = %bb.dk
  %i.mt = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  %i.mu = getelementptr i8, ptr %i.mt, i64 829
  %.val230 = load i8, ptr %i.mu, align 1, !range !12, !noundef !6
  %i.mv = trunc nuw i8 %.val230 to i1
  %.pre397 = load ptr, ptr %i.if, align 8         ; 2 uses
  br i1 %i.mv, label %bb.dl, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.hl, i64 56, i1 false)
  %i.mw = load ptr, ptr %i.hz, align 8, !nonnull !6, !align !11, !noundef !6
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.mx, ptr noundef nonnull align 8 dereferenceable(312) %i.n, i64 312, i1 false)
  %i.my = load i64, ptr %i.jf, align 8, !noundef !6
  %i.mz = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %.pre397, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.mw, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  store i64 %i.my, ptr %i.nb, align 8
  %i.nc = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 392)
          to label %bb.ds unwind label %bb.dq     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.i) #25
          to label %.thread336 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.nc, ptr noundef nonnull align 8 dereferenceable(392) %i.i, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.du

bb.dt:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.mq, ptr noundef nonnull align 8 dereferenceable(392) %i.h, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.du

bb.du:                                            ; preds = %bb.ec, %bb.ed, %bb.ds, %bb.dt
  %.sink419 = phi ptr [ %i.np, %bb.ec ], [ %i.nz, %bb.ed ], [ %i.nc, %bb.ds ], [ %i.mq, %bb.dt ]
  %.sink417 = phi ptr [ @37, %bb.ec ], [ @38, %bb.ed ], [ @35, %bb.ds ], [ @36, %bb.dt ]
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink419, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink417, ptr %i.ng, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.nh = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !724, !noundef !6
  %i.ni = icmp eq i64 %i.nh, -1
  br i1 %i.ni, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit249, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit249 unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.dw:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.hl, i64 56, i1 false)
  %i.nj = load ptr, ptr %i.hz, align 8, !nonnull !6, !align !11, !noundef !6
  %i.nk = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.nk, ptr noundef nonnull align 8 dereferenceable(312) %i.n, i64 312, i1 false)
  %i.nl = load i64, ptr %i.jf, align 8, !noundef !6
  %i.nm = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %i.ly, ptr %i.nm, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.nj, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  store i64 %i.nl, ptr %i.no, align 8
  %i.np = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 392)
          to label %bb.ec unwind label %bb.dx     ; 2 uses

bb.dx:                                            ; preds = %bb.dw
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1340ExpectCertificateOrCompressedCertificateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.j) #25
          to label %.thread336 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.dz:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.hl, i64 56, i1 false)
  %i.ns = load ptr, ptr %i.hz, align 8, !nonnull !6, !align !11, !noundef !6
  %i.nt = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.nt, ptr noundef nonnull align 8 dereferenceable(312) %i.n, i64 312, i1 false)
  %i.nu = load i64, ptr %i.jf, align 8, !noundef !6
  %i.nv = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.ly, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.ns, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  store i64 %i.nu, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.k, i64 392
  store i8 0, ptr %i.ny, align 8
  %i.nz = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 400)
          to label %bb.ed unwind label %bb.ea     ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectCertificateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.k) #25
          to label %.thread336 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ec:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.np, ptr noundef nonnull align 8 dereferenceable(392) %i.j, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.du

bb.ed:                                            ; preds = %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.nz, ptr noundef nonnull align 8 dereferenceable(400) %i.k, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.du

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit249: ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.invoke

.body233:                                         ; preds = %bb.ee, %.body
  %.sroa.086.7 = phi i8 [ %.sroa.086.0, %.body ], [ %.sroa.086.8, %bb.ee ] ; 2 uses
  %.sroa.092.7 = phi i8 [ %.sroa.092.0, %.body ], [ %.sroa.092.8, %bb.ee ]
  %.pn177 = phi { ptr, i32 } [ %.pn175, %.body ], [ %i.oc, %bb.ee ] ; 2 uses
  %cond = icmp eq i8 %.sroa.092.7, 0
  br i1 %cond, label %bb.fn, label %.body233.thread

bb.ee:                                            ; preds = %.invoke, %11, %bb.j
  %.sroa.086.8 = phi i8 [ 1, %bb.j ], [ %.sroa.086.4, %11 ], [ 0, %.invoke ]
  %.sroa.092.8 = phi i8 [ 1, %bb.j ], [ 1, %11 ], [ 0, %.invoke ]
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body233

.thread354:                                       ; preds = %.invoke, %bb.fk, %bb.fh
  ret void

bb.ef:                                            ; preds = %bb.dj
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.n) #25
          to label %.thread336 unwind label %bb.be

bb.eg:                                            ; preds = %bb.cq, %bb.cw, %bb.df, %bb.cl
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u)
          to label %bb.eh unwind label %bb.cg

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule20KeyScheduleHandshakeEBH_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.x)
          to label %bb.ei unwind label %.loopexit.split-lp

bb.ei:                                            ; preds = %bb.eh, %bb.cc
  %.sroa.086.9 = phi i8 [ 1, %bb.cc ], [ 0, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bf

bb.ej:                                            ; preds = %.invoke427, %.invoke421, %bb.cz, %bb.ci, %bb.db, %bb.ct, %bb.cy, %bb.cu, %bb.cn, %bb.cs
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #25
          to label %bb.ek unwind label %bb.be

bb.ek:                                            ; preds = %bb.cg, %bb.ej
  %.sroa.086.5.ph = phi i8 [ 0, %bb.ej ], [ %.sroa.086.6, %bb.cg ]
  %.pn171.ph = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ej ], [ %i.iv, %bb.cg ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule20KeyScheduleHandshakeEBH_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.x) #25
          to label %.thread336 unwind label %bb.be

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %11 unwind label %9

9:                                                ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %.body233.thread unwind label %12

11:                                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit unwind label %bb.ee

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit: ; preds = %11, %bb.j
  %.sroa.086.11 = phi i8 [ 1, %bb.j ], [ %.sroa.086.4, %11 ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !727, !nonnull !6, !noundef !6
  %i.og = atomicrmw add ptr %i.of, i64 -1 release, align 8, !noalias !727
  %i.oh = icmp eq i64 %i.og, 1
  br i1 %i.oh, label %bb.el, label %.thread349

bb.el:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oe) #27
          to label %.thread349 unwind label %bb.fg

bb.em:                                            ; preds = %.loopexit369
  %i.oi = load i8, ptr %i.cl, align 8, !range !12, !noundef !6
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ol = load ptr, ptr %i.ok, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.om = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  %i.on = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.oo = load ptr, ptr %i.on, align 8, !invariant.load !6, !nonnull !6
  %i.op = invoke { i16, i16 } %i.oo(ptr noundef nonnull %6)
          to label %bb.ep unwind label %.loopexit.split-lp365.loopexit.split-lp ; 2 uses

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.oq = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.oq, i8 noundef 13, i8 undef, i8 noundef 41)
          to label %bb.fb unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.ep:                                            ; preds = %bb.en
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.os = extractvalue { i16, i16 } %i.op, 0
  %i.ot = extractvalue { i16, i16 } %i.op, 1
  %i.ou = getelementptr i8, ptr %i.ol, i64 72
  %.val231 = load i16, ptr %i.ou, align 8, !range !24, !noundef !6
  %i.ov = getelementptr i8, ptr %i.ol, i64 74
  %.val232 = load i16, ptr %i.ov, align 2
  invoke fastcc void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_hello24emit_hello_retry_request(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dj, i16 %.val231, i16 %.val232, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.or, ptr noalias nofree noundef align 8 dereferenceable(840) %i.om, i16 noundef %i.os, i16 %i.ot)
          to label %bb.eq unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.eq:                                            ; preds = %bb.ep
  %i.ow = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 829
  %i.oy = load i8, ptr %i.ox, align 1, !range !12, !alias.scope !728, !noundef !6
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !728
  %i.pa = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 4, ptr %i.pa, align 8, !noalias !728
  store i64 -9223372036854775805, ptr %i.a, align 8, !noalias !728
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ow, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a, i1 noundef zeroext false)
          to label %.noexc251 unwind label %.loopexit.split-lp365.loopexit.split-lp

.noexc251:                                        ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !728
  br label %bb.es

bb.es:                                            ; preds = %.noexc251, %bb.eq
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pc = load ptr, ptr %i.pb, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 248
  %i.pe = load i32, ptr %i.pd, align 8, !noundef !6 ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  %narrow.i253 = select i1 %i.pf, i32 16384, i32 %i.pe
  %.sroa.0.0.i254 = zext i32 %narrow.i253 to i64  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pg, ptr noundef nonnull align 8 dereferenceable(56) %i.dj, i64 56, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ph, i8 0, i64 40, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.pj = load i64, ptr %i.pi, align 8, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %i.pc, ptr %i.pk, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  store i8 0, ptr %i.pl, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.am, i64 145
  store i8 1, ptr %i.pm, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i64 %i.pj, ptr %i.pn, align 8
  %i.po = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 152)
          to label %bb.ev unwind label %bb.et     ; 4 uses

bb.et:                                            ; preds = %bb.es
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server2hs17ExpectClientHelloEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.am) #25
          to label %.body unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ev:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.po, ptr noundef nonnull align 8 dereferenceable(152) %i.am, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br i1 %i.ck, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.po, ptr %i.e, align 8, !noalias !729
  %i.pr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.0.0.i254, ptr %i.pr, align 8, !noalias !729
  %i.ps = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 16)
          to label %bb.fa unwind label %bb.ex     ; 3 uses

bb.ex:                                            ; preds = %bb.ew
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #25
          to label %.body unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ez:                                            ; preds = %bb.ev, %bb.fa
  %.sink424 = phi ptr [ %i.ps, %bb.fa ], [ %i.po, %bb.ev ]
  %.sink422 = phi ptr [ @40, %bb.fa ], [ @39, %bb.ev ]
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink424, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink422, ptr %i.pw, align 8
  store i8 -1, ptr %0, align 8
  br label %.invoke

.invoke:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit249, %bb.ez
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %8)
          to label %.thread354 unwind label %bb.ee

bb.fa:                                            ; preds = %bb.ew
  store ptr %i.po, ptr %i.ps, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i64 %.sroa.0.0.i254, ptr %i.px, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ez

bb.fb:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.h

bb.fc:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.h

bb.fd:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.h

bb.fe:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.h

bb.ff:                                            ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.h

bb.fg:                                            ; preds = %bb.el
  %i.py = landingpad { ptr, i32 }
          cleanup
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.pz) #25
          to label %bb.fi unwind label %bb.be

bb.fh:                                            ; preds = %.thread349
  %i.qa = trunc nuw i8 %.sroa.086.11 to i1
  br i1 %i.qa, label %bb.fk, label %.thread354

.thread349:                                       ; preds = %bb.el, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.qb)
          to label %bb.fh unwind label %bb.fj

bb.fi:                                            ; preds = %bb.fg, %bb.fj
  %.pn179 = phi { ptr, i32 } [ %i.qd, %bb.fj ], [ %i.py, %bb.fg ] ; 2 uses
  %i.qc = trunc nuw i8 %.sroa.086.11 to i1
  br i1 %i.qc, label %bb.fl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake21ServerExtensionsInputEBH_.exit

bb.fj:                                            ; preds = %.thread349
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fk:                                            ; preds = %bb.fh
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19TransportParametersEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %.thread354

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake21ServerExtensionsInputEBH_.exit: ; preds = %bb.fo, %bb.fl, %bb.fn, %bb.fi
  %.pn179.pn = phi { ptr, i32 } [ %.pn177363, %bb.fn ], [ %.pn179, %bb.fi ], [ %.pn179, %bb.fl ], [ %.pn177363, %bb.fo ]
  resume { ptr, i32 } %.pn179.pn

bb.fl:                                            ; preds = %bb.fi
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19TransportParametersEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake21ServerExtensionsInputEBH_.exit unwind label %bb.be

.body233.thread:                                  ; preds = %9, %bb.i, %.body233
  %.pn177369 = phi { ptr, i32 } [ %.pn177, %.body233 ], [ %10, %9 ], [ %i.bc, %bb.i ]
  %.sroa.086.7367 = phi i8 [ %.sroa.086.7, %.body233 ], [ %.sroa.086.4, %9 ], [ 1, %bb.i ]
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !732, !nonnull !6, !noundef !6
  %i.qg = atomicrmw add ptr %i.qf, i64 -1 release, align 8, !noalias !732
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.fm, label %.noexc258

bb.fm:                                            ; preds = %.body233.thread
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qe) #27
          to label %.noexc258 unwind label %bb.be

bb.fn:                                            ; preds = %.body233, %.noexc258
  %.pn177363 = phi { ptr, i32 } [ %.pn177, %.body233 ], [ %.pn177369, %.noexc258 ] ; 2 uses
  %.sroa.086.7361 = phi i8 [ %.sroa.086.7, %.body233 ], [ %.sroa.086.7367, %.noexc258 ]
  %i.qi = trunc nuw i8 %.sroa.086.7361 to i1
  br i1 %i.qi, label %bb.fo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake21ServerExtensionsInputEBH_.exit

.noexc258:                                        ; preds = %bb.fm, %.body233.thread
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.qj) #25
          to label %bb.fn unwind label %bb.be

bb.fo:                                            ; preds = %bb.fn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19TransportParametersEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake21ServerExtensionsInputEBH_.exit unwind label %bb.be
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling31attempt_tls13_ticket_decryption(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  %i.d = alloca [144 x i8], align 8               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [144 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.88.val, i64 128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %.88.val, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !16, !invariant.load !6
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !nonnull !6
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull %i.t) #29
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.88.val, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %.88.val, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !6
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !6, !nonnull !6
  call void %i.ai(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #29
  %i.aj = load i64, ptr %i.i, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.al = load ptr, ptr %i.m, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !16, !invariant.load !6
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = and i64 %i.ao, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !6, !nonnull !6
  call void %i.at(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #29
  %i.au = load i64, ptr %i.j, align 8, !range !5, !noundef !6
  %.not1 = icmp eq i64 %i.au, -1
  br i1 %.not1, label %bb.y, label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !747
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !746, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !746, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !748
  store ptr %i.aw, ptr %i.e, align 8, !noalias !748
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8, !noalias !748
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !noalias !748
  invoke void @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls4msgs7persistNtB5_18ServerSessionValueNtNtB7_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc.i unwind label %bb.g, !noalias !747

.noexc.i:                                         ; preds = %bb.d
  %i.bb = load i64, ptr %i.f, align 8, !range !5, !noalias !747, !noundef !6
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueNtNtB13_5error14InvalidMessageEEB13_.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false), !noalias !749
  %i.bd = load i64, ptr %i.ba, align 8, !noalias !748, !noundef !6
  %i.be = load i64, ptr %i.az, align 8, !noalias !748, !noundef !6
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.d)
          to label %.thread4.i unwind label %bb.g, !noalias !747

.thread4.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !748
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueNtNtB13_5error14InvalidMessageEEB13_.exit.i

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %common.resume unwind label %bb.l, !noalias !745

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false), !noalias !746
  br label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueNtNtB13_5error14InvalidMessageEEB13_.exit.i: ; preds = %.thread4.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !748
  store i64 -1, ptr %0, align 8, !alias.scope !745
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueNtNtB13_5error14InvalidMessageEEB13_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !747
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling31attempt_tls13_ticket_decryptions_0Ba_.exit unwind label %bb.j, !noalias !745

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.k, !noalias !745

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !745
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.g, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bh, %bb.j ], [ %i.bw, %bb.v ], [ %i.bv, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !745
  unreachable

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling31attempt_tls13_ticket_decryptions_0Ba_.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling31attempt_tls13_ticket_decryptions_0Ba_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.z, %bb.n
  ret void

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !752
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !751, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !751, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !753
  store ptr %i.bl, ptr %i.b, align 8, !noalias !753
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bo, align 8, !noalias !753
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bp, align 8, !noalias !753
  invoke void @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls4msgs7persistNtB5_18ServerSessionValueNtNtB7_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc.i4 unwind label %bb.s, !noalias !752

.noexc.i4:                                        ; preds = %bb.p
  %i.bq = load i64, ptr %i.c, align 8, !range !5, !noalias !752, !noundef !6
  %i.br = icmp eq i64 %i.bq, -1
end_hunk_3
