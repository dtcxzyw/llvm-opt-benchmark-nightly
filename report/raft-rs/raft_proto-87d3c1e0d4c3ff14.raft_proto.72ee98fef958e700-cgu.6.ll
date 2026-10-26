Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.6?download=true
inline.NumInlined: 108
inline.NumDeleted: 65
begin_hunk_0_@_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange17parse_conf_change:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.da = zext nneg i32 %i.cv to i64
  %i.db = add i64 %i.cx, %i.da                    ; 2 uses
  %.not53.i = icmp eq i64 %i.cy, 0
  br i1 %.not53.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.t, %bb.v, %bb.x, %.lr.ph.i, %bb.w
  %.sroa.5.0.ph = phi i8 [ 2, %bb.x ], [ %spec.select, %bb.w ], [ 1, %.lr.ph.i ], [ 1, %bb.v ], [ 0, %bb.s ], [ 1, %bb.t ], [ 1, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.sroa.5.0.ph, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto, ptr %.sroa.447.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.dc, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @3, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71 unwind label %bb.ah

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.y, %.preheader.i
  %.sroa.1281.0 = phi i64 [ %i.db, %bb.y ], [ 0, %.preheader.i ], [ %i.cr, %.preheader56.i ]
  %i.dd = load i64, ptr %i.r, align 8, !alias.scope !75, !noundef !4 ; 3 uses
  %i.de = load i64, ptr %i.l, align 8, !range !76, !alias.scope !75, !noundef !4
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ac unwind label %bb.aa, !noalias !77

bb.aa:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null) #18
          to label %.body unwind label %bb.ab, !noalias !77

bb.ab:                                            ; preds = %bb.aa
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !77
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit
  %i.di = load ptr, ptr %i.q, align 8, !alias.scope !75, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %i.dd ; 3 uses
  store i64 %.sroa.1281.0, ptr %i.dj, align 8
  %.sroa.4.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx85, i8 0, i64 16, i1 false)
  store i8 %.sroa.02.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dk = add i64 %i.dd, 1
  store i64 %i.dk, ptr %i.r, align 8, !alias.scope !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.promoted.i.pre = load i8, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !70
  %.promoted15.i.pre = load ptr, ptr %i.k, align 8, !alias.scope !66
  %.promoted16.i.pre = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !66
  br label %bb.d

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ad

bb.ae:                                            ; preds = %bb.ad, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.dn, %bb.af ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit: ; preds = %bb.ae
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.ah:                                            ; preds = %bb.p, %.loopexit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null) #18
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange21stringify_conf_change(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.idx = shl nuw nsw i64 %2, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !81
  switch i8 %.pre, label %default.unreachable46 [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel: ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ 114, %bb.d ], [ 108, %bb.c ], [ 118, %bb.e ]
  %i.g = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  store i8 %.sink, ptr %i.g, align 1
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.h = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel
  br i1 %i.h, label %.loopexit, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, !prof !5

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %._crit_edge, label %.peel.next

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.i, %bb.h, %.peel.next, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel, %bb.e, %bb.d, %bb.c, %.loopexit
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.m unwind label %bb.l

._crit_edge:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %.peel.next
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !82, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  store i8 32, ptr %i.k, align 1
  %i.l = add nuw nsw i64 %i.p, 1                  ; 2 uses
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !81, !noundef !4
  switch i8 %i.n, label %.unreachabledefault [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

.peel.next:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit
  %.sroa.0.038 = phi ptr [ %i.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit ], [ %i.f, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 32 ; 2 uses
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82, !noundef !4 ; 4 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.unreachabledefault:                              ; preds = %bb.g
  unreachable

default.unreachable46:                            ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27: ; preds = %bb.j, %bb.i, %bb.h
  %.sink50 = phi i8 [ 114, %bb.i ], [ 118, %bb.h ], [ 108, %bb.j ]
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 %.sink50, ptr %i.s, align 1
  %i.t = add nuw i64 %i.p, 2
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.038, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.u = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27
  br i1 %i.u, label %.loopexit, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, !prof !5

.loopexit:                                        ; preds = %bb.k, %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = icmp eq ptr %i.o, %i.d
  br i1 %i.v, label %._crit_edge, label %.peel.next, !llvm.loop !80

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp54
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !86, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !86, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !86, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !86
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !93, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !93
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !93
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [28 x i8], align 4        ; 4 uses
  %.sroa.516.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.617.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.t, label %bb.b
end_hunk_0
