Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/heap-refs?download=true
inline.NumInlined: 7733
inline.NumDeleted: 2140
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2v88internal8compiler6MapRef15CanBeDeprecatedEv:bb.a
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 2 uses
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i32, ptr %i.d acquire, align 4
  %i.f = lshr i32 %i.e, 10
  %i.g = and i32 %i.f, 1023                       ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %.not24.not.i = icmp eq i32 %i.g, 0
  br i1 %.not24.not.i, label %_ZNK2v88internal3Map15CanBeDeprecatedEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = add i64 %i.b, 39
  %i.j = inttoptr i64 %i.i to ptr
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.016.025.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = mul nuw nsw i64 %.sroa.016.025.i, 103079215104
  %sext.i.i = add nuw nsw i64 %i.l, 137438953472
  %i.m = lshr exact i64 %sext.i.i, 32
  %i.n = add i64 %i.k, 7
  %i.o = add i64 %i.n, %i.m
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = lshr i64 %i.q, 38
  %i.s = trunc i64 %i.r to i8
  %i.t = and i8 %i.s, 6
  %i.u = add nsw i8 %i.t, -6
  %switch.selectcmp.i.i = icmp ult i8 %i.u, -4
  %i.v = and i64 %i.q, 141733920768
  %or.cond.not.i = icmp eq i64 %i.v, 137438953472
  %or.cond.i = or i1 %or.cond.not.i, %switch.selectcmp.i.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.016.025.i, 1      ; 2 uses
  %.not.not.i = icmp eq i64 %i.w, %i.h
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not.not.i
  br i1 %or.cond, label %_ZNK2v88internal3Map15CanBeDeprecatedEv.exit, label %bb.b

_ZNK2v88internal3Map15CanBeDeprecatedEv.exit:     ; preds = %bb.b, %bb.a
  %.not.lcssa.i = phi i1 [ false, %bb.a ], [ %or.cond.i, %bb.b ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef13CanTransitionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, 11
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i16, ptr %i.d monotonic, align 2
  %.fr.i = freeze i16 %i.e                        ; 3 uses
  %i.f = icmp ult i16 %.fr.i, 303
  br i1 %i.f, label %_ZNK2v88internal3Map13CanTransitionEv.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.a
  switch i16 %.fr.i, label %bb.b [
    i16 2133, label %_ZNK2v88internal3Map13CanTransitionEv.exit
    i16 2129, label %_ZNK2v88internal3Map13CanTransitionEv.exit
  ]

bb.b:                                             ; preds = %switch.early.test.i
  %i.g = add i16 %.fr.i, -2106
  %i.h = icmp ult i16 %i.g, -4
  br label %_ZNK2v88internal3Map13CanTransitionEv.exit

_ZNK2v88internal3Map13CanTransitionEv.exit:       ; preds = %bb.a, %switch.early.test.i, %switch.early.test.i, %bb.b
  %i.i = phi i1 [ %i.h, %bb.b ], [ false, %switch.early.test.i ], [ false, %bb.a ], [ false, %switch.early.test.i ]
  ret i1 %i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZNK2v88internal8compiler6MapRef33GetInObjectPropertiesStartInWordsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i8, ptr %i.d monotonic, align 1
  %i.f = zext i8 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal8compiler6MapRef21GetInObjectPropertiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.off.i = add i32 %i.c, -2
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 2 uses
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i8, ptr %i.f monotonic, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = add i64 %i.d, 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i8, ptr %i.j monotonic, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = sub nsw i32 %i.h, %i.l
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 0
  br i1 %i.n, label %_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.thread.i, label %_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.i, !prof !19

_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.i: ; preds = %bb.c
  %i.o = tail call noundef zeroext i16 @_ZNK2v88internal8compiler14HeapObjectData18GetMapInstanceTypeEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a), !inline_history !20
  %i.p = icmp eq i16 %i.o, 276
  br i1 %i.p, label %bb.d, label %_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.thread.i, !prof !18

_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.i, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37) #25, !inline_history !21
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10ObjectData5IsMapEv.exit.i
  %.pre.i = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %.pre.i, 1
  br i1 %.not.i, label %_ZN2v88internal8compiler10ObjectData5AsMapEv.exit, label %.thread.i, !prof !18

.thread.i:                                        ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.22) #25, !inline_history !21
  unreachable

_ZN2v88internal8compiler10ObjectData5AsMapEv.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load i16, ptr %i.q, align 8
  %i.s = icmp ugt i16 %i.r, 302
  br i1 %i.s, label %_ZNK2v88internal8compiler7MapData20in_object_propertiesEv.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %_ZN2v88internal8compiler10ObjectData5AsMapEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.112) #25
  unreachable

_ZNK2v88internal8compiler7MapData20in_object_propertiesEv.exit: ; preds = %_ZN2v88internal8compiler10ObjectData5AsMapEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load i32, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler7MapData20in_object_propertiesEv.exit, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.u, %_ZNK2v88internal8compiler7MapData20in_object_propertiesEv.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler9StringRef16IsExternalStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = and i16 %i.h, -121
  %i.j = icmp eq i16 %i.i, 2
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef11c_functionsEPNS1_12JSHeapBrokerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::ZoneVector.779") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, 63
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10624
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.m = add i64 %i.e, 71
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.05.0.in.i.i = select i1 %i.k, ptr %i.l, ptr %i.n
  %.sroa.05.0.i.i = load i64, ptr %.sroa.05.0.in.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.q = add i64 %.sroa.05.0.i.i, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !39
  %.fr13 = freeze i64 %i.t
  %i.u = lshr i64 %.fr13, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 4 uses
  %i.w = sdiv i32 %i.v, 2                         ; 3 uses
  %i.x = sext i32 %i.w to i64
  store ptr %i.p, ptr %0, align 8, !alias.scope !39
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.off.i = add i32 %i.v, 1
  %.not.i.i = icmp ult i32 %.off.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !39
  br i1 %.not.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp sgt i32 %i.v, -2
  br i1 %i.ab, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.75) #25, !noalias !39
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = shl nuw nsw i64 %i.x, 3                 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !39 ; 2 uses
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.e, label %.lr.ph.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.ac) #24, !noalias !39
  %.pre.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !39
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.d
  %i.aj = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 6 uses
  %i.al = add i64 %i.aj, %i.ac                    ; 2 uses
  store i64 %i.al, ptr %i.af, align 8, !noalias !39
  store ptr %i.ak, ptr %i.y, align 8, !alias.scope !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store ptr %i.am, ptr %i.aa, align 8, !alias.scope !39
  store ptr %i.am, ptr %i.z, align 8, !alias.scope !39
  %i.an = add nuw i64 %i.aj, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.an)
  %i.ao = xor i64 %i.aj, -1
  %i.ap = add i64 %umax.i, %i.ao
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.ar, i1 false), !noalias !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %wide.trip.count.i = zext i32 %i.w to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %3 = and i32 %i.v, -2
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1 ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8, !noalias !39 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = add i64 %i.au, 7
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !39
  br label %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i

_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.ay, %bb.g ], [ 0, %bb.f ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i
  store i64 %.0.i.i, ptr %i.az, align 8, !noalias !39
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next.i, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.1
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8, !noalias !39 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1, label %bb.h

bb.h:                                             ; preds = %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i
  %i.bd = add i64 %i.bb, 7
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8, !noalias !39
  br label %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1

_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1: ; preds = %bb.h, %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i
  %.0.i.i.1 = phi i64 [ %i.bf, %bb.h ], [ 0, %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store i64 %.0.i.i.1, ptr %i.bg, align 8, !noalias !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !42

_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.epil
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8, !noalias !39 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.epil, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.bk = add i64 %i.bi, 7
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !39
  br label %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.epil

_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.epil: ; preds = %bb.i, %.epil.preheader
  %.0.i.i.epil = phi i64 [ %i.bm, %bb.i ], [ 0, %.epil.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.epil.init
  store i64 %.0.i.i.epil, ptr %i.bn, align 8, !noalias !39
  br label %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit: ; preds = %_ZN2v87ToCDataILNS_8internal18ExternalPointerTagE35EEEmPNS1_7IsolateENS1_6TaggedINS1_6ObjectEEE.exit.i.epil, %_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef12c_signaturesEPNS1_12JSHeapBrokerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::ZoneVector.780") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, 63
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10624
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.m = add i64 %i.e, 71
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.05.0.in.i.i = select i1 %i.k, ptr %i.l, ptr %i.n
  %.sroa.05.0.i.i = load i64, ptr %.sroa.05.0.in.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.q = add i64 %.sroa.05.0.i.i, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !43
  %.fr13 = freeze i64 %i.t
  %i.u = lshr i64 %.fr13, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 4 uses
  %i.w = sdiv i32 %i.v, 2                         ; 3 uses
  %i.x = sext i32 %i.w to i64
  store ptr %i.p, ptr %0, align 8, !alias.scope !43
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.off.i = add i32 %i.v, 1
  %.not.i.i = icmp ult i32 %.off.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !43
  br i1 %.not.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp sgt i32 %i.v, -2
  br i1 %i.ab, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.75) #25, !noalias !43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = shl nuw nsw i64 %i.x, 3                 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !43 ; 2 uses
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.e, label %.lr.ph.preheader.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.ac) #24, !noalias !43
  %.pre.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !43
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.aj = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 6 uses
  %i.al = add i64 %i.aj, %i.ac                    ; 2 uses
  store i64 %i.al, ptr %i.af, align 8, !noalias !43
  store ptr %i.ak, ptr %i.y, align 8, !alias.scope !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store ptr %i.am, ptr %i.aa, align 8, !alias.scope !43
  store ptr %i.am, ptr %i.z, align 8, !alias.scope !43
  %i.an = add nuw i64 %i.aj, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.an)
  %i.ao = xor i64 %i.aj, -1
  %i.ap = add i64 %umax.i, %i.ao
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.ar, i1 false), !noalias !43
  %wide.trip.count.i = zext i32 %i.w to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %3 = and i32 %i.v, -2
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1 ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8, !noalias !43 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.aw = add i64 %i.au, 7
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !43
  %i.az = inttoptr i64 %i.ay to ptr
  br label %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i

_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.0.i.i = phi ptr [ %i.az, %bb.f ], [ null, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i
  store ptr %.0.i.i, ptr %i.ba, align 8, !noalias !43
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8, !noalias !43 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1, label %bb.g

bb.g:                                             ; preds = %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i
  %i.bf = add i64 %i.bd, 7
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !43
  %i.bi = inttoptr i64 %i.bh to ptr
  br label %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1

_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1: ; preds = %bb.g, %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i
  %.0.i.i.1 = phi ptr [ %i.bi, %bb.g ], [ null, %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store ptr %.0.i.i.1, ptr %i.bj, align 8, !noalias !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !46

_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.epil
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8, !noalias !43 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.epil, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bo = add i64 %i.bm, 7
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !43
  %i.br = inttoptr i64 %i.bq to ptr
  br label %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.epil

_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.epil: ; preds = %bb.h, %.lr.ph.i.epil.preheader
  %.0.i.i.epil = phi ptr [ %i.br, %bb.h ], [ null, %.lr.ph.i.epil.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.epil.init
  store ptr %.0.i.i.epil, ptr %i.bs, align 8, !noalias !43
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit: ; preds = %_ZN2v87ToCDataIPKNS_13CFunctionInfoELNS_8internal18ExternalPointerTagE36EEET_PNS4_7IsolateENS4_6TaggedINS4_6ObjectEEE.exit.i.epil, %_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler9StringRef11IsSeqStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ult i16 %i.h, 128
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11IsSeqStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = and i16 %i.m, -121
  %i.o = icmp eq i16 %i.n, 0
  br label %_ZN2v88internal11IsSeqStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit

_ZN2v88internal11IsSeqStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZNK2v88internal8compiler10ContextRef10scope_infoEPNS1_12JSHeapBrokerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_9ScopeInfoEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.e, i32 3) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_9ScopeInfoEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #25
  unreachable

_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_9ScopeInfoEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit: ; preds = %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZNK2v88internal8compiler16NativeContextRef23GetFunctionMapFromIndexEPNS1_12JSHeapBrokerEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 2 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = icmp slt i32 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = shl nsw i32 %2, 3
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, 15
  %i.l = add i64 %i.k, %i.b
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m acquire, align 8
  %i.o = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.n, i32 3) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #25
  unreachable

_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit: ; preds = %bb.c
  ret ptr %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_ZNK2v88internal8compiler16NativeContextRef6objectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  ret ptr %.sroa.0.0.copyload.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZNK2v88internal8compiler16NativeContextRef20GetInitialJSArrayMapEPNS1_12JSHeapBrokerENS0_12ElementsKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  switch i8 %2, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 4, label %bb.f
    i8 5, label %bb.h
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.c = add i64 %i.b, 959
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8
  %i.f = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.e, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZNK2v88internal8compiler16NativeContextRef32js_array_packed_smi_elements_mapEPNS1_12JSHeapBrokerE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i.i7 = load ptr, ptr %i.g, align 8
  %i.h = load i64, ptr %.sroa.0.0.copyload.i.i.i7, align 8
  %i.i = add i64 %i.h, 967
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j acquire, align 8
  %i.l = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.k, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i8, label %bb.e, label %_ZNK2v88internal8compiler16NativeContextRef32js_array_packed_smi_elements_mapEPNS1_12JSHeapBrokerE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #25
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i.i9 = load ptr, ptr %i.m, align 8
  %i.n = load i64, ptr %.sroa.0.0.copyload.i.i.i9, align 8
  %i.o = add i64 %i.n, 991
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p acquire, align 8
  %i.r = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.q, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i10, label %bb.g, label %_ZNK2v88internal8compiler16NativeContextRef32js_array_packed_smi_elements_mapEPNS1_12JSHeapBrokerE.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #25
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i.i11 = load ptr, ptr %i.s, align 8
  %i.t = load i64, ptr %.sroa.0.0.copyload.i.i.i11, align 8
  %i.u = add i64 %i.t, 999
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v acquire, align 8
  %i.x = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.w, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i12, label %bb.i, label %_ZNK2v88internal8compiler16NativeContextRef32js_array_packed_smi_elements_mapEPNS1_12JSHeapBrokerE.exit, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #25
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i.i13 = load ptr, ptr %i.y, align 8
  %i.z = load i64, ptr %.sroa.0.0.copyload.i.i.i13, align 8
  %i.aa = add i64 %i.z, 975
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab acquire, align 8
  %i.ad = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %1, i64 %i.ac, i32 3) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10TryMakeRefINS0_13NativeContextEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.ad, align 8
  %i.bs = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #24, !inline_history !26
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.ad, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #24, !inline_history !26
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ad) #24, !inline_history !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN2v88internal8compiler10TryMakeRefINS0_13NativeContextEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerEPNS1_10ObjectDataEQ12is_subtype_vIS6_NS0_6ObjectEE.exit

_ZN2v88internal8compiler10ContextRefC2EPNS1_10ObjectDataEb.exit.i.i: ; preds = %_ZN2v88internal8compiler12JSHeapBroker18TryGetOrCreateDataINS0_13NativeContextEEEPNS1_10ObjectDataENS0_6TaggedIT_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEE.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bw = load i32, ptr %i.bv, align 8            ; 2 uses
  %.off.i.i.i.i.i = add i32 %i.bw, -2
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10ContextRefC2EPNS1_10ObjectDataEb.exit.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.y, align 8
  %i.bx = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8 ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %.split.i.i, label %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.thread.i.i, !prof !17

.split.i.i:                                       ; preds = %bb.o
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp eq i16 %i.ce, 228
  br i1 %i.cf, label %_ZN2v88internal8compiler10TryMakeRefINS0_13NativeContextEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerEPNS1_10ObjectDataEQ12is_subtype_vIS6_NS0_6ObjectEE.exit, label %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.thread.i.i, !prof !18

bb.p:                                             ; preds = %_ZN2v88internal8compiler10ContextRefC2EPNS1_10ObjectDataEb.exit.i.i
  %i.cg = icmp eq i32 %i.bw, 0
  br i1 %i.cg, label %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.thread.i.i, label %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.i.i, !prof !19

_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.i.i: ; preds = %bb.p
  %i.ch = tail call noundef zeroext i16 @_ZNK2v88internal8compiler14HeapObjectData18GetMapInstanceTypeEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.y)
  %i.ci = icmp eq i16 %i.ch, 228
  br i1 %i.ci, label %_ZN2v88internal8compiler10TryMakeRefINS0_13NativeContextEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerEPNS1_10ObjectDataEQ12is_subtype_vIS6_NS0_6ObjectEE.exit, label %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.thread.i.i, !prof !18

_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.thread.i.i: ; preds = %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.i.i, %bb.p, %.split.i.i, %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79) #25
  unreachable

_ZN2v88internal8compiler10TryMakeRefINS0_13NativeContextEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerEPNS1_10ObjectDataEQ12is_subtype_vIS6_NS0_6ObjectEE.exit: ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.i, %.split.i.i, %_ZNK2v88internal8compiler9ObjectRef15IsNativeContextEv.exit.i.i
  ret ptr %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_12PropertyCellEEENS0_6HandleIT_EENS0_6TaggedIS6_EE(ptr noundef nonnull align 8 dereferenceable(8560) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %1 to i32
  %i.d = and i32 %i.c, 2147483647
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = and i32 %i.d, %i.g
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.o = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %.014.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i ], [ %i.t, %bb.c ]
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %1, %i.q
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i64 %.014.i.i.i.i, 1
  %i.t = and i64 %i.s, %i.o                       ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.loopexit, !llvm.loop !6

.critedge:                                        ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 648
  %i.ac = and i32 %i.z, 65535
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  br label %bb.k

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i64 noundef %1) #24 ; 2 uses
  %i.ai = extractvalue { ptr, i8 } %i.ah, 1
  %i.aj = extractvalue { ptr, i8 } %i.ah, 0       ; 2 uses
  %i.ak = trunc i8 %i.ai to i1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.al = load ptr, ptr %i.aj, align 8
  br label %bb.k

bb.e:                                             ; preds = %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.g, label %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_12PropertyCellEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  tail call void @_ZN2v88internal9LocalHeap23EnsurePersistentHandlesEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.aq) #24
  %.pre.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_12PropertyCellEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_12PropertyCellEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit: ; preds = %bb.f, %bb.g
  %i.ar = phi ptr [ %.pre.i, %bb.g ], [ %i.ap, %bb.f ]
  %i.as = tail call noundef ptr @_ZN2v88internal17PersistentHandles9GetHandleEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 noundef %1) #24
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 560 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 568
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZN2v88internal6HandleINS0_12PropertyCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.az = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.at) #24
  br label %_ZN2v88internal6HandleINS0_12PropertyCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_12PropertyCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.az, %bb.i ], [ %i.av, %bb.h ] ; 3 uses
  %i.ba = ptrtoint ptr %.0.i.i to i64
  %i.bb = add i64 %i.ba, 8
  %i.bc = inttoptr i64 %i.bb to ptr
  store ptr %i.bc, ptr %i.au, align 8
  store i64 %1, ptr %.0.i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6HandleINS0_12PropertyCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_12PropertyCellEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit
  %storemerge = phi ptr [ %i.as, %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_12PropertyCellEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_12PropertyCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  store ptr %storemerge, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.d, %bb.j
  %.sroa.018.1 = phi ptr [ %i.al, %bb.d ], [ %storemerge, %bb.j ], [ %i.ae, %.critedge ]
  ret ptr %.sroa.018.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #22

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{null}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = !{!"branch_weights", !"expected", i32 2861880, i32 2144621768}
!16 = !{ptr @_ZNK2v88internal8compiler10ObjectData5IsMapEv}
!17 = !{!"branch_weights", i32 2146410443, i32 1073205}
!18 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!19 = !{!"branch_weights", i32 1073205, i32 2146410443}
!20 = !{ptr @_ZN2v88internal8compiler10ObjectData5AsMapEv, ptr @_ZNK2v88internal8compiler10ObjectData5IsMapEv}
!21 = !{ptr @_ZN2v88internal8compiler10ObjectData5AsMapEv}
!22 = distinct !{null, null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!26 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!27 = !{ptr @_ZNK2v88internal8compiler10ObjectData5IsMapEv, ptr @_ZN2v88internal8compiler10ObjectData5AsMapEv}
!28 = !{!"branch_weights", !"expected", i32 2146410443, i32 1073205}
!29 = distinct !{!29, !7}
!30 = distinct !{null}
!31 = !{!"branch_weights", !"expected", i32 2146410444, i32 1073204}
!32 = distinct !{!32, !7}
!33 = distinct !{null, null}
!34 = distinct !{null, null}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!37 = distinct !{!37, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!38 = distinct !{!38, !7}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE: argument 0"}
!41 = distinct !{!41, !"_ZN2v88internal8compiler12_GLOBAL__N_113GetCFunctionsENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE"}
!42 = distinct !{!42, !7}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE: argument 0"}
!45 = distinct !{!45, !"_ZN2v88internal8compiler12_GLOBAL__N_114GetCSignaturesENS0_6TaggedINS0_10FixedArrayEEEPNS0_7IsolateEPNS0_4ZoneE"}
!46 = distinct !{!46, !7}
!47 = distinct !{null}
!48 = !{!"branch_weights", i32 4001, i32 1}
!49 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!50 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!51 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!52 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!53 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = distinct !{null}
end_hunk_1
