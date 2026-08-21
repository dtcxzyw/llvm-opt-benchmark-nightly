Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/parser-1c08171a2541c4e2.parser.a236489b19f90125-cgu.04?download=true
inline.NumInlined: 85
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths8vis_path:bb.a
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths4path(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths9attr_path(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths4path(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths9expr_path(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths4path(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths9type_path(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths4path(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns12not_null_pat(ptr dead_on_unwind noalias nofree noundef nonnull writable align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 34)
  br i1 %i.d, label %bb.c, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 34)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @16, i64 24, i1 false), !noalias !82
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns16pattern_single_r(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.g, !inline_history !85

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 251)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #15
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns12wildcard_pat(ptr dead_on_unwind noalias nofree noundef nonnull writable align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 24)
  br i1 %i.c, label %bb.c, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 24)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 325)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.d

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #15
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns13pattern_top_r(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns9pattern_r(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns14pattern_single(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @16, i64 24, i1 false)
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns16pattern_single_r(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns16pattern_single_r(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = alloca [12 x i8], align 4                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [12 x i8], align 4                ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 3 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 3 uses
  %i.k = alloca [12 x i8], align 4                ; 3 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [12 x i8], align 4                ; 3 uses
  %i.o = alloca [12 x i8], align 4                ; 3 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 28)
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 26)
  br i1 %i.r, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 28)
          to label %bb.z unwind label %bb.ab

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns8atom_pat(ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load i16, ptr %i.s, align 4, !range !80, !noundef !18
  %.not = icmp eq i16 %i.t, -1
  br i1 %.not, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 26)
          to label %bb.s unwind label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.u = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 27)
  br i1 %i.u, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 28)
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 26)
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.aa, %bb.w, %bb.n
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.lcssa = phi i16 [ 27, %bb.f ], [ 28, %bb.g ], [ 26, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef %.lcssa)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 %0)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  switch i16 %i.x, label %bb.m [
    i16 1, label %bb.n
    i16 4, label %bb.n
    i16 6, label %bb.n
    i16 8, label %bb.n
    i16 10, label %bb.n
    i16 29, label %bb.n
    i16 31, label %bb.n
    i16 71, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns8atom_pat(ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1)
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 270)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.p:                                             ; preds = %bb.m, %bb.k, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #15
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.ab, %bb.y, %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.ab, %bb.y
  %.pn32 = phi { ptr, i32 } [ %lpad.thr_comm49, %bb.ab ], [ %lpad.thr_comm, %bb.p ], [ %lpad.thr_comm41, %bb.y ]
  resume { ptr, i32 } %.pn32

bb.s:                                             ; preds = %bb.e
  %i.z = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @19)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %i.z, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 283)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns8atom_pat(ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %i.k, ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1)
          to label %bb.x unwind label %bb.y

bb.w:                                             ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 270)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.w

bb.y:                                             ; preds = %bb.v, %bb.s, %bb.e
  %lpad.thr_comm41 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l) #15
          to label %bb.r unwind label %bb.q

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns8atom_pat(ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %i.o, ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 270)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.i

bb.ab:                                            ; preds = %bb.z, %bb.c
  %lpad.thr_comm49 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #15
          to label %bb.r unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns17path_or_macro_pat(ptr dead_on_unwind noalias nofree noundef nonnull writable align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %i.b = alloca [12 x i8], align 4                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 3 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 3 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [12 x i8], align 4                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = tail call noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 %1)
  switch i16 %i.r, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.thread2.i [
    i16 29, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.i
    i16 62, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread
    i16 86, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread
    i16 89, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread
    i16 153, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread
  ]

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.i: ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 30)
  br i1 %i.s, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.thread2.i

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.thread2.i: ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.i, %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 11)
  br i1 %i.t, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit: ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.thread2.i
  %i.u = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 54)
  br i1 %i.u, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread, label %bb.b, !prof !86

bb.b:                                             ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #18
  unreachable

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.i, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths17is_use_path_start.exit.thread2.i, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !87
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths4path(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.l, ptr noalias nofree noundef align 8 dereferenceable(72) %1, i8 noundef 3)
          to label %bb.c unwind label %.body.thread30

.body.thread30:                                   ; preds = %.invoke, %.noexc5, %bb.h, %bb.as, %bb.c, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread, %bb.e, %bb.f, %.noexc4, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5paths13is_path_start.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !87
  %i.v = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %.body.thread30

bb.d:                                             ; preds = %bb.c
  switch i16 %i.v, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns16tuple_pat_fields.exit [
    i16 5, label %bb.e
    i16 7, label %bb.g
    i16 34, label %bb.as
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 5)
          to label %.noexc unwind label %.body.thread30, !inline_history !90

.noexc:                                           ; preds = %bb.e
  br i1 %i.w, label %bb.f, label %.invoke, !prof !81

.invoke:                                          ; preds = %.noexc8, %.noexc
  %i.x = phi ptr [ @22, %.noexc ], [ @27, %.noexc8 ]
  %i.y = phi ptr [ @23, %.noexc ], [ @28, %.noexc8 ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #18
          to label %.cont unwind label %.body.thread30, !inline_history !90

.cont:                                            ; preds = %.invoke
end_hunk_0
