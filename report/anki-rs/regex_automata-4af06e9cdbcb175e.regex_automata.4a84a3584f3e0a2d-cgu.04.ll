Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14regex_automata3dfa5regex7Builder12build_sparse17h42ec7752e0a92f62E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.i, i64 128, i1 false), !noalias !255
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 2, ptr %i.s, align 16, !alias.scope !253, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !254
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.635.0..sroa_idx.i, i64 128, i1 false), !noalias !254
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.615.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.736.0..sroa_idx.i, i64 504, i1 false), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !254
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.514.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.i, i64 128, i1 false), !noalias !254
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.o, ptr %.sroa.413.0..sroa_idx.i, align 16, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !254
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 800 ; 3 uses
  invoke void @"_ZN14regex_automata3dfa6sparse36DFA$LT$alloc..vec..Vec$LT$u8$GT$$GT$10from_dense17h9c15c79d3cdd2801E"(ptr noalias noundef nonnull sret([736 x i8]) align 16 captures(address) dereferenceable(736) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.t)
          to label %bb.j unwind label %bb.i, !noalias !253

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..sparse..DFA$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17ha2c2d3272c01de42E"(ptr noalias noundef align 16 dereferenceable(736) %i.c) #29
          to label %bb.d unwind label %bb.r, !noalias !253

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.w = load i64, ptr %i.v, align 16, !range !15, !noalias !254, !noundef !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, 2
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.620.i, ptr noundef nonnull align 8 dereferenceable(128) %i.y, i64 128, i1 false), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.620.i, i64 128, i1 false), !noalias !255
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 2, ptr %i.aa, align 16, !alias.scope !253, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i)
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..sparse..DFA$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17ha2c2d3272c01de42E"(ptr noalias noundef align 16 dereferenceable(736) %i.c)
          to label %bb.o unwind label %bb.e, !noalias !253

bb.l:                                             ; preds = %bb.j
  %.sroa.026.736..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.026.i, i64 736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.026.736..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !254
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.620.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.639.0..sroa_idx.i, i64 128, i1 false), !noalias !254
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.729.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.740.0..sroa_idx.i, i64 504, i1 false), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.628.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.620.i, i64 128, i1 false), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %.sroa.026.i, ptr noundef nonnull align 16 dereferenceable(736) %i.c, i64 736, i1 false), !noalias !254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1472) %0, ptr noundef nonnull align 16 dereferenceable(832) %.sroa.026.i, i64 832, i1 false), !noalias !255
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 %i.w, ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !253, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !254
  invoke void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(1600) %i.e)
          to label %"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE.exit.i" unwind label %bb.m, !noalias !253

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(800) %i.t) #29
          to label %common.resume.i unwind label %bb.n, !noalias !253

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !253
  unreachable

common.resume.i:                                  ; preds = %bb.p, %bb.m, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %i.ab, %bb.m ], [ %.pn.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE.exit.i": ; preds = %bb.l
  call void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(800) %i.t), !noalias !253
  br label %_ZN14regex_automata3dfa5regex7Builder17build_many_sparse17h81477ac53096acaeE.exit

bb.o:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !254
  invoke void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(1600) %i.e)
          to label %"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE.exit44.i" unwind label %bb.p, !noalias !253

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  invoke void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(800) %i.ae) #29
          to label %common.resume.i unwind label %bb.q, !noalias !253

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !253
  unreachable

"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE.exit44.i": ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  call void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(800) %i.ag), !noalias !253
  br label %_ZN14regex_automata3dfa5regex7Builder17build_many_sparse17h81477ac53096acaeE.exit

bb.r:                                             ; preds = %bb.i, %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !253
  unreachable

_ZN14regex_automata3dfa5regex7Builder17build_many_sparse17h81477ac53096acaeE.exit: ; preds = %bb.b, %"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE.exit.i", %"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE.exit44.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3dfa5regex7Builder3new17h72e82f1a6739f313E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([576 x i8]) align 16 captures(none) dereferenceable(576) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3dfa5regex7Builder5build17h85844ff12b114f61E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1600 x i8]) align 16 captures(none) dereferenceable(1600) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call fastcc void @_ZN14regex_automata3dfa5regex7Builder10build_many17hb0bd1c5c57578c67E(ptr noalias noundef align 16 captures(address) dereferenceable(1600) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5regex7Builder5dense17h0d6ae1cf8d8e529cE(ptr noalias noundef returned align 16 dereferenceable(576) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder9configure17h117425fae8042646E(ptr noalias noundef nonnull align 16 dereferenceable(576) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5regex7Builder6syntax17h5dc90d591ca22697E(ptr noalias noundef returned align 16 dereferenceable(576) %0, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder6syntax17h7210994b4457fc91E(ptr noalias noundef nonnull align 16 dereferenceable(576) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5regex7Builder8thompson17h722d274a8126c265E(ptr noalias noundef returned align 16 dereferenceable(576) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder8thompson17hbac640fd8e60c4bdE(ptr noalias noundef nonnull align 16 dereferenceable(576) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN14regex_automata3dfa9automaton19fmt_state_indicator17h1dbe017535bda818E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(800) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !alias.scope !276
  %i.d = icmp eq i32 %i.c, %2
  br i1 %i.d, label %.split110, label %bb.c

.split:                                           ; preds = %bb.a
  %.val13 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %.val14, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !5, !noalias !277, !nonnull !5 ; 2 uses
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 1), !noalias !277, !inline_history !19
  br i1 %i.h, label %bb.i, label %.split117

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val1.i = load i32, ptr %i.j, align 4
  %.not.i.i = icmp ule i32 %.val.i, %2
  %i.k = icmp ule i32 %2, %.val1.i
  %.sroa.0.0.i.i39 = select i1 %.not.i.i, i1 %i.k, i1 false
  br i1 %.sroa.0.0.i.i39, label %bb.e, label %bb.d

.split110:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %.val15 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !5, !noalias !278, !nonnull !5
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 2), !noalias !278, !inline_history !19
  br i1 %i.o, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i45 = load i32, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val1.i46 = load i32, ptr %i.q, align 4
  %.not.i.i47 = icmp ule i32 %.val.i45, %2
  %i.r = icmp ule i32 %2, %.val1.i46
  %.sroa.0.0.i.i49 = select i1 %.not.i.i47, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i60 = load i32, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val1.i61 = load i32, ptr %i.t, align 4
  %.not.i.i62 = icmp ule i32 %.val.i60, %2
  %i.u = icmp ule i32 %2, %.val1.i61
  %.sroa.0.0.i.i64 = select i1 %.not.i.i62, i1 %i.u, i1 false ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %.val23 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val24, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !5, !noalias !5, !nonnull !5 ; 4 uses
  br i1 %.sroa.0.0.i.i49, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i50 = load i32, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val1.i51 = load i32, ptr %i.z, align 4
  %.not.i.i52 = icmp ule i32 %.val.i50, %2
  %i.aa = icmp ule i32 %2, %.val1.i51
  %.sroa.0.0.i.i54 = select i1 %.not.i.i52, i1 %i.aa, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val28 = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.val27 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !5, !noalias !5, !nonnull !5 ; 2 uses
  br i1 %.sroa.0.0.i.i54, label %.split116, label %.split115

bb.f:                                             ; preds = %bb.d
  br i1 %.sroa.0.0.i.i64, label %.split112, label %.split111

bb.g:                                             ; preds = %bb.d
  br i1 %.sroa.0.0.i.i64, label %.split114, label %.split113

.split111:                                        ; preds = %bb.f
  %i.ae = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 2), !noalias !279, !inline_history !19
  br i1 %i.ae, label %bb.i, label %bb.h

.split112:                                        ; preds = %bb.f
  %i.af = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 2), !noalias !280, !inline_history !19
  br i1 %i.af, label %bb.i, label %bb.h

.split113:                                        ; preds = %bb.g
  %i.ag = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @11, i64 noundef 2), !noalias !281, !inline_history !19
  br i1 %i.ag, label %bb.i, label %bb.h

.split114:                                        ; preds = %bb.g
  %i.ah = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 2), !noalias !282, !inline_history !19
  br i1 %i.ah, label %bb.i, label %bb.h

.split115:                                        ; preds = %bb.e
  %i.ai = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 2), !noalias !283, !inline_history !19
  br i1 %i.ai, label %bb.i, label %bb.h

.split116:                                        ; preds = %bb.e
  %i.aj = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 2), !noalias !284, !inline_history !19
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split117, %.split116, %.split115, %.split114, %.split113, %.split112, %.split111, %.split110
  br label %bb.i

.split117:                                        ; preds = %.split
  %i.ak = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 1), !noalias !285, !inline_history !19
  br i1 %i.ak, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.split117, %.split116, %.split115, %.split114, %.split113, %.split112, %.split111, %.split110, %.split, %bb.h
  %.sroa.0.0 = phi i1 [ true, %.split115 ], [ true, %.split117 ], [ false, %bb.h ], [ true, %.split116 ], [ true, %.split ], [ true, %.split110 ], [ true, %.split111 ], [ true, %.split112 ], [ true, %.split113 ], [ true, %.split114 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef align 8 ptr @_ZN14regex_automata3dfa9automaton34skip_empty_utf8_splits_overlapping17he3cb76381ed108b9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !range !20, !noundef !5
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !5, !align !7
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %.sroa.5.0.copyload, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !7, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.5.0.copyload
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %or.cond = icmp sgt i8 %i.n, -65
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %.sroa.5.0.copyload, %i.i
  br i1 %i.o, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 0, ptr %1, align 8
  br label %.loopexit

bb.g:                                             ; preds = %.preheader, %bb.l
  %.sroa.012.0 = phi i64 [ %.sroa.59.0.copyload, %bb.l ], [ %.sroa.5.0.copyload, %.preheader ] ; 3 uses
  %i.p = icmp ult i64 %.sroa.012.0, %i.f
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.012.0
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  %or.cond26 = icmp sgt i8 %i.r, -65
  br i1 %or.cond26, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.012.0, %i.f
  br i1 %i.s, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.t = tail call noundef align 8 ptr @_ZN14regex_automata3dfa6search20find_overlapping_fwd17h9cf5a51bd96240a1E(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload = load i64, ptr %1, align 8
  %i.u = trunc nuw i64 %.sroa.08.0.copyload to i1
  br i1 %i.u, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.sroa.59.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.i, %bb.h, %bb.e, %bb.f, %bb.d, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.k ], [ %i.t, %bb.j ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4util10sparse_set10SparseSets3new17h0b49be39fc97afd5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 12 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !292
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.f, align 8, !noalias !292
  store i64 0, ptr %i.d, align 8, !noalias !292
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !292
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !292
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !292
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !292
  %i.h = icmp ult i64 %1, 2147483648
  br i1 %i.h, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !293
  store ptr @18, ptr %i.b, align 8, !noalias !293
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !293
  store ptr @20, ptr %i.c, align 8, !noalias !293
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !293
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.j, align 8, !noalias !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.k, align 8, !noalias !293
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.l, align 8, !noalias !293
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27
          to label %.noexc.i unwind label %bb.d, !noalias !292

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h18ac95515b091e12E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %1, i32 noundef 0)
          to label %.noexc6.i unwind label %bb.d, !noalias !292

.noexc6.i:                                        ; preds = %bb.c
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h18ac95515b091e12E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %1, i32 noundef 0)
          to label %bb.f unwind label %bb.d, !noalias !292

bb.d:                                             ; preds = %.noexc6.i, %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a35cd1a8bce5aE"(ptr noalias noundef align 8 dereferenceable(56) %i.d) #29
          to label %common.resume unwind label %bb.e, !noalias !292

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !292
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.q, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.o, align 8, !noalias !294
  store i64 0, ptr %i.a, align 8, !noalias !294
end_hunk_0
begin_hunk_1_@"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5552818d484ed148E":bb.a
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbab190ec91e2bf0E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !16, !noundef !5
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf8d4d8c82e0233c0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$regex_automata..hybrid..dfa..DFA$u20$as$u20$core..fmt..Debug$GT$3fmt17hd26f5908463033b0E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.h, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @88, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @89, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @90, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @91, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @92, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @93, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @87, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17ha509067079bc2e31E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @102, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @101, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @104, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d3fd9550f8e9ae6E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @105, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @106, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @107, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @107, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @107, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @108, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @107, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @109, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @107, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @110, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.a, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @111, ptr %i.ag, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17ha509067079bc2e31E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @122, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @121, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ah
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = load i8, ptr %0, align 2, !range !10, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %.val5 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !1914, !nonnull !5
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @129, i64 noundef 3), !noalias !1914, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.k, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN76_$LT$regex_automata..util..escape..DebugByte$u20$as$u20$core..fmt..Debug$GT$3fmt17h94caa00428537c73E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @128, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.o, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN75_$LT$regex_automata..util..alphabet..BitSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h64b78fb4293cc4baE"(ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter9debug_set17hab3600c5d5c9eb35E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.sroa.5.011 = phi i8 [ 0, %bb.a ], [ %i.d, %bb.e ] ; 5 uses
  %i.c = icmp eq i8 %.sroa.5.011, -1
  %i.d = add nuw i8 %.sroa.5.011, 1
  store i8 %.sroa.5.011, ptr %i.a, align 1
  %.lobit.i = lshr i8 %.sroa.5.011, 7
  %i.e = zext nneg i8 %.lobit.i to i64
  %i.f = and i8 %.sroa.5.011, 127
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.h = load i128, ptr %i.g, align 16, !alias.scope !1917, !noundef !5
  %i.i = zext nneg i8 %i.f to i128
  %i.j = shl nuw i128 1, %i.i
  %i.k = and i128 %i.h, %i.j
  %.not = icmp eq i128 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders8DebugSet6finish17h9302e2ff6a1683afE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l

bb.d:                                             ; preds = %bb.b
  %i.m = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugSet5entry17h861b15a61498341aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @130) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  br i1 %i.c, label %bb.c, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$regex_automata..hybrid..id..LazyStateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h7cdca63c7ddf4cfcE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$regex_automata..util..alphabet..ByteSet$u20$as$u20$core..fmt..Debug$GT$3fmt17hd8866a31af69e6e1E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @134, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @135, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @133)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$regex_automata..dfa..regex..Builder$u20$as$u20$core..default..Default$GT$7default17h0066c51c8fbb8ba1E"(ptr dead_on_unwind noalias noundef writable sret([576 x i8]) align 16 captures(address) dereferenceable(576) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN78_$LT$regex_automata..hybrid..error..CacheError$u20$as$u20$core..fmt..Debug$GT$3fmt17h778e58d2ccca7f18E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 10, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$regex_automata..meta..error..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h753ad6629e7d7d98E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %0, align 8, !range !1920, !noundef !5
  %i.e = icmp eq i64 %i.d, -9223372036854775807
  br i1 %i.e, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %.val5 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !1921, !nonnull !5
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 18), !noalias !1921, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i32, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @138, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.p, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit11 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$regex_automata..meta..error..RetryError$u20$as$u20$core..fmt..Display$GT$3fmt17hcd9df802cf17971dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1930
  store ptr %i.e, ptr %i.a, align 8, !noalias !1930
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1930
  store ptr @167, ptr %i.b, align 8, !noalias !1930
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !1930
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8, !noalias !1930
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.h, align 8, !noalias !1930
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.i, align 8, !noalias !1930
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !1929, !noalias !1931, !nonnull !5, !noundef !5
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1929, !noalias !1931, !nonnull !5, !noundef !5
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !1929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1930
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.l, align 8, !alias.scope !1932, !nonnull !5, !noundef !5
  %.val.i1 = load ptr, ptr %1, align 8, !alias.scope !1932, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !5, !noalias !1933, !nonnull !5
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 1 %.val.i1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 48), !noalias !1933, !inline_history !1934
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa560a315256f4f9E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [4 x i8], align 2                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 255
  %i.l = load i8, ptr %i.k, align 1, !noundef !5  ; 3 uses
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %.split

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val62 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %.val61 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.val62, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !noalias !1947, !nonnull !5
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val61, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @142, i64 noundef 25), !noalias !1947, !inline_history !19
  br label %.loopexit

.split:                                           ; preds = %bb.a
  %.val59 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val60, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !1948, !nonnull !5 ; 2 uses
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 12), !noalias !1948, !inline_history !19
  br i1 %i.u, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.split
  %i.v = zext i8 %i.l to i64
  %i.w = add nuw nsw i64 %i.v, 2                  ; 2 uses
  %i.x = zext i8 %i.l to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %.sroa.01.0.insert.insert.i.i.i = add nuw nsw i32 %i.y, 256
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.split114
  %i.am = phi ptr [ %i.bu, %.split114 ], [ %i.t, %.preheader ]
  %.sroa.9.0 = phi i64 [ %i.an, %.split114 ], [ 0, %.preheader ] ; 4 uses
  %i.an = add i64 %.sroa.9.0, 1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.w                 ; 3 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = icmp ult i64 %.sroa.9.0, %i.w
  br i1 %i.ap, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i": ; preds = %bb.c
  %i.aq = trunc nuw nsw i64 %.sroa.9.0 to i32
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit": ; preds = %bb.b, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"
  %.sroa.4.sroa.0.0.i.ph.i = phi i32 [ %i.aq, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ], [ %.sroa.01.0.insert.insert.i.i.i, %bb.b ]
  %.sroa.4.sroa.0.0.i.ph.i.fr = freeze i32 %.sroa.4.sroa.0.0.i.ph.i ; 3 uses
  %.not45 = icmp eq i64 %.sroa.9.0, 0
  br i1 %.not45, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72, label %.split113

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @145, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.au, align 8
  %i.av = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr nonnull %.val59, ptr nonnull %.val60, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72, %.split113, %.split114, %bb.n, %.split, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread"
  %.sroa.0.0.shrunk = phi i1 [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.av, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread" ], [ true, %.split ], [ true, %bb.n ], [ true, %.split114 ], [ true, %.split113 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72 ]
  ret i1 %.sroa.0.0.shrunk

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72: ; preds = %.split113, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = and i32 %.sroa.4.sroa.0.0.i.ph.i.fr, 255
  %.sroa.542.0.extract.shift = lshr i32 %.sroa.4.sroa.0.0.i.ph.i.fr, 8
  %storemerge.in = select i1 %i.ao, i32 %.sroa.542.0.extract.shift, i32 %i.aw
  %storemerge = zext nneg i32 %storemerge.in to i64
  store i64 %storemerge, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.417.0..sroa_idx, align 8
  store ptr @148, ptr %i.j, align 8
  store i64 2, ptr %i.z, align 8
  store ptr null, ptr %i.aa, align 8
  store ptr %i.h, ptr %i.ab, align 8
  store i64 1, ptr %i.ac, align 8
  %i.ax = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ax, label %.loopexit, label %bb.d

.split113:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit"
  %i.ay = call noundef zeroext i1 %i.am(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 2), !noalias !1949, !inline_history !19
  br i1 %i.ay, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72
  %.sroa.4.0.extract.trunc.i.i.i = trunc i32 %.sroa.4.sroa.0.0.i.ph.i.fr to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %bb.d
  %.sroa.16.0 = phi i64 [ 0, %bb.d ], [ %.sroa.16.5, %bb.m ] ; 6 uses
  %.sroa.095.0 = phi i64 [ 2, %bb.d ], [ %.sroa.095.3, %bb.m ] ; 6 uses
  br i1 %i.ao, label %.split.us.i.us.preheader.i, label %.split.preheader.i.i.preheader

.split.preheader.i.i.preheader:                   ; preds = %bb.e
  %umax.i.i140 = call i64 @llvm.umax.i64(i64 %.sroa.16.0, i64 256) ; 2 uses
  %exitcond.not.i.i133141 = icmp ugt i64 %.sroa.16.0, 255
  br i1 %exitcond.not.i.i133141, label %.split22.us.i.i, label %.lr.ph

.split.us.i.us.preheader.i:                       ; preds = %bb.e
  %or.cond.i = icmp ult i64 %.sroa.16.0, 257
  br i1 %or.cond.i, label %select.unfold.us.peel.i, label %.loopexit.i

select.unfold.us.peel.i:                          ; preds = %.split.us.i.us.preheader.i
  %.sroa.095.1.extract.shift104 = lshr i64 %.sroa.095.0, 8
  %i.az = and i64 %.sroa.095.0, 255
  %.not68.us.peel.i = icmp eq i64 %i.az, 2
  br i1 %.not68.us.peel.i, label %.loopexit.i, label %.split98.us.i

.lr.ph:                                           ; preds = %.split.preheader.i.i.preheader, %.split.preheader.i.i
  %umax.i.i144 = phi i64 [ %umax.i.i, %.split.preheader.i.i ], [ %umax.i.i140, %.split.preheader.i.i.preheader ] ; 2 uses
  %.sroa.095.1143 = phi i64 [ %storemerge.i, %.split.preheader.i.i ], [ %.sroa.095.0, %.split.preheader.i.i.preheader ] ; 5 uses
  %.sroa.16.1142 = phi i64 [ %i.bb, %.split.preheader.i.i ], [ %.sroa.16.0, %.split.preheader.i.i.preheader ] ; 2 uses
  br label %bb.f

.split.i.i:                                       ; preds = %bb.f
  %exitcond.not.i.i = icmp eq i64 %i.bb, %umax.i.i144
  br i1 %exitcond.not.i.i, label %.split22.us.i.i, label %bb.f

.split22.us.i.i:                                  ; preds = %.split.preheader.i.i, %.split.i.i, %.split.preheader.i.i.preheader
  %.sroa.16.1.lcssa = phi i64 [ %.sroa.16.1142, %.split.i.i ], [ %.sroa.16.0, %.split.preheader.i.i.preheader ], [ %i.bb, %.split.preheader.i.i ]
  %.sroa.095.1.lcssa = phi i64 [ %.sroa.095.1143, %.split.i.i ], [ %.sroa.095.0, %.split.preheader.i.i.preheader ], [ %storemerge.i, %.split.preheader.i.i ]
  %umax.i.i.lcssa = phi i64 [ %umax.i.i144, %.split.i.i ], [ %umax.i.i140, %.split.preheader.i.i.preheader ], [ %umax.i.i, %.split.preheader.i.i ]
  %i.ba = icmp ult i64 %.sroa.16.1.lcssa, 257
  %spec.select = select i1 %i.ba, i64 257, i64 %umax.i.i.lcssa
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph, %.split.i.i
  %.sroa.16.2134 = phi i64 [ %.sroa.16.1142, %.lr.ph ], [ %i.bb, %.split.i.i ] ; 6 uses
  %i.bb = add i64 %.sroa.16.2134, 1               ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.16.2134
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1950, !noundef !5
  %.not.i.i = icmp eq i8 %i.bd, %.sroa.4.0.extract.trunc.i.i.i
  br i1 %.not.i.i, label %select.unfold.i, label %.split.i.i

select.unfold.i:                                  ; preds = %bb.f
  %i.be = and i64 %.sroa.095.1143, 255
  %.not68.i = icmp eq i64 %i.be, 2
  br i1 %.not68.i, label %bb.h, label %bb.g

.loopexit.i:                                      ; preds = %select.unfold.us.peel.i, %.split22.us.i.i, %.split.us.i.us.preheader.i
  %.sroa.16.4 = phi i64 [ %spec.select, %.split22.us.i.i ], [ %.sroa.16.0, %.split.us.i.us.preheader.i ], [ 257, %select.unfold.us.peel.i ]
  %.sroa.095.2 = phi i64 [ %.sroa.095.1.lcssa, %.split22.us.i.i ], [ %.sroa.095.0, %.split.us.i.us.preheader.i ], [ 72057598349672449, %select.unfold.us.peel.i ] ; 3 uses
  %.sroa.095.1.extract.shift101 = lshr i64 %.sroa.095.2, 8
  %.sroa.095.0.insert.mask = and i64 %.sroa.095.2, -256
  %.sroa.095.0.insert.insert = or disjoint i64 %.sroa.095.0.insert.mask, 2
  br label %"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit"

bb.g:                                             ; preds = %select.unfold.i
  %.sroa.095.1.extract.shift = lshr i64 %.sroa.095.1143, 8 ; 2 uses
  %.sroa.095.1.extract.trunc = trunc nuw i64 %.sroa.095.1.extract.shift to i56 ; 3 uses
  %i.bf = and i56 %.sroa.095.1.extract.trunc, 16777216
  %.not71.i = icmp eq i56 %i.bf, 0
  %.sroa.461.0.extract.shift69.i = lshr i56 %.sroa.095.1.extract.trunc, 32
  %i.bg = and i56 %.sroa.461.0.extract.shift69.i, 255
  %sum.shift.i = lshr i56 %.sroa.095.1.extract.trunc, 40
  %.sink.i = select i1 %.not71.i, i56 %i.bg, i56 %sum.shift.i
  %narrow.i = add nuw nsw i56 %.sink.i, 1
  %i.bh = zext nneg i56 %narrow.i to i64
  %i.bi = and i64 %.sroa.16.2134, 255
  %.not73.not.i = icmp eq i64 %i.bi, %i.bh
  br i1 %.not73.not.i, label %bb.i, label %.split98.us.i

bb.h:                                             ; preds = %select.unfold.i
  %.sroa.4.0.insert.insert.i = mul nuw i64 %.sroa.16.2134, 1099511628032
  br label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.i, %bb.h
  %storemerge.i = phi i64 [ %.sroa.4.0.insert.insert.i, %bb.h ], [ %.sroa.052.0.insert.insert.i, %bb.i ] ; 2 uses
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 256) ; 2 uses
  %exitcond.not.i.i133 = icmp ugt i64 %i.bb, 255
  br i1 %exitcond.not.i.i133, label %.split22.us.i.i, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %.sroa.655.0.insert.shift.i = shl nuw i64 %.sroa.16.2134, 40
  %i.bj = and i64 %.sroa.095.1143, 4294967295
  %.sroa.052.0.insert.insert.i = or disjoint i64 %.sroa.655.0.insert.shift.i, %i.bj
  br label %.split.preheader.i.i

end_hunk_1
begin_hunk_2_@"_ZN80_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa560a315256f4f9E":bb.a
  %i.bm = icmp eq i8 %i.bk, %.sroa.043.0.extract.trunc
  %i.bn = trunc i64 %.sroa.5.sroa.0.0.i to i8
  %i.bo = lshr i64 %.sroa.5.sroa.0.0.i, 32
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = lshr i64 %.sroa.5.sroa.0.0.i, 8
  %i.br = trunc i64 %i.bq to i16
  %i.bs = lshr i64 %.sroa.5.sroa.0.0.i, 40
  %i.bt = trunc nuw i64 %i.bs to i16
  br i1 %i.bm, label %bb.k, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87

.split114:                                        ; preds = %"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit"
  %i.bu = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !1951, !nonnull !5 ; 2 uses
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 1), !noalias !1951, !inline_history !19
  br i1 %i.bv, label %.loopexit, label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.bw = trunc i64 %.sroa.0.0.i to i1
  br i1 %i.bw, label %.split116, label %bb.l

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87: ; preds = %.split116, %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.435.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ad, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.439.0..sroa_idx, align 8
  store ptr @151, ptr %i.c, align 8
  store i64 2, ptr %i.ae, align 8
  store ptr null, ptr %i.af, align 8
  store ptr %i.b, ptr %i.ag, align 8
  store i64 2, ptr %i.ah, align 8
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bx, label %bb.n, label %bb.m

.split116:                                        ; preds = %bb.k
  call void @llvm.assume(i1 %i.bl)
  %i.by = icmp eq i16 %i.br, %i.bt
  br i1 %i.by, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp eq i8 %.sroa.043.0.extract.trunc, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i8 %i.bn, %i.bp
  br i1 %i.ca, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92: ; preds = %bb.l, %.split116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.431.0..sroa_idx, align 8
  store ptr @128, ptr %i.e, align 8
  store i64 1, ptr %i.ai, align 8
  store ptr null, ptr %i.aj, align 8
  store ptr %i.d, ptr %i.ak, align 8
  store i64 1, ptr %i.al, align 8
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.n:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..util..sparse_set..SparseSet$u20$as$u20$core..fmt..Debug$GT$3fmt17hd28f8ef7f6b93804E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !1952

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0f0d7b38e10a9334E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN4core3fmt9Formatter11debug_tuple17h56f4f7e7cf4db9ecE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @152, i64 noundef 9)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = invoke noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17h6bec910804d66a80E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h19c0455a7e2f40cfE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd01970aed9f1e853E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb999820c28fdf921E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE.exit": ; preds = %bb.g
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb999820c28fdf921E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.l

bb.j:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$regex_automata..dfa..automaton..StartError$u20$as$u20$core..fmt..Display$GT$3fmt17had191af9a36d1b1cE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = load i32, ptr %0, align 4, !range !1957, !noundef !5
  switch i32 %i.g, label %default.unreachable [
    i32 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i32 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24
    i32 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29
  ]

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.i, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN76_$LT$regex_automata..util..escape..DebugByte$u20$as$u20$core..fmt..Debug$GT$3fmt17h94caa00428537c73E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @157, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.m, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.o = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19 ], [ %i.w, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24 ], [ %i.af, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29 ], [ %i.o, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ]
  ret i1 %.sroa.0.0.in

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %.val11 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.val12, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !5, !noalias !1958, !nonnull !5
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @158, i64 noundef 84), !noalias !1958, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %.val9 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !5, !noalias !1959, !nonnull !5
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 82), !noalias !1959, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.z = zext i32 %i.y to i64
  store i64 %i.z, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @162, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.ad, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  %i.af = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$regex_automata..hybrid..id..LazyStateIDError$u20$as$u20$core..fmt..Debug$GT$3fmt17h4622874dfec9bb0dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @164, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$regex_automata..hybrid..regex..Builder$u20$as$u20$core..default..Default$GT$7default17h4b7da0a7f09015b2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([592 x i8]) align 16 captures(none) dereferenceable(592) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 12 uses
  %i.c = alloca [592 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1966
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 3, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1966
  store <4 x i8> splat (i8 2), ptr %i.d, align 16, !noalias !1966
  store i128 0, ptr %i.b, align 16, !noalias !1966
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 2, ptr %i.e, align 4, !noalias !1966
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.f, align 16, !noalias !1966
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 2, ptr %i.g, align 1, !noalias !1966
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.h, align 16, !noalias !1966
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %i.i, align 16, !noalias !1966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1966
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a)
          to label %_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE.exit unwind label %bb.b, !noalias !1966

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #29
          to label %bb.d unwind label %bb.c, !noalias !1966

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1966
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !1967
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.l, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %0, ptr noundef nonnull align 16 dereferenceable(592) %i.c, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$regex_automata..meta..error..RetryFailError$u20$as$u20$core..fmt..Display$GT$3fmt17h50b3e7d11632f26eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @167, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.h = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$regex_automata..hybrid..id..LazyStateIDError$u20$as$u20$core..fmt..Display$GT$3fmt17hca4d0227454bef10E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %0, align 8, !noundef !5
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hffb2eb0e5008fca9E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @168, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @171, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ddc840e32a3ecc9E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9444b2a6c38aea4fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd12e84f322f05b1eE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit", label %.lr.ph.i

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i", %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24d35245379a1247E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i"
  %.sroa.0.09.i = phi i64 [ %i.o, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.o = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1985, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1986
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i"

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i": ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i"
  %.sroa.0.110.i = phi i64 [ %i.w, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.w = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !1990, !nonnull !5, !noundef !5
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !1991
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i"

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i": ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h
  br i1 %i.aa, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24d35245379a1247E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.t
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define void @"_ZN86_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..default..Default$GT$7default17h7e71e815c5ccafcaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 1 captures(none) dereferenceable(256) initializes((0, 256)) %0) unnamed_addr #12 {
vector.ph:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.b, align 1
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.d, align 1
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.f, align 1
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.h, align 1
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.j, align 1
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.l, align 1
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.n, align 1
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.o, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$regex_automata..meta..error..RetryQuadraticError$u20$as$u20$core..fmt..Display$GT$3fmt17h907001f900c0f810E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !noalias !1994, !nonnull !5
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 48), !noalias !1994, !inline_history !19
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$regex_automata..nfa..thompson..error..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17hd0819cd292a34581E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = load i64, ptr %0, align 8, !range !24, !noundef !5
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 -9223372036854775808)
  %i.q = and i64 %i.p, 9223372036854775807
  switch i64 %i.q, label %default.unreachable [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit53
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit58
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit63
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit68
    i64 7, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit73
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %.val37 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.val38, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !2003, !nonnull !5
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @176, i64 noundef 19), !noalias !2003, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %.val35 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val36, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !5, !noalias !2004, !nonnull !5
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @177, i64 noundef 25), !noalias !2004, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %.val33 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !5, !noalias !2005, !nonnull !5
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 34), !noalias !2005, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit53: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.415.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.af, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @181, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 2, ptr %i.aj, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit58: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.411.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.ao, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.423.0..sroa_idx, align 8
  store ptr @183, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %i.as, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit63: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @185, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.az, align 8
  %.val27 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bb = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit68: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h464f497bdd26b296E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @188, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.bg, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5
  %i.bi = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit73: ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.val24, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !noalias !2006, !nonnull !5
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 64), !noalias !2006, !inline_history !19
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit73, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit68, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit63, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit58, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit53, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43 ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit53 ], [ %i.au, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit58 ], [ %i.bb, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit63 ], [ %i.bi, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit68 ], [ %i.bm, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit73 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN88_$LT$regex_automata..nfa..thompson..compiler..Compiler$u20$as$u20$core..clone..Clone$GT$5clone17h0e3660579c9c1c77E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [160 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [168 x i8], align 8               ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [120 x i8], align 8               ; 16 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.w = load i64, ptr %1, align 8, !range !15, !alias.scope !2033, !noalias !2034, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i = load i64, ptr %i.x, align 8, !alias.scope !2033, !noalias !2034
  %i.y = load <4 x i8>, ptr %i.v, align 2, !alias.scope !2033, !noalias !2034
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !10, !alias.scope !2033, !noalias !2034, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !2033, !noalias !2034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !2035, !noundef !5 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 9223372036854775807
  br i1 %i.af, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #27, !noalias !2035
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ag = add nuw nsw i64 %i.ae, 1
  store i64 %i.ag, ptr %i.ad, align 8, !noalias !2035
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = load i32, ptr %i.ah, align 8, !range !2037, !alias.scope !2036, !noalias !2038, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !2036, !noalias !2038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2039
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdedfdb12ced3dab1E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %.noexc.i unwind label %bb.i, !noalias !2035

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2039
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfda75f7c6c80c594E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.f unwind label %bb.e, !noalias !2038

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.an, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..builder..State$GT$$GT$17he347002d22eb2273E"(ptr noalias noundef align 8 dereferenceable(24) %i.p) #29
          to label %bb.j unwind label %bb.h, !noalias !2038

bb.e:                                             ; preds = %.noexc.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2039
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haed57c3e73db3e7eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60f56c441f9db9a3E.exit" unwind label %bb.g, !noalias !2038

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #29
          to label %bb.d unwind label %bb.h, !noalias !2038

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !2038
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.j ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %.pn.i.i, %bb.d ]
  %i.as = load i64, ptr %i.ad, align 8, !noalias !2035, !noundef !5
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.ad, align 8, !noalias !2035
  br label %common.resume

"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60f56c441f9db9a3E.exit": ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = trunc nuw i32 %i.ai to i1
  %.sroa.5.0.i.i = select i1 %i.av, i32 %i.ak, i32 undef
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2036, !noalias !2038, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.az = load i8, ptr %i.ay, align 8, !range !10, !alias.scope !2036, !noalias !2038, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.bb = load i8, ptr %i.ba, align 1, !range !10, !alias.scope !2036, !noalias !2038, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.bd = load i8, ptr %i.bc, align 2, !alias.scope !2036, !noalias !2038, !noundef !5
  %i.be = load i64, ptr %i.au, align 8, !range !9, !alias.scope !2036, !noalias !2038, !noundef !5 ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !2036, !noalias !2038
  %.sroa.52.0.i.i = select i1 %i.bf, i64 %i.bh, i64 undef
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2039
  store i64 0, ptr %i.s, align 8, !alias.scope !2035
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.be, ptr %i.bi, align 8, !alias.scope !2035
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.52.0.i.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !2035
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store i32 %i.ai, ptr %.sroa.87.0..sroa_idx.i, align 8, !alias.scope !2035
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  store i32 %.sroa.5.0.i.i, ptr %.sroa.98.0..sroa_idx.i, align 4, !alias.scope !2035
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i64 %i.ax, ptr %.sroa.109.0..sroa_idx.i, align 8, !alias.scope !2035
  %.sroa.1110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i8 %i.az, ptr %.sroa.1110.0..sroa_idx.i, align 8, !alias.scope !2035
  %.sroa.1211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 113
  store i8 %i.bb, ptr %.sroa.1211.0..sroa_idx.i, align 1, !alias.scope !2035
  %.sroa.1312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 114
  store i8 %i.bd, ptr %.sroa.1312.0..sroa_idx.i, align 2, !alias.scope !2035
  %i.bj = load i64, ptr %i.ad, align 8, !noalias !2035, !noundef !5
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.ad, align 8, !noalias !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !2040, !noundef !5 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 9223372036854775807
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60f56c441f9db9a3E.exit"
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60f56c441f9db9a3E.exit"
  %i.bo = add nuw nsw i64 %i.bm, 1
  store i64 %i.bo, ptr %i.bl, align 8, !noalias !2040
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2042
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.br = load i16, ptr %i.bq, align 8, !alias.scope !2041, !noalias !2043, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !2041, !noalias !2043, !noundef !5
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb769572cbddef5f0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp)
          to label %.noexc.i4 unwind label %bb.o, !noalias !2040

.noexc.i4:                                        ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i16 %i.br, ptr %i.bu, align 8, !noalias !2042
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !2042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2042
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 208
end_hunk_2
