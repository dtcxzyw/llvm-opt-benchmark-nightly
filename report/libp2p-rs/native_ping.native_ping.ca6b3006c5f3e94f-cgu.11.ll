Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.11?download=true
inline.NumInlined: 3374
inline.NumDeleted: 1483
begin_hunk_0_@_RNCNvMs2_NtCs4wN8za6y8UK_7soketto10connectionINtB7_6SenderINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBV_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1X_6server9TlsStreamB2I_EEB2I_EE5flush0Cshnt8FRa5Rut_11native_ping:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  %i.h = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.i = icmp ult i64 %i.h, 6
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 4
  br i1 %i.j, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECshnt8FRa5Rut_11native_ping.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtCs4wN8za6y8UK_7soketto10connectionNtB4_2IdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @24, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 19, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @24, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 19, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @85, ptr %i.p, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshnt8FRa5Rut_11native_ping(ptr noundef nonnull @84, ptr noundef nonnull %i.d, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.o, %bb.c, %bb.j, %bb.y
  %.pn14 = phi { ptr, i32 } [ %i.ap, %bb.y ], [ %.pn12, %bb.o ], [ %i.k, %bb.c ], [ %i.u, %bb.j ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn14

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = invoke noundef align 8 ptr @_RNvXsc_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_13BiLockAcquireINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1C_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2g_6server9TlsStreamB31_EEB31_EEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECshnt8FRa5Rut_11native_ping.exit

bb.k:                                             ; preds = %bb.i
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %common.ret, label %bb.l

common.ret:                                       ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit, %bb.r, %bb.k
  %.sroa.025.0.sink = phi i8 [ -2, %bb.r ], [ -2, %bb.k ], [ %.sroa.025.0, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit ]
  %.sink = phi i8 [ 4, %bb.r ], [ 3, %bb.k ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit ]
  store i8 %.sroa.025.0.sink, ptr %0, align 8
  store i8 %.sink, ptr %i.e, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.w, align 8
  %i.x = invoke noundef nonnull align 8 ptr @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store ptr %i.x, ptr %i.s, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.q, %bb.m, %bb.x
  %.pn12 = phi { ptr, i32 } [ %i.an, %bb.x ], [ %i.y, %bb.m ], [ %i.ac, %bb.q ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECshnt8FRa5Rut_11native_ping.exit unwind label %bb.z

bb.p:                                             ; preds = %bb.n, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = invoke { i64, ptr } @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util2io5flushINtB5_5FlushINtNtB7_5split9WriteHalfINtNtNtB9_6future6either6EitherIB1l_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1Z_6server9TlsStreamB2K_EEB2K_EEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.ad = extractvalue { i64, ptr } %i.ab, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %common.ret, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = extractvalue { i64, ptr } %i.ab, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 13, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7268
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable29 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i
    i64 1, label %bb.w
  ], !prof !36

bb.v:                                             ; preds = %bb.u
  %i.ai = icmp ult ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i

bb.w:                                             ; preds = %bb.u
  %i.al = getelementptr i8, ptr %i.af, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !7269, !noalias !7268
  store i8 3, ptr %i.a, align 8, !alias.scope !7269, !noalias !7268
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7268
  br label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i, %bb.t
  %.sroa.025.0 = phi i8 [ 13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping.exit.i ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %common.ret unwind label %bb.y

bb.y:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECshnt8FRa5Rut_11native_ping.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECshnt8FRa5Rut_11native_ping.exit

bb.z:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs2_NtCs4wN8za6y8UK_7soketto10connectionINtB7_6SenderINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBV_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1X_6server9TlsStreamB2I_EEB2I_EE5write0Cshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !49, !noundef !14
  switch i8 %i.b, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i32, ptr %i.e, align 8, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.h = load i8, ptr %i.g, align 4, !range !27, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3 = load <2 x ptr>, ptr %i.d, align 8
  %4 = insertelement <4 x ptr> poison, ptr %i.c, i64 0
  %5 = shufflevector <4 x ptr> %4, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %6 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x ptr> %5, <4 x ptr> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %8 = getelementptr inbounds nuw i8, <4 x ptr> %7, <4 x i64> <i64 40, i64 24, i64 0, i64 0>
  store <4 x ptr> %8, ptr %i.i, align 8
  %.sroa.1114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.c, ptr %.sroa.1114.0..sroa_idx, align 8
  %.sroa.1215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.f, ptr %.sroa.1215.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 %i.h, ptr %.sroa.15.0..sroa_idx, align 1
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECshnt8FRa5Rut_11native_ping.exit7: ; preds = %bb.f, %bb.k, %bb.j
  %.pn4 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.k, %bb.f ], [ %i.k, %bb.k ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBL_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1N_6server9TlsStreamB2y_EEB2y_EE0Cshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i8, ptr %i.l, align 8, !range !52, !noundef !14
  %i.n = icmp samesign ugt i8 %i.m, 3
  br i1 %i.n, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECshnt8FRa5Rut_11native_ping.exit7

bb.g:                                             ; preds = %bb.e
  %i.o = load i8, ptr %0, align 8, !range !66, !noundef !14
  %i.p = icmp eq i8 %i.o, -2
  br i1 %i.p, label %common.ret, label %bb.h

common.ret:                                       ; preds = %bb.g, %bb.i, %bb.h
  %storemerge = phi i8 [ 1, %bb.i ], [ 1, %bb.h ], [ 3, %bb.g ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i8, ptr %i.q, align 8, !range !52, !noundef !14
  %i.s = icmp samesign ugt i8 %i.r, 3
  br i1 %i.s, label %bb.i, label %common.ret

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %common.ret unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECshnt8FRa5Rut_11native_ping.exit7

bb.k:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECshnt8FRa5Rut_11native_ping.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCshuexzQAPOo_12libp2p_noise2io9handshakeINtB6_5StateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE6finishs0_0Cshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @90)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECshnt8FRa5Rut_11native_ping.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.d, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.e, ptr %.sroa.56.0..sroa_idx, align 8
  store i8 9, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCshuexzQAPOo_12libp2p_noise2io9handshakeINtB6_5StateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE6finishs0_0Cshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @90)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECshnt8FRa5Rut_11native_ping.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.d, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.e, ptr %.sroa.56.0..sroa_idx, align 8
  store i8 9, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB6_3MapINtNtB8_6choice11OrTransportIBQ_INtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1Z_INtCsknXHD0xsxtc_16libp2p_websocket6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB3O_8provider5tokio3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENCINvMB1y_INtB1y_7BuilderB2s_E12authenticateINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtB2v_15BytesConnectionNtB4q_9TcpStreamEEINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB7M_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBb3_12UpgradeErrorE0ENCINvMs1_B1y_INtB1y_13AuthenticatedB2n_E9multiplexB9d_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB9V_B9d_EENtBd2_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCNCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase9websocketINtBeV_12SwarmBuilderNtNtBeT_8provider5TokioINtBeR_14WebsocketPhaseINtNtB8_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBa_6muxing5boxed14StreamMuxerBoxEEEE14with_websocketNvMBb3_Bb1_3newB9d_BbK_NvYBdL_NtNtBe4_7default7Default7defaultBcZ_BdY_E00EBgL_ENCBeI_s_0ENtB8_9Transport4poll0Cshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(200) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @94, ptr noundef nonnull inttoptr (i64 125 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #32
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core6either12EitherFutureINtNtNtBG_9transport3map9MapFutureINtNtB1x_8and_then13AndThenFutureIB21_IB1t_INtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCsknXHD0xsxtc_16libp2p_websocket6framed10ConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4A_5error5ErrorINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEENtNtB4_6marker4SendEL_EEFB4v_NtNtBG_10connection14ConnectedPointEINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtB4A_15BytesConnectionB5p_EEENCINvMNtB1x_7upgradeINtBa5_7BuilderINtB4A_6ConfigINtB6J_9TransportINtB5v_9TransportNtB5r_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEE12authenticateB8J_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB8J_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBfQ_12UpgradeErrorE0INtBa5_12AuthenticateB8J_BfO_EENCINvMs1_Ba5_INtBa5_13AuthenticatedINtB23_7AndThenBay_B9Z_EE9multiplexBe0_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIBeI_Be0_EENtBiD_6ConfigB7f_E0INtBa5_9MultiplexBe0_Bjm_EENCNCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase9websocketINtBkl_12SwarmBuilderNtNtBkj_8provider5TokioINtBkh_14WebsocketPhaseINtNtB1x_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBG_6muxing5boxed14StreamMuxerBoxEEEE14with_websocketNvMBfQ_BfO_3newBe0_Bgx_NvYBjm_NtNtB4_7default7Default7defaultBiA_B7f_E00EINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingIB4a_BmG_B7f_EEEECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %0) #33
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB6_3MapINtNtB8_6choice11OrTransportIBQ_INtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1Z_INtCsknXHD0xsxtc_16libp2p_websocket6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB3O_8provider5tokio3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENCINvMB1y_INtB1y_7BuilderB2s_E12authenticateINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtB2v_15BytesConnectionNtB4q_9TcpStreamEEINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB7M_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBb3_12UpgradeErrorE0ENCINvMs1_B1y_INtB1y_13AuthenticatedB2n_E9multiplexB9d_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIB9V_B9d_EENtNtBd2_6config6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCNCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase9websocketINtBf8_12SwarmBuilderNtNtBf6_8provider5TokioINtBf4_14WebsocketPhaseINtNtB8_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBa_6muxing5boxed14StreamMuxerBoxEEEE14with_websocketNvMBb3_Bb1_3newB9d_BbK_NvYBdP_NtNtBeh_7default7Default7defaultBcZ_Beb_E00EBgY_ENCBeV_s_0ENtB8_9Transport4poll0Cshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(208) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @94, ptr noundef nonnull inttoptr (i64 125 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #32
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core6either12EitherFutureINtNtNtBG_9transport3map9MapFutureINtNtB1x_8and_then13AndThenFutureIB21_IB1t_INtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCsknXHD0xsxtc_16libp2p_websocket6framed10ConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4A_5error5ErrorINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEENtNtB4_6marker4SendEL_EEFB4v_NtNtBG_10connection14ConnectedPointEINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtB4A_15BytesConnectionB5p_EEENCINvMNtB1x_7upgradeINtBa5_7BuilderINtB4A_6ConfigINtB6J_9TransportINtB5v_9TransportNtB5r_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEE12authenticateB8J_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB8J_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBfQ_12UpgradeErrorE0INtBa5_12AuthenticateB8J_BfO_EENCINvMs1_Ba5_INtBa5_13AuthenticatedINtB23_7AndThenBay_B9Z_EE9multiplexBe0_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIBeI_Be0_EENtNtBiD_6config6ConfigB7f_E0INtBa5_9MultiplexBe0_Bjq_EENCNCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase9websocketINtBky_12SwarmBuilderNtNtBkw_8provider5TokioINtBku_14WebsocketPhaseINtNtB1x_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBG_6muxing5boxed14StreamMuxerBoxEEEE14with_websocketNvMBfQ_BfO_3newBe0_Bgx_NvYBjq_NtNtB4_7default7Default7defaultBiA_B7f_E00EINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingIB4a_BmT_B7f_EEEECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %0) #33
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

end_hunk_0
