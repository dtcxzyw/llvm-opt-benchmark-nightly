Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/multiaddr-75034a92ec41c6d9.multiaddr.841fa8a9871b4e9a-cgu.2?download=true
inline.NumInlined: 186
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMCsbli3iz7XG76_9multiaddrNtB2_9Multiaddr8with_p2p:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.414.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.711.i, i64 87, i1 false), !alias.scope !480, !noalias !458
  %i.y = load i8, ptr %i.a, align 8, !range !339, !alias.scope !459, !noalias !481, !noundef !20
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %.noexc, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.noexc unwind label %.body.thread15.loopexit

.body.thread15.loopexit:                          ; preds = %bb.h
  %lpad.loopexit33 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread15.loopexit.split-lp:                 ; preds = %bb.c
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.711.i)
  store i8 %i.t, ptr %i.d, align 8, !noalias !429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.414.i, i64 87, i1 false), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i)
  %i.aa = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.peel.newph, !llvm.loop !482

.body.thread.i:                                   ; preds = %.body.thread20.i.loopexit, %.body.thread20.i.loopexit.split-lp, %bb.d
  %i.ab = phi i1 [ %i.p, %bb.d ], [ false, %.body.thread20.i.loopexit ], [ true, %.body.thread20.i.loopexit.split-lp ]
  %eh.lpad-body19.i = phi { ptr, i32 } [ %i.w, %bb.d ], [ %lpad.loopexit, %.body.thread20.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread20.i.loopexit.split-lp ] ; 2 uses
  br i1 %i.ab, label %.body.thread, label %bb.i

bb.i:                                             ; preds = %.body.thread.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %.body.thread unwind label %bb.j, !noalias !439

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !439
  unreachable

.noexc7:                                          ; preds = %bb.p, %bb.o
  br i1 %i.ae, label %.body.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrEBD_.exit

.loopexit:                                        ; preds = %.noexc.peel, %.noexc, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !429
  %i.ad = load i8, ptr %i.h, align 8, !range !339, !noundef !20
  %i.ae = icmp eq i8 %i.ad, 17                    ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  store i8 17, ptr %i.e, align 8
  invoke void @_RNvMCsbli3iz7XG76_9multiaddrNtB2_9Multiaddr4with(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e)
          to label %bb.q unwind label %bb.o

bb.l:                                             ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !485, !noalias !488, !noundef !20
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !488, !noalias !485, !noundef !20
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.an = load i8, ptr %i.am, align 8, !alias.scope !490, !noalias !488, !noundef !20 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = icmp ult i8 %i.an, 65
  br i1 %i.ap, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i, label %.invoke, !prof !493

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i: ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load i8, ptr %i.aq, align 8, !alias.scope !494, !noalias !485, !noundef !20 ; 3 uses
  %i.as = icmp ult i8 %i.ar, 65
  br i1 %i.as, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit1.i, label %bb.n, !prof !493

bb.n:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i
  %i.at = zext i8 %i.ar to i64
  br label %.invoke

.invoke:                                          ; preds = %bb.m, %bb.n
  %i.au = phi i64 [ %i.at, %bb.n ], [ %i.ao, %bb.m ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.au, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit1.i: ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i
  %i.av = icmp eq i8 %i.an, %i.ar
  br i1 %i.av, label %_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsbli3iz7XG76_9multiaddr.exit, label %.thread.sink.split

bb.o:                                             ; preds = %.invoke, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load i8, ptr %i.h, align 8, !range !339, !alias.scope !497, !noundef !20
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %.noexc7, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.h)
          to label %.noexc7 unwind label %bb.r

_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsbli3iz7XG76_9multiaddr.exit: ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit1.i
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly align 8 dereferenceable(80) %i.ag, ptr nonnull readonly align 8 dereferenceable(80) %2, i64 %i.ao), !alias.scope !500
  %i.az = icmp ne i32 %bcmp.i, 0
  %spec.select = zext i1 %i.az to i64
  br label %.thread.sink.split

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load i8, ptr %i.h, align 8, !range !339, !alias.scope !501
  %i.bb = icmp eq i8 %.pre, -1
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEEB11_.exit9, label %.thread

.thread.sink.split:                               ; preds = %_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsbli3iz7XG76_9multiaddr.exit, %bb.l, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit1.i
  %.sink = phi i64 [ %spec.select, %_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsbli3iz7XG76_9multiaddr.exit ], [ 1, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit1.i ], [ 1, %bb.l ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 %.sink, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEEB11_.exit9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolEEB11_.exit9: ; preds = %.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.r:                                             ; preds = %.body.thread, %bb.p
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrEBD_.exit: ; preds = %.body.thread, %.noexc7
  %.pn11 = phi { ptr, i32 } [ %.pn12, %.body.thread ], [ %i.aw, %.noexc7 ]
  resume { ptr, i32 } %.pn11

.body.thread:                                     ; preds = %.body.thread15.loopexit, %.body.thread15.loopexit.split-lp, %.body.thread.i, %bb.i, %.noexc7
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body19.i, %.body.thread.i ], [ %i.aw, %.noexc7 ], [ %eh.lpad-body19.i, %bb.i ], [ %lpad.loopexit33, %.body.thread15.loopexit ], [ %lpad.loopexit.split-lp34, %.body.thread15.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !513, !noundef !20
  %i.bg = load ptr, ptr %1, align 8, !alias.scope !513, !nonnull !20, !align !167, !noundef !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !513, !nonnull !20, !noundef !20
  invoke void %i.bi(ptr noundef %i.bf, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrEBD_.exit unwind label %bb.r, !inline_history !514
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMCsbli3iz7XG76_9multiaddrNtB2_9Multiaddr9ends_with(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !20 ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !20
  %i.j = sub nuw i64 %i.b, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %bcmp = tail call i32 @bcmp(ptr %i.k, ptr %i.g, i64 %i.d)
  %i.l = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E10from_bytesCsbli3iz7XG76_9multiaddr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 9), (16, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.439 = alloca [48 x i8], align 8          ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !521
  call fastcc void @_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr nonnull align 8 dereferenceable(16) %i.d), !noalias !524
  %i.f = load i8, ptr %i.c, align 8, !range !525, !noalias !521, !noundef !20 ; 2 uses
  %.not.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.9.9.copyload.i = load i56, ptr %.sroa.427.0..sroa_idx.i.i, align 1, !noalias !526
  %.sroa.9.9.insert.ext.i = zext i56 %.sroa.9.9.copyload.i to i64
  %.sroa.9.9.insert.shift.i = shl nuw i64 %.sroa.9.9.insert.ext.i, 8
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.528.0.copyload.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !521 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !521
  %.sroa.9.8.insert.ext.i = zext nneg i8 %i.f to i64
  %.sroa.9.8.insert.insert.i = or disjoint i64 %.sroa.9.9.insert.shift.i, %.sroa.9.8.insert.ext.i
  %.sroa.18.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.528.0.copyload.i.i to i8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !521, !noundef !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !521
  call fastcc void @_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr nonnull align 8 dereferenceable(16) %i.d), !noalias !524
  %i.i = load i8, ptr %i.b, align 8, !range !525, !noalias !521, !noundef !20 ; 2 uses
  %.not71.i.i = icmp eq i8 %i.i, -1
  br i1 %.not71.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.9.9.copyload38.i = load i56, ptr %.sroa.436.0..sroa_idx.i.i, align 1, !noalias !526
  %.sroa.9.9.insert.ext40.i = zext i56 %.sroa.9.9.copyload38.i to i64
  %.sroa.9.9.insert.shift41.i = shl nuw i64 %.sroa.9.9.insert.ext40.i, 8
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.537.0.copyload.i.i = load i64, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !521 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !521
  %.sroa.9.8.insert.ext29.i = zext nneg i8 %i.i to i64
  %.sroa.9.8.insert.insert31.i = or disjoint i64 %.sroa.9.9.insert.shift41.i, %.sroa.9.8.insert.ext29.i
  %.sroa.18.sroa.0.0.extract.trunc46.i = trunc i64 %.sroa.537.0.copyload.i.i to i8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !521, !noundef !20 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !521
  %i.l = icmp ugt i64 %i.k, 64
  br i1 %i.l, label %3, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !535, !noalias !536, !noundef !20 ; 3 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !535, !noalias !536, !nonnull !20, !noundef !20 ; 2 uses
  br i1 %i.n, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsbli3iz7XG76_9multiaddr.exit.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsbli3iz7XG76_9multiaddr.exit.i.i.i.i: ; preds = %bb.f
  %i.p = sub nuw nsw i64 %i.m, %i.k
  %i.q = icmp eq i64 %i.k, 1
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsbli3iz7XG76_9multiaddr.exit.i.i.i.i
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, 65) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, 65) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !537
  %.sroa.28.i.sroa.4.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.28.i.sroa.4.0.copyload.pre = load i8, ptr %.sroa.28.i.sroa.4.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert, align 8, !noalias !538
  %.sroa.28.i.sroa.5.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.28.i.sroa.5.0.copyload.pre = load i56, ptr %.sroa.28.i.sroa.5.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert, align 1, !noalias !538
  br label %bb.k

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsbli3iz7XG76_9multiaddr.exit.i.i.i.i
  %i.r = load i8, ptr %i.o, align 1, !noalias !539, !noundef !20
  store i8 %i.r, ptr %i.a, align 8, !alias.scope !540, !noalias !537
  br label %bb.k

3:                                                ; preds = %bb.e
  %.sroa.18.sroa.0.0.extract.trunc47.i = trunc i64 %i.k to i8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %3, %bb.i
  %.sroa.18.sroa.10.sroa.0.0.ph.in.in.i = phi i64 [ %.sroa.528.0.copyload.i.i, %bb.b ], [ %.sroa.537.0.copyload.i.i, %bb.d ], [ ptrtoint (ptr @35 to i64), %bb.i ], [ %i.k, %3 ]
  %.sroa.18.sroa.0.0.ph.i = phi i8 [ %.sroa.18.sroa.0.0.extract.trunc.i, %bb.b ], [ %.sroa.18.sroa.0.0.extract.trunc46.i, %bb.d ], [ ptrtoint (ptr @35 to i8), %bb.i ], [ %.sroa.18.sroa.0.0.extract.trunc47.i, %3 ]
  %.sroa.9.0.ph.i = phi i64 [ %.sroa.9.8.insert.insert.i, %bb.b ], [ %.sroa.9.8.insert.insert31.i, %bb.d ], [ 0, %bb.i ], [ 1, %3 ]
  %.sroa.18.sroa.10.sroa.0.0.ph.in.i = lshr i64 %.sroa.18.sroa.10.sroa.0.0.ph.in.in.i, 8
  %.sroa.18.sroa.10.sroa.0.0.ph.i = trunc nuw i64 %.sroa.18.sroa.10.sroa.0.0.ph.in.i to i56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.ph.i, ptr %i.s, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.18.sroa.0.0.ph.i, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i56 %.sroa.18.sroa.10.sroa.0.0.ph.i, ptr %.sroa.551.0..sroa_idx, align 1
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.28.i.sroa.5.0.copyload = phi i56 [ 0, %bb.h ], [ %.sroa.28.i.sroa.5.0.copyload.pre, %bb.g ]
  %.sroa.28.i.sroa.4.0.copyload = phi i8 [ 0, %bb.h ], [ %.sroa.28.i.sroa.4.0.copyload.pre, %bb.g ]
  %.sroa.18.sroa.10.sroa.0.0.copyload54.i = load i64, ptr %i.a, align 8, !noalias !538
  %.sroa.28.i.sroa.6.0..sroa.28.17..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28.i.sroa.6.0..sroa.28.17..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  %i.t = icmp eq i64 %i.m, %i.k
  br i1 %i.t, label %bb.l, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbli3iz7XG76_9multiaddr.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbli3iz7XG76_9multiaddr.exit: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.u, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = trunc nuw nsw i64 %i.k to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.sroa.10.sroa.0.0.copyload54.i, ptr %i.w, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.28.i.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i56 %.sroa.28.i.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439, i64 48, i1 false)
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.v, ptr %.sroa.641.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbli3iz7XG76_9multiaddr.exit, %bb.l
  %.sink = phi i64 [ 1, %bb.j ], [ 1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbli3iz7XG76_9multiaddr.exit ], [ 0, %bb.l ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E8to_bytesCsbli3iz7XG76_9multiaddr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !noundef !20 ; 3 uses
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.c, align 8, !range !222, !noundef !20
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !223, !noundef !20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !20, !noundef !20
  %i.o = icmp samesign uge i64 %i.k, %i.g
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !541, !noalias !544, !noundef !20 ; 10 uses
  %i.t = icmp ult i8 %i.f, 65
  br i1 %i.t, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i, label %bb.d, !prof !493

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !547
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.u, i8 0, i64 9, i1 false), !noalias !547
  %i.v = trunc i64 %i.s to i8                     ; 2 uses
  %i.w = or i8 %i.v, -128
  store i8 %i.w, ptr %i.b, align 1, !alias.scope !552, !noalias !547
  %i.x = lshr i64 %i.s, 7                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i
  %i.z = trunc i64 %i.x to i8                     ; 2 uses
  %i.aa = or i8 %i.z, -128
  store i8 %i.aa, ptr %i.u, align 1, !alias.scope !552, !noalias !547
  %i.ab = lshr i64 %i.s, 14                       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.ptr13.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ad = trunc i64 %i.ab to i8                   ; 2 uses
  %i.ae = or i8 %i.ad, -128
  store i8 %i.ae, ptr %.sroa.05.0.ptr13.2.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.af = lshr i64 %i.s, 21                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.05.0.ptr13.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ah = trunc i64 %i.af to i8                   ; 2 uses
  %i.ai = or i8 %i.ah, -128
  store i8 %i.ai, ptr %.sroa.05.0.ptr13.3.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.aj = lshr i64 %i.s, 28                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.05.0.ptr13.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.al = trunc i64 %i.aj to i8                   ; 2 uses
  %i.am = or i8 %i.al, -128
  store i8 %i.am, ptr %.sroa.05.0.ptr13.4.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.an = lshr i64 %i.s, 35                       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.05.0.ptr13.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.ap = trunc i64 %i.an to i8                   ; 2 uses
  %i.aq = or i8 %i.ap, -128
  store i8 %i.aq, ptr %.sroa.05.0.ptr13.5.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.ar = lshr i64 %i.s, 42                       ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.05.0.ptr13.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.at = trunc i64 %i.ar to i8                   ; 2 uses
  %i.au = or i8 %i.at, -128
  store i8 %i.au, ptr %.sroa.05.0.ptr13.6.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.av = lshr i64 %i.s, 49                       ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.ptr13.7.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.ax = trunc i64 %i.av to i8                   ; 2 uses
  %i.ay = or i8 %i.ax, -128
  store i8 %i.ay, ptr %.sroa.05.0.ptr13.7.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.az = lshr i64 %i.s, 56                       ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.05.0.ptr13.8.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bb = trunc nuw i64 %i.az to i8               ; 2 uses
  %i.bc = or i8 %i.bb, -128
  store i8 %i.bc, ptr %.sroa.05.0.ptr13.8.i.i.i, align 1, !alias.scope !552, !noalias !547
  %i.bd = icmp sgt i64 %i.s, -1
  br i1 %i.bd, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.05.0.ptr13.9.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 -127, ptr %.sroa.05.0.ptr13.9.i.i.i, align 1, !alias.scope !552, !noalias !547
  br label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i
  %.sroa.03.011.lcssa.i.i.i = phi i64 [ 1, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ]
  %.sroa.05.0.ptr13.lcssa.i.i.i = phi ptr [ %i.b, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i ], [ %i.u, %bb.e ], [ %.sroa.05.0.ptr13.2.i.i.i, %bb.f ], [ %.sroa.05.0.ptr13.3.i.i.i, %bb.g ], [ %.sroa.05.0.ptr13.4.i.i.i, %bb.h ], [ %.sroa.05.0.ptr13.5.i.i.i, %bb.i ], [ %.sroa.05.0.ptr13.6.i.i.i, %bb.j ], [ %.sroa.05.0.ptr13.7.i.i.i, %bb.k ], [ %.sroa.05.0.ptr13.8.i.i.i, %bb.l ], [ %.sroa.05.0.ptr13.9.i.i.i, %bb.m ]
  %.lcssa.i.i.i = phi i8 [ %i.v, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsbli3iz7XG76_9multiaddr.exit.i ], [ %i.z, %bb.e ], [ %i.ad, %bb.f ], [ %i.ah, %bb.g ], [ %i.al, %bb.h ], [ %i.ap, %bb.i ], [ %i.at, %bb.j ], [ %i.ax, %bb.k ], [ %i.bb, %bb.l ], [ 1, %bb.m ]
  store i8 %.lcssa.i.i.i, ptr %.sroa.05.0.ptr13.lcssa.i.i.i, align 1, !alias.scope !552, !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  store i16 0, ptr %i.a, align 2, !noalias !547
  store i8 %i.f, ptr %i.a, align 2, !alias.scope !555, !noalias !547
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 65) %.sroa.03.011.lcssa.i.i.i)
          to label %.noexc1 unwind label %.body

.noexc1:                                          ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 65) 1)
          to label %.noexc2 unwind label %.body

.noexc2:                                          ; preds = %.noexc1
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef range(i64 0, 65) %i.g)
          to label %bb.n unwind label %.body

.body:                                            ; preds = %bb.d, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr.exit.i, %.noexc1, %.noexc2
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
