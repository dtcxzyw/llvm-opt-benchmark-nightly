Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.7?download=true
inline.NumInlined: 150
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new:bb.a
  store i64 1, ptr %i.d, align 8, !alias.scope !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.l, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder6append(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder6finish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  invoke fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.b = call fastcc noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15finish_internal(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey12rope_builder11RopeBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k) ; 3 uses
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !218
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.g release, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  invoke void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.o)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !range !219, !noundef !5 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1008) %i.v, ptr noundef nonnull align 8 dereferenceable(1008) %i.o, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.w = invoke noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7: ; preds = %bb.g
  store ptr %i.w, ptr %0, align 8
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit
  %i.y = phi ptr [ %i.g, %bb.e ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  ret ptr %i.z

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread:                                          ; preds = %bb.k, %bb.h, %bb.l
  %.pn3 = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.h ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %.pn3

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread unwind label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.l, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey4crlf15find_good_split(i64 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %0, %2
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %0, %2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 %0         ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !226, !noundef !5 ; 2 uses
  %i.f = icmp slt i8 %i.e, -64
  br i1 %i.f, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !226
  unreachable

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit:    ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !226, !noundef !5
  %i.i = icmp ne i8 %i.h, 13
  %i.j = icmp ne i8 %i.e, 10
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19: ; preds = %bb.c, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit
  %.sroa.0.126 = add nsw i64 %0, -1               ; 4 uses
  %i.l = icmp eq i64 %.sroa.0.126, 0
  %i.m = icmp eq i64 %.sroa.0.126, %2
  %or.cond.i1227 = or i1 %i.l, %i.m
  br i1 %or.cond.i1227, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %.lr.ph

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ], [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.128, %.split ] ; 2 uses
  %.sroa.04.130 = add nuw nsw i64 %0, 1           ; 3 uses
  %i.n = icmp eq i64 %.sroa.04.130, %2
  br i1 %i.n, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

.lr.ph:                                           ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge
  %.sroa.0.128 = phi i64 [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.o = icmp ult i64 %.sroa.0.128, %2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %1, i64 %.sroa.0.128 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !227, !noundef !5 ; 2 uses
  %i.r = icmp slt i8 %i.q, -64
  br i1 %i.r, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge, label %.split

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.128, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !227
  unreachable

.split:                                           ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !227, !noundef !5
  %i.u = icmp ne i8 %i.t, 13
  %i.v = icmp ne i8 %i.q, 10
  %i.w = or i1 %i.v, %i.u
  br i1 %i.w, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge: ; preds = %.split, %bb.e
  %.sroa.0.1 = add nsw i64 %.sroa.0.128, -1       ; 4 uses
  %i.x = icmp eq i64 %.sroa.0.1, 0
  %i.y = icmp eq i64 %.sroa.0.1, %2
  %or.cond.i12 = or i1 %i.x, %i.y
  br i1 %or.cond.i12, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %.lr.ph

.lr.ph34:                                         ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge
  %.sroa.04.133 = phi i64 [ %.sroa.04.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ], [ %.sroa.04.130, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ] ; 5 uses
  %.sroa.04.1.in32 = phi i64 [ %.sroa.04.133, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %exitcond.not = icmp eq i64 %.sroa.04.133, %2
  br i1 %exitcond.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph34
  %i.z = getelementptr i8, ptr %1, i64 %.sroa.04.133
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !228, !noundef !5 ; 2 uses
  %i.ab = icmp slt i8 %i.aa, -64
  br i1 %i.ab, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge, label %.split23

bb.h:                                             ; preds = %.lr.ph34
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !228
  unreachable

.split23:                                         ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %1, i64 %.sroa.04.1.in32
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !228, !noundef !5
  %i.ae = icmp ne i8 %i.ad, 13
  %i.af = icmp ne i8 %i.aa, 10
  %i.ag = or i1 %i.af, %i.ae
  br i1 %i.ag, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge: ; preds = %.split23, %bb.g
  %.sroa.04.1 = add i64 %.sroa.04.133, 1          ; 4 uses
  %3 = icmp eq i64 %.sroa.04.1, 0
  %i.ah = icmp eq i64 %.sroa.04.1, %2
  %or.cond.i15 = or i1 %3, %i.ah
  br i1 %or.cond.i15, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread: ; preds = %.split23, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader
  %.sroa.04.1.lcssa = phi i64 [ %.sroa.04.130, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ], [ %.sroa.04.133, %.split23 ], [ %.sroa.04.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ]
  %.not = icmp eq i64 %.sroa.0.1.lcssa, 0
  %spec.select = select i1 %.not, i64 %.sroa.04.1.lcssa, i64 %.sroa.0.1.lcssa
  br label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread: ; preds = %bb.a, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread
  %.sroa.0.3 = phi i64 [ %spec.select, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit ], [ %0, %bb.a ]
  ret i64 %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs2wCc12Mnjqg_5ropey12rope_builderNtB4_11RopeBuilderNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef align 8 dereferenceable(1000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([1000 x i8]) align 8 captures(none) dereferenceable(1000), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13zip_fix_right(ptr noalias nofree noundef align 8 dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef align 8 dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXso_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB1m_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node12children_mut(ptr noalias nofree noundef align 8 dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren10push_split(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(none) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6insertB1m_(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs2wCc12Mnjqg_5ropeyNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { noinline noreturn }
attributes #21 = { inlinehint }
attributes #22 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = distinct !{!8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_"}
!9 = distinct !{!9, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_: argument 0"}
!10 = !{!9}
!11 = distinct !{!11, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_"}
!12 = distinct !{!12, !11, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_: argument 0"}
!13 = !{!12}
!14 = distinct !{!14, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text"}
!15 = distinct !{!15, !14, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text: argument 1"}
!16 = distinct !{!16, !14, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text: argument 2"}
!17 = distinct !{!17, !14, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text: argument 0"}
!18 = distinct !{!18, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!19 = distinct !{!19, !18, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!20 = distinct !{!20, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey"}
!21 = distinct !{!21, !20, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey: argument 0"}
!22 = distinct !{!22, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!23 = distinct !{!23, !22, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!24 = distinct !{!24, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey"}
!25 = distinct !{!25, !24, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey: argument 0"}
!26 = distinct !{!26, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!27 = distinct !{!27, !26, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!28 = distinct !{!28, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!29 = distinct !{!29, !28, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!30 = distinct !{!30, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text"}
!31 = distinct !{!31, !30, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text: argument 2"}
!32 = distinct !{!32, !30, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text: argument 1"}
!33 = distinct !{!33, !30, !"_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text: argument 0"}
!34 = distinct !{!34, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey"}
!35 = distinct !{!35, !34, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey: argument 0"}
!36 = distinct !{!36, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey"}
!37 = distinct !{!37, !36, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey: argument 0"}
!38 = distinct !{!38, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_"}
!39 = distinct !{!39, !38, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_"}
!41 = distinct !{!41, !40, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_: argument 0"}
!42 = !{!15}
!43 = !{!16}
!44 = !{!17, !16}
!45 = !{!17, !15, !16}
!46 = !{!19}
!47 = !{!17, !15}
!48 = !{!17}
!49 = !{!21}
!50 = !{!23}
!51 = !{!25}
!52 = !{!27}
!53 = !{!29}
!54 = !{!33, !32, !31}
!55 = !{!33}
!56 = !{!35}
!57 = !{!37}
!58 = !{!39}
!59 = !{!41}
!60 = distinct !{!60, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_"}
!61 = distinct !{!61, !60, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_: argument 1"}
!62 = distinct !{!62, !60, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_: argument 0"}
!63 = distinct !{!63, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!64 = distinct !{!64, !63, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!65 = distinct !{!65, !63, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 0"}
!66 = distinct !{!66, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!67 = distinct !{!67, !66, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!68 = distinct !{!68, !66, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 0"}
!69 = distinct !{!69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_"}
!70 = distinct !{!70, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_: argument 0"}
!71 = distinct !{!71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!72 = distinct !{!72, !71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!73 = distinct !{!73, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!74 = distinct !{!74, !73, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!75 = distinct !{!75, !"_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope16try_byte_to_char"}
!76 = distinct !{!76, !75, !"_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope16try_byte_to_char: argument 0"}
!77 = distinct !{!77, !"_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte"}
!78 = distinct !{!78, !77, !"_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte: argument 0"}
!79 = distinct !{!79, !"_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope17get_chunk_at_byte"}
!80 = distinct !{!80, !79, !"_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope17get_chunk_at_byte: argument 0"}
!81 = distinct !{!81, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx"}
!82 = distinct !{!82, !81, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx: argument 0"}
!83 = distinct !{!83, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!84 = distinct !{!84, !83, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!85 = distinct !{!85, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!86 = distinct !{!86, !85, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!87 = distinct !{!87, !118, !119}
!88 = distinct !{!88, !119, !118}
!89 = distinct !{!89, !120}
!90 = distinct !{!90, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!91 = distinct !{!91, !90, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!92 = distinct !{!92, !118, !119}
!93 = distinct !{!93, !119, !118}
!94 = distinct !{!94, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBK_"}
!95 = distinct !{!95, !94, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBK_: argument 0"}
!96 = distinct !{!96, !120}
!97 = distinct !{!97, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!98 = distinct !{!98, !97, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!99 = distinct !{!99, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!100 = distinct !{!100, !99, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!101 = !{!61}
!102 = !{!62}
!103 = !{!64}
!104 = !{!65}
!105 = !{!67}
!106 = !{!68}
!107 = !{!70}
!108 = !{!72}
!109 = !{!74}
!110 = !{!74, !72, !70}
!111 = !{!76}
!112 = !{!78, !76}
!113 = !{!80, !78, !76}
!114 = !{!82}
!115 = !{!84, !82, !76}
!116 = !{i64 16}
!117 = !{!86}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!91}
!122 = !{!95}
!123 = !{!100, !98}
!124 = distinct !{!124, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!125 = distinct !{!125, !124, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!126 = distinct !{!126, !124, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 0"}
!127 = distinct !{!127, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E4pushB1m_"}
!128 = distinct !{!128, !127, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E4pushB1m_: argument 0"}
!129 = distinct !{!129, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!130 = distinct !{!130, !129, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!131 = distinct !{!131, !129, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 0"}
!132 = distinct !{!132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!133 = distinct !{!133, !132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!134 = distinct !{!134, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!135 = distinct !{!135, !134, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!136 = distinct !{!136, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E4pushB1m_"}
!137 = distinct !{!137, !136, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E4pushB1m_: argument 0"}
!138 = distinct !{!138, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!139 = distinct !{!139, !138, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!140 = distinct !{!140, !138, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 0"}
!141 = distinct !{!141, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!142 = distinct !{!142, !141, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!143 = distinct !{!143, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!144 = distinct !{!144, !143, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!145 = distinct !{!145, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_"}
!146 = distinct !{!146, !145, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_: argument 0"}
!147 = distinct !{!147, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E4pushB1m_"}
!148 = distinct !{!148, !147, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E4pushB1m_: argument 0"}
!149 = distinct !{!149, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!150 = distinct !{!150, !149, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!151 = distinct !{!151, !149, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 0"}
!152 = distinct !{!152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!153 = distinct !{!153, !152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!154 = distinct !{!154, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!155 = distinct !{!155, !154, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!156 = distinct !{!156, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!157 = distinct !{!157, !156, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!158 = distinct !{!158, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!159 = distinct !{!159, !158, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!160 = distinct !{!160, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_"}
!161 = distinct !{!161, !160, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_: argument 1"}
!162 = distinct !{!162, !160, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_: argument 0"}
!163 = distinct !{!163, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_"}
!164 = distinct !{!164, !163, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_: argument 0"}
!165 = distinct !{!165, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_"}
!166 = distinct !{!166, !165, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_: argument 0"}
!167 = distinct !{!167, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!168 = distinct !{!168, !167, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!169 = distinct !{!169, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!170 = distinct !{!170, !169, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
end_hunk_0
