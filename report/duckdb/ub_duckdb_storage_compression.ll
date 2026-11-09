Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression?download=true
inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZN18duckdb_fastpforlib8internal12__fastpack12EPKjPj

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack13EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack14EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack15EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack16EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack17EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack18EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack19EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack20EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack21EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack22EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack23EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack24EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack25EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack26EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack27EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack28EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack29EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack30EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack31EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN18duckdb_fastpforlib8internal12__fastpack32EPKjPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20FSSTCompressionState5ResetEv(ptr noundef nonnull align 8 dereferenceable(2448) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2740 {
bb.a:
  %1 = alloca %"class.duckdb::BufferHandle", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !977  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !979
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorIjLb1ESaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !979
  br label %_ZN6duckdb6vectorIjLb1ESaIjEE5clearEv.exit

_ZN6duckdb6vectorIjLb1ESaIjEE5clearEv.exit:       ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.e, align 8, !tbaa !1051
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.f, align 8, !tbaa !1050
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.g, align 8, !tbaa !1053
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !729
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.k) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !541
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.t = call noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !822
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !826
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.z = load i64, ptr %i.y, align 8, !tbaa !827
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %.0.copyload.i.i = load i64, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.0.copyload.i.i, ptr %i.ab, align 8, !tbaa !101
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !822
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !826
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1170
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !1054
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb14FSSTPrimitives22DecompressInlinedValueEPvPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2741 {
bb.a:
  %3 = alloca %"struct.duckdb::FSSTPrimitives::StringWithExtraSpace", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = call i64 @duckdb_fsst_decompress(ptr noundef %0, i64 noundef %2, ptr noundef %1, i64 noundef 108, ptr noundef nonnull %i.b) ; 5 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !515
  %i.d = icmp ugt i64 %i.c, 12
  br i1 %i.d, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb11IOExceptionC2IJRKmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6duckdb8string_t13INLINE_LENGTHE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !550    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %.pn15, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn14

._crit_edge.i:                                    ; preds = %bb.a
  %i.k = trunc nuw nsw i64 %i.c to i32
  store i32 %i.k, ptr %3, align 8, !tbaa !702
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.m = sub nuw nsw i64 12, %i.c
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  call void @_ZNK6duckdb8string_t16VerifyCharactersEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr i64 @duckdb_fsst_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #9 comdat !guid !2748 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 11 uses
  %i.e = icmp ugt i64 %3, 31                      ; 2 uses
  %i.f = icmp ugt i64 %1, 3
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.h = phi i64 [ %i.cp, %bb.h ], [ 4, %bb.a ]
  %.0165191 = phi i64 [ %.5, %bb.h ], [ 0, %bb.a ] ; 5 uses
  %.0166190 = phi i64 [ %.5171, %bb.h ], [ 0, %bb.a ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0165191 ; 4 uses
  %.0.copyload = load i32, ptr %i.i, align 1      ; 5 uses
  %i.j = and i32 %.0.copyload, -2139062144
  %i.k = and i32 %.0.copyload, 2139062143
  %i.l = sub nuw i32 -16843010, %i.k
  %i.m = xor i32 %i.l, -2139062144
  %i.n = and i32 %i.j, %i.m                       ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.mask216 = and i32 %.0.copyload, 255
  %i.p = zext nneg i32 %.mask216 to i64           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %.0166190
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !702
  %i.v = zext i8 %i.u to i64
  %i.w = add i64 %.0166190, %i.v                  ; 2 uses
  %i.x = getelementptr i8, ptr %i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !702
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.z
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !702
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %i.w, %i.af                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !702
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8
  store i64 %i.am, ptr %i.ak, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !702
  %i.ap = zext i8 %i.ao to i64
  %i.aq = add i64 %i.ag, %i.ap                    ; 2 uses
  %i.ar = getelementptr i8, ptr %i.i, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !702
  %i.at = zext i8 %i.as to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.at
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !702
  %i.az = zext i8 %i.ay to i64
  %i.ba = add i64 %i.aq, %i.az
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.bb = trunc i32 %.0.copyload to i8            ; 2 uses
  %i.bc = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.n, i1 true)
  %i.bd = lshr i32 %i.bc, 3
  switch i32 %i.bd, label %default.unreachable215 [
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.be = add i64 %.0165191, 1                    ; 2 uses
  %.mask = and i32 %.0.copyload, 255
  %i.bf = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.0166190
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.bg, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !702
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %.0166190, %i.bl
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !702
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = phi i8 [ %.pre, %bb.d ], [ %i.bb, %bb.c ]
  %.1167 = phi i64 [ %i.bm, %bb.d ], [ %.0166190, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %i.be, %bb.d ], [ %.0165191, %bb.c ]
  %i.bo = add i64 %.1, 1                          ; 2 uses
  %i.bp = zext i8 %i.bn to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 %.1167
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !702
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %.1167, %i.bv
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  %.pre205 = load i8, ptr %.phi.trans.insert204, align 1, !tbaa !702
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bx = phi i8 [ %.pre205, %bb.e ], [ %i.bb, %bb.c ]
  %.2168 = phi i64 [ %i.bw, %bb.e ], [ %.0166190, %bb.c ] ; 2 uses
  %.2 = phi i64 [ %i.bo, %bb.e ], [ %.0165191, %bb.c ]
  %i.by = add i64 %.2, 1
  %i.bz = zext i8 %i.bx to i64                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.2168
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !702
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %.2168, %i.cf
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.3169 = phi i64 [ %i.cg, %bb.f ], [ %.0166190, %bb.c ] ; 2 uses
  %.3 = phi i64 [ %i.by, %bb.f ], [ %.0165191, %bb.c ] ; 2 uses
  %i.ch = getelementptr i8, ptr %2, i64 %.3
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !702
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %.3169
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !702
  %i.cl = add i64 %.3169, 1
  %i.cm = add i64 %.3, 2
  br label %bb.h

default.unreachable215:                           ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.b
  %.5171 = phi i64 [ %i.ba, %bb.b ], [ %i.cl, %bb.g ] ; 3 uses
  %.5 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.g ] ; 3 uses
  %i.cn = add i64 %.5171, 32
  %i.co = icmp ule i64 %i.cn, %3                  ; 2 uses
  %i.cp = add i64 %.5, 4                          ; 2 uses
  %i.cq = icmp ule i64 %i.cp, %1
  %i.cr = and i1 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !2742

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0166.lcssa = phi i64 [ 0, %bb.a ], [ %.5171, %bb.h ] ; 5 uses
  %.0165.lcssa = phi i64 [ 0, %bb.a ], [ %.5, %bb.h ] ; 5 uses
  %.lcssa = phi i1 [ %i.e, %bb.a ], [ %i.co, %bb.h ]
  br i1 %.lcssa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %._crit_edge
  %i.cs = add i64 %.0165.lcssa, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.cs, %1
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr i8, ptr %2, i64 %.0165.lcssa ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1      ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !702
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %.0166.lcssa ; 2 uses
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !702
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !702 ; 2 uses
  %.not182 = icmp eq i8 %i.cx, -1
  br i1 %.not182, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = zext i8 %i.cx to i64                    ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  store i64 %i.da, ptr %i.cw, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !702
  %i.dd = zext i8 %i.dc to i64
  %i.de = add i64 %.0166.lcssa, %i.dd             ; 4 uses
  %i.df = load i8, ptr %i.cu, align 1, !tbaa !702 ; 2 uses
  %.not183 = icmp eq i8 %i.df, -1
  br i1 %.not183, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = zext i8 %i.df to i64                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8
  store i64 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !702
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add i64 %i.de, %i.dm
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.do = add i64 %.0165.lcssa, 3
  %i.dp = getelementptr i8, ptr %i.ct, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !702
  %i.dr = add i64 %i.de, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !702
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.dt = add i64 %.0166.lcssa, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %.6172 = phi i64 [ %i.dn, %bb.l ], [ %i.dr, %bb.m ], [ %i.dt, %bb.n ], [ %.0166.lcssa, %bb.i ] ; 3 uses
  %.6 = phi i64 [ %i.cs, %bb.l ], [ %i.do, %bb.m ], [ %i.cs, %bb.n ], [ %.0165.lcssa, %bb.i ] ; 4 uses
  %i.du = icmp ult i64 %.6, %1
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dv = add nuw i64 %.6, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %.6
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !702
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %.6172
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8
  store i64 %i.eb, ptr %i.dz, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !702
  %i.ee = zext i8 %i.ed to i64
  %i.ef = add i64 %.6172, %i.ee
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge
  %.7173 = phi i64 [ %i.ef, %bb.p ], [ %.6172, %bb.o ], [ %.0166.lcssa, %._crit_edge ] ; 2 uses
  %.7 = phi i64 [ %i.dv, %bb.p ], [ %.6, %bb.o ], [ %.0165.lcssa, %._crit_edge ] ; 2 uses
  %i.eg = icmp ult i64 %.7, %1
  br i1 %i.eg, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %bb.q, %.loopexit
  %.8198 = phi i64 [ %.9, %.loopexit ], [ %.7, %bb.q ] ; 3 uses
  %.8174197 = phi i64 [ %.9175, %.loopexit ], [ %.7173, %bb.q ] ; 14 uses
  %i.eh = add nuw i64 %.8198, 1                   ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %.8198
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !702 ; 2 uses
  %.not186 = icmp eq i8 %i.ej, -1
  br i1 %.not186, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph200
  %i.ek = zext i8 %i.ej to i64                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !702
  %i.en = zext i8 %i.em to i64
  %i.eo = add i64 %.8174197, %i.en                ; 6 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ek ; 3 uses
  %i.eq = sub i64 0, %.8174197
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 %i.eq ; 5 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %3) ; 5 uses
  %i.es = icmp ult i64 %.8174197, %spec.select
  br i1 %i.es, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.r
  %i.et = sub nuw i64 %spec.select, %.8174197     ; 7 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eu = shl nuw nsw i64 %i.ek, 3
  %5 = add i64 %.8174197, %i.a
  %6 = add i64 %i.eu, %i.b
  %i.ev = sub i64 %5, %6
  %i.ew = add i64 %i.ev, -265
  %diff.check = icmp ult i64 %i.ew, 31
  br i1 %diff.check, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ex = and i64 %i.et, 24
  %n.vec = and i64 %i.et, -32                     ; 4 uses
  %i.ey = add i64 %.8174197, %n.vec
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %.8174197
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ep, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <16 x i8>, ptr %i.fa, align 1, !tbaa !702
  %wide.load220 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !702
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <16 x i8> %wide.load, ptr %i.fc, align 1, !tbaa !702
  store <16 x i8> %wide.load220, ptr %i.fd, align 1, !tbaa !702
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !2743

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !2749

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec221 = and i64 %i.et, -8                   ; 3 uses
  %i.ff = add i64 %.8174197, %n.vec221
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 %.8174197
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index222 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next224, %vec.epilog.vector.body ] ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ep, i64 %index222
  %wide.load223 = load <8 x i8>, ptr %i.fh, align 1, !tbaa !702
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index222
  store <8 x i8> %wide.load223, ptr %i.fi, align 1, !tbaa !702
  %index.next224 = add nuw i64 %index222, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next224, %n.vec221
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2744

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n225 = icmp eq i64 %i.et, %n.vec221
  br i1 %cmp.n225, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0164194.ph = phi i64 [ %.8174197, %iter.check ], [ %.8174197, %vector.memcheck ], [ %i.ey, %vec.epilog.iter.check ], [ %i.ff, %vec.epilog.middle.block ] ; 4 uses
  %i.fk = sub i64 %spec.select, %.0164194.ph
  %xtraiter = and i64 %i.fk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0164194.prol = phi i64 [ %i.fo, %.lr.ph196.prol ], [ %.0164194.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0164194.prol
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !702
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194.prol
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !702
  %i.fo = add nuw i64 %.0164194.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !2745

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0164194.unr = phi i64 [ %.0164194.ph, %.lr.ph196.preheader ], [ %i.fo, %.lr.ph196.prol ]
  %i.fp = sub i64 %.0164194.ph, %spec.select
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0164194 = phi i64 [ %i.gg, %.lr.ph196 ], [ %.0164194.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0164194
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !702
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !702
  %i.fu = add nuw i64 %.0164194, 1                ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !702
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !702
  %i.fy = add nuw i64 %.0164194, 2                ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !702
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 %i.fy
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !702
  %i.gc = add nuw i64 %.0164194, 3                ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !702
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 %i.gc
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !702
  %i.gg = add nuw i64 %.0164194, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.gg, %spec.select
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph196, !llvm.loop !2746

bb.s:                                             ; preds = %.lr.ph200
  %i.gh = icmp ult i64 %.8174197, %3
  br i1 %i.gh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !702
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 %.8174197
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !702
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gl = add i64 %.8198, 2
  %i.gm = add i64 %.8174197, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block, %vec.epilog.middle.block, %bb.r, %bb.u
  %.9175 = phi i64 [ %i.gm, %bb.u ], [ %i.eo, %bb.r ], [ %i.eo, %middle.block ], [ %i.eo, %vec.epilog.middle.block ], [ %i.eo, %.lr.ph196 ], [ %i.eo, %.lr.ph196.prol.loopexit ] ; 2 uses
  %.9 = phi i64 [ %i.gl, %bb.u ], [ %i.eh, %bb.r ], [ %i.eh, %middle.block ], [ %i.eh, %vec.epilog.middle.block ], [ %i.eh, %.lr.ph196 ], [ %i.eh, %.lr.ph196.prol.loopexit ] ; 2 uses
  %i.gn = icmp ult i64 %.9, %1
  br i1 %i.gn, label %.lr.ph200, label %._crit_edge201, !llvm.loop !2747

._crit_edge201:                                   ; preds = %.loopexit, %bb.q
  %.8174.lcssa = phi i64 [ %.7173, %bb.q ], [ %.9175, %.loopexit ] ; 2 uses
  %.not184 = icmp ult i64 %.8174.lcssa, %3
  br i1 %.not184, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge201
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !2752
  %i.gq = and i8 %i.gp, 1
  %.not185 = icmp eq i8 %i.gq, 0
  br i1 %.not185, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gr = getelementptr i8, ptr %4, i64 %3
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  store i8 0, ptr %i.gs, align 1, !tbaa !702
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge201
  ret i64 %.8174.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11IOExceptionC2IJRKmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2755 {
bb.a:
  %4 = alloca %"class.std::vector.1187", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !2756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !2756
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !1115, !noalias !2756 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1116, !noalias !2756 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !550  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #32
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !1115, !noalias !2756
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #32
  br label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
end_hunk_0
begin_hunk_1_@_ZN6duckdb9RLEFilterIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a

bb.p:                                             ; preds = %bb.n
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.bn, %bb.p ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !552

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !698 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.br, align 8, !tbaa !700
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !701
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !541
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !541
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !702
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.v:                                             ; preds = %bb.t
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bu, %bb.u ], [ %i.ce, %bb.v ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cf, label %bb.w, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !552

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ae

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0116199 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !101
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cl
  store i8 1, ptr %i.cm, align 1, !tbaa !536
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !101
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cq
  store i8 1, ptr %i.cr, align 1, !tbaa !536
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !101
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cv
  store i8 1, ptr %i.cw, align 1, !tbaa !536
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !101
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.da
  store i8 1, ptr %i.db, align 1, !tbaa !536
  %i.dc = add nuw i64 %.0116199, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !3211

bb.aa:                                            ; preds = %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %i.ci, %bb.z ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ac ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ae:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !3219
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %5, align 8, !tbaa !515
  br label %bb.bs

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !828 ; 10 uses
  %i.dj = ptrtoaddr ptr %i.di to i64              ; 2 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dk = load i64, ptr %5, align 8, !tbaa !515
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dk)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ah

common.resume:                                    ; preds = %bb.ad, %bb.bt, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %.pn148.pn.pn, %bb.bt ], [ %.pn.pn.pn.pn.pn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ah:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ag
  %i.dn = load ptr, ptr %4, align 8, !tbaa !814   ; 2 uses
  %.not185 = icmp eq ptr %i.dn, null
  %i.do = load i64, ptr %5, align 8, !tbaa !515   ; 6 uses
  %.not223 = icmp eq i64 %i.do, 0                 ; 2 uses
  br i1 %.not185, label %bb.ai, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader187
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !1112
  %i.ds = load ptr, ptr %12, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.dv = load ptr, ptr %12, align 8              ; 5 uses
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %.pre243 = load i64, ptr %i.dt, align 8, !tbaa !1223
  %.pre244 = load i64, ptr %i.du, align 8, !tbaa !1224
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !1112
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph214, %.loopexit
  %i.dy = phi i64 [ %.pre244, %.lr.ph214 ], [ 0, %.loopexit ] ; 5 uses
  %i.dz = phi i64 [ %.pre243, %.lr.ph214 ], [ %i.hs, %.loopexit ] ; 4 uses
  %.0111211 = phi i64 [ 0, %.lr.ph214 ], [ %i.hr, %.loopexit ] ; 17 uses
  %.0113210 = phi i64 [ 0, %.lr.ph214 ], [ %.4, %.loopexit ] ; 12 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !878
  %i.ec = zext i16 %i.eb to i64                   ; 4 uses
  %i.ed = sub i64 %i.ec, %i.dy                    ; 6 uses
  %i.ee = sub nuw i64 %i.do, %.0111211            ; 6 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dz
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !101 ; 8 uses
  %i.eh = icmp ugt i64 %i.ed, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !536, !range !546, !noundef !547
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  br i1 %i.eh, label %bb.ak, label %bb.al, !prof !552

bb.ak:                                            ; preds = %bb.aj
  %i.el = icmp ne i64 %i.do, %.0111211
  %or.cond = and i1 %i.el, %i.ek
  br i1 %or.cond, label %.lr.ph218, label %.thread

.lr.ph218:                                        ; preds = %bb.ak
  %i.em = load ptr, ptr %12, align 8, !tbaa !814  ; 5 uses
  %min.iters.check304 = icmp ult i64 %i.ee, 12
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph218
  %i.en = ptrtoaddr ptr %i.em to i64
  %i.eo = shl i64 %.0113210, 2
  %i.ep = shl i64 %.0111211, 2
  %i.eq = add i64 %i.eo, %i.en
  %i.er = add i64 %i.ep, %i.dj
  %i.es = sub i64 %i.er, %i.eq
  %diff.check306 = icmp ugt i64 %i.es, -32
  br i1 %diff.check306, label %scalar.ph303.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck305
  %n.vec308 = and i64 %i.ee, -8                   ; 4 uses
  %i.et = add i64 %.0113210, %n.vec308            ; 2 uses
  %broadcast.splatinsert309 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat310 = shufflevector <4 x i32> %broadcast.splatinsert309, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep360 = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.ew = getelementptr [4 x i8], ptr %i.em, i64 %.0113210
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph307
  %index312 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body311 ] ; 4 uses
  %i.ex = insertelement <4 x i64> poison, i64 %index312, i64 0
  %i.ey = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = or disjoint <4 x i64> %i.ey, <i64 4, i64 5, i64 6, i64 7>
  %i.fa = or disjoint <4 x i64> %i.ey, <i64 0, i64 1, i64 2, i64 3>
  %i.fb = add <4 x i64> %i.fa, %i.ev
  %i.fc = add <4 x i64> %i.ez, %i.ev
  %gep361 = getelementptr [4 x i8], ptr %invariant.gep360, i64 %index312 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep361, i64 16
  store <4 x i32> %broadcast.splat310, ptr %gep361, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat310, ptr %i.fd, align 4, !tbaa !101
  %i.fe = trunc <4 x i64> %i.fb to <4 x i32>
  %i.ff = trunc <4 x i64> %i.fc to <4 x i32>
  %i.fg = getelementptr [4 x i8], ptr %i.ew, i64 %index312 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %i.fe, ptr %i.fg, align 4, !tbaa !101
  store <4 x i32> %i.ff, ptr %i.fh, align 4, !tbaa !101
  %index.next313 = add nuw i64 %index312, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.fi, label %middle.block314, label %vector.body311, !llvm.loop !3212

middle.block314:                                  ; preds = %vector.body311
  %cmp.n315 = icmp eq i64 %i.ee, %n.vec308
  br i1 %cmp.n315, label %.thread, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck305, %.lr.ph218, %middle.block314
  %.0110217.ph = phi i64 [ 0, %vector.memcheck305 ], [ 0, %.lr.ph218 ], [ %n.vec308, %middle.block314 ] ; 4 uses
  %.1114216.ph = phi i64 [ %.0113210, %vector.memcheck305 ], [ %.0113210, %.lr.ph218 ], [ %i.et, %middle.block314 ] ; 3 uses
  %i.fj = sub i64 %i.do, %.0111211
  %i.fk = xor i64 %.0110217.ph, -1
  %i.fl = add i64 %i.do, %i.fk
  %xtraiter340 = and i64 %i.fj, 1
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %scalar.ph303.prol.loopexit, label %scalar.ph303.prol

scalar.ph303.prol:                                ; preds = %scalar.ph303.preheader
  %i.fm = add i64 %.0110217.ph, %.0111211         ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fm
  store i32 %i.eg, ptr %i.fn, align 4, !tbaa !101
  %i.fo = trunc i64 %i.fm to i32
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216.ph
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !101
  %i.fq = add i64 %.1114216.ph, 1                 ; 2 uses
  %i.fr = or disjoint i64 %.0110217.ph, 1
  br label %scalar.ph303.prol.loopexit

scalar.ph303.prol.loopexit:                       ; preds = %scalar.ph303.prol, %scalar.ph303.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph303.preheader ], [ %i.fq, %scalar.ph303.prol ]
  %.0110217.unr = phi i64 [ %.0110217.ph, %scalar.ph303.preheader ], [ %i.fr, %scalar.ph303.prol ]
  %.1114216.unr = phi i64 [ %.1114216.ph, %scalar.ph303.preheader ], [ %i.fq, %scalar.ph303.prol ]
  %i.fs = icmp eq i64 %i.fl, %.0111211
  br i1 %i.fs, label %.thread, label %scalar.ph303.preheader.new

scalar.ph303.preheader.new:                       ; preds = %scalar.ph303.prol.loopexit
  %invariant.op362 = add i64 1, %.0111211
  br label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303, %scalar.ph303.preheader.new
  %.0110217 = phi i64 [ %.0110217.unr, %scalar.ph303.preheader.new ], [ %i.gc, %scalar.ph303 ] ; 3 uses
  %.1114216 = phi i64 [ %.1114216.unr, %scalar.ph303.preheader.new ], [ %i.gb, %scalar.ph303 ] ; 3 uses
  %i.ft = add i64 %.0110217, %.0111211            ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ft
  store i32 %i.eg, ptr %i.fu, align 4, !tbaa !101
  %i.fv = trunc i64 %i.ft to i32
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !101
  %.reass363 = add i64 %.0110217, %invariant.op362 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass363
  store i32 %i.eg, ptr %i.fx, align 4, !tbaa !101
  %i.fy = trunc i64 %.reass363 to i32
  %i.fz = getelementptr [4 x i8], ptr %i.em, i64 %.1114216
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !101
  %i.gb = add i64 %.1114216, 2                    ; 2 uses
  %i.gc = add nuw i64 %.0110217, 2                ; 2 uses
  %exitcond241.not.1 = icmp eq i64 %i.gc, %i.ee
  br i1 %exitcond241.not.1, label %.thread, label %scalar.ph303, !llvm.loop !3213

.thread:                                          ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303, %middle.block314, %bb.ak
  %.2 = phi i64 [ %.0113210, %bb.ak ], [ %i.et, %middle.block314 ], [ %.lcssa.unr, %scalar.ph303.prol.loopexit ], [ %i.gb, %scalar.ph303 ]
  %i.gd = add i64 %i.dy, %i.ee
  store i64 %i.gd, ptr %i.du, align 8, !tbaa !1224
  br label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit

bb.al:                                            ; preds = %bb.aj
  %i.ge = icmp ne i64 %i.dy, %i.ec
  %or.cond220 = and i1 %i.ge, %i.ek
  br i1 %or.cond220, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %bb.al
  %min.iters.check = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check, label %.lr.ph208.preheader318, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph208.preheader
  %15 = shl i64 %.0113210, 2
  %i.gf = shl i64 %.0111211, 2
  %16 = add i64 %15, %i.dw
  %i.gg = add i64 %i.gf, %i.dj
  %17 = sub i64 %i.gg, %16
  %diff.check = icmp ugt i64 %17, -32
  br i1 %diff.check, label %.lr.ph208.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -8                      ; 4 uses
  %i.gh = add i64 %.0113210, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gi = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.gj = shufflevector <4 x i64> %i.gi, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.gk = getelementptr [4 x i8], ptr %i.dv, i64 %.0113210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gl = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.gm = shufflevector <4 x i64> %i.gl, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gn = or disjoint <4 x i64> %i.gm, <i64 4, i64 5, i64 6, i64 7>
  %i.go = or disjoint <4 x i64> %i.gm, <i64 0, i64 1, i64 2, i64 3>
  %i.gp = add <4 x i64> %i.go, %i.gj
  %i.gq = add <4 x i64> %i.gn, %i.gj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat, ptr %i.gr, align 4, !tbaa !101
  %i.gs = trunc <4 x i64> %i.gp to <4 x i32>
  %i.gt = trunc <4 x i64> %i.gq to <4 x i32>
  %i.gu = getelementptr [4 x i8], ptr %i.gk, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <4 x i32> %i.gs, ptr %i.gu, align 4, !tbaa !101
  store <4 x i32> %i.gt, ptr %i.gv, align 4, !tbaa !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !3214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph208.preheader318

.lr.ph208.preheader318:                           ; preds = %vector.memcheck, %.lr.ph208.preheader, %middle.block
  %.0109207.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph208.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.3206.ph = phi i64 [ %.0113210, %vector.memcheck ], [ %.0113210, %.lr.ph208.preheader ], [ %i.gh, %middle.block ] ; 3 uses
  %i.gx = sub i64 %i.ec, %i.dy
  %i.gy = xor i64 %.0109207.ph, -1
  %i.gz = add i64 %i.gy, %i.ec
  %xtraiter336 = and i64 %i.gx, 1
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph208.prol.loopexit, label %.lr.ph208.prol

.lr.ph208.prol:                                   ; preds = %.lr.ph208.preheader318
  %i.ha = add i64 %.0109207.ph, %.0111211         ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ha
  store i32 %i.eg, ptr %i.hb, align 4, !tbaa !101
  %i.hc = trunc i64 %i.ha to i32
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206.ph
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !101
  %i.he = add i64 %.3206.ph, 1                    ; 2 uses
  %i.hf = or disjoint i64 %.0109207.ph, 1
  br label %.lr.ph208.prol.loopexit

.lr.ph208.prol.loopexit:                          ; preds = %.lr.ph208.prol, %.lr.ph208.preheader318
  %.lcssa319.unr = phi i64 [ poison, %.lr.ph208.preheader318 ], [ %i.he, %.lr.ph208.prol ]
  %.0109207.unr = phi i64 [ %.0109207.ph, %.lr.ph208.preheader318 ], [ %i.hf, %.lr.ph208.prol ]
  %.3206.unr = phi i64 [ %.3206.ph, %.lr.ph208.preheader318 ], [ %i.he, %.lr.ph208.prol ]
  %i.hg = icmp eq i64 %i.gz, %i.dy
  br i1 %i.hg, label %.loopexit, label %.lr.ph208.preheader318.new

.lr.ph208.preheader318.new:                       ; preds = %.lr.ph208.prol.loopexit
  %invariant.op = add i64 1, %.0111211
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader318.new
  %.0109207 = phi i64 [ %.0109207.unr, %.lr.ph208.preheader318.new ], [ %i.hq, %.lr.ph208 ] ; 3 uses
  %.3206 = phi i64 [ %.3206.unr, %.lr.ph208.preheader318.new ], [ %i.hp, %.lr.ph208 ] ; 3 uses
  %i.hh = add i64 %.0109207, %.0111211            ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hh
  store i32 %i.eg, ptr %i.hi, align 4, !tbaa !101
  %i.hj = trunc i64 %i.hh to i32
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !101
  %.reass = add i64 %.0109207, %invariant.op      ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass
  store i32 %i.eg, ptr %i.hl, align 4, !tbaa !101
  %i.hm = trunc i64 %.reass to i32
  %i.hn = getelementptr [4 x i8], ptr %i.dv, i64 %.3206
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  store i32 %i.hm, ptr %i.ho, align 4, !tbaa !101
  %i.hp = add i64 %.3206, 2                       ; 2 uses
  %i.hq = add nuw i64 %.0109207, 2                ; 2 uses
  %exitcond240.not.1 = icmp eq i64 %i.hq, %i.ed
  br i1 %exitcond240.not.1, label %.loopexit, label %.lr.ph208, !llvm.loop !3215

.loopexit:                                        ; preds = %.lr.ph208.prol.loopexit, %.lr.ph208, %middle.block, %bb.al
  %.4 = phi i64 [ %.0113210, %bb.al ], [ %i.gh, %middle.block ], [ %.lcssa319.unr, %.lr.ph208.prol.loopexit ], [ %i.hp, %.lr.ph208 ] ; 2 uses
  %i.hr = add i64 %i.ed, %.0111211                ; 2 uses
  %i.hs = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.hs, ptr %i.dt, align 8, !tbaa !1223
  store i64 0, ptr %i.du, align 8, !tbaa !1224
  %i.ht = icmp ult i64 %i.hr, %i.do
  br i1 %i.ht, label %bb.aj, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit

._crit_edge204:                                   ; preds = %bb.ba, %.preheader187
  %.7.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8, %bb.ba ] ; 2 uses
  %.0108.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.il, %bb.ba ]
  %i.hu = sub i64 %2, %.0108.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.hu, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge204
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.hv, align 8, !tbaa !1223
  %.promoted11.i = load i64, ptr %i.hw, align 8, !tbaa !1224
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i
  %i.hx = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.ih, %bb.ao ] ; 2 uses
  %i.hy = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ii, %bb.ao ] ; 3 uses
  %.010.i = phi i64 [ %i.hu, %.lr.ph.i ], [ %i.ie, %bb.ao ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !878
  %i.ib = zext i16 %i.ia to i64                   ; 2 uses
  %i.ic = sub i64 %i.ib, %i.hx
  %i.id = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.ic) ; 2 uses
  %i.ie = sub nuw i64 %.010.i, %i.id              ; 2 uses
  %i.if = add i64 %i.id, %i.hx                    ; 2 uses
  %.not8.i = icmp ult i64 %i.if, %i.ib
  br i1 %.not8.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ig = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.ig, ptr %i.hv, align 8, !tbaa !1223
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ih = phi i64 [ 0, %bb.an ], [ %i.if, %bb.am ] ; 2 uses
  %i.ii = phi i64 [ %i.ig, %bb.an ], [ %i.hy, %bb.am ]
  %.not.i156 = icmp eq i64 %i.ie, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.am, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.ao
  store i64 %i.ih, ptr %i.hw, align 8, !tbaa !1224
  br label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit

bb.ap:                                            ; preds = %.lr.ph203, %bb.ba
  %.0107202 = phi i64 [ 0, %.lr.ph203 ], [ %i.jp, %bb.ba ] ; 2 uses
  %.0108201 = phi i64 [ 0, %.lr.ph203 ], [ %i.il, %bb.ba ] ; 2 uses
  %.7200 = phi i64 [ 0, %.lr.ph203 ], [ %.8, %bb.ba ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.0107202
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !101 ; 2 uses
  %i.il = zext i32 %i.ik to i64                   ; 5 uses
  %i.im = icmp samesign ugt i64 %.0108201, %i.il
  br i1 %i.im, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.in = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bu unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iq = load ptr, ptr %13, align 8, !tbaa !550  ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.iq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.in) #30
  br label %bb.bt
end_hunk_1
begin_hunk_2_@_ZN6duckdb9RLEFilterIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a

bb.p:                                             ; preds = %bb.n
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.bn, %bb.p ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !552

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !698 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.br, align 8, !tbaa !700
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !701
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !541
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !541
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !702
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.v:                                             ; preds = %bb.t
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bu, %bb.u ], [ %i.ce, %bb.v ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cf, label %bb.w, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !552

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ae

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0116199 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !101
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cl
  store i8 1, ptr %i.cm, align 1, !tbaa !536
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !101
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cq
  store i8 1, ptr %i.cr, align 1, !tbaa !536
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !101
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cv
  store i8 1, ptr %i.cw, align 1, !tbaa !536
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !101
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.da
  store i8 1, ptr %i.db, align 1, !tbaa !536
  %i.dc = add nuw i64 %.0116199, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !3583

bb.aa:                                            ; preds = %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %i.ci, %bb.z ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ac ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ae:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !3591
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %5, align 8, !tbaa !515
  br label %bb.bs

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !828 ; 10 uses
  %i.dj = ptrtoaddr ptr %i.di to i64              ; 2 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dk = load i64, ptr %5, align 8, !tbaa !515
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dk)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ah

common.resume:                                    ; preds = %bb.ad, %bb.bt, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %.pn148.pn.pn, %bb.bt ], [ %.pn.pn.pn.pn.pn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ah:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ag
  %i.dn = load ptr, ptr %4, align 8, !tbaa !814   ; 2 uses
  %.not185 = icmp eq ptr %i.dn, null
  %i.do = load i64, ptr %5, align 8, !tbaa !515   ; 6 uses
  %.not223 = icmp eq i64 %i.do, 0                 ; 2 uses
  br i1 %.not185, label %bb.ai, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader187
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !1112
  %i.ds = load ptr, ptr %12, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.dv = load ptr, ptr %12, align 8              ; 5 uses
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %.pre243 = load i64, ptr %i.dt, align 8, !tbaa !1313
  %.pre244 = load i64, ptr %i.du, align 8, !tbaa !1314
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !1112
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph214, %.loopexit
  %i.dy = phi i64 [ %.pre244, %.lr.ph214 ], [ 0, %.loopexit ] ; 5 uses
  %i.dz = phi i64 [ %.pre243, %.lr.ph214 ], [ %i.hs, %.loopexit ] ; 4 uses
  %.0111211 = phi i64 [ 0, %.lr.ph214 ], [ %i.hr, %.loopexit ] ; 17 uses
  %.0113210 = phi i64 [ 0, %.lr.ph214 ], [ %.4, %.loopexit ] ; 12 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !878
  %i.ec = zext i16 %i.eb to i64                   ; 4 uses
  %i.ed = sub i64 %i.ec, %i.dy                    ; 6 uses
  %i.ee = sub nuw i64 %i.do, %.0111211            ; 6 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dz
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !101 ; 8 uses
  %i.eh = icmp ugt i64 %i.ed, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !536, !range !546, !noundef !547
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  br i1 %i.eh, label %bb.ak, label %bb.al, !prof !552

bb.ak:                                            ; preds = %bb.aj
  %i.el = icmp ne i64 %i.do, %.0111211
  %or.cond = and i1 %i.el, %i.ek
  br i1 %or.cond, label %.lr.ph218, label %.thread

.lr.ph218:                                        ; preds = %bb.ak
  %i.em = load ptr, ptr %12, align 8, !tbaa !814  ; 5 uses
  %min.iters.check304 = icmp ult i64 %i.ee, 12
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph218
  %i.en = ptrtoaddr ptr %i.em to i64
  %i.eo = shl i64 %.0113210, 2
  %i.ep = shl i64 %.0111211, 2
  %i.eq = add i64 %i.eo, %i.en
  %i.er = add i64 %i.ep, %i.dj
  %i.es = sub i64 %i.er, %i.eq
  %diff.check306 = icmp ugt i64 %i.es, -32
  br i1 %diff.check306, label %scalar.ph303.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck305
  %n.vec308 = and i64 %i.ee, -8                   ; 4 uses
  %i.et = add i64 %.0113210, %n.vec308            ; 2 uses
  %broadcast.splatinsert309 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat310 = shufflevector <4 x i32> %broadcast.splatinsert309, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep360 = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.ew = getelementptr [4 x i8], ptr %i.em, i64 %.0113210
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph307
  %index312 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body311 ] ; 4 uses
  %i.ex = insertelement <4 x i64> poison, i64 %index312, i64 0
  %i.ey = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = or disjoint <4 x i64> %i.ey, <i64 4, i64 5, i64 6, i64 7>
  %i.fa = or disjoint <4 x i64> %i.ey, <i64 0, i64 1, i64 2, i64 3>
  %i.fb = add <4 x i64> %i.fa, %i.ev
  %i.fc = add <4 x i64> %i.ez, %i.ev
  %gep361 = getelementptr [4 x i8], ptr %invariant.gep360, i64 %index312 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep361, i64 16
  store <4 x i32> %broadcast.splat310, ptr %gep361, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat310, ptr %i.fd, align 4, !tbaa !101
  %i.fe = trunc <4 x i64> %i.fb to <4 x i32>
  %i.ff = trunc <4 x i64> %i.fc to <4 x i32>
  %i.fg = getelementptr [4 x i8], ptr %i.ew, i64 %index312 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %i.fe, ptr %i.fg, align 4, !tbaa !101
  store <4 x i32> %i.ff, ptr %i.fh, align 4, !tbaa !101
  %index.next313 = add nuw i64 %index312, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.fi, label %middle.block314, label %vector.body311, !llvm.loop !3584

middle.block314:                                  ; preds = %vector.body311
  %cmp.n315 = icmp eq i64 %i.ee, %n.vec308
  br i1 %cmp.n315, label %.thread, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck305, %.lr.ph218, %middle.block314
  %.0110217.ph = phi i64 [ 0, %vector.memcheck305 ], [ 0, %.lr.ph218 ], [ %n.vec308, %middle.block314 ] ; 4 uses
  %.1114216.ph = phi i64 [ %.0113210, %vector.memcheck305 ], [ %.0113210, %.lr.ph218 ], [ %i.et, %middle.block314 ] ; 3 uses
  %i.fj = sub i64 %i.do, %.0111211
  %i.fk = xor i64 %.0110217.ph, -1
  %i.fl = add i64 %i.do, %i.fk
  %xtraiter340 = and i64 %i.fj, 1
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %scalar.ph303.prol.loopexit, label %scalar.ph303.prol

scalar.ph303.prol:                                ; preds = %scalar.ph303.preheader
  %i.fm = add i64 %.0110217.ph, %.0111211         ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fm
  store i32 %i.eg, ptr %i.fn, align 4, !tbaa !101
  %i.fo = trunc i64 %i.fm to i32
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216.ph
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !101
  %i.fq = add i64 %.1114216.ph, 1                 ; 2 uses
  %i.fr = or disjoint i64 %.0110217.ph, 1
  br label %scalar.ph303.prol.loopexit

scalar.ph303.prol.loopexit:                       ; preds = %scalar.ph303.prol, %scalar.ph303.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph303.preheader ], [ %i.fq, %scalar.ph303.prol ]
  %.0110217.unr = phi i64 [ %.0110217.ph, %scalar.ph303.preheader ], [ %i.fr, %scalar.ph303.prol ]
  %.1114216.unr = phi i64 [ %.1114216.ph, %scalar.ph303.preheader ], [ %i.fq, %scalar.ph303.prol ]
  %i.fs = icmp eq i64 %i.fl, %.0111211
  br i1 %i.fs, label %.thread, label %scalar.ph303.preheader.new

scalar.ph303.preheader.new:                       ; preds = %scalar.ph303.prol.loopexit
  %invariant.op362 = add i64 1, %.0111211
  br label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303, %scalar.ph303.preheader.new
  %.0110217 = phi i64 [ %.0110217.unr, %scalar.ph303.preheader.new ], [ %i.gc, %scalar.ph303 ] ; 3 uses
  %.1114216 = phi i64 [ %.1114216.unr, %scalar.ph303.preheader.new ], [ %i.gb, %scalar.ph303 ] ; 3 uses
  %i.ft = add i64 %.0110217, %.0111211            ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ft
  store i32 %i.eg, ptr %i.fu, align 4, !tbaa !101
  %i.fv = trunc i64 %i.ft to i32
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !101
  %.reass363 = add i64 %.0110217, %invariant.op362 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass363
  store i32 %i.eg, ptr %i.fx, align 4, !tbaa !101
  %i.fy = trunc i64 %.reass363 to i32
  %i.fz = getelementptr [4 x i8], ptr %i.em, i64 %.1114216
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !101
  %i.gb = add i64 %.1114216, 2                    ; 2 uses
  %i.gc = add nuw i64 %.0110217, 2                ; 2 uses
  %exitcond241.not.1 = icmp eq i64 %i.gc, %i.ee
  br i1 %exitcond241.not.1, label %.thread, label %scalar.ph303, !llvm.loop !3585

.thread:                                          ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303, %middle.block314, %bb.ak
  %.2 = phi i64 [ %.0113210, %bb.ak ], [ %i.et, %middle.block314 ], [ %.lcssa.unr, %scalar.ph303.prol.loopexit ], [ %i.gb, %scalar.ph303 ]
  %i.gd = add i64 %i.dy, %i.ee
  store i64 %i.gd, ptr %i.du, align 8, !tbaa !1314
  br label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit

bb.al:                                            ; preds = %bb.aj
  %i.ge = icmp ne i64 %i.dy, %i.ec
  %or.cond220 = and i1 %i.ge, %i.ek
  br i1 %or.cond220, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %bb.al
  %min.iters.check = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check, label %.lr.ph208.preheader318, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph208.preheader
  %15 = shl i64 %.0113210, 2
  %i.gf = shl i64 %.0111211, 2
  %16 = add i64 %15, %i.dw
  %i.gg = add i64 %i.gf, %i.dj
  %17 = sub i64 %i.gg, %16
  %diff.check = icmp ugt i64 %17, -32
  br i1 %diff.check, label %.lr.ph208.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -8                      ; 4 uses
  %i.gh = add i64 %.0113210, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gi = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.gj = shufflevector <4 x i64> %i.gi, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.gk = getelementptr [4 x i8], ptr %i.dv, i64 %.0113210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gl = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.gm = shufflevector <4 x i64> %i.gl, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gn = or disjoint <4 x i64> %i.gm, <i64 4, i64 5, i64 6, i64 7>
  %i.go = or disjoint <4 x i64> %i.gm, <i64 0, i64 1, i64 2, i64 3>
  %i.gp = add <4 x i64> %i.go, %i.gj
  %i.gq = add <4 x i64> %i.gn, %i.gj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat, ptr %i.gr, align 4, !tbaa !101
  %i.gs = trunc <4 x i64> %i.gp to <4 x i32>
  %i.gt = trunc <4 x i64> %i.gq to <4 x i32>
  %i.gu = getelementptr [4 x i8], ptr %i.gk, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <4 x i32> %i.gs, ptr %i.gu, align 4, !tbaa !101
  store <4 x i32> %i.gt, ptr %i.gv, align 4, !tbaa !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !3586

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph208.preheader318

.lr.ph208.preheader318:                           ; preds = %vector.memcheck, %.lr.ph208.preheader, %middle.block
  %.0109207.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph208.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.3206.ph = phi i64 [ %.0113210, %vector.memcheck ], [ %.0113210, %.lr.ph208.preheader ], [ %i.gh, %middle.block ] ; 3 uses
  %i.gx = sub i64 %i.ec, %i.dy
  %i.gy = xor i64 %.0109207.ph, -1
  %i.gz = add i64 %i.gy, %i.ec
  %xtraiter336 = and i64 %i.gx, 1
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph208.prol.loopexit, label %.lr.ph208.prol

.lr.ph208.prol:                                   ; preds = %.lr.ph208.preheader318
  %i.ha = add i64 %.0109207.ph, %.0111211         ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ha
  store i32 %i.eg, ptr %i.hb, align 4, !tbaa !101
  %i.hc = trunc i64 %i.ha to i32
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206.ph
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !101
  %i.he = add i64 %.3206.ph, 1                    ; 2 uses
  %i.hf = or disjoint i64 %.0109207.ph, 1
  br label %.lr.ph208.prol.loopexit

.lr.ph208.prol.loopexit:                          ; preds = %.lr.ph208.prol, %.lr.ph208.preheader318
  %.lcssa319.unr = phi i64 [ poison, %.lr.ph208.preheader318 ], [ %i.he, %.lr.ph208.prol ]
  %.0109207.unr = phi i64 [ %.0109207.ph, %.lr.ph208.preheader318 ], [ %i.hf, %.lr.ph208.prol ]
  %.3206.unr = phi i64 [ %.3206.ph, %.lr.ph208.preheader318 ], [ %i.he, %.lr.ph208.prol ]
  %i.hg = icmp eq i64 %i.gz, %i.dy
  br i1 %i.hg, label %.loopexit, label %.lr.ph208.preheader318.new

.lr.ph208.preheader318.new:                       ; preds = %.lr.ph208.prol.loopexit
  %invariant.op = add i64 1, %.0111211
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader318.new
  %.0109207 = phi i64 [ %.0109207.unr, %.lr.ph208.preheader318.new ], [ %i.hq, %.lr.ph208 ] ; 3 uses
  %.3206 = phi i64 [ %.3206.unr, %.lr.ph208.preheader318.new ], [ %i.hp, %.lr.ph208 ] ; 3 uses
  %i.hh = add i64 %.0109207, %.0111211            ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hh
  store i32 %i.eg, ptr %i.hi, align 4, !tbaa !101
  %i.hj = trunc i64 %i.hh to i32
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !101
  %.reass = add i64 %.0109207, %invariant.op      ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass
  store i32 %i.eg, ptr %i.hl, align 4, !tbaa !101
  %i.hm = trunc i64 %.reass to i32
  %i.hn = getelementptr [4 x i8], ptr %i.dv, i64 %.3206
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  store i32 %i.hm, ptr %i.ho, align 4, !tbaa !101
  %i.hp = add i64 %.3206, 2                       ; 2 uses
  %i.hq = add nuw i64 %.0109207, 2                ; 2 uses
  %exitcond240.not.1 = icmp eq i64 %i.hq, %i.ed
  br i1 %exitcond240.not.1, label %.loopexit, label %.lr.ph208, !llvm.loop !3587

.loopexit:                                        ; preds = %.lr.ph208.prol.loopexit, %.lr.ph208, %middle.block, %bb.al
  %.4 = phi i64 [ %.0113210, %bb.al ], [ %i.gh, %middle.block ], [ %.lcssa319.unr, %.lr.ph208.prol.loopexit ], [ %i.hp, %.lr.ph208 ] ; 2 uses
  %i.hr = add i64 %i.ed, %.0111211                ; 2 uses
  %i.hs = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.hs, ptr %i.dt, align 8, !tbaa !1313
  store i64 0, ptr %i.du, align 8, !tbaa !1314
  %i.ht = icmp ult i64 %i.hr, %i.do
  br i1 %i.ht, label %bb.aj, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit

._crit_edge204:                                   ; preds = %bb.ba, %.preheader187
  %.7.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8, %bb.ba ] ; 2 uses
  %.0108.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.il, %bb.ba ]
  %i.hu = sub i64 %2, %.0108.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.hu, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge204
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.hv, align 8, !tbaa !1313
  %.promoted11.i = load i64, ptr %i.hw, align 8, !tbaa !1314
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i
  %i.hx = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.ih, %bb.ao ] ; 2 uses
  %i.hy = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ii, %bb.ao ] ; 3 uses
  %.010.i = phi i64 [ %i.hu, %.lr.ph.i ], [ %i.ie, %bb.ao ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !878
  %i.ib = zext i16 %i.ia to i64                   ; 2 uses
  %i.ic = sub i64 %i.ib, %i.hx
  %i.id = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.ic) ; 2 uses
  %i.ie = sub nuw i64 %.010.i, %i.id              ; 2 uses
  %i.if = add i64 %i.id, %i.hx                    ; 2 uses
  %.not8.i = icmp ult i64 %i.if, %i.ib
  br i1 %.not8.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ig = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.ig, ptr %i.hv, align 8, !tbaa !1313
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ih = phi i64 [ 0, %bb.an ], [ %i.if, %bb.am ] ; 2 uses
  %i.ii = phi i64 [ %i.ig, %bb.an ], [ %i.hy, %bb.am ]
  %.not.i156 = icmp eq i64 %i.ie, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.am, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.ao
  store i64 %i.ih, ptr %i.hw, align 8, !tbaa !1314
  br label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit

bb.ap:                                            ; preds = %.lr.ph203, %bb.ba
  %.0107202 = phi i64 [ 0, %.lr.ph203 ], [ %i.jp, %bb.ba ] ; 2 uses
  %.0108201 = phi i64 [ 0, %.lr.ph203 ], [ %i.il, %bb.ba ] ; 2 uses
  %.7200 = phi i64 [ 0, %.lr.ph203 ], [ %.8, %bb.ba ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.0107202
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !101 ; 2 uses
  %i.il = zext i32 %i.ik to i64                   ; 5 uses
  %i.im = icmp samesign ugt i64 %.0108201, %i.il
  br i1 %i.im, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.in = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bu unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iq = load ptr, ptr %13, align 8, !tbaa !550  ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.iq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.in) #30
  br label %bb.bt
end_hunk_2
begin_hunk_3_@_ZN6duckdb21AlpRDCompressionStateIfE18CreateEmptySegmentEv:bb.a
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !822
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !826
  %i.ar = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  %i.at = load i64, ptr %i.as, align 8, !tbaa !827
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !660, !nonnull !547, !align !612 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.ay = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.az = sub i64 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !1786
  %i.bd = load i32, ptr %i.aj, align 8, !tbaa !1782
  %i.be = add i32 %i.bd, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !1783
  %i.bg = load ptr, ptr %1, align 8, !tbaa !689   ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i: ; preds = %bb.i
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.bg) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #32
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.j:                                             ; preds = %.noexc, %bb.h, %bb.f, %bb.d, %bb.g, %bb.e, %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.bi, %bb.k ]
  call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(20577) dereferenceable(20577) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !4962 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20520 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20536 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1753 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !787 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #32
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !960
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20528
  %i.g = load i64, ptr %i.f, align 8, !tbaa !961
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !960  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20568
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIttSt4hashItESt8equal_toItESaISt4pairIKttEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #32
  br label %_ZNSt13unordered_mapIttSt4hashItESt8equal_toItESaISt4pairIKttEEED2Ev.exit

_ZNSt13unordered_mapIttSt4hashItESt8equal_toItESaISt4pairIKttEEED2Ev.exit: ; preds = %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21AlpRDCompressionStateIfED2Ev(ptr noundef nonnull align 8 dereferenceable(26848) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !4963 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb21AlpRDCompressionStateIfEE, i64 16), ptr %0, align 8, !tbaa !541
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26784 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26800 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1753 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !787 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #32
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !960
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26792
  %i.g = load i64, ptr %i.f, align 8, !tbaa !961
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !960  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26832
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #32
  br label %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit

_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit: ; preds = %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !689  ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i: ; preds = %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #32
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21AlpRDCompressionStateIfED0Ev(ptr noundef nonnull align 8 dereferenceable(26848) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !4964 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb21AlpRDCompressionStateIfEE, i64 16), ptr %0, align 8, !tbaa !541
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26784 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26800 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1753 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !787 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #32, !inline_history !4965
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !86

_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !960
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26792
  %i.g = load i64, ptr %i.f, align 8, !tbaa !961
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !960  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26832
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #32, !inline_history !4965
  br label %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit.i

_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #30, !inline_history !4965
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !689  ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN6duckdb21AlpRDCompressionStateIfED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit.i
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !4965
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #32, !inline_history !4965
  br label %_ZN6duckdb21AlpRDCompressionStateIfED2Ev.exit

_ZN6duckdb21AlpRDCompressionStateIfED2Ev.exit:    ; preds = %_ZN6duckdb3alp20AlpRDCompressionDataIfLb0EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21AlpRDCompressionStateIfE6AppendERNS_19UnifiedVectorFormatEm(ptr noundef nonnull align 8 dereferenceable(26848) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !4973 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !812  ; 9 uses
  %4 = ptrtoaddr ptr %i.b to i64
  %.not48 = icmp eq i64 %2, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph54, %bb.d
  %.053 = phi i64 [ %2, %.lr.ph54 ], [ %i.cs, %bb.d ] ; 2 uses
  %.03449 = phi i64 [ 0, %.lr.ph54 ], [ %i.cr, %bb.d ] ; 6 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !983  ; 8 uses
  %i.i = sub i64 1024, %i.h
  %i.j = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %.053) ; 14 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !514  ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  %.not56 = icmp eq i64 %i.h, 1024                ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.b
  br i1 %.not56, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader43
  %i.l = load ptr, ptr %1, align 8, !tbaa !813
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !814  ; 2 uses
  %.not.i38 = icmp eq ptr %i.m, null
  %i.n = getelementptr [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !1787 ; 2 uses
  br i1 %.not.i38, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader: ; preds = %.lr.ph
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %.03449
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.o = phi i64 [ %i.ab, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %.03545.us = phi i64 [ %i.ad, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.p = add i64 %.03545.us, %.03449              ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.p
  %.0.copyload.i40.us = load i32, ptr %i.q, align 1
  %i.r = lshr i64 %i.p, 6
  %i.s = and i64 %i.p, 63
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8, !tbaa !515
  %i.v = add i64 %.03545.us, %i.h
  %i.w = trunc i64 %i.v to i16
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  store i16 %i.w, ptr %i.x, align 2, !tbaa !878
  %i.y = xor i64 %i.u, -1
  %i.z = lshr i64 %i.y, %i.s
  %i.aa = and i64 %i.z, 1
  %i.ab = add i64 %i.aa, %i.o                     ; 2 uses
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !1787
  %i.ac = getelementptr [4 x i8], ptr %i.n, i64 %.03545.us
  store i32 %.0.copyload.i40.us, ptr %i.ac, align 4, !tbaa !101
  %i.ad = add nuw i64 %.03545.us, 1               ; 2 uses
  %exitcond61.not = icmp eq i64 %i.ad, %i.j
  br i1 %exitcond61.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !4966

.preheader:                                       ; preds = %bb.b
  br i1 %.not56, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ae = load ptr, ptr %1, align 8, !tbaa !813
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !814 ; 2 uses
  %.not.i37 = icmp eq ptr %i.af, null
  %i.ag = getelementptr [4 x i8], ptr %i.g, i64 %i.h ; 11 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph47
  %invariant.gep74 = getelementptr [4 x i8], ptr %i.af, i64 %.03449 ; 5 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.ah = icmp ult i64 %i.j, 4
  br i1 %i.ah, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph47
  %invariant.gep76 = getelementptr [4 x i8], ptr %i.b, i64 %.03449 ; 6 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %5 = shl i64 %i.h, 2
  %i.ai = shl i64 %.03449, 2
  %6 = add i64 %5, %3
  %7 = add i64 %i.ai, %4
  %8 = sub i64 %6, %7
  %i.aj = add i64 %8, 119
  %diff.check = icmp ult i64 %i.aj, 31
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %invariant.gep76, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 1
  %wide.load81 = load <4 x i32>, ptr %i.al, align 1
  %i.am = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <4 x i32> %wide.load, ptr %i.am, align 4, !tbaa !101
  store <4 x i32> %wide.load81, ptr %i.an, align 4, !tbaa !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !4967

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %middle.block
  %.03646.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter87 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol
  %.03646.us.prol = phi i64 [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ], [ %.03646.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82 ]
  %gep77.prol = getelementptr [4 x i8], ptr %invariant.gep76, i64 %.03646.us.prol
  %.0.copyload.i.us.prol = load i32, ptr %gep77.prol, align 1
  %i.ap = getelementptr [4 x i8], ptr %i.ag, i64 %.03646.us.prol
  store i32 %.0.copyload.i.us.prol, ptr %i.ap, align 4, !tbaa !101
  %i.aq = add nuw i64 %.03646.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter87
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, !llvm.loop !4968

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82
  %.03646.us.unr = phi i64 [ %.03646.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader82 ], [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %i.ar = sub i64 %.03646.us.ph, %i.j
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.03646.us = phi i64 [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.03646.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ] ; 6 uses
  %gep77 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %.03646.us
  %.0.copyload.i.us = load i32, ptr %gep77, align 1
  %i.at = getelementptr [4 x i8], ptr %i.ag, i64 %.03646.us
  store i32 %.0.copyload.i.us, ptr %i.at, align 4, !tbaa !101
  %i.au = add nuw i64 %.03646.us, 1               ; 2 uses
  %gep77.1 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %i.au
  %.0.copyload.i.us.1 = load i32, ptr %gep77.1, align 1
  %i.av = getelementptr [4 x i8], ptr %i.ag, i64 %i.au
  store i32 %.0.copyload.i.us.1, ptr %i.av, align 4, !tbaa !101
  %i.aw = add nuw i64 %.03646.us, 2               ; 2 uses
  %gep77.2 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %i.aw
  %.0.copyload.i.us.2 = load i32, ptr %gep77.2, align 1
  %i.ax = getelementptr [4 x i8], ptr %i.ag, i64 %i.aw
  store i32 %.0.copyload.i.us.2, ptr %i.ax, align 4, !tbaa !101
  %i.ay = add nuw i64 %.03646.us, 3               ; 2 uses
  %gep77.3 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %i.ay
  %.0.copyload.i.us.3 = load i32, ptr %gep77.3, align 1
  %i.az = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  store i32 %.0.copyload.i.us.3, ptr %i.az, align 4, !tbaa !101
  %i.ba = add nuw i64 %.03646.us, 4               ; 2 uses
  %exitcond65.not.3 = icmp eq i64 %i.ba, %i.j
  br i1 %exitcond65.not.3, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !4969

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.03646 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %.03646
  %i.bb = load i32, ptr %gep75, align 4, !tbaa !101
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc
  %.0.copyload.i = load i32, ptr %i.bd, align 1
  %i.be = getelementptr [4 x i8], ptr %i.ag, i64 %.03646
  store i32 %.0.copyload.i, ptr %i.be, align 4, !tbaa !101
  %i.bf = or disjoint i64 %.03646, 1              ; 2 uses
  %gep75.1 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.bf
  %i.bg = load i32, ptr %gep75.1, align 4, !tbaa !101
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bh
  %.0.copyload.i.1 = load i32, ptr %i.bi, align 1
  %i.bj = getelementptr [4 x i8], ptr %i.ag, i64 %i.bf
  store i32 %.0.copyload.i.1, ptr %i.bj, align 4, !tbaa !101
  %i.bk = or disjoint i64 %.03646, 2              ; 2 uses
  %gep75.2 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.bk
  %i.bl = load i32, ptr %gep75.2, align 4, !tbaa !101
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bm
  %.0.copyload.i.2 = load i32, ptr %i.bn, align 1
  %i.bo = getelementptr [4 x i8], ptr %i.ag, i64 %i.bk
  store i32 %.0.copyload.i.2, ptr %i.bo, align 4, !tbaa !101
  %i.bp = or disjoint i64 %.03646, 3              ; 2 uses
  %gep75.3 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.bp
  %i.bq = load i32, ptr %gep75.3, align 4, !tbaa !101
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br
  %.0.copyload.i.3 = load i32, ptr %i.bs, align 1
  %i.bt = getelementptr [4 x i8], ptr %i.ag, i64 %i.bp
  store i32 %.0.copyload.i.3, ptr %i.bt, align 4, !tbaa !101
  %i.bu = add nuw i64 %.03646, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit83.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !4970

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bv = phi i64 [ %i.cj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %.promoted, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ] ; 2 uses
  %.03545 = phi i64 [ %i.cl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03545
  %i.bw = load i32, ptr %gep, align 4, !tbaa !101
  %i.bx = zext i32 %i.bw to i64                   ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bx
  %.0.copyload.i40 = load i32, ptr %i.by, align 1
  %i.bz = lshr i64 %i.bx, 6
  %i.ca = and i64 %i.bx, 63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !515
  %i.cd = add i64 %.03545, %i.h
  %i.ce = trunc i64 %i.cd to i16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bv
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !878
  %i.cg = xor i64 %i.cc, -1
  %i.ch = lshr i64 %i.cg, %i.ca
  %i.ci = and i64 %i.ch, 1
  %i.cj = add i64 %i.ci, %i.bv                    ; 2 uses
  store i64 %i.cj, ptr %i.f, align 8, !tbaa !1787
  %i.ck = getelementptr [4 x i8], ptr %i.n, i64 %.03545
  store i32 %.0.copyload.i40, ptr %i.ck, align 4, !tbaa !101
  %i.cl = add nuw i64 %.03545, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.j
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !4966

.loopexit.loopexit83.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.loopexit.loopexit83.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.03646.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bu, %.loopexit.loopexit83.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.03646.epil = phi i64 [ %i.cq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.03646.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %gep75.epil = getelementptr [4 x i8], ptr %invariant.gep74, i64 %.03646.epil
  %i.cm = load i32, ptr %gep75.epil, align 4, !tbaa !101
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cn
  %.0.copyload.i.epil = load i32, ptr %i.co, align 1
  %i.cp = getelementptr [4 x i8], ptr %i.ag, i64 %.03646.epil
  store i32 %.0.copyload.i.epil, ptr %i.cp, align 4, !tbaa !101
  %i.cq = add nuw i64 %.03646.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !4971

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %.loopexit.loopexit83.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block, %.preheader43, %.preheader
  %i.cr = add i64 %i.j, %.03449
  %i.cs = sub nuw i64 %.053, %i.j                 ; 2 uses
  %i.ct = add i64 %i.j, %i.h                      ; 2 uses
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !983
  %i.cu = icmp eq i64 %i.ct, 1024
  br i1 %i.cu, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @_ZN6duckdb21AlpRDCompressionStateIfE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(26848) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4972

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21AlpRDCompressionStateIfE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(26848) %0) local_unnamed_addr #1 comdat align 2 !guid !4976 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1787 ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit_crit_edge, label %bb.b

._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !983
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIjEEvPT_PKtmm.exit

bb.b:                                             ; preds = %bb.a
end_hunk_3
