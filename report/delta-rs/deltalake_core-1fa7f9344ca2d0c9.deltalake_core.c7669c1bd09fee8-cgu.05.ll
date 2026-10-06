Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.05?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 2305843009213693888
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !23859
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !23859 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23860)
  call void @llvm.experimental.noalias.scope.decl(metadata !23861)
  call void @llvm.experimental.noalias.scope.decl(metadata !23862)
  call void @llvm.experimental.noalias.scope.decl(metadata !23863)
  call void @llvm.experimental.noalias.scope.decl(metadata !23864)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !23865, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !23865
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 2305843009213693888
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23866
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !23866
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23866
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !23866, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !23866
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !23867)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !23867, !noalias !23868, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23867, !noalias !23868 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !23867, !noalias !23868
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23867, !noalias !23868
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !23867, !noalias !23868, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !23867, !noalias !23868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23869
  store i64 1, ptr %i.a, align 8, !noalias !23869
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !23869
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !23869
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !23869
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !23869
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !23867, !noalias !23868
  store i64 128, ptr %i.e, align 16, !alias.scope !23867, !noalias !23868
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !23867, !noalias !23868
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !23869
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !23870
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !23870 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !23869

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !23869

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !23869
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !23869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23869
  store ptr %i.bq, ptr %i.b, align 8, !noalias !23869
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !23869
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !23869
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23869
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !23871)
  call void @llvm.experimental.noalias.scope.decl(metadata !23872)
  call void @llvm.experimental.noalias.scope.decl(metadata !23873)
  call void @llvm.experimental.noalias.scope.decl(metadata !23874)
  call void @llvm.experimental.noalias.scope.decl(metadata !23875)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !23876, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !23876
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 2 uses
  %i.ca = add nuw i64 %.sroa.7.049, 1
  %i.cb = load i16, ptr %.sroa.0.050, align 2, !noundef !4
  %i.cc = zext i16 %i.cb to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %2, %i.cc
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.ce = icmp eq ptr %i.bz, %i.bh
  br i1 %i.ce, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cg = load i64, ptr %i.bl, align 8, !noundef !4
  %i.ch = add i64 %i.cg, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = shl nuw i8 1, %i.cm
  %i.co = and i8 %i.cn, %i.ck
  %.not21 = icmp eq i8 %i.co, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.cp = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.val23
  br i1 %i.cq, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cr = trunc i64 %.sroa.7.049 to i8
  %i.cs = and i8 %i.cr, 7
  %i.ct = shl nuw i8 1, %i.cs
  %i.cu = xor i8 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !4
  %i.cx = and i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.cv, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !23879, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23940)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23940, !noalias !23941, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23940, !noalias !23942 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23940, !noalias !23942 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !23943, !noalias !23944, !noundef !4
  %i.v = zext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit36, !prof !9

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !23943, !noalias !23944, !noundef !4
  %i.z = zext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !23945, !noundef !4
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !23945, !noundef !4
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23946)
  call void @llvm.experimental.noalias.scope.decl(metadata !23947)
  call void @llvm.experimental.noalias.scope.decl(metadata !23948)
  call void @llvm.experimental.noalias.scope.decl(metadata !23949)
  call void @llvm.experimental.noalias.scope.decl(metadata !23950)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !23951, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !23951
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %i.bc = and i64 %i.k, 2
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i16, ptr %i.bd, align 2, !alias.scope !23943, !noalias !23944, !noundef !4
  %i.be = zext i16 %.val13.i.i.epil to i64        ; 2 uses
  %i.bf = icmp ugt i64 %i.o, %i.be
  br i1 %i.bf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bg = add i64 %i.s, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !23945, !noundef !4
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = and i8 %i.bk, 7
  %i.bm = xor i8 %i.bj, -1
  %i.bn = lshr i8 %i.bm, %i.bl
  %i.bo = and i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = add i64 %.sroa.02.0.i.i.epil.init, %i.bp
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.br = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !23952)
  call void @llvm.experimental.noalias.scope.decl(metadata !23953)
  call void @llvm.experimental.noalias.scope.decl(metadata !23954)
  call void @llvm.experimental.noalias.scope.decl(metadata !23955)
  call void @llvm.experimental.noalias.scope.decl(metadata !23956)
  %i.bs = load ptr, ptr %i.b, align 8, !alias.scope !23957, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !23957
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt32TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 1152921504606846912
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24015
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !24015 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24016)
  call void @llvm.experimental.noalias.scope.decl(metadata !24017)
  call void @llvm.experimental.noalias.scope.decl(metadata !24018)
  call void @llvm.experimental.noalias.scope.decl(metadata !24019)
  call void @llvm.experimental.noalias.scope.decl(metadata !24020)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !24021, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !24021
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 1152921504606846912
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24022
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24022
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24022
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24022, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !24022
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -4                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !24023)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24023, !noalias !24024, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24023, !noalias !24024 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24023, !noalias !24024
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24023, !noalias !24024
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !24023, !noalias !24024, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !24023, !noalias !24024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24025
  store i64 1, ptr %i.a, align 8, !noalias !24025
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !24025
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !24025
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24025
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24025
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !24023, !noalias !24024
  store i64 128, ptr %i.e, align 16, !alias.scope !24023, !noalias !24024
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !24023, !noalias !24024
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !24025
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24026
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !24026 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !24025

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !24025

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !24025
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24025
  store ptr %i.bq, ptr %i.b, align 8, !noalias !24025
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !24025
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !24025
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24025
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !24027)
  call void @llvm.experimental.noalias.scope.decl(metadata !24028)
  call void @llvm.experimental.noalias.scope.decl(metadata !24029)
  call void @llvm.experimental.noalias.scope.decl(metadata !24030)
  call void @llvm.experimental.noalias.scope.decl(metadata !24031)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !24032, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !24032
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 4 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.049, 1
  %i.cb = load i32, ptr %.sroa.0.050, align 4, !noundef !4
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %2, %i.cc
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.ce = icmp eq ptr %i.bz, %i.bh
  br i1 %i.ce, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cg = load i64, ptr %i.bl, align 8, !noundef !4
  %i.ch = add i64 %i.cg, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = shl nuw i8 1, %i.cm
  %i.co = and i8 %i.cn, %i.ck
  %.not21 = icmp eq i8 %i.co, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.cp = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.val23
  br i1 %i.cq, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cr = trunc i64 %.sroa.7.049 to i8
  %i.cs = and i8 %i.cr, 7
  %i.ct = shl nuw i8 1, %i.cs
  %i.cu = xor i8 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !4
  %i.cx = and i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.cv, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24035, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt32TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24096)
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24096, !noalias !24097, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24096, !noalias !24098 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !24096, !noalias !24098 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 4611686018427387902
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i32, ptr %i.u, align 4, !alias.scope !24099, !noalias !24100, !noundef !4
  %i.v = zext i32 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit36, !prof !9

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val13.i.i.1 = load i32, ptr %i.y, align 4, !alias.scope !24099, !noalias !24100, !noundef !4
  %i.z = zext i32 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !24101, !noundef !4
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !24101, !noundef !4
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24102)
  call void @llvm.experimental.noalias.scope.decl(metadata !24103)
  call void @llvm.experimental.noalias.scope.decl(metadata !24104)
  call void @llvm.experimental.noalias.scope.decl(metadata !24105)
  call void @llvm.experimental.noalias.scope.decl(metadata !24106)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !24107, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !24107
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %i.bc = and i64 %i.k, 4
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i32, ptr %i.bd, align 4, !alias.scope !24099, !noalias !24100, !noundef !4
  %i.be = zext i32 %.val13.i.i.epil to i64        ; 2 uses
  %i.bf = icmp ugt i64 %i.o, %i.be
  br i1 %i.bf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bg = add i64 %i.s, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !24101, !noundef !4
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = and i8 %i.bk, 7
  %i.bm = xor i8 %i.bj, -1
  %i.bn = lshr i8 %i.bm, %i.bl
  %i.bo = and i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = add i64 %.sroa.02.0.i.i.epil.init, %i.bp
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRmjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.br = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !24108)
  call void @llvm.experimental.noalias.scope.decl(metadata !24109)
  call void @llvm.experimental.noalias.scope.decl(metadata !24110)
  call void @llvm.experimental.noalias.scope.decl(metadata !24111)
  call void @llvm.experimental.noalias.scope.decl(metadata !24112)
  %i.bs = load ptr, ptr %i.b, align 8, !alias.scope !24113, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !24113
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt64TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 576460752303423424
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24185
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !24185 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24186)
  call void @llvm.experimental.noalias.scope.decl(metadata !24187)
  call void @llvm.experimental.noalias.scope.decl(metadata !24188)
  call void @llvm.experimental.noalias.scope.decl(metadata !24189)
  call void @llvm.experimental.noalias.scope.decl(metadata !24190)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !24191, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !24191
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 576460752303423424
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24192
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24192
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24192
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24192, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !24192
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -8                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !24193)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24193, !noalias !24194, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24193, !noalias !24194 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24193, !noalias !24194
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24193, !noalias !24194
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !24193, !noalias !24194, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !24193, !noalias !24194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24195
  store i64 1, ptr %i.a, align 8, !noalias !24195
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !24195
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !24195
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24195
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24195
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !24193, !noalias !24194
  store i64 128, ptr %i.e, align 16, !alias.scope !24193, !noalias !24194
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !24193, !noalias !24194
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !24195
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24196
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !24196 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !24195

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !24195

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !24195
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24195
  store ptr %i.bq, ptr %i.b, align 8, !noalias !24195
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !24195
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !24195
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24195
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !24197)
  call void @llvm.experimental.noalias.scope.decl(metadata !24198)
  call void @llvm.experimental.noalias.scope.decl(metadata !24199)
  call void @llvm.experimental.noalias.scope.decl(metadata !24200)
  call void @llvm.experimental.noalias.scope.decl(metadata !24201)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !24202, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !24202
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 8 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.049, 1
  %i.cb = load i64, ptr %.sroa.0.050, align 8, !noundef !4 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %2
  br i1 %i.cc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.cd = icmp eq ptr %i.bz, %i.bh
  br i1 %i.cd, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ce = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cf = load i64, ptr %i.bl, align 8, !noundef !4
  %i.cg = add i64 %i.cf, %i.cb                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !4
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = shl nuw i8 1, %i.cl
  %i.cn = and i8 %i.cm, %i.cj
  %.not21 = icmp eq i8 %i.cn, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.co = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cp = icmp ult i64 %i.co, %.val23
  br i1 %i.cp, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cq = trunc i64 %.sroa.7.049 to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = shl nuw i8 1, %i.cr
  %i.ct = xor i8 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.co ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cw = and i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %i.cu, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24205, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt64TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24266)
  %i.m = icmp ult i64 %i.k, 8
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24266, !noalias !24267, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24266, !noalias !24268 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !24266, !noalias !24268 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.av, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.au, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i64, ptr %i.u, align 8, !alias.scope !24269, !noalias !24270, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val13.i.i, %i.o
  br i1 %i.v, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit34, !prof !9

.loopexit34:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit34
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val13.i.i.1 = load i64, ptr %i.x, align 8, !alias.scope !24269, !noalias !24270, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val13.i.i.1, %i.o
  br i1 %i.y, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit34, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.z = add i64 %.val13.i.i, %i.s                ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !24271, !noundef !4
  %i.ad = xor i8 %i.ac, -1
  %i.ae = trunc i64 %i.z to i8
  %i.af = and i8 %i.ae, 7
  %i.ag = lshr i8 %i.ad, %i.af
  %i.ah = and i8 %i.ag, 1
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = add i64 %.sroa.02.0.i.i, %i.ai
  %i.ak = add i64 %.val13.i.i.1, %i.s             ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !24271, !noundef !4
  %i.ao = trunc i64 %i.ak to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = xor i8 %i.an, -1
  %i.ar = lshr i8 %i.aq, %i.ap
  %i.as = and i8 %i.ar, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = add i64 %i.aj, %i.at                    ; 3 uses
  %i.av = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.dk, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit34
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24272)
  call void @llvm.experimental.noalias.scope.decl(metadata !24273)
  call void @llvm.experimental.noalias.scope.decl(metadata !24274)
  call void @llvm.experimental.noalias.scope.decl(metadata !24275)
  call void @llvm.experimental.noalias.scope.decl(metadata !24276)
  %i.ax = load ptr, ptr %i.b, align 8, !alias.scope !24277, !nonnull !4, !noundef !4
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !24277
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %i.ba = and i64 %i.k, 8
  %lcmp.mod.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod33)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i64, ptr %i.bb, align 8, !alias.scope !24269, !noalias !24270, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %.val13.i.i.epil, %i.o
  br i1 %i.bc, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit34, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bd = add i64 %.val13.i.i.epil, %i.s          ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !24271, !noundef !4
  %i.bh = trunc i64 %i.bd to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = xor i8 %i.bg, -1
  %i.bk = lshr i8 %i.bj, %i.bi
  %i.bl = and i8 %i.bk, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = add i64 %.sroa.02.0.i.i.epil.init, %i.bm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bn, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRyjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteryEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.bo = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !24278)
  call void @llvm.experimental.noalias.scope.decl(metadata !24279)
  call void @llvm.experimental.noalias.scope.decl(metadata !24280)
  call void @llvm.experimental.noalias.scope.decl(metadata !24281)
  call void @llvm.experimental.noalias.scope.decl(metadata !24282)
  %i.bp = load ptr, ptr %i.b, align 8, !alias.scope !24283, !nonnull !4, !noundef !4
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !24283
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types8Int8TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a
  %.not18 = icmp ne i64 %i.m, 0                   ; 2 uses
  %i.n = zext i1 %.not18 to i64
  %.sroa.012.0 = add nuw nsw i64 %i.l, %i.n       ; 11 uses
  %i.o = and i64 %.sroa.012.0, 63
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 4611686018427387840
  %i.q = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.r = icmp samesign ult i64 %i.q, %.sroa.012.0
  br i1 %i.r, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24355
  %i.t = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !24355 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.w, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.w, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ad, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24356)
  call void @llvm.experimental.noalias.scope.decl(metadata !24357)
  call void @llvm.experimental.noalias.scope.decl(metadata !24358)
  call void @llvm.experimental.noalias.scope.decl(metadata !24359)
  call void @llvm.experimental.noalias.scope.decl(metadata !24360)
  %i.af = load ptr, ptr %i.f, align 8, !alias.scope !24361, !nonnull !4, !noundef !4
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !24361
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.t, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.al, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %.not48 = icmp eq i64 %i.k, 0
  br i1 %.not48, label %.thread, label %bb.o

.thread:                                          ; preds = %._crit_edge.i
  store i64 %.sroa.012.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24362
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.am = icmp samesign ugt i64 %.sroa.012.0, %.sroa.4.0.i42
  br i1 %i.am, label %bb.p, label %bb.t, !prof !5

bb.p:                                             ; preds = %bb.o
  br i1 %i.p, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.012.0, 4611686018427387840
  %i.an = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.ao = icmp samesign ult i64 %i.an, %.sroa.012.0
  br i1 %i.ao, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.012.0, %bb.p ], [ %i.an, %bb.q ]
  %i.ap = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24362
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24362
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.o, %.noexc28
  %i.aq = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.ar = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 -1, i64 %.sroa.012.0, i1 false)
  store i64 %.sroa.012.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24362
  br i1 %.not18, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24362, !nonnull !4, !noundef !4
  %i.au = trunc nuw nsw i64 %i.m to i8
  %notmask9.i = shl nsw i8 -1, %i.au
  %i.av = xor i8 %notmask9.i, -1
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.l   ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !4
  %i.ay = and i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %.thread, %bb.t, %bb.u
  store i64 %i.k, ptr %i.aj, align 16, !alias.scope !24362
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.v ], [ %i.bn, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  %i.bd = icmp samesign eq i64 %i.k, 0
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.be, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !24363)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24363, !noalias !24364, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24363, !noalias !24364 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24363, !noalias !24364
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24363, !noalias !24364
  %i.bh = load i64, ptr %i.aj, align 16, !alias.scope !24363, !noalias !24364, !noundef !4
  store i64 0, ptr %i.aj, align 16, !alias.scope !24363, !noalias !24364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24365
  store i64 1, ptr %i.a, align 8, !noalias !24365
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bi, align 8, !noalias !24365
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bj, align 8, !noalias !24365
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24365
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24365
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bk = load <2 x i64>, ptr %i.e, align 16, !alias.scope !24363, !noalias !24364
  store i64 128, ptr %i.e, align 16, !alias.scope !24363, !noalias !24364
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !24363, !noalias !24364
  store <2 x i64> %i.bk, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !24365
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24366
  %i.bl = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !24366 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !24365

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !24365

bb.z:                                             ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !24365
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24365
  store ptr %i.bl, ptr %i.b, align 8, !noalias !24365
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bp, align 8, !noalias !24365
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bq, align 8, !noalias !24365
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bh)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24365
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !24367)
  call void @llvm.experimental.noalias.scope.decl(metadata !24368)
  call void @llvm.experimental.noalias.scope.decl(metadata !24369)
  call void @llvm.experimental.noalias.scope.decl(metadata !24370)
  call void @llvm.experimental.noalias.scope.decl(metadata !24371)
  %i.br = load ptr, ptr %i.f, align 8, !alias.scope !24372, !nonnull !4, !noundef !4
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !24372
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bb, %.lr.ph ], [ %i.bu, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.ae ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 1 ; 2 uses
  %i.bv = add nuw i64 %.sroa.7.049, 1
  %i.bw = load i8, ptr %.sroa.0.050, align 1, !noundef !4
  %i.bx = sext i8 %i.bw to i64                    ; 2 uses
  %i.by = icmp ugt i64 %2, %i.bx
  br i1 %i.by, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.bz = icmp eq ptr %i.bu, %i.bc
  br i1 %i.bz, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ca = load ptr, ptr %i.bf, align 8, !noundef !4
  %i.cb = load i64, ptr %i.bg, align 8, !noundef !4
  %i.cc = add i64 %i.cb, %i.bx                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !4
  %i.cg = trunc i64 %i.cc to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = shl nuw i8 1, %i.ch
  %i.cj = and i8 %i.ci, %i.cf
  %.not21 = icmp eq i8 %i.cj, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.ck = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %.val23
  br i1 %i.cl, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cm = trunc i64 %.sroa.7.049 to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = shl nuw i8 1, %i.cn
  %i.cp = xor i8 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ck ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = and i8 %i.cr, %i.cp
  store i8 %i.cs, ptr %i.cq, align 1
  %.pre51 = load i64, ptr %i.be, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types8Int8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24375, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types8Int8TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24436)
  %i.l = icmp samesign eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !24436, !noalias !24437, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !24436, !noalias !24438 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !24436, !noalias !24438 ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.s = icmp eq i64 %i.k, 1
  br i1 %i.s, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.k, -2
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.av, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i8, ptr %i.t, align 1, !alias.scope !24439, !noalias !24440, !noundef !4
  %i.u = sext i8 %.val13.i.i to i64               ; 2 uses
  %i.v = icmp ugt i64 %i.n, %i.u
  br i1 %i.v, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit38, !prof !9

.loopexit38:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit38
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.val13.i.i.1 = load i8, ptr %i.x, align 1, !alias.scope !24439, !noalias !24440, !noundef !4
  %i.y = sext i8 %.val13.i.i.1 to i64             ; 2 uses
  %i.z = icmp ugt i64 %i.n, %i.y
  br i1 %i.z, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit38, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.aa = add i64 %i.r, %i.u                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !24441, !noundef !4
  %i.ae = xor i8 %i.ad, -1
  %i.af = trunc i64 %i.aa to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = lshr i8 %i.ae, %i.ag
  %i.ai = and i8 %i.ah, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = add i64 %.sroa.02.0.i.i, %i.aj
  %i.al = add i64 %i.r, %i.y                      ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !24441, !noundef !4
  %i.ap = trunc i64 %i.al to i8
  %i.aq = and i8 %i.ap, 7
  %i.ar = xor i8 %i.ao, -1
  %i.as = lshr i8 %i.ar, %i.aq
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add i64 %i.ak, %i.au                    ; 3 uses
  %i.aw = add nuw i64 %.sroa.04.0.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.dl, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit38
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24442)
  call void @llvm.experimental.noalias.scope.decl(metadata !24443)
  call void @llvm.experimental.noalias.scope.decl(metadata !24444)
  call void @llvm.experimental.noalias.scope.decl(metadata !24445)
  call void @llvm.experimental.noalias.scope.decl(metadata !24446)
  %i.ay = load ptr, ptr %i.b, align 8, !alias.scope !24447, !nonnull !4, !noundef !4
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !24447
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i8, ptr %i.bb, align 1, !alias.scope !24439, !noalias !24440, !noundef !4
  %i.bc = sext i8 %.val13.i.i.epil to i64         ; 2 uses
  %i.bd = icmp ugt i64 %i.n, %i.bc
  br i1 %i.bd, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit38, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.be = add i64 %i.r, %i.bc                     ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !24441, !noundef !4
  %i.bi = trunc i64 %i.be to i8
  %i.bj = and i8 %i.bi, 7
  %i.bk = xor i8 %i.bh, -1
  %i.bl = lshr i8 %i.bk, %i.bj
  %i.bm = and i8 %i.bl, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = add i64 %.sroa.02.0.i.i.epil.init, %i.bn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %.loopexit.loopexit.unr-lcssa ], [ %i.bo, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRajjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types8Int8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4X_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IteraEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.bp = icmp ule i64 %.sroa.0.0.i.i, %i.k
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !24448)
  call void @llvm.experimental.noalias.scope.decl(metadata !24449)
  call void @llvm.experimental.noalias.scope.decl(metadata !24450)
  call void @llvm.experimental.noalias.scope.decl(metadata !24451)
  call void @llvm.experimental.noalias.scope.decl(metadata !24452)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !24453, !nonnull !4, !noundef !4
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !24453
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
end_hunk_3
begin_hunk_4_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 2305843009213693888
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24525
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !24525 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24526)
  call void @llvm.experimental.noalias.scope.decl(metadata !24527)
  call void @llvm.experimental.noalias.scope.decl(metadata !24528)
  call void @llvm.experimental.noalias.scope.decl(metadata !24529)
  call void @llvm.experimental.noalias.scope.decl(metadata !24530)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !24531, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !24531
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 2305843009213693888
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24532
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24532
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24532
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24532, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !24532
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !24533)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24533, !noalias !24534, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24533, !noalias !24534 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24533, !noalias !24534
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24533, !noalias !24534
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !24533, !noalias !24534, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !24533, !noalias !24534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24535
  store i64 1, ptr %i.a, align 8, !noalias !24535
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !24535
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !24535
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24535
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24535
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !24533, !noalias !24534
  store i64 128, ptr %i.e, align 16, !alias.scope !24533, !noalias !24534
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !24533, !noalias !24534
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !24535
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24536
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !24536 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !24535

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !24535

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !24535
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24535
  store ptr %i.bq, ptr %i.b, align 8, !noalias !24535
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !24535
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !24535
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24535
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !24537)
  call void @llvm.experimental.noalias.scope.decl(metadata !24538)
  call void @llvm.experimental.noalias.scope.decl(metadata !24539)
  call void @llvm.experimental.noalias.scope.decl(metadata !24540)
  call void @llvm.experimental.noalias.scope.decl(metadata !24541)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !24542, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !24542
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 2 uses
  %i.ca = add nuw i64 %.sroa.7.049, 1
  %i.cb = load i16, ptr %.sroa.0.050, align 2, !noundef !4
  %i.cc = sext i16 %i.cb to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %2, %i.cc
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.ce = icmp eq ptr %i.bz, %i.bh
  br i1 %i.ce, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cg = load i64, ptr %i.bl, align 8, !noundef !4
  %i.ch = add i64 %i.cg, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = shl nuw i8 1, %i.cm
  %i.co = and i8 %i.cn, %i.ck
  %.not21 = icmp eq i8 %i.co, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.cp = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.val23
  br i1 %i.cq, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cr = trunc i64 %.sroa.7.049 to i8
  %i.cs = and i8 %i.cr, 7
  %i.ct = shl nuw i8 1, %i.cs
  %i.cu = xor i8 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !4
  %i.cx = and i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.cv, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24545, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24606)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24606, !noalias !24607, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24606, !noalias !24608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !24606, !noalias !24608 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !24609, !noalias !24610, !noundef !4
  %i.v = sext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit36, !prof !9

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !24609, !noalias !24610, !noundef !4
  %i.z = sext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !24611, !noundef !4
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !24611, !noundef !4
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24612)
  call void @llvm.experimental.noalias.scope.decl(metadata !24613)
  call void @llvm.experimental.noalias.scope.decl(metadata !24614)
  call void @llvm.experimental.noalias.scope.decl(metadata !24615)
  call void @llvm.experimental.noalias.scope.decl(metadata !24616)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !24617, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !24617
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %i.bc = and i64 %i.k, 2
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i16, ptr %i.bd, align 2, !alias.scope !24609, !noalias !24610, !noundef !4
  %i.be = sext i16 %.val13.i.i.epil to i64        ; 2 uses
  %i.bf = icmp ugt i64 %i.o, %i.be
  br i1 %i.bf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bg = add i64 %i.s, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !24611, !noundef !4
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = and i8 %i.bk, 7
  %i.bm = xor i8 %i.bj, -1
  %i.bn = lshr i8 %i.bm, %i.bl
  %i.bo = and i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = add i64 %.sroa.02.0.i.i.epil.init, %i.bp
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.br = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !24618)
  call void @llvm.experimental.noalias.scope.decl(metadata !24619)
  call void @llvm.experimental.noalias.scope.decl(metadata !24620)
  call void @llvm.experimental.noalias.scope.decl(metadata !24621)
  call void @llvm.experimental.noalias.scope.decl(metadata !24622)
  %i.bs = load ptr, ptr %i.b, align 8, !alias.scope !24623, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !24623
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
end_hunk_4
begin_hunk_5_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 1152921504606846912
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24695
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !24695 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24696)
  call void @llvm.experimental.noalias.scope.decl(metadata !24697)
  call void @llvm.experimental.noalias.scope.decl(metadata !24698)
  call void @llvm.experimental.noalias.scope.decl(metadata !24699)
  call void @llvm.experimental.noalias.scope.decl(metadata !24700)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !24701, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !24701
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 1152921504606846912
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24702
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24702
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24702
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24702, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !24702
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -4                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !24703)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24703, !noalias !24704, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24703, !noalias !24704 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24703, !noalias !24704
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24703, !noalias !24704
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !24703, !noalias !24704, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !24703, !noalias !24704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24705
  store i64 1, ptr %i.a, align 8, !noalias !24705
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !24705
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !24705
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24705
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24705
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !24703, !noalias !24704
  store i64 128, ptr %i.e, align 16, !alias.scope !24703, !noalias !24704
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !24703, !noalias !24704
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !24705
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24706
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !24706 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !24705

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !24705

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !24705
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24705
  store ptr %i.bq, ptr %i.b, align 8, !noalias !24705
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !24705
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !24705
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24705
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !24707)
  call void @llvm.experimental.noalias.scope.decl(metadata !24708)
  call void @llvm.experimental.noalias.scope.decl(metadata !24709)
  call void @llvm.experimental.noalias.scope.decl(metadata !24710)
  call void @llvm.experimental.noalias.scope.decl(metadata !24711)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !24712, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !24712
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 4 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.049, 1
  %i.cb = load i32, ptr %.sroa.0.050, align 4, !noundef !4
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %2, %i.cc
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.ce = icmp eq ptr %i.bz, %i.bh
  br i1 %i.ce, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cg = load i64, ptr %i.bl, align 8, !noundef !4
  %i.ch = add i64 %i.cg, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = shl nuw i8 1, %i.cm
  %i.co = and i8 %i.cn, %i.ck
  %.not21 = icmp eq i8 %i.co, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.cp = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.val23
  br i1 %i.cq, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cr = trunc i64 %.sroa.7.049 to i8
  %i.cs = and i8 %i.cr, 7
  %i.ct = shl nuw i8 1, %i.cs
  %i.cu = xor i8 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !4
  %i.cx = and i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.cv, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24715, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24776)
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24776, !noalias !24777, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24776, !noalias !24778 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !24776, !noalias !24778 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 4611686018427387902
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i32, ptr %i.u, align 4, !alias.scope !24779, !noalias !24780, !noundef !4
  %i.v = sext i32 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit36, !prof !9

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val13.i.i.1 = load i32, ptr %i.y, align 4, !alias.scope !24779, !noalias !24780, !noundef !4
  %i.z = sext i32 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !24781, !noundef !4
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !24781, !noundef !4
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24782)
  call void @llvm.experimental.noalias.scope.decl(metadata !24783)
  call void @llvm.experimental.noalias.scope.decl(metadata !24784)
  call void @llvm.experimental.noalias.scope.decl(metadata !24785)
  call void @llvm.experimental.noalias.scope.decl(metadata !24786)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !24787, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !24787
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %i.bc = and i64 %i.k, 4
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i32, ptr %i.bd, align 4, !alias.scope !24779, !noalias !24780, !noundef !4
  %i.be = sext i32 %.val13.i.i.epil to i64        ; 2 uses
  %i.bf = icmp ugt i64 %i.o, %i.be
  br i1 %i.bf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit36, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bg = add i64 %i.s, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !24781, !noundef !4
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = and i8 %i.bk, 7
  %i.bm = xor i8 %i.bj, -1
  %i.bn = lshr i8 %i.bm, %i.bl
  %i.bo = and i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = add i64 %.sroa.02.0.i.i.epil.init, %i.bp
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.br = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !24788)
  call void @llvm.experimental.noalias.scope.decl(metadata !24789)
  call void @llvm.experimental.noalias.scope.decl(metadata !24790)
  call void @llvm.experimental.noalias.scope.decl(metadata !24791)
  call void @llvm.experimental.noalias.scope.decl(metadata !24792)
  %i.bs = load ptr, ptr %i.b, align 8, !alias.scope !24793, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !24793
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
end_hunk_5
begin_hunk_6_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int64TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 576460752303423424
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24865
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !24865 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24866)
  call void @llvm.experimental.noalias.scope.decl(metadata !24867)
  call void @llvm.experimental.noalias.scope.decl(metadata !24868)
  call void @llvm.experimental.noalias.scope.decl(metadata !24869)
  call void @llvm.experimental.noalias.scope.decl(metadata !24870)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !24871, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !24871
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 576460752303423424
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24872
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24872
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24872
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24872, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !24872
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -8                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !24873)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24873, !noalias !24874, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24873, !noalias !24874 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !24873, !noalias !24874
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24873, !noalias !24874
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !24873, !noalias !24874, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !24873, !noalias !24874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24875
  store i64 1, ptr %i.a, align 8, !noalias !24875
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !24875
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !24875
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24875
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24875
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !24873, !noalias !24874
  store i64 128, ptr %i.e, align 16, !alias.scope !24873, !noalias !24874
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !24873, !noalias !24874
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !24875
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24876
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !24876 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !24875

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !24875

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !24875
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24875
  store ptr %i.bq, ptr %i.b, align 8, !noalias !24875
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !24875
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !24875
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24875
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !24877)
  call void @llvm.experimental.noalias.scope.decl(metadata !24878)
  call void @llvm.experimental.noalias.scope.decl(metadata !24879)
  call void @llvm.experimental.noalias.scope.decl(metadata !24880)
  call void @llvm.experimental.noalias.scope.decl(metadata !24881)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !24882, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !24882
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 8 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.049, 1
  %i.cb = load i64, ptr %.sroa.0.050, align 8, !noundef !4 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %2
  br i1 %i.cc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.cd = icmp eq ptr %i.bz, %i.bh
  br i1 %i.cd, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ce = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cf = load i64, ptr %i.bl, align 8, !noundef !4
  %i.cg = add i64 %i.cf, %i.cb                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !4
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = shl nuw i8 1, %i.cl
  %i.cn = and i8 %i.cm, %i.cj
  %.not21 = icmp eq i8 %i.cn, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.co = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cp = icmp ult i64 %i.co, %.val23
  br i1 %i.cp, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cq = trunc i64 %.sroa.7.049 to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = shl nuw i8 1, %i.cr
  %i.ct = xor i8 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.co ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cw = and i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %i.cu, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24885, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int64TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24946)
  %i.m = icmp ult i64 %i.k, 8
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24946, !noalias !24947, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24946, !noalias !24948 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !24946, !noalias !24948 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.av, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.au, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i64, ptr %i.u, align 8, !alias.scope !24949, !noalias !24950, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val13.i.i, %i.o
  br i1 %i.v, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit34, !prof !9

.loopexit34:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit34
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val13.i.i.1 = load i64, ptr %i.x, align 8, !alias.scope !24949, !noalias !24950, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val13.i.i.1, %i.o
  br i1 %i.y, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit34, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.z = add i64 %.val13.i.i, %i.s                ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !24951, !noundef !4
  %i.ad = xor i8 %i.ac, -1
  %i.ae = trunc i64 %i.z to i8
  %i.af = and i8 %i.ae, 7
  %i.ag = lshr i8 %i.ad, %i.af
  %i.ah = and i8 %i.ag, 1
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = add i64 %.sroa.02.0.i.i, %i.ai
  %i.ak = add i64 %.val13.i.i.1, %i.s             ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !24951, !noundef !4
  %i.ao = trunc i64 %i.ak to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = xor i8 %i.an, -1
  %i.ar = lshr i8 %i.aq, %i.ap
  %i.as = and i8 %i.ar, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = add i64 %i.aj, %i.at                    ; 3 uses
  %i.av = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.dk, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit34
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24952)
  call void @llvm.experimental.noalias.scope.decl(metadata !24953)
  call void @llvm.experimental.noalias.scope.decl(metadata !24954)
  call void @llvm.experimental.noalias.scope.decl(metadata !24955)
  call void @llvm.experimental.noalias.scope.decl(metadata !24956)
  %i.ax = load ptr, ptr %i.b, align 8, !alias.scope !24957, !nonnull !4, !noundef !4
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !24957
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %i.ba = and i64 %i.k, 8
  %lcmp.mod.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod33)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i64, ptr %i.bb, align 8, !alias.scope !24949, !noalias !24950, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %.val13.i.i.epil, %i.o
  br i1 %i.bc, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit34, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bd = add i64 %.val13.i.i.epil, %i.s          ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !24951, !noundef !4
  %i.bh = trunc i64 %i.bd to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = xor i8 %i.bg, -1
  %i.bk = lshr i8 %i.bj, %i.bi
  %i.bl = and i8 %i.bk, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = add i64 %.sroa.02.0.i.i.epil.init, %i.bm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.bn, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRxjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int64TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterxEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.bo = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !24958)
  call void @llvm.experimental.noalias.scope.decl(metadata !24959)
  call void @llvm.experimental.noalias.scope.decl(metadata !24960)
  call void @llvm.experimental.noalias.scope.decl(metadata !24961)
  call void @llvm.experimental.noalias.scope.decl(metadata !24962)
  %i.bp = load ptr, ptr %i.b, align 8, !alias.scope !24963, !nonnull !4, !noundef !4
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !24963
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

end_hunk_6
begin_hunk_7_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9UInt8TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a
  %.not18 = icmp ne i64 %i.m, 0                   ; 2 uses
  %i.n = zext i1 %.not18 to i64
  %.sroa.012.0 = add nuw nsw i64 %i.l, %i.n       ; 11 uses
  %i.o = and i64 %.sroa.012.0, 63
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 4611686018427387840
  %i.q = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.r = icmp samesign ult i64 %i.q, %.sroa.012.0
  br i1 %i.r, label %bb.d, label %.split.i.thread, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i41 = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25035
  %i.t = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #41, !noalias !25035 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !5

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #37
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.w, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.w, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ad, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25036)
  call void @llvm.experimental.noalias.scope.decl(metadata !25037)
  call void @llvm.experimental.noalias.scope.decl(metadata !25038)
  call void @llvm.experimental.noalias.scope.decl(metadata !25039)
  call void @llvm.experimental.noalias.scope.decl(metadata !25040)
  %i.af = load ptr, ptr %i.f, align 8, !alias.scope !25041, !nonnull !4, !noundef !4
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !25041
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i42 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i41, %.split.i.thread ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.t, %.split.i.thread ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i42, ptr %.sroa.4.0..sroa_idx38, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.539.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.al, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %.not48 = icmp eq i64 %i.k, 0
  br i1 %.not48, label %.thread, label %bb.o

.thread:                                          ; preds = %._crit_edge.i
  store i64 %.sroa.012.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25042
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.am = icmp samesign ugt i64 %.sroa.012.0, %.sroa.4.0.i42
  br i1 %i.am, label %bb.p, label %bb.t, !prof !5

bb.p:                                             ; preds = %bb.o
  br i1 %i.p, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.012.0, 4611686018427387840
  %i.an = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.ao = icmp samesign ult i64 %i.an, %.sroa.012.0
  br i1 %i.ao, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.012.0, %bb.p ], [ %i.an, %bb.q ]
  %i.ap = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25042
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25042
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.o, %.noexc28
  %i.aq = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.ar = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 -1, i64 %.sroa.012.0, i1 false)
  store i64 %.sroa.012.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25042
  br i1 %.not18, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25042, !nonnull !4, !noundef !4
  %i.au = trunc nuw nsw i64 %i.m to i8
  %notmask9.i = shl nsw i8 -1, %i.au
  %i.av = xor i8 %notmask9.i, -1
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.l   ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !4
  %i.ay = and i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %.thread, %bb.t, %bb.u
  store i64 %i.k, ptr %i.aj, align 16, !alias.scope !25042
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.v ], [ %i.bn, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  %i.bd = icmp samesign eq i64 %i.k, 0
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.be, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !25043)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25043, !noalias !25044, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25043, !noalias !25044 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25043, !noalias !25044
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25043, !noalias !25044
  %i.bh = load i64, ptr %i.aj, align 16, !alias.scope !25043, !noalias !25044, !noundef !4
  store i64 0, ptr %i.aj, align 16, !alias.scope !25043, !noalias !25044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25045
  store i64 1, ptr %i.a, align 8, !noalias !25045
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bi, align 8, !noalias !25045
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bj, align 8, !noalias !25045
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25045
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25045
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bk = load <2 x i64>, ptr %i.e, align 16, !alias.scope !25043, !noalias !25044
  store i64 128, ptr %i.e, align 16, !alias.scope !25043, !noalias !25044
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !25043, !noalias !25044
  store <2 x i64> %i.bk, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !25045
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25046
  %i.bl = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !25046 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !25045

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !25045

bb.z:                                             ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !25045
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !25045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25045
  store ptr %i.bl, ptr %i.b, align 8, !noalias !25045
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bp, align 8, !noalias !25045
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bq, align 8, !noalias !25045
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bh)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25045
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !25047)
  call void @llvm.experimental.noalias.scope.decl(metadata !25048)
  call void @llvm.experimental.noalias.scope.decl(metadata !25049)
  call void @llvm.experimental.noalias.scope.decl(metadata !25050)
  call void @llvm.experimental.noalias.scope.decl(metadata !25051)
  %i.br = load ptr, ptr %i.f, align 8, !alias.scope !25052, !nonnull !4, !noundef !4
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !25052
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre52, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bb, %.lr.ph ], [ %i.bu, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.ae ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 1 ; 2 uses
  %i.bv = add nuw i64 %.sroa.7.049, 1
  %i.bw = load i8, ptr %.sroa.0.050, align 1, !noundef !4
  %i.bx = zext i8 %i.bw to i64                    ; 2 uses
  %i.by = icmp ugt i64 %2, %i.bx
  br i1 %i.by, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.bz = icmp eq ptr %i.bu, %i.bc
  br i1 %i.bz, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ca = load ptr, ptr %i.bf, align 8, !noundef !4
  %i.cb = load i64, ptr %i.bg, align 8, !noundef !4
  %i.cc = add i64 %i.cb, %i.bx                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !4
  %i.cg = trunc i64 %i.cc to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = shl nuw i8 1, %i.ch
  %i.cj = and i8 %i.ci, %i.cf
  %.not21 = icmp eq i8 %i.cj, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.ck = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %.val23
  br i1 %i.cl, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cm = trunc i64 %.sroa.7.049 to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = shl nuw i8 1, %i.cn
  %i.cp = xor i8 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ck ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = and i8 %i.cr, %i.cp
  store i8 %i.cs, ptr %i.cq, align 1
  %.pre51 = load i64, ptr %i.be, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9UInt8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !25055, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9UInt8TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25116)
  %i.l = icmp samesign eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !25116, !noalias !25117, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !25116, !noalias !25118 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !25116, !noalias !25118 ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.s = icmp eq i64 %i.k, 1
  br i1 %i.s, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.k, -2
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.av, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i8, ptr %i.t, align 1, !alias.scope !25119, !noalias !25120, !noundef !4
  %i.u = zext i8 %.val13.i.i to i64               ; 2 uses
  %i.v = icmp ugt i64 %i.n, %i.u
  br i1 %i.v, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit38, !prof !9

.loopexit38:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit38
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.val13.i.i.1 = load i8, ptr %i.x, align 1, !alias.scope !25119, !noalias !25120, !noundef !4
  %i.y = zext i8 %.val13.i.i.1 to i64             ; 2 uses
  %i.z = icmp ugt i64 %i.n, %i.y
  br i1 %i.z, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit38, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.aa = add i64 %i.r, %i.u                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !25121, !noundef !4
  %i.ae = xor i8 %i.ad, -1
  %i.af = trunc i64 %i.aa to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = lshr i8 %i.ae, %i.ag
  %i.ai = and i8 %i.ah, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = add i64 %.sroa.02.0.i.i, %i.aj
  %i.al = add i64 %i.r, %i.y                      ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !25121, !noundef !4
  %i.ap = trunc i64 %i.al to i8
  %i.aq = and i8 %i.ap, 7
  %i.ar = xor i8 %i.ao, -1
  %i.as = lshr i8 %i.ar, %i.aq
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add i64 %i.ak, %i.au                    ; 3 uses
  %i.aw = add nuw i64 %.sroa.04.0.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.dl, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit38
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25122)
  call void @llvm.experimental.noalias.scope.decl(metadata !25123)
  call void @llvm.experimental.noalias.scope.decl(metadata !25124)
  call void @llvm.experimental.noalias.scope.decl(metadata !25125)
  call void @llvm.experimental.noalias.scope.decl(metadata !25126)
  %i.ay = load ptr, ptr %i.b, align 8, !alias.scope !25127, !nonnull !4, !noundef !4
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !25127
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i8, ptr %i.bb, align 1, !alias.scope !25119, !noalias !25120, !noundef !4
  %i.bc = zext i8 %.val13.i.i.epil to i64         ; 2 uses
  %i.bd = icmp ugt i64 %i.n, %i.bc
  br i1 %i.bd, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, label %.loopexit38, !prof !9

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil: ; preds = %.epil.preheader
  %i.be = add i64 %i.r, %i.bc                     ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !25121, !noundef !4
  %i.bi = trunc i64 %i.be to i8
  %i.bj = and i8 %i.bi, 7
  %i.bk = xor i8 %i.bh, -1
  %i.bl = lshr i8 %i.bk, %i.bj
  %i.bm = and i8 %i.bl, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = add i64 %.sroa.02.0.i.i.epil.init, %i.bn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %.loopexit.loopexit.unr-lcssa ], [ %i.bo, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRhjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9UInt8TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.epil ] ; 2 uses
  %i.bp = icmp ule i64 %.sroa.0.0.i.i, %i.k
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !25128)
  call void @llvm.experimental.noalias.scope.decl(metadata !25129)
  call void @llvm.experimental.noalias.scope.decl(metadata !25130)
  call void @llvm.experimental.noalias.scope.decl(metadata !25131)
  call void @llvm.experimental.noalias.scope.decl(metadata !25132)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !25133, !nonnull !4, !noundef !4
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !25133
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
end_hunk_7
