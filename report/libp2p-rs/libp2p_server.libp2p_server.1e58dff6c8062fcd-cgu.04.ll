Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.04?download=true
inline.NumInlined: 3278
inline.NumDeleted: 1334
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNCNvMs2_NtCs4wN8za6y8UK_7soketto10connectionINtB7_6SenderINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBV_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1X_6server9TlsStreamB2I_EEB2I_EE5flush0Cs2Bxje7pdMIr_13libp2p_server:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !16, !align !19, !noundef !16 ; 2 uses
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECs2Bxje7pdMIr_13libp2p_server.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtCs4wN8za6y8UK_7soketto10connectionNtB4_2IdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @5, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 19, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @5, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 19, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @126, ptr %i.p, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull @125, ptr noundef nonnull %i.d, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
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

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.o, %bb.c, %bb.j, %bb.y
  %.pn14 = phi { ptr, i32 } [ %i.ap, %bb.y ], [ %.pn12, %bb.o ], [ %i.k, %bb.c ], [ %i.u, %bb.j ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn14

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #40
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #40
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = invoke noundef align 8 ptr @_RNvXsc_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_13BiLockAcquireINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1C_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2g_6server9TlsStreamB31_EEB31_EEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECs2Bxje7pdMIr_13libp2p_server.exit

bb.k:                                             ; preds = %bb.i
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %common.ret, label %bb.l

common.ret:                                       ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit, %bb.r, %bb.k
  %.sroa.025.0.sink = phi i8 [ -2, %bb.r ], [ -2, %bb.k ], [ %.sroa.025.0, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit ]
  %.sink = phi i8 [ 4, %bb.r ], [ 3, %bb.k ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit ]
  store i8 %.sroa.025.0.sink, ptr %0, align 8
  store i8 %.sink, ptr %i.e, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.w, align 8
  %i.x = invoke noundef nonnull align 8 ptr @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
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
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.z

bb.p:                                             ; preds = %bb.n, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = invoke { i64, ptr } @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util2io5flushINtB5_5FlushINtNtB7_5split9WriteHalfINtNtNtB9_6future6either6EitherIB1l_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1Z_6server9TlsStreamB2K_EEB2K_EEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
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
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5856
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable29 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i
    i64 1, label %bb.w
  ], !prof !27

bb.v:                                             ; preds = %bb.u
  %i.ai = icmp ult ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i

bb.w:                                             ; preds = %bb.u
  %i.al = getelementptr i8, ptr %i.af, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !5857, !noalias !5856
  store i8 3, ptr %i.a, align 8, !alias.scope !5857, !noalias !5856
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5856
  br label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.t
  %.sroa.025.0 = phi i8 [ 13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit.i ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %common.ret unwind label %bb.y

bb.y:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtB5_2io5error5ErrorE2orNtNtCs4wN8za6y8UK_7soketto10connection5ErrorECs2Bxje7pdMIr_13libp2p_server.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock6bilock11BiLockGuardINtNtNtBI_2io5split9WriteHalfINtNtNtBI_6future6either6EitherIB23_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2H_6server9TlsStreamB3s_EEB3s_EEEECs2Bxje7pdMIr_13libp2p_server.exit

bb.z:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs2_NtCs4wN8za6y8UK_7soketto10connectionINtB7_6SenderINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBV_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1X_6server9TlsStreamB2I_EEB2I_EE5write0Cs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !56, !noundef !16
  switch i8 %i.b, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !16, !align !19, !noundef !16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i32, ptr %i.e, align 8, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.h = load i8, ptr %i.g, align 4, !range !62, !noundef !16
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %3, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.i, ptr %.sroa.811.0..sroa_idx, align 8
  %.sroa.912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %4 = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %4, ptr %.sroa.912.0..sroa_idx, align 8
  %.sroa.1114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.c, ptr %.sroa.1114.0..sroa_idx, align 8
  %.sroa.1215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.f, ptr %.sroa.1215.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 %i.h, ptr %.sroa.15.0..sroa_idx, align 1
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECs2Bxje7pdMIr_13libp2p_server.exit7: ; preds = %bb.f, %bb.k, %bb.j
  %.pn4 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.k, %bb.f ], [ %i.k, %bb.k ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #40
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #40
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBL_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1N_6server9TlsStreamB2y_EEB2y_EE0Cs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i8, ptr %i.l, align 8, !range !58, !noundef !16
  %i.n = icmp samesign ugt i8 %i.m, 3
  br i1 %i.n, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECs2Bxje7pdMIr_13libp2p_server.exit7

bb.g:                                             ; preds = %bb.e
  %i.o = load i8, ptr %0, align 8, !range !79, !noundef !16
  %i.p = icmp eq i8 %i.o, -2
  br i1 %i.p, label %common.ret, label %bb.h

common.ret:                                       ; preds = %bb.g, %bb.i, %bb.h
  %storemerge = phi i8 [ 1, %bb.i ], [ 1, %bb.h ], [ 3, %bb.g ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i8, ptr %i.q, align 8, !range !58, !noundef !16
  %i.s = icmp samesign ugt i8 %i.r, 3
  br i1 %i.s, label %bb.i, label %common.ret

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %common.ret unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECs2Bxje7pdMIr_13libp2p_server.exit7

bb.k:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util4lock6bilockINtB5_11BiLockGuardINtNtNtB9_2io5split9WriteHalfINtNtNtB9_6future6either6EitherIB1A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2e_6server9TlsStreamB2Z_EEB2Z_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs4wN8za6y8UK_7soketto10connection5writeINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1n_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2q_6server9TlsStreamB3b_EEB3b_EE0ECs2Bxje7pdMIr_13libp2p_server.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB6_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1E_8provider5tokio3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtCsdTHTBGblh3Z_11libp2p_core9transport9Transport4poll0Cs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXs_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB6_6ConfigpENtNtCsdTHTBGblh3Z_11libp2p_core9transport9Transport4poll10___CALLSITE, align 8, !nonnull !16, !align !19, !noundef !16
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXs_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB6_6ConfigpENtNtCsdTHTBGblh3Z_11libp2p_core9transport9Transport4poll10___CALLSITE, align 8, !nonnull !16, !align !19, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !16
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !16, !nonnull !16
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #39
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNCNvYNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketNtNtCs4LZN9PPmi2I_11hickory_net7runtime12DnsUdpSocket7send_to0Cs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !56, !noundef !16
  switch i8 %i.b, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.h, ptr %i.g, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.f, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #40
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #40
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = invoke { i64, ptr } @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvYNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketNtNtCs4LZN9PPmi2I_11hickory_net7runtime12DnsUdpSocket7send_to00ENtNtB7_6future6Future4pollCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.ret unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %i.k

common.ret:                                       ; preds = %bb.e
  %i.l = extractvalue { i64, ptr } %i.j, 0
  %i.m = icmp eq i64 %i.l, 2                      ; 2 uses
  %. = select i1 %i.m, i8 3, i8 1
  %.11 = select i1 %i.m, { i64, ptr } { i64 2, ptr undef }, { i64, ptr } %i.j
  store i8 %., ptr %i.a, align 8
  ret { i64, ptr } %.11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCsc13h7DQFCSE_5tokio3net3udp9UdpSocketNtNtCs4LZN9PPmi2I_11hickory_net7runtime12DnsUdpSocket9recv_from0Cs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !56, !noundef !16
  switch i8 %i.c, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !16
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs4wN8za6y8UK_7soketto9handshake6clientINtB2_6ClientINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBX_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1Z_6server9TlsStreamB2K_EEB2K_EE15decode_responseCs2Bxje7pdMIr_13libp2p_server:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !6292, !noalias !6293, !noundef !16
  %.not.i.i.i = icmp eq i64 %i.el, 8
  br i1 %.not.i.i.i, label %bb.ao, label %.loopexit.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.em = load ptr, ptr %i.ei, align 8, !alias.scope !6292, !noalias !6293, !nonnull !16, !noundef !16 ; 8 uses
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.eo = add i8 %i.en, -65
  %i.ep = icmp ult i8 %i.eo, 26
  %i.eq = select i1 %i.ep, i8 32, i8 0
  %.sroa.012.0.i.i.i.i = or i8 %i.eq, %i.en
  %i.er = icmp eq i8 %.sroa.012.0.i.i.i.i, 108
  br i1 %i.er, label %bb.ap, label %.loopexit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.eu = add i8 %i.et, -65
  %i.ev = icmp ult i8 %i.eu, 26
  %i.ew = select i1 %i.ev, i8 32, i8 0
  %.sroa.012.0.i.i.1.i.i = or i8 %i.ew, %i.et
  %i.ex = icmp eq i8 %.sroa.012.0.i.i.1.i.i, 111
  br i1 %i.ex, label %bb.aq, label %.loopexit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.fa = add i8 %i.ez, -65
  %i.fb = icmp ult i8 %i.fa, 26
  %i.fc = select i1 %i.fb, i8 32, i8 0
  %.sroa.012.0.i.i.2.i.i = or i8 %i.fc, %i.ez
  %i.fd = icmp eq i8 %.sroa.012.0.i.i.2.i.i, 99
  br i1 %i.fd, label %bb.ar, label %.loopexit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fe = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.fg = add i8 %i.ff, -65
  %i.fh = icmp ult i8 %i.fg, 26
  %i.fi = select i1 %i.fh, i8 32, i8 0
  %.sroa.012.0.i.i.3.i.i = or i8 %i.fi, %i.ff
  %i.fj = icmp eq i8 %.sroa.012.0.i.i.3.i.i, 97
  br i1 %i.fj, label %bb.as, label %.loopexit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.fm = add i8 %i.fl, -65
  %i.fn = icmp ult i8 %i.fm, 26
  %i.fo = select i1 %i.fn, i8 32, i8 0
  %.sroa.012.0.i.i.4.i.i = or i8 %i.fo, %i.fl
  %i.fp = icmp eq i8 %.sroa.012.0.i.i.4.i.i, 116
  br i1 %i.fp, label %bb.at, label %.loopexit.i.i

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.fs = add i8 %i.fr, -65
  %i.ft = icmp ult i8 %i.fs, 26
  %i.fu = select i1 %i.ft, i8 32, i8 0
  %.sroa.012.0.i.i.5.i.i = or i8 %i.fu, %i.fr
  %i.fv = icmp eq i8 %.sroa.012.0.i.i.5.i.i, 105
  br i1 %i.fv, label %bb.au, label %.loopexit.i.i

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.fy = add i8 %i.fx, -65
  %i.fz = icmp ult i8 %i.fy, 26
  %i.ga = select i1 %i.fz, i8 32, i8 0
  %.sroa.012.0.i.i.6.i.i = or i8 %i.ga, %i.fx
  %i.gb = icmp eq i8 %.sroa.012.0.i.i.6.i.i, 111
  br i1 %i.gb, label %bb.av, label %.loopexit.i.i

bb.av:                                            ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !6294, !noalias !6295, !noundef !16 ; 2 uses
  %i.ge = add i8 %i.gd, -65
  %i.gf = icmp ult i8 %i.ge, 26
  %i.gg = select i1 %i.gf, i8 32, i8 0
  %.sroa.012.0.i.i.7.i.i = or i8 %i.gg, %i.gd
  %i.gh = icmp eq i8 %.sroa.012.0.i.i.7.i.i, 110
  br i1 %i.gh, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtCs4wN8za6y8UK_7soketto9handshake17with_first_headerNCNvMNtB2c_6clientINtB38_6ClientINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4D_6server9TlsStreamB5o_EEB5o_EE15decode_response0NtNtCsexYYUdYSQU6_5alloc6string6StringE0ECs2Bxje7pdMIr_13libp2p_server.exit.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.lr.ph.i.i
  %i.gi = icmp eq ptr %i.ej, %i.eg
  br i1 %i.gi, label %.loopexit.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtCs4wN8za6y8UK_7soketto9handshake17with_first_headerNCNvMNtB2c_6clientINtB38_6ClientINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4D_6server9TlsStreamB5o_EEB5o_EE15decode_response0NtNtCsexYYUdYSQU6_5alloc6string6StringE0ECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.av
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !6292, !noalias !6296, !nonnull !16, !noundef !16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !6292, !noalias !6296, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6297
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gk, i64 noundef range(i64 0, -9223372036854775808) %i.gm), !noalias !6298
  %i.gn = load i64, ptr %i.b, align 8, !range !25, !noalias !6297, !noundef !16
  %i.go = trunc nuw i64 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.gp, align 8, !noalias !6297 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !6297 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6297
  br i1 %i.go, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtCs4wN8za6y8UK_7soketto9handshake17with_first_headerNCNvMNtB2c_6clientINtB38_6ClientINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4D_6server9TlsStreamB5o_EEB5o_EE15decode_response0NtNtCsexYYUdYSQU6_5alloc6string6StringE0ECs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.gq = ptrtoint ptr %.sroa.07.0.copyload.i.i to i64
  br label %bb.bd

bb.ax:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtCs4wN8za6y8UK_7soketto9handshake17with_first_headerNCNvMNtB2c_6clientINtB38_6ClientINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3A_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4D_6server9TlsStreamB5o_EEB5o_EE15decode_response0NtNtCsexYYUdYSQU6_5alloc6string6StringE0ECs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6297
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.48.0.copyload.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6298
  %i.gr = load i64, ptr %i.a, align 8, !range !25, !noalias !6297, !noundef !16
  %i.gs = trunc nuw i64 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !range !26, !noalias !6297, !noundef !16 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.gs, label %bb.ay, label %bb.az, !prof !23

bb.ay:                                            ; preds = %bb.ax
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !6297
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.gu, i64 %i.gw) #37, !noalias !6298
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.gx = load ptr, ptr %i.gv, align 8, !noalias !6297, !nonnull !16, !noundef !16 ; 2 uses
  %i.gy = icmp ule i64 %.sroa.48.0.copyload.i.i, %i.gu
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6297
  %.not.i.i = icmp eq i64 %.sroa.48.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %.sroa.07.0.copyload.i.i, i64 %.sroa.48.0.copyload.i.i, i1 false), !noalias !6298
  br label %bb.be

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6299
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6299
  %i.gz = load i64, ptr %i.c, align 8, !range !25, !noalias !6299, !noundef !16
  %i.ha = trunc nuw i64 %i.gz to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !26, !noalias !6299, !noundef !16 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ha, label %bb.bb, label %bb.bc, !prof !23

bb.bb:                                            ; preds = %.loopexit.i
  %i.he = load i64, ptr %i.hd, align 8, !noalias !6299
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.hc, i64 %i.he) #37, !noalias !6299
  unreachable

bb.bc:                                            ; preds = %.loopexit.i
  %i.hf = load ptr, ptr %i.hd, align 8, !noalias !6299, !nonnull !16, !noundef !16 ; 2 uses
  %i.hg = icmp samesign ugt i64 %i.hc, 7
  call void @llvm.assume(i1 %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6299
  store i64 7957695015157985100, ptr %i.hf, align 1, !noalias !6299
  %i.hh = ptrtoint ptr %i.hf to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.aw
  %.sroa.13.0.ph = phi i64 [ %.sroa.48.0.copyload.i.i, %bb.aw ], [ %i.hh, %bb.bc ]
  %.sroa.8.0.ph = phi i64 [ %i.gq, %bb.aw ], [ %i.hc, %bb.bc ]
  %.sroa.0.0.ph = phi i64 [ 12, %bb.aw ], [ 5, %bb.bc ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph, ptr %i.hi, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.ph, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.458.sroa.4.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.0.ph, ptr %.sroa.458.sroa.4.0..sroa.458.0..sroa_idx.sroa_idx, align 8
  %.sroa.458.sroa.5.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 8, ptr %.sroa.458.sroa.5.0..sroa.458.0..sroa_idx.sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.af

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.hj = ptrtoint ptr %i.gx to i64
  store i64 %i.gu, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hj, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.48.0.copyload.i.i, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.pre124, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bm, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.af

bb.bf:                                            ; preds = %bb.a, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %storemerge = phi i64 [ -2, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ], [ -1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBX_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1Z_6server9TlsStreamB2K_EEB2K_EE14decode_requestCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 1                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.625 = alloca [24 x i8], align 8          ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 17 uses
  %i.p = alloca [1024 x i8], align 8              ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) @159, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 49
  store ptr %i.p, ptr %i.o, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 7 uses
  store i64 32, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !16, !noundef !16
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.be = load i64, ptr %i.bd, align 8, !noundef !16
  call void @_RNvMs4_Cs1ll6eLl40nD_8httparseNtB5_7Request5parse(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be)
  %i.bf = load i64, ptr %i.n, align 8, !range !40, !noundef !16
  switch i64 %i.bf, label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !range !59, !noundef !16
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.bi = call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 1, i64 noundef range(i64 1, 9) 1) #36 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #37
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.bk, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @166, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bl, align 8
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bn = load ptr, ptr %i.av, align 8, !noundef !16 ; 3 uses
  %.not = icmp ne ptr %i.bn, null
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = icmp eq i64 %i.bo, 3
  %or.cond100 = select i1 %.not, i1 %i.bp, i1 false
  br i1 %or.cond100, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bq = load i16, ptr %i.bn, align 1
  %i.br = xor i16 %i.bq, 17735
  %i.bs = getelementptr i8, ptr %i.bn, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 84
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %.not108 = icmp eq i32 %i.by, 0
  br i1 %.not108, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.bz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.ca = load i8, ptr %i.ay, align 8, !range !62, !noundef !16
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i8, ptr %i.az, align 1
  %.not88 = icmp eq i8 %i.cc, 1
  %or.cond = select i1 %i.cb, i1 %.not88, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %i.o, align 8, !nonnull !16, !align !19, !noundef !16 ; 3 uses
  %i.cf = load i64, ptr %i.ba, align 8, !noundef !16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6311)
  %.idx.i = shl nuw nsw i64 %i.cf, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.loopexit.i.i
  %i.ci = phi ptr [ %i.cj, %.loopexit.i.i ], [ %i.ce, %bb.i ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !6311, !noalias !6312, !noundef !16
  %.not.i.i.i = icmp eq i64 %i.cl, 4
  br i1 %.not.i.i.i, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cm = load ptr, ptr %i.ci, align 8, !alias.scope !6311, !noalias !6312, !nonnull !16, !noundef !16 ; 4 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !6313, !noalias !6314, !noundef !16 ; 2 uses
  %i.co = add i8 %i.cn, -65
  %i.cp = icmp ult i8 %i.co, 26
  %i.cq = select i1 %i.cp, i8 32, i8 0
  %.sroa.012.0.i.i.i.i = or i8 %i.cq, %i.cn
  %i.cr = icmp eq i8 %.sroa.012.0.i.i.i.i, 104
  br i1 %i.cr, label %bb.k, label %.loopexit.i.i

end_hunk_1
begin_hunk_2_@_RNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBX_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1Z_6server9TlsStreamB2K_EEB2K_EE14decode_requestCs2Bxje7pdMIr_13libp2p_server:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !6313, !noalias !6314, !noundef !16 ; 2 uses
  %i.dg = add i8 %i.df, -65
  %i.dh = icmp ult i8 %i.dg, 26
  %i.di = select i1 %i.dh, i8 32, i8 0
  %.sroa.012.0.i.i.3.i.i = or i8 %i.di, %i.df
  %i.dj = icmp eq i8 %.sroa.012.0.i.i.3.i.i, 116
  br i1 %i.dj, label %bb.p, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph.i.i
  %i.dk = icmp eq ptr %i.cj, %i.cg
  br i1 %i.dk, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.loopexit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6315
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6315
  %i.dl = load i64, ptr %i.a, align 8, !range !25, !noalias !6315, !noundef !16
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !26, !noalias !6315, !noundef !16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.n, label %bb.o, !prof !23

bb.n:                                             ; preds = %.loopexit.i
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !6315
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #37, !noalias !6315
  unreachable

bb.o:                                             ; preds = %.loopexit.i
  %i.dr = load ptr, ptr %i.dp, align 8, !noalias !6315, !nonnull !16, !noundef !16 ; 2 uses
  %i.ds = icmp samesign ugt i64 %i.do, 3
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6315
  store i32 1953722184, ptr %i.dr, align 1, !noalias !6315
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = inttoptr i64 %i.do to ptr
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.dv, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.du, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dt, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.667.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.p:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !6311, !noalias !6316, !nonnull !16, !noundef !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !6311, !noalias !6316, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtCs4wN8za6y8UK_7soketto9handshake19expect_ascii_header(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ce, i64 noundef %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 9)
  %i.ea = load i64, ptr %i.m, align 8, !range !84, !noundef !16
  %.not90 = icmp eq i64 %i.ea, -1
  br i1 %.not90, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ec = load ptr, ptr %i.o, align 8, !nonnull !16, !align !19, !noundef !16
  %i.ed = load i64, ptr %i.ba, align 8, !noundef !16
  call void @_RNvNtCs4wN8za6y8UK_7soketto9handshake19expect_ascii_header(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 7)
  %i.ee = load i64, ptr %i.l, align 8, !range !84, !noundef !16
  %.not91 = icmp eq i64 %i.ee, -1
  br i1 %.not91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.eg = load ptr, ptr %i.o, align 8, !nonnull !16, !align !19, !noundef !16
  %i.eh = load i64, ptr %i.ba, align 8, !noundef !16
  call void @_RNvNtCs4wN8za6y8UK_7soketto9handshake19expect_ascii_header(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.eg, i64 noundef %i.eh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 2)
  %i.ei = load i64, ptr %i.k, align 8, !range !84, !noundef !16
  %.not92 = icmp eq i64 %i.ei, -1
  br i1 %.not92, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ek = load ptr, ptr %i.o, align 8, !nonnull !16, !align !19, !noundef !16 ; 3 uses
  %i.el = load i64, ptr %i.ba, align 8, !noundef !16 ; 2 uses
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el
  store ptr %i.ek, ptr %i.j, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = call fastcc { ptr, i64 } @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRShNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2j_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3f_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4i_6server9TlsStreamB53_EEB53_EE14decode_request0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j) #39 ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCs4wN8za6y8UK_7soketto9handshake17with_first_headerNCNvMNtB2_6serverINtBY_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB1o_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2r_6server9TlsStreamB3c_EEB3c_EE14decode_requests_0Ahj18_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ek, i64 noundef %i.el)
  %i.er = load i64, ptr %i.i, align 8, !range !84, !noundef !16 ; 2 uses
  %.not93 = icmp eq i64 %i.er, -1
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.not93, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.473.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.er, ptr %i.et, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.625, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  %i.eu = load ptr, ptr %i.o, align 8, !nonnull !16, !align !19, !noundef !16 ; 3 uses
  %i.ev = load i64, ptr %i.ba, align 8, !noundef !16 ; 2 uses
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %i.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.eu, ptr %i.g, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = call fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2d_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB39_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4c_6server9TlsStreamB4X_EEB4X_EE14decode_requests0_0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #39 ; 2 uses
  %.not94110 = icmp eq ptr %i.ey, null
  br i1 %.not94110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !16, !noundef !16
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.fc = load i64, ptr %i.fb, align 8, !noundef !16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ak
  %i.ff = phi ptr [ %i.ey, %.lr.ph ], [ %i.gt, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !16, !noundef !16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !noundef !16
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fh, i64 noundef %i.fj)
  %i.fk = load i64, ptr %i.e, align 8, !range !25, !noundef !16
  %i.fl = trunc nuw i64 %i.fk to i1
  %.sroa.076.0.copyload = load ptr, ptr %i.fd, align 8 ; 2 uses
  %.sroa.477.0.copyload = load i64, ptr %i.fe, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.fl, label %bb.ah, label %bb.ai

._crit_edge.loopexit:                             ; preds = %bb.ak
  %.pre = load ptr, ptr %i.o, align 8
  %.pre116 = load i64, ptr %i.ba, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.fm = phi i64 [ %.pre116, %._crit_edge.loopexit ], [ %i.ev, %bb.x ]
  %i.fn = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.eu, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.fn, ptr %i.c, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.fq, ptr %i.fr, align 8
  %i.fs = call fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2d_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB39_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4c_6server9TlsStreamB4X_EEB4X_EE14decode_requests1_0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) ; 2 uses
  %.not95111 = icmp eq ptr %i.fs, null
  br i1 %.not95111, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !16
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.fw
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.ad
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #38
          to label %bb.ag unwind label %bb.af

bb.aa:                                            ; preds = %.lr.ph113, %bb.ae
  %i.fz = phi i64 [ 0, %.lr.ph113 ], [ %i.gn, %bb.ae ] ; 4 uses
  %i.ga = phi ptr [ %i.fs, %.lr.ph113 ], [ %i.go, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fu, ptr %i.b, align 8
  store ptr %i.fx, ptr %2, align 8
  %i.gb = call fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1I_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2E_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3H_6server9TlsStreamB4s_EEB4s_EE14decode_requests2_0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ga) ; 3 uses
  %.not97 = icmp eq ptr %i.gb, null
  br i1 %.not97, label %bb.ae, label %bb.ac

._crit_edge114:                                   ; preds = %bb.ae, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gc = load ptr, ptr %i.aw, align 8, !noundef !16 ; 2 uses
  %.not96 = icmp eq ptr %i.gc, null               ; 2 uses
  %i.gd = load i64, ptr %i.ax, align 8
  %.sroa.042.0 = select i1 %.not96, ptr @170, ptr %i.gc
  %.sroa.3.0 = select i1 %.not96, i64 1, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1054.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.042.0, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dx, ptr %.sroa.650.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dz, ptr %.sroa.751.0..sroa_idx, align 8
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ep, ptr %.sroa.852.0..sroa_idx, align 8
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.eq, ptr %.sroa.953.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge, %bb.h, %bb.o, %bb.q, %bb.s, %bb.u, %bb.am, %bb.al, %bb.w, %._crit_edge114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ac:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.gb, align 8, !nonnull !16, !noundef !16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !16
  %i.gh = load i64, ptr %i.d, align 8, !range !21, !alias.scope !6317, !noalias !6318, !noundef !16
  %i.gi = icmp eq i64 %i.fz, %i.gh
  br i1 %i.gi, label %bb.ad, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE8push_mutCs2Bxje7pdMIr_13libp2p_server.exit

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs80T0Klmhmtx_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #34
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE8push_mutCs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.z

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE8push_mutCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.ad, %bb.ac
  %i.gj = load ptr, ptr %i.fo, align 8, !alias.scope !6317, !noalias !6318, !nonnull !16, !noundef !16
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.fz ; 2 uses
  store ptr %i.ge, ptr %i.gk, align 8, !noalias !6318, !captures !78
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %i.gg, ptr %i.gl, align 8
  %i.gm = add i64 %i.fz, 1                        ; 2 uses
  store i64 %i.gm, ptr %i.fp, align 8, !alias.scope !6317, !noalias !6318
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE8push_mutCs2Bxje7pdMIr_13libp2p_server.exit, %bb.aa
  %i.gn = phi i64 [ %i.gm, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE8push_mutCs2Bxje7pdMIr_13libp2p_server.exit ], [ %i.fz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = call fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2d_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB39_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4c_6server9TlsStreamB4X_EEB4X_EE14decode_requests1_0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) ; 2 uses
  %.not95 = icmp eq ptr %i.go, null
  br i1 %.not95, label %._crit_edge114, label %bb.aa

bb.af:                                            ; preds = %bb.z
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ag:                                            ; preds = %bb.z
  resume { ptr, i32 } %i.fy

bb.ah:                                            ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.gq, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.076.0.copyload, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.477.0.copyload, ptr %.sroa.582.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

bb.ai:                                            ; preds = %bb.y
  call void @_RNvNtCs4wN8za6y8UK_7soketto9handshake20configure_extensions(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 %i.fa, i64 noundef %i.fc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.076.0.copyload, i64 noundef %.sroa.477.0.copyload)
  %i.gr = load i64, ptr %i.f, align 8, !range !84, !noundef !16
  %.not98 = icmp eq i64 %i.gr, -1
  br i1 %.not98, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gt = call fastcc noundef align 8 ptr @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2d_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB39_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4c_6server9TlsStreamB4X_EEB4X_EE14decode_requests0_0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #39 ; 2 uses
  %.not94 = icmp eq ptr %i.gt, null
  br i1 %.not94, label %._crit_edge.loopexit, label %bb.y

bb.al:                                            ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ab

bb.am:                                            ; preds = %bb.d, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBX_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1Z_6server9TlsStreamB2K_EEB2K_EE15encode_responseCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(1288) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [28 x i8], align 1                ; 4 uses
  %i.q = load i8, ptr %1, align 8, !range !62, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6394)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 10 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !6394, !noalias !6395, !noundef !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6394, !noalias !6395, !noundef !16
  %i.y = sub i64 %i.x, %i.v
  %.not.i = icmp ult i64 %i.y, 9
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noundef zeroext i1 @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef 9, i1 noundef zeroext true), !noalias !6395 ; 0 uses
  %.pre.i = load i64, ptr %i.u, align 8, !alias.scope !6394, !noalias !6395
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi i64 [ %i.v, %bb.b ], [ %.pre.i, %bb.c ]
  %i.ab = load ptr, ptr %i.t, align 8, !alias.scope !6394, !noalias !6395, !nonnull !16, !noundef !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ac, ptr noundef nonnull align 1 dereferenceable(9) @172, i64 9, i1 false)
  %i.ad = load i64, ptr %i.w, align 8, !alias.scope !6394, !noalias !6395, !noundef !16 ; 2 uses
  %i.ae = load i64, ptr %i.u, align 8, !alias.scope !6394, !noalias !6395, !noundef !16 ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, 9
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6396
  store i64 9, ptr %i.o, align 8, !noalias !6396
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !noalias !6396
  call void @_RNvCs1eA6bChxBZF_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o) #37, !noalias !6395
  unreachable

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut17extend_from_slice.exit: ; preds = %bb.d
  %i.ai = add i64 %i.ae, 9                        ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !alias.scope !6394, !noalias !6395
  %.val = load i16, ptr %i.s, align 2, !alias.scope !6397, !noundef !16 ; 8 uses
  %i.aj = icmp ult i16 %.val, 409
  %i.ak = select i1 %i.aj, i64 0, i64 30, !unpredictable !16 ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 15               ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr @233, i64 %i.al
  %.val12.1.i.i = load i16, ptr %i.am, align 8, !noalias !6398, !noundef !16
  %i.an = icmp ugt i16 %.val12.1.i.i, %.val
  %i.ao = select i1 %i.an, i64 %i.ak, i64 %i.al, !unpredictable !16 ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 7                ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr @233, i64 %i.ap
  %.val12.2.i.i = load i16, ptr %i.aq, align 8, !noalias !6398, !noundef !16
  %i.ar = icmp ugt i16 %.val12.2.i.i, %.val
  %i.as = select i1 %i.ar, i64 %i.ao, i64 %i.ap, !unpredictable !16 ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 4                ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr @233, i64 %i.at
  %.val12.3.i.i = load i16, ptr %i.au, align 8, !noalias !6398, !noundef !16
  %i.av = icmp ugt i16 %.val12.3.i.i, %.val
  %i.aw = select i1 %i.av, i64 %i.as, i64 %i.at, !unpredictable !16 ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @233, i64 %i.ax
  %.val12.4.i.i = load i16, ptr %i.ay, align 8, !noalias !6398, !noundef !16
  %i.az = icmp ugt i16 %.val12.4.i.i, %.val
  %i.ba = select i1 %i.az, i64 %i.aw, i64 %i.ax, !unpredictable !16 ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr @233, i64 %i.bb
  %.val12.5.i.i = load i16, ptr %i.bc, align 8, !noalias !6398, !noundef !16
end_hunk_2
