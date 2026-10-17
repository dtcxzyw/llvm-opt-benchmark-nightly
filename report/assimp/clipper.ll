Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib13ClipperOffset7ExecuteERNS_8PolyTreeEd:bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.gq = load ptr, ptr %i.ei, align 8
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gs) #34
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.gm, ptr %i.f, align 8
  store ptr %i.gp, ptr %i.g, align 8
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gk
  store ptr %i.gt, ptr %i.ei, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.t
  %i.gu = trunc i64 %i.gc to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  store ptr %1, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  store i32 %i.gu, ptr %i.gw, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = load ptr, ptr %i.dy, align 8
  %i.gy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = shl i64 %i.hb, 29
  %i.hd = ashr i64 %i.hc, 32
  %i.he = icmp slt i64 %indvars.iv.next, %i.hd
  br i1 %i.he, label %.lr.ph, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, !llvm.loop !251

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit60

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit60

bb.z:                                             ; preds = %bb.m, %bb.l
  %i.hf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i47 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i47, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i54, label %.lr.ph.i48

._crit_edge.i52:                                  ; preds = %bb.ab
  %i.hh = icmp eq ptr %i.ht, %i.hs
  br i1 %i.hh, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i54, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i53

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i53: ; preds = %._crit_edge.i52
  store ptr %i.hs, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i54

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i54: ; preds = %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i53, %._crit_edge.i52, %bb.z
  %i.hi = load ptr, ptr %i.g, align 8
  %i.hj = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i.i4.i55 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not.i.i4.i55, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i56

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i56: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i54
  store ptr %i.hj, ptr %i.g, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

.lr.ph.i48:                                       ; preds = %bb.z, %bb.ab
  %i.hk = phi ptr [ %i.hs, %bb.ab ], [ %i.hg, %bb.z ] ; 2 uses
  %i.hl = phi ptr [ %i.ht, %bb.ab ], [ %i.hf, %bb.z ]
  %.010.i49 = phi i64 [ %i.hu, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.010.i49
  %i.hn = load ptr, ptr %i.hm, align 8            ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i48
  %i.hp = load ptr, ptr %i.hn, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hn) #31, !inline_history !50
  %.pre.i50 = load ptr, ptr %i.b, align 8
  %.pre14.i51 = load ptr, ptr %i.a, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i48
  %i.hs = phi ptr [ %i.hk, %.lr.ph.i48 ], [ %.pre14.i51, %bb.aa ] ; 4 uses
  %i.ht = phi ptr [ %i.hl, %.lr.ph.i48 ], [ %.pre.i50, %bb.aa ] ; 3 uses
  %i.hu = add nuw i64 %.010.i49, 1                ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 3
  %i.hz = icmp ult i64 %i.hu, %i.hy
  br i1 %i.hz, label %.lr.ph.i48, label %._crit_edge.i52, !llvm.loop !0

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %bb.y, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i56, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i54
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 64) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ad

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit60: ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.r ], [ %i.ft, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 64) #34
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit60, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit60 ], [ %i.fr, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ah

bb.ad:                                            ; preds = %bb.d, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.z, align 8
  %i.ia = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ia, %i.af
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i ], [ %i.ia, %bb.ad ] ; 2 uses
  %i.ib = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #34, !inline_history !54
  %.not.i.i.i.i = icmp eq ptr %i.ib, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %bb.ad
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.id = load ptr, ptr %i.ic, align 8            ; 3 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i61, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.id to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ii) #34, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.ae, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #34, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.iq = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #34, !inline_history !54
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.ag
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.z) #31, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.ah:                                            ; preds = %.loopexit77, %.loopexit.split-lp78, %bb.ac
  %.pn33 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ac ], [ %lpad.loopexit79, %.loopexit77 ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp78 ]
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 3 uses
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8                  ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #34
  br label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !51

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8
  %i.ag = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN10ClipperLib8IntPointES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) initializes((120, 128)) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load double, ptr %i.e, align 8
  %i.g = sext i32 %1 to i64                       ; 6 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load double, ptr %i.i, align 8
  %i.k = load double, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = fneg double %i.m
  %i.o = fmul double %i.k, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.f, double %i.j, double %i.o) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store double %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = load double, ptr %i.r, align 8           ; 4 uses
  %i.t = fmul double %i.p, %i.s
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp olt double %i.u, 1.000000e+00
  br i1 %i.v, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %2, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x
  %i.z = load double, ptr %i.h, align 8
  %i.aa = load double, ptr %i.i, align 8
  %i.ab = load <2 x double>, ptr %i.y, align 8    ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1
  %i.ad = fmul double %i.aa, %i.ac
  %i.ae = extractelement <2 x double> %i.ab, i64 0
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.z, double %i.ad)
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.g
  %i.al = load <2 x i64>, ptr %i.ak, align 8
  %i.am = sitofp <2 x i64> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ao, <2 x double> %i.am) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0 ; 2 uses
  %i.ar = fcmp olt double %i.aq, 0.000000e+00
  %.0.in.v.i = select i1 %i.ar, double -5.000000e-01, double 5.000000e-01
  %.0.in.i = fadd double %i.aq, %.0.in.v.i
  %.0.i = fptosi double %.0.in.i to i64           ; 2 uses
  %i.as = extractelement <2 x double> %i.ap, i64 1 ; 2 uses
  %i.at = fcmp olt double %i.as, 0.000000e+00
  %.0.in.v.i42 = select i1 %i.at, double -5.000000e-01, double 5.000000e-01
  %.0.in.i43 = fadd double %i.as, %.0.in.v.i42
  %.0.i44 = fptosi double %.0.in.i43 to i64       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %.0.i, ptr %i.av, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.0.i44, ptr %.sroa.595.0..sroa_idx, align 8
  %i.ay = load ptr, ptr %i.au, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.az, ptr %i.au, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775792
  br i1 %i.be, label %bb.f, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.bf = ashr exact i64 %i.bd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 576460752303423487)
  %i.bj = select i1 %i.bh, i64 576460752303423487, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 4
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #33 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i64 %.0.i, ptr %i.bm, align 8
  %.sroa.595.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %.0.i44, ptr %.sroa.595.0..sroa_idx96, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %i.bl, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !266
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bl, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

end_hunk_0
