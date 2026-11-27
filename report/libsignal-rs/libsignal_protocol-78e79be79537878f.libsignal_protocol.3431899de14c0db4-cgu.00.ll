Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.00?download=true
inline.NumInlined: 366
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs0_NtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB5_20ScannableFingerprint7compare:bb.a
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 %.sroa.484.sroa.6.0.copyload, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load i32, ptr %i.j, align 8, !range !14, !noundef !7
  %i.l = trunc nuw i32 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.n = load i32, ptr %i.m, align 4
  %.sroa.011.0 = select i1 %i.l, i32 %i.n, i32 0  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i32, ptr %i.o, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %.sroa.011.0, %i.p
  %i.q = ptrtoint ptr %.sroa.484.sroa.5.0.copyload to i64 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %switch = icmp ugt i64 %i.e, -3
  br i1 %switch, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.011.0, ptr %.sroa.417.0..sroa_idx, align 4
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.p, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %0, align 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @23, ptr %.sroa.5140.0..sroa_idx, align 8
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %.sroa.6141.0..sroa_idx, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %i.v, %i.q
  br i1 %.not.i, label %bb.h, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.r, ptr noundef nonnull readonly %i.w, ptr noundef nonnull readonly %i.t, ptr noundef nonnull readonly %i.x)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !699 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.411.0.copyload.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !699 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !699 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !699 ; 2 uses
  %i.y = icmp ult i64 %.sroa.512.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.y, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i: ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.411.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %.noexc163, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i
  %.sroa.01.018.i = phi i8 [ 1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i ], [ %i.af, %.noexc163 ]
  %.sroa.512.017.i = phi i64 [ %.sroa.512.0.copyload.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i ], [ %i.ae, %.noexc163 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.512.017.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.411.0.copyload.i, i64 %.sroa.512.017.i
  %.val.i = load i8, ptr %i.z, align 1, !noundef !7
  %.val10.i = load i8, ptr %i.aa, align 1, !noundef !7
  %i.ab = icmp eq i8 %.val.i, %.val10.i
  %i.ac = zext i1 %i.ab to i8
  %i.ad = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ac) #18
          to label %.noexc163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.ae = add nuw i64 %.sroa.512.017.i, 1         ; 2 uses
  %i.af = and i8 %i.ad, %.sroa.01.018.i           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc163, %.noexc, %bb.g
  %.sroa.01.0.lcssa.sink.i = phi i8 [ 0, %bb.g ], [ 1, %.noexc ], [ %i.af, %.noexc163 ]
  %i.ag = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %.sroa.01.0.lcssa.sink.i) #18
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i176, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i166, %bb.l, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, %bb.h
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #23
          to label %bb.q unwind label %bb.p

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !10, !noundef !7
  %switch162 = icmp ugt i64 %i.ah, -3
  br i1 %switch162, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %0, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @24, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %.sroa.6153.0..sroa_idx, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !7 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i165 = icmp eq i64 %i.ak, %i.ao
  br i1 %.not.i165, label %bb.l, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i166

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull readonly %i.ap, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.aq)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc182:                                        ; preds = %bb.l
  %.sroa.0.0.copyload.i168 = load ptr, ptr %i.a, align 8, !noalias !700 ; 2 uses
  %.sroa.411.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.411.0.copyload.i170 = load ptr, ptr %.sroa.411.0..sroa_idx.i169, align 8, !noalias !700 ; 2 uses
  %.sroa.512.0..sroa_idx.i171 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.512.0.copyload.i172 = load i64, ptr %.sroa.512.0..sroa_idx.i171, align 8, !noalias !700 ; 2 uses
  %.sroa.7.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i174 = load i64, ptr %.sroa.7.0..sroa_idx.i173, align 8, !noalias !700 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.512.0.copyload.i172, %.sroa.7.0.copyload.i174
  br i1 %i.ar, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i175, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i166

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i175: ; preds = %.noexc182
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i168), "nonnull"(ptr %.sroa.411.0.copyload.i170) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i176

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i176: ; preds = %.noexc183, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i175
  %.sroa.01.018.i177 = phi i8 [ 1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i175 ], [ %i.ay, %.noexc183 ]
  %.sroa.512.017.i178 = phi i64 [ %.sroa.512.0.copyload.i172, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i175 ], [ %i.ax, %.noexc183 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i168, i64 %.sroa.512.017.i178
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.411.0.copyload.i170, i64 %.sroa.512.017.i178
  %.val.i179 = load i8, ptr %i.as, align 1, !noundef !7
  %.val10.i180 = load i8, ptr %i.at, align 1, !noundef !7
  %i.au = icmp eq i8 %.val.i179, %.val10.i180
  %i.av = zext i1 %i.au to i8
  %i.aw = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.av) #18
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc183:                                        ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i176
  %i.ax = add nuw i64 %.sroa.512.017.i178, 1      ; 2 uses
  %i.ay = and i8 %i.aw, %.sroa.01.018.i177        ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.ax, %.sroa.7.0.copyload.i174
  br i1 %exitcond.not.i181, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i166, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i176

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i166: ; preds = %.noexc183, %.noexc182, %bb.k
  %.sroa.01.0.lcssa.sink.i167 = phi i8 [ 0, %bb.k ], [ 1, %.noexc182 ], [ %i.ay, %.noexc183 ]
  %i.az = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %.sroa.01.0.lcssa.sink.i167) #18
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.f, %bb.j, %bb.e
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d)
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp ne i8 %i.ag, 0
  %i.bb = icmp ne i8 %i.az, 0
  %narrow = and i1 %i.ba, %i.bb
  %.sroa.082.0 = zext i1 %narrow to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.082.0, ptr %i.bc, align 4
  store i32 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d)
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp205
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB5_20ScannableFingerprint9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !701 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %2 = zext i32 %i.f to i64
  %3 = shl nuw i64 %2, 32
  %4 = or disjoint i64 %3, 1
  store i64 %4, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #23
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB5_11Fingerprint14display_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !708 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !710
  store i64 0, ptr %i.d, align 8, !noalias !710
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !710
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !712, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !712, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !712, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !712, !noundef !7 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.m)
  %i.n = tail call i32 @memcmp(ptr nonnull %i.f, ptr nonnull %i.k, i64 %spec.store.select.i.i), !noalias !713 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %i.h, %i.m
  %spec.select.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !713
  store ptr %i.i, ptr %i.b, align 8, !noalias !713
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !713
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.s, align 8, !noalias !713
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !713
  %i.t = invoke noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @36, ptr noundef nonnull %i.b)
          to label %_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB2_22DisplayableFingerprintNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt.exit.i unwind label %bb.d, !noalias !714

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !713
  store ptr %1, ptr %i.c, align 8, !noalias !713
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !713
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.u, align 8, !noalias !713
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !713
  %i.v = invoke noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @36, ptr noundef nonnull %i.c)
          to label %.noexc6.i unwind label %bb.d, !noalias !714

.noexc6.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !713
  br i1 %i.v, label %bb.e, label %_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint22DisplayableFingerprintNtB5_12SpecToString14spec_to_stringBB_.exit, !prof !5

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %bb.g unwind label %bb.f, !noalias !715

_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB2_22DisplayableFingerprintNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !713
  br i1 %i.t, label %bb.e, label %_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint22DisplayableFingerprintNtB5_12SpecToString14spec_to_stringBB_.exit, !prof !5

bb.e:                                             ; preds = %_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB2_22DisplayableFingerprintNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt.exit.i, %.noexc6.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #19
          to label %.noexc7.i unwind label %bb.d, !noalias !715

.noexc7.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !715
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

_RNvXsC_NtCs6i54tJFfzR_5alloc6stringNtNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint22DisplayableFingerprintNtB5_12SpecToString14spec_to_stringBB_.exit: ; preds = %.noexc6.i, %_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB2_22DisplayableFingerprintNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !710
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB5_11Fingerprint15get_fingerprint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !826 {
bb.a:
  %i.a = alloca [128 x i8], align 1               ; 4 uses
  %i.b = alloca [128 x i8], align 1               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [208 x i8], align 16              ; 4 uses
  %i.i = alloca [64 x i8], align 1                ; 4 uses
  %i.j = alloca [208 x i8], align 16              ; 14 uses
  %i.k = alloca [208 x i8], align 16              ; 4 uses
  %i.l = alloca [64 x i8], align 1                ; 6 uses
  %i.m = alloca [208 x i8], align 16              ; 24 uses
  %i.n = add i32 %1, -1000001
  %or.cond = icmp ult i32 %i.n, -999999
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = zext i32 %1 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, 2
  store i64 %7, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol.exit78: ; preds = %.body58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread85
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body2388, %.thread85 ], [ %lpad.loopexit.split-lp129, %.body58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.p = icmp eq i64 %i.s, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol.exit78.thread

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol.exit78.thread: ; preds = %.body58.thread, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol.exit78
  %.pn.pn127 = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol.exit78 ], [ %eh.lpad-body72102, %.body58.thread ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #24
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

.thread96:                                        ; preds = %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i41, %bb.s, %bb.m, %bb.g, %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i18, %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i28
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread85

bb.c:                                             ; preds = %bb.a
  %i.q = tail call { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %4) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 13 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) @58, i64 64, i1 false)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 12 uses
  store i128 0, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !827
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 127 ; 8 uses
  store i16 0, ptr %i.m, align 16, !alias.scope !828
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.u = icmp samesign ult i64 %i.s, 126
  br i1 %i.u, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i17

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.v, ptr nonnull readonly align 1 %i.r, i64 range(i64 0, -9223372036854775808) %i.s, i1 false), !alias.scope !835, !noalias !836
  %i.w = trunc nuw nsw i64 %i.s to i8
  %i.x = add nuw nsw i8 %i.w, 2                   ; 2 uses
  store i8 %i.x, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !837
  br label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.e:                                             ; preds = %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i18
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 126 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !838
  %i.z = add nsw i64 %i.s, -126                   ; 3 uses
  %i.aa = and i64 %i.z, 9223372036854775680
  %i.ab = and i64 %i.z, 127                       ; 2 uses
  %i.ac = lshr i64 %i.z, 7                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %.noexc25, label %bb.g

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i17: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !838
  store ptr %i.m, ptr %i.f, align 8, !noalias !838
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(126) %i.af, ptr noundef nonnull readonly align 1 dereferenceable(126) %i.r, i64 126, i1 false), !alias.scope !835, !noalias !836
  store i128 1, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !839, !noalias !840
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha51211compress512(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.m, i64 noundef 1)
          to label %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i18 unwind label %bb.f, !noalias !841

bb.f:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i17
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.thread85 unwind label %bb.h, !noalias !841

_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i18: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i17
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.e unwind label %.thread96, !noalias !841

bb.g:                                             ; preds = %bb.e
  %i.ah = zext nneg i64 %i.ac to i128
  %i.ai = load i128, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !839, !noalias !842, !noundef !7
  %i.aj = add i128 %i.ai, %i.ah
  store i128 %i.aj, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !839, !noalias !842
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha51211compress512(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 72057594037927936) %i.ac)
          to label %.noexc25 unwind label %.thread96, !noalias !836

.noexc25:                                         ; preds = %bb.g, %bb.e
  %i.ak = trunc nuw nsw i64 %i.ab to i8
  store i8 %i.ak, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !843
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(208) %i.m, ptr nonnull align 1 %i.ad, i64 %i.ab, i1 false), !alias.scope !835, !noalias !836
  %.val.i.i.i26.pre = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !844
  br label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.h:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !841
  unreachable

_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %.noexc25, %bb.d
  %.val.i.i.i26 = phi i8 [ %.val.i.i.i26.pre, %.noexc25 ], [ %i.x, %bb.d ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.am = zext nneg i8 %.val.i.i.i26 to i64       ; 3 uses
  %i.an = icmp sgt i8 %.val.i.i.i26, -1
  call void @llvm.assume(i1 %i.an)
  %i.ao = sub nuw nsw i64 128, %i.am              ; 4 uses
  %i.ap = icmp samesign ult i64 %3, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.aq = icmp eq i8 %.val.i.i.i26, 0
  br i1 %i.aq, label %bb.k, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i27

bb.j:                                             ; preds = %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !alias.scope !852
  %i.as = trunc nuw nsw i64 %3 to i8
  %i.at = add nuw i8 %.val.i.i.i26, %i.as         ; 2 uses
  store i8 %i.at, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !853
  br label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol.exit36

bb.k:                                             ; preds = %.noexc34, %bb.i
  %.sroa.8.0.i.i.i29 = phi i64 [ %3, %bb.i ], [ %i.be, %.noexc34 ] ; 3 uses
  %.sroa.0.0.i.i.i30 = phi ptr [ %2, %bb.i ], [ %i.bd, %.noexc34 ] ; 2 uses
  %i.au = and i64 %.sroa.8.0.i.i.i29, 9223372036854775680
  %i.av = and i64 %.sroa.8.0.i.i.i29, 127         ; 2 uses
  %i.aw = lshr i64 %.sroa.8.0.i.i.i29, 7          ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i30, i64 %i.au
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %.noexc35, label %bb.m

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i27: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !854
  store ptr %i.m, ptr %i.e, align 8, !noalias !854
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.ao, i1 false), !alias.scope !852
  %i.ba = load i128, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !855, !noalias !856, !noundef !7
  %i.bb = add i128 %i.ba, 1
  store i128 %i.bb, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !855, !noalias !856
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha51211compress512(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.m, i64 noundef 1)
          to label %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i28 unwind label %bb.l, !noalias !857

bb.l:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i27
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.thread85 unwind label %bb.n, !noalias !857

_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i28: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i27
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc34 unwind label %.thread96, !noalias !857

.noexc34:                                         ; preds = %_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.be = sub nuw nsw i64 %3, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !854
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.bf = zext nneg i64 %i.aw to i128
  %i.bg = load i128, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !855, !noalias !858, !noundef !7
  %i.bh = add i128 %i.bg, %i.bf
  store i128 %i.bh, ptr %.sroa.48.0..sroa_idx.i, align 16, !alias.scope !855, !noalias !858
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha51211compress512(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i30, i64 noundef range(i64 1, 72057594037927936) %i.aw)
          to label %.noexc35 unwind label %.thread96

.noexc35:                                         ; preds = %bb.m, %bb.k
  %i.bi = trunc nuw nsw i64 %i.av to i8
  store i8 %i.bi, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !859
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(208) %i.m, ptr nonnull align 1 %i.ax, i64 %i.av, i1 false), !alias.scope !852
  %.val.i.i.i39.pre = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !860
  br label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol.exit36

bb.n:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !857
  unreachable

_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol.exit36: ; preds = %.noexc35, %bb.j
  %.val.i.i.i39 = phi i8 [ %.val.i.i.i39.pre, %.noexc35 ], [ %i.at, %bb.j ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.bk = zext nneg i8 %.val.i.i.i39 to i64       ; 3 uses
  %i.bl = icmp sgt i8 %.val.i.i.i39, -1
  call void @llvm.assume(i1 %i.bl)
  %i.bm = sub nuw nsw i64 128, %i.bk              ; 4 uses
  %i.bn = icmp samesign ult i64 %i.s, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol.exit36
end_hunk_0
