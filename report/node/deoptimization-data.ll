inline.NumInlined: 450
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal18DeoptimizationData3NewEPNS0_12LocalIsolateEi:bb.a
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE22NewProtectedFixedArrayEib(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.b, i1 noundef zeroext false) #13
  ret ptr %i.c
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE22NewProtectedFixedArrayEib(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN2v88internal18DeoptimizationData5EmptyEPNS0_7IsolateE(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9592
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal18DeoptimizationData5EmptyEPNS0_12LocalIsolateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9592
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.a, i64 noundef %i.g) #13
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE27empty_protected_fixed_arrayEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #13
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %bb.c ]
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.m, align 8
  store i64 %i.g, ptr %.0.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE27empty_protected_fixed_arrayEv.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE27empty_protected_fixed_arrayEv.exit: ; preds = %bb.b, %bb.e
  %.012.i.i = phi ptr [ %i.k, %bb.b ], [ %.0.i.i, %bb.e ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal18DeoptimizationData18GetInlinedFunctionEi(ptr nofree noundef nonnull align 4 captures(address) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 4 uses
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 3
  br i1 %i.p, label %bb.d, label %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #12
  unreachable

_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit: ; preds = %bb.c
  %i.q = and i64 %i.n, 1
  %i.r = icmp eq i64 %i.q, 0
  %i.s = and i64 %i.n, -3
  %spec.select.i.i.i = select i1 %i.r, i64 %i.n, i64 %i.s
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit, %bb.b
  %.sroa.03.0 = phi i64 [ %i.f, %bb.b ], [ %spec.select.i.i.i, %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit ]
  ret i64 %.sroa.03.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal18DeoptimizationData23PrintDeoptimizationDataERSo(ptr nofree noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 61) #13 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32                        ; 2 uses
  %i.h = trunc nuw i64 %i.g to i32                ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 27) #13 ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.h) #13
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.3, i64 noundef 2) #13 ; 0 uses
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit, %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 1) #13 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32                ; 3 uses
  %i.r = add nsw i32 %i.q, -12
  %i.s = sdiv i32 %i.r, 3                         ; 2 uses
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 42) #13 ; 0 uses
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.s) #13
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef 2) #13 ; 0 uses
  %.off = add i32 %i.q, -10
  %.not = icmp ult i32 %.off, 5
  br i1 %.not, label %.loopexit, label %bb.f

bb.d:                                             ; preds = %.lr.ph, %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit ] ; 2 uses
  %i.w = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8 ; 4 uses
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %bb.e, label %_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #12
  unreachable

_ZNK2v88internal26DeoptimizationLiteralArray3getEi.exit: ; preds = %bb.d
  %i.ae = and i64 %i.ab, 1
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %i.ab, -3
  %spec.select.i.i.i = select i1 %i.af, i64 %i.ab, i64 %i.ag
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 %spec.select.i.i.i, ptr %2, align 8
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.5, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !9

bb.f:                                             ; preds = %._crit_edge
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 29) #13 ; 0 uses
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1944), align 8, !range !7, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 10) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 1) #13 ; 0 uses
  %i.ap = icmp sgt i32 %i.q, 14
  br i1 %i.ap, label %.lr.ph45, label %.loopexit

.lr.ph45:                                         ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %smax = call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %wide.trip.count50 = zext nneg i32 %smax to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph45, %bb.m
  %indvars.iv47 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next48, %bb.m ] ; 3 uses
  %i.at = load ptr, ptr %1, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 6, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ay) #13 ; 4 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.9, i64 noundef 2) #13 ; 0 uses
  %i.bb = load ptr, ptr %i.az, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 15, ptr %i.bf, align 8
  %.idx = mul i64 %indvars.iv47, 24
  %i.bg = getelementptr i8, ptr %0, i64 %.idx     ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 112
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %i.bk) #13 ; 3 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.9, i64 noundef 2) #13 ; 0 uses
  %i.bn = load ptr, ptr %i.bl, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 4, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bg, i64 128
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = lshr i64 %i.bt, 32                      ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967295
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 2) #13 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_18print_pcERSoi.exit

bb.k:                                             ; preds = %bb.i
  %i.bx = trunc nuw i64 %i.bu to i32
  %i.by = load ptr, ptr %1, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = and i32 %i.cd, -75
  %i.cf = or disjoint i32 %i.ce, 8
  store i32 %i.cf, ptr %i.cc, align 8
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bx) #13 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = and i32 %i.cm, -75
  %i.co = or disjoint i32 %i.cn, 2
  store i32 %i.co, ptr %i.cl, align 8
  br label %_ZN2v88internal12_GLOBAL__N_18print_pcERSoi.exit

_ZN2v88internal12_GLOBAL__N_18print_pcERSoi.exit: ; preds = %bb.j, %bb.k
  %i.cp = load ptr, ptr %1, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 2, ptr %i.ct, align 8
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 1) #13 ; 0 uses
  %i.cv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1944), align 8, !range !7, !noundef !8
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_18print_pcERSoi.exit
  %i.cx = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.cy = add i64 %i.cx, -1
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr i8, ptr %i.bg, i64 120
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = lshr i64 %i.db, 32
  %i.dd = trunc nuw i64 %i.dc to i32
  %i.de = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.df = load atomic volatile i64, ptr %i.as monotonic, align 8
  call void @_ZNK2v88internal30DeoptimizationFrameTranslation21PrintFrameTranslationERSoiNS0_6TaggedINS0_19ProtectedFixedArrayEEENS3_INS0_26DeoptimizationLiteralArrayEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dd, i64 %i.de, i64 %i.df)
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_18print_pcERSoi.exit, %bb.l
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %.loopexit, label %bb.i, !llvm.loop !11

.loopexit:                                        ; preds = %bb.m, %._crit_edge, %bb.h, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal30DeoptimizationFrameTranslation21PrintFrameTranslationERSoiNS0_6TaggedINS0_19ProtectedFixedArrayEEENS3_INS0_26DeoptimizationLiteralArrayEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i64 %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::DeoptimizationFrameTranslation::Iterator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = ashr i64 %i.c, 32
  call void @_ZN2v88internal24DeoptTranslationIteratorC2ENS_4base6VectorIKhEEi(ptr noundef nonnull align 8 dereferenceable(57) %5, ptr nonnull %i.a, i64 %i.d, i32 noundef %2)
  %i.e = call noundef i32 @_ZN2v88internal24DeoptTranslationIterator10NextOpcodeEv(ptr noundef nonnull align 8 dereferenceable(56) %5) ; 2 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_17TranslationOpcodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e)
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.4, i64 noundef 1) #13 ; 0 uses
  call void @_ZN2v88internal47DeoptimizationFrameTranslationPrintSingleOpcodeERSoNS0_17TranslationOpcodeERNS0_30DeoptimizationFrameTranslation8IteratorENS0_6TaggedINS0_19ProtectedFixedArrayEEENS6_INS0_26DeoptimizationLiteralArrayEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(57) %5, i64 %3, i64 %4) #13
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 673), align 1, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split, label %bb.c, !prof !6

.split:                                           ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 8
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = load ptr, ptr %5, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp slt i32 %i.n, %i.u
  br i1 %i.v, label %_ZNK2v88internal24DeoptTranslationIterator13HasNextOpcodeEv.exit.thread, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.h, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 2147483648
  br i1 %i.x, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.63) #12
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.c
  %i.y = load i32, ptr %i.i, align 8
  %i.z = trunc nuw nsw i64 %i.w to i32
  %i.aa = icmp slt i32 %i.y, %i.z
  %i.ab = load i32, ptr %i.j, align 4
  %i.ac = icmp sgt i32 %i.ab, 1
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %_ZNK2v88internal24DeoptTranslationIterator13HasNextOpcodeEv.exit.thread, label %.thread

_ZNK2v88internal24DeoptTranslationIterator13HasNextOpcodeEv.exit.thread: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %.split
  %i.ad = call noundef i32 @_ZN2v88internal24DeoptTranslationIterator10NextOpcodeEv(ptr noundef nonnull align 8 dereferenceable(56) %5) ; 3 uses
  %i.ae = and i32 %i.ad, -2
  %i.af = icmp eq i32 %i.ae, 14
  br i1 %i.af, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal24DeoptTranslationIterator13HasNextOpcodeEv.exit.thread
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_17TranslationOpcodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ad)
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.4, i64 noundef 1) #13 ; 0 uses
  call void @_ZN2v88internal47DeoptimizationFrameTranslationPrintSingleOpcodeERSoNS0_17TranslationOpcodeERNS0_30DeoptimizationFrameTranslation8IteratorENS0_6TaggedINS0_19ProtectedFixedArrayEEENS6_INS0_26DeoptimizationLiteralArrayEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(57) %5, i64 %3, i64 %4) #13
  br label %bb.b

.thread:                                          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZNK2v88internal24DeoptTranslationIterator13HasNextOpcodeEv.exit.thread, %.split
  %i.ai = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal24DeoptTranslationIteratorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #14
  br label %_ZN2v88internal24DeoptTranslationIteratorD2Ev.exit

_ZN2v88internal24DeoptTranslationIteratorD2Ev.exit: ; preds = %.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24DeoptTranslationIteratorC2ENS_4base6VectorIKhEEi(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 56)) %0, ptr %1, i64 %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.g, align 4
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 673), align 1, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.f, !prof !6

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i = load i32, ptr %1, align 1      ; 2 uses
  %i.j = sext i32 %.0.copyload.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.k = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.l = shl nsw i32 %.0.copyload.i, 2
  %i.m = sext i32 %i.l to i64
  store i64 %i.m, ptr %i.b, align 8
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.o = icmp ult i64 %i.n, 2147483648
  br i1 %i.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.63) #12
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = call noundef i32 @_ZN13zlib_internal16UncompressHelperENS_11WrapperTypeEPhPmPKhm(i32 noundef 2, ptr noundef %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull %i.q, i64 noundef %i.n) #13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #12
  unreachable

bb.e:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

declare noundef i32 @_ZN13zlib_internal16UncompressHelperENS_11WrapperTypeEPhPmPKhm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal30DeoptimizationFrameTranslation8IteratorC2ENS0_6TaggedIS1_EEi(ptr noundef nonnull align 8 dereferenceable(57) initializes((0, 56)) %0, i64 %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = ashr i64 %i.e, 32
  tail call void @_ZN2v88internal24DeoptTranslationIteratorC2ENS_4base6VectorIKhEEi(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %i.c, i64 %i.f, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal24DeoptTranslationIterator11NextOperandEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 673), align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  %i.f = sext i32 %i.d to i64
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 10 uses
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8              ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %i.bk = shl i64 %n.vec93, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph92
  %index97 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body96 ] ; 2 uses
  %i.bm = shl i64 %index97, 2
  %next.gep98 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep98, i64 16
  store <4 x i32> %broadcast.splat95, ptr %next.gep98, align 4
  store <4 x i32> %broadcast.splat95, ptr %i.bn, align 4
  %index.next99 = add nuw i64 %index97, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next99, %n.vec93
  br i1 %i.bo, label %middle.block100, label %vector.body96, !llvm.loop !22

middle.block100:                                  ; preds = %vector.body96
  %cmp.n101 = icmp eq i64 %i.bj, %n.vec93
  br i1 %cmp.n101, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52.preheader129

.lr.ph.i.i.i52.preheader129:                      ; preds = %.lr.ph.i.i.i52.preheader, %middle.block100
  %.06.i.i.i53.ph = phi ptr [ %1, %.lr.ph.i.i.i52.preheader ], [ %i.bl, %middle.block100 ]
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader129, %.lr.ph.i.i.i52
  %.06.i.i.i53 = phi ptr [ %i.bp, %.lr.ph.i.i.i52 ], [ %.06.i.i.i53.ph, %.lr.ph.i.i.i52.preheader129 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i53, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i53, i64 4 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i54, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52, !llvm.loop !23

bb.p:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #12
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.p
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.r ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i56 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i56
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i56, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i.i.i57.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %bb.s
  %n.vec119 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec119, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph118
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next125, %vector.body122 ] ; 2 uses
  %i.cn = shl i64 %index123, 2
  %next.gep124 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep124, i64 16
  store <4 x i32> %broadcast.splat121, ptr %next.gep124, align 4
  store <4 x i32> %broadcast.splat121, ptr %i.co, align 4
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.cp, label %middle.block126, label %vector.body122, !llvm.loop !24

middle.block126:                                  ; preds = %vector.body122
  %cmp.n127 = icmp eq i64 %i.ck, %n.vec119
  br i1 %cmp.n127, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit61, label %.lr.ph.i.i.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.s, %middle.block126
  %.06.i.i.i.i.i.i.i58.ph = phi ptr [ %i.cf, %bb.s ], [ %i.cm, %middle.block126 ]
  br label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i57
  %.06.i.i.i.i.i.i.i58 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.06.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i58, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i58, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit61, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !25

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit61: ; preds = %.lr.ph.i.i.i.i.i.i.i57, %middle.block126
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.t, label %bb.u, !prof !12

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit61
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit61
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.w, label %bb.x, !prof !12

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62

bb.y:                                             ; preds = %bb.x
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62: ; preds = %bb.w, %bb.x, %bb.y
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i63 = icmp eq ptr %i.bq, null
  br i1 %.not.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62, %bb.z
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i52, %.lr.ph.i.i.i, %middle.block100, %middle.block113, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit50, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", i32 2000, i32 10, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !18, !17}
!20 = distinct !{!20, !10, !17, !18}
!21 = distinct !{!21, !10, !18, !17}
!22 = distinct !{!22, !10, !17, !18}
!23 = distinct !{!23, !10, !18, !17}
!24 = distinct !{!24, !10, !17, !18}
!25 = distinct !{!25, !10, !18, !17}
end_hunk_1
