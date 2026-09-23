Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Segment?download=true
inline.NumInlined: 2975
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4LIEF3ELF7Segment4swapERS1_:bb.a
  store i64 %i.x, ptr %i.u, align 8
  store i64 %i.w, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = load i64, ptr %i.z, align 8
  store i64 %i.ab, ptr %i.y, align 8
  store i64 %i.aa, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = load i64, ptr %i.ad, align 8
  store i64 %i.af, ptr %i.ac, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = load i64, ptr %i.ah, align 8
  store i64 %i.aj, ptr %i.ag, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = load i64, ptr %i.al, align 8
  store i64 %i.an, ptr %i.ak, align 8
  store i64 %i.am, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.ao, align 8
  store ptr %i.at, ptr %i.ao, align 8
  %i.ax = load ptr, ptr %i.au, align 8
  store ptr %i.ax, ptr %i.aq, align 8
  %i.ay = load ptr, ptr %i.av, align 8
  store ptr %i.ay, ptr %i.ar, align 8
  store <2 x ptr> %i.aw, ptr %i.ap, align 8
  store ptr %i.as, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8
  %i.bc = load ptr, ptr %i.ba, align 8
  store ptr %i.bc, ptr %i.az, align 8
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bd, align 8
  store ptr %i.bi, ptr %i.bd, align 8
  %i.bm = load ptr, ptr %i.bj, align 8
  store ptr %i.bm, ptr %i.bf, align 8
  %i.bn = load ptr, ptr %i.bk, align 8
  store ptr %i.bn, ptr %i.bg, align 8
  store <2 x ptr> %i.bl, ptr %i.be, align 8
  store ptr %i.bh, ptr %i.bk, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN4LIEF3ELF7SegmentaSES1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(136) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = load i64, ptr %i.b, align 8
  store i64 %i.d, ptr %i.a, align 8
  store i64 %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8
  %i.h = load i32, ptr %i.f, align 8
  store i32 %i.h, ptr %i.e, align 8
  store i32 %i.g, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4
  %i.l = load i32, ptr %i.j, align 4
  store i32 %i.l, ptr %i.i, align 4
  store i32 %i.k, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8
  %i.p = load i64, ptr %i.n, align 8
  store i64 %i.p, ptr %i.m, align 8
  store i64 %i.o, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8
  %i.t = load i64, ptr %i.r, align 8
  store i64 %i.t, ptr %i.q, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8
  %i.x = load i64, ptr %i.v, align 8
  store i64 %i.x, ptr %i.u, align 8
  store i64 %i.w, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = load i64, ptr %i.z, align 8
  store i64 %i.ab, ptr %i.y, align 8
  store i64 %i.aa, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = load i64, ptr %i.ad, align 8
  store i64 %i.af, ptr %i.ac, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = load i64, ptr %i.ah, align 8
  store i64 %i.aj, ptr %i.ag, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = load i64, ptr %i.al, align 8
  store i64 %i.an, ptr %i.ak, align 8
  store i64 %i.am, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.ao, align 8
  store ptr %i.at, ptr %i.ao, align 8
  %i.ax = load ptr, ptr %i.au, align 8
  store ptr %i.ax, ptr %i.aq, align 8
  %i.ay = load ptr, ptr %i.av, align 8
  store ptr %i.ay, ptr %i.ar, align 8
  store <2 x ptr> %i.aw, ptr %i.ap, align 8
  store ptr %i.as, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8
  %i.bc = load ptr, ptr %i.ba, align 8
  store ptr %i.bc, ptr %i.az, align 8
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bd, align 8
  store ptr %i.bi, ptr %i.bd, align 8
  %i.bm = load ptr, ptr %i.bj, align 8
  store ptr %i.bm, ptr %i.bf, align 8
  %i.bn = load ptr, ptr %i.bk, align 8
  store ptr %i.bn, ptr %i.bg, align 8
  store <2 x ptr> %i.bl, ptr %i.be, align 8
  store ptr %i.bh, ptr %i.bk, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF7Segment8from_rawEPKhm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.LIEF::result.75") align 8 captures(none) initializes((0, 4), (136, 137)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.LIEF::ELF::Segment", align 8 ; 11 uses
  %4 = alloca %"class.LIEF::ELF::Segment", align 8 ; 11 uses
  switch i64 %2, label %bb.b [
    i64 32, label %_ZN4LIEF3ELF7SegmentD2Ev.exit
    i64 56, label %_ZN4LIEF3ELF7SegmentD2Ev.exit9
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.64) #25 ; 0 uses
  store i32 5, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.b, align 8
  br label %bb.c

_ZN4LIEF3ELF7SegmentD2Ev.exit:                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4LIEF3ELF7SegmentC1INS0_7details10Elf32_PhdrEEERKT_NS0_4ARCHENS0_6Header6OS_ABIE(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 1 dereferenceable(32) %1, i32 noundef 0, i32 noundef 0) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7SegmentE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8
  store <2 x ptr> %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %8 = load <2 x ptr>, ptr %6, align 8
  store <2 x ptr> %8, ptr %5, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 120
  %9 = load <2 x ptr>, ptr %i.l, align 8
  store <2 x ptr> %9, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7SegmentE, i64 16), ptr %3, align 8
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(136) %3) #25, !inline_history !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

_ZN4LIEF3ELF7SegmentD2Ev.exit9:                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4LIEF3ELF7SegmentC1INS0_7details10Elf64_PhdrEEERKT_NS0_4ARCHENS0_6Header6OS_ABIE(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 1 dereferenceable(56) %1, i32 noundef 0, i32 noundef 0) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7SegmentE, i64 16), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8
  store <2 x ptr> %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %13 = load <2 x ptr>, ptr %11, align 8
  store <2 x ptr> %13, ptr %10, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 120
  %14 = load <2 x ptr>, ptr %i.w, align 8
  store <2 x ptr> %14, ptr %i.v, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.x, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7SegmentE, i64 16), ptr %4, align 8
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(136) %4) #25, !inline_history !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZN4LIEF3ELF7SegmentD2Ev.exit9, %_ZN4LIEF3ELF7SegmentD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF7SegmentD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7SegmentE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN4LIEF3ELF7SectionESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorIPN4LIEF3ELF7SectionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3ELF7SectionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4LIEF3ELF7Segment7contentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i, label %bb.b

_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.64) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  br label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %.0.i = select i1 %.not.i, i64 %i.q, i64 %i.o
  %i.r = tail call { ptr, i8 } @_ZN4LIEF3ELF11DataHandler7Handler3getEmmNS1_4Node4TypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %i.m, i64 noundef %.0.i, i8 noundef zeroext 1) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.r, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.r, 1
  %i.s = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.64) #25 ; 0 uses
  br label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 5 uses
  %.not = icmp ult i64 %i.ac, %i.aa
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.64) #25 ; 0 uses
  br label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %.fca.0.extract, align 8  ; 2 uses
  %i.ag = add i64 %i.af, %i.ac                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.ac
  br i1 %i.ah, label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not16 = icmp ult i64 %i.ag, %i.aa
  br i1 %.not16, label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.n, align 8             ; 2 uses
  %.not.i46 = icmp eq i64 %i.ai, 0
  %i.aj = load i64, ptr %i.p, align 8
  %.0.i47 = select i1 %.not.i46, i64 %i.aj, i64 %i.ai ; 2 uses
  %i.ak = add i64 %.0.i47, %i.ac
  %.not17 = icmp ugt i64 %i.ak, %i.aa
  br i1 %.not17, label %bb.i, label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45

bb.i:                                             ; preds = %bb.h
  %i.al = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.64) #25 ; 0 uses
  br label %_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45

_ZN4LIEF3ELF9to_stringENS0_7Segment4TYPEE.exit45: ; preds = %bb.e, %bb.c, %bb.i, %bb.f, %bb.h, %bb.g, %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i
  %.sroa.8.1 = phi i64 [ %i.k, %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i ], [ 0, %bb.c ], [ %.0.i47, %bb.h ], [ 0, %bb.i ], [ 0, %bb.f ], [ %i.af, %bb.g ], [ 0, %bb.e ]
  %.sroa.051.1 = phi ptr [ %i.f, %_ZNK6frozen3mapIN4LIEF3ELF7Segment4TYPEEPKcLm39ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i ], [ null, %bb.c ], [ %i.ae, %bb.h ], [ null, %bb.i ], [ null, %bb.f ], [ %i.ae, %bb.g ], [ null, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.051.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4LIEF3ELF7Segment16get_content_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8
  %.0.i = select i1 %.not.i, i64 %i.p, i64 %i.n
  %i.q = tail call { ptr, i8 } @_ZN4LIEF3ELF11DataHandler7Handler3getEmmNS1_4Node4TypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %i.l, i64 noundef %.0.i, i8 noundef zeroext 1) #25 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.q, 1
  %i.r = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.64) #25 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.fca.0.extract = extractvalue { ptr, i8 } %i.q, 0
  %i.t = load i64, ptr %.fca.0.extract, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i64 [ %i.j, %bb.b ], [ %i.t, %bb.e ], [ 0, %bb.d ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF3ELF7Segment3hasERKNS0_7SectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.052.i.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.b, %bb.a ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.032.051.i.i.i, align 8 ; 2 uses
end_hunk_0
