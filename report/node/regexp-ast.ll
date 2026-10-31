Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-ast?download=true
inline.NumInlined: 318
inline.NumDeleted: 146
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114RegExpUnparser16VisitClassRangesEPNS0_17RegExpClassRangesEPv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader._crit_edge, label %._crit_edge

.lr.ph.preheader._crit_edge:                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.j, align 8
  %i.q = tail call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %.pre) #13
  %i.r = load ptr, ptr %i.q, align 8
  %.sroa.0.0.copyload.peel = load i64, ptr %i.r, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.peel = trunc i64 %.sroa.0.0.copyload.peel to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.peel = lshr i64 %.sroa.0.0.copyload.peel, 32
  %.sroa.3.0.extract.trunc.i.peel = trunc nuw i64 %.sroa.3.0.extract.shift.i.peel to i32 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 %.sroa.0.0.extract.trunc.i.peel, ptr %3, align 4
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.u = icmp eq i32 %.sroa.0.0.extract.trunc.i.peel, %.sroa.3.0.extract.trunc.i.peel
  br i1 %i.u, label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader._crit_edge
  %i.v = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11 ; 2 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.13, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 %.sroa.3.0.extract.trunc.i.peel, ptr %4, align 4
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel

_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel: ; preds = %bb.d, %.lr.ph.preheader._crit_edge
  %i.y = load ptr, ptr %i.j, align 8
  %i.z = call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.y) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel, %bb.c
  %i.ad = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.12, i64 noundef 1) #13 ; 0 uses
  ret ptr null

.lr.ph.peel.next:                                 ; preds = %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit ], [ 1, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel ] ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.1, i64 noundef 1) #13 ; 0 uses
  %i.ah = load ptr, ptr %i.j, align 8
  %i.ai = call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ah) #13
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.ak, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %i.al = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 %.sroa.0.0.extract.trunc.i, ptr %3, align 4
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.an = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.3.0.extract.trunc.i
  br i1 %i.an, label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.peel.next
  %i.ao = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.13, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 %.sroa.3.0.extract.trunc.i, ptr %4, align 4
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit

_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit: ; preds = %.lr.ph.peel.next, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.j, align 8
  %i.as = call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ar) #13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef ptr @_ZN2v88internal12_GLOBAL__N_114RegExpUnparser20VisitClassSetOperandEPNS0_21RegExpClassSetOperandEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::AsUC32", align 4 ; 8 uses
  %4 = alloca %"struct.v8::internal::AsUC32", align 4 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.14, i64 noundef 2) #13 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader._crit_edge, label %._crit_edge

.lr.ph.preheader._crit_edge:                      ; preds = %bb.a
  %.pre24 = load ptr, ptr %i.a, align 8
  %.pre = load ptr, ptr %i.e, align 8
  %.sroa.0.0.copyload.peel.pre = load i64, ptr %.pre, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.peel = trunc i64 %.sroa.0.0.copyload.peel.pre to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.peel = lshr i64 %.sroa.0.0.copyload.peel.pre, 32
  %.sroa.3.0.extract.trunc.i.peel = trunc nuw i64 %.sroa.3.0.extract.shift.i.peel to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 %.sroa.0.0.extract.trunc.i.peel, ptr %3, align 4
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %.pre24, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.j = icmp eq i32 %.sroa.0.0.extract.trunc.i.peel, %.sroa.3.0.extract.trunc.i.peel
  br i1 %i.j, label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader._crit_edge
  %i.k = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11 ; 2 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.13, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 %.sroa.3.0.extract.trunc.i.peel, ptr %4, align 4
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel

_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel: ; preds = %bb.b, %.lr.ph.preheader._crit_edge
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit.thread, label %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit

_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit: ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i64, ptr %i.t, align 8
  %.not16 = icmp eq i64 %i.u, 0
  br i1 %.not16, label %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit.thread, label %bb.d

.lr.ph.peel.next:                                 ; preds = %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit ], [ 1, %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit.peel ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.1, i64 noundef 1) #13 ; 0 uses
  %.pre25 = load ptr, ptr %i.d, align 8
  %i.x = load ptr, ptr %.pre25, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.y, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 %.sroa.0.0.extract.trunc.i, ptr %3, align 4
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ab = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.3.0.extract.trunc.i
  br i1 %i.ab, label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.peel.next
  %i.ac = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11 ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.13, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 %.sroa.3.0.extract.trunc.i, ptr %4, align 4
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC32E(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit

_ZN2v88internal12_GLOBAL__N_114RegExpUnparser19VisitCharacterRangeENS0_14CharacterRangeE.exit: ; preds = %.lr.ph.peel.next, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !24

bb.d:                                             ; preds = %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit.thread, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.013.018 = phi ptr [ %i.al, %.lr.ph20 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 32
  %.sroa.010.0.copyload = load ptr, ptr %i.aq, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 40
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.15, i64 noundef 2) #13 ; 0 uses
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.idx = shl i64 %.sroa.5.0.copyload, 2          ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.010.0.copyload, i64 %.idx ; 2 uses
  store ptr %i.ao, ptr %5, align 8
  store i64 0, ptr %i.ap, align 8
  %i.av = icmp ugt i64 %.sroa.5.0.copyload, 15
  br i1 %i.av, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp slt i64 %.sroa.5.0.copyload, 0
  br i1 %i.aw, label %bb.g, label %._crit_edge.i.i.thread

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #15
  unreachable

._crit_edge.i.i.thread:                           ; preds = %bb.f
  %i.ax = add nuw nsw i64 %.sroa.5.0.copyload, 1
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #17 ; 2 uses
  store ptr %i.ay, ptr %5, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.ao, align 8
  br label %.lr.ph.i.i.i.preheader

._crit_edge.i.i:                                  ; preds = %bb.e
  %.not7.i.i.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKjvEET_S8_RKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.az = phi ptr [ %i.ay, %._crit_edge.i.i.thread ], [ %i.ao, %._crit_edge.i.i ] ; 6 uses
  %i.ba = add i64 %.idx, -4                       ; 3 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %6 = lshr exact i64 %i.ba, 2
  %7 = getelementptr i8, ptr %i.az, i64 %6
  %scevgep32 = getelementptr i8, ptr %7, i64 1
  %bound0 = icmp ult ptr %i.az, %i.au
  %bound1 = icmp ult ptr %.sroa.010.0.copyload, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 4 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 %n.vec
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %.sroa.010.0.copyload, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep33 = getelementptr i8, ptr %.sroa.010.0.copyload, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep33, align 4, !alias.scope !30
  %wide.load34 = load <4 x i32>, ptr %i.bh, align 4, !alias.scope !30
  %i.bi = trunc <4 x i32> %wide.load to <4 x i8>
  %i.bj = trunc <4 x i32> %wide.load34 to <4 x i8>
  %i.bk = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.bi, ptr %next.gep, align 1, !alias.scope !31, !noalias !30
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !alias.scope !31, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKjEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader36

.lr.ph.i.i.i.preheader36:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %.sroa.010.0.copyload, %vector.memcheck ], [ %.sroa.010.0.copyload, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader36, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader36 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader36 ] ; 2 uses
  %i.bm = load i32, ptr %.068.i.i.i, align 4
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %.09.i.i.i, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.bo, %i.au
  br i1 %.not.i.i.i, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKjEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKjEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre8.i.i = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKjvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKjvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKjEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i
  %i.bq = phi ptr [ %.pre8.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKjEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ao, %._crit_edge.i.i ]
  store i64 %.sroa.5.0.copyload, ptr %i.ap, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.5.0.copyload
  store i8 0, ptr %i.br, align 1
  %i.bs = load ptr, ptr %5, align 8
  %i.bt = load i64, ptr %i.ap, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.bs, i64 noundef %i.bt) #13 ; 0 uses
  %i.bv = load ptr, ptr %5, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ao
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKjvEET_S8_RKS3_.exit
  %i.bx = load i64, ptr %i.ao, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKjvEET_S8_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.bz = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.16, i64 noundef 1) #13 ; 0 uses
  %i.cb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.013.018) #14 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.am
  br i1 %i.cc, label %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit.thread, label %bb.e

_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %._crit_edge, %_ZNK2v88internal21RegExpClassSetOperand11has_stringsEv.exit
  %i.cd = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.12, i64 noundef 1) #13 ; 0 uses
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef ptr @_ZN2v88internal12_GLOBAL__N_114RegExpUnparser23VisitClassSetExpressionEPNS0_24RegExpClassSetExpressionEPv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12_GLOBAL__N_114RegExpUnparser23VisitClassSetExpressionEPNS0_24RegExpClassSetExpressionEPv, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !align !11
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %switch.load, i64 noundef 2) #13 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i8, ptr %i.h, align 4, !range !8, !noundef !9
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !align !11
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.10, i64 noundef 1) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !align !11
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.11, i64 noundef 1) #13 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader._crit_edge, label %._crit_edge

.lr.ph.preheader._crit_edge:                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.r, align 8
  %.pre12 = load ptr, ptr %.pre, align 8          ; 2 uses
  %.pre13 = load ptr, ptr %.pre12, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre13, i64 16
  %.pre14 = load ptr, ptr %.phi.trans.insert, align 8
  %i.v = tail call noundef ptr %.pre14(ptr noundef nonnull align 8 dereferenceable(8) %.pre12, ptr noundef nonnull %0, ptr noundef %2) #13 ; 0 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %.lr.ph.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %.lr.ph.preheader._crit_edge, %bb.d
  %i.aa = load ptr, ptr %i.n, align 8, !nonnull !9, !align !11
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.12, i64 noundef 1) #13 ; 0 uses
  ret ptr null

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader._crit_edge, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 1, %.lr.ph.preheader._crit_edge ] ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8, !nonnull !9, !align !11
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.1, i64 noundef 1) #13 ; 0 uses
  %.pre15 = load ptr, ptr %i.q, align 8
  %i.ae = load ptr, ptr %.pre15, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %0, ptr noundef %2) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load ptr, ptr %i.q, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef ptr @_ZN2v88internal12_GLOBAL__N_114RegExpUnparser9VisitAtomEPNS0_10RegExpAtomEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::AsUC16", align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.16, i64 noundef 1) #13 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.e = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.e, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.lr.ph, label %bb.b, !prof !35

_ZNK2v84base6VectorIKtE6lengthEv.exit.lr.ph:      ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.us

_ZNK2v84base6VectorIKtE6lengthEv.exit.us:         ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.lr.ph, %_ZNK2v84base6VectorIKtE6lengthEv.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v84base6VectorIKtE6lengthEv.exit.us ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2
  store i16 %i.h, ptr %3, align 2
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_6AsUC16E(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 2 dereferenceable(2) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.2.0.copyload.i
  br i1 %exitcond.not, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.us

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #15
  unreachable

.split.us:                                        ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit.lr.ph
end_hunk_0
