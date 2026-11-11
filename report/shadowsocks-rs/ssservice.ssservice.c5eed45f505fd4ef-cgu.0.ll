Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice:bb.a
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %.split10
  %i.az = getelementptr i8, ptr %i.k, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  store ptr %i.az, ptr %i.g, align 8, !alias.scope !40561, !noalias !40560
  store i8 3, ptr %i.a, align 8, !alias.scope !40561, !noalias !40560
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52, !noalias !40560
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40560
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40573
  store ptr %i.c, ptr %i.b, align 8, !noalias !40573
  store i64 32, ptr %i.d, align 8, !noalias !40573
  store i64 0, ptr %i.e, align 8, !noalias !40573
  store i64 32, ptr %i.f, align 8, !noalias !40573
  %i.h = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !40574 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 9 uses
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40573
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !noalias !40573, !noundef !177 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !40573, !noundef !177 ; 10 uses
  %.not7.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not7.i, label %bb.e, label %bb.g, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !40574
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.j to i64                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40573
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split12
    i64 1, label %.split10
  ], !prof !290

default.unreachable:                              ; preds = %bb.f
  unreachable

.split:                                           ; preds = %bb.f
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !177, !noundef !177
  %i.u = call noundef zeroext i1 %i.t(i32 noundef %i.q) #52, !inline_history !81
  br i1 %i.u, label %.thread14, label %.loopexit

.split12:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !291, !noundef !177
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread14, label %.loopexit

.split10:                                         ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.j, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !291, !noundef !177
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.l, label %.loopexit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.f, %.thread
  %i.ab = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread ], [ %i.j, %bb.f ] ; 2 uses
  %.sroa.4.1.i.ph7 = phi i64 [ 55834574851, %.thread ], [ %i.n, %bb.f ] ; 2 uses
  %i.ac = lshr i64 %.sroa.4.1.i.ph7, 32
  %i.ad = icmp ult ptr %i.ab, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.af, label %bb.k, label %.loopexit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40573
  %i.ag = inttoptr i64 %i.m to ptr
  %i.ah = icmp ult i64 %i.m, 33
  br i1 %i.ah, label %bb.h, label %bb.j, !prof !200

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !40575)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !40576, !noundef !177 ; 5 uses
  %i.ak = load i64, ptr %0, align 8, !range !179, !alias.scope !40576, !noundef !177
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.m, %i.al
  br i1 %i.am, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aj, i64 noundef %i.m, i64 noundef 1, i64 noundef 1) #52
  %i.an = load i64, ptr %i.ai, align 8, !alias.scope !40575, !noundef !177 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.h
  %i.ap = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i3 = icmp eq i64 %i.m, 0
  br i1 %.not.i3, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.aq = phi i64 [ %i.an, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !40575, !nonnull !177, !noundef !177
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.c, i64 %i.m, i1 false), !noalias !40575
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.av = add nuw i64 %i.au, %i.m
  store i64 %i.av, ptr %i.ai, align 8, !alias.scope !40575
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #62
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split12, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.3.0 = phi ptr [ %i.ag, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ %i.j, %.split12 ], [ %i.j, %.split10 ], [ %i.ab, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.j, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ 1, %.split12 ], [ 1, %.split10 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ax = insertvalue { i64, ptr } %i.aw, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ax

.thread14:                                        ; preds = %.split, %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40577
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40577
  %i.ay = and i64 %.sroa.4.1.i.ph7, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %.split10
  %i.ba = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40577
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %i.g, align 8, !alias.scope !40578, !noalias !40577
  store i8 3, ptr %i.a, align 8, !alias.scope !40578, !noalias !40577
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52, !noalias !40577
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40577
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = call fastcc { i64, ptr } @_RNvXs4_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read4readCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #52 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit
  %2 = phi ptr [ %i.e, %.lr.ph ], [ %i.av, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit ] ; 10 uses
  %3 = ptrtoint ptr %2 to i64                     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.h = and i64 %3, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split6
    i64 1, label %.split5
  ], !prof !230

default.unreachable:                              ; preds = %bb.b
  unreachable

.split:                                           ; preds = %bb.b
  %i.i = lshr i64 %3, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !177, !noundef !177
  %i.n = call noundef zeroext i1 %i.m(i32 noundef %i.j) #52, !inline_history !81
  br i1 %i.n, label %.thread, label %.loopexit

.split6:                                          ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !291, !noundef !177
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %.loopexit

.split5:                                          ; preds = %bb.b
  %i.r = getelementptr i8, ptr %2, i64 31
  %i.s = load i8, ptr %i.r, align 8, !range !291, !noundef !177
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.g, label %.loopexit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.b
  %i.u = lshr i64 %3, 32
  %i.v = icmp ult ptr %2, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.u to i8
  %spec.select.i.i.i = select i1 %i.v, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.w = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.x, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.a
  %.lcssa10 = phi ptr [ %i.e, %bb.a ], [ %i.av, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit ] ; 4 uses
  %.lcssa = ptrtoint ptr %.lcssa10 to i64         ; 5 uses
  %i.y = icmp ult ptr %.lcssa10, inttoptr (i64 33 to ptr)
  br i1 %i.y, label %bb.c, label %bb.e, !prof !200

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !40587)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !40588, !noundef !177 ; 5 uses
  %i.ab = load i64, ptr %1, align 8, !range !179, !alias.scope !40588, !noundef !177
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ult i64 %i.ac, %.lcssa
  br i1 %i.ad, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.c
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aa, i64 noundef %.lcssa, i64 noundef 1, i64 noundef 1) #52
  %i.ae = load i64, ptr %i.z, align 8, !alias.scope !40587, !noundef !177 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  br label %bb.d

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.c
  %i.ag = icmp sgt i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ag)
  %.not.i = icmp eq ptr %.lcssa10, null
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.ah = phi i64 [ %i.ae, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %i.aa, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !40587, !nonnull !177, !noundef !177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.b, i64 %.lcssa, i1 false), !noalias !40587
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %i.aa, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.am = add i64 %i.al, %.lcssa
  store i64 %i.am, ptr %i.z, align 8, !alias.scope !40587
  br label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #62
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split5, %.split6, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit
  %i.an = phi ptr [ %.lcssa10, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ %2, %.split6 ], [ %2, %.split5 ], [ %2, %.split ], [ %2, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ 1, %.split6 ], [ 1, %.split5 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ap = insertvalue { i64, ptr } %i.ao, ptr %i.an, 1
  ret { i64, ptr } %i.ap

.thread:                                          ; preds = %.split, %.split6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40589
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40589
  %i.aq = and i64 %3, 1095216660480
  %i.ar = icmp ne i64 %i.aq, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.ar)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %.split5
  %i.as = getelementptr i8, ptr %2, i64 -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40589
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  store ptr %i.as, ptr %i.g, align 8, !alias.scope !40590, !noalias !40589
  store i8 3, ptr %i.a, align 8, !alias.scope !40590, !noalias !40589
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52, !noalias !40589
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.f, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40589
  %i.at = call fastcc { i64, ptr } @_RNvXs4_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read4readCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #52 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1      ; 2 uses
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = call fastcc { i64, ptr } @_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #52 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit
  %2 = phi ptr [ %i.f, %.lr.ph ], [ %i.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit ] ; 10 uses
  %3 = ptrtoint ptr %2 to i64                     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.i = and i64 %3, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split6
    i64 1, label %.split5
  ], !prof !230

default.unreachable:                              ; preds = %bb.b
  unreachable

.split:                                           ; preds = %bb.b
  %i.j = lshr i64 %3, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !177, !noundef !177
  %i.o = call noundef zeroext i1 %i.n(i32 noundef %i.k) #52, !inline_history !81
  br i1 %i.o, label %.thread, label %.loopexit

.split6:                                          ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !291, !noundef !177
  %i.r = icmp eq i8 %i.q, 35
  br i1 %i.r, label %.thread, label %.loopexit

.split5:                                          ; preds = %bb.b
  %i.s = getelementptr i8, ptr %2, i64 31
  %i.t = load i8, ptr %i.s, align 8, !range !291, !noundef !177
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %bb.g, label %.loopexit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.b
  %i.v = lshr i64 %3, 32
  %i.w = icmp ult ptr %2, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.v to i8
  %spec.select.i.i.i = select i1 %i.w, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.x = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.y, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.a
  %.lcssa10 = phi ptr [ %i.f, %bb.a ], [ %i.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit ] ; 4 uses
  %.lcssa = ptrtoint ptr %.lcssa10 to i64         ; 5 uses
  %i.z = icmp ult ptr %.lcssa10, inttoptr (i64 33 to ptr)
  br i1 %i.z, label %bb.c, label %bb.e, !prof !200

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !40599)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !40600, !noundef !177 ; 5 uses
  %i.ac = load i64, ptr %1, align 8, !range !179, !alias.scope !40600, !noundef !177
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ult i64 %i.ad, %.lcssa
  br i1 %i.ae, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.c
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ab, i64 noundef %.lcssa, i64 noundef 1, i64 noundef 1) #52
  %i.af = load i64, ptr %i.aa, align 8, !alias.scope !40599, !noundef !177 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  br label %bb.d

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.c
  %i.ah = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ah)
  %.not.i = icmp eq ptr %.lcssa10, null
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.ai = phi i64 [ %i.af, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %i.ab, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !40599, !nonnull !177, !noundef !177
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.b, i64 %.lcssa, i1 false), !noalias !40599
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %i.ab, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.an = add i64 %i.am, %.lcssa
  store i64 %i.an, ptr %i.aa, align 8, !alias.scope !40599
  br label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #62
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split5, %.split6, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit
  %i.ao = phi ptr [ %.lcssa10, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ %2, %.split6 ], [ %2, %.split5 ], [ %2, %.split ], [ %2, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ 1, %.split6 ], [ 1, %.split5 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ap = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aq = insertvalue { i64, ptr } %i.ap, ptr %i.ao, 1
  ret { i64, ptr } %i.aq

.thread:                                          ; preds = %.split, %.split6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40601
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40601
  %i.ar = and i64 %3, 1095216660480
  %i.as = icmp ne i64 %i.ar, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.as)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %.split5
  %i.at = getelementptr i8, ptr %2, i64 -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40601
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  store ptr %i.at, ptr %i.h, align 8, !alias.scope !40602, !noalias !40601
  store i8 3, ptr %i.a, align 8, !alias.scope !40602, !noalias !40601
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #52, !noalias !40601
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.f, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40601
  %i.au = call fastcc { i64, ptr } @_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #52 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1
  br i1 %i.ax, label %bb.b, label %._crit_edge
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !177 ; 2 uses
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 5 uses
  %.not = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.e, %i.g
  %i.h = add i64 %i.d, %2                         ; 2 uses
  %.not22 = icmp ult i64 %i.h, %i.f
  %i.i = select i1 %.not22, i64 0, i64 %i.f
  %.sroa.05.0 = sub nuw i64 %i.h, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !177 ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 3 uses
  %.not23 = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not23, i64 0, i64 %i.m
  %.sroa.05.2 = sub nuw i64 %i.l, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val = phi i64 [ %i.m, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.05.1 = phi i64 [ %.sroa.05.2, %bb.c ], [ %.sroa.05.0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %i.k, %bb.c ], [ %.sroa.04.0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %2, %bb.c ], [ %3, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.o, align 8
  tail call fastcc void @_RNvMs2_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE9wrap_copyCsgZAIVb0XKpv_9ssservice(i64 %.val, ptr %.val24, i64 noundef %.sroa.04.1, i64 noundef %.sroa.05.1, i64 noundef %.sroa.0.0) #52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net7ip_addr6IpAddrNtNtBh_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !177 ; 2 uses
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 5 uses
  %.not = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.e, %i.g
  %i.h = add i64 %i.d, %2                         ; 2 uses
  %.not22 = icmp ult i64 %i.h, %i.f
  %i.i = select i1 %.not22, i64 0, i64 %i.f
  %.sroa.05.0 = sub nuw i64 %i.h, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !177 ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 3 uses
  %.not23 = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not23, i64 0, i64 %i.m
  %.sroa.05.2 = sub nuw i64 %i.l, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val = phi i64 [ %i.m, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.05.1 = phi i64 [ %.sroa.05.2, %bb.c ], [ %.sroa.05.0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %i.k, %bb.c ], [ %.sroa.04.0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %2, %bb.c ], [ %3, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.o, align 8
  tail call fastcc void @_RNvMs2_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE9wrap_copyCsgZAIVb0XKpv_9ssservice(i64 %.val, ptr %.val24, i64 noundef %.sroa.04.1, i64 noundef %.sroa.05.1, i64 noundef %.sroa.0.0) #52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtNtBh_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !177 ; 2 uses
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 5 uses
  %.not = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.e, %i.g
  %i.h = add i64 %i.d, %2                         ; 2 uses
  %.not22 = icmp ult i64 %i.h, %i.f
  %i.i = select i1 %.not22, i64 0, i64 %i.f
  %.sroa.05.0 = sub nuw i64 %i.h, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !177 ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 3 uses
  %.not23 = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not23, i64 0, i64 %i.m
  %.sroa.05.2 = sub nuw i64 %i.l, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val = phi i64 [ %i.m, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.05.1 = phi i64 [ %.sroa.05.2, %bb.c ], [ %.sroa.05.0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %i.k, %bb.c ], [ %.sroa.04.0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %2, %bb.c ], [ %3, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.o, align 8
  tail call fastcc void @_RNvMs2_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE9wrap_copyCsgZAIVb0XKpv_9ssservice(i64 %.val, ptr %.val24, i64 noundef %.sroa.04.1, i64 noundef %.sroa.05.1, i64 noundef %.sroa.0.0) #52
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingyNtNtBh_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !177 ; 2 uses
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 5 uses
  %.not = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.e, %i.g
  %i.h = add i64 %i.d, %2                         ; 2 uses
  %.not22 = icmp ult i64 %i.h, %i.f
  %i.i = select i1 %.not22, i64 0, i64 %i.f
  %.sroa.05.0 = sub nuw i64 %i.h, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !177 ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 3 uses
  %.not23 = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not23, i64 0, i64 %i.m
  %.sroa.05.2 = sub nuw i64 %i.l, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val = phi i64 [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.05.1 = phi i64 [ %.sroa.05.2, %bb.c ], [ %.sroa.05.0, %bb.b ] ; 9 uses
  %.sroa.04.1 = phi i64 [ %i.k, %bb.c ], [ %.sroa.04.0, %bb.b ] ; 9 uses
  %.sroa.0.0 = phi i64 [ %2, %bb.c ], [ %3, %bb.b ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.o, align 8           ; 30 uses
  %i.p = icmp eq i64 %.sroa.04.1, %.sroa.05.1
  br i1 %i.p, label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE9wrap_copyCsgZAIVb0XKpv_9ssservice.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sub i64 %.sroa.05.1, %.sroa.04.1         ; 2 uses
  %i.r = add i64 %.val, %i.q                      ; 2 uses
  %.not.i = icmp ult i64 %i.r, %.val
  %..i = select i1 %.not.i, i64 %i.r, i64 %i.q
  %i.s = icmp ult i64 %..i, %.sroa.0.0            ; 2 uses
  %i.t = sub i64 %.val, %.sroa.04.1               ; 11 uses
  %i.u = sub i64 %.val, %.sroa.05.1               ; 11 uses
  %i.v = icmp ult i64 %i.t, %.sroa.0.0
  %i.w = icmp ult i64 %i.u, %.sroa.0.0            ; 3 uses
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.sroa.04.1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.sroa.05.1
  %i.z = shl nuw nsw i64 %.sroa.0.0, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.z, i1 false)
  br label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE9wrap_copyCsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.k, label %bb.j

end_hunk_0
