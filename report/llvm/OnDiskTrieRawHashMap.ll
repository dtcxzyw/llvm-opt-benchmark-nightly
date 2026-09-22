Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OnDiskTrieRawHashMap?download=true
inline.NumInlined: 2310
inline.NumDeleted: 1149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_111TriePrinter9visitSlotEjNS_13SubtrieHandleEN4llvm9StringRefENS_16SubtrieSlotValueE:bb.a
  %i.gf = lshr i64 %.012.i28.i, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !33  ; 2 uses
  %i.gi = and i64 %.012.i28.i, 4
  %i.gj = icmp eq i64 %i.gi, 0
  %i.gk = lshr i8 %i.gh, 4
  %i.gl = and i8 %i.gh, 15
  %i.gm = select i1 %i.gj, i8 %i.gk, i8 %i.gl
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !33
  %i.gq = or i8 %i.gp, 32                         ; 2 uses
  %i.gr = load ptr, ptr %i.ff, align 8, !tbaa !126 ; 3 uses
  %i.gs = load ptr, ptr %i.fd, align 8, !tbaa !125
  %.not.i.i29.i = icmp ult ptr %i.gr, %i.gs
  br i1 %.not.i.i29.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i27.i
  %i.gt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i8 noundef zeroext %i.gq) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i30.i

bb.ak:                                            ; preds = %.lr.ph.i27.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store ptr %i.gu, ptr %i.ff, align 8, !tbaa !126
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i30.i

_ZN4llvm11raw_ostreamlsEc.exit.i30.i:             ; preds = %bb.ak, %bb.aj
  %i.gv = add i64 %.012.i28.i, 4                  ; 2 uses
  %.not.i31.i = icmp eq i64 %i.gv, %i.ee
  br i1 %.not.i31.i, label %_ZNK12_GLOBAL__N_113SubtrieHandle9printHashERN4llvm11raw_ostreamENS1_8ArrayRefIhEE.exit, label %.lr.ph.i27.i, !llvm.loop !4

_ZNK12_GLOBAL__N_113SubtrieHandle9printHashERN4llvm11raw_ostreamENS1_8ArrayRefIhEE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i30.i, %_ZN4llvm11raw_ostreamlsEPKc.exit25.i
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !176, !nonnull !72, !align !73 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !125
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !126 ; 2 uses
  %i.hb = icmp eq ptr %i.gy, %i.ha
  br i1 %i.hb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK12_GLOBAL__N_113SubtrieHandle9printHashERN4llvm11raw_ostreamENS1_8ArrayRefIhEE.exit
  %i.hc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gw, ptr noundef nonnull @.str.22, i64 noundef 1) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

bb.am:                                            ; preds = %_ZNK12_GLOBAL__N_113SubtrieHandle9printHashERN4llvm11raw_ostreamENS1_8ArrayRefIhEE.exit
  store i8 10, ptr %i.ha, align 1
  %i.hd = load ptr, ptr %i.gz, align 8, !tbaa !126
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store ptr %i.he, ptr %i.gz, align 8, !tbaa !126
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

_ZN4llvm11raw_ostreamlsEPKc.exit46:               ; preds = %bb.al, %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !167 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !168
  %.not.i = icmp ult i32 %i.hh, %i.hj
  br i1 %.not.i, label %bb.ao, label %bb.an, !prof !117

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 noundef %6)
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46
  %i.hk = zext i32 %i.hh to i64
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !166
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hk
  store i64 %6, ptr %i.hm, align 1
  %i.hn = load i32, ptr %i.hg, align 8, !tbaa !167
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hg, align 8, !tbaa !167
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.an, %bb.ao, %bb.t, %bb.u
  store ptr null, ptr %0, align 8, !tbaa !41
  ret void
}

declare void @_ZN4llvm13StdThreadPoolC1ENS_18ThreadPoolStrategyE(ptr noundef nonnull align 8 dereferenceable(368), i64) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111TrieVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(480) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_111TrieVisitorE, i64 16), ptr %0, align 8, !tbaa !104
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvm13StdThreadPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %i.a) #23, !inline_history !179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !161, !range !106, !noundef !72
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !161
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm5ErrorELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNSt14_Optional_baseIN4llvm5ErrorELb0ELb0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #23, !inline_history !7
  br label %_ZNSt14_Optional_baseIN4llvm5ErrorELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4llvm5ErrorELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_111TrieVisitorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm5ErrorELb0ELb0EED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !102
  %i.q = load ptr, ptr %.val.i, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #23, !inline_history !8
  %i.t = load ptr, ptr %.val.i, align 8, !tbaa !104
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #23, !inline_history !8
  br label %_ZN12_GLOBAL__N_111TrieVisitorD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN12_GLOBAL__N_111TrieVisitorD2Ev.exit, !prof !105

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #23, !inline_history !179
  br label %_ZN12_GLOBAL__N_111TrieVisitorD2Ev.exit

_ZN12_GLOBAL__N_111TrieVisitorD2Ev.exit:          ; preds = %_ZNSt14_Optional_baseIN4llvm5ErrorELb0ELb0EED2Ev.exit.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_111TrieVisitor12visitSubTrieEN4llvm9StringRefENS_13SubtrieHandleE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef readnone byval(%"class.(anonymous namespace)::SubtrieHandle") align 8 captures(none) %4) unnamed_addr #12 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_111TrieVisitor9visitSlotEjNS_13SubtrieHandleEN4llvm9StringRefENS_16SubtrieSlotValueE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 %2, ptr nofree noundef readnone byval(%"class.(anonymous namespace)::SubtrieHandle") align 8 captures(none) %3, ptr nofree readnone captures(none) %4, i64 %5, i64 %6) unnamed_addr #12 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm13StdThreadPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11printPrefixRN4llvm11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ugt i64 %2, 3
  br i1 %i.b, label %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit.lr.ph, label %._crit_edge

_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit

_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit:  ; preds = %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit.lr.ph, %_ZN4llvm11raw_ostreamlsEc.exit
  %.sroa.010.016 = phi ptr [ %1, %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit.lr.ph ], [ %i.p, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 2 uses
  %.sroa.5.015 = phi i64 [ %2, %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit.lr.ph ], [ %i.q, %_ZN4llvm11raw_ostreamlsEc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.010.016, i64 4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.f, 255
  %i.g = select i1 %i.e, i1 true, i1 %.not.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.h = select i1 %i.g, i64 0, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !33
  %i.k = or i8 %i.j, 32                           ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !126  ; 3 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !125
  %.not.i3 = icmp ult ptr %i.l, %i.m
  br i1 %.not.i3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext %i.k) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.o, ptr %i.c, align 8, !tbaa !126
  store i8 %i.k, ptr %i.l, align 1, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 4 ; 2 uses
  %i.q = add i64 %.sroa.5.015, -4                 ; 3 uses
  %i.r = icmp ugt i64 %i.q, 3
  br i1 %i.r, label %_ZNK4llvm9StringRef12getAsIntegerIhEEbjRT_.exit, label %._crit_edge, !llvm.loop !602

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.a
  %.sroa.5.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.q, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %.sroa.010.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.p, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.s, label %_ZN4llvm11raw_ostreamlsEPKc.exit9, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126  ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.28, i64 noundef 1) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !126
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.d
  store i8 91, ptr %i.w, align 1
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !126
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.ab = phi ptr [ %.pre, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %0, %bb.f ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ugt i64 %.sroa.5.0.lcssa, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %.sroa.010.0.lcssa, i64 noundef %.sroa.5.0.lcssa) #23 ; 2 uses
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre20 = load ptr, ptr %.phi.trans.insert19, align 8, !tbaa !126
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %.sroa.010.0.lcssa, i64 %.sroa.5.0.lcssa, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.5.0.lcssa ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !126
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %.pre20, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %.0.i6 = phi ptr [ %i.ai, %bb.g ], [ %.0.i.i, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i6, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ap = icmp eq ptr %i.ao, %i.am
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i6, ptr noundef nonnull @.str.29, i64 noundef 1) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 32 ; 2 uses
  store i8 93, ptr %i.am, align 1
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !126
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.j, %bb.i, %._crit_edge
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !167
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !166
  %i.g = load i32, ptr %i.a, align 8, !tbaa !167
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !167
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !167
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111TrieVisitor21validateSubtrieHeaderEmb(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.b = tail call noundef i64 @_ZNK4llvm3sys2fs18mapped_file_region4sizeEv(ptr noundef nonnull align 8 dereferenceable(20) %.val13) #23 ; 2 uses
  %i.c = add i64 %2, 8                            ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !38
  store ptr @.str.38, ptr %4, align 8, !tbaa !33
  store i8 3, ptr %i.e, align 8, !tbaa !37
  call fastcc void @_ZL22createInvalidTrieErrormRKN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.g = tail call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20) %.val) #23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !89    ; 3 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.m, align 1, !tbaa !38
  store ptr @.str.39, ptr %5, align 8, !tbaa !33
  store i8 3, ptr %i.l, align 8, !tbaa !37
  call fastcc void @_ZL22createInvalidTrieErrormRKN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  br i1 %3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14 = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.o = getelementptr i8, ptr %.val14, i64 8
  %.val14.val = load i8, ptr %i.o, align 8, !tbaa !87
  %i.p = icmp ult i8 %.val14.val, %i.j
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !38
  store ptr @.str.40, ptr %6, align 8, !tbaa !33
  store i8 3, ptr %i.q, align 8, !tbaa !37
  call fastcc void @_ZL22createInvalidTrieErrormRKN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.s = zext nneg i8 %i.j to i64
  %i.t = shl i64 8, %i.s
  %i.u = add i64 %i.c, %i.t
  %i.v = icmp ugt i64 %i.u, %i.b
end_hunk_0
