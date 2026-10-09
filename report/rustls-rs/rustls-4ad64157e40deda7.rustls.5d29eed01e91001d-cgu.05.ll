Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.05?download=true
inline.NumInlined: 809
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_18KeyScheduleTraffic31next_application_traffic_secret:bb.a
  store i16 %i.t, ptr %i.d, align 2, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !678
  store i8 17, ptr %i.c, align 1, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !678
  store i8 0, ptr %i.b, align 1, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !678
  store ptr %i.d, ptr %i.a, align 8, !noalias !678
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.u, align 8, !noalias !678
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.v, align 8, !noalias !678
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.w, align 8, !noalias !678
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @3, ptr %i.x, align 8, !noalias !678
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 6, ptr %i.y, align 8, !noalias !678
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @64, ptr %i.z, align 8, !noalias !678
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 11, ptr %i.aa, align 8, !noalias !678
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %i.ab, align 8, !noalias !678
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 1, ptr %i.ac, align 8, !noalias !678
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8, !noalias !678
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %i.ae, align 8, !noalias !678
  invoke void %.val.i.i(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 6) #26
          to label %bb.c unwind label %bb.b, !inline_history !29

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls1312HkdfExpanderEL_EEB1h_(ptr nonnull %i.m, ptr nonnull %i.n) #24
          to label %common.resume unwind label %bb.i, !noalias !675

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !678
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.ag = load ptr, ptr %i.n, align 8, !invariant.load !7, !noalias !675 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.ag(ptr noundef nonnull %i.m)
          to label %bb.e unwind label %bb.g, !noalias !675

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !9, !invariant.load !7, !noalias !675 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite11derive_next.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !10, !invariant.load !7, !noalias !675
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef range(i64 1, 0) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #22, !noalias !675
  br label %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite11derive_next.exit

bb.g:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !9, !invariant.load !7, !noalias !675 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !10, !invariant.load !7, !noalias !675
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #22, !noalias !675
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.b ], [ %i.am, %bb.g ], [ %i.am, %bb.h ], [ %i.at, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !675
  unreachable

_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite11derive_next.exit: ; preds = %bb.e, %bb.f
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.0.0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit unwind label %bb.j

bb.j:                                             ; preds = %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite11derive_next.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %common.resume unwind label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit: ; preds = %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite11derive_next.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_18KeyScheduleTraffic39request_key_update_and_update_encrypter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1, ptr noalias nofree noundef align 8 dereferenceable(840) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState23check_aligned_handshake(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %2)
  %i.e = load i8, ptr %i.d, align 8, !range !14, !noundef !7
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7Message24build_key_update_request(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b)
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB4_12PlainMessageINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_7MessageE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState16send_msg_encrypt(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 820
  %i.g = load i8, ptr %i.f, align 4, !range !6, !noundef !7
  %i.h = trunc nuw i8 %i.g to i1
  call fastcc void @_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_18KeyScheduleTraffic31next_application_traffic_secret(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 dereferenceable(224) %1, i1 noundef zeroext %i.h)
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !15, !noundef !7
  invoke fastcc void @_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite13set_encrypter(ptr nonnull %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 dereferenceable(840) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  store i8 -1, ptr %0, align 8
  call void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce8for_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) %0, i32 noundef %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(12) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 1                ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.e, ptr %i.c, align 4
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.d, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !699
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull readonly dereferenceable(12) %2, ptr noundef nonnull readonly %i.h), !noalias !697
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !700, !noalias !699, !noundef !7 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val6.i.i = load i64, ptr %i.j, align 8, !alias.scope !700, !noalias !699, !noundef !7 ; 6 uses
  %i.k = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !701, !noalias !699, !nonnull !7, !noundef !7 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !701, !noalias !699, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.n = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %i.o = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.p = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %i.m, %i.p
  %bound1 = icmp ult ptr %i.o, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = add i64 %index, %.val.i.i                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !alias.scope !702, !noalias !703
  %wide.load5 = load <16 x i8>, ptr %i.u, align 1, !alias.scope !702, !noalias !703
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.s, align 1, !alias.scope !704, !noalias !705
  %wide.load7 = load <16 x i8>, ptr %i.v, align 1, !alias.scope !704, !noalias !705
  %i.w = xor <16 x i8> %wide.load6, %wide.load
  %i.x = xor <16 x i8> %wide.load7, %wide.load5
  store <16 x i8> %i.w, ptr %i.s, align 1, !alias.scope !704, !noalias !705
  store <16 x i8> %i.x, ptr %i.v, align 1, !alias.scope !704, !noalias !705
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.k, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.z = add i64 %index9, %.val.i.i               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.z
  %wide.load10 = load <4 x i8>, ptr %i.ab, align 1, !alias.scope !702, !noalias !703
  %wide.load11 = load <4 x i8>, ptr %i.aa, align 1, !alias.scope !704, !noalias !705
  %i.ac = xor <4 x i8> %wide.load11, %wide.load10
  store <4 x i8> %i.ac, ptr %i.aa, align 1, !alias.scope !704, !noalias !705
  %index.next12 = add nuw i64 %index9, 4          ; 2 uses
  %i.ad = icmp eq i64 %index.next12, %n.vec8
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !695

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.k, %n.vec8
  br i1 %cmp.n13, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 4 uses
  %4 = sub i64 %.val6.i.i, %.val.i.i
  %i.ae = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.af = add i64 %.val6.i.i, %i.ae
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ag = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.ah = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ah
  %.val7.i.i.prol = load i8, ptr %i.aj, align 1, !noalias !703, !noundef !7
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !706, !noalias !703, !noundef !7
  %i.al = xor i8 %i.ak, %.val7.i.i.prol
  store i8 %i.al, ptr %i.ai, align 1, !alias.scope !706, !noalias !703
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.am = icmp eq i64 %i.af, %.val.i.i
  br i1 %i.am, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.as, %vec.epilog.scalar.ph ] ; 3 uses
  %i.an = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.an
  %.val7.i.i = load i8, ptr %i.ap, align 1, !noalias !703, !noundef !7
  %i.aq = load i8, ptr %i.ao, align 1, !alias.scope !706, !noalias !703, !noundef !7
  %i.ar = xor i8 %i.aq, %.val7.i.i
  store i8 %i.ar, ptr %i.ao, align 1, !alias.scope !706, !noalias !703
  %i.as = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.au, align 1, !noalias !703, !noundef !7
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !706, !noalias !703, !noundef !7
  %i.aw = xor i8 %i.av, %.val7.i.i.1
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !706, !noalias !703
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.k
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !696

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false), !alias.scope !707, !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_8Acceptor6accept(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1360 x i8]) align 8 captures(none) dereferenceable(1360) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(1168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1360 x i8], align 8              ; 4 uses
  %i.c = alloca [1168 x i8], align 8              ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [1168 x i8], align 8              ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [120 x i8], align 8               ; 5 uses
  %i.m = alloca [168 x i8], align 8               ; 7 uses
  %i.n = alloca [168 x i8], align 8               ; 8 uses
  %i.o = alloca [1168 x i8], align 8              ; 14 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 2, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.6.0..sroa_idx, i64 1160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE23first_handshake_messageB7_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.o)
          to label %bb.d unwind label %.thread33

.thread33:                                        ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.q = load i64, ptr %i.a, align 8, !range !16, !noundef !7
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !24, !noundef !7 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.t, label %bb.u, !prof !25

bb.d:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.m, align 8, !range !712, !noundef !7
  switch i64 %i.v, label %bb.i [
    i64 -3, label %bb.e
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtB12_6server11server_conn20ServerConnectionDataEEEB12_.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.i, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  invoke void @_RNvXs8_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlertINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtBb_4conn16ConnectionCommonNtB7_20ServerConnectionDataEE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1168) %i.i)
          to label %bb.r unwind label %bb.q

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtB12_6server11server_conn20ServerConnectionDataEEEB12_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %1, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtB12_6server11server_conn20ServerConnectionDataEEEB12_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit21

bb.g:                                             ; preds = %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.x, %bb.h ] ; 2 uses
  %.sroa.04.2 = phi i1 [ false, %bb.n ], [ true, %bb.h ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit unwind label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit: ; preds = %bb.g
  br i1 %.sroa.04.2, label %bb.s, label %.thread

bb.h:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 8 dereferenceable(168) %i.m, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 840
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1080
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !713, !noalias !714
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !713, !noalias !714
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !713, !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls6server2hs20process_client_hello(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.n, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.g, align 8, !range !14, !noundef !7
  %.not14 = icmp eq i8 %i.ac, -1
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.c, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  invoke void @_RNvXs8_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlertINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtBb_4conn16ConnectionCommonNtB7_20ServerConnectionDataEE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1168) %i.c)
          to label %bb.o unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.b, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.af, ptr noundef nonnull align 8 dereferenceable(168) %i.n, i64 168, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(1360) %i.b, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit21, %bb.l
  ret void

bb.n:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #24
          to label %bb.g unwind label %bb.p

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_23ExpectCertificateVerifyINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bk = load <2 x ptr>, ptr %i.t, align 8
  store <2 x ptr> %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 %i.bi, ptr %i.bl, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1165
  %i.bm = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 392, i64 noundef range(i64 1, 9) 8) #22, !noalias !1165 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.z, label %bb.ac, !prof !22

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 392) #27
          to label %.noexc45 unwind label %bb.aa

.noexc45:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.a) #24
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.bm, ptr noundef nonnull align 8 dereferenceable(392) %i.a, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @134, ptr %i.br, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEEB1g_.exit unwind label %bb.ad

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit: ; preds = %.body, %bb.ad
  %.sroa.021.2 = phi i8 [ %.sroa.018.3, %bb.ad ], [ %.sroa.021.0, %.body ]
  %.sroa.018.2 = phi i8 [ %.sroa.018.3, %bb.ad ], [ %.sroa.018.0, %.body ]
  %.pn38 = phi { ptr, i32 } [ %i.bs, %bb.ad ], [ %.pn, %.body ] ; 2 uses
  %cond = icmp eq i8 %.sroa.018.2, 0
  br i1 %cond, label %bb.aj, label %bb.ah

bb.ad:                                            ; preds = %bb.ac, %bb.p
  %.sroa.018.3 = phi i8 [ 1, %bb.p ], [ 0, %bb.ac ] ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEEB1g_.exit: ; preds = %bb.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit42
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 416, i64 noundef 8) #22
  ret void

bb.ae:                                            ; preds = %bb.c
  %.sroa.07.0.copyload = load i8, ptr %i.h, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.69.0..sroa_idx, i64 7, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.633.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.814.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %.sroa.07.0.copyload, ptr %0, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit42: ; preds = %bb.p
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEEB1g_.exit unwind label %bb.af

common.resume:                                    ; preds = %bb.al, %bb.aj, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %bb.af ], [ %.pn38, %bb.aj ], [ %.pn38, %bb.al ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 416, i64 noundef 8) #22
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit42
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ag:                                            ; preds = %bb.ai, %.body, %bb.al, %bb.ak, %.noexc48
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1168, !nonnull !7, !noundef !7
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1168
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ai, label %.noexc48

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #25
          to label %.noexc48 unwind label %bb.ag

.noexc48:                                         ; preds = %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bz) #24
          to label %bb.ak unwind label %bb.ag

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit, %bb.ak
  %i.ca = trunc nuw i8 %.sroa.021.2 to i1
  br i1 %i.ca, label %bb.al, label %common.resume

bb.ak:                                            ; preds = %.noexc48
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.cb) #24
          to label %bb.aj unwind label %bb.ag

bb.al:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %common.resume unwind label %bb.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm12aead_key_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !15, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len(ptr noalias nofree readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, 17
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [13 x i8], align 1                ; 5 uses
  %i.c = alloca [13 x i8], align 1                ; 6 uses
  %i.d = alloca [5 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [12 x i8], align 1                ; 6 uses
  %i.g = alloca [12 x i8], align 1                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [12 x i8], align 1                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = load ptr, ptr %2, align 8, !noundef !7
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sub i64 %i.m, %i.o
  %.sroa.0.0 = select i1 %.not, i64 %i.o, i64 %i.p
  %i.q = add i64 %.sroa.0.0, 17                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.r, i64 noundef 8)
          to label %bb.c unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.s, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.s, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.thr_comm, %bb.s ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %common.resume unwind label %bb.t

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1190
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull readonly dereferenceable(12) %i.t, ptr noundef nonnull readonly %i.v)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !1191, !noalias !1190, !noundef !7 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val6.i.i = load i64, ptr %i.x, align 8, !alias.scope !1191, !noalias !1190, !noundef !7 ; 6 uses
  %i.y = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1192, !noalias !1190, !nonnull !7, !noundef !7 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1192, !noalias !1190, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.ab = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %i.ac = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.ad = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %i.aa, %i.ad
  %bound1 = icmp ult ptr %i.ac, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.y, 28
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %index, %.val.i.i               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !1193, !noalias !1194
  %wide.load51 = load <16 x i8>, ptr %i.ai, align 1, !alias.scope !1193, !noalias !1194
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load52 = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !1195, !noalias !1196
  %wide.load53 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !1195, !noalias !1196
  %i.ak = xor <16 x i8> %wide.load52, %wide.load
  %i.al = xor <16 x i8> %wide.load53, %wide.load51
  store <16 x i8> %i.ak, ptr %i.ag, align 1, !alias.scope !1195, !noalias !1196
  store <16 x i8> %i.al, ptr %i.aj, align 1, !alias.scope !1195, !noalias !1196
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.y, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add i64 %index55, %.val.i.i             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.an
  %wide.load56 = load <4 x i8>, ptr %i.ap, align 1, !alias.scope !1193, !noalias !1194
  %wide.load57 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !1195, !noalias !1196
  %i.aq = xor <4 x i8> %wide.load57, %wide.load56
  store <4 x i8> %i.aq, ptr %i.ao, align 1, !alias.scope !1195, !noalias !1196
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.y, %n.vec54
  br i1 %cmp.n59, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ] ; 4 uses
  %4 = sub i64 %.val6.i.i, %.val.i.i
  %i.as = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.at = add i64 %.val6.i.i, %i.as
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.au = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.av = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.av
  %.val7.i.i.prol = load i8, ptr %i.ax, align 1, !noalias !1194, !noundef !7
  %i.ay = load i8, ptr %i.aw, align 1, !alias.scope !1197, !noalias !1194, !noundef !7
  %i.az = xor i8 %i.ay, %.val7.i.i.prol
  store i8 %i.az, ptr %i.aw, align 1, !alias.scope !1197, !noalias !1194
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
  %.val7.i.i = load i8, ptr %i.bd, align 1, !noalias !1194, !noundef !7
  %i.be = load i8, ptr %i.bc, align 1, !alias.scope !1197, !noalias !1194, !noundef !7
  %i.bf = xor i8 %i.be, %.val7.i.i
  store i8 %i.bf, ptr %i.bc, align 1, !alias.scope !1197, !noalias !1194
  %i.bg = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.bi, align 1, !noalias !1194, !noundef !7
  %i.bj = load i8, ptr %i.bh, align 1, !alias.scope !1197, !noalias !1194, !noundef !7
  %i.bk = xor i8 %i.bj, %.val7.i.i.1
  store i8 %i.bk, ptr %i.bh, align 1, !alias.scope !1197, !noalias !1194
  %exitcond.not.i.i.1 = icmp eq i64 %i.bg, %i.y
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1186

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.e unwind label %bb.s

bb.d:                                             ; preds = %bb.l, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load i8, ptr %i.bl, align 8, !range !34, !noundef !7
  switch i8 %i.bm, label %default.unreachable46 [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable46:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bo = load i8, ptr %i.bn, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.018.0 = phi i8 [ %i.bo, %bb.j ], [ 21, %bb.f ], [ 22, %bb.g ], [ 23, %bb.h ], [ 24, %bb.i ], [ 20, %bb.e ]
  store i8 %.sroa.018.0, ptr %i.h, align 1
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload17extend_from_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bp, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.bq = trunc i64 %i.q to i40                   ; 2 uses
  %i.br = shl i40 %i.bq, 16
  %.sroa.035.3.insert.shift = and i40 %i.br, 4278190080
  %.sroa.035.4.insert.ext = shl i40 %i.bq, 32
  %.sroa.035.3.insert.insert = or disjoint i40 %.sroa.035.3.insert.shift, %.sroa.035.4.insert.ext
  %.sroa.035.4.insert.insert = or disjoint i40 %.sroa.035.3.insert.insert, 197399
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val38 = load ptr, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i40 %.sroa.035.4.insert.insert, ptr %i.d, align 8, !noalias !1198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1198
  store i8 1, ptr %i.b, align 1, !noalias !1198
  invoke fastcc void @_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_(ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.c, ptr %.val, ptr readonly %.val38, ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc39 unwind label %bb.d

.noexc39:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1198
  %i.bu = load i8, ptr %i.c, align 1, !range !6, !noalias !1198, !noundef !7
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.bw, i64 12, i1 false), !noalias !1198
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.a)
          to label %bb.q unwind label %bb.d

bb.n:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 3, ptr %.sroa.612.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %bb.k, %.loopexit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtB5_6sealed12SecureRandom9fill_impl(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs222MioR9bx1_9aws_lc_rs4rand4fill(ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.01.1 = phi i8 [ 0, %bb.o ], [ 1, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.at = trunc nuw i8 %.sroa.01.1 to i1
  br label %bb.l

bb.r:                                             ; preds = %bb.s, %bb.l
  br i1 %.sroa.01.0, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.01.0, label %.thread49, label %bb.ai

bb.u:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b) #24
          to label %.thread49.thread unwind label %bb.ag

bb.v:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b)
          to label %.thread58 unwind label %bb.f

.thread58:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit, %bb.r
  ret void

bb.x:                                             ; preds = %bb.r
  %cond = icmp eq i8 %.sroa.03.2, 0
  br i1 %cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit, label %bb.y

bb.y:                                             ; preds = %.thread58, %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1217, !nonnull !7, !noundef !7
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !1217
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.z, label %.noexc20

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #25
          to label %.noexc20 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.ah unwind label %bb.ag

.noexc20:                                         ; preds = %bb.z, %bb.y
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc20
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i, %bb.x
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  br label %bb.w

bb.ac:                                            ; preds = %.noexc20
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.bc) #24
          to label %.sink.split unwind label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.bc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ak, %bb.al, %.noexc24, %bb.aj, %bb.ah, %bb.aa, %bb.u
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ah:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.ab ], [ %i.ba, %bb.aa ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.bi) #24
          to label %.sink.split unwind label %bb.ag

.sink.split:                                      ; preds = %bb.ah, %bb.ad, %bb.af, %bb.al, %.thread49
  %.merged.ph = phi { ptr, i32 } [ %.merged6468, %bb.al ], [ %.merged64, %.thread49 ], [ %.pn, %bb.ah ], [ %i.bg, %bb.af ], [ %i.be, %bb.ad ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.t
  %.merged = phi { ptr, i32 } [ %i.au, %bb.t ], [ %.merged.ph, %.sink.split ]
  resume { ptr, i32 } %.merged

.thread35:                                        ; preds = %bb.i, %.thread41
  %eh.lpad-body40 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread41 ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.03.1.lpad-body39 = phi i8 [ 1, %.thread41 ], [ 0, %bb.i ] ; 2 uses
  %i.bj = load i64, ptr %3, align 8, !range !19, !noundef !7 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bj, -9223372036854775804
  br i1 %i.bl, label %.thread49, label %bb.aj

bb.aj:                                            ; preds = %.thread35
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3) #24
          to label %.thread49 unwind label %bb.ag

.thread49:                                        ; preds = %bb.aj, %.thread35, %bb.t
  %.sroa.03.555 = phi i8 [ %.sroa.03.2, %bb.t ], [ %.sroa.03.1.lpad-body39, %.thread35 ], [ %.sroa.03.1.lpad-body39, %bb.aj ]
  %.merged64 = phi { ptr, i32 } [ %i.au, %bb.t ], [ %eh.lpad-body40, %.thread35 ], [ %eh.lpad-body40, %bb.aj ] ; 2 uses
  %cond15 = icmp eq i8 %.sroa.03.555, 0
  br i1 %cond15, label %.sink.split, label %.thread49.thread

.thread49.thread:                                 ; preds = %bb.u, %bb.f, %.thread49
  %.merged6468 = phi { ptr, i32 } [ %.merged64, %.thread49 ], [ %i.av, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1220, !nonnull !7, !noundef !7
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !1220
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.ak, label %.noexc24

bb.ak:                                            ; preds = %.thread49.thread
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #25
          to label %.noexc24 unwind label %bb.ag

.noexc24:                                         ; preds = %bb.ak, %.thread49.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.al unwind label %bb.ag

bb.al:                                            ; preds = %.noexc24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.bq) #24
          to label %.sink.split unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [5 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = alloca [12 x i8], align 1                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.k, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1243
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull readonly dereferenceable(12) %i.j, ptr noundef nonnull readonly %i.m), !noalias !1244
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !1245, !noalias !1243, !noundef !7 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val6.i.i = load i64, ptr %i.o, align 8, !alias.scope !1245, !noalias !1243, !noundef !7 ; 6 uses
  %i.p = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1246, !noalias !1243, !nonnull !7, !noundef !7 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1246, !noalias !1243, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.s = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %i.t = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.u = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %i.r, %i.u
  %bound1 = icmp ult ptr %i.t, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.p, 28
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add i64 %index, %.val.i.i                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !alias.scope !1247, !noalias !1248
  %wide.load67 = load <16 x i8>, ptr %i.z, align 1, !alias.scope !1247, !noalias !1248
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load68 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !1249, !noalias !1250
  %wide.load69 = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !1249, !noalias !1250
  %i.ab = xor <16 x i8> %wide.load68, %wide.load
  %i.ac = xor <16 x i8> %wide.load69, %wide.load67
  store <16 x i8> %i.ab, ptr %i.x, align 1, !alias.scope !1249, !noalias !1250
  store <16 x i8> %i.ac, ptr %i.aa, align 1, !alias.scope !1249, !noalias !1250
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.p, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = add i64 %index71, %.val.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ae
  %wide.load72 = load <4 x i8>, ptr %i.ag, align 1, !alias.scope !1247, !noalias !1248
  %wide.load73 = load <4 x i8>, ptr %i.af, align 1, !alias.scope !1249, !noalias !1250
  %i.ah = xor <4 x i8> %wide.load73, %wide.load72
  store <4 x i8> %i.ah, ptr %i.af, align 1, !alias.scope !1249, !noalias !1250
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1237

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.p, %n.vec70
  br i1 %cmp.n75, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 4 uses
  %4 = sub i64 %.val6.i.i, %.val.i.i
  %i.aj = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ak = add i64 %.val6.i.i, %i.aj
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.al = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.am = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.am
  %.val7.i.i.prol = load i8, ptr %i.ao, align 1, !noalias !1248, !noundef !7
  %i.ap = load i8, ptr %i.an, align 1, !alias.scope !1251, !noalias !1248, !noundef !7
  %i.aq = xor i8 %i.ap, %.val7.i.i.prol
  store i8 %i.aq, ptr %i.an, align 1, !alias.scope !1251, !noalias !1248
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ak, %.val.i.i
  br i1 %i.ar, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.ax, %vec.epilog.scalar.ph ] ; 3 uses
  %i.as = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.as
  %.val7.i.i = load i8, ptr %i.au, align 1, !noalias !1248, !noundef !7
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !1251, !noalias !1248, !noundef !7
  %i.aw = xor i8 %i.av, %.val7.i.i
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !1251, !noalias !1248
  %i.ax = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.az, align 1, !noalias !1248, !noundef !7
  %i.ba = load i8, ptr %i.ay, align 1, !alias.scope !1251, !noalias !1248, !noundef !7
  %i.bb = xor i8 %i.ba, %.val7.i.i.1
  store i8 %i.bb, ptr %i.ay, align 1, !alias.scope !1251, !noalias !1248
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, %i.p
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !1238

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bc = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  %i.bd = trunc i64 %i.h to i40                   ; 2 uses
  %i.be = shl i40 %i.bd, 16
  %.sroa.061.3.insert.shift = and i40 %i.be, 4278190080
  %.sroa.061.4.insert.ext = shl i40 %i.bd, 32
  %.sroa.061.3.insert.insert = or disjoint i40 %.sroa.061.3.insert.shift, %.sroa.061.4.insert.ext
  %.sroa.061.4.insert.insert = or disjoint i40 %.sroa.061.3.insert.insert, 197399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i40 %.sroa.061.4.insert.insert, ptr %i.b, align 8, !noalias !1252
  %i.bf = call fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 1 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  %i.bi = extractvalue { ptr, i64 } %i.bf, 1
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len(ptr noalias nofree readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, 17
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [13 x i8], align 1                ; 5 uses
  %i.c = alloca [13 x i8], align 1                ; 6 uses
  %i.d = alloca [5 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [12 x i8], align 1                ; 6 uses
  %i.g = alloca [12 x i8], align 1                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [12 x i8], align 1                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = load ptr, ptr %2, align 8, !noundef !7
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sub i64 %i.m, %i.o
  %.sroa.0.0 = select i1 %.not, i64 %i.o, i64 %i.p
  %i.q = add i64 %.sroa.0.0, 17                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.r, i64 noundef 8)
          to label %bb.c unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.s, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.s, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.thr_comm, %bb.s ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %common.resume unwind label %bb.t

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1274
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull readonly dereferenceable(12) %i.t, ptr noundef nonnull readonly %i.v)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !1275, !noalias !1274, !noundef !7 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val6.i.i = load i64, ptr %i.x, align 8, !alias.scope !1275, !noalias !1274, !noundef !7 ; 6 uses
  %i.y = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1276, !noalias !1274, !nonnull !7, !noundef !7 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1276, !noalias !1274, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.ab = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %i.ac = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.ad = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %i.aa, %i.ad
  %bound1 = icmp ult ptr %i.ac, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.y, 28
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %index, %.val.i.i               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !1277, !noalias !1278
  %wide.load51 = load <16 x i8>, ptr %i.ai, align 1, !alias.scope !1277, !noalias !1278
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load52 = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !1279, !noalias !1280
  %wide.load53 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !1279, !noalias !1280
  %i.ak = xor <16 x i8> %wide.load52, %wide.load
  %i.al = xor <16 x i8> %wide.load53, %wide.load51
  store <16 x i8> %i.ak, ptr %i.ag, align 1, !alias.scope !1279, !noalias !1280
  store <16 x i8> %i.al, ptr %i.aj, align 1, !alias.scope !1279, !noalias !1280
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.y, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add i64 %index55, %.val.i.i             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.an
  %wide.load56 = load <4 x i8>, ptr %i.ap, align 1, !alias.scope !1277, !noalias !1278
  %wide.load57 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !1279, !noalias !1280
  %i.aq = xor <4 x i8> %wide.load57, %wide.load56
  store <4 x i8> %i.aq, ptr %i.ao, align 1, !alias.scope !1279, !noalias !1280
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1269

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.y, %n.vec54
  br i1 %cmp.n59, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ] ; 4 uses
  %4 = sub i64 %.val6.i.i, %.val.i.i
  %i.as = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.at = add i64 %.val6.i.i, %i.as
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.au = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.av = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.av
  %.val7.i.i.prol = load i8, ptr %i.ax, align 1, !noalias !1278, !noundef !7
  %i.ay = load i8, ptr %i.aw, align 1, !alias.scope !1281, !noalias !1278, !noundef !7
  %i.az = xor i8 %i.ay, %.val7.i.i.prol
  store i8 %i.az, ptr %i.aw, align 1, !alias.scope !1281, !noalias !1278
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
  %.val7.i.i = load i8, ptr %i.bd, align 1, !noalias !1278, !noundef !7
  %i.be = load i8, ptr %i.bc, align 1, !alias.scope !1281, !noalias !1278, !noundef !7
  %i.bf = xor i8 %i.be, %.val7.i.i
  store i8 %i.bf, ptr %i.bc, align 1, !alias.scope !1281, !noalias !1278
  %i.bg = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.bi, align 1, !noalias !1278, !noundef !7
  %i.bj = load i8, ptr %i.bh, align 1, !alias.scope !1281, !noalias !1278, !noundef !7
  %i.bk = xor i8 %i.bj, %.val7.i.i.1
  store i8 %i.bk, ptr %i.bh, align 1, !alias.scope !1281, !noalias !1278
  %exitcond.not.i.i.1 = icmp eq i64 %i.bg, %i.y
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1270

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.e unwind label %bb.s

bb.d:                                             ; preds = %bb.l, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load i8, ptr %i.bl, align 8, !range !34, !noundef !7
  switch i8 %i.bm, label %default.unreachable46 [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable46:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bo = load i8, ptr %i.bn, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.018.0 = phi i8 [ %i.bo, %bb.j ], [ 21, %bb.f ], [ 22, %bb.g ], [ 23, %bb.h ], [ 24, %bb.i ], [ 20, %bb.e ]
  store i8 %.sroa.018.0, ptr %i.h, align 1
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload17extend_from_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bp, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.bq = trunc i64 %i.q to i40                   ; 2 uses
  %i.br = shl i40 %i.bq, 16
  %.sroa.035.3.insert.shift = and i40 %i.br, 4278190080
  %.sroa.035.4.insert.ext = shl i40 %i.bq, 32
  %.sroa.035.3.insert.insert = or disjoint i40 %.sroa.035.3.insert.shift, %.sroa.035.4.insert.ext
  %.sroa.035.4.insert.insert = or disjoint i40 %.sroa.035.3.insert.insert, 197399
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val38 = load ptr, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i40 %.sroa.035.4.insert.insert, ptr %i.d, align 8, !noalias !1282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1282
  store i8 1, ptr %i.b, align 1, !noalias !1282
  invoke fastcc void @_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_(ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.c, ptr %.val, ptr readonly %.val38, ptr noalias nofree noundef align 1 captures(address) dereferenceable(13) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc39 unwind label %bb.d

.noexc39:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1282
  %i.bu = load i8, ptr %i.c, align 1, !range !6, !noalias !1282, !noundef !7
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.bw, i64 12, i1 false), !noalias !1282
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.a)
          to label %bb.q unwind label %bb.d

bb.n:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 3, ptr %.sroa.612.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %bb.k, %.loopexit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4i_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102
  %i.is = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.is)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i unwind label %bb.du

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i: ; preds = %bb.du, %bb.dt
  %.pn.i103 = phi { ptr, i32 } [ %i.iu, %bb.du ], [ %i.iq, %bb.dt ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.it)
          to label %.body105 unwind label %bb.dv

bb.du:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.iv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i, %bb.dt
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108 unwind label %.split161.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dz

.body.thread:                                     ; preds = %.thread.i, %bb.cw, %bb.cq, %bb.aa, %.body.thread158
  %eh.lpad-body151 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread158 ], [ %i.he, %bb.cq ], [ %.pn48.i, %bb.aa ], [ %.pn488.i, %.thread.i ], [ %i.hi, %bb.cw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #24
          to label %.body98 unwind label %bb.do

bb.dx:                                            ; preds = %.split.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit
  %.pn47160 = phi { ptr, i32 } [ %i.io, %.split.thread ], [ %.pn45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.al) #24
          to label %.body105 unwind label %bb.do

bb.dy:                                            ; preds = %bb.t
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.ai) #24
          to label %.body105 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.as)
          to label %bb.dw unwind label %bb.e

bb.dz:                                            ; preds = %bb.eb, %bb.dw
  %.sroa.021.4 = phi i8 [ 0, %bb.dw ], [ 1, %bb.eb ] ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110 unwind label %bb.dk

bb.ea:                                            ; preds = %.split161, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit
  %.pn51162 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp164, %.split161 ], [ %.pn49, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.as) #24
          to label %.body74 unwind label %bb.do

bb.eb:                                            ; preds = %bb.c
  %.sroa.07.0.copyload = load i8, ptr %i.au, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.69.0..sroa_idx, i64 7, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.638.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.814.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i8 %.sroa.07.0.copyload, ptr %0, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.dz

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110: ; preds = %bb.dz
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !1348, !nonnull !7, !noundef !7
  %i.ja = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !noalias !1348
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112

bb.ec:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iy) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.ee unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110, %bb.ec
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %.pn57 = phi { ptr, i32 } [ %i.je, %bb.ef ], [ %i.jc, %bb.ed ] ; 2 uses
  %i.jd = trunc nuw i8 %.sroa.021.4 to i1
  br i1 %i.jd, label %bb.el, label %.body115

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112
  %i.jf = trunc nuw i8 %.sroa.021.4 to i1
  br i1 %i.jf, label %bb.eh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.jh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.jg) #24
          to label %.body115 unwind label %bb.ej

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113: ; preds = %bb.eh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.jg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body115

bb.el:                                            ; preds = %bb.ee
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.jl) #24
          to label %.body115 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit, %bb.dj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.em unwind label %bb.do

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit
  %i.jm = trunc nuw i8 %.sroa.021.2 to i1
  br i1 %i.jm, label %bb.en, label %.body115

bb.en:                                            ; preds = %bb.em
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.jn) #24
          to label %.body115 unwind label %bb.do
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca [5 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = alloca [12 x i8], align 1                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs5codec7put_u64(i64 noundef %3, ptr noalias nofree noundef nonnull %i.k, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1371
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull readonly dereferenceable(12) %i.j, ptr noundef nonnull readonly %i.m), !noalias !1372
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !1373, !noalias !1371, !noundef !7 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val6.i.i = load i64, ptr %i.o, align 8, !alias.scope !1373, !noalias !1371, !noundef !7 ; 6 uses
  %i.p = sub i64 %.val6.i.i, %.val.i.i            ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1374, !noalias !1371, !nonnull !7, !noundef !7 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1374, !noalias !1371, !nonnull !7, !noundef !7 ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.s = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %i.t = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.u = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %i.r, %i.u
  %bound1 = icmp ult ptr %i.t, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.p, 28
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add i64 %index, %.val.i.i                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !alias.scope !1375, !noalias !1376
  %wide.load67 = load <16 x i8>, ptr %i.z, align 1, !alias.scope !1375, !noalias !1376
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load68 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !1377, !noalias !1378
  %wide.load69 = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !1377, !noalias !1378
  %i.ab = xor <16 x i8> %wide.load68, %wide.load
  %i.ac = xor <16 x i8> %wide.load69, %wide.load67
  store <16 x i8> %i.ab, ptr %i.x, align 1, !alias.scope !1377, !noalias !1378
  store <16 x i8> %i.ac, ptr %i.aa, align 1, !alias.scope !1377, !noalias !1378
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.p, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = add i64 %index71, %.val.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ae
  %wide.load72 = load <4 x i8>, ptr %i.ag, align 1, !alias.scope !1375, !noalias !1376
  %wide.load73 = load <4 x i8>, ptr %i.af, align 1, !alias.scope !1377, !noalias !1378
  %i.ah = xor <4 x i8> %wide.load73, %wide.load72
  store <4 x i8> %i.ah, ptr %i.af, align 1, !alias.scope !1377, !noalias !1378
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1365

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.p, %n.vec70
  br i1 %cmp.n75, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 4 uses
  %4 = sub i64 %.val6.i.i, %.val.i.i
  %i.aj = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ak = add i64 %.val6.i.i, %i.aj
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.al = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.am = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.am
  %.val7.i.i.prol = load i8, ptr %i.ao, align 1, !noalias !1376, !noundef !7
  %i.ap = load i8, ptr %i.an, align 1, !alias.scope !1379, !noalias !1376, !noundef !7
  %i.aq = xor i8 %i.ap, %.val7.i.i.prol
  store i8 %i.aq, ptr %i.an, align 1, !alias.scope !1379, !noalias !1376
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %i.ar = icmp eq i64 %i.ak, %.val.i.i
  br i1 %i.ar, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.ax, %vec.epilog.scalar.ph ] ; 3 uses
  %i.as = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.as
  %.val7.i.i = load i8, ptr %i.au, align 1, !noalias !1376, !noundef !7
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !1379, !noalias !1376, !noundef !7
  %i.aw = xor i8 %i.av, %.val7.i.i
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !1379, !noalias !1376
  %i.ax = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.az, align 1, !noalias !1376, !noundef !7
  %i.ba = load i8, ptr %i.ay, align 1, !alias.scope !1379, !noalias !1376, !noundef !7
  %i.bb = xor i8 %i.ba, %.val7.i.i.1
  store i8 %i.bb, ptr %i.ay, align 1, !alias.scope !1379, !noalias !1376
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, %i.p
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !1366

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bc = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  %i.bd = trunc i64 %i.h to i40                   ; 2 uses
  %i.be = shl i40 %i.bd, 16
  %.sroa.061.3.insert.shift = and i40 %i.be, 4278190080
  %.sroa.061.4.insert.ext = shl i40 %i.bd, 32
  %.sroa.061.3.insert.insert = or disjoint i40 %.sroa.061.3.insert.shift, %.sroa.061.4.insert.ext
  %.sroa.061.4.insert.insert = or disjoint i40 %.sroa.061.3.insert.insert, 197399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i40 %.sroa.061.4.insert.insert, ptr %i.b, align 8, !noalias !1380
  %i.bf = call fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 1 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  %i.bi = extractvalue { ptr, i64 } %i.bf, 1
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_8AcceptorNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1168 x i8]) align 8 captures(none) dereferenceable(1168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [840 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 -2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState3new(ptr noalias nofree noundef nonnull sret([840 x i8]) align 8 captures(none) dereferenceable(840) %i.a, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE3newB7_(ptr noalias nofree noundef nonnull sret([1080 x i8]) align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @155, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(840) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 1, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 65536, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.012.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i64 0, ptr %.sroa.012.sroa.6.0..sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.012.sroa.8.sroa.4.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.8.sroa.4.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.8.sroa.5.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.sroa.8.sroa.5.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20ServerConnectionDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.b) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EEB1g_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull @155) #24
          to label %.critedge unwind label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_9AcceptingINtNtB9_12common_state5StateNtB5_20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @155, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf16expander_for_okm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !15, !noundef !7 ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMsa_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_3Prk13new_less_safe(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.b, ptr %i.f, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1383
  %i.g = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 96, i64 noundef range(i64 1, 9) 8) #22, !noalias !1383 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderE3newBM_.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #27
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderE3newBM_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @156, 1
  ret { ptr, ptr } %i.l
end_hunk_3
