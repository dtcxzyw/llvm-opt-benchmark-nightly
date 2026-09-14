Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/value-type?download=true
inline.NumInlined: 337
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev:bb.a
bb.z:                                             ; preds = %bb.t, %.critedge13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ew = load ptr, ptr %3, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.ew, i64 noundef %i.ey) #14 ; 0 uses
  %i.fa = load ptr, ptr %3, align 8               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.fd = load i64, ptr %i.fb, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.dv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.46, i64 noundef 3) #14 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit
  br i1 %i.dw, label %bb.ac, label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.i
  %.sink = phi ptr [ %i.bs, %bb.i ], [ %4, %bb.ab ]
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sink, ptr noundef nonnull @.str.35, i64 noundef 1) #14 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.fh, ptr %0, align 8, !alias.scope !167
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fi, align 8, !alias.scope !167
  store i8 0, ptr %i.fh, align 8, !alias.scope !167
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !167 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fk, null
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !167 ; 2 uses
  %i.fn = icmp ugt ptr %i.fk, %i.fm
  %.08.i.i.i = select i1 %i.fn, ptr %i.fk, ptr %i.fm ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !167 ; 2 uses
  %i.fq = ptrtoint ptr %.08.i.i.i to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fp, i64 noundef %i.fs) ; 0 uses
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i35, %._crit_edge.i.i38, %._crit_edge.i.i41, %._crit_edge.i.i44, %._crit_edge.i.i47
  %i.fu = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fu, ptr %4, align 8
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fw = getelementptr i8, ptr %i.fu, i64 -24
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds i8, ptr %4, i64 %i.fx
  store ptr %i.fv, ptr %i.fy, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8
  %i.fz = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ax
  br i1 %i.ga, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.gb = load i64, ptr %i.ax, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #14
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %._crit_edge.i.i32, %._crit_edge.i.i29, %._crit_edge.i.i26, %._crit_edge.i.i23, %._crit_edge.i.i20, %._crit_edge.i.i17, %._crit_edge.i.i14, %._crit_edge.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 272) i16 @_ZN2v88internal4wasm27WasmReturnTypeFromSignatureEPKNS1_12CanonicalSigE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit

_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 4 ; 4 uses
  %i.e = and i32 %.sroa.0.0.copyload.i, 3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit
  %i.g = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.h = add nsw i32 %i.g, -5648                  ; 2 uses
  %i.i = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 24) ; 2 uses
  %i.j = icmp ult i32 %i.i, 8
  br i1 %i.j, label %switch.lookup.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit
  %i.k = and i32 %.sroa.0.0.copyload.i, 268435427
  switch i32 %i.k, label %bb.e [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
    i32 514, label %.fold.split.i
    i32 2, label %.fold.split1.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %.sroa.0.0.copyload.i, 5
  %i.m = icmp eq i32 %i.l, 5
  %i.n = select i1 %i.m, i16 10, i16 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split.i:                                    ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split1.i:                                   ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i32 %i.i to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %switch.lookup.i, %.fold.split1.i, %.fold.split.i, %bb.e, %bb.d, %bb.a
  %.sroa.2.0 = phi i16 [ 0, %bb.a ], [ 256, %bb.d ], [ 256, %bb.e ], [ 256, %.fold.split.i ], [ 256, %.fold.split1.i ], [ 256, %switch.lookup.i ]
  %.sroa.02.0 = phi i16 [ 0, %bb.a ], [ 11, %bb.d ], [ %i.n, %bb.e ], [ 12, %.fold.split.i ], [ 0, %.fold.split1.i ], [ %switch.offset.i, %switch.lookup.i ]
  %.sroa.02.0.insert.insert = or i16 %.sroa.02.0, %.sroa.2.0
  ret i16 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm20EquivalentNumericSigEPKNS1_12CanonicalSigEPKNS0_9SignatureINS1_9ValueTypeEEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = load i64, ptr %1, align 8
  %.not14 = icmp eq i64 %i.e, %i.f
  br i1 %.not14, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = add i64 %i.e, %i.b                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %.not16.not30.not = icmp eq i64 %i.i, 0
  br i1 %.not16.not30.not, label %.critedge, label %.lr.ph

bb.d:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit25
  %i.l = add nuw i64 %.01231, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.i
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !168

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01231 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.01231
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = and i32 %i.n, 3
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.q = and i32 %i.n, 268435440                  ; 2 uses
  %i.r = add nsw i32 %i.q, -5648                  ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 24)
  %i.t = icmp ult i32 %i.s, 8
  br i1 %i.t, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13
  unreachable

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01231
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = and i32 %i.v, 3
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.y = and i32 %i.v, 268435440                  ; 2 uses
  %i.z = add nsw i32 %i.y, -5648                  ; 2 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 24)
  %i.ab = icmp ult i32 %i.aa, 8
  br i1 %i.ab, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13
  unreachable

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit25: ; preds = %bb.g
  %.not15 = icmp eq i32 %i.q, %i.y
  br i1 %.not15, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.d, %.lr.ph, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit25, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.c ], [ false, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit25 ], [ true, %bb.d ], [ false, %.lr.ph ], [ false, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal4wasm9GetI32SigEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEE(ptr noundef %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %.idx94.i = shl i64 %i.c, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx94.i ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %.idx.i = shl i64 %i.f, 2                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not6.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i.i.i, label %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.h = add i64 %.idx.i, -4                      ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4
  %wide.load8 = load <2 x i32>, ptr %i.n, align 4
  %i.o = icmp eq <2 x i32> %wide.load, splat (i32 5904)
  %i.p = icmp eq <2 x i32> %wide.load8, splat (i32 5904)
  %i.q = zext <2 x i1> %i.o to <2 x i64>
  %i.r = zext <2 x i1> %i.p to <2 x i64>
  %i.s = add <2 x i64> %vec.phi, %i.q             ; 2 uses
  %i.t = add <2 x i64> %vec.phi7, %i.r            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader28

.lr.ph.i.i.i.preheader28:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.057.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader28, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader28 ]
  %.057.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader28 ] ; 2 uses
  %i.w = load i32, ptr %.057.i.i.i, align 4
  %i.x = icmp eq i32 %i.w, 5904
  %i.y = zext i1 %i.x to i64
  %spec.select.i.i.i = add nuw nsw i64 %.08.i.i.i, %i.y ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.g
  br i1 %.not.i.i.i, label %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !170

_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.a
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not6.i.i53.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i.i53.i, label %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit61.i, label %.lr.ph.i.i54.i.preheader

.lr.ph.i.i54.i.preheader:                         ; preds = %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i
  %i.aa = add i64 %.idx94.i, -4                   ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check10 = icmp ult i64 %i.aa, 12
  br i1 %min.iters.check10, label %.lr.ph.i.i54.i.preheader26, label %vector.ph11

vector.ph11:                                      ; preds = %.lr.ph.i.i54.i.preheader
  %n.vec12 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  %i.ad = shl i64 %n.vec12, 2
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad
  br label %vector.body13

vector.body13:                                    ; preds = %vector.body13, %vector.ph11
  %index14 = phi i64 [ 0, %vector.ph11 ], [ %index.next20, %vector.body13 ] ; 2 uses
  %vec.phi15 = phi <2 x i64> [ zeroinitializer, %vector.ph11 ], [ %i.al, %vector.body13 ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph11 ], [ %i.am, %vector.body13 ]
  %i.af = shl i64 %index14, 2
  %next.gep17 = getelementptr i8, ptr %i.b, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep17, i64 8
  %wide.load18 = load <2 x i32>, ptr %next.gep17, align 4
  %wide.load19 = load <2 x i32>, ptr %i.ag, align 4
  %i.ah = icmp eq <2 x i32> %wide.load18, splat (i32 5904)
  %i.ai = icmp eq <2 x i32> %wide.load19, splat (i32 5904)
  %i.aj = zext <2 x i1> %i.ah to <2 x i64>
  %i.ak = zext <2 x i1> %i.ai to <2 x i64>
  %i.al = add <2 x i64> %vec.phi15, %i.aj         ; 2 uses
  %i.am = add <2 x i64> %vec.phi16, %i.ak         ; 2 uses
  %index.next20 = add nuw i64 %index14, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next20, %n.vec12
  br i1 %i.an, label %middle.block21, label %vector.body13, !llvm.loop !171

middle.block21:                                   ; preds = %vector.body13
  %bin.rdx22 = add <2 x i64> %i.am, %i.al
  %i.ao = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx22) ; 2 uses
  %cmp.n23 = icmp eq i64 %i.ac, %n.vec12
  br i1 %cmp.n23, label %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit61.i, label %.lr.ph.i.i54.i.preheader26

.lr.ph.i.i54.i.preheader26:                       ; preds = %.lr.ph.i.i54.i.preheader, %middle.block21
  %.08.i.i56.i.ph = phi i64 [ 0, %.lr.ph.i.i54.i.preheader ], [ %i.ao, %middle.block21 ]
  %.057.i.i57.i.ph = phi ptr [ %i.b, %.lr.ph.i.i54.i.preheader ], [ %i.ae, %middle.block21 ]
  br label %.lr.ph.i.i54.i

.lr.ph.i.i54.i:                                   ; preds = %.lr.ph.i.i54.i.preheader26, %.lr.ph.i.i54.i
  %.08.i.i56.i = phi i64 [ %spec.select.i.i58.i, %.lr.ph.i.i54.i ], [ %.08.i.i56.i.ph, %.lr.ph.i.i54.i.preheader26 ]
  %.057.i.i57.i = phi ptr [ %i.as, %.lr.ph.i.i54.i ], [ %.057.i.i57.i.ph, %.lr.ph.i.i54.i.preheader26 ] ; 2 uses
  %i.ap = load i32, ptr %.057.i.i57.i, align 4
  %i.aq = icmp eq i32 %i.ap, 5904
  %i.ar = zext i1 %i.aq to i64
  %spec.select.i.i58.i = add nuw nsw i64 %.08.i.i56.i, %i.ar ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.057.i.i57.i, i64 4 ; 2 uses
  %.not.i.i59.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i59.i, label %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit61.i, label %.lr.ph.i.i54.i, !llvm.loop !172

_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit61.i: ; preds = %.lr.ph.i.i54.i, %middle.block21, %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i
  %.0.lcssa.i.i60.i = phi i64 [ 0, %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.i ], [ %i.ao, %middle.block21 ], [ %spec.select.i.i58.i, %.lr.ph.i.i54.i ] ; 2 uses
  %i.at = or i64 %.0.lcssa.i.i60.i, %.0.lcssa.i.i.i
  %or.cond.i = icmp eq i64 %i.at, 0
  br i1 %or.cond.i, label %_ZN2v88internal4wasm12_GLOBAL__N_116ReplaceTypeInSigEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEES6_S6_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt5countIPKN2v88internal4wasm9ValueTypeES3_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit61.i
  %i.au = add i64 %.0.lcssa.i.i60.i, %i.c         ; 3 uses
  %i.av = add i64 %.0.lcssa.i.i.i, %i.f           ; 2 uses
  %i.aw = add i64 %i.au, %i.av
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 28
  %i.az = and i64 %i.ay, -8                       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.c, label %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_4wasm9ValueTypeEEES4_EC2EPNS0_4ZoneEmm.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.az) #14
  %.pre.i.i.i = load i64, ptr %i.bc, align 8
  br label %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_4wasm9ValueTypeEEES4_EC2EPNS0_4ZoneEmm.exit.i

_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_4wasm9ValueTypeEEES4_EC2EPNS0_4ZoneEmm.exit.i: ; preds = %bb.c, %bb.b
  %i.bg = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.bd, %bb.b ] ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 8 uses
  %i.bi = add i64 %i.bg, %i.az
  store i64 %i.bi, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 8 uses
  store i64 %i.au, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.av, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bn = load i64, ptr %1, align 8               ; 2 uses
  %.not100.i = icmp eq i64 %i.bn, 0
  br i1 %.not100.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_4wasm9ValueTypeEEES4_EC2EPNS0_4ZoneEmm.exit.i
  %i.bo = add i64 %i.bn, 4611686018427387903      ; 2 uses
  %i.bp = and i64 %i.bo, 4611686018427387903      ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bq, 9223372036854775806
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.loopexit97.i.1
  %i.bs = and i64 %i.bo, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.045102.i.epil.init = phi ptr [ %i.bm, %.lr.ph.i.preheader ], [ %i.cw, %._crit_edge.loopexit.i.unr-lcssa ]
  %.sroa.6.0101.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.sroa.6.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bt = load i32, ptr %.045102.i.epil.init, align 4 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 5904
  br i1 %i.bu, label %.preheader96.preheader.i.epil, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.6.0101.i.epil.init
end_hunk_0
