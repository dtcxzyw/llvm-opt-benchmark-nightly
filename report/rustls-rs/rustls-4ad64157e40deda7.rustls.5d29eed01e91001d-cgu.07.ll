Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.07?download=true
inline.NumInlined: 349
inline.NumDeleted: 157
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1F_NtCs7ZUl82OSlxp_6rustls5enumsNtB6_18EchClientHelloTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls4msgs10fragmenterNtB5_7ChunkerNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %.sroa.0.0 = select i1 %.not, i64 %i.f, i64 %i.g
  %i.h = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_20DissectHandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %i.d, 4
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !captures !322
  store i64 0, ptr %i.c, align 8
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !10, !noundef !4
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = load ptr, ptr %i.i, align 8, !noundef !4
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.j, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load <2 x i16>, ptr %i.o, align 8
  store <2 x i16> %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.r = add nsw i64 %i.d, -4                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtB4_5Codec10read_bytesB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 3)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.t = load i8, ptr %i.b, align 8, !range !13, !alias.scope !323, !noundef !4
  %.not.i = icmp eq i8 %i.t, -1
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #29, !noalias !323
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !323, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = zext i32 %i.v to i64                     ; 5 uses
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit, %bb.h
  %.sroa.01.0 = phi i64 [ %i.aj, %bb.h ], [ %i.d, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !10, !noundef !4
  %i.aa = ptrtoint ptr %i.g to i64
  %i.ab = load ptr, ptr %i.z, align 8, !noundef !4
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = add i64 %.sroa.01.0, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 1, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ae, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load <2 x i16>, ptr %i.af, align 8
  store <2 x i16> %i.ag, ptr %.sroa.711.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit
  %i.ah = sub nuw i64 %i.r, %i.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w
  store ptr %i.ai, ptr %1, align 8, !captures !322
  store i64 %i.ah, ptr %i.c, align 8
  %i.aj = add nuw nsw i64 %i.w, 4
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len(ptr noalias nofree readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, 24
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.i.i.i = alloca [32 x i8], align 8     ; 6 uses
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [12 x i8], align 1                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [13 x i8], align 1                ; 5 uses
  %i.f = alloca [13 x i8], align 1                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [12 x i8], align 1                ; 6 uses
  %i.j = alloca [12 x i8], align 1                ; 5 uses
  %i.k = alloca [12 x i8], align 1                ; 7 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.l = alloca [13 x i8], align 1                ; 5 uses
  %i.m = alloca [12 x i8], align 1                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = load ptr, ptr %2, align 8, !noundef !4
  %.not = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %.sroa.0.0 = select i1 %.not, i64 %i.s, i64 %i.t ; 2 uses
  %i.u = add i64 %.sroa.0.0, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.v, i64 noundef 8)
          to label %bb.c unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit32: ; preds = %bb.ak, %.thread44, %bb.am, %bb.t, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.am ], [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.w, %bb.b ], [ %lpad.thr_comm42, %.thread44 ], [ %lpad.thr_comm.split-lp43, %bb.ak ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #28
          to label %common.resume unwind label %bb.al

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit32

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.j, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !359
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 1 dereferenceable(12) %i.i, ptr noundef nonnull %i.y, ptr noundef nonnull readonly dereferenceable(12) %i.x, ptr noundef nonnull readonly %i.z)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val.i.i = load i64, ptr %i.aa, align 8, !alias.scope !360, !noalias !359, !noundef !4 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val6.i.i = load i64, ptr %i.ab, align 8, !alias.scope !360, !noalias !359, !noundef !4 ; 5 uses
  %i.ac = sub i64 %.val6.i.i, %.val.i.i           ; 9 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !361, !noalias !359, !nonnull !4, !noundef !4 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !361, !noalias !359, !nonnull !4, !noundef !4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep51 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep52 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep53 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep53
  %bound1 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check54 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 28
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %index, %.val.i.i               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !362, !noalias !363
  %wide.load55 = load <16 x i8>, ptr %i.ai, align 1, !alias.scope !362, !noalias !363
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load56 = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !364, !noalias !365
  %wide.load57 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !364, !noalias !365
  %i.ak = xor <16 x i8> %wide.load56, %wide.load
  %i.al = xor <16 x i8> %wide.load57, %wide.load55
  store <16 x i8> %i.ak, ptr %i.ag, align 1, !alias.scope !364, !noalias !365
  store <16 x i8> %i.al, ptr %i.aj, align 1, !alias.scope !364, !noalias !365
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec58 = and i64 %i.ac, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add i64 %index59, %.val.i.i             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.an
  %wide.load60 = load <4 x i8>, ptr %i.ap, align 1, !alias.scope !362, !noalias !363
  %wide.load61 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !364, !noalias !365
  %i.aq = xor <4 x i8> %wide.load61, %wide.load60
  store <4 x i8> %i.aq, ptr %i.ao, align 1, !alias.scope !364, !noalias !365
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !340

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.ac, %n.vec58
  br i1 %cmp.n63, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ] ; 4 uses
  %i.as = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.at = add i64 %.val6.i.i, %i.as
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.au = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.av = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.av
  %.val7.i.i.prol = load i8, ptr %i.ax, align 1, !noalias !363, !noundef !4
  %i.ay = load i8, ptr %i.aw, align 1, !alias.scope !366, !noalias !363, !noundef !4
  %i.az = xor i8 %i.ay, %.val7.i.i.prol
  store i8 %i.az, ptr %i.aw, align 1, !alias.scope !366, !noalias !363
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.au, %vec.epilog.scalar.ph.prol ]
  %i.ba = icmp eq i64 %i.at, %.val.i.i
  br i1 %i.ba, label %.loopexit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bg, %vec.epilog.scalar.ph ] ; 3 uses
  %i.bb = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.bb
  %.val7.i.i = load i8, ptr %i.bd, align 1, !noalias !363, !noundef !4
  %i.be = load i8, ptr %i.bc, align 1, !alias.scope !366, !noalias !363, !noundef !4
  %i.bf = xor i8 %i.be, %.val7.i.i
  store i8 %i.bf, ptr %i.bc, align 1, !alias.scope !366, !noalias !363
  %i.bg = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.bi, align 1, !noalias !363, !noundef !4
  %i.bj = load i8, ptr %i.bh, align 1, !alias.scope !366, !noalias !363, !noundef !4
  %i.bk = xor i8 %i.bj, %.val7.i.i.1
  store i8 %i.bk, ptr %i.bh, align 1, !alias.scope !366, !noalias !363
  %exitcond.not.i.i.1 = icmp eq i64 %i.bg, %i.ac
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !341

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.m, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load i8, ptr %i.bl, align 8, !range !23, !noundef !4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bo = load i8, ptr %i.bn, align 1             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.bq = load i16, ptr %i.bp, align 2, !range !24, !noundef !4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bs = load i16, ptr %i.br, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.f, i8 0, i64 13, i1 false), !noalias !367
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef 13)
          to label %.noexc24 unwind label %bb.am

.noexc24:                                         ; preds = %.loopexit
  switch i8 %i.bm, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.i, %.noexc24
  unreachable

bb.d:                                             ; preds = %.noexc24
  br label %bb.i

bb.e:                                             ; preds = %.noexc24
  br label %bb.i

bb.f:                                             ; preds = %.noexc24
  br label %bb.i

bb.g:                                             ; preds = %.noexc24
  br label %bb.i

bb.h:                                             ; preds = %.noexc24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.noexc24
  %.sroa.05.0.i = phi i8 [ %i.bo, %bb.h ], [ 21, %bb.d ], [ 22, %bb.e ], [ 23, %bb.f ], [ 24, %bb.g ], [ 20, %.noexc24 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.05.0.i, ptr %i.bt, align 1, !noalias !367
  switch i16 %i.bq, label %default.unreachable [
    i16 0, label %bb.s
    i16 1, label %bb.j
    i16 2, label %bb.k
    i16 3, label %bb.l
    i16 4, label %bb.m
    i16 5, label %bb.n
    i16 6, label %bb.o
    i16 7, label %bb.p
    i16 8, label %bb.q
    i16 9, label %bb.r
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  br label %bb.s

bb.m:                                             ; preds = %bb.i
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  br label %bb.s

bb.o:                                             ; preds = %bb.i
  br label %bb.s

bb.p:                                             ; preds = %bb.i
  br label %bb.s

bb.q:                                             ; preds = %bb.i
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.06.0.i = phi i16 [ %i.bs, %bb.r ], [ 768, %bb.j ], [ 769, %bb.k ], [ 770, %bb.l ], [ 771, %bb.m ], [ 772, %bb.n ], [ -257, %bb.o ], [ -259, %bb.p ], [ -260, %bb.q ], [ 2, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u16(i16 noundef %.sroa.06.0.i, ptr noalias nofree noundef nonnull %i.bu, i64 noundef 4)
          to label %.noexc25 unwind label %bb.am

.noexc25:                                         ; preds = %bb.s
  %i.bv = trunc i64 %.sroa.0.0 to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u16(i16 noundef %i.bv, ptr noalias nofree noundef nonnull %i.bw, i64 noundef 2)
          to label %bb.u unwind label %bb.am

bb.t:                                             ; preds = %bb.af, %bb.ag
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit32

bb.u:                                             ; preds = %.noexc25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.l, ptr noundef nonnull align 1 dereferenceable(13) %i.f, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !367
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload17extend_from_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef 8)
          to label %bb.v unwind label %bb.am

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.k, ptr noundef nonnull align 1 dereferenceable(12) %i.m, i64 12, i1 false)
  %i.by = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.x unwind label %bb.ak      ; 2 uses

.thread44:                                        ; preds = %bb.aa, %_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey26seal_in_place_separate_tag.exit.thread.i, %_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey26seal_in_place_separate_tag.exit.thread4.i
  %lpad.thr_comm42 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit32

bb.x:                                             ; preds = %bb.w
  %i.bz = extractvalue { ptr, i64 } %i.by, 1      ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 8
  br i1 %i.ca, label %bb.ab, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.cb = add i64 %i.bz, -8                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23 = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !368
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ce, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.k, i64 12, i1 false), !noalias !369
  store i8 1, ptr %i.e, align 1, !noalias !368
  %i.cf = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !370, !noundef !4
  %i.ch = icmp ugt i64 %i.cb, %i.cg
  br i1 %i.ch, label %_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey26seal_in_place_separate_tag.exit.thread.i, label %bb.z

_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey26seal_in_place_separate_tag.exit.thread.i: ; preds = %bb.y
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.ce)
          to label %bb.ac unwind label %.thread44

bb.z:                                             ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_RNvXs1q_NtCs7ZUl82OSlxp_6rustls5enumsNtB6_15CertificateTypeNtNtNtB8_4msgs5codec5Codec6encode:bb.a

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.d, %bb.c ], [ 2, %bb.b ], [ %i.b, %bb.a ]
  store i8 %.sink, ptr %i.a, align 1
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1t_NtCs7ZUl82OSlxp_6rustls5enumsNtB6_15CertificateTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !26, !noundef !4
  switch i8 %i.c, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 4)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @591, i64 noundef 12)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load i8, ptr %i.f, align 1
  store i8 %i.g, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @592, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11UnspecifiedNtNtCsj6eKBz9Db1c_4core5error5Error11description(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @15, i64 11 }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11UnspecifiedNtNtCsj6eKBz9Db1c_4core5error5Error5cause(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 -1, ptr %i.g, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.e ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !range !12, !alias.scope !471, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit, label %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit.thread

_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !471, !noundef !4
  %i.o = add i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !471, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !471, !noundef !4 ; 2 uses
  %.sroa.01.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.q)
  %i.t = icmp eq i64 %i.o, %.sroa.01.0.i
  br i1 %i.t, label %bb.e, label %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit.thread

bb.d:                                             ; preds = %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit, %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit.thread, %bb.b
  ret void

_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit.thread: ; preds = %bb.c, %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 -1, ptr %i.u, align 2
  br label %bb.d

bb.e:                                             ; preds = %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit
  %i.v = icmp ult i64 %i.c, 230584300921369396
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nsw i64 %i.c, -1
  %i.x = icmp eq i64 %i.w, %i.e
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !4
  store i64 0, ptr %i.y, align 8
  %.val7.pre = load i64, ptr %i.p, align 8, !alias.scope !472
  %.val8.pre = load i64, ptr %i.r, align 8, !alias.scope !473
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.val8 = phi i64 [ %.val8.pre, %bb.f ], [ %i.s, %bb.e ] ; 3 uses
  %.val7 = phi i64 [ %.val7.pre, %bb.f ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.02.0 = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ]
  %i.aa = add nuw i64 %i.e, 1
  store i64 %i.aa, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ac = icmp ult i64 %.val8, %.val7
  %.not.i = icmp ugt i64 %.val8, %.val6
  %or.cond.i = or i1 %i.ac, %.not.i
  br i1 %or.cond.i, label %bb.h, label %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #29
  unreachable

_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.af = sub nuw i64 %.val8, %.val7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 %.val7
  store ptr %i.ag, ptr %0, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ah = load <2 x i16>, ptr %i.ae, align 8
  store <2 x i16> %i.ah, ptr %.sroa.03.sroa.7.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm12aead_key_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB5_32ChaCha20Poly1305MessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [13 x i8], align 1                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = alloca [12 x i8], align 1                ; 5 uses
  %i.f = alloca [13 x i8], align 1                ; 5 uses
  %i.g = alloca [12 x i8], align 1                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.l, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !499
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull %i.m, ptr noundef nonnull readonly dereferenceable(12) %i.k, ptr noundef nonnull readonly %i.n), !noalias !500
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load i64, ptr %i.o, align 8, !alias.scope !501, !noalias !499, !noundef !4 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val6.i.i = load i64, ptr %i.p, align 8, !alias.scope !501, !noalias !499, !noundef !4 ; 5 uses
  %i.q = sub i64 %.val6.i.i, %.val.i.i            ; 9 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !502, !noalias !499, !nonnull !4, !noundef !4 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !502, !noalias !499, !nonnull !4, !noundef !4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep70 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep71 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep72 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep72
  %bound1 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check73 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.q, 28
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add i64 %index, %.val.i.i                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !alias.scope !503, !noalias !504
  %wide.load74 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !503, !noalias !504
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load75 = load <16 x i8>, ptr %i.u, align 1, !alias.scope !505, !noalias !506
  %wide.load76 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !505, !noalias !506
  %i.y = xor <16 x i8> %wide.load75, %wide.load
  %i.z = xor <16 x i8> %wide.load76, %wide.load74
  store <16 x i8> %i.y, ptr %i.u, align 1, !alias.scope !505, !noalias !506
  store <16 x i8> %i.z, ptr %i.x, align 1, !alias.scope !505, !noalias !506
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.q, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = add i64 %index78, %.val.i.i             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ab
  %wide.load79 = load <4 x i8>, ptr %i.ad, align 1, !alias.scope !503, !noalias !504
  %wide.load80 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !505, !noalias !506
  %i.ae = xor <4 x i8> %wide.load80, %wide.load79
  store <4 x i8> %i.ae, ptr %i.ac, align 1, !alias.scope !505, !noalias !506
  %index.next81 = add nuw i64 %index78, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !490

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.q, %n.vec77
  br i1 %cmp.n82, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec77, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ah = add i64 %.val6.i.i, %i.ag
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.aj = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.aj
  %.val7.i.i.prol = load i8, ptr %i.al, align 1, !noalias !504, !noundef !4
  %i.am = load i8, ptr %i.ak, align 1, !alias.scope !507, !noalias !504, !noundef !4
  %i.an = xor i8 %i.am, %.val7.i.i.prol
  store i8 %i.an, ptr %i.ak, align 1, !alias.scope !507, !noalias !504
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.ah, %.val.i.i
  br i1 %i.ao, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.au, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ap = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ap
  %.val7.i.i = load i8, ptr %i.ar, align 1, !noalias !504, !noundef !4
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !507, !noalias !504, !noundef !4
  %i.at = xor i8 %i.as, %.val7.i.i
  store i8 %i.at, ptr %i.aq, align 1, !alias.scope !507, !noalias !504
  %i.au = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.aw, align 1, !noalias !504, !noundef !4
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !507, !noalias !504, !noundef !4
  %i.ay = xor i8 %i.ax, %.val7.i.i.1
  store i8 %i.ay, ptr %i.av, align 1, !alias.scope !507, !noalias !504
  %exitcond.not.i.i.1 = icmp eq i64 %i.au, %i.q
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !491

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !23, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !range !24, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bg = load i16, ptr %i.bf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.b, i8 0, i64 13, i1 false), !noalias !508
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.b, i64 noundef 13)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  switch i8 %i.ba, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.h, %.noexc
  unreachable

bb.c:                                             ; preds = %.noexc
  br label %bb.h

bb.d:                                             ; preds = %.noexc
  br label %bb.h

bb.e:                                             ; preds = %.noexc
  br label %bb.h

bb.f:                                             ; preds = %.noexc
  br label %bb.h

bb.g:                                             ; preds = %.noexc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.noexc
  %.sroa.05.0.i = phi i8 [ %i.bc, %bb.g ], [ 21, %bb.c ], [ 22, %bb.d ], [ 23, %bb.e ], [ 24, %bb.f ], [ 20, %.noexc ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.05.0.i, ptr %i.bh, align 1, !noalias !508
  switch i16 %i.be, label %default.unreachable [
    i16 0, label %bb.r
    i16 1, label %bb.i
    i16 2, label %bb.j
    i16 3, label %bb.k
    i16 4, label %bb.l
    i16 5, label %bb.m
    i16 6, label %bb.n
    i16 7, label %bb.o
    i16 8, label %bb.p
    i16 9, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  br label %bb.r

bb.m:                                             ; preds = %bb.h
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  br label %bb.r

bb.p:                                             ; preds = %bb.h
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.06.0.i = phi i16 [ %i.bg, %bb.q ], [ 768, %bb.i ], [ 769, %bb.j ], [ 770, %bb.k ], [ 771, %bb.l ], [ 772, %bb.m ], [ -257, %bb.n ], [ -259, %bb.o ], [ -260, %bb.p ], [ 2, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u16(i16 noundef %.sroa.06.0.i, ptr noalias nofree noundef nonnull %i.bi, i64 noundef 4)
          to label %.noexc61 unwind label %bb.y

.noexc61:                                         ; preds = %bb.r
  %i.bj = trunc i64 %i.i to i16
  %i.bk = add i16 %i.bj, -16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u16(i16 noundef %i.bk, ptr noalias nofree noundef nonnull %i.bl, i64 noundef 2)
          to label %bb.t unwind label %bb.y

bb.s:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.w

bb.t:                                             ; preds = %.noexc61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.f, ptr noundef nonnull align 1 dereferenceable(13) %i.b, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.bm = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.bn = call fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 1 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(13) %i.f, ptr noalias nofree noundef nonnull %i.bm, i64 noundef range(i64 0, -9223372036854775808) %i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !509
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = icmp ugt i64 %i.bp, 16384
  br i1 %i.br, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bp)
  %i.bs = load i8, ptr %i.az, align 8, !range !23, !noundef !4
  %i.bt = load i8, ptr %i.bb, align 1
  %i.bu = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.bv = load i64, ptr %i.h, align 8, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bw, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bv, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bs, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.bt, ptr %.sroa.634.0..sroa_idx, align 1
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bx = load <2 x i16>, ptr %i.bd, align 2
  store <2 x i16> %i.bx, ptr %.sroa.735.0..sroa_idx, align 2
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v, %bb.s
  ret void

bb.x:                                             ; preds = %bb.u, %bb.t
  %storemerge = phi i8 [ 6, %bb.t ], [ 17, %bb.u ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

end_hunk_1
begin_hunk_2_@_RNvXs3_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a

bb.l:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @605, i64 noundef 18)
  br label %bb.ak

bb.m:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @606, i64 noundef 18)
  br label %bb.ak

bb.n:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @607, i64 noundef 18)
  br label %bb.ak

bb.o:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @608, i64 noundef 16)
  br label %bb.ak

bb.p:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @609, i64 noundef 9)
  br label %bb.ak

bb.q:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @610, i64 noundef 12)
  br label %bb.ak

bb.r:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @611, i64 noundef 11)
  br label %bb.ak

bb.s:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @612, i64 noundef 12)
  br label %bb.ak

bb.t:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @613, i64 noundef 17)
  br label %bb.ak

bb.u:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @614, i64 noundef 15)
  br label %bb.ak

bb.v:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @615, i64 noundef 20)
  br label %bb.ak

bb.w:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @616, i64 noundef 13)
  br label %bb.ak

bb.x:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @617, i64 noundef 21)
  br label %bb.ak

bb.y:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @618, i64 noundef 12)
  br label %bb.ak

bb.z:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 15)
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @620, i64 noundef 16)
  br label %bb.ak

bb.ab:                                            ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @621, i64 noundef 20)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @622, i64 noundef 23)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @623, i64 noundef 16)
  br label %bb.ak

bb.ae:                                            ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @624, i64 noundef 28)
  br label %bb.ak

bb.af:                                            ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @625, i64 noundef 23)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @626, i64 noundef 18)
  br label %bb.ak

bb.ah:                                            ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @627, i64 noundef 19)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @628, i64 noundef 21)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @629, i64 noundef 28)
  br label %bb.ak

_RNvXs2_NtCs7ZUl82OSlxp_6rustls5enumshINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_16AlertDescriptionE4from.exit: ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.an = load i8, ptr %i.am, align 1
  store i8 %i.an, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ao = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !10, !noundef !4
  %i.ar = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noundef nonnull @630, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs2_NtCs7ZUl82OSlxp_6rustls5enumshINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_16AlertDescriptionE4from.exit, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ %i.p, %bb.n ], [ %i.q, %bb.o ], [ %i.r, %bb.p ], [ %i.s, %bb.q ], [ %i.t, %bb.r ], [ %i.u, %bb.s ], [ %i.v, %bb.t ], [ %i.w, %bb.u ], [ %i.x, %bb.v ], [ %i.y, %bb.w ], [ %i.z, %bb.x ], [ %i.aa, %bb.y ], [ %i.ab, %bb.z ], [ %i.ac, %bb.aa ], [ %i.ad, %bb.ab ], [ %i.ae, %bb.ac ], [ %i.af, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ah, %bb.af ], [ %i.ai, %bb.ag ], [ %i.aj, %bb.ah ], [ %i.ak, %bb.ai ], [ %i.al, %bb.aj ], [ %i.ar, %_RNvXs2_NtCs7ZUl82OSlxp_6rustls5enumshINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_16AlertDescriptionE4from.exit ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEEBN_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.d)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB5_32ChaCha20Poly1305MessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len(ptr noalias nofree readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, 16
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB5_32ChaCha20Poly1305MessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [12 x i8], align 1                ; 8 uses
  %i.d = alloca [12 x i8], align 1                ; 4 uses
  %i.e = alloca [13 x i8], align 1                ; 5 uses
  %i.f = alloca [13 x i8], align 1                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [12 x i8], align 1                ; 6 uses
  %i.i = alloca [12 x i8], align 1                ; 5 uses
  %i.j = alloca [13 x i8], align 1                ; 5 uses
  %i.k = alloca [12 x i8], align 1                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = load ptr, ptr %2, align 8, !noundef !4
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = sub i64 %i.o, %i.q
  %.sroa.0.0 = select i1 %.not, i64 %i.q, i64 %i.r ; 2 uses
  %i.s = add i64 %.sroa.0.0, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.i, i8 0, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.t, i64 noundef 8)
          to label %bb.c unwind label %bb.b

.body.thread:                                     ; preds = %bb.aj, %bb.ac, %bb.x, %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.x ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.u, %bb.b ], [ %lpad.thr_comm.i, %bb.ac ], [ %lpad.thr_comm, %bb.aj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #28
          to label %common.resume unwind label %bb.ak

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.h, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !544
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 1 dereferenceable(12) %i.h, ptr noundef nonnull %i.w, ptr noundef nonnull readonly dereferenceable(12) %i.v, ptr noundef nonnull readonly %i.x)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !545, !noalias !544, !noundef !4 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val6.i.i = load i64, ptr %i.z, align 8, !alias.scope !545, !noalias !544, !noundef !4 ; 5 uses
  %i.aa = sub i64 %.val6.i.i, %.val.i.i           ; 9 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !546, !noalias !544, !nonnull !4, !noundef !4 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !546, !noalias !544, !nonnull !4, !noundef !4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep35 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep36 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep37 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep37
  %bound1 = icmp ult ptr %scevgep36, %scevgep35
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check38 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.aa, 28
  %n.vec = and i64 %i.aa, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %index, %.val.i.i               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !alias.scope !547, !noalias !548
  %wide.load39 = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !547, !noalias !548
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load40 = load <16 x i8>, ptr %i.ae, align 1, !alias.scope !549, !noalias !550
  %wide.load41 = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !549, !noalias !550
  %i.ai = xor <16 x i8> %wide.load40, %wide.load
  %i.aj = xor <16 x i8> %wide.load41, %wide.load39
  store <16 x i8> %i.ai, ptr %i.ae, align 1, !alias.scope !549, !noalias !550
  store <16 x i8> %i.aj, ptr %i.ah, align 1, !alias.scope !549, !noalias !550
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.aa, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.al = add i64 %index43, %.val.i.i             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.al
  %wide.load44 = load <4 x i8>, ptr %i.an, align 1, !alias.scope !547, !noalias !548
  %wide.load45 = load <4 x i8>, ptr %i.am, align 1, !alias.scope !549, !noalias !550
  %i.ao = xor <4 x i8> %wide.load45, %wide.load44
  store <4 x i8> %i.ao, ptr %i.am, align 1, !alias.scope !549, !noalias !550
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next46, %n.vec42
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !526

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %i.aa, %n.vec42
  br i1 %cmp.n47, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 4 uses
  %i.aq = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ar = add i64 %.val6.i.i, %i.aq
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.as = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.at = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.at
  %.val7.i.i.prol = load i8, ptr %i.av, align 1, !noalias !548, !noundef !4
  %i.aw = load i8, ptr %i.au, align 1, !alias.scope !551, !noalias !548, !noundef !4
  %i.ax = xor i8 %i.aw, %.val7.i.i.prol
  store i8 %i.ax, ptr %i.au, align 1, !alias.scope !551, !noalias !548
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.as, %vec.epilog.scalar.ph.prol ]
  %i.ay = icmp eq i64 %i.ar, %.val.i.i
  br i1 %i.ay, label %.loopexit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.be, %vec.epilog.scalar.ph ] ; 3 uses
  %i.az = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.az
  %.val7.i.i = load i8, ptr %i.bb, align 1, !noalias !548, !noundef !4
  %i.bc = load i8, ptr %i.ba, align 1, !alias.scope !551, !noalias !548, !noundef !4
  %i.bd = xor i8 %i.bc, %.val7.i.i
  store i8 %i.bd, ptr %i.ba, align 1, !alias.scope !551, !noalias !548
  %i.be = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.bg, align 1, !noalias !548, !noundef !4
  %i.bh = load i8, ptr %i.bf, align 1, !alias.scope !551, !noalias !548, !noundef !4
  %i.bi = xor i8 %i.bh, %.val7.i.i.1
  store i8 %i.bi, ptr %i.bf, align 1, !alias.scope !551, !noalias !548
  %exitcond.not.i.i.1 = icmp eq i64 %i.be, %i.aa
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !527

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.k, ptr noundef nonnull align 1 dereferenceable(12) %i.h, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !range !23, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.bo = load i16, ptr %i.bn, align 2, !range !24, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bq = load i16, ptr %i.bp, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.f, i8 0, i64 13, i1 false), !noalias !552
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef 13)
          to label %.noexc22 unwind label %bb.aj

.noexc22:                                         ; preds = %.loopexit
  switch i8 %i.bk, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.i, %.noexc22
  unreachable

bb.d:                                             ; preds = %.noexc22
  br label %bb.i

bb.e:                                             ; preds = %.noexc22
  br label %bb.i

bb.f:                                             ; preds = %.noexc22
  br label %bb.i

bb.g:                                             ; preds = %.noexc22
  br label %bb.i

bb.h:                                             ; preds = %.noexc22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.noexc22
  %.sroa.05.0.i = phi i8 [ %i.bm, %bb.h ], [ 21, %bb.d ], [ 22, %bb.e ], [ 23, %bb.f ], [ 24, %bb.g ], [ 20, %.noexc22 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.05.0.i, ptr %i.br, align 1, !noalias !552
  switch i16 %i.bo, label %default.unreachable [
    i16 0, label %bb.s
    i16 1, label %bb.j
    i16 2, label %bb.k
    i16 3, label %bb.l
    i16 4, label %bb.m
    i16 5, label %bb.n
    i16 6, label %bb.o
    i16 7, label %bb.p
    i16 8, label %bb.q
    i16 9, label %bb.r
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  br label %bb.s

bb.m:                                             ; preds = %bb.i
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  br label %bb.s

bb.o:                                             ; preds = %bb.i
  br label %bb.s

bb.p:                                             ; preds = %bb.i
  br label %bb.s

bb.q:                                             ; preds = %bb.i
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.06.0.i = phi i16 [ %i.bq, %bb.r ], [ 768, %bb.j ], [ 769, %bb.k ], [ 770, %bb.l ], [ 771, %bb.m ], [ 772, %bb.n ], [ -257, %bb.o ], [ -259, %bb.p ], [ -260, %bb.q ], [ 2, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u16(i16 noundef %.sroa.06.0.i, ptr noalias nofree noundef nonnull %i.bs, i64 noundef 4)
          to label %.noexc23 unwind label %bb.aj

.noexc23:                                         ; preds = %bb.s
  %i.bt = trunc i64 %.sroa.0.0 to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u16(i16 noundef %i.bt, ptr noalias nofree noundef nonnull %i.bu, i64 noundef 2)
          to label %bb.t unwind label %bb.aj

.body:                                            ; preds = %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_.exit.thread.i, %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_.exit.thread8.i, %bb.ae
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.t:                                             ; preds = %.noexc23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) %i.f, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !552
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val21 = load ptr, ptr %i.bw, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !553
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bx, ptr noundef nonnull align 1 dereferenceable(12) %i.k, i64 12, i1 false)
  store i8 1, ptr %i.e, align 1, !noalias !553
  %i.by = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.v unwind label %bb.ac, !noalias !554

bb.v:                                             ; preds = %bb.u
  %i.bz = extractvalue { ptr, i64 } %i.by, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !555, !noundef !4
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_.exit.thread.i, label %bb.w

_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_.exit.thread.i: ; preds = %bb.v
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.bx)
          to label %.noexc25 unwind label %.body

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %i.k, i64 12, i1 false)
  %i.cd = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.y unwind label %bb.x, !noalias !556

bb.x:                                             ; preds = %bb.z, %bb.y, %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 1 dereferenceable(12) %i.c)
          to label %.body.thread unwind label %bb.ab, !noalias !557

bb.y:                                             ; preds = %bb.w
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !558
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_RINvXs5_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB6_15PrefixedPayloadINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendRhE6extendINtNtNtB1o_5slice4iter4IterhEEBc_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cg)
          to label %bb.z unwind label %bb.x, !noalias !556
end_hunk_2
