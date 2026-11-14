Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN8rusqlite9statement9Statement9query_row17h9c84bbd586885a63E:bb.a
  store ptr %.sroa.6.1.ph, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9, i64 48, i1 false)
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %.val = load i64, ptr %4, align 8, !noundef !37 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9965
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc40 unwind label %bb.i

.noexc40:                                         ; preds = %bb.k
  %i.y = load i64, ptr %i.a, align 8, !range !45, !noalias !9965, !noundef !37
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !39, !noalias !9965, !noundef !37 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i", !prof !46

bb.l:                                             ; preds = %.noexc40
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !9965
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ab, i64 %i.ad) #33
          to label %.noexc41 unwind label %bb.i

.noexc41:                                         ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i": ; preds = %.noexc40
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !9965, !nonnull !37, !noundef !37
  %i.af = icmp ule i64 %.val, %i.ab
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9965
  store i64 %i.ab, ptr %i.d, align 8, !noalias !9965
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !9965
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !noalias !9965
  %.not3.i = icmp eq i64 %.val, 0
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

._crit_edge.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf2b94af5bd608e68E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !9966
  store i64 -9223372036854775783, ptr %0, align 8, !alias.scope !9964
  br label %"_ZN4anki7backend7dbproxy12db_query_row28_$u7b$$u7b$closure$u7d$$u7d$17hbbcdb0927db239ceE.exit"

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf2b94af5bd608e68E.exit.i", %.lr.ph.i
  %.sroa.06.02.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf2b94af5bd608e68E.exit.i" ] ; 2 uses
  %i.ak = add nuw i64 %.sroa.06.02.i, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9965
  invoke void @_ZN8rusqlite3row3Row3get17h01a8d11dd1701c2cE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, i64 noundef %.sroa.06.02.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156)
          to label %bb.o unwind label %bb.n, !noalias !9964

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.u, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.as, %bb.u ]
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$anki..backend..dbproxy..SqlValue$GT$$GT$17h9e93fd61c4936bc7E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %.body unwind label %bb.w, !noalias !9964

bb.o:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.c, align 8, !range !60, !noalias !9965, !noundef !37 ; 2 uses
  %.not.i38 = icmp eq i64 %i.am, -9223372036854775783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !9965
  br i1 %.not.i38, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.315.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.612.0..sroa_idx.i, i64 24, i1 false), !noalias !9966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9965
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.214.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !9966
  store i64 %i.am, ptr %0, align 8, !alias.scope !9964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6b6771313d0aa7abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$anki..backend..dbproxy..SqlValue$GT$$GT$17h9e93fd61c4936bc7E.exit.i" unwind label %bb.q, !noalias !9964

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0540544e59c48bfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.r, !noalias !9964

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !9964
  unreachable

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$anki..backend..dbproxy..SqlValue$GT$$GT$17h9e93fd61c4936bc7E.exit.i": ; preds = %bb.p
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0540544e59c48bfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4anki7backend7dbproxy12db_query_row28_$u7b$$u7b$closure$u7d$$u7d$17hbbcdb0927db239ceE.exit" unwind label %bb.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !9965
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.ap = load i64, ptr %i.ah, align 8, !alias.scope !9967, !noalias !9965, !noundef !37 ; 3 uses
  %i.aq = load i64, ptr %i.d, align 8, !range !38, !alias.scope !9967, !noalias !9965, !noundef !37
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf2b94af5bd608e68E.exit.i"

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h7eb6d728936fcbf3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf2b94af5bd608e68E.exit.i" unwind label %bb.u, !noalias !9968

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..backend..dbproxy..SqlValue$GT$17hcf435222cbeed6faE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #31
          to label %.body.i unwind label %bb.v, !noalias !9964

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !9964
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf2b94af5bd608e68E.exit.i": ; preds = %bb.t, %bb.s
  %i.au = load ptr, ptr %i.ag, align 8, !alias.scope !9967, !noalias !9965, !nonnull !37, !noundef !37
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !9964
  %i.aw = add i64 %i.ap, 1
  store i64 %i.aw, ptr %i.ah, align 8, !noalias !9965
  %exitcond.not.i39 = icmp eq i64 %i.ak, %.val
  br i1 %exitcond.not.i39, label %._crit_edge.i, label %bb.m

bb.w:                                             ; preds = %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !9964
  unreachable

"_ZN4anki7backend7dbproxy12db_query_row28_$u7b$$u7b$closure$u7d$$u7d$17hbbcdb0927db239ceE.exit": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$anki..backend..dbproxy..SqlValue$GT$$GT$17h9e93fd61c4936bc7E.exit.i", %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.x:                                             ; preds = %"_ZN4anki7backend7dbproxy12db_query_row28_$u7b$$u7b$closure$u7d$$u7d$17hbbcdb0927db239ceE.exit", %bb.j
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef align 8 dereferenceable(16) %i.h)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.z:                                             ; preds = %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN91_$LT$anki..notetype..schema11..FieldRequirementKindSchema11$u20$as$u20$core..fmt..Debug$GT$3fmt17hc738a9bd38ffd296E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !9969 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !66, !noundef !37 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN91_$LT$anki..notetype..schema11..FieldRequirementKindSchema11$u20$as$u20$core..fmt..Debug$GT$3fmt17hc738a9bd38ffd296E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN91_$LT$anki..notetype..schema11..FieldRequirementKindSchema11$u20$as$u20$core..fmt..Debug$GT$3fmt17hc738a9bd38ffd296E.455", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 dereferenceable(120) ptr @"_ZN92_$LT$tracing_core..callsite..DefaultCallsite$u20$as$u20$tracing_core..callsite..Callsite$GT$8metadata17h548eacee9a0fa426E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #12 !guid !9970 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !37, !align !41, !noundef !37
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @"_ZN93_$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h53eda68ca64d3f76E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9971 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h0a4e3d8d9a1e00e9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @99, i64 noundef 19, i64 noundef 2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN93_$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hf9a5aead655d29e4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9988 {
bb.a:
  %i.a = alloca [40 x i8], align 2                ; 14 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9989
  call void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @99, i64 noundef 19, i64 noundef 2)
  %i.d = load i8, ptr %i.b, align 8, !range !66, !noalias !9989, !noundef !37 ; 2 uses
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !9989, !nonnull !37, !align !41, !noundef !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9989
  br label %"_ZN93_$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_167_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17h51ddf0cfee410cafE.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.516.sroa.0.0.copyload.i = load i8, ptr %.sroa.516.0..sroa_idx.i, align 1, !noalias !9989
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.617.0.copyload.i = load ptr, ptr %.sroa.617.0..sroa_idx.i, align 8, !noalias !9989 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9989
  %i.h = trunc nuw i8 %i.d to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1064) #33, !noalias !9990
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.617.0.copyload.i) ]
  %i.i = icmp eq i8 %.sroa.516.sroa.0.0.copyload.i, 1
  br i1 %i.i, label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %.sroa.617.0.copyload.i, align 8, !noalias !9990, !nonnull !37, !noundef !37
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9990
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.val9.i.i.i = load ptr, ptr %.sroa.617.0.copyload.i, align 8, !noalias !9990 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %0, align 8, !noalias !9991, !noundef !37 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9991
  call void @llvm.experimental.noalias.scope.decl(metadata !9992)
  %i.j = icmp ugt i64 %.val.i.i.i.i, 9999
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.i.i.i.3, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %.sroa.011.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 20, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i ], [ 16, %.lr.ph.i.i.i.i.i.i.i.i ], [ 12, %._crit_edge.i.i.i.i.i.i.i.i.a ], [ 8, %.lr.ph.i.i.i.i.i.i.i.i.a ], [ 4, %.lr.ph.i.i.i.i.i.i.i.i.3 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i ], [ %4, %.lr.ph.i.i.i.i.i.i.i.i ], [ %19, %._crit_edge.i.i.i.i.i.i.i.i.a ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.a ], [ %33, %.lr.ph.i.i.i.i.i.i.i.i.3 ] ; 3 uses
  %2 = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i, 99
  br i1 %2, label %bb.g, label %bb.h

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %3 = urem i64 %.val.i.i.i.i, 10000
  %4 = udiv i64 %.val.i.i.i.i, 10000              ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %3 to i16 ; 2 uses
  %5 = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %6 = shl nuw nsw i16 %5, 1
  %7 = zext nneg i16 %6 to i64
  %8 = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %9 = shl nuw nsw i16 %8, 1
  %10 = zext nneg i16 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr @734, i64 %7
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %13 = load i16, ptr %11, align 1, !noalias !9993
  store i16 %13, ptr %12, align 2, !alias.scope !9992, !noalias !9991
  %14 = getelementptr inbounds nuw i8, ptr @734, i64 %10
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %16 = load i16, ptr %14, align 1, !noalias !9993
  store i16 %16, ptr %15, align 2, !alias.scope !9992, !noalias !9991
  %17 = icmp ugt i64 %.val.i.i.i.i, 99999999
  br i1 %17, label %._crit_edge.i.i.i.i.i.i.i.i.a, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.a:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %18 = urem i64 %4, 10000
  %19 = udiv i64 %.val.i.i.i.i, 100000000         ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.1 = trunc nuw nsw i64 %18 to i16 ; 2 uses
  %20 = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.1, 100
  %21 = shl nuw nsw i16 %20, 1
  %22 = zext nneg i16 %21 to i64
  %23 = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.1, 100
  %24 = shl nuw nsw i16 %23, 1
  %25 = zext nneg i16 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr @734, i64 %22
  %27 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %28 = load i16, ptr %26, align 1, !noalias !9993
  store i16 %28, ptr %27, align 2, !alias.scope !9992, !noalias !9991
  %29 = getelementptr inbounds nuw i8, ptr @734, i64 %25
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %31 = load i16, ptr %29, align 1, !noalias !9993
  store i16 %31, ptr %30, align 2, !alias.scope !9992, !noalias !9991
  %i.k = icmp ugt i64 %.val.i.i.i.i, 999999999999
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.i.a, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.a:                         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.a
  %i.l = urem i64 %19, 10000
  %i.m = udiv i64 %.val.i.i.i.i, 1000000000000    ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.a = trunc nuw nsw i64 %i.l to i16 ; 2 uses
  %i.n = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.a, 100
  %i.o = shl nuw nsw i16 %i.n, 1
  %i.p = zext nneg i16 %i.o to i64
  %i.q = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.a, 100
  %i.r = shl nuw nsw i16 %i.q, 1
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @734, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i16, ptr %i.t, align 1, !noalias !9993
  store i16 %i.v, ptr %i.u, align 2, !alias.scope !9992, !noalias !9991
  %i.w = getelementptr inbounds nuw i8, ptr @734, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.y = load i16, ptr %i.w, align 1, !noalias !9993
  store i16 %i.y, ptr %i.x, align 2, !alias.scope !9992, !noalias !9991
  %i.z = icmp ugt i64 %.val.i.i.i.i, 9999999999999999
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.a
  %32 = urem i64 %i.m, 10000
  %33 = udiv i64 %.val.i.i.i.i, 10000000000000000
  %.lhs.trunc.i.i.i.i.i.i.i.i.3 = trunc nuw nsw i64 %32 to i16 ; 2 uses
  %34 = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.3, 100
  %35 = shl nuw nsw i16 %34, 1
  %36 = zext nneg i16 %35 to i64
  %37 = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.3, 100
  %38 = shl nuw nsw i16 %37, 1
  %39 = zext nneg i16 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr @734, i64 %36
  %41 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %42 = load i16, ptr %40, align 1, !noalias !9993
  store i16 %42, ptr %41, align 2, !alias.scope !9992, !noalias !9991
  %43 = getelementptr inbounds nuw i8, ptr @734, i64 %39
  %44 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %45 = load i16, ptr %43, align 1, !noalias !9993
  store i16 %45, ptr %44, align 2, !alias.scope !9992, !noalias !9991
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.lhs.trunc26.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.aa = urem i16 %.lhs.trunc26.i.i.i.i.i.i.i.i, 100
  %i.ab = shl nuw nsw i16 %i.aa, 1
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = udiv i16 %.lhs.trunc26.i.i.i.i.i.i.i.i, 100
  %.zext29.i.i.i.i.i.i.i.i = zext nneg i16 %i.ad to i64
  %i.ae = add i64 %.sroa.011.0.lcssa.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr @734, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ah = load i16, ptr %i.af, align 1, !noalias !9993
  store i16 %i.ah, ptr %i.ag, align 1, !alias.scope !9992, !noalias !9991
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ %.sroa.011.0.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i = phi i64 [ %.zext29.i.i.i.i.i.i.i.i, %bb.g ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ai = icmp samesign ult i64 %.sroa.0.2.i.i.i.i.i.i.i.i, 10
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = shl nuw nsw i64 %.sroa.0.2.i.i.i.i.i.i.i.i, 1
  %i.ak = add i64 %.sroa.011.1.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr @734, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.an = load i16, ptr %i.al, align 1, !noalias !9993
  store i16 %i.an, ptr %i.am, align 1, !alias.scope !9992, !noalias !9991
  br label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h0e83df0d87ce87afE.exit.i"

bb.j:                                             ; preds = %bb.h
  %i.ao = add i64 %.sroa.011.1.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ap = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i.i.i.i.i to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.ar = or disjoint i8 %i.ap, 48
  store i8 %i.ar, ptr %i.aq, align 1, !alias.scope !9992, !noalias !9991
  br label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h0e83df0d87ce87afE.exit.i"

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h0e83df0d87ce87afE.exit.i": ; preds = %bb.j, %bb.i
  %.sroa.011.2.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  %i.as = sub i64 20, %.sroa.011.2.i.i.i.i.i.i.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.011.2.i.i.i.i.i.i.i.i
  %i.au = icmp ult i64 %i.as, 21
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.at, i64 noundef %i.as), !noalias !9990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9991
  %.val.i.i22.i = load ptr, ptr %.sroa.617.0.copyload.i, align 8, !noalias !9994, !nonnull !37, !noundef !37
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i22.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9994
  %i.av = call noundef align 8 ptr @"_ZN4anki5types1_73_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..types..Usn$GT$9serialize17hb4c93c496a47310bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.617.0.copyload.i), !noalias !9994 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i", label %"_ZN93_$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_167_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17h51ddf0cfee410cafE.exit"

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i": ; preds = %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h0e83df0d87ce87afE.exit.i"
  %.val.i.i23.i = load ptr, ptr %.sroa.617.0.copyload.i, align 8, !noalias !9995, !nonnull !37, !align !41, !noundef !37
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i23.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 1), !noalias !9995
  br label %"_ZN93_$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_167_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17h51ddf0cfee410cafE.exit"

"_ZN93_$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_167_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..sync..media..upload..MediaUploadResponse$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17h51ddf0cfee410cafE.exit": ; preds = %bb.b, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h0e83df0d87ce87afE.exit.i", %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i"
  %.sroa.0.0.i = phi ptr [ null, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i" ], [ %i.g, %bb.b ], [ %i.av, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h0e83df0d87ce87afE.exit.i" ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN94_$LT$rusqlite..row..Rows$u20$as$u20$fallible_streaming_iterator..FallibleStreamingIterator$GT$7advance17hd4cf90d0ff1f2d2dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !10020 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = load ptr, ptr %1, align 8, !align !41, !noundef !37 ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !10021, !noundef !37
  %i.j = tail call noundef i32 @sqlite3_step(ptr noundef %i.i) #34, !noalias !10021 ; 2 uses
  switch i32 %i.j, label %bb.c [
    i32 100, label %bb.v
    i32 101, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10021
  %i.k = load ptr, ptr %i.g, align 8, !noalias !10021, !nonnull !37, !align !41, !noundef !37 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !10022, !noundef !37 ; 2 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775807
  br i1 %i.m, label %bb.e, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1071) #33, !noalias !10022
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.l, 1
  store i64 %i.n, ptr %i.k, align 8, !noalias !10022
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !10022, !noundef !37
  invoke void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noundef %i.p, i32 noundef %i.j)
          to label %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i unwind label %bb.f, !noalias !10021

common.resume.sink.split:                         ; preds = %bb.f, %bb.t
  %.sink = phi ptr [ %i.ap, %bb.t ], [ %i.k, %bb.f ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.av, %bb.t ], [ %i.s, %bb.f ]
  %i.q = load i64, ptr %.sink, align 8, !noalias !37, !noundef !37
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %.sink, align 8, !noalias !37
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.k, align 8, !noalias !10022, !noundef !37
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr %i.k, align 8, !noalias !10022
  call void @llvm.experimental.noalias.scope.decl(metadata !10023)
  %i.v = load i64, ptr %i.d, align 8, !range !60, !alias.scope !10023, !noalias !10021, !noundef !37 ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, -9223372036854775783
  br i1 %.not.i.i, label %bb.g, label %bb.i, !prof !46

bb.g:                                             ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @728, i64 noundef 46, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @727, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1091) #33, !noalias !10024
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.w, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.y

bb.i:                                             ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload14 = load i8, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10.0..sroa_idx15, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10021
  store i64 %i.v, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.7.0.copyload14, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !10025)
  store ptr null, ptr %1, align 8, !alias.scope !10025
  %i.x = load ptr, ptr %i.h, align 8, !noalias !10026, !noundef !37
  %i.y = call noundef i32 @sqlite3_reset(ptr noundef %i.x) #34, !noalias !10026 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rusqlite..error..Error$GT$$GT$17h032eef31844fc0e7E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10026
  %i.aa = load ptr, ptr %i.g, align 8, !noalias !10026, !nonnull !37, !align !41, !noundef !37 ; 7 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !10027, !noundef !37 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.l, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1071) #33
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = add nuw nsw i64 %i.ab, 1
  store i64 %i.ad, ptr %i.aa, align 8, !noalias !10027
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !10027, !noundef !37
  invoke void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noundef %i.af, i32 noundef %i.y)
          to label %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2 unwind label %bb.m, !noalias !10026

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i64, ptr %i.aa, align 8, !noalias !10027, !noundef !37
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.aa, align 8, !noalias !10027
  br label %.body

_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2: ; preds = %bb.l
  %i.aj = load i64, ptr %i.aa, align 8, !noalias !10027, !noundef !37
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.aa, align 8, !noalias !10027
  %i.al = load i64, ptr %i.c, align 8, !range !60, !alias.scope !10028, !noalias !10026, !noundef !37
  %.not.i.i3 = icmp eq i64 %i.al, -9223372036854775783
  br i1 %.not.i.i3, label %bb.n, label %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit, !prof !46

bb.n:                                             ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @728, i64 noundef 46, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @727, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1077) #33
          to label %.noexc5 unwind label %bb.w

.noexc5:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10030)
  store ptr null, ptr %1, align 8, !alias.scope !10030
  %i.am = load ptr, ptr %i.h, align 8, !noalias !10031, !noundef !37
  %i.an = tail call noundef i32 @sqlite3_reset(ptr noundef %i.am) #34, !noalias !10031 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 -9223372036854775783, ptr %0, align 8, !alias.scope !10029
  br label %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit10

bb.q:                                             ; preds = %bb.o
end_hunk_0
