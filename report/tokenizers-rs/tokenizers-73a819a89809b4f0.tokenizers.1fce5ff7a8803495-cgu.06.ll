Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE3new:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.g:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %2) #29
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.critedge:                                        ; preds = %bb.i, %bb.c
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body5

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %.critedge unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE7builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9from_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [232 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !13, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28
          to label %bb.q unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !14, !noundef !4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.r, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #28
          to label %bb.q unwind label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.u = icmp ule i64 %4, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not9 = icmp eq i64 %4, 0
  br i1 %.not9, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.o, %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !15, !alias.scope !1270, !noundef !4
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %bb.p unwind label %bb.m, !noalias !1271

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.q, ptr %.sroa.513.0..sroa_idx, align 8, !noalias !1271
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx16, align 8, !noalias !1271
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1271
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.d) #29
          to label %.body unwind label %bb.n, !noalias !1271

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !1271
  unreachable

bb.o:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %bb.k

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.q, ptr %.sroa.513.0..sroa_idx14, align 8, !noalias !1271
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx17, align 8, !noalias !1271
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %4, ptr %.sroa.7.0..sroa_idx19, align 8, !noalias !1271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false), !alias.scope !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %bb.i, %bb.d
  unreachable

bb.r:                                             ; preds = %bb.f, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.m, %bb.t
  %.pn23 = phi { ptr, i32 } [ %.pn.ph, %bb.t ], [ %i.y, %bb.m ]
  resume { ptr, i32 } %.pn23

bb.t:                                             ; preds = %bb.b, %bb.r
  %.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.d) #29
          to label %.body unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9get_vocab(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_mEE9from_iterINtB7_8IntoIterB15_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9read_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %5 = alloca [32 x i8], align 8                  ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [56 x i8], align 8                ; 8 uses
  %i.r = alloca [72 x i8], align 8                ; 16 uses
  %i.s = alloca [64 x i8], align 8                ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 9 uses
  %i.u = alloca [32 x i8], align 8                ; 15 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [48 x i8], align 8                ; 10 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.y = load i32, ptr %i.x, align 8, !range !32, !noundef !4
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ab, ptr %i.a, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.ac = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.c, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3newCs2JiOgHzbbc7_10tokenizers.exit150, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #29
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.d, %.body190
  %common.resume.op = phi { ptr, i32 } [ %.pn140, %.body190 ], [ %i.ae, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3newCs2JiOgHzbbc7_10tokenizers.exit150: ; preds = %bb.b
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ac, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @96, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.ah, align 8
  br label %bb.ay

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !range !23, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB2_9BufReaderNtNtB8_2fs4FileE13with_capacityCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, i64 noundef 8192, i32 noundef %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.568.0..sroa_idx, align 8
  %i.ak = invoke { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_4Read14read_to_stringCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.h unwind label %bb.g       ; 2 uses

.body:                                            ; preds = %bb.cc, %bb.q, %bb.k, %bb.g, %bb.cb, %bb.ca
  %.pn138 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.cb ], [ %i.bb, %bb.q ], [ %.pn.pn.pn.pn, %bb.ca ], [ %i.ar, %bb.k ], [ %i.al, %bb.g ], [ %.pn.pn.pn.pn, %bb.cc ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #29
          to label %.body190 unwind label %bb.bs

bb.g:                                             ; preds = %bb.bz, %bb.av, %bb.m, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.am = extractvalue { i64, ptr } %i.ak, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ao = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ao, ptr %i.b, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.ap = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.ch, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc156 unwind label %bb.k

.noexc156:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.at = load ptr, ptr %.sroa.467.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.au = load i64, ptr %.sroa.568.0..sroa_idx, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.at, ptr %i.i, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.au, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.571.0..sroa_idx, align 8
  invoke void @_RINvNtCs5PtHgSLqj5O_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.av = load i8, ptr %i.t, align 8, !range !35, !noundef !4 ; 2 uses
  %i.aw = icmp eq i8 %i.av, -1
  br i1 %i.aw, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ay, ptr %i.e, align 8, !noalias !1283
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.az = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %bb.cd, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc158 unwind label %bb.q

.noexc158:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.s:                                             ; preds = %bb.n
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.473.0..sroa_idx, i64 7, i1 false)
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.574.0.copyload = load ptr, ptr %.sroa.574.0..sroa_idx, align 8
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i8 %i.av, ptr %i.u, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr %.sroa.574.0.copyload, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bd = load atomic ptr, ptr @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !1284 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.t, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !5

bb.t:                                             ; preds = %bb.s
  %i.bf = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1B_7get_src0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.v

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i = phi ptr [ %i.bd, %bb.s ], [ %i.bf, %bb.t ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !1284, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1284, !nonnull !4, !align !8, !noundef !4
  %i.bj = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !1284 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.u, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !5

bb.u:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bl = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.v
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9read_file:bb.a
.body176:                                         ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bu, %bb.bq, %.split.thread.loopexit.split-lp, %bb.bn
  %.pn.pn = phi { ptr, i32 } [ %.pn194, %.split.thread.loopexit.split-lp ], [ %eh.lpad-body152, %bb.bn ], [ %i.dy, %bb.bq ], [ %i.eb, %bb.bu ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bs

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load i64, ptr %i.q, align 8, !range !15, !noundef !4
  %.not133 = icmp eq i64 %i.cg, -1
  br i1 %.not133, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false)
  %i.ch = load i8, ptr %i.o, align 8, !range !24, !noundef !4
  %i.ci = icmp eq i8 %i.ch, 2
  br i1 %i.ci, label %bb.bd, label %bb.bw

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168 unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ap, %bb.aj, %bb.af, %bb.z, %.body176
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body176 ], [ %i.cq, %bb.aj ], [ %i.ce, %bb.z ], [ %i.cj, %bb.af ], [ %i.cz, %bb.ap ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bs

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.ae, %bb.am, %bb.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.ag unwind label %bb.af

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168
  %i.ck = load i32, ptr %i.l, align 8, !range !32, !noundef !4
  %i.cl = trunc nuw i32 %i.ck to i1
  br i1 %i.cl, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.cn, ptr %i.c, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.co = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ai, label %bb.bb, !prof !7

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc170 unwind label %bb.aj

.noexc170:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !range !23, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB2_9BufReaderNtNtB8_2fs4FileE13with_capacityCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, i64 noundef 8192, i32 noundef %i.ct)
          to label %bb.am unwind label %bb.af

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMNtNtCs2JiOgHzbbc7_10tokenizers5utils4iterINtB3_11ResultShuntINtNtCs2AWtUsOyxgP_3std2io5LinesINtNtNtB14_8buffered9bufreader9BufReaderNtNtB16_2fs4FileEENtNtB14_5error5ErrorE7processNCNvMs5_NtNtNtB7_6models3bpe5modelNtB34_3BPE9read_file0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB4w_6string6StringB4Y_EEINtNtB4w_5boxed3BoxDNtNtB3U_5error5ErrorNtNtB3U_6marker4SendNtB66_4SyncEL_EEEB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s)
          to label %bb.an unwind label %bb.af

bb.an:                                            ; preds = %bb.am
  %i.cu = load i64, ptr %i.k, align 8, !range !31, !noundef !4 ; 3 uses
  %i.cv = icmp eq i64 %i.cu, -2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8            ; 5 uses
  br i1 %i.cv, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cx, ptr %i.d, align 8
  %i.cy = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 8)
          to label %bb.ba unwind label %bb.ap     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ar:                                            ; preds = %bb.an
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5122.0.copyload = load i64, ptr %.sroa.5122.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.db = icmp eq i64 %i.cu, -1
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  %i.dc = inttoptr i64 %.sroa.5122.0.copyload to ptr
  %i.dd = icmp ne i64 %.sroa.5122.0.copyload, 0
  call void @llvm.assume(i1 %i.dd)
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.de = inttoptr i64 %.sroa.5122.0.copyload to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cu, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.cx, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.de, ptr %.sroa.661.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.df = load i8, ptr %i.u, align 8, !range !24, !noundef !4
  %i.dg = icmp eq i8 %i.df, 5
  br i1 %i.dg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.u)
          to label %bb.au unwind label %bb.g

.body190:                                         ; preds = %bb.cf, %bb.aw, %.body
  %.pn140 = phi { ptr, i32 } [ %.pn138, %.body ], [ %i.dh, %bb.aw ], [ %i.ej, %bb.cf ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %i.w) #29
  br label %common.resume

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189, %bb.au
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3newCs2JiOgHzbbc7_10tokenizers.exit150, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit, %bb.ax
  ret void

bb.az:                                            ; preds = %bb.ba, %bb.as
  %.sink213 = phi ptr [ %i.cy, %bb.ba ], [ %i.cx, %bb.as ]
  %.sink = phi ptr [ @96, %bb.ba ], [ %i.dc, %bb.as ]
  store ptr %.sink213, ptr %0, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dj, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ao
  store ptr %i.cx, ptr %i.cy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.bb:                                            ; preds = %bb.ah
  store ptr %i.cn, ptr %i.co, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.co, ptr %0, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @96, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dl, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173 unwind label %bb.v

bb.bd:                                            ; preds = %bb.ad
  %.sroa.0126.0.copyload = load i64, ptr %i.cb, align 8
  %.sroa.5127.0.copyload = load i64, ptr %.sroa.5127.0..sroa_idx, align 8
  %i.dm = icmp eq i64 %.sroa.0126.0.copyload, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br i1 %i.dm, label %6, label %bb.be

6:                                                ; preds = %bb.bd
  store i64 2, ptr %5, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bj unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4112.0.copyload = load i64, ptr %.sroa.4112.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 2, ptr %i.f, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4112.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1286
  %i.dn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 32, i64 noundef range(i64 1, 9) 8) #27, !noalias !1286 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bf, label %bb.bo, !prof !7

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc174 unwind label %bb.bg

.noexc174:                                        ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #29
          to label %.body151 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bi:                                            ; preds = %bb.bj, %6
  %.sroa.062.0 = phi i1 [ false, %bb.bj ], [ true, %6 ]
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body151

.body151:                                         ; preds = %bb.bg, %bb.bi
  %.sroa.062.0.lpad-body = phi i1 [ %.sroa.062.0, %bb.bi ], [ true, %bb.bg ]
  %eh.lpad-body152 = phi { ptr, i32 } [ %i.dr, %bb.bi ], [ %i.dp, %bb.bg ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.o) #29
          to label %bb.bn unwind label %bb.bs

bb.bj:                                            ; preds = %6
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ds = trunc i64 %.sroa.5127.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.dt = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, i32 noundef %i.ds)
          to label %bb.bk unwind label %bb.bi     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.du = load i8, ptr %i.o, align 8, !range !24, !noundef !4
  %i.dv = icmp eq i8 %i.du, 2
  br i1 %i.dv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186

bb.bm:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.o)
          to label %bb.bl unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %.body151
  br i1 %.sroa.062.0.lpad-body, label %.split.thread.loopexit.split-lp, label %.body176

.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.bo
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread.loopexit.split-lp

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182, %bb.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body176

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ab

bb.bo:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store ptr %i.dn, ptr %0, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.o)
          to label %bb.bp unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body176 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180 unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bc

bb.bs:                                            ; preds = %bb.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit, %.body176, %bb.cb, %.split.thread.loopexit.split-lp, %.body151, %.body
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bt:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body176 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.o)
          to label %bb.bt unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.thread.loopexit.split-lp:                  ; preds = %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bn
  %.pn194 = phi { ptr, i32 } [ %eh.lpad-body152, %bb.bn ], [ %lpad.loopexit.split-lp219, %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %.body176 unwind label %bb.bs

bb.bx:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.cc, ptr %0, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.ee, align 8
  br label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ef = load i8, ptr %i.u, align 8, !range !24, !noundef !4
  %i.eg = icmp eq i8 %i.ef, 5
  br i1 %i.eg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.cd, %bb.bz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ce

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.u)
          to label %bb.by unwind label %bb.g

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  br i1 %.sroa.063.0, label %bb.cc, label %.body

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.u) #29
          to label %.body unwind label %bb.bs

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx)
          to label %.body unwind label %bb.bs

bb.cd:                                            ; preds = %bb.o
  store ptr %i.ay, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.az, ptr %0, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @94, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.ei, align 8
  br label %bb.by

bb.ce:                                            ; preds = %bb.ch, %bb.by
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body190 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193 unwind label %bb.aw

bb.ch:                                            ; preds = %bb.i
  store ptr %i.ao, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ap, ptr %0, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @96, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.em, align 8
  br label %bb.ce

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.en = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i = load i64, ptr %i.en, align 8, !alias.scope !1287, !noundef !4 ; 2 uses
  %i.eo = icmp eq i64 %.val1.i, 0
  br i1 %i.eo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !1287, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #27, !noalias !1287
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193, %bb.ci
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.val2.i = load i32, ptr %i.ep, align 8, !range !23, !alias.scope !1287, !noundef !4
  %i.eq = call noundef i32 @close(i32 noundef %.val2.i) #27, !noalias !1287 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ay
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 4 uses
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
end_hunk_1
