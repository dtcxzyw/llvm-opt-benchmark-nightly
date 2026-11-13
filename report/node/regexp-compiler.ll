Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-compiler?download=true
inline.NumInlined: 1535
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2v88internal13AssertionNode17EmitBoundaryCheckEPNS0_14RegExpCompilerEPNS0_5TraceE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ct = zext i1 %i.ay to i32
  tail call void @_ZN2v88internal13AssertionNode19BacktrackIfPreviousEPNS0_14RegExpCompilerEPNS0_5TraceENS1_10IfPreviousE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ct)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %_ZN2v88internal12_GLOBAL__N_113EmitWordCheckEPNS0_20RegExpMacroAssemblerEPNS0_5LabelES5_b.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13AssertionNode19BacktrackIfPreviousEPNS0_14RegExpCompilerEPNS0_5TraceENS1_10IfPreviousE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !guid !153 {
.thread:
  %4 = alloca %"class.v8::internal::Trace", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.c = load i32, ptr %2, align 8                ; 4 uses
  store i32 %i.c, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load <2 x i16>, ptr %i.e, align 4
  %i.g = and <2 x i16> %i.f, <i16 -1, i16 511>
  store <2 x i16> %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.j, align 8              ; 4 uses
  store <2 x ptr> %i.k, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.p = load i32, ptr %i.o, align 4
  store i32 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %2, ptr %i.s, align 8
  store i32 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.t, align 4
  %i.u = icmp eq i32 %3, 0                        ; 4 uses
  %spec.select = select i1 %i.u, ptr %i.l, ptr %5 ; 5 uses
  %spec.select17 = select i1 %i.u, ptr %5, ptr %i.l ; 3 uses
  %i.v = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.thread
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.c, ptr noundef %spec.select) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %i.z = add nsw i32 %i.c, -1
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.z, ptr noundef %spec.select, i1 noundef zeroext %i.v, i32 noundef 1, i32 noundef -1) #26
  %i.aa = select i1 %i.u, i8 119, i8 87
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 noundef signext %i.aa, ptr noundef %i.l) #26, !inline_history !9
  br i1 %i.ae, label %_ZN2v88internal12_GLOBAL__N_113EmitWordCheckEPNS0_20RegExpMacroAssemblerEPNS0_5LabelES5_b.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i16 noundef zeroext 122, ptr noundef %spec.select) #26, !inline_history !9
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i16 noundef zeroext 48, ptr noundef %spec.select) #26, !inline_history !9
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i16 noundef zeroext 96, ptr noundef %spec.select17) #26, !inline_history !9
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i16 noundef zeroext 58, ptr noundef %spec.select17) #26, !inline_history !9
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i16 noundef zeroext 65, ptr noundef %spec.select) #26, !inline_history !9
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i16 noundef zeroext 91, ptr noundef %spec.select17) #26, !inline_history !9
  %i.ax = load ptr, ptr %i.b, align 8
  %..i = select i1 %i.u, i64 152, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %..i
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 95, ptr noundef %i.l) #26, !inline_history !9
  br label %_ZN2v88internal12_GLOBAL__N_113EmitWordCheckEPNS0_20RegExpMacroAssemblerEPNS0_5LabelES5_b.exit

_ZN2v88internal12_GLOBAL__N_113EmitWordCheckEPNS0_20RegExpMacroAssemblerEPNS0_5LabelES5_b.exit: ; preds = %bb.b, %.sink.split.i
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %5) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull %1, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal5Trace26InvalidateCurrentCharacterEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((32, 36)) %0) local_unnamed_addr #12 align 2 !guid !154 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13AssertionNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 !guid !155 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  %or.cond = and i1 %4, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 1, ptr %i.d, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13AssertionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !guid !157 {
bb.a:
  %3 = alloca %"class.v8::internal::Trace", align 8 ; 11 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %5 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %6 = alloca %"class.v8::internal::Trace", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  switch i32 %i.d, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 4, label %bb.f
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = load i32, ptr %2, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.f, ptr noundef nonnull %5) #26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.k) #26
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %i.t = shl i16 %i.s, 8
  %i.u = ashr exact i16 %i.t, 8
  switch i16 %i.u, label %bb.m [
    i16 0, label %bb.d
    i16 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.w) #26
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.aa, ptr noundef %i.ac) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ag = load i32, ptr %2, align 8
  store i32 %i.ag, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 6
  %8 = load <2 x i16>, ptr %i.ai, align 4
  %9 = and <2 x i16> %8, <i16 -1, i16 511>
  store <2 x i16> %9, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.al = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load <2 x i32>, ptr %i.an, align 8
  store <2 x i32> %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %2, ptr %i.ar, align 8
  store i8 1, ptr %7, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.az = load i32, ptr %2, align 8               ; 4 uses
  store i32 %i.az, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load <2 x i16>, ptr %i.bb, align 4
  %i.bd = and <2 x i16> %i.bc, <i16 -1, i16 511>
  store <2 x i16> %i.bd, ptr %i.ba, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.bg, align 8            ; 3 uses
  store <2 x ptr> %i.bh, ptr %i.bf, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bm = load i32, ptr %i.bl, align 4
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %i.bo, i64 64, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %2, ptr %i.bp, align 8
  store i32 0, ptr %i.bj, align 8
  %i.bq = icmp sgt i32 %i.az, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.br, align 4
  br i1 %i.bq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.az, ptr noundef nonnull %4) #26, !inline_history !156
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bv = add nsw i32 %i.az, -1
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.bv, ptr noundef %i.bi, i1 noundef zeroext %i.bq, i32 noundef 1, i32 noundef -1) #26
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 noundef signext 110, ptr noundef %i.bi) #26, !inline_history !156
  br i1 %i.bz, label %_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cb = load i8, ptr %i.ca, align 8, !range !50, !noundef !51
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.b, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 8232, i32 noundef 65534, ptr noundef nonnull %4) #26, !inline_history !156
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cg = load ptr, ptr %i.b, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 10, ptr noundef nonnull %4) #26, !inline_history !156
  %i.cj = load ptr, ptr %i.b, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 13, ptr noundef %i.bi) #26, !inline_history !156
  br label %_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit

_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit: ; preds = %bb.h, %bb.k
  %i.cm = load ptr, ptr %i.b, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %4) #26, !inline_history !156
  %i.cp = load ptr, ptr %i.ay, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull %1, ptr noundef nonnull %3) #26, !inline_history !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

bb.l:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN2v88internal13AssertionNode17EmitBoundaryCheckEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull %1, ptr noundef %2) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #2 align 2 !guid !166 {
bb.a:
  %7 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 23 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !range !50, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -12
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  switch i32 %.sroa.4.0.copyload.i, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, 2147483648
  br i1 %i.y, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i:   ; preds = %bb.c
  %i.z = trunc nuw nsw i64 %i.x to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit:           ; preds = %bb.b, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i
  %.0.i.i = phi i32 [ %i.z, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.b ]
  %i.aa = add nsw i32 %.sroa.0.0.copyload.i, %.0.i.i
  %i.ab = sub nsw i32 0, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal8TextNode6LengthEv.exit
  %i.ac = phi i32 [ %i.ab, %_ZN2v88internal8TextNode6LengthEv.exit ], [ 0, %bb.a ]
  %i.ad = add nsw i32 %i.o, -1
  %spec.select = select i1 %3, i32 0, i32 %i.ad   ; 2 uses
  %i.ae = icmp sgt i32 %spec.select, -1
  br i1 %i.ae, label %.lr.ph129, label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111

.lr.ph129:                                        ; preds = %bb.f
  %i.af = icmp ne i32 %2, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = select i1 %i.h, i32 255, i32 65535      ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aj = getelementptr i8, ptr %1, i64 36        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = zext nneg i32 %spec.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph129, %select.unfold
end_hunk_0
begin_hunk_1_@_ZN2v88internal8TextNode22CreateForSurrogatePairEPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEES5_bPNS0_10RegExpNodeE:bb.a
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ugt i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.p, label %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i6, !prof !48

bb.p:                                             ; preds = %bb.o
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.bo) #26
  %.pre.i.i.i.i.i.i10 = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i6

_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i6: ; preds = %bb.p, %bb.o
  %i.bt = phi i64 [ %.pre.i.i.i.i.i.i10, %bb.p ], [ %i.bq, %bb.o ] ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 3 uses
  %i.bv = add i64 %i.bt, %i.bo
  store i64 %i.bv, ptr %i.d, align 8
  %i.bw = load i32, ptr %i.l, align 4             ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i8, label %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i7

_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i8: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i6
  %i.by = load ptr, ptr %i.i, align 8
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = shl nuw nsw i64 %i.bz, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.by, i64 %i.ca, i1 false)
  %.pre.i.i.i9 = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i7

_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i7: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i8, %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i6
  %i.cb = phi i32 [ %i.bw, %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i6 ], [ %.pre.i.i.i9, %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i8 ]
  store ptr %i.bu, ptr %i.i, align 8
  store i32 %i.bl, ptr %i.k, align 8
  br label %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit11

_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit11: ; preds = %bb.l, %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i7
  %.sink57 = phi i32 [ %i.bg, %bb.l ], [ %i.cb, %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i7 ] ; 2 uses
  %.sink53 = phi ptr [ %i.bj, %bb.l ], [ %i.bu, %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i7 ]
  %i.cc = add nsw i32 %.sink57, 1
  store i32 %i.cc, ptr %i.l, align 4
  %i.cd = sext i32 %.sink57 to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %.sink53, i64 %i.cd ; 2 uses
  store i64 8589934591, ptr %i.ce, align 8
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.be, ptr %.sroa.5.0..sroa_idx14, align 8
  %i.cf = load i64, ptr %i.b, align 8
  %i.cg = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp ult i64 %i.ch, 80
  br i1 %i.ci, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8TextNodeEJRPNS0_8ZoneListINS0_11TextElementEEERbRPNS0_10RegExpNodeEEEEPT_DpOT0_.exit, !prof !48

bb.q:                                             ; preds = %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit11
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 80) #26
  %.pre.i.i12 = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8TextNodeEJRPNS0_8ZoneListINS0_11TextElementEEERbRPNS0_10RegExpNodeEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8TextNodeEJRPNS0_8ZoneListINS0_11TextElementEEERbRPNS0_10RegExpNodeEEEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit11, %bb.q
  %i.cj = phi i64 [ %.pre.i.i12, %bb.q ], [ %i.cg, %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit11 ] ; 2 uses
  %i.ck = zext i1 %3 to i8
  %i.cl = inttoptr i64 %i.cj to ptr               ; 8 uses
  %i.cm = add i64 %i.cj, 80
  store i64 %i.cm, ptr %i.d, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  store ptr %i.co, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store ptr %4, ptr %i.cs, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN2v88internal8TextNodeE, i64 16), ptr %i.cl, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  store ptr %i.i, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store i8 %i.ck, ptr %i.cu, align 8
  ret ptr %i.cl
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !guid !173 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %3 = alloca %"class.v8::internal::Trace", align 8 ; 17 uses
  %i.c = tail call noundef i32 @_ZN2v88internal10RegExpNode13LimitVersionsEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -16
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.l, i64 -12
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  switch i32 %.sroa.4.0.copyload.i, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.l, i64 -8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, 2147483648
  br i1 %i.p, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i:   ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %i.o to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit:           ; preds = %bb.b, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i
  %.0.i.i = phi i32 [ %i.q, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.b ]
  %i.r = add i32 %.sroa.0.0.copyload.i, %i.e
  %i.s = add i32 %i.r, %.0.i.i
  %i.t = icmp sgt i32 %i.s, 32767
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal8TextNode6LengthEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %i.u, align 1
  br label %bb.ae

bb.g:                                             ; preds = %_ZN2v88internal8TextNode6LengthEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !50, !noundef !51
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre = load i32, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.y = phi i32 [ %.pre, %bb.h ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.z = add nsw i32 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.b, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 8
  %.not = icmp eq i32 %i.af, 1                    ; 4 uses
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %.sroa.0.0.copyload.i37, 2
  %.not54 = icmp eq i32 %i.ag, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ 3, %bb.k ], [ 1, %bb.j ]
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef %.sink, i1 noundef zeroext true, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.b)
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.0.0.copyload.i37.1 = load i32, ptr %i.ae, align 4
  %i.ah = and i32 %.sroa.0.0.copyload.i37.1, 2
  %.not54.1 = icmp eq i32 %i.ah, 0
  br i1 %.not54.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext %.not, ptr noundef nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink67 = phi i32 [ 3, %bb.n ], [ 1, %bb.m ]
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef %.sink67, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext %.not, ptr noundef nonnull %i.b)
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext %.not, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ai = load i32, ptr %2, align 8               ; 5 uses
  store i32 %i.ai, ptr %3, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6
  %4 = load <2 x i16>, ptr %i.ak, align 4
  %5 = and <2 x i16> %4, <i16 -1, i16 511>
  store <2 x i16> %5, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8
  store <2 x ptr> %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  %i.as = load i32, ptr %i.aa, align 4
  store i32 %i.as, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !50, !noundef !51 ; 2 uses
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = load ptr, ptr %i.az, align 8
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr [16 x i8], ptr %i.bc, i64 %i.bd ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -16
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.bf, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i39 = getelementptr i8, ptr %i.be, i64 -12
  %.sroa.4.0.copyload.i40 = load i32, ptr %.sroa.4.0..sroa_idx.i39, align 4 ; 4 uses
  br i1 %i.ay, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  switch i32 %.sroa.4.0.copyload.i40, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit45
  ]

bb.q:                                             ; preds = %bb.p
  %.sroa.5.0..sroa_idx.i42 = getelementptr i8, ptr %i.be, i64 -8
  %.sroa.5.0.copyload.i43 = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i43, i64 16
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 2147483648
  br i1 %i.bi, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44, label %bb.r, !prof !47

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44: ; preds = %bb.q
  %i.bj = trunc nuw nsw i64 %i.bh to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit45

bb.s:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit45:         ; preds = %bb.p, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44
  %.0.i.i41 = phi i32 [ %i.bj, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44 ], [ %.sroa.4.0.copyload.i40, %bb.p ]
  %i.bk = add nsw i32 %.sroa.0.0.copyload.i38, %.0.i.i41
  %i.bl = sub nsw i32 0, %i.bk
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  switch i32 %.sroa.4.0.copyload.i40, label %bb.w [
    i32 0, label %bb.u
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit53
  ]

bb.u:                                             ; preds = %bb.t
  %.sroa.5.0..sroa_idx.i50 = getelementptr i8, ptr %i.be, i64 -8
  %.sroa.5.0.copyload.i51 = load ptr, ptr %.sroa.5.0..sroa_idx.i50, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i51, i64 16
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 2147483648
  br i1 %i.bo, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52, label %bb.v, !prof !47

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52: ; preds = %bb.u
  %i.bp = trunc nuw nsw i64 %i.bn to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit53

bb.w:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit53:         ; preds = %bb.t, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52
  %.0.i.i49 = phi i32 [ %i.bp, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52 ], [ %.sroa.4.0.copyload.i40, %bb.t ]
  %i.bq = add nsw i32 %.0.i.i49, %.sroa.0.0.copyload.i38
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8TextNode6LengthEv.exit53, %_ZN2v88internal8TextNode6LengthEv.exit45
  %i.br = phi i32 [ %i.bl, %_ZN2v88internal8TextNode6LengthEv.exit45 ], [ %i.bq, %_ZN2v88internal8TextNode6LengthEv.exit53 ] ; 8 uses
  store i32 0, ptr %i.aq, align 8
  %i.bs = load i32, ptr %i.at, align 8            ; 5 uses
  %i.bt = icmp sge i32 %i.br, %i.bs
  %i.bu = icmp slt i32 %i.br, 0
  %or.cond.i.i = or i1 %i.bu, %i.bt
  br i1 %or.cond.i.i, label %bb.y, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.bv = sub nuw nsw i32 %i.bs, %i.br            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.bx = zext nneg i32 %i.br to i64
  %wide.trip.count.i.i = zext nneg i32 %i.bv to i64 ; 2 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.bx ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.by = icmp eq i32 %i.bv, 1
  br i1 %i.by, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bz = icmp sgt i32 %i.bs, 0
  br i1 %i.bz, label %.lr.ph.i.i.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 9 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.bs to i64 ; 2 uses
  %xtraiter70 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.cb = icmp ult i32 %i.bs, 8
  br i1 %i.cb, label %.epil.preheader69, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter73 = and i64 %wide.trip.count.i.i.i, 2147483640
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.7, %bb.z ] ; 9 uses
  %niter74 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter74.next.7, %bb.z ]
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cc, i8 0, i64 9, i1 false)
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ce, i8 0, i64 9, i1 false)
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i8 0, i64 9, i1 false)
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ci, i8 0, i64 9, i1 false)
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ck, i8 0, i64 9, i1 false)
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cm, i8 0, i64 9, i1 false)
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.co, i8 0, i64 9, i1 false)
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 84
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cq, i8 0, i64 9, i1 false)
  %niter74.next.7 = add i64 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i64 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !3

.preheader.i.i.unr-lcssa:                         ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %gep.i.i.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil.init
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %indvars.iv.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cr, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.i.epil, i64 9, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.unr-lcssa, %.epil.preheader
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %.preheader.i.i
  %i.cs = sext i32 %i.bv to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.aa ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.aa ]
  %gep.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %indvars.iv.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ct, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.i, i64 9, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i.i
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cu, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.i.1, i64 9, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %bb.aa, !llvm.loop !4

._crit_edge.loopexit.i.i:                         ; preds = %bb.ab
  %.pre.i.i = sub nsw i32 %i.cw, %i.br
  %.pre60 = load i32, ptr %3, align 8
  br label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i

bb.ab:                                            ; preds = %bb.ab, %.lr.ph24.i.i
  %indvars.iv28.i.i = phi i64 [ %i.cs, %.lr.ph24.i.i ], [ %indvars.iv.next29.i.i, %bb.ab ] ; 2 uses
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.bw, i64 %indvars.iv28.i.i
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cv, i8 0, i64 9, i1 false)
  %i.cw = load i32, ptr %i.at, align 8            ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next29.i.i, %i.cx
  br i1 %i.cy, label %bb.ab, label %._crit_edge.loopexit.i.i, !llvm.loop !5

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, label %.epil.preheader69

.epil.preheader69:                                ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.7, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader69
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader69 ], [ %indvars.iv.next.i.i.i.epil, %bb.ac ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader69 ], [ %epil.iter.next, %bb.ac ]
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv.i.i.i.epil
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cz, i8 0, i64 9, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, label %bb.ac, !llvm.loop !172

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i: ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa, %bb.ac, %._crit_edge.loopexit.i.i, %.preheader.i.i, %bb.y
  %i.da = phi i32 [ %i.ai, %.preheader.i.i ], [ %i.ai, %bb.y ], [ %.pre60, %._crit_edge.loopexit.i.i ], [ %i.ai, %bb.ac ], [ %i.ai, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa ]
  %storemerge.i.i = phi i32 [ %i.bv, %.preheader.i.i ], [ 0, %bb.y ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ 0, %bb.ac ], [ 0, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa ]
  store i32 %storemerge.i.i, ptr %i.at, align 8
  %i.db = add nsw i32 %i.da, %i.br                ; 2 uses
  store i32 %i.db, ptr %3, align 8
  %i.dc = icmp sgt i32 %i.db, 32767
  br i1 %i.dc, label %bb.ad, label %_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit

bb.ad:                                            ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %i.dd, align 1
  store i32 0, ptr %3, align 8
  %.pre61 = load i8, ptr %i.aw, align 8, !range !50
  br label %_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit

_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit: ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, %bb.ad
  %i.de = phi i8 [ %i.ax, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i ], [ %.pre61, %bb.ad ]
  %i.df = load i32, ptr %i.ar, align 4
  %i.dg = sub nsw i32 %i.df, %i.br
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 0)
  store i32 %.sroa.speculated.i, ptr %i.ar, align 4
  %i.dh = sub nsw i8 0, %i.de
  store i8 %i.dh, ptr %i.al, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, ptr noundef nonnull %1, ptr noundef nonnull %3) #26
  %i.dq = load i32, ptr %i.di, align 8
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.di, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((32, 36)) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 align 2 !guid !175 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp sge i32 %1, %i.c
  %i.e = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.b, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sub nuw nsw i32 %i.c, %1                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.h = zext nneg i32 %1 to i64
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.c, 0
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter11 = and i64 %wide.trip.count.i.i, 7   ; 3 uses
  %i.l = icmp ult i32 %i.c, 8
  br i1 %i.l, label %.epil.preheader10, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter14 = and i64 %wide.trip.count.i.i, 2147483640
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.c ] ; 9 uses
  %niter15 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter15.next.7, %bb.c ]
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.o, i8 0, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.q, i8 0, i64 9, i1 false)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.u, i8 0, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.w, i8 0, i64 9, i1 false)
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.y, i8 0, i64 9, i1 false)
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aa, i8 0, i64 9, i1 false)
  %niter15.next.7 = add i64 %niter15, 8           ; 2 uses
  %niter15.ncmp.7 = icmp eq i64 %niter15.next.7, %unroll_iter14
  br i1 %niter15.ncmp.7, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3

.preheader.i.unr-lcssa:                           ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %gep.i.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ab, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.epil, i64 9, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.ac = sext i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %gep.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ad, ptr noundef nonnull align 4 dereferenceable(9) %gep.i, i64 9, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv.next.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.1, i64 9, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.d, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre.i = sub nsw i32 %i.ag, %1
  br label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph24.i
  %indvars.iv28.i = phi i64 [ %i.ac, %.lr.ph24.i ], [ %indvars.iv.next29.i, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv28.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.af, i8 0, i64 9, i1 false)
  %i.ag = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next29.i, %i.ah
  br i1 %i.ai, label %bb.e, label %._crit_edge.loopexit.i, !llvm.loop !5

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit, label %.epil.preheader10

.epil.preheader10:                                ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter11, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader10
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader10 ], [ %indvars.iv.next.i.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader10 ], [ %epil.iter.next, %bb.f ]
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.aj, i8 0, i64 9, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter11
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit, label %bb.f, !llvm.loop !174

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit: ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa, %bb.f, %bb.b, %.preheader.i, %._crit_edge.loopexit.i
  %storemerge.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.b ], [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %bb.f ], [ 0, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa ]
  store i32 %storemerge.i, ptr %i.b, align 8
  %i.ak = load i32, ptr %0, align 8
  %i.al = add nsw i32 %i.ak, %1                   ; 2 uses
  store i32 %i.al, ptr %0, align 8
  %i.am = icmp sgt i32 %i.al, 32767
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 1, ptr %i.an, align 1
  store i32 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub nsw i32 %i.ap, %1
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  store i32 %.sroa.speculated, ptr %i.ao, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr noundef %1, i1 noundef zeroext %2, i32 %3) local_unnamed_addr #2 align 2 !guid !176 {
bb.a:
  %i.a = and i32 %3, 274
  %or.cond.not = icmp eq i32 %i.a, 2
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal14LoopChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE:bb.a
  %.not28.i = icmp eq ptr %.01627.i, %0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.l, 1
  %exitcond.i = icmp eq i32 %i.l, 101
  br i1 %exitcond.i, label %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit, label %.lr.ph.i.preheader, !llvm.loop !11

.lr.ph.i.preheader:                               ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i32 [ %i.k, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %.01729.i17 = phi i32 [ %i.q, %.lr.ph.i ], [ 0, %bb.c ]
  %.01631.i16 = phi ptr [ %.016.i, %.lr.ph.i ], [ %.01627.i, %bb.c ] ; 4 uses
  %i.m = load ptr, ptr %.01631.i16, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(56) %.01631.i16) #26, !inline_history !55 ; 2 uses
  %.not24.i = icmp eq i32 %i.p, -2147483648
  br i1 %.not24.i, label %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.preheader
  %i.q = add nsw i32 %i.p, %.01729.i17            ; 2 uses
  %i.r = load ptr, ptr %.01631.i16, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(56) %.01631.i16) #26, !inline_history !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.016.i = load ptr, ptr %i.v, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.016.i, %0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.017.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(66) %0) #26, !inline_history !55
  %i.aa = sub nsw i32 0, %.017.lcssa.i
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 %.017.lcssa.i ; 2 uses
  %i.ab = add i32 %spec.select.i, -32768
  %or.cond.i = icmp ult i32 %i.ab, -65535
  %spec.select25.i = select i1 %or.cond.i, i32 -2147483648, i32 %spec.select.i
  br label %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit

_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i
  %.221.i = phi i32 [ %spec.select25.i, %._crit_edge.i ], [ -2147483648, %.lr.ph.i.preheader ], [ -2147483648, %.lr.ph.i ]
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %.221.i) #26
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.ag) #26, !inline_history !183
  br label %bb.h

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %_ZNK2v88internal5Trace10is_trivialEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = and i16 %i.ao, 256
  %.not.i12 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %2, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  %or.cond.i13 = select i1 %.not.i12, i1 %i.ar, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, 0
  %or.cond4.i = select i1 %or.cond.i13, i1 %i.au, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 0
  %or.cond7.i = select i1 %or.cond4.i, i1 %i.ax, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond10.i = select i1 %or.cond7.i, i1 %i.ba, i1 false
  %.mask.i = and i16 %i.ao, 255
  %i.bb = icmp eq i16 %.mask.i, 255
  %or.cond = and i1 %i.bb, %or.cond10.i
  br i1 %or.cond, label %bb.g, label %_ZNK2v88internal5Trace10is_trivialEv.exit.thread

_ZNK2v88internal5Trace10is_trivialEv.exit.thread: ; preds = %bb.e, %bb.f
  tail call void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal10ChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK2v88internal5Trace10is_trivialEv.exit.thread, %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20FixedLengthLoopState16GoToLoopTopLabelEPNS0_20RegExpMacroAssemblerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !guid !184 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !guid !187 {
bb.a:
  %3 = alloca %"struct.v8::internal::PreloadState", align 4 ; 6 uses
  %4 = alloca %"class.v8::internal::FixedLengthLoopState", align 8 ; 16 uses
  %5 = alloca %"class.v8::internal::AlternativeGenerationList", align 8 ; 9 uses
  %6 = alloca %"class.v8::internal::Trace", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 7 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef %1, ptr noundef %2) #26
  br label %bb.s

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call noundef i32 @_ZN2v88internal10RegExpNode13LimitVersionsEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i16, ptr %i.p, align 4
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.t = load i16, ptr %i.s, align 2
  %i.u = and i16 %i.t, 256
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.s

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 -1, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i8, ptr %i.z, align 8, !range !50, !noundef !51
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 100, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 30 ; 2 uses
  store i16 255, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i.i, i8 0, i64 9, i1 false)
  %.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i.i, i8 0, i64 9, i1 false)
  %.ptr.3.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i.i, i8 0, i64 9, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ah, i8 0, i64 9, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.ag, i8 0, i64 45, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.aj, align 8
  br i1 %i.ab, label %bb.i, label %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.af, align 2
  br label %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit

_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit: ; preds = %bb.h, %bb.i
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %.01627.i = load ptr, ptr %i.al, align 8        ; 2 uses
  %.not28.i = icmp eq ptr %.01627.i, %0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i:                                         ; preds = %bb.j
  %i.am = add nuw nsw i32 %i.an, 1
  %exitcond.i = icmp eq i32 %i.an, 101
  br i1 %exitcond.i, label %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit, label %.lr.ph.i.preheader, !llvm.loop !11

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit, %.lr.ph.i
  %i.an = phi i32 [ %i.am, %.lr.ph.i ], [ 1, %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit ] ; 2 uses
  %.01729.i61 = phi i32 [ %i.as, %.lr.ph.i ], [ 0, %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit ]
  %.01631.i60 = phi ptr [ %.016.i, %.lr.ph.i ], [ %.01627.i, %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit ] ; 4 uses
  %i.ao = load ptr, ptr %.01631.i60, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(56) %.01631.i60) #26, !inline_history !55 ; 2 uses
  %.not24.i = icmp eq i32 %i.ar, -2147483648
  br i1 %.not24.i, label %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.preheader
  %i.as = add nsw i32 %i.ar, %.01729.i61          ; 2 uses
  %i.at = load ptr, ptr %.01631.i60, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(56) %.01631.i60) #26, !inline_history !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %.016.i = load ptr, ptr %i.ax, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.016.i, %0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.j, %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit
  %.017.lcssa.i = phi i32 [ 0, %_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE.exit ], [ %i.as, %bb.j ] ; 2 uses
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(66) %0) #26, !inline_history !55
  %i.bc = sub nsw i32 0, %.017.lcssa.i
  %spec.select.i = select i1 %i.bb, i32 %i.bc, i32 %.017.lcssa.i ; 2 uses
  %i.bd = add i32 %spec.select.i, -32768
  %or.cond.i = icmp ult i32 %i.bd, -65535
  %spec.select25.i = select i1 %or.cond.i, i32 -2147483648, i32 %spec.select.i
  br label %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit

_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i
  %.221.i = phi i32 [ %spec.select25.i, %._crit_edge.i ], [ -2147483648, %.lr.ph.i.preheader ], [ -2147483648, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  call void @_ZN2v88internal25AlternativeGenerationListC2EiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(856) %5, i32 noundef %i.d, ptr noundef %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.bg, align 4 ; 3 uses
  %i.bh = icmp sgt i32 %i.d, 1
  %i.bi = icmp ne i32 %.221.i, -2147483648
  %or.cond = and i1 %i.bh, %i.bi
  br i1 %or.cond, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit
  %i.bj = call noundef ptr @_ZN2v88internal10ChoiceNode19EmitFixedLengthLoopEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_25AlternativeGenerationListEPNS0_12PreloadStateEPNS0_20FixedLengthLoopStateEiNS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %.221.i, i32 %.sroa.0.0.copyload.i)
  br label %.lr.ph

bb.k:                                             ; preds = %_ZN2v88internal10ChoiceNode35FixedLengthLoopLengthForAlternativeEPNS0_18GuardedAlternativeE.exit
  %i.bk = call noundef i32 @_ZN2v88internal10ChoiceNode29EmitOptimizedUnanchoredSearchEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %1, ptr nonnull poison)
  store i32 %i.bk, ptr %i.y, align 4
  call void @_ZN2v88internal10ChoiceNode11EmitChoicesEPNS0_14RegExpCompilerEPNS0_25AlternativeGenerationListEiPNS0_5TraceEPNS0_12PreloadStateENS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 %.sroa.0.0.copyload.i)
  %i.bl = icmp sgt i32 %i.d, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread, %bb.k
  %.059 = phi ptr [ %i.bj, %.thread ], [ %2, %bb.k ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.059, i64 4 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 4
  %i.bo = zext i16 %i.bn to i32
  %i.bp = udiv i32 %i.bo, %i.d
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.059, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %.059, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ca = trunc nuw i32 %i.bp to i16
  %i.cb = add nsw i32 %i.d, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = zext nneg i32 %i.cb to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.n

._crit_edge:                                      ; preds = %bb.r, %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp sgt i32 %i.cg, 10
  br i1 %i.ch, label %.lr.ph.i50, label %_ZN2v88internal25AlternativeGenerationListD2Ev.exit

.lr.ph.i50:                                       ; preds = %._crit_edge, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 10, %._crit_edge ] ; 3 uses
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i50
  call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %i.ck) #26
  %.pre.i = load ptr, ptr %5, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i50
  %i.cm = phi ptr [ %.pre.i, %bb.l ], [ %i.ci, %.lr.ph.i50 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i
  store ptr null, ptr %i.cn, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = load i32, ptr %i.cf, align 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next.i, %i.cp
  br i1 %i.cq, label %.lr.ph.i50, label %_ZN2v88internal25AlternativeGenerationListD2Ev.exit, !llvm.loop !185

_ZN2v88internal25AlternativeGenerationListD2Ev.exit: ; preds = %bb.m, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cr = load i32, ptr %i.v, align 8
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.v, align 8
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  store i32 %.sroa.0.0.copyload.i, ptr %i.bg, align 4
  %i.ct = load ptr, ptr %5, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cw = load i32, ptr %.059, align 8
  store i32 %i.cw, ptr %6, align 8
  %i.cx = load i16, ptr %i.br, align 2
  %i.cy = load <2 x i16>, ptr %i.bm, align 4
  %.lobit.i = and i16 %i.cx, 256
  %i.cz = and <2 x i16> %i.cy, <i16 -1, i16 511>
  store <2 x i16> %i.cz, ptr %i.bq, align 4
  store ptr null, ptr %i.bs, align 8
  %i.da = load <2 x ptr>, ptr %i.bu, align 8
  store <2 x ptr> %i.da, ptr %i.bt, align 8
  %i.db = load <2 x i32>, ptr %i.bw, align 8
  store <2 x i32> %i.db, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull align 8 dereferenceable(64) %i.by, i64 64, i1 false)
  store ptr %.059, ptr %i.bz, align 8
  %.not51 = icmp eq i16 %.lobit.i, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i16 %i.ca, ptr %i.bq, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dc = icmp eq i64 %indvars.iv, %i.ce
  br i1 %i.dc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i8, ptr %i.df, align 4, !range !50, !noundef !51
  %i.dh = trunc nuw i8 %i.dg to i1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.di = phi i1 [ %i.dh, %bb.q ], [ false, %bb.p ]
  %i.dj = load ptr, ptr %i.a, align 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dl, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN2v88internal10ChoiceNode25EmitOutOfLineContinuationEPNS0_14RegExpCompilerEPNS0_5TraceENS0_18GuardedAlternativeEPNS0_21AlternativeGenerationEib(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef %i.cv, i32 noundef %i.cd, i1 noundef zeroext %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !186

bb.s:                                             ; preds = %bb.g, %_ZN2v88internal25AlternativeGenerationListD2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 5) i32 @_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 !guid !188 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 4)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal19BoyerMooreLookahead20EmitSkipInstructionsEPNS0_20RegExpMacroAssemblerE:bb.a
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4
  %i.c = call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.d = call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef 8, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef 16, i32 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4              ; 9 uses
  %i.g = load i32, ptr %i.a, align 4              ; 6 uses
  %.not66 = icmp slt i32 %i.f, %i.g
  br i1 %.not66, label %.thread81, label %.lr.ph

.thread81:                                        ; preds = %bb.b
  %i.h = add nsw i32 %i.f, 1
  %i.i = sub i32 %i.h, %i.g
  br label %bb.m

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.f to i64
  %i.n = sext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.03769 = phi i8 [ 0, %.lr.ph ], [ %.1.ph, %bb.g ] ; 2 uses
  %.03868 = phi i32 [ 0, %.lr.ph ], [ %.139.ph, %bb.g ]
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw i8 %.03769 to i1
  %i.u = icmp sgt i32 %i.r, 1
  %or.cond57 = or i1 %i.u, %i.t
  br i1 %or.cond57, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8 ; 2 uses
  %.not.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not.not.i, label %_ZNKSt6bitsetILm128EE9to_ullongEv.exit16.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload.i, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  br label %bb.g

_ZNKSt6bitsetILm128EE9to_ullongEv.exit16.i:       ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %.not11.not.i = icmp eq i64 %.sroa.2.0.copyload.i, 0
  %i.x = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.2.0.copyload.i, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 64
  %spec.select.i = select i1 %.not11.not.i, i32 -1, i32 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit16.i
  %.139.ph = phi i32 [ %spec.select.i, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit16.i ], [ %i.w, %bb.f ], [ %.03868, %bb.c ] ; 3 uses
  %.1.ph = phi i8 [ 1, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit16.i ], [ 1, %bb.f ], [ %.03769, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not.not, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit, !llvm.loop !203

.thread:                                          ; preds = %bb.d
  %i.aa = add nsw i32 %i.f, 1
  %i.ab = sub i32 %i.aa, %i.g
  br label %bb.m

_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit: ; preds = %bb.g
  %i.ac = trunc nuw i8 %.1.ph to i1               ; 2 uses
  %i.ad = add nsw i32 %i.f, 1
  %i.ae = sub i32 %i.ad, %i.g                     ; 3 uses
  %i.af = icmp eq i32 %i.ae, 1
  %or.cond = select i1 %i.ac, i1 %i.af, i1 false
  %i.ag = icmp slt i32 %i.f, 3
  %or.cond3 = and i1 %or.cond, %i.ag
  br i1 %or.cond3, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 0, ptr %2, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ah, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3) #26
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.f, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1, i32 noundef -1) #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 128
  %i.ap = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.139.ph, i32 noundef 127, ptr noundef nonnull %2) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.139.ph, ptr noundef nonnull %2) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = load ptr, ptr %1, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.ae) #26
  %i.ax = load ptr, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 264
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3) #26
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.m:                                             ; preds = %.thread81, %.thread, %bb.h
  %i.bd = phi i32 [ %i.ab, %.thread ], [ %i.ae, %bb.h ], [ %i.i, %.thread81 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, i32 noundef 128, i8 noundef zeroext 1, i8 noundef zeroext 0) #26 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.bd) #26
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, i32 noundef 16, i8 noundef zeroext 1, i8 noundef zeroext 0) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.043.0 = phi ptr [ %i.bl, %bb.n ], [ null, %bb.m ] ; 2 uses
  %i.bm = tail call noundef i32 @_ZN2v88internal19BoyerMooreLookahead12GetSkipTableEiiNS0_12DirectHandleINS0_9ByteArrayEEES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g, i32 noundef %i.f, ptr %i.bg, ptr %.sroa.043.0) ; 0 uses
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.f, ptr %i.bg, ptr %.sroa.043.0, i32 noundef %i.bd) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 77), (80, 89), (92, 101), (104, 113), (116, 125), (128, 136)) %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #12 align 2 !guid !205 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 100, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  store i16 255, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i, i8 0, i64 9, i1 false)
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i, i8 0, i64 9, i1 false)
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i, i8 0, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.e, i8 0, i64 45, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %0, ptr %i.h, align 8
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.d, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20FixedLengthLoopState22BindStepBackwardsLabelEPNS0_20RegExpMacroAssemblerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !guid !206 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20FixedLengthLoopState16BindLoopTopLabelEPNS0_20RegExpMacroAssemblerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !guid !207 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal10ChoiceNode28AssertGuardsMentionRegistersEPNS0_5TraceE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 align 2 !guid !208 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 2), (4, 8)) %3) local_unnamed_addr #2 align 2 !guid !209 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.e = load i16, ptr %i.d, align 2
  %.mask = and i16 %i.e, 255
  %i.f = icmp eq i16 %.mask, 0
  %.in.v.i = select i1 %i.f, i64 27, i64 26
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.g = load i8, ptr %.in.i, align 1
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  store i32 %i.h, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 4)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26, !inline_history !210
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i8, ptr %i.p, align 8, !range !50, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.i, 3
  %spec.store.select.i = select i1 %i.s, i32 2, i32 %.sroa.speculated.i
  br label %_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi.exit

bb.f:                                             ; preds = %bb.d
  %spec.store.select1.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 2)
  br label %_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi.exit

bb.g:                                             ; preds = %bb.c
  %spec.store.select2.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 1)
  br label %_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi.exit

_ZN2v88internal10ChoiceNode26CalculatePreloadCharactersEPNS0_14RegExpCompilerEi.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ %spec.store.select2.i, %bb.g ], [ %spec.store.select.i, %bb.e ], [ %spec.store.select1.i, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.1.i, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, %.1.i
  %i.x = zext i1 %i.w to i8                       ; 2 uses
  store i8 %i.x, ptr %3, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.x, ptr %i.y, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal25AlternativeGenerationListC2EiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(856) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !guid !213 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  store i32 0, ptr %i.b, align 4
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEEC2EiPNS0_4ZoneE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i, !prof !48

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.e) #26
  %.pre.i.i.i = load i64, ptr %i.h, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i: ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = add i64 %i.l, %i.e
  store i64 %i.n, ptr %i.h, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEEC2EiPNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEEC2EiPNS0_4ZoneE.exit: ; preds = %bb.a, %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i
  %storemerge.i = phi ptr [ %i.m, %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i ], [ null, %bb.a ]
  store ptr %storemerge.i, ptr %0, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.1.i.i, i8 0, i64 9, i1 false)
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.2.i.i, i8 0, i64 9, i1 false)
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.3.i.i, i8 0, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.ptr, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.o, i8 0, i64 21, i1 false)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.ptr.1.i.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i.1, i8 0, i64 9, i1 false)
  %.ptr.2.i.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i.1, i8 0, i64 9, i1 false)
  %.ptr.3.i.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i.1, i8 0, i64 9, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.ptr.1, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.q, i8 0, i64 21, i1 false)
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.ptr.1.i.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 220
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.1.i.i.2, i8 0, i64 9, i1 false)
  %.ptr.2.i.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.2.i.i.2, i8 0, i64 9, i1 false)
  %.ptr.3.i.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.3.i.i.2, i8 0, i64 9, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.t, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.ptr.2, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.s, i8 0, i64 21, i1 false)
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.ptr.1.i.i.3 = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i.3, i8 0, i64 9, i1 false)
  %.ptr.2.i.i.3 = getelementptr inbounds nuw i8, ptr %0, i64 316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i.3, i8 0, i64 9, i1 false)
  %.ptr.3.i.i.3 = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i.3, i8 0, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.v, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.ptr.3, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.u, i8 0, i64 21, i1 false)
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.ptr.1.i.i.4 = getelementptr inbounds nuw i8, ptr %0, i64 388
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.1.i.i.4, i8 0, i64 9, i1 false)
  %.ptr.2.i.i.4 = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.2.i.i.4, i8 0, i64 9, i1 false)
  %.ptr.3.i.i.4 = getelementptr inbounds nuw i8, ptr %0, i64 412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.3.i.i.4, i8 0, i64 9, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.ptr.4, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.w, i8 0, i64 21, i1 false)
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.ptr.1.i.i.5 = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i.5, i8 0, i64 9, i1 false)
  %.ptr.2.i.i.5 = getelementptr inbounds nuw i8, ptr %0, i64 484
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i.5, i8 0, i64 9, i1 false)
end_hunk_3
begin_hunk_4_@_ZN2v88internal25AlternativeGenerationListC2EiPNS0_4ZoneE:bb.a
  %i.ax = shl nuw nsw i64 %i.aw, 3                ; 3 uses
  %i.ay = load i64, ptr %i.aj, align 8
  %i.az = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.ax, %i.ba
  br i1 %i.bb, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i, !prof !48

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ax) #26
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ak, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.bc = phi i64 [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.az, %bb.h ] ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 5 uses
  %i.be = add i64 %i.bc, %i.ax
  store i64 %i.be, ptr %i.ak, align 8
  %i.bf = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.j:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i
  %i.bh = load ptr, ptr %0, align 8               ; 3 uses
  switch i32 %i.bf, label %bb.m [
    i32 2, label %bb.l
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.bh, align 1
  store i64 %i.bi, ptr %i.bd, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.m:                                             ; preds = %bb.j
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i
  store ptr %i.bd, ptr %0, align 8
  store i32 %i.au, ptr %i.a, align 8
  %i.bl = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit: ; preds = %bb.e, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i
  %.sink12.i = phi i32 [ %i.bl, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.ap, %bb.e ] ; 2 uses
  %.sink8.i = phi ptr [ %i.bd, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.as, %bb.e ]
  %i.bm = add nsw i32 %.sink12.i, 1
  store i32 %i.bm, ptr %i.b, align 4
  %i.bn = sext i32 %.sink12.i to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.sink8.i, i64 %i.bn
  store ptr %i.ao, ptr %i.bo, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !211

._crit_edge:                                      ; preds = %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit24, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEEC2EiPNS0_4ZoneE.exit, %.preheader
  ret void

bb.n:                                             ; preds = %.lr.ph31, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit24
  %.030 = phi i32 [ 10, %.lr.ph31 ], [ %i.cs, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit24 ]
  %i.bp = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 84) #26 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.ptr.1.i.i15 = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.1.i.i15, i8 0, i64 9, i1 false)
  %.ptr.2.i.i16 = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i16, i8 0, i64 9, i1 false)
  %.ptr.3.i.i17 = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.3.i.i17, i8 0, i64 9, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.br, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.bp, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.bq, i8 0, i64 21, i1 false)
  %i.bs = load i32, ptr %i.b, align 4             ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8             ; 3 uses
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %0, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit24

bb.p:                                             ; preds = %bb.n
  %i.bw = shl nsw i32 %i.bt, 1
  %i.bx = or disjoint i32 %i.bw, 1                ; 2 uses
  %i.by = icmp sgt i32 %i.bt, -1
  br i1 %i.by, label %bb.r, label %bb.q, !prof !47

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3                ; 3 uses
  %i.cb = load i64, ptr %i.am, align 8
  %i.cc = load i64, ptr %i.an, align 8            ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp ugt i64 %i.ca, %i.cd
  br i1 %i.ce, label %bb.s, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i18, !prof !48

bb.s:                                             ; preds = %bb.r
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ca) #26
  %.pre.i.i.i.i.i.i23 = load i64, ptr %i.an, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i18

_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i18: ; preds = %bb.s, %bb.r
  %i.cf = phi i64 [ %.pre.i.i.i.i.i.i23, %bb.s ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 5 uses
  %i.ch = add i64 %i.cf, %i.ca
  store i64 %i.ch, ptr %i.an, align 8
  %i.ci = load i32, ptr %i.b, align 4             ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19

bb.t:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i18
  %i.ck = load ptr, ptr %0, align 8               ; 3 uses
  switch i32 %i.ci, label %bb.w [
    i32 2, label %bb.v
    i32 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.cl = load i64, ptr %i.ck, align 1
  store i64 %i.cl, ptr %i.cg, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cg, ptr noundef nonnull align 1 dereferenceable(16) %i.ck, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19

bb.w:                                             ; preds = %bb.t
  %i.cm = zext nneg i32 %i.ci to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ck, i64 %i.cn, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19

_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19: ; preds = %bb.w, %bb.v, %bb.u, %_ZN2v88internal4Zone13AllocateArrayIPNS0_21AlternativeGenerationEA_S4_EEPT_m.exit.i.i.i.i18
  store ptr %i.cg, ptr %0, align 8
  store i32 %i.bx, ptr %i.a, align 8
  %i.co = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit24

_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE3AddERKS3_PNS0_4ZoneE.exit24: ; preds = %bb.o, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19
  %.sink12.i20 = phi i32 [ %i.co, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19 ], [ %i.bs, %bb.o ] ; 2 uses
  %.sink8.i21 = phi ptr [ %i.cg, %_ZN2v88internal8ZoneListIPNS0_21AlternativeGenerationEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i19 ], [ %i.bv, %bb.o ]
  %i.cp = add nsw i32 %.sink12.i20, 1
  store i32 %i.cp, ptr %i.b, align 4
  %i.cq = sext i32 %.sink12.i20 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.sink8.i21, i64 %i.cq
  store ptr %i.bp, ptr %i.cr, align 8
  %i.cs = add nuw nsw i32 %.030, 1                ; 2 uses
  %exitcond33.not = icmp eq i32 %i.cs, %1
  br i1 %exitcond33.not, label %._crit_edge, label %bb.n, !llvm.loop !212
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10ChoiceNode19EmitFixedLengthLoopEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_25AlternativeGenerationListEPNS0_12PreloadStateEPNS0_20FixedLengthLoopStateEiNS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) initializes((0, 2), (4, 8)) %4, ptr noundef %5, i32 noundef %6, i32 %7) local_unnamed_addr #2 align 2 !guid !214 {
bb.a:
  %8 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %9 = alloca %"class.v8::internal::Trace", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 14 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 0, ptr %8, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 100, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 2 uses
  store i16 255, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i, i8 0, i64 9, i1 false)
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %9, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i, i8 0, i64 9, i1 false)
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i, i8 0, i64 9, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.j, i8 0, i64 9, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr null, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.i, i8 0, i64 45, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i8, ptr %i.l, align 8, !range !50, !noundef !51
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.h, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.p) #26, !inline_history !215
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull %1, ptr noundef nonnull %9) #26
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %8) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @_ZN2v88internal10ChoiceNode11EmitChoicesEPNS0_14RegExpCompilerEPNS0_25AlternativeGenerationListEiPNS0_5TraceEPNS0_12PreloadStateENS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %1, ptr noundef %3, i32 noundef 1, ptr noundef nonnull %i.ae, ptr noundef %4, i32 %7)
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %5) #26, !inline_history !216
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.aj) #26
  %i.an = sub nsw i32 0, %6
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.an) #26
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 264
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -1, 9) i32 @_ZN2v88internal10ChoiceNode29EmitOptimizedUnanchoredSearchEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(66) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #2 align 2 !guid !217 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.019.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.420.0.copyload = load ptr, ptr %.sroa.420.0..sroa_idx, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.sroa.420.0.copyload, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %.sroa.019.0.copyload, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.0.copyload, ptr noundef %1) #26
  %.not15 = icmp eq ptr %i.l, %0
  br i1 %.not15, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.t = load i8, ptr %.in.i, align 2             ; 2 uses
  %i.u = tail call i8 @llvm.umin.i8(i8 %i.t, i8 8)
  %.sroa.speculated = zext nneg i8 %i.u to i32    ; 2 uses
  %.not34 = icmp eq i8 %i.t, 0
  br i1 %.not34, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = sub i64 %i.y, %i.aa
  %i.ac = icmp ult i64 %i.ab, 32
  br i1 %i.ac, label %bb.h, label %_ZN2v88internal4Zone3NewINS0_19BoyerMooreLookaheadEJRiRPNS0_14RegExpCompilerEPS1_EEEPT_DpOT0_.exit, !prof !48

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef 32) #26
  %.pre.i.i = load i64, ptr %i.z, align 8
  br label %_ZN2v88internal4Zone3NewINS0_19BoyerMooreLookaheadEJRiRPNS0_14RegExpCompilerEPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_19BoyerMooreLookaheadEJRiRPNS0_14RegExpCompilerEPS1_EEEPT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %.pre.i.i, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = add i64 %i.ad, 32
  store i64 %i.af, ptr %i.z, align 8
  tail call void @_ZN2v88internal19BoyerMooreLookaheadC2EiPNS0_14RegExpCompilerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef %.sroa.speculated, ptr noundef nonnull %1, ptr noundef nonnull %i.w)
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8 ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0.0.copyload, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.copyload, ptr noundef %i.p, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_19BoyerMooreLookaheadEJRiRPNS0_14RegExpCompilerEPS1_EEEPT_DpOT0_.exit, %bb.e
  %.028.ph = phi i32 [ -1, %bb.e ], [ %.sroa.speculated, %_ZN2v88internal4Zone3NewINS0_19BoyerMooreLookaheadEJRiRPNS0_14RegExpCompilerEPS1_EEEPT_DpOT0_.exit ]
  %.0.ph = phi ptr [ %i.r, %bb.e ], [ %i.ae, %_ZN2v88internal4Zone3NewINS0_19BoyerMooreLookaheadEJRiRPNS0_14RegExpCompilerEPS1_EEEPT_DpOT0_.exit ]
  tail call void @_ZN2v88internal19BoyerMooreLookahead20EmitSkipInstructionsEPNS0_20RegExpMacroAssemblerE(ptr noundef nonnull align 8 dereferenceable(32) %.0.ph, ptr noundef nonnull %i.n)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.d, %bb.f, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %.028.ph, %bb.i ], [ -1, %bb.d ], [ 0, %bb.f ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ChoiceNode11EmitChoicesEPNS0_14RegExpCompilerEPNS0_25AlternativeGenerationListEiPNS0_5TraceEPNS0_12PreloadStateENS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 2), (4, 8)) %5, i32 %6) local_unnamed_addr #2 align 2 !guid !221 {
bb.a:
  %7 = alloca %"class.v8::internal::Trace", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.g = load i16, ptr %i.f, align 2
  %.mask.i = and i16 %i.g, 255
  %i.h = icmp eq i16 %.mask.i, 0
  %.in.v.i.i = select i1 %i.h, i64 27, i64 26
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i
  %i.i = load i8, ptr %.in.i.i, align 1
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  store i32 %i.j, ptr %i.c, align 4
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = phi i32 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 4)
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26, !inline_history !222
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i8, ptr %i.q, align 8, !range !50, !noundef !51
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.l, 3
  %spec.store.select.i.i = select i1 %i.t, i32 2, i32 %.sroa.speculated.i.i
  br label %_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE.exit

bb.f:                                             ; preds = %bb.d
  %spec.store.select1.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 2)
  br label %_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE.exit

bb.g:                                             ; preds = %bb.c
  %spec.store.select2.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  br label %_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE.exit

_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i.i = phi i32 [ %spec.store.select2.i.i, %bb.g ], [ %spec.store.select.i.i, %bb.e ], [ %spec.store.select1.i.i, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store i32 %.1.i.i, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, %.1.i.i
  %i.y = zext i1 %i.x to i8                       ; 2 uses
  store i8 %i.y, ptr %5, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = icmp slt i32 %3, %i.ad
  br i1 %i.af, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE.exit
  %i.ag = load i16, ptr %i.ae, align 4
  %i.ah = zext i16 %i.ag to i32
  %i.ai = sdiv i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ak = add nsw i32 %i.ad, -1
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = trunc i32 %i.ai to i16
  %i.az = sext i32 %3 to i64                      ; 2 uses
  %sext = sext i32 %i.ak to i64
  br label %bb.h

._crit_edge77:                                    ; preds = %bb.af, %_ZN2v88internal10ChoiceNode12SetUpPreLoadEPNS0_14RegExpCompilerEPNS0_5TraceEPNS0_12PreloadStateE.exit
  ret void

bb.h:                                             ; preds = %.lr.ph76, %bb.af
  %indvars.iv79 = phi i64 [ %i.az, %.lr.ph76 ], [ %indvars.iv.next80, %bb.af ] ; 6 uses
  store i32 %6, ptr %i.aj, align 4
  %i.ba = icmp ne i64 %indvars.iv79, %sext        ; 4 uses
  %i.bb = load ptr, ptr %i.aa, align 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %indvars.iv79 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bd, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.be = load ptr, ptr %2, align 8
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv79
  %i.bg = load ptr, ptr %i.bf, align 8            ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 3 uses
  %i.bi = load i32, ptr %i.u, align 4             ; 3 uses
  store i32 %i.bi, ptr %i.bh, align 4
  %i.bj = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %i.bj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 12
  %i.bl = load i32, ptr %i.bk, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bm = phi i32 [ %i.bl, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bn = load i32, ptr %4, align 8
  store i32 %i.bn, ptr %7, align 8
  %i.bo = load <2 x i16>, ptr %i.ae, align 4
  %i.bp = and <2 x i16> %i.bo, <i16 -1, i16 511>
  store <2 x i16> %i.bp, ptr %i.al, align 4
  store ptr null, ptr %i.an, align 8
  %i.bq = load <2 x ptr>, ptr %i.ap, align 8
  store <2 x ptr> %i.bq, ptr %i.ao, align 8
  %i.br = load i32, ptr %i.as, align 4
  store i32 %i.br, ptr %i.ar, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 64, i1 false)
  store ptr %4, ptr %i.av, align 8
  %i.bs = load i8, ptr %5, align 4, !range !50, !noundef !51 ; 2 uses
  %i.bt = trunc nuw i8 %i.bs to i1
  %spec.select = select i1 %i.bt, i32 %i.bi, i32 0
  store i32 %spec.select, ptr %i.aq, align 8
  %i.bu = load i8, ptr %i.z, align 1, !range !50, !noundef !51
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bi, ptr %i.ar, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = load i32, ptr %i.at, align 8            ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i, label %_ZN2v88internal17QuickCheckDetails5ClearEv.exit

.lr.ph.i:                                         ; preds = %bb.l
  %wide.trip.count.i = zext nneg i32 %i.bw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.by = icmp ult i32 %i.bw, 8
  br i1 %i.by, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.m ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.m ]
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bz, i8 0, i64 9, i1 false)
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cb, i8 0, i64 9, i1 false)
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cd, i8 0, i64 9, i1 false)
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cf, i8 0, i64 9, i1 false)
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ch, i8 0, i64 9, i1 false)
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cj, i8 0, i64 9, i1 false)
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cl, i8 0, i64 9, i1 false)
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 84
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cn, i8 0, i64 9, i1 false)
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2v88internal17QuickCheckDetails5ClearEv.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !3

_ZN2v88internal17QuickCheckDetails5ClearEv.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal17QuickCheckDetails5ClearEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal17QuickCheckDetails5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2v88internal17QuickCheckDetails5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.n ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv.i.epil
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.co, i8 0, i64 9, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal17QuickCheckDetails5ClearEv.exit, label %bb.n, !llvm.loop !218

_ZN2v88internal17QuickCheckDetails5ClearEv.exit:  ; preds = %_ZN2v88internal17QuickCheckDetails5ClearEv.exit.loopexit.unr-lcssa, %bb.n, %bb.l
  store i32 0, ptr %i.at, align 8
  %i.cp = load i8, ptr %i.ax, align 8, !range !50, !noundef !51
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal17QuickCheckDetails5ClearEv.exit
  store i8 0, ptr %i.am, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal17QuickCheckDetails5ClearEv.exit
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store ptr %i.cr, ptr %i.ao, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store i8 %i.bs, ptr %i.cs, align 4
  %i.ct = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1593), align 1, !range !50, !noundef !51
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cv = icmp eq i64 %indvars.iv79, 0
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %i.cv) #26
  br i1 %i.cz, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.da = load i8, ptr %i.z, align 1, !range !50, !noundef !51
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = call noundef zeroext i1 @_ZN2v88internal10RegExpNode14EmitQuickCheckEPNS0_14RegExpCompilerEPNS0_5TraceES5_bPNS0_5LabelEPNS0_17QuickCheckDetailsEbPNS0_10ChoiceNodeE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.copyload, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %7, i1 noundef zeroext %i.db, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i1 noundef zeroext %i.ba, ptr noundef nonnull %0)
  br i1 %i.dc, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %5, align 4
  store i8 1, ptr %i.z, align 1
  br i1 %i.ba, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %i.b, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.bg) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.at, ptr noundef nonnull align 4 dereferenceable(61) %i.bh, i64 61, i1 false)
  %i.dg = load i32, ptr %i.u, align 4             ; 2 uses
  store i32 %i.dg, ptr %i.aq, align 8
  store i32 %i.dg, ptr %i.ar, align 4
  br label %bb.ab

bb.w:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.di = load i8, ptr %i.dh, align 4, !range !50, !noundef !51
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.ba, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = load ptr, ptr %i.ap, align 8
  br label %.sink.split

bb.z:                                             ; preds = %bb.w
  %i.dl = icmp eq i64 %indvars.iv79, %i.az
  br i1 %i.dl, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.cs, align 4
  store i32 0, ptr %i.aq, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.aa, %bb.z
  %i.dm = load i16, ptr %i.am, align 2
  %i.dn = and i16 %i.dm, 256
  %.not70 = icmp eq i16 %i.dn, 0
  br i1 %.not70, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i16 %i.ay, ptr %i.al, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.do = icmp sgt i32 %i.bm, 0
  br i1 %i.do, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %wide.trip.count = zext nneg i32 %i.bm to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit, %bb.ad
  %i.dp = load ptr, ptr %.sroa.0.0.copyload, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.copyload, ptr noundef nonnull %1, ptr noundef nonnull %7) #26
  store i8 0, ptr %5, align 4
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit ] ; 2 uses
  %i.ds = load ptr, ptr %.sroa.5.0.copyload, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4
  switch i32 %i.dw, label %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit [
    i32 0, label %.sink.split.i
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %.lr.ph
  %.sink14.i = phi i64 [ 280, %bb.ae ], [ 272, %.lr.ph ]
  %i.dx = load i32, ptr %i.du, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = load ptr, ptr %i.ao, align 8
  %i.eb = load ptr, ptr %i.b, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sink14.i
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.dx, i32 noundef %i.dz, ptr noundef %i.ea) #26, !inline_history !56
  br label %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit

_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit: ; preds = %.lr.ph, %.sink.split.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !219

.critedge:                                        ; preds = %bb.u, %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.y
  %.sink91 = phi i64 [ 264, %bb.y ], [ 72, %.critedge ]
  %.sink = phi ptr [ %i.dk, %bb.y ], [ %i.ee, %.critedge ]
  %i.ef = load ptr, ptr %i.b, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink91
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %.sink) #26
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next80 to i32
  %exitcond83.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond83.not, label %._crit_edge77, label %bb.h, !llvm.loop !220
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ChoiceNode25EmitOutOfLineContinuationEPNS0_14RegExpCompilerEPNS0_5TraceENS0_18GuardedAlternativeEPNS0_21AlternativeGenerationEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr noundef %1, ptr noundef %2, ptr %3, ptr nofree readonly captures(address_is_null) %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #2 align 2 !guid !225 {
bb.a:
  %8 = alloca %"class.v8::internal::Trace", align 8 ; 14 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 10 uses
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.h = load i32, ptr %2, align 8
  store i32 %i.h, ptr %8, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load <2 x i16>, ptr %i.j, align 4
  %i.l = and <2 x i16> %i.k, <i16 -1, i16 511>
  store <2 x i16> %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %2, ptr %i.x, align 8
  store i32 %6, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.v, ptr noundef nonnull align 4 dereferenceable(61) %i.y, i64 61, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i8, ptr %i.z, align 8, !range !50, !noundef !51
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i8 0, ptr %i.ac, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = icmp eq ptr %4, null
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.af = load i32, ptr %i.ae, align 4            ; 4 uses
  br i1 %7, label %bb.f, label %bb.h

.thread:                                          ; preds = %bb.d
  br i1 %7, label %.thread49, label %.thread50

.thread50:                                        ; preds = %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  store ptr %i.ag, ptr %i.n, align 8
  br label %._crit_edge

.thread49:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ah, align 4
  store ptr %9, ptr %i.n, align 8
  br label %._crit_edge41

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ai, align 4
  store ptr %9, ptr %i.n, align 8
  %i.aj = icmp sgt i32 %i.af, 0
  br i1 %i.aj, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %bb.f
  %wide.trip.count46 = zext nneg i32 %i.af to i64
  br label %.lr.ph40

._crit_edge41:                                    ; preds = %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit, %.thread49, %bb.f
  %i.ak = load ptr, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %1, ptr noundef nonnull %8) #26
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull %9) #26
  %i.aq = load i32, ptr %2, align 8
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.aq, ptr noundef null, i1 noundef zeroext false, i32 noundef %6, i32 noundef -1) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull %i.ar) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.k

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit
  %indvars.iv43 = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvars.iv.next44, %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit ] ; 2 uses
  %i.av = load ptr, ptr %4, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv43
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  switch i32 %i.az, label %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit [
    i32 0, label %.sink.split.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph40
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %.lr.ph40
  %.sink14.i = phi i64 [ 280, %bb.g ], [ 272, %.lr.ph40 ]
  %i.ba = load i32, ptr %i.ax, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = load ptr, ptr %i.n, align 8
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink14.i
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.ba, i32 noundef %i.bc, ptr noundef %i.bd) #26, !inline_history !56
  br label %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit

_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit: ; preds = %.lr.ph40, %.sink.split.i
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge41, label %.lr.ph40, !llvm.loop !223

bb.h:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store ptr %i.bh, ptr %i.n, align 8
  %i.bi = icmp sgt i32 %i.af, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit35, %.thread50, %bb.h
  %i.bj = load ptr, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %1, ptr noundef nonnull %8) #26
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph, %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit35
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit35 ] ; 2 uses
  %i.bm = load ptr, ptr %4, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  switch i32 %i.bq, label %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit35 [
    i32 0, label %.sink.split.i33
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i33

.sink.split.i33:                                  ; preds = %bb.j, %bb.i
  %.sink14.i34 = phi i64 [ 280, %bb.j ], [ 272, %bb.i ]
  %i.br = load i32, ptr %i.bo, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = load ptr, ptr %i.d, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink14.i34
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.br, i32 noundef %i.bt, ptr noundef nonnull %i.bh) #26, !inline_history !56
  br label %_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit35

_ZN2v88internal10ChoiceNode13GenerateGuardEPNS0_20RegExpMacroAssemblerEPNS0_5GuardEPNS0_5TraceE.exit35: ; preds = %bb.i, %.sink.split.i33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !224

bb.k:                                             ; preds = %._crit_edge, %._crit_edge41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ActionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !guid !226 {
bb.a:
  %3 = alloca %"class.v8::internal::Trace", align 8 ; 11 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %5 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %6 = alloca %"class.v8::internal::Trace", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 22 uses
  %i.c = tail call noundef i32 @_ZN2v88internal10RegExpNode13LimitVersionsEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8
  switch i32 %i.i, label %bb.y [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 8, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 7, label %bb.g
    i32 6, label %bb.s
    i32 9, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = load i32, ptr %2, align 8
  store i32 %i.j, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i16, ptr %i.l, align 4
  store i16 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, 255
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load <2 x ptr>, ptr %i.t, align 8
  store <2 x ptr> %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load <2 x i32>, ptr %i.w, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal10ActionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE:bb.a
  %i.dn = icmp eq i16 %.mask.i67, 255
  %or.cond83 = and i1 %i.dn, %or.cond10.i66
  br i1 %or.cond83, label %bb.p, label %_ZNK2v88internal5Trace10is_trivialEv.exit68.thread

_ZNK2v88internal5Trace10is_trivialEv.exit68.thread: ; preds = %.loopexit, %bb.o
  tail call void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.do, align 4
  br i1 %i.bs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.b, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 280
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.br, i32 noundef %i.dq, ptr noundef nonnull %4) #26
  %.pre89 = load i32, ptr %i.bo, align 8
  %.pre90 = load ptr, ptr %i.cw, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.du = phi ptr [ %.pre90, %bb.q ], [ null, %bb.p ]
  %i.dv = phi i32 [ %.pre89, %bb.q ], [ %i.bp, %bb.p ]
  %i.dw = load ptr, ptr %i.b, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 288
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.dv, ptr noundef %i.du) #26
  %i.dz = load ptr, ptr %i.b, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %4) #26
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(56) %i.ed, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.z

bb.s:                                             ; preds = %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.t, label %_ZNK2v88internal5Trace10is_trivialEv.exit75.thread

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = and i16 %i.el, 256
  %.not.i69 = icmp eq i16 %i.em, 0
  %i.en = load i32, ptr %2, align 8
  %i.eo = icmp eq i32 %i.en, 0
  %or.cond.i70 = select i1 %.not.i69, i1 %i.eo, i1 false
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = icmp eq i32 %i.eq, 0
  %or.cond4.i71 = select i1 %or.cond.i70, i1 %i.er, i1 false
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = icmp eq i32 %i.et, 0
  %or.cond7.i72 = select i1 %or.cond4.i71, i1 %i.eu, i1 false
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = icmp eq i32 %i.ew, 0
  %or.cond10.i73 = select i1 %or.cond7.i72, i1 %i.ex, i1 false
  %.mask.i74 = and i16 %i.el, 255
  %i.ey = icmp eq i16 %.mask.i74, 255
  %or.cond84 = and i1 %i.ey, %or.cond10.i73
  br i1 %or.cond84, label %bb.u, label %_ZNK2v88internal5Trace10is_trivialEv.exit75.thread

_ZNK2v88internal5Trace10is_trivialEv.exit75.thread: ; preds = %bb.s, %bb.t
  tail call void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = load ptr, ptr %i.b, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 344
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.fb) #26
  %i.ff = load i32, ptr %i.ez, align 8
  %i.fg = load ptr, ptr %i.b, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 352
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.ff) #26
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fk = load i32, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(56) %i.fn, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fs = load i32, ptr %i.fr, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.ft, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.fu = load i32, ptr %2, align 8
  store i32 %i.fu, ptr %6, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fx = load <2 x i16>, ptr %i.fw, align 4
  %i.fy = and <2 x i16> %i.fx, <i16 -1, i16 511>
  store <2 x i16> %i.fy, ptr %i.fv, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  store ptr %i.gd, ptr %i.gb, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gf = load <2 x i32>, ptr %i.ep, align 8
  store <2 x i32> %i.gf, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gg, ptr noundef nonnull align 8 dereferenceable(64) %i.ev, i64 64, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %2, ptr %i.gh, align 8
  store ptr %5, ptr %i.ga, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(56) %i.gj, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  %i.gn = load ptr, ptr %i.b, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %5) #26
  %i.gq = add i32 %i.fk, -1
  %i.gr = add i32 %i.gq, %i.fs
  %i.gs = load ptr, ptr %i.b, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 392
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.fs, i32 noundef %i.gr) #26
  %i.gv = load ptr, ptr %i.b, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.z

bb.x:                                             ; preds = %bb.b
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gz = load i32, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  tail call void %i.hf(ptr noundef nonnull align 8 dereferenceable(56) %i.hc, ptr noundef nonnull %1, ptr noundef %2) #26
  br label %bb.z

bb.y:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

bb.z:                                             ; preds = %bb.l, %_ZNK2v88internal5Trace10is_trivialEv.exit68.thread, %bb.r, %bb.n, %bb.c, %bb.x, %bb.f, %_ZNK2v88internal5Trace10is_trivialEv.exit.thread, %bb.v, %bb.w, %_ZNK2v88internal5Trace10is_trivialEv.exit75.thread
  %i.hg = load i32, ptr %i.e, align 8
  %i.hh = add nsw i32 %i.hg, -1
  store i32 %i.hh, ptr %i.e, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17BackReferenceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !guid !227 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZNK2v88internal5Trace10is_trivialEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = and i16 %i.g, 256
  %.not.i = icmp eq i16 %i.h, 0
  %i.i = load i32, ptr %2, align 8
  %i.j = icmp eq i32 %i.i, 0
  %or.cond.i = select i1 %.not.i, i1 %i.j, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  %or.cond4.i = select i1 %or.cond.i, i1 %i.m, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 0
  %or.cond7.i = select i1 %or.cond4.i, i1 %i.p, i1 false
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  %or.cond10.i = select i1 %or.cond7.i, i1 %i.s, i1 false
  %.mask.i = and i16 %i.g, 255
  %i.t = icmp eq i16 %.mask.i, 255
  %or.cond = and i1 %i.t, %or.cond10.i
  br i1 %or.cond, label %bb.c, label %_ZNK2v88internal5Trace10is_trivialEv.exit.thread

_ZNK2v88internal5Trace10is_trivialEv.exit.thread: ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef i32 @_ZN2v88internal10RegExpNode13LimitVersionsEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.aa = and i32 %.sroa.0.0.copyload.i, 2
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %.sroa.0.0.copyload.i, 272
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load i8, ptr %i.af, align 8, !range !50, !noundef !51
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.ae, i1 noundef zeroext %i.ah, i1 noundef zeroext %i.ac, ptr noundef %i.ai) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i8, ptr %i.ao, align 8, !range !50, !noundef !51
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = load ptr, ptr %i.b, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.an, i1 noundef zeroext %i.aq, ptr noundef %i.ar) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load i8, ptr %i.av, align 8, !range !50, !noundef !51
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 -1, ptr %i.f, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4
  %i.ay = and i32 %.sroa.0.0.copyload.i26, 272
  %.not27 = icmp eq i32 %i.ay, 0
  br i1 %.not27, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = load i8, ptr %i.az, align 8, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %2, align 8
  %i.bd = load ptr, ptr %i.c, align 8
  tail call void @_ZN2v88internal20RegExpMacroAssembler23CheckNotInSurrogatePairEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.bc, ptr noundef %i.bd) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  %i.bj = load i32, ptr %i.w, align 8
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.w, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c, %_ZNK2v88internal5Trace10is_trivialEv.exit.thread
  ret void
}

declare void @_ZN2v88internal20RegExpMacroAssembler23CheckNotInSurrogatePairEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode16CalculateOffsetsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0) local_unnamed_addr #2 align 2 !guid !228 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal11TextElement6lengthEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal11TextElement6lengthEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal11TextElement6lengthEv.exit ] ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.q, %_ZNK2v88internal11TextElement6lengthEv.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store i32 %.089, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  switch i32 %i.j, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %_ZNK2v88internal11TextElement6lengthEv.exit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult i64 %i.n, 2147483648
  br i1 %i.o, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i:     ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.n to i32
  br label %_ZNK2v88internal11TextElement6lengthEv.exit

bb.d:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZNK2v88internal11TextElement6lengthEv.exit:      ; preds = %.lr.ph, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i
  %.0.i = phi i32 [ %i.p, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ], [ %i.j, %.lr.ph ]
  %i.q = add nuw nsw i32 %.0.i, %.089
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal13AnalyzeRegExpEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_10RegExpNodeE(ptr noundef %0, i1 noundef zeroext %1, i32 %2, ptr noundef %3) local_unnamed_addr #2 !guid !229 {
bb.a:
  %4 = alloca %"class.v8::internal::Analysis", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEEE, i64 16), ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 0, ptr %i.e, align 8
  %i.f = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !50, !noundef !51
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = and i8 %i.m, 3
  %or.cond.not.i = icmp eq i8 %i.n, 0
  br i1 %or.cond.not.i, label %bb.e, label %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit

bb.e:                                             ; preds = %bb.d
  %i.o = or disjoint i8 %i.m, 1
  store i8 %i.o, ptr %i.l, align 1
  %i.p = load ptr, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(28) %4) #26, !inline_history !14
  %i.s = load i8, ptr %i.l, align 1
  %i.t = and i8 %i.s, -4
  %i.u = or disjoint i8 %i.t, 2
  store i8 %i.u, ptr %i.l, align 1
  %.val.pr.pre = load i32, ptr %i.e, align 8
  br label %_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit

_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14EnsureAnalyzedEPNS0_10RegExpNodeE.exit: ; preds = %bb.b, %bb.e, %bb.d
  %i.v = phi i32 [ %.val.pr.pre, %bb.e ], [ 0, %bb.d ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal17BackReferenceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(73) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #16 align 2 !guid !230 {
bb.a:
  %i.a = load i32, ptr %4, align 8
  %i.b = icmp slt i32 %2, %i.a
  br i1 %i.b, label %.lr.ph.i, label %_ZN2v88internal19BoyerMooreLookahead7SetRestEi.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal19BoyerMooreLookahead6SetAllEi.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.d, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal19BoyerMooreLookahead6SetAllEi.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 3, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not.i.i.i = icmp eq i32 %i.k, 128
  br i1 %.not.i.i.i, label %_ZN2v88internal19BoyerMooreLookahead6SetAllEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 128, ptr %i.j, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 -1, i64 16, i1 false)
  br label %_ZN2v88internal19BoyerMooreLookahead6SetAllEi.exit.i

_ZN2v88internal19BoyerMooreLookahead6SetAllEi.exit.i: ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = load i32, ptr %4, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %bb.b, label %_ZN2v88internal19BoyerMooreLookahead7SetRestEi.exit, !llvm.loop !7

_ZN2v88internal19BoyerMooreLookahead7SetRestEi.exit: ; preds = %_ZN2v88internal19BoyerMooreLookahead6SetAllEi.exit.i, %bb.a
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %bb.d, label %_ZN2v88internal10RegExpNode10SaveBMInfoEPNS0_19BoyerMooreLookaheadEbi.exit

bb.d:                                             ; preds = %_ZN2v88internal19BoyerMooreLookahead7SetRestEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = zext i1 %5 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  store ptr %4, ptr %i.r, align 8
end_hunk_5
