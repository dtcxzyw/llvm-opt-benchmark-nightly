Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simpleserver.simpleserver.4e59aa8657b6a506-cgu.0?download=true
inline.NumInlined: 331
inline.NumDeleted: 163
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsEECs6J3vw4sPBu4_12simpleserver:bb.a
  br label %.body10.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs6J3vw4sPBu4_12simpleserver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs6J3vw4sPBu4_12simpleserver.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs6J3vw4sPBu4_12simpleserver.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !range !12, !alias.scope !136, !noundef !7
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs6J3vw4sPBu4_12simpleserver.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs6J3vw4sPBu4_12simpleserver.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs6J3vw4sPBu4_12simpleserver.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.body13.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs6J3vw4sPBu4_12simpleserver.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs6J3vw4sPBu4_12simpleserver.exit.i unwind label %bb.m

.body13.i:                                        ; preds = %bb.m, %bb.k, %.body10.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body10.i ], [ %i.v, %bb.m ], [ %i.s, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #13
          to label %.body17.i unwind label %bb.ab

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs6J3vw4sPBu4_12simpleserver.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs6J3vw4sPBu4_12simpleserver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs6J3vw4sPBu4_12simpleserver.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs6J3vw4sPBu4_12simpleserver.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !13, !alias.scope !137, !noundef !7
  %switch.i.i = icmp ugt i64 %i.x, -3
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs6J3vw4sPBu4_12simpleserver.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body17.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit.i unwind label %bb.q

.body17.i:                                        ; preds = %bb.q, %bb.o, %.body13.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body13.i ], [ %i.ab, %bb.q ], [ %i.y, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #13
          to label %.body23.i unwind label %bb.ab

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs6J3vw4sPBu4_12simpleserver.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 128 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !13, !alias.scope !138, !noundef !7
  %switch.i20.i = icmp ugt i64 %i.ad, -3
  br i1 %switch.i20.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit26.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i22.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body23.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i22.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit26.i unwind label %bb.u

.body23.i:                                        ; preds = %bb.u, %bb.s, %.body17.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body17.i ], [ %i.ah, %bb.u ], [ %i.ae, %bb.s ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #13
          to label %.body27.i unwind label %bb.ab

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i22.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit26.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i22.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !12, !alias.scope !139, !noundef !7
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit26.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs6J3vw4sPBu4_12simpleserver.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body27.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs6J3vw4sPBu4_12simpleserver.exit.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i unwind label %bb.y

.body27.i:                                        ; preds = %bb.y, %bb.w, %.body23.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body23.i ], [ %i.ao, %bb.y ], [ %i.al, %bb.w ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSettEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #13
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs6J3vw4sPBu4_12simpleserver.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs6J3vw4sPBu4_12simpleserver.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs6J3vw4sPBu4_12simpleserver.exit26.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !143
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !alias.scope !143
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %.sroa.47.0.copyload.i.i.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !alias.scope !143 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !143
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !143
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !143
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !143
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !143
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !143
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i
  %.sink31.i.i.i.i = phi i64 [ 1, %bb.z ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i, %bb.z ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs6J3vw4sPBu4_12simpleserver.exit.i ]
  store i64 %.sink31.i.i.i.i, ptr %i.b, align 8, !noalias !143
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i.i, ptr %i.aq, align 8, !noalias !143
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i, ptr %i.ar, align 8, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItertNtNtB7_7set_val9SetValZSTE10dying_nextCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.a

.noexc:                                           ; preds = %bb.aa
  %i.as = load ptr, ptr %i.a, align 8, !noalias !144, !noundef !7
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not3.i.i.i.i.i.i, label %.loopexit1, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc, %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItertNtNtB7_7set_val9SetValZSTE10dying_nextCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc2 unwind label %.loopexit.split-lp.a

.noexc2:                                          ; preds = %.lr.ph.i.i.i.i.i.i
  %i.at = load ptr, ptr %i.a, align 8, !noalias !144, !noundef !7
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit1, label %.lr.ph.i.i.i.i.i.i

bb.ab:                                            ; preds = %.body27.i, %.body23.i, %.body17.i, %.body13.i, %.body10.i, %.body.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

.loopexit.split-lp.a:                             ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit1:                                       ; preds = %.noexc2, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !143
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 200, i64 noundef 8) #15
  ret void

bb.ac:                                            ; preds = %.loopexit.split-lp.a, %.body27.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn8.i, %.body27.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.a ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 200, i64 noundef 8) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque7DropperINtNtBI_3vec3VechEEECs6J3vw4sPBu4_12simpleserver(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB4_7DropperINtNtB8_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i: ; preds = %bb.c
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB4_7DropperINtNtB8_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.g = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.h = icmp eq i64 %i.g, %.8.val
  br i1 %i.h, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.e, %bb.b ]
  %i.j = icmp eq i64 %i.d, %.8.val
  br i1 %i.j, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i14 = phi i64 [ %i.g, %bb.e ], [ %i.d, %.body.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #13
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph15
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB4_7DropperINtNtB8_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque7DropperTbINtNtBI_3vec3VechEEEECs6J3vw4sPBu4_12simpleserver(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB4_7DropperTbINtNtB8_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6J3vw4sPBu4_12simpleserver.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB4_7DropperTbINtNtB8_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6J3vw4sPBu4_12simpleserver.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6J3vw4sPBu4_12simpleserver.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i13
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6J3vw4sPBu4_12simpleserver.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.h = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.i = icmp eq i64 %i.h, %.8.val
  br i1 %i.i, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.f, %bb.b ]
  %i.k = icmp eq i64 %i.d, %.8.val
  br i1 %i.k, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.h, %bb.d ], [ %i.d, %.body.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #13
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.f:                                             ; preds = %.lr.ph15
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB4_7DropperTbINtNtB8_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTbINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6J3vw4sPBu4_12simpleserver.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6J3vw4sPBu4_12simpleserver.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6J3vw4sPBu4_12simpleserver.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6J3vw4sPBu4_12simpleserver.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSettEECs6J3vw4sPBu4_12simpleserver(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  %.sroa.06.0.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !155 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !155
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !155 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !155
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !155
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !155
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !155
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !155
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !155
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
end_hunk_0
