Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/darknet2ncnn?download=true
inline.NumInlined: 1950
inline.NumDeleted: 563
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z8load_cfgPKcRSt5dequeIP7SectionSaIS3_EE:bb.a
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds i8, ptr %3, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hi = or i32 %i.hh, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.hf, i32 noundef %i.hi)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %.loopexit.split-lp

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc88, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.hj = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.hj, ptr %3, align 8, !tbaa !19
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.hl = getelementptr i8, ptr %i.hj, i64 -24
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds i8, ptr %3, i64 %i.hm
  store ptr %i.hk, ptr %i.hn, align 8, !tbaa !19
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.ha) #31
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.ho, ptr %3, align 8, !tbaa !19
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.hq = getelementptr i8, ptr %i.ho, i64 -24
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds i8, ptr %3, i64 %i.hr
  store ptr %i.hp, ptr %i.hs, align 8, !tbaa !19
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ht, align 8, !tbaa !36
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hu) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.hv = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.g
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit
  call void @_ZdlPv(ptr noundef %i.hv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.y
  %.pn23 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.ea, %bb.y ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit103, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp104, %.loopexit.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #31
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %bb.d
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.loopexit ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.hx = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.g
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.hx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn23.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZL4trimRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = ashr i64 %i.c, 2                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.i = and i64 %i.c, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.a, i64 %i.i ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.051.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.g, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.a, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.j = load i8, ptr %.sroa.031.050.i.i.i, align 1, !tbaa !18
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.k) #36
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %i.o = sext i8 %i.n to i32
  %i.p = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.o) #36
  %.not.i.i16.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i16.i.i.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = sext i8 %i.r to i32
  %i.t = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.s) #36
  %.not.i.i17.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i17.i.i.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit84, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = sext i8 %i.v to i32
  %i.x = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.w) #36
  %.not.i.i18.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i18.i.i.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit86, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 4
  %i.z = add nsw i64 %.051.i.i.i, -1
  %i.aa = icmp sgt i64 %.051.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !118

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.a ]
  %.sroa.031.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.ab = sub i64 %i.e, %.pre-phi.i.i.i
  switch i64 %i.ab, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.thread [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %.sroa.031.0.lcssa.i.i.i, align 1, !tbaa !18
  %i.ad = sext i8 %i.ac to i32
  %i.ae = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.ad) #36
  %.not.i.i19.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i19.i.i.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.031.1.i.i.i = phi ptr [ %i.af, %bb.g ], [ %.sroa.031.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = load i8, ptr %.sroa.031.1.i.i.i, align 1, !tbaa !18
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.ah) #36
  %.not.i.i20.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i20.i.i.i, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.031.2.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %.sroa.031.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ak = load i8, ptr %.sroa.031.2.i.i.i, align 1, !tbaa !18
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.al) #36
  %.not.i.i21.i.i.i = icmp eq i32 %i.am, 0
  %spec.select.i.i.i = select i1 %.not.i.i21.i.i.i, ptr %.sroa.031.2.i.i.i, ptr %i.d
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit84: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit86: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit84, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit86, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.031.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %.sroa.031.0.lcssa.i.i.i, %bb.f ], [ %i.ap, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit86 ], [ %i.ao, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit84 ], [ %i.an, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.loopexit.split.loop.exit ], [ %.sroa.031.050.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aq = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  br i1 %i.aq, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.thread, label %bb.k

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit
  store i64 0, ptr %i.b, align 8, !tbaa !15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit

bb.k:                                             ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit
  %i.ar = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.as = sub i64 %i.ar, %i.f
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.as)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit: ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZL4trimRS8_EUliE_ET_SC_SC_T0_.exit.thread, %bb.k
  %i.at = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !119 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 4 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.at to i64               ; 4 uses
  %i.ay = ashr i64 %i.au, 2                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i13

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit
  %1 = and i64 %i.au, -4
  %2 = sub i64 %i.aw, %1
  %i.ba = mul nsw i64 %i.ay, -4
  %scevgep.i.i = getelementptr i8, ptr %i.av, i64 %i.ba
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.r, %.lr.ph.i.preheader.i.i
  %i.bb = phi ptr [ %i.bs, %bb.r ], [ %i.av, %.lr.ph.i.preheader.i.i ] ; 6 uses
  %i.bc = phi i64 [ %i.bz, %bb.r ], [ %i.aw, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.036.i.i.i = phi i64 [ %i.bx, %bb.r ], [ %i.ay, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18, !noalias !122
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.bg) #36, !noalias !122
  %.not.i.i.i.i.i15 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i15, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i14
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 -2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18, !noalias !122
  %i.bk = sext i8 %i.bj to i32
  %i.bl = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.bk) #36, !noalias !122
  %.not.i.i8.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i8.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds i8, ptr %i.bb, i64 -1
  %.cast.i.i.i = ptrtoint ptr %i.bm to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds i8, ptr %i.bb, i64 -3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18, !noalias !122
  %i.bp = sext i8 %i.bo to i32
  %i.bq = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.bp) #36, !noalias !122
  %.not.i.i9.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i9.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds i8, ptr %i.bb, i64 -2
  %.cast22.i.i.i = ptrtoint ptr %i.br to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16

bb.p:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18, !noalias !122
  %i.bu = sext i8 %i.bt to i32
  %i.bv = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.bu) #36, !noalias !122
  %.not.i.i10.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i10.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds i8, ptr %i.bb, i64 -3
  %.cast23.i.i.i = ptrtoint ptr %i.bw to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16

bb.r:                                             ; preds = %bb.p
  %i.bx = add nsw i64 %.036.i.i.i, -1
  %i.by = icmp sgt i64 %.036.i.i.i, 1
  %i.bz = ptrtoint ptr %i.bs to i64
  br i1 %i.by, label %.lr.ph.i.i.i14, label %._crit_edge.i.i.i13, !llvm.loop !129

._crit_edge.i.i.i13:                              ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit
  %i.ca = phi i64 [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit ], [ %2, %bb.r ] ; 5 uses
  %i.cb = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit ], [ %scevgep.i.i, %bb.r ] ; 2 uses
  %i.cc = sub i64 %i.ca, %i.ax
  switch i64 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16 [
    i64 3, label %bb.s
    i64 2, label %bb.u
    i64 1, label %bb.w
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i13
  %i.cd = inttoptr i64 %i.ca to ptr
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !18, !noalias !122
  %i.cg = sext i8 %i.cf to i32
  %i.ch = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.cg) #36, !noalias !122
  %.not.i.i13.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i13.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -1 ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i13
  %i.ck = phi ptr [ %i.ci, %bb.t ], [ %i.cb, %._crit_edge.i.i.i13 ]
  %i.cl = phi i64 [ %i.cj, %bb.t ], [ %i.ca, %._crit_edge.i.i.i13 ] ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18, !noalias !122
  %i.cp = sext i8 %i.co to i32
  %i.cq = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.cp) #36, !noalias !122
  %.not.i.i14.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i14.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds i8, ptr %i.ck, i64 -1
  %i.cs = ptrtoint ptr %i.cr to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i13
  %i.ct = phi i64 [ %i.cs, %bb.v ], [ %i.ca, %._crit_edge.i.i.i13 ] ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !18, !noalias !122
  %i.cx = sext i8 %i.cw to i32
  %i.cy = tail call i32 @isspace(i32 noundef range(i32 -128, 128) %i.cx) #36, !noalias !122
  %.not.i.i15.i.i.i = icmp eq i32 %i.cy, 0
  %spec.select.i.i = select i1 %.not.i.i15.i.i.i, i64 %i.ct, i64 %i.ax
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit16: ; preds = %.lr.ph.i.i.i14, %bb.m, %bb.o, %bb.q, %._crit_edge.i.i.i13, %bb.s, %bb.u, %bb.w
  %.sink.i.i.i = phi i64 [ %spec.select.i.i, %bb.w ], [ %i.cl, %bb.u ], [ %i.ca, %bb.s ], [ %i.ax, %._crit_edge.i.i.i13 ], [ %.cast23.i.i.i, %bb.q ], [ %.cast22.i.i.i, %bb.o ], [ %.cast.i.i.i, %bb.m ], [ %i.bc, %.lr.ph.i.i.i14 ]
  %i.cz = sub i64 %.sink.i.i.i, %i.ax             ; 2 uses
  store i64 %i.cz, ptr %i.b, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !18
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z20get_original_sectionRSt5dequeIP7SectionSaIS1_EEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  %.015.v = select i1 %i.a, i32 %1, i32 1
  %.015 = add nsw i32 %.015.v, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130, !noalias !131 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134, !noalias !131 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130, !noalias !135 ; 2 uses
  %.not2324 = icmp eq ptr %i.c, %i.h
  br i1 %.not2324, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !138, !noalias !131
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit
  %.sroa.018.027 = phi ptr [ %.sroa.018.1, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.026 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.13.025 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.018.027, align 8, !tbaa !59 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !104
  %.not = icmp eq i32 %i.m, %.015
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.sroa.10.026
  br i1 %i.o, label %bb.c, label %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.13.025, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 512
  br label %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit

_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.13.1 = phi ptr [ %i.p, %bb.c ], [ %.sroa.13.025, %bb.b ]
  %.sroa.10.1 = phi ptr [ %i.r, %bb.c ], [ %.sroa.10.026, %bb.b ]
  %.sroa.018.1 = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.not23 = icmp eq ptr %.sroa.018.1, %i.h
  br i1 %.not23, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit, %bb.a
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !140, !noalias !141
  %i.t = ptrtoint ptr %i.c to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 4 uses
  %i.x = icmp sgt i64 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.y = icmp samesign ult i64 %i.w, 64
  br i1 %i.y, label %_ZNSt5dequeIP7SectionSaIS1_EEixEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = lshr i64 %i.w, 6
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.aa = ashr i64 %i.v, 9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.z, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !139, !noalias !141
  %i.ae = shl nsw i64 %i.ab, 6
  %i.af = sub nsw i64 %i.w, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  br label %_ZNSt5dequeIP7SectionSaIS1_EEixEm.exit

_ZNSt5dequeIP7SectionSaIS1_EEixEm.exit:           ; preds = %bb.d, %bb.g
  %storemerge.i.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.c, %bb.d ]
  %i.ah = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZNSt5dequeIP7SectionSaIS1_EEixEm.exit
  %.3 = phi ptr [ %i.ah, %_ZNSt5dequeIP7SectionSaIS1_EEixEm.exit ], [ %i.k, %.lr.ph ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z26get_section_by_output_blobRSt5dequeIP7SectionSaIS1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130, !noalias !144 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !147 ; 2 uses
  %.not37 = icmp eq ptr %i.c, %i.e
  br i1 %.not37, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134, !noalias !144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138, !noalias !144
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph43, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit
  %.01341 = phi ptr [ undef, %.lr.ph43 ], [ %.114.lcssa, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ] ; 2 uses
  %.sroa.020.040 = phi ptr [ %i.c, %.lr.ph43 ], [ %.sroa.020.1, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ] ; 2 uses
  %.sroa.10.039 = phi ptr [ %i.i, %.lr.ph43 ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ] ; 2 uses
  %.sroa.13.038 = phi ptr [ %i.g, %.lr.ph43 ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIP7SectionRS1_PS1_EppEv.exit ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.020.040, align 8, !tbaa !59 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 504
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %.not3134 = icmp eq ptr %i.o, %i.q
  br i1 %.not3134, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.016.035, i64 32 ; 2 uses
  %.not31 = icmp eq ptr %i.r, %i.q
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.11436 = phi ptr [ %i.al, %bb.c ], [ %.01341, %bb.b ] ; 2 uses
  %.sroa.016.035 = phi ptr [ %i.r, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
end_hunk_0
