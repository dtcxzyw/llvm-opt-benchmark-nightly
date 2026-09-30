Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_wast-83cca1b781ce82ca.wasmi_wast.425f811524e31cbe-cgu.11?download=true
inline.NumInlined: 296
inline.NumDeleted: 160
begin_hunk_0_@_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func14call_resumableuQINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.au, align 8, !noalias !143, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = load <2 x i32>, ptr %.sroa.4.0..sroa_idx75.i.i, align 8, !noalias !143
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !143
  %.val28.i.i = load ptr, ptr %i.m, align 8, !alias.scope !147, !noalias !148, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = atomicrmw add ptr %.val28.i.i, i64 1 monotonic, align 8, !noalias !144
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %.noexc8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !143, !noundef !5
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !147, !noalias !148, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = atomicrmw add ptr %.val.i.i, i64 1 monotonic, align 8, !noalias !144
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  %.sroa.8.8.copyload = load ptr, ptr %i.t, align 8, !noalias !149
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.8..sroa_idx, i64 96, i1 false)
  %.sroa.1115.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %.sroa.1115.8.copyload = load ptr, ptr %.sroa.1115.8..sroa_idx, align 8, !noalias !149
  %i.bc = load <2 x i32>, ptr %1, align 4, !alias.scope !150, !noalias !151
  br label %.thread

_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexNtNtCsefoF4u9kbII_5wasmi6engine12EngineStacksE4lockCs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %.noexc.loopexit.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.t, i64 112, i1 false), !noalias !143
  invoke void @_RNvMs7_NtCsefoF4u9kbII_5wasmi6engineNtB5_12EngineStacks7recycle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b)
          to label %.thread42 unwind label %bb.s, !noalias !144

bb.s:                                             ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexNtNtCsefoF4u9kbII_5wasmi6engine12EngineStacksE4lockCs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.u release, align 1, !noalias !152
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %.thread.i.i unwind label %bb.l, !noalias !144

.thread42:                                        ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexNtNtCsefoF4u9kbII_5wasmi6engine12EngineStacksE4lockCs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !140
  store atomic i8 0, ptr %i.u release, align 1, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

.thread.i.i:                                      ; preds = %bb.s, %bb.j
  %.sroa.08.070.i.i = phi i1 [ false, %bb.s ], [ true, %bb.j ]
  %.pn14.pn69.i.i = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.ak, %bb.j ] ; 4 uses
  switch i64 %i.ad, label %bb.t [
    i64 -1, label %.body
    i64 0, label %.invoke.i.i
    i64 1, label %.body
  ]

bb.t:                                             ; preds = %.thread.i.i
  br i1 %.sroa.08.070.i.i, label %.invoke.i.i, label %.body

.invoke.i.i:                                      ; preds = %bb.t, %.thread.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.body unwind label %bb.l, !noalias !154, !inline_history !125

.thread:                                          ; preds = %bb.k, %bb.r
  %.sroa.12.0.ph = phi ptr [ %.val.i.i, %bb.r ], [ undef, %bb.k ]
  %.sroa.19.0.ph = phi i64 [ %i.az, %bb.r ], [ undef, %bb.k ]
  %.sroa.1115.0.ph = phi ptr [ %.sroa.1115.8.copyload, %bb.r ], [ undef, %bb.k ]
  %.sroa.8.0.ph = phi ptr [ %.sroa.8.8.copyload, %bb.r ], [ undef, %bb.k ]
  %.sroa.010.0.ph = phi i64 [ 4, %bb.r ], [ 2, %bb.k ]
  %i.bf = phi <2 x i32> [ %i.bc, %bb.r ], [ undef, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.u:                                             ; preds = %bb.n
  %.sroa.010.0.copyload11 = load i64, ptr %i.t, align 8, !noalias !149 ; 2 uses
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.0.copyload13 = load ptr, ptr %.sroa.8.0..sroa_idx12, align 8, !noalias !149 ; 2 uses
  %.sroa.11.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.0..sroa_idx14, i64 96, i1 false)
  %i.bg = load i64, ptr %1, align 4, !alias.scope !150, !noalias !151
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bj = icmp eq i64 %.sroa.010.0.copyload11, -1
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread42, %bb.u
  %.sroa.8.051 = phi ptr [ %i.an, %.thread42 ], [ %.sroa.8.0.copyload13, %bb.u ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.051) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.051, ptr %i.bk, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.w:                                             ; preds = %.thread, %bb.u
  %.sroa.010.041 = phi i64 [ %.sroa.010.0.ph, %.thread ], [ %.sroa.010.0.copyload11, %bb.u ] ; 4 uses
  %.sroa.8.040 = phi ptr [ %.sroa.8.0.ph, %.thread ], [ %.sroa.8.0.copyload13, %bb.u ]
  %.sroa.1115.039 = phi ptr [ %.sroa.1115.0.ph, %.thread ], [ %.val28.i.i, %bb.u ]
  %.sroa.19.036 = phi i64 [ %.sroa.19.0.ph, %.thread ], [ %i.bi, %bb.u ]
  %.sroa.21.035 = phi i32 [ undef, %.thread ], [ %.sroa.6.0.copyload.i.i, %bb.u ]
  %.sroa.12.034 = phi ptr [ %.sroa.12.0.ph, %.thread ], [ %i.bh, %bb.u ]
  %i.bl = phi <2 x i32> [ %i.bf, %.thread ], [ %i.av, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821)
  %i.bm = icmp ne i64 %.sroa.010.041, 3
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nsw i64 %.sroa.010.041, -2
  %i.bo = icmp samesign ugt i64 %.sroa.010.041, 1
  %i.bp = select i1 %i.bo, i64 %i.bn, i64 1
  switch i64 %i.bp, label %bb.x [
    i64 0, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit
    i64 1, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split
    i64 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  br label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split

_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split: ; preds = %bb.w, %bb.y
  %.sroa.20.0.ph = phi i32 [ undef, %bb.y ], [ %.sroa.21.035, %bb.w ]
  %.sroa.020.0.ph = phi i64 [ 4, %bb.y ], [ %.sroa.010.041, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.821, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, i64 96, i1 false)
  br label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit

_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit: ; preds = %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split, %bb.w
  %.sroa.20.0 = phi i32 [ undef, %bb.w ], [ %.sroa.20.0.ph, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split ]
  %.sroa.1022.0 = phi ptr [ undef, %bb.w ], [ %.sroa.1115.039, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split ]
  %.sroa.6.0 = phi ptr [ undef, %bb.w ], [ %.sroa.8.040, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split ]
  %.sroa.020.0 = phi i64 [ 2, %bb.w ], [ %.sroa.020.0.ph, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split ]
  %i.bq = phi <2 x i32> [ undef, %bb.w ], [ %i.bl, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit.sink.split ]
  store i64 %.sroa.020.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.821.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.821, i64 96, i1 false)
  %.sroa.1022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.1022.0, ptr %.sroa.1022.0..sroa_idx, align 8
  %.sroa.1223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.12.034, ptr %.sroa.1223.0..sroa_idx, align 8
  %.sroa.1424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i32> %i.bq, ptr %.sroa.1424.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.19.036, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.821)
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_13ResumableCall3new.exit, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.br = load ptr, ptr %i.h, align 8, !alias.scope !158, !nonnull !5, !noundef !5
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !158
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit9

bb.aa:                                            ; preds = %bb.z
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit9: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit9
  ret void

bb.ac:                                            ; preds = %bb.f
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyQQINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %3 = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %3, i64 24, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.v.i
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1688) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %3 = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %3, i64 24, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.v.i
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRRQINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %3 = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %3, i64 24, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.v.i
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 5) i8 @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %6 = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %6, i64 24, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.v.i
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 5 uses
  %i.f = tail call noundef i64 @_RNvMs8_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE14acquire_readerCs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull align 8 %i.e), !noalias !162
  %i.g = and i64 %i.f, 3
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.i = atomicrmw sub ptr %i.e, i64 4 release, align 8, !noalias !162 ; 0 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !162
  %i.j = tail call noundef i64 @_RNvMs8_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE14acquire_readerCs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull align 8 %i.e), !noalias !162
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i, label %.lr.ph.i.i

_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.n = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCsefoF4u9kbII_5wasmi6engine10func_typesNtB4_16FuncTypeRegistry17resolve_func_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
          to label %bb.b unwind label %bb.d, !noalias !163 ; 2 uses

bb.b:                                             ; preds = %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.o = invoke noundef i8 @_RINvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB6_8FuncType12match_paramsNtNtBa_5value3ValECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc.i unwind label %bb.d, !noalias !163 ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %.not.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i, label %bb.c, label %_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECs5HiJSMzJl2A_10wasmi_wast.exit

bb.c:                                             ; preds = %.noexc.i
  %i.p = invoke noundef i8 @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType15prepare_outputs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5)
          to label %_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.d, !noalias !163

bb.d:                                             ; preds = %bb.c, %bb.b, %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %i.e, i64 4 release, align 8, !noalias !162 ; 0 uses
  resume { ptr, i32 } %i.q

_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %.noexc.i, %bb.c
  %.sroa.0.0.i.i = phi i8 [ %i.o, %.noexc.i ], [ %i.p, %bb.c ]
  %i.s = atomicrmw sub ptr %i.e, i64 4 release, align 8, !noalias !162 ; 0 uses
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func4calluINtNtNtB8_5store7context15StoreContextMutuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call fastcc noundef i8 @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5) ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.c, ptr %i.d, align 1
  store i8 18, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val11 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.g = atomicrmw add ptr %.val11, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !176
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.c
  store ptr %.val11, ptr %i.b, align 8
  %i.l = invoke fastcc noundef align 8 ptr @_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECs5HiJSMzJl2A_10wasmi_wast(ptr nonnull %.val11, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !177
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13 ]
  ret ptr %.sroa.0.0

bb.k:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func4calluQINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call fastcc noundef i8 @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5) ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.c, ptr %i.d, align 1
  store i8 18, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val11 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.g = atomicrmw add ptr %.val11, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !190
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.c
  store ptr %.val11, ptr %i.b, align 8
  %i.l = invoke fastcc noundef align 8 ptr @_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECs5HiJSMzJl2A_10wasmi_wast(ptr nonnull %.val11, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !191
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit13 ]
  ret ptr %.sroa.0.0

bb.k:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB6_22ResumableCallOutOfFuel6resumeuQINtNtBa_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1, ptr noalias nofree noundef align 8 dereferenceable(1688) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef range(i64 0, 384307168202282326) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [112 x i8], align 8               ; 5 uses
  %.sroa.611.sroa.5 = alloca [112 x i8], align 8  ; 5 uses
  %.sroa.5.sroa.5 = alloca [112 x i8], align 8    ; 6 uses
  %i.f = alloca [136 x i8], align 8               ; 38 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.12 = alloca [112 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc unwind label %.body.thread117.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !10, !noalias !292, !noundef !5
  %5 = trunc nuw i64 %i.j to i1
  %.sroa.0.0.v.i.i = select i1 %5, i64 24, i64 8
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.v.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !291, !noalias !293, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 368 ; 6 uses
  %i.n = invoke noundef i64 @_RNvMs8_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE14acquire_readerCs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull align 8 %i.m)
          to label %.noexc21 unwind label %.body.thread117.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc21, %.noexc22
  %i.q = atomicrmw sub ptr %i.m, i64 4 release, align 8, !noalias !294 ; 0 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !294
  %i.r = invoke noundef i64 @_RNvMs8_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE14acquire_readerCs5HiJSMzJl2A_10wasmi_wast(ptr noundef nonnull align 8 %i.m)
          to label %.noexc22 unwind label %.body.thread117.loopexit

.noexc22:                                         ; preds = %.lr.ph.i.i.i
  %i.s = and i64 %i.r, 3
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %.lr.ph.i.i.i

_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %.noexc22, %.noexc21
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCsefoF4u9kbII_5wasmi6engine10func_typesNtB4_16FuncTypeRegistry17resolve_func_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i)
          to label %bb.b unwind label %.body.thread112, !noalias !295

bb.b:                                             ; preds = %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %i.w = invoke noundef i8 @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType15prepare_outputs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef range(i64 0, 384307168202282326) %4)
          to label %.noexc.i.i unwind label %.body.thread112 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %i.w, -1
  br i1 %.not.i.i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.w, ptr %i.x, align 1, !noalias !296
  store i8 18, ptr %i.e, align 8, !noalias !296
  %i.y = invoke noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e)
          to label %bb.d unwind label %.body.thread112

.body.thread112:                                  ; preds = %_RNvMs7_NtCsfqhPXF3e39f_4spin6rwlockINtB5_6RwLockNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types16FuncTypeRegistryE4readCs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.b, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw sub ptr %i.m, i64 4 release, align 8, !noalias !297 ; 0 uses
  br label %.body.thread117

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !296
  %i.ab = atomicrmw sub ptr %i.m, i64 4 release, align 8, !noalias !297 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.ac, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_19ResumableCallCommonNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ae = load ptr, ptr %i.k, align 8, !alias.scope !301, !nonnull !5, !noundef !5
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !302
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ah = load ptr, ptr %i.k, align 8, !alias.scope !306, !nonnull !5, !noundef !5
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !307
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable22ResumableCallOutOfFuelECs5HiJSMzJl2A_10wasmi_wast.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable22ResumableCallOutOfFuelECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.i, %bb.f, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.ad, %bb.f ], [ %i.ad, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5StackECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1) #19
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body.thread117, %bb.n, %.body24, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i ], [ %eh.lpad-body25, %.body24 ], [ %.pn115, %.body.thread117 ], [ %eh.lpad-body25, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable22ResumableCallOutOfFuelECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.g, %bb.h
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5StackECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1)
  br label %bb.ar

bb.k:                                             ; preds = %.noexc.i.i
  %i.am = atomicrmw sub ptr %i.m, i64 4 release, align 8, !noalias !297 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.an = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable22ResumableCallOutOfFuelECs5HiJSMzJl2A_10wasmi_wast.exit61.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable22ResumableCallOutOfFuelECs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i59.i, %bb.ak, %bb.m
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %.pn.i.i60.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i59.i ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i ], [ %.pn.pn.i, %bb.ak ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ar = load ptr, ptr %i.g, align 8, !alias.scope !311, !nonnull !5, !noundef !5
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !311
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.n, label %common.resume

bb.n:                                             ; preds = %.body24
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
          to label %common.resume unwind label %bb.as

bb.o:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 5 uses
  store ptr %i.au, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !314
  invoke void @_RINvNtNtCsefoF4u9kbII_5wasmi6engine8executor11resume_funcuINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2_7handler8dispatch16ExecutionOutcomeENCINvMB2_NtB4_11EngineInner23resume_func_out_of_fueluQSNtNtB6_5value3ValE0ECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef range(i64 0, 384307168202282326) %4)
          to label %bb.q unwind label %bb.p, !noalias !312

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.q:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.d, align 8, !range !8, !noalias !314, !noundef !5
  switch i64 %i.aw, label %default.unreachable [
    i64 -1, label %bb.r
    i64 0, label %_RINvMNtNtCsefoF4u9kbII_5wasmi6engine8executorNtB5_11EngineInner23resume_func_out_of_fueluQSNtNtB7_5value3ValECs5HiJSMzJl2A_10wasmi_wast.exit
    i64 1, label %_RINvMNtNtCsefoF4u9kbII_5wasmi6engine8executorNtB5_11EngineInner23resume_func_out_of_fueluQSNtNtB7_5value3ValECs5HiJSMzJl2A_10wasmi_wast.exit.thread68
    i64 2, label %bb.ab
  ]

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 496 ; 6 uses
  %i.ay = cmpxchg weak ptr %i.ax, i8 0, i8 1 acquire monotonic, align 1, !noalias !314
  %i.az = extractvalue { i8, i1 } %i.ay, 1
  br i1 %i.az, label %.noexc54._crit_edge.i, label %.noexc55.preheader.i

.noexc54.loopexit.i:                              ; preds = %.noexc56.i, %.noexc55.preheader.i
  %i.ba = cmpxchg weak ptr %i.ax, i8 0, i8 1 acquire monotonic, align 1, !noalias !314
  %i.bb = extractvalue { i8, i1 } %i.ba, 1
  br i1 %i.bb, label %.noexc54._crit_edge.i, label %.noexc55.preheader.i

.noexc55.preheader.i:                             ; preds = %bb.r, %.noexc54.loopexit.i
  %i.bc = load atomic i8, ptr %i.ax monotonic, align 1, !noalias !314
  %.not.i5368.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i5368.i, label %.noexc54.loopexit.i, label %.noexc56.i

.noexc56.i:                                       ; preds = %.noexc55.preheader.i, %.noexc56.i
  call void @llvm.x86.sse2.pause(), !noalias !312
  %i.bd = load atomic i8, ptr %i.ax monotonic, align 1, !noalias !314
  %.not.i53.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i53.i, label %.noexc54.loopexit.i, label %.noexc56.i

.noexc54._crit_edge.i:                            ; preds = %.noexc54.loopexit.i, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 112, i1 false), !noalias !315
  store i64 0, ptr %i.f, align 8, !alias.scope !313, !noalias !315
  %.sroa.030.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.030.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !313, !noalias !315
  %.sroa.030.sroa.0.sroa.5.sroa.4.0..sroa.030.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
end_hunk_0
