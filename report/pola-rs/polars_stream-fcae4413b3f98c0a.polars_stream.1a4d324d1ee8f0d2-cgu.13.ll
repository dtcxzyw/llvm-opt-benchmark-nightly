Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.13?download=true
inline.NumInlined: 5868
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtCsh8eZTKRCwoO_3std2io18default_read_exactNtNtB4_2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3, !dbg !20393
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.h
    i64 0, label %.split38
    i64 1, label %.split37
  ], !dbg !20394, !prof !2685

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null, !dbg !20392
  br i1 %i.j, label %.loopexit.sink.split, label %bb.e, !dbg !20392

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.7.049, %i.h, !dbg !20395
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !20395, !prof !2257

.loopexit.sink.split:                             ; preds = %bb.d, %bb.h, %.split, %.split37, %.split38
  %.sroa.09.0.ph = phi ptr [ %i.f, %bb.h ], [ %i.f, %.split38 ], [ %i.f, %.split37 ], [ %i.f, %.split ], [ @48, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20396
  br label %.loopexit, !dbg !20397

.loopexit:                                        ; preds = %bb.i, %.loopexit.sink.split, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ %.sroa.09.0.ph, %.loopexit.sink.split ], [ null, %bb.i ], !dbg !20398
  ret ptr %.sroa.09.0, !dbg !20397

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.7.049, i64 noundef %.sroa.7.049, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #40, !dbg !20399
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.7.049, %i.h, !dbg !20400
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 %i.h, !dbg !20401
  br label %bb.i, !dbg !20396

.split:                                           ; preds = %bb.c
  %.mask39 = and i64 %i.h, -4294967296, !dbg !20402
  %i.n = icmp eq i64 %.mask39, 17179869184, !dbg !20402
  br i1 %i.n, label %.thread, label %.loopexit.sink.split, !dbg !20403

.split38:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !20404
  %i.p = load i8, ptr %i.o, align 8, !dbg !20404, !range !2710, !noundef !2247
  %i.q = icmp eq i8 %i.p, 35, !dbg !20405
  br i1 %i.q, label %.thread, label %.loopexit.sink.split, !dbg !20403

.split37:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15, !dbg !20406
  %i.s = load i8, ptr %i.r, align 8, !dbg !20406, !range !2710, !noundef !2247
  %i.t = icmp eq i8 %i.s, 35, !dbg !20407
  br i1 %i.t, label %.thread, label %.loopexit.sink.split, !dbg !20403

bb.h:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr), !dbg !20408
  tail call void @llvm.assume(i1 %i.u), !dbg !20409
  %.mask = and i64 %i.h, -4294967296, !dbg !20410
  %i.v = icmp eq i64 %.mask, 150323855360, !dbg !20410
  br i1 %i.v, label %.thread, label %.loopexit.sink.split, !dbg !20403

.thread:                                          ; preds = %bb.h, %.split, %.split37, %.split38
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !20396
  br label %bb.i, !dbg !20396

bb.i:                                             ; preds = %bb.g, %.thread
  %.sroa.0.118 = phi ptr [ %.sroa.0.050, %.thread ], [ %i.m, %bb.g ]
  %.sroa.7.116 = phi i64 [ %.sroa.7.049, %.thread ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20396
  %i.w = icmp eq i64 %.sroa.7.116, 0, !dbg !20389
  br i1 %i.w, label %.loopexit, label %bb.b, !dbg !20389
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io18default_read_exactNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20411 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0, !dbg !20443
  br i1 %i.b, label %.loopexit, label %.lr.ph, !dbg !20443

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b, !dbg !20443

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.050 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.118, %bb.i ] ; 3 uses
  %.sroa.7.049 = phi i64 [ %2, %.lr.ph ], [ %.sroa.7.116, %bb.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20444
  %i.d = tail call { i64, ptr } @_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_readerNtB5_12ReaderSourceNtNtCsh8eZTKRCwoO_3std2io4Read4read(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull %.sroa.0.050, i64 noundef %.sroa.7.049), !dbg !20445 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0, !dbg !20445 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1, !dbg !20445 ; 11 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !20445
  store ptr %i.f, ptr %i.c, align 8, !dbg !20445
  %i.g = trunc nuw i64 %i.e to i1, !dbg !20446
  %i.h = ptrtoint ptr %i.f to i64, !dbg !20446    ; 7 uses
  br i1 %i.g, label %bb.c, label %bb.d, !dbg !20446

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3, !dbg !20447
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.h
    i64 0, label %.split38
    i64 1, label %.split37
  ], !dbg !20448, !prof !2685

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null, !dbg !20446
  br i1 %i.j, label %.loopexit.sink.split, label %bb.e, !dbg !20446

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.7.049, %i.h, !dbg !20449
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !20449, !prof !2257

.loopexit.sink.split:                             ; preds = %bb.d, %bb.h, %.split, %.split37, %.split38
  %.sroa.09.0.ph = phi ptr [ %i.f, %bb.h ], [ %i.f, %.split38 ], [ %i.f, %.split37 ], [ %i.f, %.split ], [ @48, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20450
  br label %.loopexit, !dbg !20451

.loopexit:                                        ; preds = %bb.i, %.loopexit.sink.split, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ %.sroa.09.0.ph, %.loopexit.sink.split ], [ null, %bb.i ], !dbg !20452
  ret ptr %.sroa.09.0, !dbg !20451

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.7.049, i64 noundef %.sroa.7.049, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #40, !dbg !20453
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.7.049, %i.h, !dbg !20454
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 %i.h, !dbg !20455
  br label %bb.i, !dbg !20450

.split:                                           ; preds = %bb.c
  %.mask39 = and i64 %i.h, -4294967296, !dbg !20456
  %i.n = icmp eq i64 %.mask39, 17179869184, !dbg !20456
  br i1 %i.n, label %.thread, label %.loopexit.sink.split, !dbg !20457

.split38:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !20458
  %i.p = load i8, ptr %i.o, align 8, !dbg !20458, !range !2710, !noundef !2247
  %i.q = icmp eq i8 %i.p, 35, !dbg !20459
  br i1 %i.q, label %.thread, label %.loopexit.sink.split, !dbg !20457

.split37:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15, !dbg !20460
  %i.s = load i8, ptr %i.r, align 8, !dbg !20460, !range !2710, !noundef !2247
  %i.t = icmp eq i8 %i.s, 35, !dbg !20461
  br i1 %i.t, label %.thread, label %.loopexit.sink.split, !dbg !20457

bb.h:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr), !dbg !20462
  tail call void @llvm.assume(i1 %i.u), !dbg !20463
  %.mask = and i64 %i.h, -4294967296, !dbg !20464
  %i.v = icmp eq i64 %.mask, 150323855360, !dbg !20464
  br i1 %i.v, label %.thread, label %.loopexit.sink.split, !dbg !20457

.thread:                                          ; preds = %bb.h, %.split, %.split37, %.split38
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !20450
  br label %bb.i, !dbg !20450

bb.i:                                             ; preds = %bb.g, %.thread
  %.sroa.0.118 = phi ptr [ %.sroa.0.050, %.thread ], [ %i.m, %bb.g ]
  %.sroa.7.116 = phi i64 [ %.sroa.7.049, %.thread ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20450
  %i.w = icmp eq i64 %.sroa.7.116, 0, !dbg !20443
  br i1 %i.w, label %.loopexit, label %bb.b, !dbg !20443
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQDNtB2_4ReadEL_EECs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20465 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20726 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !20726, !noundef !2247 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !20727
  tail call void @llvm.assume(i1 %i.e), !dbg !20728
  %i.f = load i64, ptr %1, align 8, !dbg !20729, !range !2569, !noundef !2247 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !20730      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !20730

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !20731
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !20732, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !20731        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !20733          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !20734
  %i.l = sub i64 %3, %i.j, !dbg !20734
  %i.m = add i64 %i.l, 9216, !dbg !20734          ; 2 uses
  %.not98 = icmp ult i64 %i.m, %i.i, !dbg !20734
  %.sroa.5.1.i = select i1 %.not98, i64 8192, i64 %i.m, !dbg !20735
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !20734 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !20736

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !20737 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !20738   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !20739
  %i.p = icmp ult i64 %i.o, 32, !dbg !20739
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !20739

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.d, %bb.b ], !dbg !20740
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.b ], !dbg !20741
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.b ], !dbg !20742
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !20743

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQDNtB4_4ReadEL_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !20667 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0, !dbg !20667
  %i.ab = extractvalue { i64, ptr } %i.z, 1, !dbg !20667 ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1, !dbg !20744
  br i1 %i.ac, label %bb.ae, label %bb.e, !dbg !20744

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.ab, null, !dbg !20745
  br i1 %i.ad, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, !dbg !20745

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !20740
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !20745

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.ae = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cf, %bb.aa ], !dbg !20740 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cc, %bb.aa ], !dbg !20746
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !20747 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQDNtB4_4ReadEL_EE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !20748
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !20749
  call void @llvm.assume(i1 %i.af), !dbg !20750
  %i.ag = load i64, ptr %1, align 8, !dbg !20751, !range !2569, !noundef !2247 ; 3 uses
  %i.ah = icmp eq i64 %i.ae, %i.ag, !dbg !20752
  %i.ai = icmp eq i64 %i.ag, %i.f
  %or.cond62 = and i1 %i.ah, %i.ai, !dbg !20752
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !20752

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aj = phi i64 [ %.pre123, %._crit_edge ], [ %i.ag, %bb.f ], !dbg !20753 ; 3 uses
  %i.ak = phi i64 [ %.pre122, %._crit_edge ], [ %i.ae, %bb.f ], !dbg !20754 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1, !dbg !20755
  call void @llvm.assume(i1 %i.al), !dbg !20756
  %i.am = icmp eq i64 %i.ak, %i.aj, !dbg !20757
  br i1 %i.am, label %bb.l, label %bb.m, !dbg !20757

bb.h:                                             ; preds = %bb.f
  %i.an = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQDNtB4_4ReadEL_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !20679 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0, !dbg !20679
  %i.ap = extractvalue { i64, ptr } %i.an, 1, !dbg !20679 ; 2 uses
  %i.aq = trunc nuw i64 %i.ao to i1, !dbg !20758
  br i1 %i.aq, label %bb.i, label %bb.j, !dbg !20758

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.ap to i64, !dbg !20679
  br label %.loopexit, !dbg !20759

bb.j:                                             ; preds = %bb.h
  %i.as = icmp eq ptr %i.ap, null, !dbg !20760
  %.pre122 = load i64, ptr %i.c, align 8, !dbg !20754 ; 3 uses
  br i1 %i.as, label %bb.k, label %._crit_edge, !dbg !20760

._crit_edge:                                      ; preds = %bb.j
  %.pre123 = load i64, ptr %1, align 8, !dbg !20753, !range !2569
  br label %bb.g, !dbg !20760

bb.k:                                             ; preds = %bb.j
  %i.at = icmp sgt i64 %.pre122, -1, !dbg !20761
  call void @llvm.assume(i1 %i.at), !dbg !20762
  %i.au = sub nsw i64 %.pre122, %i.d, !dbg !20763
  br label %.loopexit, !dbg !20764

bb.l:                                             ; preds = %bb.g
  %i.av = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aj, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !20765
  %i.aw = extractvalue { i64, i64 } %i.av, 0, !dbg !20765
  %.not = icmp eq i64 %i.aw, -9223372036854775807, !dbg !20766
  br i1 %.not, label %._crit_edge124, label %.loopexit, !dbg !20767

._crit_edge124:                                   ; preds = %bb.l
  %.pre125 = load i64, ptr %i.c, align 8, !dbg !20768
  %.pre126 = load i64, ptr %1, align 8, !dbg !20769, !range !2569
  br label %bb.m, !dbg !20767

bb.m:                                             ; preds = %._crit_edge124, %bb.g
  %i.ax = phi i64 [ %.pre126, %._crit_edge124 ], [ %i.aj, %bb.g ], !dbg !20769
  %i.ay = phi i64 [ %.pre125, %._crit_edge124 ], [ %i.ak, %bb.g ], !dbg !20768 ; 5 uses
  %i.az = load ptr, ptr %i.q, align 8, !dbg !20770, !nonnull !2247, !noundef !2247
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay, !dbg !20771
  %i.bb = sub i64 %i.ax, %i.ay, !dbg !20772
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bb), !dbg !20773 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20774
  store ptr %i.ba, ptr %i.b, align 8, !dbg !20775
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !20775
  store i64 0, ptr %i.s, align 8, !dbg !20775
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !20776
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !20700, !noalias !20701 ; 2 uses
  %i.bc = icmp eq i64 %.promoted, 0, !dbg !20777
  br i1 %i.bc, label %.thread, label %.lr.ph, !dbg !20777

.thread:                                          ; preds = %bb.m
  %i.bd = icmp sgt i64 %i.ay, -1, !dbg !20778
  call void @llvm.assume(i1 %i.bd), !dbg !20779
  store i64 %i.ay, ptr %i.c, align 8, !dbg !20780
  br label %.loopexit145, !dbg !20781

.lr.ph:                                           ; preds = %bb.m
  %.val4.i = load ptr, ptr %0, align 8, !nonnull !2247 ; 2 uses
  %.val5.i = load ptr, ptr %i.v, align 8, !nonnull !2247, !align !2484
  %i.be = getelementptr inbounds nuw i8, ptr %.val5.i, i64 72 ; 2 uses
  br label %bb.n, !dbg !20777

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %i.bf = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20700), !dbg !20782
  call void @llvm.experimental.noalias.scope.decl(metadata !20701), !dbg !20782
  %i.bg = load i64, ptr %i.r, align 8, !dbg !20783, !alias.scope !20701, !noalias !20700, !noundef !2247
  %i.bh = load i64, ptr %i.s, align 8, !dbg !20784, !alias.scope !20701, !noalias !20700, !noundef !2247 ; 6 uses
  %i.bi = sub i64 %i.bg, %i.bh, !dbg !20785
  %i.bj = icmp ult i64 %i.bf, %i.bi, !dbg !20786
  br i1 %i.bj, label %bb.p, label %bb.o, !dbg !20786

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.be, align 8, !dbg !20787, !invariant.load !2247, !noalias !20704, !nonnull !2247
  %i.bl = call noundef ptr %i.bk(ptr noundef nonnull %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #45, !dbg !20788, !noalias !20700, !inline_history !20536
  %i.bm = load i64, ptr %i.s, align 8, !dbg !20789, !alias.scope !20701, !noalias !20700, !noundef !2247 ; 2 uses
  %.neg.i = add i64 %i.bh, %i.bf, !dbg !20790
  %i.bn = sub i64 %.neg.i, %i.bm, !dbg !20791
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit, !dbg !20792

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.t, align 8, !dbg !20793, !alias.scope !20701, !noalias !20700, !noundef !2247 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bh, !dbg !20794
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bf), !dbg !20795
  %i.bq = load ptr, ptr %i.b, align 8, !dbg !20796, !alias.scope !20701, !noalias !20700, !nonnull !2247, !noundef !2247
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh, !dbg !20797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20798, !noalias !20707
  store ptr %i.br, ptr %i.a, align 8, !dbg !20799, !noalias !20707
  store i64 %i.bf, ptr %i.w, align 8, !dbg !20799, !noalias !20707
  store i64 0, ptr %i.x, align 8, !dbg !20799, !noalias !20707
  store i64 %.sroa.0.0.i.i, ptr %i.y, align 8, !dbg !20800, !noalias !20707
  %i.bs = load ptr, ptr %i.be, align 8, !dbg !20801, !invariant.load !2247, !noalias !20708, !nonnull !2247
  %i.bt = call noundef ptr %i.bs(ptr noundef nonnull %.val4.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #45, !dbg !20802, !noalias !20707, !inline_history !20536
  %i.bu = load i64, ptr %i.x, align 8, !dbg !20803, !noalias !20707, !noundef !2247 ; 2 uses
  %i.bv = load i64, ptr %i.y, align 8, !dbg !20804, !noalias !20707, !noundef !2247
  %i.bw = add i64 %i.bu, %i.bh, !dbg !20805       ; 3 uses
  store i64 %i.bw, ptr %i.s, align 8, !dbg !20805, !alias.scope !20701, !noalias !20700
  %.sroa.0.0.i7.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bo), !dbg !20806
  %i.bx = add i64 %i.bv, %i.bh, !dbg !20807
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %i.bx, i64 %.sroa.0.0.i7.i), !dbg !20808
  store i64 %.sroa.0.0.i8.i, ptr %i.t, align 8, !dbg !20809, !alias.scope !20701, !noalias !20700
  %i.by = sub i64 %i.bf, %i.bu, !dbg !20810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20811, !noalias !20707
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit, !dbg !20792

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.o, %bb.p
  %.pre127132 = phi i64 [ %i.bw, %bb.p ], [ %i.bm, %bb.o ]
  %.sink = phi i64 [ %i.by, %bb.p ], [ %i.bn, %bb.o ], !dbg !20812 ; 3 uses
  %.sroa.0.0.i64 = phi ptr [ %i.bt, %bb.p ], [ %i.bl, %bb.o ], !dbg !20812 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !20812, !alias.scope !20700, !noalias !20701
  %.not60 = icmp eq ptr %.sroa.0.0.i64, null, !dbg !20813 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, label %bb.q, !dbg !20814

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit
  %i.bz = ptrtoint ptr %.sroa.0.0.i64 to i64, !dbg !20815 ; 3 uses
  %i.ca = and i64 %i.bz, 3, !dbg !20816
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split96
    i64 1, label %.split95
  ], !dbg !20817, !prof !2685

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit, %bb.r, %.split, %.split95, %.split96
  %i.cb = ptrtoint ptr %.sroa.0.0.i64 to i64, !dbg !20818
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !20819

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit
  %.pre127 = phi i64 [ %.pre127.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge ], [ %.pre127132, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit ], !dbg !20819 ; 5 uses
  %.not6077.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6476.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit ]
  %.pre128 = load i64, ptr %i.t, align 8, !dbg !20820 ; 2 uses
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !20821 ; 2 uses
  %i.cc = sub nuw i64 %.pre128, %.pre127, !dbg !20822
  %i.cd = icmp ne i64 %.pre128, %.sroa.0.0.i, !dbg !20823
  %i.ce = icmp sgt i64 %.pre129, -1, !dbg !20778
  call void @llvm.assume(i1 %i.ce), !dbg !20779
  %i.cf = add i64 %.pre129, %.pre127, !dbg !20824 ; 3 uses
  store i64 %i.cf, ptr %i.c, align 8, !dbg !20780
  br i1 %.not6077.ph, label %bb.y, label %.loopexit144, !dbg !20825

.split:                                           ; preds = %bb.q
  %.mask99 = and i64 %i.bz, -4294967296, !dbg !20826
  %i.cg = icmp eq i64 %.mask99, 17179869184, !dbg !20826
  br i1 %i.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !20827

.split96:                                         ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64, i64 16, !dbg !20828
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !20828, !range !2710, !noundef !2247
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !20829
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !20827

.split95:                                         ; preds = %bb.q
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i64, i64 -1, !dbg !20830 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i64, i64 15, !dbg !20831
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !20831, !range !2710, !noundef !2247
  %i.cn = icmp eq i8 %i.cm, 35, !dbg !20832
  br i1 %i.cn, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !20827

bb.r:                                             ; preds = %bb.q
  %i.co = icmp ult ptr %.sroa.0.0.i64, inttoptr (i64 180388626432 to ptr), !dbg !20833
  call void @llvm.assume(i1 %i.co), !dbg !20834
  %.mask = and i64 %i.bz, -4294967296, !dbg !20835
  %i.cp = icmp eq i64 %.mask, 150323855360, !dbg !20835
  br i1 %i.cp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !20827

bb.s:                                             ; preds = %.split95
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !dbg !20836, !noalias !20719 ; 5 uses
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i64, i64 7, !dbg !20836
  %.val1.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !dbg !20836, !noalias !20719, !nonnull !2247, !align !2484, !noundef !2247 ; 5 uses
  %i.cr = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !20837, !invariant.load !2247, !noalias !20719 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null, !dbg !20837
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !20837

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cr(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !20837, !noalias !20719

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !20838
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !20838, !range !2569, !invariant.load !2247, !noalias !20719 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0, !dbg !20839
  br i1 %i.cu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.v, !dbg !20839

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !20838
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !20840, !range !2570, !invariant.load !2247, !noalias !20719
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #42, !dbg !20841, !noalias !20719
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !20842

bb.w:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !20843
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !20843, !range !2569, !invariant.load !2247, !noalias !20719 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0, !dbg !20844
  br i1 %i.da, label %.body, label %bb.x, !dbg !20844

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !20843
  %i.dc = load i64, ptr %i.db, align 8, !dbg !20845, !range !2570, !invariant.load !2247, !noalias !20719
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #42, !dbg !20846, !noalias !20719
  br label %.body, !dbg !20847

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #42, !dbg !20848, !noalias !20719
  resume { ptr, i32 } %i.cx, !dbg !20849

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #42, !dbg !20850, !noalias !20719
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, !dbg !20851

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.r, %.split, %.split96, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.dd = icmp eq i64 %.sink, 0, !dbg !20777
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !20777

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %.pre127.pre = load i64, ptr %i.s, align 8, !dbg !20819
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !20777

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.de = icmp eq i64 %.pre127, 0, !dbg !20781
  br i1 %i.de, label %.loopexit145, label %bb.z, !dbg !20781

.loopexit145:                                     ; preds = %bb.y, %.thread
  %i.df = phi i64 [ %i.ay, %.thread ], [ %i.cf, %bb.y ]
  %i.dg = sub nsw i64 %i.df, %i.d, !dbg !20852
  br label %.loopexit144, !dbg !20853

bb.z:                                             ; preds = %bb.y
  %i.dh = icmp ult i64 %.pre127, %.sroa.0.0.i, !dbg !20854
  %i.di = add i32 %.sroa.019.0, 1, !dbg !20854
  %.sroa.019.1 = select i1 %i.dh, i32 %i.di, i32 0, !dbg !20854 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !20855

.loopexit144:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread, %.loopexit145
  %.sroa.8.0 = phi i64 [ %i.dg, %.loopexit145 ], [ %.sroa.0.0.i6476.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !20856
  %.sroa.010.0 = phi i64 [ 0, %.loopexit145 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQDNtB5_4ReadEL_EBF_8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !20856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20857
  br label %.loopexit, !dbg !20759

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.dm, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !20747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20857
  br label %bb.f, !dbg !20743

bb.ab:                                            ; preds = %bb.z
  %i.dj = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cd, i1 %i.dj, i1 false, !dbg !20858
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !20858 ; 4 uses
  %i.dk = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !20859
  %i.dl = icmp eq i64 %.pre127, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dl, %i.dk, !dbg !20859
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !20859

bb.ac:                                            ; preds = %bb.ab
  %i.dm = shl nuw i64 %spec.select, 1, !dbg !20860
  %i.dn = icmp slt i64 %spec.select, 0, !dbg !20860
  br i1 %i.dn, label %bb.ad, label %bb.aa, !dbg !20861, !prof !2257

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !20862

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit144
  %.sroa.8.1 = phi i64 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %.sroa.8.0, %.loopexit144 ], [ 163208757251, %bb.l ], !dbg !20863
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit144 ], [ 1, %bb.l ], !dbg !20863
  %i.do = inttoptr i64 %.sroa.8.1 to ptr, !dbg !20864
  br label %bb.ae, !dbg !20865

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.do, %.loopexit ], [ %i.ab, %bb.d ], [ null, %bb.e ], !dbg !20748
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !20748
  %i.dp = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !20864
  %i.dq = insertvalue { i64, ptr } %i.dp, ptr %.sroa.8.2, 1, !dbg !20864
  ret { i64, ptr } %i.dq, !dbg !20864
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtB2_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20866 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 7 uses
  %i.b = alloca [32 x i8], align 1                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21221 ; 15 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !21221, !noundef !2247 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !21222
  tail call void @llvm.assume(i1 %i.e), !dbg !21223
  %i.f = load i64, ptr %1, align 8, !dbg !21224, !range !2569, !noundef !2247 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !21225      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !21225

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !21226
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !21227, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !21226        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !21228          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !21229
  %i.l = sub i64 %3, %i.j, !dbg !21229
  %i.m = add i64 %i.l, 9216, !dbg !21229          ; 2 uses
  %.not96 = icmp ult i64 %i.m, %i.i, !dbg !21229
  %.sroa.5.1.i = select i1 %.not96, i64 8192, i64 %i.m, !dbg !21230
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !21229 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !21231

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !21232 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !21233   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !21234
  %i.p = icmp ult i64 %i.o, 32, !dbg !21234
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !21234

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit.thread, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %i.q = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.au, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit.thread ]
  %.sroa.050.2 = phi i64 [ 8192, %bb.b ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.050.0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !21235
  %.sroa.013.1 = phi i1 [ false, %bb.b ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.013.0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !21236
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val.i.i63 = load ptr, ptr %0, align 8, !nonnull !2247, !align !2484 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 24 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.r, align 8
  br label %.outer, !dbg !21237

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21129), !dbg !21148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21130), !dbg !21148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21238, !noalias !21131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !dbg !21239, !noalias !21131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21132), !dbg !21240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21133), !dbg !21240
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21241 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !21241, !alias.scope !21134, !noalias !21135, !noundef !2247 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !21241
  br i1 %i.y, label %.noexc.i.thread, label %bb.e, !dbg !21241

.noexc.i.thread:                                  ; preds = %bb.d
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !21242, !noalias !21129
  %i.z = load i64, ptr %i.c, align 8, !dbg !21243, !alias.scope !21136, !noalias !21129, !noundef !2247 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1, !dbg !21244
  tail call void @llvm.assume(i1 %i.aa), !dbg !21245
  br label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !21246

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %0, align 8, !dbg !21247, !alias.scope !21134, !noalias !21135, !nonnull !2247, !align !2484, !noundef !2247 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21137), !dbg !21247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21138), !dbg !21248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21139), !dbg !21248
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !21249
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !21249, !alias.scope !21140, !noalias !21141, !nonnull !2247, !noundef !2247
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !21250
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !21250, !alias.scope !21140, !noalias !21141, !noundef !2247 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !21251 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !21251, !alias.scope !21142, !noalias !21141, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ag), !dbg !21252 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.0.0.i.i.i.i.i.i, !dbg !21253 ; 2 uses
  %i.ai = sub nuw nsw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i, !dbg !21254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21143), !dbg !21255
  %.sroa.0.0.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ai), !dbg !21256 ; 2 uses
  %.sroa.0.0.i.i5.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i, i64 32), !dbg !21256 ; 8 uses
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i, 1, !dbg !21257
  br i1 %i.aj, label %bb.f, label %bb.g, !dbg !21257

bb.f:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %i.ah, align 1, !dbg !21258, !noalias !21144, !noundef !2247
  store i8 %i.ak, ptr %i.b, align 1, !dbg !21259, !alias.scope !21145, !noalias !21146
  br label %.noexc.i, !dbg !21260

bb.g:                                             ; preds = %bb.e
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.b, i64 noundef %.sroa.0.0.i.i5.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %.sroa.0.0.i.i5.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439), !dbg !21261, !noalias !21146
  br label %.noexc.i, !dbg !21260

.noexc.i:                                         ; preds = %bb.f, %bb.g
  %i.al = add i64 %.sroa.0.0.i.i5.i.i.i.i, %i.ag, !dbg !21262
  store i64 %i.al, ptr %i.af, align 8, !dbg !21262, !alias.scope !21138, !noalias !21147
  %i.am = sub nuw i64 %i.x, %.sroa.0.0.i.i5.i.i.i.i, !dbg !21263
  store i64 %i.am, ptr %i.w, align 8, !dbg !21263, !alias.scope !21134, !noalias !21135
  %.not119 = icmp ugt i64 %i.ae, %i.ag, !dbg !21246
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i5.i.i.i.i), !dbg !21242, !noalias !21129
  %i.an = load i64, ptr %i.c, align 8, !dbg !21243, !alias.scope !21136, !noalias !21129, !noundef !2247 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !21244
  call void @llvm.assume(i1 %i.ao), !dbg !21245
  br i1 %.not119, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !21246

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %.noexc.i.thread, %.noexc.i
  %i.ap = phi i64 [ %i.z, %.noexc.i.thread ], [ %i.an, %.noexc.i ]
  %.cast6.i109 = phi i64 [ 0, %.noexc.i.thread ], [ %.sroa.0.0.i.i5.i.i.i.i, %.noexc.i ]
  %i.aq = add nuw i64 %i.ap, %.cast6.i109, !dbg !21264
  store i64 %i.aq, ptr %i.c, align 8, !dbg !21264, !alias.scope !21136, !noalias !21129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21265, !noalias !21131
  br label %bb.w, !dbg !21266

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %.noexc.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21267
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !21267, !alias.scope !21136, !noalias !21129, !nonnull !2247, !noundef !2247
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an, !dbg !21268
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.b, i64 %.sroa.0.0.i.i5.i.i.i.i, i1 false), !dbg !21269, !noalias !21129
  %.pre.i.i = load i64, ptr %i.c, align 8, !dbg !21264, !alias.scope !21136, !noalias !21129
  %i.au = add i64 %.pre.i.i, %.sroa.0.0.i.i5.i.i.i.i, !dbg !21264 ; 2 uses
  store i64 %i.au, ptr %i.c, align 8, !dbg !21264, !alias.scope !21136, !noalias !21129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21265, !noalias !21131
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !21266

bb.h:                                             ; preds = %.outer, %bb.s
  %i.av = phi i64 [ %i.cz, %bb.s ], [ %.ph, %.outer ], !dbg !21270 ; 3 uses
  %i.aw = phi i64 [ %i.cx, %bb.s ], [ %.ph124, %.outer ] ; 4 uses
  %.sroa.048.2 = phi i64 [ %i.db, %bb.s ], [ %.sroa.048.2.ph, %.outer ], !dbg !21271 ; 2 uses
  %.sroa.019.0 = phi i32 [ %.sroa.019.1, %bb.s ], [ %.sroa.019.0.ph, %.outer ], !dbg !21272
  %i.ax = icmp sgt i64 %i.av, -1, !dbg !21273
  call void @llvm.assume(i1 %i.ax), !dbg !21274
  %i.ay = load i64, ptr %1, align 8, !dbg !21275, !range !2569, !noundef !2247 ; 3 uses
  %i.az = icmp eq i64 %i.av, %i.ay, !dbg !21276
  %i.ba = icmp eq i64 %i.ay, %i.f
  %or.cond62 = and i1 %i.az, %i.ba, !dbg !21276
  br i1 %or.cond62, label %bb.i, label %.thread93, !dbg !21276

.thread93:                                        ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73.thread, %bb.h
  %i.bb = phi i64 [ %.pre, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73.thread ], [ %i.ay, %bb.h ], !dbg !21277 ; 3 uses
  %i.bc = phi i64 [ %i.ca, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73.thread ], [ %i.av, %bb.h ], !dbg !21278 ; 3 uses
  %i.bd = phi i64 [ %i.br, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73.thread ], [ %i.aw, %bb.h ] ; 4 uses
  %i.be = icmp sgt i64 %i.bc, -1, !dbg !21279
  call void @llvm.assume(i1 %i.be), !dbg !21280
  %i.bf = icmp eq i64 %i.bc, %i.bb, !dbg !21281
  br i1 %i.bf, label %bb.m, label %bb.n, !dbg !21281

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !21161), !dbg !21182
  call void @llvm.experimental.noalias.scope.decl(metadata !21162), !dbg !21182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21282, !noalias !21163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !21283, !noalias !21163
  call void @llvm.experimental.noalias.scope.decl(metadata !21164), !dbg !21284
  call void @llvm.experimental.noalias.scope.decl(metadata !21165), !dbg !21284
  %i.bg = icmp eq i64 %i.aw, 0, !dbg !21285
  br i1 %i.bg, label %.noexc.i68.thread, label %bb.j, !dbg !21285

.noexc.i68.thread:                                ; preds = %bb.i
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !21286, !noalias !21161
  %i.bh = load i64, ptr %i.c, align 8, !dbg !21287, !alias.scope !21166, !noalias !21161, !noundef !2247 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !21288
  call void @llvm.assume(i1 %i.bi), !dbg !21289
  br label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73, !dbg !21290

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !21167), !dbg !21291
  call void @llvm.experimental.noalias.scope.decl(metadata !21168), !dbg !21292
  call void @llvm.experimental.noalias.scope.decl(metadata !21169), !dbg !21292
  %i.bj = load ptr, ptr %i.s, align 8, !dbg !21293, !alias.scope !21170, !noalias !21171, !nonnull !2247, !noundef !2247
  %i.bk = load i64, ptr %i.t, align 8, !dbg !21294, !alias.scope !21170, !noalias !21171, !noundef !2247 ; 3 uses
  %i.bl = load i64, ptr %i.u, align 8, !dbg !21295, !alias.scope !21172, !noalias !21171, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i64 = call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bl), !dbg !21296 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.0.0.i.i.i.i.i.i64, !dbg !21297 ; 2 uses
  %i.bn = sub nuw nsw i64 %i.bk, %.sroa.0.0.i.i.i.i.i.i64, !dbg !21298
  call void @llvm.experimental.noalias.scope.decl(metadata !21173), !dbg !21299
  %.sroa.0.0.i.i.i65 = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bn), !dbg !21300 ; 2 uses
  %.sroa.0.0.i.i5.i.i.i.i66 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i65, i64 32), !dbg !21300 ; 8 uses
  %i.bo = icmp eq i64 %.sroa.0.0.i.i.i65, 1, !dbg !21301
  br i1 %i.bo, label %bb.k, label %bb.l, !dbg !21301

bb.k:                                             ; preds = %bb.j
  %i.bp = load i8, ptr %i.bm, align 1, !dbg !21302, !noalias !21174, !noundef !2247
  store i8 %i.bp, ptr %i.a, align 1, !dbg !21303, !alias.scope !21175, !noalias !21176
  br label %.noexc.i68, !dbg !21304

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.a, i64 noundef %.sroa.0.0.i.i5.i.i.i.i66, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %.sroa.0.0.i.i5.i.i.i.i66, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439), !dbg !21305, !noalias !21176
  br label %.noexc.i68, !dbg !21304

.noexc.i68:                                       ; preds = %bb.k, %bb.l
  %i.bq = add i64 %.sroa.0.0.i.i5.i.i.i.i66, %i.bl, !dbg !21306
  store i64 %i.bq, ptr %i.u, align 8, !dbg !21306, !alias.scope !21168, !noalias !21177
  %i.br = sub nuw i64 %i.aw, %.sroa.0.0.i.i5.i.i.i.i66, !dbg !21307 ; 2 uses
  store i64 %i.br, ptr %i.r, align 8, !dbg !21307, !alias.scope !21178, !noalias !21179
  %.not120 = icmp ugt i64 %i.bk, %i.bl, !dbg !21290
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i5.i.i.i.i66), !dbg !21286, !noalias !21161
  %i.bs = load i64, ptr %i.c, align 8, !dbg !21287, !alias.scope !21166, !noalias !21161, !noundef !2247 ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1, !dbg !21288
  call void @llvm.assume(i1 %i.bt), !dbg !21289
  br i1 %.not120, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73.thread, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73, !dbg !21290

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73: ; preds = %.noexc.i68, %.noexc.i68.thread
  %i.bu = phi i64 [ %i.bh, %.noexc.i68.thread ], [ %i.bs, %.noexc.i68 ]
  %.cast6.i69112 = phi i64 [ 0, %.noexc.i68.thread ], [ %.sroa.0.0.i.i5.i.i.i.i66, %.noexc.i68 ]
  %i.bv = add nuw i64 %i.bu, %.cast6.i69112, !dbg !21308 ; 3 uses
  store i64 %i.bv, ptr %i.c, align 8, !dbg !21308, !alias.scope !21166, !noalias !21161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21309, !noalias !21163
  %i.bw = icmp sgt i64 %i.bv, -1, !dbg !21310
  call void @llvm.assume(i1 %i.bw), !dbg !21311
  %i.bx = sub nsw i64 %i.bv, %i.d, !dbg !21312
  br label %.loopexit, !dbg !21313

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73.thread: ; preds = %.noexc.i68
  %i.by = load ptr, ptr %i.v, align 8, !dbg !21314, !alias.scope !21166, !noalias !21161, !nonnull !2247, !noundef !2247
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bs, !dbg !21315
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %i.a, i64 %.sroa.0.0.i.i5.i.i.i.i66, i1 false), !dbg !21316, !noalias !21161
  %.pre.i.i72 = load i64, ptr %i.c, align 8, !dbg !21308, !alias.scope !21166, !noalias !21161
  %i.ca = add i64 %.pre.i.i72, %.sroa.0.0.i.i5.i.i.i.i66, !dbg !21308 ; 2 uses
  store i64 %i.ca, ptr %i.c, align 8, !dbg !21308, !alias.scope !21166, !noalias !21161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21309, !noalias !21163
  %.pre = load i64, ptr %1, align 8, !dbg !21277, !range !2569
  br label %.thread93, !dbg !21317

bb.m:                                             ; preds = %.thread93
  %i.cb = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bb, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !21318
  %i.cc = extractvalue { i64, i64 } %i.cb, 0, !dbg !21318
  %.not = icmp eq i64 %i.cc, -9223372036854775807, !dbg !21319
  br i1 %.not, label %._crit_edge, label %.loopexit, !dbg !21320

._crit_edge:                                      ; preds = %bb.m
  %.pre99 = load i64, ptr %i.c, align 8, !dbg !21321
  %.pre100 = load i64, ptr %1, align 8, !dbg !21322, !range !2569
  br label %bb.n, !dbg !21320

bb.n:                                             ; preds = %._crit_edge, %.thread93
  %i.cd = phi i64 [ %.pre100, %._crit_edge ], [ %i.bb, %.thread93 ], !dbg !21322
  %i.ce = phi i64 [ %.pre99, %._crit_edge ], [ %i.bc, %.thread93 ], !dbg !21321 ; 5 uses
  %i.cf = load ptr, ptr %i.v, align 8, !dbg !21323, !nonnull !2247, !noundef !2247
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce, !dbg !21324 ; 2 uses
  %i.ch = sub i64 %i.cd, %i.ce, !dbg !21325
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3.ph, i64 %i.ch), !dbg !21326 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21196), !dbg !21327
  %i.ci = icmp eq i64 %i.bd, 0, !dbg !21328
  br i1 %i.ci, label %.thread, label %bb.o, !dbg !21328

.thread:                                          ; preds = %bb.n
  %i.cj = icmp sgt i64 %i.ce, -1, !dbg !21329
  call void @llvm.assume(i1 %i.cj), !dbg !21330
  store i64 %i.ce, ptr %i.c, align 8, !dbg !21331
  br label %.loopexit115, !dbg !21332

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp ult i64 %i.bd, %.sroa.0.0.i, !dbg !21333
  br i1 %i.ck, label %bb.q, label %bb.p, !dbg !21333

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !21199), !dbg !21334
  %i.cl = load ptr, ptr %i.s, align 8, !dbg !21335, !alias.scope !21200, !noalias !21201, !nonnull !2247, !noundef !2247
  %i.cm = load i64, ptr %i.t, align 8, !dbg !21336, !alias.scope !21200, !noalias !21201, !noundef !2247 ; 2 uses
  %i.cn = load i64, ptr %i.u, align 8, !dbg !21337, !alias.scope !21202, !noalias !21201, !noundef !2247 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cn), !dbg !21338 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.0.0.i.i.i.i.i, !dbg !21339
  %i.cp = sub nuw nsw i64 %i.cm, %.sroa.0.0.i.i.i.i.i, !dbg !21340
  %.sroa.0.0.i.i4.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %.sroa.0.0.i), !dbg !21341 ; 5 uses
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.cg, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297), !dbg !21342, !noalias !21203
  %.sroa.0.0.i.i.i.i.i.i75 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i4.i.i.i, i64 %.sroa.048.2), !dbg !21343
  %i.cq = add i64 %.sroa.0.0.i.i4.i.i.i, %i.cn, !dbg !21344
  store i64 %i.cq, ptr %i.u, align 8, !dbg !21344, !alias.scope !21199, !noalias !21204
  br label %bb.r, !dbg !21345

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !21205), !dbg !21346
  %i.cr = load ptr, ptr %i.s, align 8, !dbg !21347, !alias.scope !21206, !noalias !21207, !nonnull !2247, !noundef !2247
  %i.cs = load i64, ptr %i.t, align 8, !dbg !21348, !alias.scope !21206, !noalias !21207, !noundef !2247 ; 2 uses
  %i.ct = load i64, ptr %i.u, align 8, !dbg !21349, !alias.scope !21208, !noalias !21207, !noundef !2247 ; 2 uses
  %.sroa.0.0.i.i.i.i5.i = call noundef i64 @llvm.umin.i64(i64 %i.cs, i64 %i.ct), !dbg !21350 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0.0.i.i.i.i5.i, !dbg !21351
  %i.cv = sub nuw nsw i64 %i.cs, %.sroa.0.0.i.i.i.i5.i, !dbg !21352
  %.sroa.0.0.i.i4.i.i6.i = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.bd), !dbg !21353 ; 5 uses
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.cg, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i6.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i6.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297), !dbg !21354, !noalias !21209
  %i.cw = add i64 %.sroa.0.0.i.i4.i.i6.i, %i.ct, !dbg !21355
  store i64 %i.cw, ptr %i.u, align 8, !dbg !21355, !alias.scope !21205, !noalias !21210
  %.sroa.0.0.i8.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i4.i.i6.i, i64 %.sroa.048.2), !dbg !21356
  br label %bb.r, !dbg !21345

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.13.1 = phi i64 [ %.sroa.0.0.i8.i, %bb.q ], [ %.sroa.0.0.i.i.i.i.i.i75, %bb.p ], !dbg !21357 ; 2 uses
  %.sroa.8.188 = phi i64 [ %.sroa.0.0.i.i4.i.i6.i, %bb.q ], [ %.sroa.0.0.i.i4.i.i.i, %bb.p ], !dbg !21357 ; 6 uses
  %i.cx = sub nuw i64 %i.bd, %.sroa.8.188, !dbg !21357 ; 3 uses
  store i64 %i.cx, ptr %i.r, align 8, !dbg !21357, !alias.scope !21196, !noalias !21211
  %.pre101 = load i64, ptr %i.c, align 8, !dbg !21358 ; 2 uses
  %i.cy = icmp sgt i64 %.pre101, -1, !dbg !21329
  call void @llvm.assume(i1 %i.cy), !dbg !21330
  %i.cz = add i64 %.pre101, %.sroa.8.188, !dbg !21359 ; 4 uses
  store i64 %i.cz, ptr %i.c, align 8, !dbg !21331
  %i.da = icmp eq i64 %.sroa.8.188, 0, !dbg !21332
  br i1 %i.da, label %.loopexit115, label %bb.s, !dbg !21332

bb.s:                                             ; preds = %bb.r
  %i.db = sub nuw i64 %.sroa.13.1, %.sroa.8.188, !dbg !21360 ; 2 uses
  %i.dc = icmp ult i64 %.sroa.8.188, %.sroa.0.0.i, !dbg !21361
  %i.dd = add i32 %.sroa.019.0, 1, !dbg !21361
  %.sroa.019.1 = select i1 %i.dc, i32 %i.dd, i32 0, !dbg !21361 ; 3 uses
  br i1 %.sroa.013.1, label %bb.t, label %bb.h, !dbg !21362

.loopexit115:                                     ; preds = %bb.r, %.thread
  %i.de = phi i64 [ %i.ce, %.thread ], [ %i.cz, %bb.r ]
  %i.df = sub nsw i64 %i.de, %i.d, !dbg !21363
  br label %.loopexit, !dbg !21364

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp ne i64 %.sroa.13.1, %.sroa.0.0.i, !dbg !21365
  %i.dh = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.dg, i1 %i.dh, i1 false, !dbg !21366
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3.ph, !dbg !21366 ; 4 uses
  %i.di = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !21367
  %i.dj = icmp eq i64 %.sroa.8.188, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dj, %i.di, !dbg !21367
  br i1 %or.cond2, label %bb.u, label %.outer.backedge, !dbg !21367

bb.u:                                             ; preds = %bb.t
  %i.dk = shl nuw i64 %spec.select, 1, !dbg !21368
  %i.dl = icmp slt i64 %spec.select, 0, !dbg !21368
  br i1 %i.dl, label %bb.v, label %.outer.backedge, !dbg !21369, !prof !2257

.outer:                                           ; preds = %.outer.backedge, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %.ph = phi i64 [ %i.q, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cz, %.outer.backedge ]
  %.ph124 = phi i64 [ %.promoted, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cx, %.outer.backedge ]
  %.sroa.048.2.ph = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.db, %.outer.backedge ]
  %.sroa.050.3.ph = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.3.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.019.0.ph = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %.outer.backedge ]
  br label %bb.h, !dbg !21276

bb.v:                                             ; preds = %bb.u
  br label %.outer.backedge, !dbg !21370

.outer.backedge:                                  ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.050.3.ph.be = phi i64 [ %spec.select, %bb.t ], [ %i.dk, %bb.u ], [ -1, %bb.v ]
  br label %.outer, !dbg !21276

.loopexit:                                        ; preds = %bb.m, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73, %.loopexit115
  %.sroa.8.1 = phi i64 [ %i.df, %.loopexit115 ], [ %i.bx, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73 ], [ 163208757251, %bb.m ], !dbg !21371
  %.sroa.010.1 = phi i64 [ 0, %.loopexit115 ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit73 ], [ 1, %bb.m ], !dbg !21371
  %i.dm = inttoptr i64 %.sroa.8.1 to ptr, !dbg !21372
  br label %bb.w, !dbg !21373

bb.w:                                             ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dm, %.loopexit ], [ null, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !21272
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !21272
  %i.dn = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !21372
  %i.do = insertvalue { i64, ptr } %i.dn, ptr %.sroa.8.2, 1, !dbg !21372
  ret { i64, ptr } %i.do, !dbg !21372
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtB2_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21374 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 7 uses
  %i.b = alloca [32 x i8], align 1                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21709 ; 15 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !21709, !noundef !2247 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !21710
  tail call void @llvm.assume(i1 %i.e), !dbg !21711
  %i.f = load i64, ptr %1, align 8, !dbg !21712, !range !2569, !noundef !2247 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !21713      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !21713

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !21714
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !21715, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !21714        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !21716          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !21717
  %i.l = sub i64 %3, %i.j, !dbg !21717
  %i.m = add i64 %i.l, 9216, !dbg !21717          ; 2 uses
  %.not100 = icmp ult i64 %i.m, %i.i, !dbg !21717
  %.sroa.5.1.i = select i1 %.not100, i64 8192, i64 %i.m, !dbg !21718
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !21717 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !21719

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !21720 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !21721   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !21722
  %i.p = icmp ult i64 %i.o, 32, !dbg !21722
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !21722

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit.thread, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %i.q = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.aq, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit.thread ]
  %.sroa.050.2 = phi i64 [ 8192, %bb.b ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.050.0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !21723
  %.sroa.013.1 = phi i1 [ false, %bb.b ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.013.0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !21724
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val.i.i63 = load ptr, ptr %0, align 8, !nonnull !2247, !align !2484 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.r, align 8
  br label %.outer, !dbg !21725

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21621), !dbg !21639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21622), !dbg !21639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21726, !noalias !21623
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !dbg !21727, !noalias !21623
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21624), !dbg !21728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21625), !dbg !21728
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21729 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !21729, !alias.scope !21626, !noalias !21627, !noundef !2247 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !21729
  br i1 %i.x, label %.noexc.i.thread, label %bb.e, !dbg !21729

.noexc.i.thread:                                  ; preds = %bb.d
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !21730, !noalias !21621
  %i.y = load i64, ptr %i.c, align 8, !dbg !21731, !alias.scope !21628, !noalias !21621, !noundef !2247 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !21732
  tail call void @llvm.assume(i1 %i.z), !dbg !21733
  br label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !21734

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %0, align 8, !dbg !21735, !alias.scope !21626, !noalias !21627, !nonnull !2247, !align !2484, !noundef !2247 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21629), !dbg !21735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21630), !dbg !21736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21631), !dbg !21736
  %.val.i.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !dbg !21737, !alias.scope !21632, !noalias !21633, !nonnull !2247, !noundef !2247
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !21737
  %.val1.i.i.i.i.i = load i64, ptr %i.aa, align 8, !dbg !21737, !alias.scope !21632, !noalias !21633, !noundef !2247 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !21738 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !21738, !alias.scope !21632, !noalias !21633, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %i.ac), !dbg !21739 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i, !dbg !21740 ; 2 uses
  %i.ae = sub nuw nsw i64 %.val1.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !21741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21634), !dbg !21742
  %.sroa.0.0.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.ae), !dbg !21743 ; 2 uses
  %.sroa.0.0.i.i5.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i, i64 32), !dbg !21743 ; 8 uses
  %i.af = icmp eq i64 %.sroa.0.0.i.i.i, 1, !dbg !21744
  br i1 %i.af, label %bb.f, label %bb.g, !dbg !21744

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ad, align 1, !dbg !21745, !noalias !21635, !noundef !2247
  store i8 %i.ag, ptr %i.b, align 1, !dbg !21746, !alias.scope !21636, !noalias !21637
  br label %.noexc.i, !dbg !21747

bb.g:                                             ; preds = %bb.e
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.b, i64 noundef %.sroa.0.0.i.i5.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %.sroa.0.0.i.i5.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439), !dbg !21748, !noalias !21637
  br label %.noexc.i, !dbg !21747

.noexc.i:                                         ; preds = %bb.f, %bb.g
  %i.ah = add i64 %.sroa.0.0.i.i5.i.i.i.i, %i.ac, !dbg !21749
  store i64 %i.ah, ptr %i.ab, align 8, !dbg !21749, !alias.scope !21630, !noalias !21638
  %i.ai = sub nuw i64 %i.w, %.sroa.0.0.i.i5.i.i.i.i, !dbg !21750
  store i64 %i.ai, ptr %i.v, align 8, !dbg !21750, !alias.scope !21626, !noalias !21627
  %.not123 = icmp ugt i64 %.val1.i.i.i.i.i, %i.ac, !dbg !21734
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i5.i.i.i.i), !dbg !21730, !noalias !21621
  %i.aj = load i64, ptr %i.c, align 8, !dbg !21731, !alias.scope !21628, !noalias !21621, !noundef !2247 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !21732
  call void @llvm.assume(i1 %i.ak), !dbg !21733
  br i1 %.not123, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !21734

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %.noexc.i.thread, %.noexc.i
  %i.al = phi i64 [ %i.y, %.noexc.i.thread ], [ %i.aj, %.noexc.i ]
  %.cast6.i113 = phi i64 [ 0, %.noexc.i.thread ], [ %.sroa.0.0.i.i5.i.i.i.i, %.noexc.i ]
  %i.am = add nuw i64 %i.al, %.cast6.i113, !dbg !21751
  store i64 %i.am, ptr %i.c, align 8, !dbg !21751, !alias.scope !21628, !noalias !21621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21752, !noalias !21623
  br label %bb.w, !dbg !21753

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %.noexc.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21754
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !21754, !alias.scope !21628, !noalias !21621, !nonnull !2247, !noundef !2247
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aj, !dbg !21755
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.b, i64 %.sroa.0.0.i.i5.i.i.i.i, i1 false), !dbg !21756, !noalias !21621
  %.pre.i.i = load i64, ptr %i.c, align 8, !dbg !21751, !alias.scope !21628, !noalias !21621
  %i.aq = add i64 %.pre.i.i, %.sroa.0.0.i.i5.i.i.i.i, !dbg !21751 ; 2 uses
  store i64 %i.aq, ptr %i.c, align 8, !dbg !21751, !alias.scope !21628, !noalias !21621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21752, !noalias !21623
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !21753

bb.h:                                             ; preds = %.outer, %bb.s
  %i.ar = phi i64 [ %i.cp, %bb.s ], [ %.ph, %.outer ], !dbg !21757 ; 3 uses
  %i.as = phi i64 [ %i.cn, %bb.s ], [ %.ph128, %.outer ] ; 4 uses
  %.sroa.048.2 = phi i64 [ %i.cr, %bb.s ], [ %.sroa.048.2.ph, %.outer ], !dbg !21758 ; 2 uses
  %.sroa.019.0 = phi i32 [ %.sroa.019.1, %bb.s ], [ %.sroa.019.0.ph, %.outer ], !dbg !21759
  %i.at = icmp sgt i64 %i.ar, -1, !dbg !21760
  call void @llvm.assume(i1 %i.at), !dbg !21761
  %i.au = load i64, ptr %1, align 8, !dbg !21762, !range !2569, !noundef !2247 ; 3 uses
  %i.av = icmp eq i64 %i.ar, %i.au, !dbg !21763
  %i.aw = icmp eq i64 %i.au, %i.f
  %or.cond62 = and i1 %i.av, %i.aw, !dbg !21763
  br i1 %or.cond62, label %bb.i, label %.thread97, !dbg !21763

.thread97:                                        ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75.thread, %bb.h
  %i.ax = phi i64 [ %.pre, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75.thread ], [ %i.au, %bb.h ], !dbg !21764 ; 3 uses
  %i.ay = phi i64 [ %i.bu, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75.thread ], [ %i.ar, %bb.h ], !dbg !21765 ; 3 uses
  %i.az = phi i64 [ %i.bl, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75.thread ], [ %i.as, %bb.h ] ; 4 uses
  %i.ba = icmp sgt i64 %i.ay, -1, !dbg !21766
  call void @llvm.assume(i1 %i.ba), !dbg !21767
  %i.bb = icmp eq i64 %i.ay, %i.ax, !dbg !21768
  br i1 %i.bb, label %bb.m, label %bb.n, !dbg !21768

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !21652), !dbg !21672
  call void @llvm.experimental.noalias.scope.decl(metadata !21653), !dbg !21672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21769, !noalias !21654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !21770, !noalias !21654
  call void @llvm.experimental.noalias.scope.decl(metadata !21655), !dbg !21771
  call void @llvm.experimental.noalias.scope.decl(metadata !21656), !dbg !21771
  %i.bc = icmp eq i64 %i.as, 0, !dbg !21772
  br i1 %i.bc, label %.noexc.i70.thread, label %bb.j, !dbg !21772

.noexc.i70.thread:                                ; preds = %bb.i
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !21773, !noalias !21652
  %i.bd = load i64, ptr %i.c, align 8, !dbg !21774, !alias.scope !21657, !noalias !21652, !noundef !2247 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1, !dbg !21775
  call void @llvm.assume(i1 %i.be), !dbg !21776
  br label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75, !dbg !21777

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !21658), !dbg !21778
  call void @llvm.experimental.noalias.scope.decl(metadata !21659), !dbg !21779
  call void @llvm.experimental.noalias.scope.decl(metadata !21660), !dbg !21779
  %.val.i.i.i.i.i64 = load ptr, ptr %.val.i.i63, align 8, !dbg !21780, !alias.scope !21661, !noalias !21662, !nonnull !2247, !noundef !2247
  %.val1.i.i.i.i.i65 = load i64, ptr %i.s, align 8, !dbg !21780, !alias.scope !21661, !noalias !21662, !noundef !2247 ; 3 uses
  %i.bf = load i64, ptr %i.t, align 8, !dbg !21781, !alias.scope !21661, !noalias !21662, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i66 = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i65, i64 %i.bf), !dbg !21782 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i64, i64 %.sroa.0.0.i.i.i.i.i.i66, !dbg !21783 ; 2 uses
  %i.bh = sub nuw nsw i64 %.val1.i.i.i.i.i65, %.sroa.0.0.i.i.i.i.i.i66, !dbg !21784
  call void @llvm.experimental.noalias.scope.decl(metadata !21663), !dbg !21785
  %.sroa.0.0.i.i.i67 = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.bh), !dbg !21786 ; 2 uses
  %.sroa.0.0.i.i5.i.i.i.i68 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i67, i64 32), !dbg !21786 ; 8 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i.i.i67, 1, !dbg !21787
  br i1 %i.bi, label %bb.k, label %bb.l, !dbg !21787

bb.k:                                             ; preds = %bb.j
  %i.bj = load i8, ptr %i.bg, align 1, !dbg !21788, !noalias !21664, !noundef !2247
  store i8 %i.bj, ptr %i.a, align 1, !dbg !21789, !alias.scope !21665, !noalias !21666
  br label %.noexc.i70, !dbg !21790

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.a, i64 noundef %.sroa.0.0.i.i5.i.i.i.i68, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %.sroa.0.0.i.i5.i.i.i.i68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439), !dbg !21791, !noalias !21666
  br label %.noexc.i70, !dbg !21790

.noexc.i70:                                       ; preds = %bb.k, %bb.l
  %i.bk = add i64 %.sroa.0.0.i.i5.i.i.i.i68, %i.bf, !dbg !21792
  store i64 %i.bk, ptr %i.t, align 8, !dbg !21792, !alias.scope !21659, !noalias !21667
  %i.bl = sub nuw i64 %i.as, %.sroa.0.0.i.i5.i.i.i.i68, !dbg !21793 ; 2 uses
  store i64 %i.bl, ptr %i.r, align 8, !dbg !21793, !alias.scope !21668, !noalias !21669
  %.not124 = icmp ugt i64 %.val1.i.i.i.i.i65, %i.bf, !dbg !21777
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i5.i.i.i.i68), !dbg !21773, !noalias !21652
  %i.bm = load i64, ptr %i.c, align 8, !dbg !21774, !alias.scope !21657, !noalias !21652, !noundef !2247 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1, !dbg !21775
  call void @llvm.assume(i1 %i.bn), !dbg !21776
  br i1 %.not124, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75.thread, label %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75, !dbg !21777

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75: ; preds = %.noexc.i70, %.noexc.i70.thread
  %i.bo = phi i64 [ %i.bd, %.noexc.i70.thread ], [ %i.bm, %.noexc.i70 ]
  %.cast6.i71116 = phi i64 [ 0, %.noexc.i70.thread ], [ %.sroa.0.0.i.i5.i.i.i.i68, %.noexc.i70 ]
  %i.bp = add nuw i64 %i.bo, %.cast6.i71116, !dbg !21794 ; 3 uses
  store i64 %i.bp, ptr %i.c, align 8, !dbg !21794, !alias.scope !21657, !noalias !21652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21795, !noalias !21654
  %i.bq = icmp sgt i64 %i.bp, -1, !dbg !21796
  call void @llvm.assume(i1 %i.bq), !dbg !21797
  %i.br = sub nsw i64 %i.bp, %i.d, !dbg !21798
  br label %.loopexit, !dbg !21799

_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75.thread: ; preds = %.noexc.i70
  %i.bs = load ptr, ptr %i.u, align 8, !dbg !21800, !alias.scope !21657, !noalias !21652, !nonnull !2247, !noundef !2247
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bm, !dbg !21801
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.a, i64 %.sroa.0.0.i.i5.i.i.i.i68, i1 false), !dbg !21802, !noalias !21652
  %.pre.i.i74 = load i64, ptr %i.c, align 8, !dbg !21794, !alias.scope !21657, !noalias !21652
  %i.bu = add i64 %.pre.i.i74, %.sroa.0.0.i.i5.i.i.i.i68, !dbg !21794 ; 2 uses
  store i64 %i.bu, ptr %i.c, align 8, !dbg !21794, !alias.scope !21657, !noalias !21652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21795, !noalias !21654
  %.pre = load i64, ptr %1, align 8, !dbg !21764, !range !2569
  br label %.thread97, !dbg !21803

bb.m:                                             ; preds = %.thread97
  %i.bv = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ax, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !21804
  %i.bw = extractvalue { i64, i64 } %i.bv, 0, !dbg !21804
  %.not = icmp eq i64 %i.bw, -9223372036854775807, !dbg !21805
  br i1 %.not, label %._crit_edge, label %.loopexit, !dbg !21806

._crit_edge:                                      ; preds = %bb.m
  %.pre103 = load i64, ptr %i.c, align 8, !dbg !21807
  %.pre104 = load i64, ptr %1, align 8, !dbg !21808, !range !2569
  br label %bb.n, !dbg !21806

bb.n:                                             ; preds = %._crit_edge, %.thread97
  %i.bx = phi i64 [ %.pre104, %._crit_edge ], [ %i.ax, %.thread97 ], !dbg !21808
  %i.by = phi i64 [ %.pre103, %._crit_edge ], [ %i.ay, %.thread97 ], !dbg !21807 ; 5 uses
  %i.bz = load ptr, ptr %i.u, align 8, !dbg !21809, !nonnull !2247, !noundef !2247
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by, !dbg !21810 ; 2 uses
  %i.cb = sub i64 %i.bx, %i.by, !dbg !21811
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3.ph, i64 %i.cb), !dbg !21812 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21686), !dbg !21813
  %i.cc = icmp eq i64 %i.az, 0, !dbg !21814
  br i1 %i.cc, label %.thread, label %bb.o, !dbg !21814

.thread:                                          ; preds = %bb.n
  %i.cd = icmp sgt i64 %i.by, -1, !dbg !21815
  call void @llvm.assume(i1 %i.cd), !dbg !21816
  store i64 %i.by, ptr %i.c, align 8, !dbg !21817
  br label %.loopexit119, !dbg !21818

bb.o:                                             ; preds = %bb.n
  %i.ce = icmp ult i64 %i.az, %.sroa.0.0.i, !dbg !21819
  br i1 %i.ce, label %bb.q, label %bb.p, !dbg !21819

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !21689), !dbg !21820
  %.val.i.i.i.i = load ptr, ptr %.val.i.i63, align 8, !dbg !21821, !alias.scope !21690, !noalias !21691, !nonnull !2247, !noundef !2247
  %.val1.i.i.i.i = load i64, ptr %i.s, align 8, !dbg !21821, !alias.scope !21690, !noalias !21691, !noundef !2247 ; 2 uses
  %i.cf = load i64, ptr %i.t, align 8, !dbg !21822, !alias.scope !21690, !noalias !21691, !noundef !2247 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.cf), !dbg !21823 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !21824
  %i.ch = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !21825
  %.sroa.0.0.i.i4.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %.sroa.0.0.i), !dbg !21826 ; 5 uses
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.ca, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297), !dbg !21827, !noalias !21692
  %.sroa.0.0.i.i.i.i.i.i77 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i4.i.i.i, i64 %.sroa.048.2), !dbg !21828
  %i.ci = add i64 %.sroa.0.0.i.i4.i.i.i, %i.cf, !dbg !21829
  store i64 %i.ci, ptr %i.t, align 8, !dbg !21829, !alias.scope !21689, !noalias !21693
  br label %bb.r, !dbg !21830

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !21694), !dbg !21831
  %.val.i.i.i5.i = load ptr, ptr %.val.i.i63, align 8, !dbg !21832, !alias.scope !21695, !noalias !21696, !nonnull !2247, !noundef !2247
  %.val1.i.i.i6.i = load i64, ptr %i.s, align 8, !dbg !21832, !alias.scope !21695, !noalias !21696, !noundef !2247 ; 2 uses
  %i.cj = load i64, ptr %i.t, align 8, !dbg !21833, !alias.scope !21695, !noalias !21696, !noundef !2247 ; 2 uses
  %.sroa.0.0.i.i.i.i7.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i6.i, i64 %i.cj), !dbg !21834 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i5.i, i64 %.sroa.0.0.i.i.i.i7.i, !dbg !21835
  %i.cl = sub nuw nsw i64 %.val1.i.i.i6.i, %.sroa.0.0.i.i.i.i7.i, !dbg !21836
  %.sroa.0.0.i.i4.i.i8.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.az), !dbg !21837 ; 5 uses
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.ca, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297), !dbg !21838, !noalias !21697
  %i.cm = add i64 %.sroa.0.0.i.i4.i.i8.i, %i.cj, !dbg !21839
  store i64 %i.cm, ptr %i.t, align 8, !dbg !21839, !alias.scope !21694, !noalias !21698
  %.sroa.0.0.i10.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i4.i.i8.i, i64 %.sroa.048.2), !dbg !21840
  br label %bb.r, !dbg !21830

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.13.1 = phi i64 [ %.sroa.0.0.i10.i, %bb.q ], [ %.sroa.0.0.i.i.i.i.i.i77, %bb.p ], !dbg !21841 ; 2 uses
  %.sroa.8.192 = phi i64 [ %.sroa.0.0.i.i4.i.i8.i, %bb.q ], [ %.sroa.0.0.i.i4.i.i.i, %bb.p ], !dbg !21841 ; 6 uses
  %i.cn = sub nuw i64 %i.az, %.sroa.8.192, !dbg !21841 ; 3 uses
  store i64 %i.cn, ptr %i.r, align 8, !dbg !21841, !alias.scope !21686, !noalias !21699
  %.pre105 = load i64, ptr %i.c, align 8, !dbg !21842 ; 2 uses
  %i.co = icmp sgt i64 %.pre105, -1, !dbg !21815
  call void @llvm.assume(i1 %i.co), !dbg !21816
  %i.cp = add i64 %.pre105, %.sroa.8.192, !dbg !21843 ; 4 uses
  store i64 %i.cp, ptr %i.c, align 8, !dbg !21817
  %i.cq = icmp eq i64 %.sroa.8.192, 0, !dbg !21818
  br i1 %i.cq, label %.loopexit119, label %bb.s, !dbg !21818

bb.s:                                             ; preds = %bb.r
  %i.cr = sub nuw i64 %.sroa.13.1, %.sroa.8.192, !dbg !21844 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.8.192, %.sroa.0.0.i, !dbg !21845
  %i.ct = add i32 %.sroa.019.0, 1, !dbg !21845
  %.sroa.019.1 = select i1 %i.cs, i32 %i.ct, i32 0, !dbg !21845 ; 3 uses
  br i1 %.sroa.013.1, label %bb.t, label %bb.h, !dbg !21846

.loopexit119:                                     ; preds = %bb.r, %.thread
  %i.cu = phi i64 [ %i.by, %.thread ], [ %i.cp, %bb.r ]
  %i.cv = sub nsw i64 %i.cu, %i.d, !dbg !21847
  br label %.loopexit, !dbg !21848

bb.t:                                             ; preds = %bb.s
  %i.cw = icmp ne i64 %.sroa.13.1, %.sroa.0.0.i, !dbg !21849
  %i.cx = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cw, i1 %i.cx, i1 false, !dbg !21850
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3.ph, !dbg !21850 ; 4 uses
  %i.cy = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !21851
  %i.cz = icmp eq i64 %.sroa.8.192, %.sroa.0.0.i
  %or.cond2 = and i1 %i.cz, %i.cy, !dbg !21851
  br i1 %or.cond2, label %bb.u, label %.outer.backedge, !dbg !21851

bb.u:                                             ; preds = %bb.t
  %i.da = shl nuw i64 %spec.select, 1, !dbg !21852
  %i.db = icmp slt i64 %spec.select, 0, !dbg !21852
  br i1 %i.db, label %bb.v, label %.outer.backedge, !dbg !21853, !prof !2257

.outer:                                           ; preds = %.outer.backedge, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %.ph = phi i64 [ %i.q, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cp, %.outer.backedge ]
  %.ph128 = phi i64 [ %.promoted, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cn, %.outer.backedge ]
  %.sroa.048.2.ph = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cr, %.outer.backedge ]
  %.sroa.050.3.ph = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.3.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.019.0.ph = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQINtNtB4_6cursor6CursorRShEEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %.outer.backedge ]
  br label %bb.h, !dbg !21763

bb.v:                                             ; preds = %bb.u
  br label %.outer.backedge, !dbg !21854

.outer.backedge:                                  ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.050.3.ph.be = phi i64 [ %spec.select, %bb.t ], [ %i.da, %bb.u ], [ -1, %bb.v ]
  br label %.outer, !dbg !21763

.loopexit:                                        ; preds = %bb.m, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75, %.loopexit119
  %.sroa.8.1 = phi i64 [ %i.cv, %.loopexit119 ], [ %i.br, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75 ], [ 163208757251, %bb.m ], !dbg !21855
  %.sroa.010.1 = phi i64 [ 0, %.loopexit119 ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit75 ], [ 1, %bb.m ], !dbg !21855
  %i.dc = inttoptr i64 %.sroa.8.1 to ptr, !dbg !21856
  br label %bb.w, !dbg !21857

bb.w:                                             ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dc, %.loopexit ], [ null, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !21759
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtB4_6cursor6CursorRShEEECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !21759
  %i.dd = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !21856
  %i.de = insertvalue { i64, ptr } %i.dd, ptr %.sroa.8.2, 1, !dbg !21856
  ret { i64, ptr } %i.de, !dbg !21856
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQNtNtB4_2fs4FileEECs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21858 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22112 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !22112, !noundef !2247 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !22113
  tail call void @llvm.assume(i1 %i.e), !dbg !22114
  %i.f = load i64, ptr %1, align 8, !dbg !22115, !range !2569, !noundef !2247 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !22116      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !22116

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !22117
  br i1 %i.h, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !22118, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !22117        ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !22119          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !22120
  %i.l = sub i64 %3, %i.j, !dbg !22120
  %i.m = add i64 %i.l, 9216, !dbg !22120          ; 2 uses
  %.not98 = icmp ult i64 %i.m, %i.i, !dbg !22120
  %.sroa.5.1.i = select i1 %.not98, i64 8192, i64 %i.m, !dbg !22121
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !22120 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22122

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !22123 ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true, !dbg !22124   ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !22125
  %i.p = icmp ult i64 %i.o, 32, !dbg !22125
  br i1 %i.p, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22125

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.d, %bb.b ], !dbg !22126
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.b ], !dbg !22127
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.b ], !dbg !22128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !22129

bb.d:                                             ; preds = %bb.c
  %i.y = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQNtNtB6_2fs4FileEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22055 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !22055
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !22055 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !22130
  br i1 %i.ab, label %bb.ae, label %bb.e, !dbg !22130

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.aa, null, !dbg !22131
  br i1 %i.ac, label %bb.ae, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, !dbg !22131

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !22126
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22131

bb.f:                                             ; preds = %bb.aa, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.ad = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.cb, %bb.aa ], !dbg !22126 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.by, %bb.aa ], !dbg !22132
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.4, %bb.aa ], !dbg !22133 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQNtNtB6_2fs4FileEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %bb.aa ], !dbg !22134
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !22135
  call void @llvm.assume(i1 %i.ae), !dbg !22136
  %i.af = load i64, ptr %1, align 8, !dbg !22137, !range !2569, !noundef !2247 ; 3 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !22138
  %i.ah = icmp eq i64 %i.af, %i.f
  %or.cond62 = and i1 %i.ag, %i.ah, !dbg !22138
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !22138

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre123, %._crit_edge ], [ %i.af, %bb.f ], !dbg !22139 ; 3 uses
  %i.aj = phi i64 [ %.pre122, %._crit_edge ], [ %i.ad, %bb.f ], !dbg !22140 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !22141
  call void @llvm.assume(i1 %i.ak), !dbg !22142
  %i.al = icmp eq i64 %i.aj, %i.ai, !dbg !22143
  br i1 %i.al, label %bb.l, label %bb.m, !dbg !22143

bb.h:                                             ; preds = %bb.f
  %i.am = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQNtNtB6_2fs4FileEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22067 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !22067
  %i.ao = extractvalue { i64, ptr } %i.am, 1, !dbg !22067 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1, !dbg !22144
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !22144

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.ao to i64, !dbg !22067
  br label %.loopexit, !dbg !22145

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %i.ao, null, !dbg !22146
  %.pre122 = load i64, ptr %i.c, align 8, !dbg !22140 ; 3 uses
  br i1 %i.ar, label %bb.k, label %._crit_edge, !dbg !22146

._crit_edge:                                      ; preds = %bb.j
  %.pre123 = load i64, ptr %1, align 8, !dbg !22139, !range !2569
  br label %bb.g, !dbg !22146

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i64 %.pre122, -1, !dbg !22147
  call void @llvm.assume(i1 %i.as), !dbg !22148
  %i.at = sub nsw i64 %.pre122, %i.d, !dbg !22149
  br label %.loopexit, !dbg !22150

bb.l:                                             ; preds = %bb.g
  %i.au = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !22151
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !22151
  %.not = icmp eq i64 %i.av, -9223372036854775807, !dbg !22152
  br i1 %.not, label %._crit_edge124, label %.loopexit, !dbg !22153

._crit_edge124:                                   ; preds = %bb.l
  %.pre125 = load i64, ptr %i.c, align 8, !dbg !22154
  %.pre126 = load i64, ptr %1, align 8, !dbg !22155, !range !2569
  br label %bb.m, !dbg !22153

bb.m:                                             ; preds = %._crit_edge124, %bb.g
  %i.aw = phi i64 [ %.pre126, %._crit_edge124 ], [ %i.ai, %bb.g ], !dbg !22155
  %i.ax = phi i64 [ %.pre125, %._crit_edge124 ], [ %i.aj, %bb.g ], !dbg !22154 ; 5 uses
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !22156, !nonnull !2247, !noundef !2247
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax, !dbg !22157
  %i.ba = sub i64 %i.aw, %i.ax, !dbg !22158
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.ba), !dbg !22159 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22160
  store ptr %i.az, ptr %i.b, align 8, !dbg !22161
  store i64 %.sroa.0.0.i, ptr %i.r, align 8, !dbg !22161
  store i64 0, ptr %i.s, align 8, !dbg !22161
  store i64 %.sroa.048.2, ptr %i.t, align 8, !dbg !22162
  %.promoted = load i64, ptr %i.u, align 8, !alias.scope !22088, !noalias !22089 ; 2 uses
  %i.bb = icmp eq i64 %.promoted, 0, !dbg !22163
  br i1 %i.bb, label %.thread, label %.lr.ph, !dbg !22163

.thread:                                          ; preds = %bb.m
  %i.bc = icmp sgt i64 %i.ax, -1, !dbg !22164
  call void @llvm.assume(i1 %i.bc), !dbg !22165
  store i64 %i.ax, ptr %i.c, align 8, !dbg !22166
  br label %.loopexit145, !dbg !22167

.lr.ph:                                           ; preds = %bb.m
  %.val3.i = load ptr, ptr %0, align 8, !nonnull !2247, !align !2632 ; 2 uses
  br label %bb.n, !dbg !22163

bb.n:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %i.bd = phi i64 [ %.promoted, %.lr.ph ], [ %.sink, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22088), !dbg !22168
  call void @llvm.experimental.noalias.scope.decl(metadata !22089), !dbg !22168
  %i.be = load i64, ptr %i.r, align 8, !dbg !22169, !alias.scope !22089, !noalias !22088, !noundef !2247
  %i.bf = load i64, ptr %i.s, align 8, !dbg !22170, !alias.scope !22089, !noalias !22088, !noundef !2247 ; 6 uses
  %i.bg = sub i64 %i.be, %i.bf, !dbg !22171
  %i.bh = icmp ult i64 %i.bd, %i.bg, !dbg !22172
  br i1 %i.bh, label %bb.p, label %bb.o, !dbg !22172

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef ptr @_RNvXsa_NtCsh8eZTKRCwoO_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !22173, !noalias !22088
  %i.bj = load i64, ptr %i.s, align 8, !dbg !22174, !alias.scope !22089, !noalias !22088, !noundef !2247 ; 2 uses
  %.neg.i = add i64 %i.bf, %i.bd, !dbg !22175
  %i.bk = sub i64 %.neg.i, %i.bj, !dbg !22176
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit, !dbg !22177

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.t, align 8, !dbg !22178, !alias.scope !22089, !noalias !22088, !noundef !2247 ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.bf, !dbg !22179
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bd), !dbg !22180
  %i.bn = load ptr, ptr %i.b, align 8, !dbg !22181, !alias.scope !22089, !noalias !22088, !nonnull !2247, !noundef !2247
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf, !dbg !22182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22183, !noalias !22094
  store ptr %i.bo, ptr %i.a, align 8, !dbg !22184, !noalias !22094
  store i64 %i.bd, ptr %i.v, align 8, !dbg !22184, !noalias !22094
  store i64 0, ptr %i.w, align 8, !dbg !22184, !noalias !22094
  store i64 %.sroa.0.0.i.i, ptr %i.x, align 8, !dbg !22185, !noalias !22094
  %i.bp = call noundef ptr @_RNvXsa_NtCsh8eZTKRCwoO_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !22186, !noalias !22094
  %i.bq = load i64, ptr %i.w, align 8, !dbg !22187, !noalias !22094, !noundef !2247 ; 2 uses
  %i.br = load i64, ptr %i.x, align 8, !dbg !22188, !noalias !22094, !noundef !2247
  %i.bs = add i64 %i.bq, %i.bf, !dbg !22189       ; 3 uses
  store i64 %i.bs, ptr %i.s, align 8, !dbg !22189, !alias.scope !22089, !noalias !22088
  %.sroa.0.0.i5.i = call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bl), !dbg !22190
  %i.bt = add i64 %i.br, %i.bf, !dbg !22191
  %.sroa.0.0.i6.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i5.i), !dbg !22192
  store i64 %.sroa.0.0.i6.i, ptr %i.t, align 8, !dbg !22193, !alias.scope !22089, !noalias !22088
  %i.bu = sub i64 %i.bd, %i.bq, !dbg !22194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22195, !noalias !22094
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit, !dbg !22177

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.o, %bb.p
  %.pre127132 = phi i64 [ %i.bs, %bb.p ], [ %i.bj, %bb.o ]
  %.sink = phi i64 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ], !dbg !22196 ; 3 uses
  %.sroa.0.0.i64 = phi ptr [ %i.bp, %bb.p ], [ %i.bi, %bb.o ], !dbg !22196 ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !dbg !22196, !alias.scope !22088, !noalias !22089
  %.not60 = icmp eq ptr %.sroa.0.0.i64, null, !dbg !22197 ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, label %bb.q, !dbg !22198

bb.q:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit
  %i.bv = ptrtoint ptr %.sroa.0.0.i64 to i64, !dbg !22199 ; 3 uses
  %i.bw = and i64 %i.bv, 3, !dbg !22200
  switch i64 %i.bw, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.r
    i64 0, label %.split96
    i64 1, label %.split95
  ], !dbg !22201, !prof !2685

default.unreachable:                              ; preds = %bb.q
  unreachable

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit, %bb.r, %.split, %.split95, %.split96
  %i.bx = ptrtoint ptr %.sroa.0.0.i64 to i64, !dbg !22202
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22203

_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit
  %.pre127 = phi i64 [ %.pre127.pre, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge ], [ %.pre127132, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit ], !dbg !22203 ; 5 uses
  %.not6077.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6476.ph = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge ], [ %i.bx, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit ]
  %.pre128 = load i64, ptr %i.t, align 8, !dbg !22204 ; 2 uses
  %.pre129 = load i64, ptr %i.c, align 8, !dbg !22205 ; 2 uses
  %i.by = sub nuw i64 %.pre128, %.pre127, !dbg !22206
  %i.bz = icmp ne i64 %.pre128, %.sroa.0.0.i, !dbg !22207
  %i.ca = icmp sgt i64 %.pre129, -1, !dbg !22164
  call void @llvm.assume(i1 %i.ca), !dbg !22165
  %i.cb = add i64 %.pre129, %.pre127, !dbg !22208 ; 3 uses
  store i64 %i.cb, ptr %i.c, align 8, !dbg !22166
  br i1 %.not6077.ph, label %bb.y, label %.loopexit144, !dbg !22209

.split:                                           ; preds = %bb.q
  %.mask99 = and i64 %i.bv, -4294967296, !dbg !22210
  %i.cc = icmp eq i64 %.mask99, 17179869184, !dbg !22210
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !22211

.split96:                                         ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64, i64 16, !dbg !22212
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !22212, !range !2710, !noundef !2247
  %i.cf = icmp eq i8 %i.ce, 35, !dbg !22213
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !22211

.split95:                                         ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %.sroa.0.0.i64, i64 -1, !dbg !22214 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr i8, ptr %.sroa.0.0.i64, i64 15, !dbg !22215
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !22215, !range !2710, !noundef !2247
  %i.cj = icmp eq i8 %i.ci, 35, !dbg !22216
  br i1 %i.cj, label %bb.s, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !22211

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp ult ptr %.sroa.0.0.i64, inttoptr (i64 180388626432 to ptr), !dbg !22217
  call void @llvm.assume(i1 %i.ck), !dbg !22218
  %.mask = and i64 %i.bv, -4294967296, !dbg !22219
  %i.cl = icmp eq i64 %.mask, 150323855360, !dbg !22219
  br i1 %i.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexitsplit, !dbg !22211

bb.s:                                             ; preds = %.split95
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !dbg !22220, !noalias !22105 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.i64, i64 7, !dbg !22220
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !dbg !22220, !noalias !22105, !nonnull !2247, !align !2484, !noundef !2247 ; 5 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !22221, !invariant.load !2247, !noalias !22105 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null, !dbg !22221
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !22221

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.u unwind label %bb.w, !dbg !22221, !noalias !22105

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !22222
  %i.cp = load i64, ptr %i.co, align 8, !dbg !22222, !range !2569, !invariant.load !2247, !noalias !22105 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !22223
  br i1 %i.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.v, !dbg !22223

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !22222
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !22224, !range !2570, !invariant.load !2247, !noalias !22105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #42, !dbg !22225, !noalias !22105
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !22226

bb.w:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !22227
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !22227, !range !2569, !invariant.load !2247, !noalias !22105 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !22228
  br i1 %i.cw, label %.body, label %bb.x, !dbg !22228

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !22227
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !22229, !range !2570, !invariant.load !2247, !noalias !22105
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #42, !dbg !22230, !noalias !22105
  br label %.body, !dbg !22231

.body:                                            ; preds = %bb.x, %bb.w
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #42, !dbg !22232, !noalias !22105
  resume { ptr, i32 } %i.ct, !dbg !22233

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #42, !dbg !22234, !noalias !22105
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, !dbg !22235

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.r, %.split, %.split96, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.cz = icmp eq i64 %.sink, 0, !dbg !22163
  br i1 %i.cz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge, label %bb.n, !dbg !22163

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit._RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %.pre127.pre = load i64, ptr %i.s, align 8, !dbg !22203
  br label %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22163

bb.y:                                             ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.da = icmp eq i64 %.pre127, 0, !dbg !22167
  br i1 %i.da, label %.loopexit145, label %bb.z, !dbg !22167

.loopexit145:                                     ; preds = %bb.y, %.thread
  %i.db = phi i64 [ %i.ax, %.thread ], [ %i.cb, %bb.y ]
  %i.dc = sub nsw i64 %i.db, %i.d, !dbg !22236
  br label %.loopexit144, !dbg !22237

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ult i64 %.pre127, %.sroa.0.0.i, !dbg !22238
  %i.de = add i32 %.sroa.019.0, 1, !dbg !22238
  %.sroa.019.1 = select i1 %i.dd, i32 %i.de, i32 0, !dbg !22238 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ab, label %bb.aa, !dbg !22239

.loopexit144:                                     ; preds = %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread, %.loopexit145
  %.sroa.8.0 = phi i64 [ %i.dc, %.loopexit145 ], [ %.sroa.0.0.i6476.ph, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !22240
  %.sroa.010.0 = phi i64 [ 0, %.loopexit145 ], [ 1, %_RNvXsf_NtCsh8eZTKRCwoO_3std2ioINtB5_4TakeQNtNtB7_2fs4FileENtB5_4Read8read_bufCs2g09Ig8GZd6_13polars_stream.exit.thread ], !dbg !22240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22241
  br label %.loopexit, !dbg !22145

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sroa.050.4 = phi i64 [ -1, %bb.ad ], [ %i.di, %bb.ac ], [ %spec.select, %bb.ab ], [ %.sroa.050.3, %bb.z ], !dbg !22133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22241
  br label %bb.f, !dbg !22129

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.bz, i1 %i.df, i1 false, !dbg !22242
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !22242 ; 4 uses
  %i.dg = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !22243
  %i.dh = icmp eq i64 %.pre127, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dh, %i.dg, !dbg !22243
  br i1 %or.cond2, label %bb.ac, label %bb.aa, !dbg !22243

bb.ac:                                            ; preds = %bb.ab
  %i.di = shl nuw i64 %spec.select, 1, !dbg !22244
  %i.dj = icmp slt i64 %spec.select, 0, !dbg !22244
  br i1 %i.dj, label %bb.ad, label %bb.aa, !dbg !22245, !prof !2257

bb.ad:                                            ; preds = %bb.ac
  br label %bb.aa, !dbg !22246

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit144
  %.sroa.8.1 = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.k ], [ %.sroa.8.0, %.loopexit144 ], [ 163208757251, %bb.l ], !dbg !22247
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit144 ], [ 1, %bb.l ], !dbg !22247
  %i.dk = inttoptr i64 %.sroa.8.1 to ptr, !dbg !22248
  br label %bb.ae, !dbg !22249

bb.ae:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dk, %.loopexit ], [ %i.aa, %bb.d ], [ null, %bb.e ], !dbg !22134
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !22134
  %i.dl = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !22248
  %i.dm = insertvalue { i64, ptr } %i.dl, ptr %.sroa.8.2, 1, !dbg !22248
  ret { i64, ptr } %i.dm, !dbg !22248
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(320) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22250 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22439 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !22439, !noundef !2247 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !22440
  tail call void @llvm.assume(i1 %i.d), !dbg !22441
  %i.e = load i64, ptr %1, align 8, !dbg !22442, !range !2569, !noundef !2247 ; 2 uses
  %i.f = trunc nuw i64 %2 to i1, !dbg !22443      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !22443

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %3, -1025, !dbg !22444
  br i1 %i.g, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !22445, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.h = add nuw i64 %3, 1024, !dbg !22444        ; 3 uses
  %i.i = and i64 %i.h, 8191, !dbg !22446          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !22447
  %i.k = sub i64 %3, %i.i, !dbg !22447
  %i.l = add i64 %i.k, 9216, !dbg !22447          ; 2 uses
  %.not91 = icmp ult i64 %i.l, %i.h, !dbg !22447
  %.sroa.5.1.i = select i1 %.not91, i64 8192, i64 %i.l, !dbg !22448
  %.sroa.050.1 = select i1 %i.j, i64 %i.h, i64 %.sroa.5.1.i, !dbg !22447 ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22449

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !22450 ; 2 uses
  %.sroa.013.0 = xor i1 %i.f, true, !dbg !22451   ; 2 uses
  %i.n = sub nsw i64 %i.e, %i.c, !dbg !22452
  %i.o = icmp ult i64 %i.n, 32, !dbg !22452
  br i1 %i.o, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22452

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.c, %bb.b ], !dbg !22453
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.b ], !dbg !22454
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.b ], !dbg !22455
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !22456

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(320) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22387 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0, !dbg !22387
  %i.v = extractvalue { i64, ptr } %i.t, 1, !dbg !22387 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !22457
  br i1 %i.w, label %bb.ab, label %bb.e, !dbg !22457

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null, !dbg !22458
  br i1 %i.x, label %bb.ab, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, !dbg !22458

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.b, align 8, !dbg !22453
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22458

bb.f:                                             ; preds = %bb.x, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.y = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bh, %bb.x ], !dbg !22453 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bd, %bb.x ], !dbg !22459
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.4, %bb.x ], !dbg !22460 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %bb.x ], !dbg !22461
  %i.z = icmp sgt i64 %i.y, -1, !dbg !22462
  call void @llvm.assume(i1 %i.z), !dbg !22463
  %i.aa = load i64, ptr %1, align 8, !dbg !22464, !range !2569, !noundef !2247 ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !22465
  %i.ac = icmp eq i64 %i.aa, %i.e
  %or.cond62 = and i1 %i.ab, %i.ac, !dbg !22465
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !22465

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi i64 [ %.pre121, %._crit_edge ], [ %i.aa, %bb.f ], !dbg !22466 ; 3 uses
  %i.ae = phi i64 [ %.pre120, %._crit_edge ], [ %i.y, %bb.f ], !dbg !22467 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !22468
  call void @llvm.assume(i1 %i.af), !dbg !22469
  %i.ag = icmp eq i64 %i.ae, %i.ad, !dbg !22470
  br i1 %i.ag, label %bb.l, label %bb.m, !dbg !22470

bb.h:                                             ; preds = %bb.f
  %i.ah = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(320) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22399 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0, !dbg !22399
  %i.aj = extractvalue { i64, ptr } %i.ah, 1, !dbg !22399 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1, !dbg !22471
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !22471

bb.i:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.aj to i64, !dbg !22399
  br label %.loopexit, !dbg !22472

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %i.aj, null, !dbg !22473
  %.pre120 = load i64, ptr %i.b, align 8, !dbg !22467 ; 3 uses
  br i1 %i.am, label %bb.k, label %._crit_edge, !dbg !22473

._crit_edge:                                      ; preds = %bb.j
  %.pre121 = load i64, ptr %1, align 8, !dbg !22466, !range !2569
  br label %bb.g, !dbg !22473

bb.k:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %.pre120, -1, !dbg !22474
  call void @llvm.assume(i1 %i.an), !dbg !22475
  %i.ao = sub nsw i64 %.pre120, %i.c, !dbg !22476
  br label %.loopexit, !dbg !22477

bb.l:                                             ; preds = %bb.g
  %i.ap = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ad, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !22478
  %i.aq = extractvalue { i64, i64 } %i.ap, 0, !dbg !22478
  %.not = icmp eq i64 %i.aq, -9223372036854775807, !dbg !22479
  br i1 %.not, label %._crit_edge122, label %.loopexit, !dbg !22480

._crit_edge122:                                   ; preds = %bb.l
  %.pre123 = load i64, ptr %i.b, align 8, !dbg !22481
  %.pre124 = load i64, ptr %1, align 8, !dbg !22482, !range !2569
  br label %bb.m, !dbg !22480

bb.m:                                             ; preds = %._crit_edge122, %bb.g
  %i.ar = phi i64 [ %.pre124, %._crit_edge122 ], [ %i.ad, %bb.g ], !dbg !22482
  %i.as = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.ae, %bb.g ], !dbg !22481 ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !dbg !22483, !nonnull !2247, !noundef !2247
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as, !dbg !22484
  %i.av = sub i64 %i.ar, %i.as, !dbg !22485
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.av), !dbg !22486 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22487
  store ptr %i.au, ptr %i.a, align 8, !dbg !22488
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !22488
  store i64 0, ptr %i.r, align 8, !dbg !22488
  store i64 %.sroa.048.2, ptr %i.s, align 8, !dbg !22489
  %i.aw = call noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !22490 ; 2 uses
  %.not60103 = icmp eq ptr %i.aw, null, !dbg !22491
  br i1 %.not60103, label %.split89._crit_edge, label %.lr.ph, !dbg !22492

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %i.ax = phi ptr [ %i.cf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.aw, %bb.m ] ; 10 uses
  %i.ay = ptrtoint ptr %i.ax to i64, !dbg !22493  ; 3 uses
  %i.az = and i64 %i.ay, 3, !dbg !22494
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.n
    i64 0, label %.split89
    i64 1, label %.split88
  ], !dbg !22495, !prof !2685

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split89._crit_edge.loopexit:                     ; preds = %.split89, %.split88, %.split, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %.lcssa95.ph = phi ptr [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ax, %bb.n ], [ %i.ax, %.split ], [ %i.ax, %.split88 ], [ %i.ax, %.split89 ]
  %.not60.lcssa.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.n ], [ false, %.split ], [ false, %.split88 ], [ false, %.split89 ]
  %i.ba = ptrtoint ptr %.lcssa95.ph to i64, !dbg !22496
  br label %.split89._crit_edge, !dbg !22497

.split89._crit_edge:                              ; preds = %.split89._crit_edge.loopexit, %bb.m
  %.lcssa95 = phi i64 [ 0, %bb.m ], [ %i.ba, %.split89._crit_edge.loopexit ], !dbg !22490
  %.not60.lcssa = phi i1 [ true, %bb.m ], [ %.not60.lcssa.ph, %.split89._crit_edge.loopexit ], !dbg !22491
  %i.bb = load i64, ptr %i.r, align 8, !dbg !22497, !noundef !2247 ; 5 uses
  %i.bc = load i64, ptr %i.s, align 8, !dbg !22498, !noundef !2247 ; 2 uses
  %i.bd = sub nuw i64 %i.bc, %i.bb, !dbg !22499
  %i.be = icmp ne i64 %i.bc, %.sroa.0.0.i, !dbg !22500
  %i.bf = load i64, ptr %i.b, align 8, !dbg !22501, !noundef !2247 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1, !dbg !22502
  call void @llvm.assume(i1 %i.bg), !dbg !22503
  %i.bh = add i64 %i.bf, %i.bb, !dbg !22504       ; 3 uses
  store i64 %i.bh, ptr %i.b, align 8, !dbg !22505
  br i1 %.not60.lcssa, label %bb.u, label %.loopexit134, !dbg !22506

.split:                                           ; preds = %.lr.ph
  %.mask92 = and i64 %i.ay, -4294967296, !dbg !22507
  %i.bi = icmp eq i64 %.mask92, 17179869184, !dbg !22507
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !22508

.split89:                                         ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !22509
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !22509, !range !2710, !noundef !2247
  %i.bl = icmp eq i8 %i.bk, 35, !dbg !22510
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !22508

.split88:                                         ; preds = %.lr.ph
  %i.bm = getelementptr i8, ptr %i.ax, i64 -1, !dbg !22511 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr i8, ptr %i.ax, i64 15, !dbg !22512
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !22512, !range !2710, !noundef !2247
  %i.bp = icmp eq i8 %i.bo, 35, !dbg !22513
  br i1 %i.bp, label %bb.o, label %.split89._crit_edge.loopexit, !dbg !22508

bb.n:                                             ; preds = %.lr.ph
  %i.bq = icmp ult ptr %i.ax, inttoptr (i64 180388626432 to ptr), !dbg !22514
  call void @llvm.assume(i1 %i.bq), !dbg !22515
  %.mask = and i64 %i.ay, -4294967296, !dbg !22516
  %i.br = icmp eq i64 %.mask, 150323855360, !dbg !22516
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !22508

bb.o:                                             ; preds = %.split88
  %.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !dbg !22517, !noalias !22432 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 7, !dbg !22517
  %.val1.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !dbg !22517, !noalias !22432, !nonnull !2247, !align !2484, !noundef !2247 ; 5 uses
  %i.bt = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !22518, !invariant.load !2247, !noalias !22432 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null, !dbg !22518
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p, !dbg !22518

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bt(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.q unwind label %bb.s, !dbg !22518, !noalias !22432

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !22519
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !22519, !range !2569, !invariant.load !2247, !noalias !22432 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !22520
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.r, !dbg !22520

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !22519
  %i.by = load i64, ptr %i.bx, align 8, !dbg !22521, !range !2570, !invariant.load !2247, !noalias !22432
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #42, !dbg !22522, !noalias !22432
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !22523

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !22524
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !22524, !range !2569, !invariant.load !2247, !noalias !22432 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !22525
  br i1 %i.cc, label %.body, label %bb.t, !dbg !22525

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !22524
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !22526, !range !2570, !invariant.load !2247, !noalias !22432
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #42, !dbg !22527, !noalias !22432
  br label %.body, !dbg !22528

.body:                                            ; preds = %bb.t, %bb.s
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef 8) #42, !dbg !22529, !noalias !22432
  resume { ptr, i32 } %i.bz, !dbg !22530

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef 8) #42, !dbg !22531, !noalias !22432
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, !dbg !22532

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.n, %.split, %.split89, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.cf = call noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !22490 ; 2 uses
  %.not60 = icmp eq ptr %i.cf, null, !dbg !22491
  br i1 %.not60, label %.split89._crit_edge.loopexit, label %.lr.ph, !dbg !22492

bb.u:                                             ; preds = %.split89._crit_edge
  %i.cg = icmp eq i64 %i.bb, 0, !dbg !22533
  br i1 %i.cg, label %bb.v, label %bb.w, !dbg !22533

bb.v:                                             ; preds = %bb.u
  %i.ch = sub nsw i64 %i.bh, %i.c, !dbg !22534
  br label %.loopexit134, !dbg !22535

bb.w:                                             ; preds = %bb.u
  %i.ci = icmp ult i64 %i.bb, %.sroa.0.0.i, !dbg !22536
  %i.cj = add i32 %.sroa.019.0, 1, !dbg !22536
  %.sroa.019.1 = select i1 %i.ci, i32 %i.cj, i32 0, !dbg !22536 ; 2 uses
  br i1 %.sroa.013.1, label %bb.y, label %bb.x, !dbg !22537

.loopexit134:                                     ; preds = %.split89._crit_edge, %bb.v
  %.sroa.8.0 = phi i64 [ %i.ch, %bb.v ], [ %.lcssa95, %.split89._crit_edge ], !dbg !22538
  %.sroa.010.0 = phi i64 [ 0, %bb.v ], [ 1, %.split89._crit_edge ], !dbg !22538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22539
  br label %.loopexit, !dbg !22472

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  %.sroa.050.4 = phi i64 [ -1, %bb.aa ], [ %i.cn, %bb.z ], [ %spec.select, %bb.y ], [ %.sroa.050.3, %bb.w ], !dbg !22460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22539
  br label %bb.f, !dbg !22456

bb.y:                                             ; preds = %bb.w
  %i.ck = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.be, i1 %i.ck, i1 false, !dbg !22540
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !22540 ; 4 uses
  %i.cl = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !22541
  %i.cm = icmp eq i64 %i.bb, %.sroa.0.0.i
  %or.cond2 = and i1 %i.cm, %i.cl, !dbg !22541
  br i1 %or.cond2, label %bb.z, label %bb.x, !dbg !22541

bb.z:                                             ; preds = %bb.y
  %i.cn = shl nuw i64 %spec.select, 1, !dbg !22542
  %i.co = icmp slt i64 %spec.select, 0, !dbg !22542
  br i1 %i.co, label %bb.aa, label %bb.x, !dbg !22543, !prof !2257

bb.aa:                                            ; preds = %bb.z
  br label %bb.x, !dbg !22544

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit134
  %.sroa.8.1 = phi i64 [ %i.al, %bb.i ], [ %i.ao, %bb.k ], [ %.sroa.8.0, %.loopexit134 ], [ 163208757251, %bb.l ], !dbg !22545
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit134 ], [ 1, %bb.l ], !dbg !22545
  %i.cp = inttoptr i64 %.sroa.8.1 to ptr, !dbg !22546
  br label %bb.ab, !dbg !22547

bb.ab:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.cp, %.loopexit ], [ %i.v, %bb.d ], [ null, %bb.e ], !dbg !22461
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !22461
  %i.cq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !22546
  %i.cr = insertvalue { i64, ptr } %i.cq, ptr %.sroa.8.2, 1, !dbg !22546
  ret { i64, ptr } %i.cr, !dbg !22546
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22548 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22737 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !22737, !noundef !2247 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !22738
  tail call void @llvm.assume(i1 %i.d), !dbg !22739
  %i.e = load i64, ptr %1, align 8, !dbg !22740, !range !2569, !noundef !2247 ; 2 uses
  %i.f = trunc nuw i64 %2 to i1, !dbg !22741      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !22741

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %3, -1025, !dbg !22742
  br i1 %i.g, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !22743, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.h = add nuw i64 %3, 1024, !dbg !22742        ; 3 uses
  %i.i = and i64 %i.h, 8191, !dbg !22744          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !22745
  %i.k = sub i64 %3, %i.i, !dbg !22745
  %i.l = add i64 %i.k, 9216, !dbg !22745          ; 2 uses
  %.not91 = icmp ult i64 %i.l, %i.h, !dbg !22745
  %.sroa.5.1.i = select i1 %.not91, i64 8192, i64 %i.l, !dbg !22746
  %.sroa.050.1 = select i1 %i.j, i64 %i.h, i64 %.sroa.5.1.i, !dbg !22745 ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22747

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !22748 ; 2 uses
  %.sroa.013.0 = xor i1 %i.f, true, !dbg !22749   ; 2 uses
  %i.n = sub nsw i64 %i.e, %i.c, !dbg !22750
  %i.o = icmp ult i64 %i.n, 32, !dbg !22750
  br i1 %i.o, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22750

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.c, %bb.b ], !dbg !22751
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.b ], !dbg !22752
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.b ], !dbg !22753
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !22754

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22685 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0, !dbg !22685
  %i.v = extractvalue { i64, ptr } %i.t, 1, !dbg !22685 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !22755
  br i1 %i.w, label %bb.ab, label %bb.e, !dbg !22755

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null, !dbg !22756
  br i1 %i.x, label %bb.ab, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, !dbg !22756

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.b, align 8, !dbg !22751
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !22756

bb.f:                                             ; preds = %bb.x, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.y = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bh, %bb.x ], !dbg !22751 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bd, %bb.x ], !dbg !22757
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.4, %bb.x ], !dbg !22758 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %bb.x ], !dbg !22759
  %i.z = icmp sgt i64 %i.y, -1, !dbg !22760
  call void @llvm.assume(i1 %i.z), !dbg !22761
  %i.aa = load i64, ptr %1, align 8, !dbg !22762, !range !2569, !noundef !2247 ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !22763
  %i.ac = icmp eq i64 %i.aa, %i.e
  %or.cond62 = and i1 %i.ab, %i.ac, !dbg !22763
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !22763

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi i64 [ %.pre121, %._crit_edge ], [ %i.aa, %bb.f ], !dbg !22764 ; 3 uses
  %i.ae = phi i64 [ %.pre120, %._crit_edge ], [ %i.y, %bb.f ], !dbg !22765 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !22766
  call void @llvm.assume(i1 %i.af), !dbg !22767
  %i.ag = icmp eq i64 %i.ae, %i.ad, !dbg !22768
  br i1 %i.ag, label %bb.l, label %bb.m, !dbg !22768

bb.h:                                             ; preds = %bb.f
  %i.ah = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22697 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0, !dbg !22697
  %i.aj = extractvalue { i64, ptr } %i.ah, 1, !dbg !22697 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1, !dbg !22769
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !22769

bb.i:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.aj to i64, !dbg !22697
  br label %.loopexit, !dbg !22770

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %i.aj, null, !dbg !22771
  %.pre120 = load i64, ptr %i.b, align 8, !dbg !22765 ; 3 uses
  br i1 %i.am, label %bb.k, label %._crit_edge, !dbg !22771

._crit_edge:                                      ; preds = %bb.j
  %.pre121 = load i64, ptr %1, align 8, !dbg !22764, !range !2569
  br label %bb.g, !dbg !22771

bb.k:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %.pre120, -1, !dbg !22772
  call void @llvm.assume(i1 %i.an), !dbg !22773
  %i.ao = sub nsw i64 %.pre120, %i.c, !dbg !22774
  br label %.loopexit, !dbg !22775

bb.l:                                             ; preds = %bb.g
  %i.ap = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ad, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !22776
  %i.aq = extractvalue { i64, i64 } %i.ap, 0, !dbg !22776
  %.not = icmp eq i64 %i.aq, -9223372036854775807, !dbg !22777
  br i1 %.not, label %._crit_edge122, label %.loopexit, !dbg !22778

._crit_edge122:                                   ; preds = %bb.l
  %.pre123 = load i64, ptr %i.b, align 8, !dbg !22779
  %.pre124 = load i64, ptr %1, align 8, !dbg !22780, !range !2569
  br label %bb.m, !dbg !22778

bb.m:                                             ; preds = %._crit_edge122, %bb.g
  %i.ar = phi i64 [ %.pre124, %._crit_edge122 ], [ %i.ad, %bb.g ], !dbg !22780
  %i.as = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.ae, %bb.g ], !dbg !22779 ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !dbg !22781, !nonnull !2247, !noundef !2247
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as, !dbg !22782
  %i.av = sub i64 %i.ar, %i.as, !dbg !22783
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.av), !dbg !22784 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22785
  store ptr %i.au, ptr %i.a, align 8, !dbg !22786
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !22786
  store i64 0, ptr %i.r, align 8, !dbg !22786
  store i64 %.sroa.048.2, ptr %i.s, align 8, !dbg !22787
  %i.aw = call noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !22788 ; 2 uses
  %.not60103 = icmp eq ptr %i.aw, null, !dbg !22789
  br i1 %.not60103, label %.split89._crit_edge, label %.lr.ph, !dbg !22790

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %i.ax = phi ptr [ %i.cf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.aw, %bb.m ] ; 10 uses
  %i.ay = ptrtoint ptr %i.ax to i64, !dbg !22791  ; 3 uses
  %i.az = and i64 %i.ay, 3, !dbg !22792
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.n
    i64 0, label %.split89
    i64 1, label %.split88
  ], !dbg !22793, !prof !2685

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split89._crit_edge.loopexit:                     ; preds = %.split89, %.split88, %.split, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %.lcssa95.ph = phi ptr [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ax, %bb.n ], [ %i.ax, %.split ], [ %i.ax, %.split88 ], [ %i.ax, %.split89 ]
  %.not60.lcssa.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.n ], [ false, %.split ], [ false, %.split88 ], [ false, %.split89 ]
  %i.ba = ptrtoint ptr %.lcssa95.ph to i64, !dbg !22794
  br label %.split89._crit_edge, !dbg !22795

.split89._crit_edge:                              ; preds = %.split89._crit_edge.loopexit, %bb.m
  %.lcssa95 = phi i64 [ 0, %bb.m ], [ %i.ba, %.split89._crit_edge.loopexit ], !dbg !22788
  %.not60.lcssa = phi i1 [ true, %bb.m ], [ %.not60.lcssa.ph, %.split89._crit_edge.loopexit ], !dbg !22789
  %i.bb = load i64, ptr %i.r, align 8, !dbg !22795, !noundef !2247 ; 5 uses
  %i.bc = load i64, ptr %i.s, align 8, !dbg !22796, !noundef !2247 ; 2 uses
  %i.bd = sub nuw i64 %i.bc, %i.bb, !dbg !22797
  %i.be = icmp ne i64 %i.bc, %.sroa.0.0.i, !dbg !22798
  %i.bf = load i64, ptr %i.b, align 8, !dbg !22799, !noundef !2247 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1, !dbg !22800
  call void @llvm.assume(i1 %i.bg), !dbg !22801
  %i.bh = add i64 %i.bf, %i.bb, !dbg !22802       ; 3 uses
  store i64 %i.bh, ptr %i.b, align 8, !dbg !22803
  br i1 %.not60.lcssa, label %bb.u, label %.loopexit134, !dbg !22804

.split:                                           ; preds = %.lr.ph
  %.mask92 = and i64 %i.ay, -4294967296, !dbg !22805
  %i.bi = icmp eq i64 %.mask92, 17179869184, !dbg !22805
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !22806

.split89:                                         ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !22807
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !22807, !range !2710, !noundef !2247
  %i.bl = icmp eq i8 %i.bk, 35, !dbg !22808
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !22806

.split88:                                         ; preds = %.lr.ph
  %i.bm = getelementptr i8, ptr %i.ax, i64 -1, !dbg !22809 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr i8, ptr %i.ax, i64 15, !dbg !22810
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !22810, !range !2710, !noundef !2247
  %i.bp = icmp eq i8 %i.bo, 35, !dbg !22811
  br i1 %i.bp, label %bb.o, label %.split89._crit_edge.loopexit, !dbg !22806

bb.n:                                             ; preds = %.lr.ph
  %i.bq = icmp ult ptr %i.ax, inttoptr (i64 180388626432 to ptr), !dbg !22812
  call void @llvm.assume(i1 %i.bq), !dbg !22813
  %.mask = and i64 %i.ay, -4294967296, !dbg !22814
  %i.br = icmp eq i64 %.mask, 150323855360, !dbg !22814
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !22806

bb.o:                                             ; preds = %.split88
  %.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !dbg !22815, !noalias !22730 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 7, !dbg !22815
  %.val1.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !dbg !22815, !noalias !22730, !nonnull !2247, !align !2484, !noundef !2247 ; 5 uses
  %i.bt = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !22816, !invariant.load !2247, !noalias !22730 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null, !dbg !22816
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p, !dbg !22816

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bt(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.q unwind label %bb.s, !dbg !22816, !noalias !22730

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !22817
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !22817, !range !2569, !invariant.load !2247, !noalias !22730 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !22818
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.r, !dbg !22818

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !22817
  %i.by = load i64, ptr %i.bx, align 8, !dbg !22819, !range !2570, !invariant.load !2247, !noalias !22730
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #42, !dbg !22820, !noalias !22730
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !22821

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !22822
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !22822, !range !2569, !invariant.load !2247, !noalias !22730 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !22823
  br i1 %i.cc, label %.body, label %bb.t, !dbg !22823

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !22822
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !22824, !range !2570, !invariant.load !2247, !noalias !22730
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #42, !dbg !22825, !noalias !22730
  br label %.body, !dbg !22826

.body:                                            ; preds = %bb.t, %bb.s
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef 8) #42, !dbg !22827, !noalias !22730
  resume { ptr, i32 } %i.bz, !dbg !22828

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef 8) #42, !dbg !22829, !noalias !22730
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, !dbg !22830

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.n, %.split, %.split89, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.cf = call noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !22788 ; 2 uses
  %.not60 = icmp eq ptr %i.cf, null, !dbg !22789
  br i1 %.not60, label %.split89._crit_edge.loopexit, label %.lr.ph, !dbg !22790

bb.u:                                             ; preds = %.split89._crit_edge
  %i.cg = icmp eq i64 %i.bb, 0, !dbg !22831
  br i1 %i.cg, label %bb.v, label %bb.w, !dbg !22831

bb.v:                                             ; preds = %bb.u
  %i.ch = sub nsw i64 %i.bh, %i.c, !dbg !22832
  br label %.loopexit134, !dbg !22833

bb.w:                                             ; preds = %bb.u
  %i.ci = icmp ult i64 %i.bb, %.sroa.0.0.i, !dbg !22834
  %i.cj = add i32 %.sroa.019.0, 1, !dbg !22834
  %.sroa.019.1 = select i1 %i.ci, i32 %i.cj, i32 0, !dbg !22834 ; 2 uses
  br i1 %.sroa.013.1, label %bb.y, label %bb.x, !dbg !22835

.loopexit134:                                     ; preds = %.split89._crit_edge, %bb.v
  %.sroa.8.0 = phi i64 [ %i.ch, %bb.v ], [ %.lcssa95, %.split89._crit_edge ], !dbg !22836
  %.sroa.010.0 = phi i64 [ 0, %bb.v ], [ 1, %.split89._crit_edge ], !dbg !22836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22837
  br label %.loopexit, !dbg !22770

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  %.sroa.050.4 = phi i64 [ -1, %bb.aa ], [ %i.cn, %bb.z ], [ %spec.select, %bb.y ], [ %.sroa.050.3, %bb.w ], !dbg !22758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22837
  br label %bb.f, !dbg !22754

bb.y:                                             ; preds = %bb.w
  %i.ck = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.be, i1 %i.ck, i1 false, !dbg !22838
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !22838 ; 4 uses
  %i.cl = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !22839
  %i.cm = icmp eq i64 %i.bb, %.sroa.0.0.i
  %or.cond2 = and i1 %i.cm, %i.cl, !dbg !22839
  br i1 %or.cond2, label %bb.z, label %bb.x, !dbg !22839

bb.z:                                             ; preds = %bb.y
  %i.cn = shl nuw i64 %spec.select, 1, !dbg !22840
  %i.co = icmp slt i64 %spec.select, 0, !dbg !22840
  br i1 %i.co, label %bb.aa, label %bb.x, !dbg !22841, !prof !2257

bb.aa:                                            ; preds = %bb.z
  br label %bb.x, !dbg !22842

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit134
  %.sroa.8.1 = phi i64 [ %i.al, %bb.i ], [ %i.ao, %bb.k ], [ %.sroa.8.0, %.loopexit134 ], [ 163208757251, %bb.l ], !dbg !22843
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit134 ], [ 1, %bb.l ], !dbg !22843
  %i.cp = inttoptr i64 %.sroa.8.1 to ptr, !dbg !22844
  br label %bb.ab, !dbg !22845

bb.ab:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.cp, %.loopexit ], [ %i.v, %bb.d ], [ null, %bb.e ], !dbg !22759
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !22759
  %i.cq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !22844
  %i.cr = insertvalue { i64, ptr } %i.cq, ptr %.sroa.8.2, 1, !dbg !22844
  ret { i64, ptr } %i.cr, !dbg !22844
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22846 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23035 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !23035, !noundef !2247 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !23036
  tail call void @llvm.assume(i1 %i.d), !dbg !23037
  %i.e = load i64, ptr %1, align 8, !dbg !23038, !range !2569, !noundef !2247 ; 2 uses
  %i.f = trunc nuw i64 %2 to i1, !dbg !23039      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !23039

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %3, -1025, !dbg !23040
  br i1 %i.g, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !23041, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.h = add nuw i64 %3, 1024, !dbg !23040        ; 3 uses
  %i.i = and i64 %i.h, 8191, !dbg !23042          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !23043
  %i.k = sub i64 %3, %i.i, !dbg !23043
  %i.l = add i64 %i.k, 9216, !dbg !23043          ; 2 uses
  %.not91 = icmp ult i64 %i.l, %i.h, !dbg !23043
  %.sroa.5.1.i = select i1 %.not91, i64 8192, i64 %i.l, !dbg !23044
  %.sroa.050.1 = select i1 %i.j, i64 %i.h, i64 %.sroa.5.1.i, !dbg !23043 ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !23045

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !23046 ; 2 uses
  %.sroa.013.0 = xor i1 %i.f, true, !dbg !23047   ; 2 uses
  %i.n = sub nsw i64 %i.e, %i.c, !dbg !23048
  %i.o = icmp ult i64 %i.n, 32, !dbg !23048
  br i1 %i.o, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !23048

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.c, %bb.b ], !dbg !23049
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.b ], !dbg !23050
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.b ], !dbg !23051
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !23052

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22983 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0, !dbg !22983
  %i.v = extractvalue { i64, ptr } %i.t, 1, !dbg !22983 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !23053
  br i1 %i.w, label %bb.ab, label %bb.e, !dbg !23053

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null, !dbg !23054
  br i1 %i.x, label %bb.ab, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, !dbg !23054

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.b, align 8, !dbg !23049
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !23054

bb.f:                                             ; preds = %bb.x, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.y = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bh, %bb.x ], !dbg !23049 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bd, %bb.x ], !dbg !23055
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.4, %bb.x ], !dbg !23056 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %bb.x ], !dbg !23057
  %i.z = icmp sgt i64 %i.y, -1, !dbg !23058
  call void @llvm.assume(i1 %i.z), !dbg !23059
  %i.aa = load i64, ptr %1, align 8, !dbg !23060, !range !2569, !noundef !2247 ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !23061
  %i.ac = icmp eq i64 %i.aa, %i.e
  %or.cond62 = and i1 %i.ab, %i.ac, !dbg !23061
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !23061

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi i64 [ %.pre121, %._crit_edge ], [ %i.aa, %bb.f ], !dbg !23062 ; 3 uses
  %i.ae = phi i64 [ %.pre120, %._crit_edge ], [ %i.y, %bb.f ], !dbg !23063 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !23064
  call void @llvm.assume(i1 %i.af), !dbg !23065
  %i.ag = icmp eq i64 %i.ae, %i.ad, !dbg !23066
  br i1 %i.ag, label %bb.l, label %bb.m, !dbg !23066

bb.h:                                             ; preds = %bb.f
  %i.ah = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !22995 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0, !dbg !22995
  %i.aj = extractvalue { i64, ptr } %i.ah, 1, !dbg !22995 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1, !dbg !23067
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !23067

bb.i:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.aj to i64, !dbg !22995
  br label %.loopexit, !dbg !23068

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %i.aj, null, !dbg !23069
  %.pre120 = load i64, ptr %i.b, align 8, !dbg !23063 ; 3 uses
  br i1 %i.am, label %bb.k, label %._crit_edge, !dbg !23069

._crit_edge:                                      ; preds = %bb.j
  %.pre121 = load i64, ptr %1, align 8, !dbg !23062, !range !2569
  br label %bb.g, !dbg !23069

bb.k:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %.pre120, -1, !dbg !23070
  call void @llvm.assume(i1 %i.an), !dbg !23071
  %i.ao = sub nsw i64 %.pre120, %i.c, !dbg !23072
  br label %.loopexit, !dbg !23073

bb.l:                                             ; preds = %bb.g
  %i.ap = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ad, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !23074
  %i.aq = extractvalue { i64, i64 } %i.ap, 0, !dbg !23074
  %.not = icmp eq i64 %i.aq, -9223372036854775807, !dbg !23075
  br i1 %.not, label %._crit_edge122, label %.loopexit, !dbg !23076

._crit_edge122:                                   ; preds = %bb.l
  %.pre123 = load i64, ptr %i.b, align 8, !dbg !23077
  %.pre124 = load i64, ptr %1, align 8, !dbg !23078, !range !2569
  br label %bb.m, !dbg !23076

bb.m:                                             ; preds = %._crit_edge122, %bb.g
  %i.ar = phi i64 [ %.pre124, %._crit_edge122 ], [ %i.ad, %bb.g ], !dbg !23078
  %i.as = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.ae, %bb.g ], !dbg !23077 ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !dbg !23079, !nonnull !2247, !noundef !2247
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as, !dbg !23080
  %i.av = sub i64 %i.ar, %i.as, !dbg !23081
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.av), !dbg !23082 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23083
  store ptr %i.au, ptr %i.a, align 8, !dbg !23084
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !23084
  store i64 0, ptr %i.r, align 8, !dbg !23084
  store i64 %.sroa.048.2, ptr %i.s, align 8, !dbg !23085
  %i.aw = call noundef ptr @_RNvYINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !23086 ; 2 uses
  %.not60103 = icmp eq ptr %i.aw, null, !dbg !23087
  br i1 %.not60103, label %.split89._crit_edge, label %.lr.ph, !dbg !23088

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %i.ax = phi ptr [ %i.cf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.aw, %bb.m ] ; 10 uses
  %i.ay = ptrtoint ptr %i.ax to i64, !dbg !23089  ; 3 uses
  %i.az = and i64 %i.ay, 3, !dbg !23090
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.n
    i64 0, label %.split89
    i64 1, label %.split88
  ], !dbg !23091, !prof !2685

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split89._crit_edge.loopexit:                     ; preds = %.split89, %.split88, %.split, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %.lcssa95.ph = phi ptr [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ax, %bb.n ], [ %i.ax, %.split ], [ %i.ax, %.split88 ], [ %i.ax, %.split89 ]
  %.not60.lcssa.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.n ], [ false, %.split ], [ false, %.split88 ], [ false, %.split89 ]
  %i.ba = ptrtoint ptr %.lcssa95.ph to i64, !dbg !23092
  br label %.split89._crit_edge, !dbg !23093

.split89._crit_edge:                              ; preds = %.split89._crit_edge.loopexit, %bb.m
  %.lcssa95 = phi i64 [ 0, %bb.m ], [ %i.ba, %.split89._crit_edge.loopexit ], !dbg !23086
  %.not60.lcssa = phi i1 [ true, %bb.m ], [ %.not60.lcssa.ph, %.split89._crit_edge.loopexit ], !dbg !23087
  %i.bb = load i64, ptr %i.r, align 8, !dbg !23093, !noundef !2247 ; 5 uses
  %i.bc = load i64, ptr %i.s, align 8, !dbg !23094, !noundef !2247 ; 2 uses
  %i.bd = sub nuw i64 %i.bc, %i.bb, !dbg !23095
  %i.be = icmp ne i64 %i.bc, %.sroa.0.0.i, !dbg !23096
  %i.bf = load i64, ptr %i.b, align 8, !dbg !23097, !noundef !2247 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1, !dbg !23098
  call void @llvm.assume(i1 %i.bg), !dbg !23099
  %i.bh = add i64 %i.bf, %i.bb, !dbg !23100       ; 3 uses
  store i64 %i.bh, ptr %i.b, align 8, !dbg !23101
  br i1 %.not60.lcssa, label %bb.u, label %.loopexit134, !dbg !23102

.split:                                           ; preds = %.lr.ph
  %.mask92 = and i64 %i.ay, -4294967296, !dbg !23103
  %i.bi = icmp eq i64 %.mask92, 17179869184, !dbg !23103
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !23104

.split89:                                         ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !23105
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !23105, !range !2710, !noundef !2247
  %i.bl = icmp eq i8 %i.bk, 35, !dbg !23106
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !23104

.split88:                                         ; preds = %.lr.ph
  %i.bm = getelementptr i8, ptr %i.ax, i64 -1, !dbg !23107 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr i8, ptr %i.ax, i64 15, !dbg !23108
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !23108, !range !2710, !noundef !2247
  %i.bp = icmp eq i8 %i.bo, 35, !dbg !23109
  br i1 %i.bp, label %bb.o, label %.split89._crit_edge.loopexit, !dbg !23104

bb.n:                                             ; preds = %.lr.ph
  %i.bq = icmp ult ptr %i.ax, inttoptr (i64 180388626432 to ptr), !dbg !23110
  call void @llvm.assume(i1 %i.bq), !dbg !23111
  %.mask = and i64 %i.ay, -4294967296, !dbg !23112
  %i.br = icmp eq i64 %.mask, 150323855360, !dbg !23112
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !23104

bb.o:                                             ; preds = %.split88
  %.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !dbg !23113, !noalias !23028 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 7, !dbg !23113
  %.val1.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !dbg !23113, !noalias !23028, !nonnull !2247, !align !2484, !noundef !2247 ; 5 uses
  %i.bt = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !23114, !invariant.load !2247, !noalias !23028 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null, !dbg !23114
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p, !dbg !23114

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bt(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.q unwind label %bb.s, !dbg !23114, !noalias !23028

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !23115
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !23115, !range !2569, !invariant.load !2247, !noalias !23028 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !23116
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.r, !dbg !23116

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !23115
  %i.by = load i64, ptr %i.bx, align 8, !dbg !23117, !range !2570, !invariant.load !2247, !noalias !23028
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #42, !dbg !23118, !noalias !23028
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !23119

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !23120
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !23120, !range !2569, !invariant.load !2247, !noalias !23028 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !23121
  br i1 %i.cc, label %.body, label %bb.t, !dbg !23121

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !23120
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !23122, !range !2570, !invariant.load !2247, !noalias !23028
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #42, !dbg !23123, !noalias !23028
  br label %.body, !dbg !23124

.body:                                            ; preds = %bb.t, %bb.s
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef 8) #42, !dbg !23125, !noalias !23028
  resume { ptr, i32 } %i.bz, !dbg !23126

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef 8) #42, !dbg !23127, !noalias !23028
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, !dbg !23128

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.n, %.split, %.split89, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.cf = call noundef ptr @_RNvYINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !23086 ; 2 uses
  %.not60 = icmp eq ptr %i.cf, null, !dbg !23087
  br i1 %.not60, label %.split89._crit_edge.loopexit, label %.lr.ph, !dbg !23088

bb.u:                                             ; preds = %.split89._crit_edge
  %i.cg = icmp eq i64 %i.bb, 0, !dbg !23129
  br i1 %i.cg, label %bb.v, label %bb.w, !dbg !23129

bb.v:                                             ; preds = %bb.u
  %i.ch = sub nsw i64 %i.bh, %i.c, !dbg !23130
  br label %.loopexit134, !dbg !23131

bb.w:                                             ; preds = %bb.u
  %i.ci = icmp ult i64 %i.bb, %.sroa.0.0.i, !dbg !23132
  %i.cj = add i32 %.sroa.019.0, 1, !dbg !23132
  %.sroa.019.1 = select i1 %i.ci, i32 %i.cj, i32 0, !dbg !23132 ; 2 uses
  br i1 %.sroa.013.1, label %bb.y, label %bb.x, !dbg !23133

.loopexit134:                                     ; preds = %.split89._crit_edge, %bb.v
  %.sroa.8.0 = phi i64 [ %i.ch, %bb.v ], [ %.lcssa95, %.split89._crit_edge ], !dbg !23134
  %.sroa.010.0 = phi i64 [ 0, %bb.v ], [ 1, %.split89._crit_edge ], !dbg !23134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23135
  br label %.loopexit, !dbg !23068

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  %.sroa.050.4 = phi i64 [ -1, %bb.aa ], [ %i.cn, %bb.z ], [ %spec.select, %bb.y ], [ %.sroa.050.3, %bb.w ], !dbg !23056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23135
  br label %bb.f, !dbg !23052

bb.y:                                             ; preds = %bb.w
  %i.ck = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.be, i1 %i.ck, i1 false, !dbg !23136
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3, !dbg !23136 ; 4 uses
  %i.cl = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !23137
  %i.cm = icmp eq i64 %i.bb, %.sroa.0.0.i
  %or.cond2 = and i1 %i.cm, %i.cl, !dbg !23137
  br i1 %or.cond2, label %bb.z, label %bb.x, !dbg !23137

bb.z:                                             ; preds = %bb.y
  %i.cn = shl nuw i64 %spec.select, 1, !dbg !23138
  %i.co = icmp slt i64 %spec.select, 0, !dbg !23138
  br i1 %i.co, label %bb.aa, label %bb.x, !dbg !23139, !prof !2257

bb.aa:                                            ; preds = %bb.z
  br label %bb.x, !dbg !23140

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit134
  %.sroa.8.1 = phi i64 [ %i.al, %bb.i ], [ %i.ao, %bb.k ], [ %.sroa.8.0, %.loopexit134 ], [ 163208757251, %bb.l ], !dbg !23141
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit134 ], [ 1, %bb.l ], !dbg !23141
  %i.cp = inttoptr i64 %.sroa.8.1 to ptr, !dbg !23142
  br label %bb.ab, !dbg !23143

bb.ab:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.cp, %.loopexit ], [ %i.v, %bb.d ], [ null, %bb.e ], !dbg !23057
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !23057
  %i.cq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !23142
  %i.cr = insertvalue { i64, ptr } %i.cq, ptr %.sroa.8.2, 1, !dbg !23142
  ret { i64, ptr } %i.cr, !dbg !23142
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23144 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23333 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !23333, !noundef !2247 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !23334
  tail call void @llvm.assume(i1 %i.d), !dbg !23335
  %i.e = load i64, ptr %1, align 8, !dbg !23336, !range !2569, !noundef !2247 ; 2 uses
  %i.f = trunc nuw i64 %2 to i1, !dbg !23337      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !23337

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %3, -1025, !dbg !23338
  br i1 %i.g, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit, !dbg !23339, !prof !2257

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  %i.h = add nuw i64 %3, 1024, !dbg !23338        ; 3 uses
  %i.i = and i64 %i.h, 8191, !dbg !23340          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !23341
  %i.k = sub i64 %3, %i.i, !dbg !23341
  %i.l = add i64 %i.k, 9216, !dbg !23341          ; 2 uses
  %.not91 = icmp ult i64 %i.l, %i.h, !dbg !23341
  %.sroa.5.1.i = select i1 %.not91, i64 8192, i64 %i.l, !dbg !23342
  %.sroa.050.1 = select i1 %i.j, i64 %i.h, i64 %.sroa.5.1.i, !dbg !23341 ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !23343

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.a ], !dbg !23344 ; 2 uses
  %.sroa.013.0 = xor i1 %i.f, true, !dbg !23345   ; 2 uses
  %i.n = sub nsw i64 %i.e, %i.c, !dbg !23346
  %i.o = icmp ult i64 %i.n, 32, !dbg !23346
  br i1 %i.o, label %bb.d, label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !23346

_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.c, %bb.b ], !dbg !23347
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ 8192, %bb.b ], !dbg !23348
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.b ], !dbg !23349
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f, !dbg !23350

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !23281 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0, !dbg !23281
  %i.v = extractvalue { i64, ptr } %i.t, 1, !dbg !23281 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !23351
  br i1 %i.w, label %bb.ab, label %bb.e, !dbg !23351

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null, !dbg !23352
  br i1 %i.x, label %bb.ab, label %._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge, !dbg !23352

._RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.b, align 8, !dbg !23347
  br label %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !23352

bb.f:                                             ; preds = %bb.x, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread
  %i.y = phi i64 [ %.pre, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bh, %bb.x ], !dbg !23347 ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %i.bd, %bb.x ], !dbg !23353
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.050.4, %bb.x ], !dbg !23354 ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0Cs2g09Ig8GZd6_13polars_stream.exit.thread ], [ %.sroa.019.1, %bb.x ], !dbg !23355
  %i.z = icmp sgt i64 %i.y, -1, !dbg !23356
  call void @llvm.assume(i1 %i.z), !dbg !23357
  %i.aa = load i64, ptr %1, align 8, !dbg !23358, !range !2569, !noundef !2247 ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !23359
  %i.ac = icmp eq i64 %i.aa, %i.e
  %or.cond62 = and i1 %i.ab, %i.ac, !dbg !23359
  br i1 %or.cond62, label %bb.h, label %bb.g, !dbg !23359

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi i64 [ %.pre121, %._crit_edge ], [ %i.aa, %bb.f ], !dbg !23360 ; 3 uses
  %i.ae = phi i64 [ %.pre120, %._crit_edge ], [ %i.y, %bb.f ], !dbg !23361 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !23362
  call void @llvm.assume(i1 %i.af), !dbg !23363
  %i.ag = icmp eq i64 %i.ae, %i.ad, !dbg !23364
  br i1 %i.ag, label %bb.l, label %bb.m, !dbg !23364

bb.h:                                             ; preds = %bb.f
  %i.ah = call fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1), !dbg !23293 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0, !dbg !23293
  %i.aj = extractvalue { i64, ptr } %i.ah, 1, !dbg !23293 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1, !dbg !23365
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !23365

bb.i:                                             ; preds = %bb.h
  %i.al = ptrtoint ptr %i.aj to i64, !dbg !23293
  br label %.loopexit, !dbg !23366

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %i.aj, null, !dbg !23367
  %.pre120 = load i64, ptr %i.b, align 8, !dbg !23361 ; 3 uses
  br i1 %i.am, label %bb.k, label %._crit_edge, !dbg !23367

._crit_edge:                                      ; preds = %bb.j
  %.pre121 = load i64, ptr %1, align 8, !dbg !23360, !range !2569
  br label %bb.g, !dbg !23367

bb.k:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %.pre120, -1, !dbg !23368
  call void @llvm.assume(i1 %i.an), !dbg !23369
  %i.ao = sub nsw i64 %.pre120, %i.c, !dbg !23370
  br label %.loopexit, !dbg !23371

bb.l:                                             ; preds = %bb.g
  %i.ap = call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ad, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !23372
  %i.aq = extractvalue { i64, i64 } %i.ap, 0, !dbg !23372
  %.not = icmp eq i64 %i.aq, -9223372036854775807, !dbg !23373
  br i1 %.not, label %._crit_edge122, label %.loopexit, !dbg !23374

._crit_edge122:                                   ; preds = %bb.l
  %.pre123 = load i64, ptr %i.b, align 8, !dbg !23375
  %.pre124 = load i64, ptr %1, align 8, !dbg !23376, !range !2569
  br label %bb.m, !dbg !23374

bb.m:                                             ; preds = %._crit_edge122, %bb.g
  %i.ar = phi i64 [ %.pre124, %._crit_edge122 ], [ %i.ad, %bb.g ], !dbg !23376
  %i.as = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.ae, %bb.g ], !dbg !23375 ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !dbg !23377, !nonnull !2247, !noundef !2247
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as, !dbg !23378
  %i.av = sub i64 %i.ar, %i.as, !dbg !23379
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.av), !dbg !23380 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23381
  store ptr %i.au, ptr %i.a, align 8, !dbg !23382
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !23382
  store i64 0, ptr %i.r, align 8, !dbg !23382
  store i64 %.sroa.048.2, ptr %i.s, align 8, !dbg !23383
  %i.aw = call noundef ptr @_RNvYNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceNtNtCsh8eZTKRCwoO_3std2io4Read8read_bufCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !dbg !23384 ; 2 uses
  %.not60103 = icmp eq ptr %i.aw, null, !dbg !23385
  br i1 %.not60103, label %.split89._crit_edge, label %.lr.ph, !dbg !23386

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %i.ax = phi ptr [ %i.cf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.aw, %bb.m ] ; 10 uses
  %i.ay = ptrtoint ptr %i.ax to i64, !dbg !23387  ; 3 uses
  %i.az = and i64 %i.ay, 3, !dbg !23388
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.n
    i64 0, label %.split89
    i64 1, label %.split88
  ], !dbg !23389, !prof !2685

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split89._crit_edge.loopexit:                     ; preds = %.split89, %.split88, %.split, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit
  %.lcssa95.ph = phi ptr [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ax, %bb.n ], [ %i.ax, %.split ], [ %i.ax, %.split88 ], [ %i.ax, %.split89 ]
  %.not60.lcssa.ph = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit ], [ false, %bb.n ], [ false, %.split ], [ false, %.split88 ], [ false, %.split89 ]
  %i.ba = ptrtoint ptr %.lcssa95.ph to i64, !dbg !23390
  br label %.split89._crit_edge, !dbg !23391

.split89._crit_edge:                              ; preds = %.split89._crit_edge.loopexit, %bb.m
  %.lcssa95 = phi i64 [ 0, %bb.m ], [ %i.ba, %.split89._crit_edge.loopexit ], !dbg !23384
  %.not60.lcssa = phi i1 [ true, %bb.m ], [ %.not60.lcssa.ph, %.split89._crit_edge.loopexit ], !dbg !23385
  %i.bb = load i64, ptr %i.r, align 8, !dbg !23391, !noundef !2247 ; 5 uses
  %i.bc = load i64, ptr %i.s, align 8, !dbg !23392, !noundef !2247 ; 2 uses
  %i.bd = sub nuw i64 %i.bc, %i.bb, !dbg !23393
  %i.be = icmp ne i64 %i.bc, %.sroa.0.0.i, !dbg !23394
  %i.bf = load i64, ptr %i.b, align 8, !dbg !23395, !noundef !2247 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1, !dbg !23396
  call void @llvm.assume(i1 %i.bg), !dbg !23397
  %i.bh = add i64 %i.bf, %i.bb, !dbg !23398       ; 3 uses
  store i64 %i.bh, ptr %i.b, align 8, !dbg !23399
  br i1 %.not60.lcssa, label %bb.u, label %.loopexit134, !dbg !23400

.split:                                           ; preds = %.lr.ph
  %.mask92 = and i64 %i.ay, -4294967296, !dbg !23401
  %i.bi = icmp eq i64 %.mask92, 17179869184, !dbg !23401
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !23402

.split89:                                         ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !23403
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !23403, !range !2710, !noundef !2247
  %i.bl = icmp eq i8 %i.bk, 35, !dbg !23404
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !23402

.split88:                                         ; preds = %.lr.ph
  %i.bm = getelementptr i8, ptr %i.ax, i64 -1, !dbg !23405 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr i8, ptr %i.ax, i64 15, !dbg !23406
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !23406, !range !2710, !noundef !2247
  %i.bp = icmp eq i8 %i.bo, 35, !dbg !23407
  br i1 %i.bp, label %bb.o, label %.split89._crit_edge.loopexit, !dbg !23402

bb.n:                                             ; preds = %.lr.ph
  %i.bq = icmp ult ptr %i.ax, inttoptr (i64 180388626432 to ptr), !dbg !23408
  call void @llvm.assume(i1 %i.bq), !dbg !23409
  %.mask = and i64 %i.ay, -4294967296, !dbg !23410
  %i.br = icmp eq i64 %.mask, 150323855360, !dbg !23410
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream.exit, label %.split89._crit_edge.loopexit, !dbg !23402

bb.o:                                             ; preds = %.split88
  %.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !dbg !23411, !noalias !23326 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 7, !dbg !23411
  %.val1.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !dbg !23411, !noalias !23326, !nonnull !2247, !align !2484, !noundef !2247 ; 5 uses
  %i.bt = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !23412, !invariant.load !2247, !noalias !23326 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null, !dbg !23412
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p, !dbg !23412

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bt(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.q unwind label %bb.s, !dbg !23412, !noalias !23326

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !23413
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !23413, !range !2569, !invariant.load !2247, !noalias !23326 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !23414
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.r, !dbg !23414

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !23413
  %i.by = load i64, ptr %i.bx, align 8, !dbg !23415, !range !2570, !invariant.load !2247, !noalias !23326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #42, !dbg !23416, !noalias !23326
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !23417

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !23418
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !23418, !range !2569, !invariant.load !2247, !noalias !23326 ; 2 uses
end_hunk_0
