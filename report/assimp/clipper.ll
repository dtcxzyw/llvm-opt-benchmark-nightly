Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib11ClipperBase18SwapPositionsInAELEPNS_5TEdgeES2_:bb.a
  store ptr %i.t, ptr %i.c, align 8
  %.not75 = icmp eq ptr %i.t, null
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store ptr %1, ptr %i.u, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.b, ptr %i.f, align 8
  %.not76 = icmp eq ptr %i.b, null
  br i1 %.not76, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %2, ptr %i.v, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.d, ptr %i.h, align 8
  %.not77 = icmp eq ptr %i.d, null
  br i1 %.not77, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %2, ptr %i.w, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.m
  %.pr = load ptr, ptr %i.c, align 8
  %.not82 = icmp eq ptr %.pr, null
  br i1 %.not82, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %i.x = load ptr, ptr %i.h, align 8
  %.not83 = icmp eq ptr %i.x, null
  br i1 %.not83, label %.sink.split, label %bb.x

.sink.split:                                      ; preds = %bb.w, %bb.v
  %.sink = phi ptr [ %1, %bb.v ], [ %2, %bb.w ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sink, ptr %i.y, align 8
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib11ClipperBase17UpdateEdgeIntoAELERPNS_5TEdgeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN10ClipperLib16clipperExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN10ClipperLib16clipperExceptionE, ptr nonnull @_ZN10ClipperLib16clipperExceptionD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #30
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load ptr, ptr %1, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not34 = icmp eq ptr %i.l, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %. = select i1 %.not34, ptr %0, ptr %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %., i64 104
  store ptr %i.p, ptr %i.q, align 8
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store ptr %i.t, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %1, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i32 %i.ad, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %1, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  store i32 %i.aj, ptr %i.am, align 4
  %i.an = load ptr, ptr %1, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store i32 %i.ap, ptr %i.as, align 8
  %i.at = load ptr, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  store ptr %i.av, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.ax = load ptr, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store ptr %i.l, ptr %i.ay, align 8
  %i.az = load ptr, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  store ptr %i.n, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %1, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = fcmp oeq double %i.bd, -1.000000e+40
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bg = load i64, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bg, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE4pushERKx(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11ClipperBase18LocalMinimaPendingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = icmp ne ptr %i.d, %i.c
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib7ClipperC2Ei(ptr noundef nonnull align 8 dereferenceable(135) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  store ptr %i.h, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i8 0, ptr %i.p, align 8
  %i.q = trunc i32 %2 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = and i8 %i.q, 1
  store i8 %i.s, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 134
  %3 = lshr i32 %2, 1
  %4 = trunc i32 %3 to i8
  %i.u = and i8 %4, 1
  store i8 %i.u, ptr %i.t, align 2
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %5 = lshr i32 %2, 2
  %6 = trunc i32 %5 to i8
  %i.aa = and i8 %6, 1
  store i8 %i.aa, ptr %i.z, align 8
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 73
  store i8 0, ptr %i.af, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) initializes((0, 80), (136, 176), (184, 208), (216, 240), (248, 272)) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.n = and i8 %i.l, 1
  store i8 %i.n, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 134
  %2 = lshr i32 %1, 1
  %3 = trunc i32 %2 to i8
  %i.p = and i8 %3, 1
  store i8 %i.p, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %4 = lshr i32 %1, 2
  %5 = trunc i32 %4 to i8
  %i.r = and i8 %5, 1
  store i8 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 0, ptr %i.s, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeE(ptr noundef nonnull align 8 dereferenceable(135) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 73
  %i.i = load i8, ptr %i.h, align 1, !range !47, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN10ClipperLib16clipperExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN10ClipperLib16clipperExceptionE, ptr nonnull @_ZN10ClipperLib16clipperExceptionD2Ev) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #30
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.f ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.m, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.f, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.w = phi ptr [ %i.d, %bb.f ], [ %.pre, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %3, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %4, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 0, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(135) %0) ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit
  tail call void @_ZN10ClipperLib7Clipper11BuildResultERSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i
  %i.al = icmp eq ptr %i.bc, %i.bd
  br i1 %i.al, label %_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv.exit, label %_ZSt8_DestroyIPPN10ClipperLib6OutRecES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN10ClipperLib6OutRecES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.bd, ptr %i.ai, align 8
  br label %_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv.exit

.lr.ph.i:                                         ; preds = %bb.i, %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i
  %i.am = phi ptr [ %i.bd, %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i ], [ %i.ak, %bb.i ]
  %.06.i = phi i64 [ %i.bb, %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i ], [ 0, %bb.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.06.i
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i10, label %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr null, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not8.i.i.i, label %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.av = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.au, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.ap, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 40) #33
  %i.ay = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i3.i, label %_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN10ClipperLib11ClipperBase13DisposeOutRecEm.exit.i: ; preds = %.lr.ph.i.i.i, %bb.j, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 40) #33
  %i.az = load ptr, ptr %i.ah, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.06.i
  store ptr null, ptr %i.ba, align 8
  %i.bb = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.bc = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bd = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !18

_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv.exit: ; preds = %bb.i, %._crit_edge.i, %_ZSt8_DestroyIPPN10ClipperLib6OutRecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  store i8 0, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv.exit
  %.0 = phi i1 [ %i.ac, %_ZN10ClipperLib11ClipperBase17DisposeAllOutRecsEv.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERNS_8PolyTreeENS_12PolyFillTypeE(ptr noundef nonnull align 8 dereferenceable(135) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERNS_8PolyTreeENS_12PolyFillTypeES4_(ptr noundef nonnull align 8 dereferenceable(135) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3, i32 noundef %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERNS_8PolyTreeENS_12PolyFillTypeES4_(ptr noundef nonnull align 8 dereferenceable(135) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %4, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 1, ptr %i.g, align 1
  %i.h = load ptr, ptr %0, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(135) %0) ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

end_hunk_0
