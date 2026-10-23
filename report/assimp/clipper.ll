Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_:bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  %i.u = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.v = insertelement <2 x i64> %i.u, i64 %3, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi ptr [ %i.ae, %.lr.ph ], [ %i.t, %.lr.ph.preheader ]
  %.010 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.010
  %i.y = load ptr, ptr %1, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.010
  %i.aa = load <2 x i64>, ptr %i.x, align 8
  %i.ab = add nsw <2 x i64> %i.aa, %i.v
  store <2 x i64> %i.ab, ptr %i.z, align 8
  %i.ac = add nuw i64 %.010, 1                    ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !40
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12MinkowskiSumERKSt6vectorINS_8IntPointESaIS1_EERKS0_IS3_SaIS3_EERS7_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ClipperLib::Clipper", align 8 ; 31 uses
  %5 = alloca %"class.std::vector.28", align 8    ; 12 uses
  %6 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 134
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 209
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  %.not.a = icmp eq ptr %i.q, %i.r
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, %bb.a
  %i.w = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef 1)
          to label %bb.m unwind label %bb.q       ; 0 uses

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit ]
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.036
  invoke void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i1 noundef zeroext %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %4, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %4, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ae = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %i.af = phi ptr [ %i.an, %.noexc ], [ %i.ae, %bb.c ]
  %.010.i = phi i64 [ %i.al, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.010.i
  %i.ah = load ptr, ptr %i.ac, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(144) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.al = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.am = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.an = load ptr, ptr %5, align 8               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24
  %i.as = icmp ult i64 %i.al, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !14

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %bb.c
  %i.at = phi ptr [ %i.ad, %bb.c ], [ %i.am, %.noexc ]
  %i.au = phi ptr [ %i.ae, %bb.c ], [ %i.an, %.noexc ]
  br i1 %3, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.036 ; 4 uses
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = load <2 x i64>, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %.not71 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not71, label %_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = icmp ugt i64 %i.be, 9223372036854775792
  br i1 %i.bf, label %bb.f, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #32
          to label %.noexc29 unwind label %.loopexit.split-lp32.thread.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #33
          to label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i unwind label %.loopexit.split-lp32.thread.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i: ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %i.be, i1 false)
  %.pre40.pre = load ptr, ptr %i.aw, align 8      ; 2 uses
  %.pre.pre = load ptr, ptr %i.az, align 8
  store ptr %i.bg, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be ; 4 uses
  store ptr %7, ptr %i.t, align 8
  store ptr %7, ptr %i.u, align 8
  %i.bh = icmp eq ptr %.pre.pre, %.pre40.pre
  br i1 %i.bh, label %_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i, %.lr.ph.i19
  %i.bi = phi ptr [ %i.bp, %.lr.ph.i19 ], [ %.pre40.pre, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i ]
  %.010.i20 = phi i64 [ %i.bn, %.lr.ph.i19 ], [ 0, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.010.i20
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.010.i20
  %i.bl = load <2 x i64>, ptr %i.bj, align 8
  %i.bm = add nsw <2 x i64> %i.bl, %i.ay
  store <2 x i64> %i.bm, ptr %i.bk, align 8
  %i.bn = add nuw i64 %.010.i20, 1                ; 2 uses
  %i.bo = load ptr, ptr %i.az, align 8
  %i.bp = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 4
  %i.bu = icmp ult i64 %i.bn, %i.bt
  br i1 %i.bu, label %.lr.ph.i19, label %_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_.exit, !llvm.loop !40

_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_.exit: ; preds = %.lr.ph.i19, %bb.d, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i
  %i.bv = phi ptr [ null, %bb.d ], [ %i.bg, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i ], [ %i.bg, %.lr.ph.i19 ] ; 6 uses
  %8 = phi ptr [ null, %bb.d ], [ %7, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit.i ], [ %7, %.lr.ph.i19 ] ; 2 uses
  %i.bw = load ptr, ptr %4, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %4, i64 %i.by
  %i.ca = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.g unwind label %.loopexit.split-lp32 ; 0 uses

bb.g:                                             ; preds = %_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_.exit
  %.not.i.i.i22 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %9 = ptrtoint ptr %8 to i64
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %9, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cc) #34
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.pre41 = load ptr, ptr %5, align 8
  %.pre42 = load ptr, ptr %i.s, align 8
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp32.thread.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.f
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24

.loopexit.split-lp32:                             ; preds = %_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_.exit
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24, label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp32
  %10 = ptrtoint ptr %8 to i64
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = sub i64 %10, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ce) #34
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24: ; preds = %.loopexit.split-lp32.thread.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp32, %bb.i
  %lpad.phi3975 = phi { ptr, i32 } [ %lpad.loopexit.split-lp90, %.loopexit.split-lp32.thread.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.split-lp32 ], [ %lpad.loopexit38, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %i.cf = phi ptr [ %.pre42, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit ], [ %i.at, %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit ] ; 2 uses
  %i.cg = phi ptr [ %.pre41, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit ], [ %i.au, %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.cg, %i.cf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i ], [ %i.cg, %bb.j ] ; 3 uses
  %i.ch = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #34
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.cn, %i.cf
  br i1 %.not.i.i.i25, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.j
  %i.co = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.cg, %bb.j ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.cp = load ptr, ptr %i.v, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #34
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ct = add nuw i64 %.036, 1                    ; 2 uses
  %i.cu = load ptr, ptr %i.p, align 8
  %i.cv = load ptr, ptr %1, align 8               ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 24
  %i.da = icmp ult i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.b, label %._crit_edge, !llvm.loop !341

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24
  %.pn = phi { ptr, i32 } [ %lpad.phi3975, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.r

bb.m:                                             ; preds = %._crit_edge
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.db = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.db, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %i.db, %bb.m ] ; 2 uses
  %i.dc = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #34, !inline_history !54
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #34, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.n, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #34, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.dr = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #34, !inline_history !54
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.p
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #31, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.q:                                             ; preds = %._crit_edge
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.dx, %bb.q ]
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13MinkowskiDiffERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  tail call void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 134
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.s = phi ptr [ %i.aa, %.noexc ], [ %i.r, %bb.a ]
  %.010.i = phi i64 [ %i.y, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.010.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
end_hunk_0
