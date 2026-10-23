Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.11?download=true
inline.NumInlined: 756
inline.NumDeleted: 245
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1318fill_in_psk_binder:bb.a
  store ptr %i.y, ptr %i.z, align 8, !noalias !712
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.ab unwind label %bb.e

bb.h:                                             ; preds = %bb.w, %bb.z, %bb.i
  %.pn7 = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ax, %bb.z ], [ %eh.lpad-body, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !713
  store ptr %i.e, ptr %i.a, align 8, !noalias !713
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !noalias !713
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.thread unwind label %bb.aa

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  br label %bb.ae

bb.i:                                             ; preds = %bb.l, %bb.o, %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val13 = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val13, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.g, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !714, !noundef !5 ; 7 uses
  %i.ah = icmp ult i64 %i.ag, 65
  br i1 %i.ah, label %bb.m, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ag, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.c, align 8, !range !11, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !12, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #30
          to label %bb.x unwind label %bb.i

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp samesign ule i64 %i.ag, %i.al
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not4 = icmp eq i64 %i.ag, 0
  br i1 %.not4, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 8 %i.e, i64 %i.ag, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  store i64 %i.al, ptr %i.d, align 8, !alias.scope !715
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !715
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !715
  %i.aq = getelementptr inbounds nuw i8, ptr %.val13, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val13, i64 208
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %.not5 = icmp eq i64 %i.at, 0
  br i1 %.not5, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8NtBE_8NonEmptyEEBI_.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8NtBE_8NonEmptyEEBI_.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEBH_.exit unwind label %bb.y

bb.v:                                             ; preds = %bb.r
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %bb.x unwind label %bb.z

bb.w:                                             ; preds = %bb.y, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.y ], [ %i.au, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.h

bb.x:                                             ; preds = %bb.v, %bb.o
  unreachable

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8NtBE_8NonEmptyEEBI_.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8NtBE_8NonEmptyEEBI_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.z:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.h unwind label %bb.aa

bb.aa:                                            ; preds = %bb.h, %bb.ae, %bb.z, %bb.b
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ab:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %.pn7.pn.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.ab
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ae:                                            ; preds = %.thread21, %.thread
  %.pn7.pn20 = phi { ptr, i32 } [ %.pn7, %.thread ], [ %i.t, %.thread21 ]
  %.val14 = load ptr, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val15 = load ptr, ptr %i.bb, align 8, !nonnull !5, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_(ptr %.val14, ptr nonnull %.val15) #27
          to label %bb.b unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1318prepare_resumption(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef align 8 dereferenceable(560) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = load ptr, ptr %2, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 688
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 696
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.n = load i32, ptr %i.m, align 4, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 339
  %i.p = load i8, ptr %i.o, align 1, !range !6, !noundef !5
  %5 = trunc nuw i8 %i.p to i1
  %6 = icmp ne i32 %i.n, 0
  %or.cond = and i1 %6, %5
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = or i1 %4, %or.cond.not
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.v = icmp ugt i64 %i.u, 4294967295
  br i1 %i.v, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !8, !noundef !5
  %i.y = zext i32 %i.n to i64
  tail call void @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB5_9EarlyData6enable(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 551
  store i8 1, ptr %i.z, align 1
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.aa = trunc nuw i64 %i.u to i32
  %i.ab = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aa, i32 1000)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.02.0 = phi { i32, i1 } [ %i.ab, %bb.d ], [ { i32 -1000, i1 true }, %bb.b ] ; 2 uses
  %i.ac = extractvalue { i32, i1 } %.sroa.02.0, 0
  %i.ad = extractvalue { i32, i1 } %.sroa.02.0, 1
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.03.0 = phi i32 [ -1, %bb.f ], [ %i.ac, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5
  %i.ag = add i32 %i.af, %.sroa.03.0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !8, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  %i.an = tail call noundef i64 %i.am(ptr noundef nonnull %i.ai) #32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !718
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.an, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !718
  %i.ao = load i64, ptr %i.a, align 8, !range !11, !noalias !718, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !12, !noalias !718, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.h, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.as, align 8, !noalias !718
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #30, !noalias !718
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.g
  %i.au = load ptr, ptr %i.as, align 8, !noalias !718, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !718
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !718
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !718
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.an, ptr %i.aw, align 8, !alias.scope !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.bc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit
  %i.bd = load i64, ptr %i.b, align 8, !range !11, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !12, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.be, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.bi = load i64, ptr %i.bh, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #30
          to label %bb.o unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = icmp ule i64 %i.bc, %i.bg
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  store i64 %i.bg, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bj, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bc, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.ag, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMst_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_17PresharedKeyOffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bm)
          to label %bb.n unwind label %.thread

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.l

.thread:                                          ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.o:                                             ; preds = %bb.j
  unreachable

bb.p:                                             ; preds = %.thread, %bb.q
  %.pn12 = phi { ptr, i32 } [ %i.bn, %.thread ], [ %lpad.thr_comm, %bb.q ]
  resume { ptr, i32 } %.pn12

bb.q:                                             ; preds = %bb.j, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #27
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1319handle_server_hello(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(64) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %4, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %9, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240) %10, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(416) %11) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [544 x i8], align 8               ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [168 x i8], align 8               ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 5 uses
  %i.q = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.661 = alloca [64 x i8], align 8          ; 3 uses
  %.sroa.466 = alloca [40 x i8], align 8          ; 2 uses
  %i.r = alloca [240 x i8], align 8               ; 4 uses
  %i.s = alloca [112 x i8], align 8               ; 7 uses
  %i.t = alloca [240 x i8], align 8               ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 2 uses
  %i.x = alloca [128 x i8], align 8               ; 7 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [64 x i8], align 8               ; 4 uses
  %i.ab = alloca [64 x i8], align 8               ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [128 x i8], align 8              ; 15 uses
  %i.ag = alloca [32 x i8], align 8               ; 13 uses
  %i.ah = alloca [80 x i8], align 8               ; 10 uses
  %i.ai = alloca [152 x i8], align 8              ; 11 uses
  %i.aj = alloca [8 x i8], align 8                ; 11 uses
  %i.ak = alloca [64 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.al = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 16 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1319handle_server_hello:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 408
  %i.au = load i8, ptr %i.at, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %11, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aw = load i64, ptr %i.ai, align 8, !range !13, !noundef !5
  %cond199 = icmp eq i64 %i.aw, -1
  br i1 %cond199, label %bb.k, label %bb.j

bb.f:                                             ; preds = %_RNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1321validate_server_hello.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.al, i8 noundef 25, i8 undef, i8 noundef 31)
          to label %bb.g unwind label %bb.gq

bb.g:                                             ; preds = %bb.f
  %.sroa.014.0.copyload = load i8, ptr %i.h, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4111.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.616.0..sroa_idx, i64 7, i1 false)
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.618.0.copyload = load ptr, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.821.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %.sroa.014.0.copyload, ptr %0, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.618.0.copyload, ptr %.sroa.5112.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 328 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !772, !nonnull !5, !noundef !5
  %i.az = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !772
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit unwind label %bb.fg

bb.j:                                             ; preds = %bb.e
  store i64 -1, ptr %i.af, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %i.bb, i64 128, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bc = getelementptr i8, ptr %.val216, i64 72  ; 2 uses
  %.val223 = load i16, ptr %i.bc, align 8         ; 5 uses
  %i.bd = getelementptr i8, ptr %.val216, i64 74  ; 2 uses
  %.val224 = load i16, ptr %i.bd, align 2         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !5, !alias.scope !773, !nonnull !5
  %i.bg = invoke { i16, i16 } %i.bf(ptr noundef nonnull %7)
          to label %bb.n unwind label %bb.m, !noalias !774 ; 2 uses

bb.m:                                             ; preds = %bb.aa, %bb.o, %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_(ptr nonnull %7, ptr nonnull readonly align 8 dereferenceable(80) %8) #27
          to label %.thread364 unwind label %bb.ad, !noalias !775

bb.n:                                             ; preds = %bb.l
  %i.bi = extractvalue { i16, i16 } %i.bg, 0
  %i.bj = icmp eq i16 %i.bi, %.val223
  br i1 %i.bj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !774
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !alias.scope !773, !nonnull !5
  invoke void %i.bl(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %7)
          to label %bb.q unwind label %bb.m, !noalias !774

bb.p:                                             ; preds = %bb.n
  %i.bm = extractvalue { i16, i16 } %i.bg, 1
  %i.bn = icmp ne i16 %.val223, 15
  %i.bo = icmp eq i16 %i.bm, %.val224
  %or.cond.i = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new.exit, label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.bp = load i16, ptr %i.b, align 8, !range !776, !noalias !774, !noundef !5 ; 2 uses
  %.not.i = icmp eq i16 %i.bp, -1
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.431.0.copyload.i = load i16, ptr %.sroa.431.0..sroa_idx.i, align 2, !noalias !774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !774
  %i.bq = icmp eq i16 %i.bp, %.val223
  br i1 %i.bq, label %bb.z, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !774
  br label %bb.t

bb.t:                                             ; preds = %bb.ab, %bb.z, %bb.s, %bb.r
  %i.br = load ptr, ptr %8, align 8, !invariant.load !5, !alias.scope !773 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.br(ptr noundef nonnull %7)
          to label %bb.v unwind label %bb.x, !noalias !774

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !9, !invariant.load !5, !alias.scope !773 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !15, !invariant.load !5, !alias.scope !773
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef range(i64 1, -9223372036854775808) %i.bt, i64 noundef range(i64 1, 536870913) %i.bw) #29, !noalias !774
  br label %bb.af

bb.x:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !9, !invariant.load !5, !alias.scope !773 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.thread364, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !15, !invariant.load !5, !alias.scope !773
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef range(i64 1, -9223372036854775808) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #29, !noalias !774
  br label %.thread364

bb.z:                                             ; preds = %bb.r
  %i.cd = icmp ne i16 %.val223, 15
  %.not43.i = icmp eq i16 %.sroa.431.0.copyload.i, %.val224
  %or.cond46.i = select i1 %i.cd, i1 true, i1 %.not43.i
  br i1 %or.cond46.i, label %bb.aa, label %bb.t

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.cf = invoke { ptr, ptr } @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig13find_kx_group(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ce, i16 noundef %.val223, i16 %.sroa.431.0.copyload.i, i16 noundef 5, i16 undef)
          to label %bb.ab unwind label %bb.m, !noalias !774 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %.not44.i = icmp eq ptr %i.cg, null
  br i1 %.not44.i, label %bb.t, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 704
  store i64 1, ptr %i.ci, align 8, !noalias !774
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 712
  store ptr %i.cg, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !774
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 720
  store ptr %i.ch, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !774
  br label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new.exit

bb.ad:                                            ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !774
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.thread364

bb.af:                                            ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.al, i8 noundef 13, i8 undef, i8 noundef 73)
          to label %bb.eu unwind label %bb.ae

_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new.exit: ; preds = %bb.p, %bb.ac
  %i.cl = phi i1 [ false, %bb.ac ], [ true, %bb.p ]
  %.sroa.0297.0 = phi i64 [ 1, %bb.ac ], [ 0, %bb.p ] ; 2 uses
  store i64 %.sroa.0297.0, ptr %i.ae, align 8
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %7, ptr %.sroa.4330.0..sroa_idx, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %8, ptr %.sroa.5331.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val216, i64 176
  %i.cn = load i16, ptr %i.cm, align 8, !range !777, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %.val216, i64 178
  %i.cp = load i16, ptr %i.co, align 2
  %.sroa.0310.0.copyload = load ptr, ptr %6, align 8 ; 10 uses
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4311.0.copyload = load ptr, ptr %.sroa.4311.0..sroa_idx, align 8 ; 17 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %12 = trunc nuw i16 %i.cn to i1
  %.not155 = icmp ne ptr %.sroa.0310.0.copyload, null ; 3 uses
  %or.cond.not = select i1 %12, i1 %.not155, i1 false
  br i1 %or.cond.not, label %bb.ag, label %bb.bw

bb.ag:                                            ; preds = %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new.exit
  %i.cq = load i64, ptr %i.af, align 8, !range !7, !noundef !5
  %.not157 = icmp eq i64 %i.cq, -1
  br i1 %.not157, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5, !align !8, !noundef !5
  %i.ct = invoke noundef align 8 ptr @_RNvMNtCs7ZUl82OSlxp_6rustls5tls13NtB2_16Tls13CipherSuite15can_resume_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cs)
          to label %bb.ak unwind label %bb.aj     ; 3 uses

bb.ai:                                            ; preds = %bb.ag
  store i8 9, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 55, ptr %.sroa.446.0..sroa_idx, align 1
  br label %bb.at

bb.aj:                                            ; preds = %bb.bb, %bb.az, %bb.ao, %bb.am, %bb.ah
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4311.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_(ptr nonnull %.sroa.0310.0.copyload, ptr nonnull %.sroa.4311.0.copyload) #27
          to label %.thread459 unwind label %bb.bg

bb.ak:                                            ; preds = %bb.ah
  %.not158 = icmp eq ptr %i.ct, null
  br i1 %.not158, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !range !23, !noundef !5
  %.off = add nsw i8 %i.cy, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.an, label %bb.ar

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.al, i8 noundef 13, i8 undef, i8 noundef 46)
          to label %bb.bf unwind label %bb.aj

bb.an:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.da = load i16, ptr %i.cz, align 8, !range !778, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 74
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dd = load i16, ptr %i.dc, align 8, !range !778, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.df = icmp eq i16 %i.da, %i.dd
  br i1 %i.df, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.al, i8 noundef 13, i8 undef, i8 noundef 11)
          to label %bb.as unwind label %bb.aj

bb.ap:                                            ; preds = %bb.an
  %i.dg = icmp eq i16 %i.da, 376
  br i1 %i.dg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dh = load i16, ptr %i.db, align 2, !noundef !5
  %i.di = load i16, ptr %i.de, align 2, !noundef !5
  %.not159 = icmp eq i16 %i.dh, %i.di
  br i1 %.not159, label %bb.ar, label %bb.ao

bb.ar:                                            ; preds = %bb.al, %bb.ap, %bb.aq
  %i.dj = icmp eq i16 %i.cp, 0
  br i1 %i.dj, label %bb.ba, label %bb.az

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.at

bb.at:                                            ; preds = %bb.bf, %bb.be, %bb.as, %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4311.0.copyload) ]
  %i.dk = load ptr, ptr %.sroa.4311.0.copyload, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void %i.dk(ptr noundef nonnull %.sroa.0310.0.copyload)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !15, !invariant.load !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0310.0.copyload, i64 noundef range(i64 1, -9223372036854775808) %i.dm, i64 noundef range(i64 1, 536870913) %i.dp) #29
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit

bb.ax:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.thread459, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !15, !invariant.load !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0310.0.copyload, i64 noundef range(i64 1, -9223372036854775808) %i.ds, i64 noundef range(i64 1, 536870913) %i.dv) #29
  br label %.thread459

bb.az:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.al, i8 noundef 13, i8 undef, i8 noundef 48)
          to label %bb.be unwind label %bb.aj

bb.ba:                                            ; preds = %bb.ar
  %i.dw = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 6
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ugt i64 %i.dw, 3
  br i1 %i.dy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @16, ptr %i.z, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 21, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr @16, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 21, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr @15, ptr %i.ec, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 37 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.z)
          to label %bb.bd unwind label %bb.aj

bb.bc:                                            ; preds = %bb.ba, %bb.bd
  store ptr %.sroa.0310.0.copyload, ptr %i.ad, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.4311.0.copyload, ptr %.sroa.4333.0..sroa_idx, align 8
  %.sroa.5334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5334.0..sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bc

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263: ; preds = %bb.cl, %bb.ck, %bb.bc, %bb.ch
  %i.ed = phi ptr [ %i.fs, %bb.cl ], [ %i.fs, %bb.ck ], [ %i.cw, %bb.bc ], [ %i.fs, %bb.ch ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 704 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !range !779, !noundef !5
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.cp, label %bb.cq

bb.be:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.at

bb.bf:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.at

bb.bg:                                            ; preds = %bb.gs, %bb.gr, %bb.fn, %bb.fh, %.thread391, %bb.gw, %.thread428, %bb.gv, %bb.aj, %bb.et, %bb.gy, %bb.gu, %bb.gt, %.thread, %.noexc293, %bb.gp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit, %.body282, %bb.fl, %.thread520, %.thread507, %bb.fk, %bb.fj, %.thread364, %.thread459, %bb.ek, %bb.dm, %.thread419, %bb.di
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume.i.i252:                             ; preds = %bb.cc, %bb.ce, %bb.bh
  %eh.lpad-body256 = phi { ptr, i32 } [ %i.ei, %bb.bh ], [ %i.fz, %bb.ce ], [ %i.fw, %bb.cc ] ; 2 uses
  br i1 %.not155, label %bb.et, label %.thread459

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i254, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit258, %bb.by, %bb.bx
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i252

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ej = load ptr, ptr %8, align 8, !invariant.load !5, !noalias !780 ; 3 uses
  %.not.i.i243 = icmp eq ptr %i.ej, null          ; 2 uses
  br i1 %i.cl, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit
  br i1 %.not.i.i243, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void %i.ej(ptr noundef nonnull %7)
          to label %bb.bk unwind label %bb.bl, !noalias !780

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !9, !invariant.load !5, !noalias !780 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.sink.split.i

bb.bl:                                            ; preds = %bb.bj
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !9, !invariant.load !5, !noalias !780 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %.thread364, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.bp, %bb.bl
  %.sink.i = phi i64 [ %i.ey, %bb.bp ], [ %i.ep, %bb.bl ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ew, %bb.bp ], [ %i.en, %bb.bl ]
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !15, !invariant.load !5, !noalias !780
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef range(i64 1, -9223372036854775808) %.sink.i, i64 noundef range(i64 1, 536870913) %i.es) #29, !noalias !780
  br label %.thread364

bb.bm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit
  br i1 %.not.i.i243, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void %i.ej(ptr noundef nonnull %7)
          to label %bb.bo unwind label %bb.bp, !noalias !780

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !range !9, !invariant.load !5, !noalias !780 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.sink.split.i

bb.bp:                                            ; preds = %bb.bn
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !9, !invariant.load !5, !noalias !780 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.thread364, label %common.resume.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.sink.split.i: ; preds = %bb.bo, %bb.bk
  %.sink14.i = phi i64 [ %i.el, %bb.bk ], [ %i.eu, %bb.bo ]
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !15, !invariant.load !5, !noalias !780
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef range(i64 1, -9223372036854775808) %.sink14.i, i64 noundef range(i64 1, 536870913) %i.fb) #29, !noalias !780
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.sink.split.i, %bb.bo, %bb.bk, %bb.eu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule23KeySchedulePreHandshakeEBH_.exit
  %.sroa.087.4 = phi i8 [ 1, %bb.eu ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule23KeySchedulePreHandshakeEBH_.exit ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.sink.split.i ] ; 9 uses
  %.sroa.083.3 = phi i8 [ 1, %bb.eu ], [ %.sroa.083.13, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule23KeySchedulePreHandshakeEBH_.exit ], [ 1, %bb.bk ], [ 1, %bb.bo ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.sink.split.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.fc = load i64, ptr %i.af, align 8, !range !7, !alias.scope !781, !noundef !5
  %i.fd = icmp eq i64 %i.fc, -1
  br i1 %i.fd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1317KeyExchangeChoiceEBH_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist19ClientSessionCommonEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.af)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ff) #27
          to label %bb.fj unwind label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.fg = getelementptr inbounds nuw i8, ptr %i.af, i64 88 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %bb.fj unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bv:                                            ; preds = %bb.br
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit unwind label %bb.ev

bb.bw:                                            ; preds = %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice3new.exit
  %i.fk = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 6
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp samesign ugt i64 %i.fk, 3
  br i1 %i.fm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @16, ptr %i.y, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 21, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @16, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 21, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr @18, ptr %i.fq, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 25 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y)
          to label %bb.bz unwind label %bb.bh

bb.by:                                            ; preds = %bb.bw, %bb.bz
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !5, !align !8, !noundef !5 ; 4 uses
  invoke void @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB5_9EarlyData8rejected(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %bb.ca unwind label %bb.bh

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.by

bb.ca:                                            ; preds = %bb.by
  %i.ft = getelementptr inbounds nuw i8, ptr %i.al, i64 824
  store i8 0, ptr %i.ft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %i.af, i64 128, i1 false)
  store i64 -1, ptr %i.af, align 8
  %i.fu = load i64, ptr %i.x, align 8, !range !7, !alias.scope !782, !noundef !5
  %i.fv = icmp eq i64 %i.fu, -1
  br i1 %i.fv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit258, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist19ClientSessionCommonEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fx) #27
          to label %common.resume.i.i252 unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %i.fy = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i254 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %common.resume.i.i252 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.cg:                                            ; preds = %bb.cc
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i254: ; preds = %bb.cd
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit258 unwind label %bb.bh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit258: ; preds = %bb.ca, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEBH_.exit.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB4_23KeySchedulePreHandshake3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %4)
          to label %bb.ch unwind label %bb.bh

bb.ch:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls13ClientSessionValueEEB13_.exit258
  br i1 %.not155, label %bb.ci, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4311.0.copyload) ]
  %i.gc = load ptr, ptr %.sroa.4311.0.copyload, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i259, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  invoke void %i.gc(ptr noundef nonnull %.sroa.0310.0.copyload)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !range !15, !invariant.load !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0310.0.copyload, i64 noundef range(i64 1, -9223372036854775808) %i.ge, i64 noundef range(i64 1, 536870913) %i.gh) #29
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263

bb.cm:                                            ; preds = %bb.cj
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.thread391, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.4311.0.copyload, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !range !15, !invariant.load !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0310.0.copyload, i64 noundef range(i64 1, -9223372036854775808) %i.gk, i64 noundef range(i64 1, 536870913) %i.gn) #29
  br label %.thread391

.thread403:                                       ; preds = %bb.cr, %bb.cq
  %lpad.thr_comm401 = landingpad { ptr, i32 }
          cleanup
  br label %.thread391

bb.co:                                            ; preds = %bb.cs, %bb.dj
  %.sroa.083.5.ph = phi i8 [ %.sroa.083.7, %bb.dj ], [ 1, %bb.cs ]
  %lpad.thr_comm.split-lp402 = landingpad { ptr, i32 }
          cleanup
  br label %.thread364

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263
  store i64 2, ptr %i.ee, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule16KeyScheduleEarlyEBH_.exit263
  %i.go = getelementptr inbounds nuw i8, ptr %.val216, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !nonnull !5, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %.val216, i64 64
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !5
  %i.gs = trunc nuw i64 %.sroa.0297.0 to i1
  %..i = select i1 %i.gs, i64 48, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 %..i
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !5, !noalias !783, !nonnull !5
  invoke void %i.gu(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.gr) #32
          to label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete.exit unwind label %.thread403, !inline_history !736

_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete.exit: ; preds = %bb.cq
  %i.gv = load i8, ptr %i.d, align 8, !range !19, !noundef !5
  %.not161 = icmp eq i8 %i.gv, -1
  br i1 %.not161, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.al, i8 noundef 13, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f)
          to label %bb.em unwind label %.thread403

bb.cs:                                            ; preds = %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client5tls13NtB2_17KeyExchangeChoice8complete.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB4_23KeySchedulePreHandshake14into_handshake(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.ct unwind label %bb.co

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gx = load i64, ptr %10, align 8, !range !7, !noundef !5
  %.not162 = icmp eq i64 %i.gx, -1
  br i1 %.not162, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.t, ptr noundef nonnull align 8 dereferenceable(240) %10, i64 240, i1 false)
  %i.gy = load i64, ptr %9, align 8, !range !16, !noundef !5 ; 2 uses
  %i.gz = icmp ne i64 %i.gy, -9223372036854775807
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp slt i64 %i.gy, -9223372036854775803
  br i1 %i.ha, label %bb.cx, label %bb.cw, !prof !10

bb.cv:                                            ; preds = %bb.dd, %bb.ct
  %.sroa.083.6 = phi i8 [ 0, %bb.dd ], [ 1, %bb.ct ] ; 7 uses
  %i.hb = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 232
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !5, !noundef !5
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !range !15, !invariant.load !5
  %i.hi = add nsw i64 %i.hh, -1
  %i.hj = and i64 %i.hi, -16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.hm = load i8, ptr %i.ag, align 8, !range !6, !noundef !5
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.dn, label %bb.do

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.r, ptr noundef nonnull align 8 dereferenceable(240) %10, i64 240, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !nonnull !5, !noundef !5
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !5, !align !8, !noundef !5
  invoke void @_RNvMs3_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB5_8EchState18confirm_acceptance(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(240) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %9, ptr noundef nonnull %i.hp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hr)
          to label %bb.cz unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 153 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #30
          to label %bb.dk unwind label %bb.dm

bb.cy:                                            ; preds = %bb.cw
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.thread428

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ht = load i64, ptr %i.s, align 8, !range !13, !noundef !5 ; 3 uses
  %i.hu = icmp eq i64 %i.ht, -2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.661, ptr noundef nonnull align 8 dereferenceable(64) %i.hv, i64 64, i1 false)
  br i1 %i.hu, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.661, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dj

bb.db:                                            ; preds = %bb.cz
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.466, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5139.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not163 = icmp eq i64 %i.ht, -1
  br i1 %.not163, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.ht, ptr %i.q, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.661, i64 64, i1 false)
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.466.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.466, i64 40, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.hx = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %9)
          to label %bb.de unwind label %bb.di     ; 0 uses

bb.dd:                                            ; preds = %bb.db, %bb.dg
  %.sroa.058.0 = phi i8 [ 3, %bb.dg ], [ 4, %bb.db ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i8 %.sroa.058.0, ptr %i.hy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cv

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.hw, i64 56, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %5)
          to label %bb.df unwind label %.thread424

.thread424:                                       ; preds = %bb.de
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  br label %.thread419

bb.df:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ia, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ib)
          to label %bb.dg unwind label %bb.dh

end_hunk_1
