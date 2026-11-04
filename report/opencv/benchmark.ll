Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/benchmark?download=true
inline.NumInlined: 906
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z14initAlgorithmsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc28, %bb.q
  %.0.i.i.i = phi i8 [ %i.bj, %bb.q ], [ %i.bn, %.noexc28 ]
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc30
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !77  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.s, %_ZNSolsEPFRSoS_E.exit
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.j
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !22
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !79  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ca, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !82
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #25, !inline_history !144
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #25, !inline_history !144
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i1.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i1.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.cd, %bb.w ], [ %i.cn, %bb.x ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.co, label %bb.y, label %bb.z, !prof !83

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.b

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn10 = phi { ptr, i32 } [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.e
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.aa ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.cp = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cp, ptr %2, align 8, !tbaa !30
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cu, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !21 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !22
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #26
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cu, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.db) #25
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.dc, ptr %2, align 8, !tbaa !30
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.de = getelementptr i8, ptr %i.dc, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %2, i64 %i.df
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dh, align 8, !tbaa !146
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.di) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ad:                                            ; preds = %bb.ab, %bb.d
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn, %bb.ab ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZNSt6vectorI8AlgoWrapSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  resume { ptr, i32 } %.pn10.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(25) ptr @_ZN2cv12VideoCapturersERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8AlgoWrap4evalERKN2cv3MatERKNS0_5Rect_IdEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = tail call noundef i64 @_ZN2cv12getTickCountEv()
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !62
  store i32 16842752, ptr %4, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.m = call noundef i64 @_ZN2cv12getTickCountEv()
  %i.n = sub i64 %i.m, %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = load <2 x i32>, ptr %i.a, align 4, !tbaa !24, !noalias !153
  %i.s = load i32, ptr %i.o, align 8, !tbaa !154, !noalias !153 ; 2 uses
  %i.t = sitofp <2 x i32> %i.r to <2 x double>    ; 8 uses
  %i.u = load <2 x i32>, ptr %i.p, align 4, !tbaa !24, !noalias !153
  %.fr = freeze <2 x i32> %i.u                    ; 4 uses
  %i.v = sitofp <2 x i32> %.fr to <2 x double>    ; 7 uses
  %i.w = load <2 x double>, ptr %2, align 8, !tbaa !69, !noalias !155 ; 8 uses
  %i.x = load <2 x double>, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !69, !noalias !155 ; 6 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 5 uses
  %i.z = fcmp ole double %i.y, 0.000000e+00
  %i.aa = extractelement <2 x double> %i.x, i64 1 ; 3 uses
  %i.ab = fcmp ole double %i.aa, 0.000000e+00
  %i.ac = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %i.ac, label %_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp slt <2 x i32> %.fr, splat (i32 1)
  %5 = bitcast <2 x i1> %i.ad to i2
  %.not = icmp eq i2 %5, 0
  br i1 %.not, label %bb.c, label %_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = extractelement <2 x double> %i.w, i64 0 ; 3 uses
  %i.af = extractelement <2 x double> %i.t, i64 0 ; 3 uses
  %i.ag = fcmp olt double %i.ae, %i.af            ; 5 uses
  %i.ah = extractelement <2 x double> %i.w, i64 1 ; 5 uses
  %i.ai = extractelement <2 x double> %i.t, i64 1 ; 3 uses
  %i.aj = fcmp olt double %i.ah, %i.ai            ; 2 uses
  %i.ak = select i1 %i.ag, double %i.ae, double %i.af ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %.cont37.i, label %bb.d

.cont37.i:                                        ; preds = %bb.c
  %i.am = select i1 %i.ag, double %i.af, double %i.ae
  %i.an = extractelement <2 x double> %i.v, i64 0
  %i.ao = select i1 %i.ag, double %i.y, double %i.an
  %i.ap = fadd double %i.ak, %i.ao
  %i.aq = fcmp olt double %i.ap, %i.am
  br i1 %i.aq, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.cont37.i, %bb.c
  br i1 %i.aj, label %.cont48.thread.i, label %.cont31.i

.cont48.thread.i:                                 ; preds = %bb.d
  %i.ar = fcmp olt double %i.ah, 0.000000e+00
  %i.as = shufflevector <2 x double> %i.x, <2 x double> %i.t, <2 x i32> <i32 1, i32 3> ; 2 uses
  br i1 %i.ar, label %.then46.i, label %._crit_edge.i.cont.i

.cont31.i:                                        ; preds = %bb.d
  %i.at = icmp slt i32 %i.s, 0
  %i.au = shufflevector <2 x double> %i.v, <2 x double> %i.w, <2 x i32> <i32 1, i32 3> ; 2 uses
  br i1 %i.at, label %bb.e, label %._crit_edge.i.cont.i

bb.e:                                             ; preds = %.cont31.i
  %i.av = extractelement <2 x i32> %.fr, i64 1
  %i.aw = add nsw i32 %i.av, %i.s
  %i.ax = sitofp i32 %i.aw to double
  br label %.cont45.i

.then46.i:                                        ; preds = %.cont48.thread.i
  %i.ay = fadd double %i.ah, %i.aa
  br label %.cont45.i

.cont45.i:                                        ; preds = %.then46.i, %bb.e
  %i.az = phi double [ %i.ay, %.then46.i ], [ %i.ax, %bb.e ]
  %i.ba = phi double [ %i.ah, %.then46.i ], [ %i.ai, %bb.e ]
  %i.bb = phi <2 x double> [ %i.as, %.then46.i ], [ %i.au, %bb.e ] ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1
  %i.bd = fcmp olt double %i.az, %i.bc
  br i1 %i.bd, label %bb.g, label %._crit_edge.i.cont.i

._crit_edge.i.cont.i:                             ; preds = %.cont45.i, %.cont31.i, %.cont48.thread.i
  %i.be = phi double [ %i.ba, %.cont45.i ], [ %i.ai, %.cont31.i ], [ %i.ah, %.cont48.thread.i ]
  %i.bf = phi <2 x double> [ %i.bb, %.cont45.i ], [ %i.au, %.cont31.i ], [ %i.as, %.cont48.thread.i ] ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.w, %i.t
  %foldExtExtBinop62 = fadd <2 x double> %foldExtExtBinop, %i.x
  %i.bg = extractelement <2 x double> %foldExtExtBinop62, i64 0
  %foldExtExtBinop64 = fsub <2 x double> %i.t, %i.w
  %i.bh = extractelement <2 x double> %i.v, i64 0
  %foldExtExtBinop66 = fadd <2 x double> %foldExtExtBinop64, %i.v
  %i.bi = extractelement <2 x double> %foldExtExtBinop66, i64 0
  %i.bj = select i1 %i.ag, double %i.bg, double %i.bi ; 2 uses
  %i.bk = select i1 %i.ag, double %i.bh, double %i.y ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %.sroa.speculated51.i.i = select i1 %i.bl, double %i.bk, double %i.bj ; 2 uses
  %i.bm = extractelement <2 x double> %i.bf, i64 1
  %i.bn = fsub double %i.bm, %i.be
  %i.bo = extractelement <2 x double> %i.bf, i64 0
  %i.bp = fsub double %i.bo, %i.bn                ; 2 uses
  %i.bq = extractelement <2 x double> %i.v, i64 1
  %i.br = select i1 %i.aj, double %i.bq, double %i.aa ; 2 uses
  %i.bs = fcmp olt double %i.br, %i.bp
  %.sroa.speculated.i.i = select i1 %i.bs, double %i.br, double %i.bp ; 2 uses
  %i.bt = fcmp ole double %.sroa.speculated51.i.i, 0.000000e+00
  %i.bu = fcmp ole double %.sroa.speculated.i.i, 0.000000e+00
  %i.bv = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.cont.i
  br label %bb.g

bb.g:                                             ; preds = %.cont37.i, %.cont45.i, %._crit_edge.i.cont.i, %bb.f
  %.sroa.14.0.i.ph.ph = phi double [ %.sroa.speculated51.i.i, %._crit_edge.i.cont.i ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %.cont45.i ], [ 0.000000e+00, %.cont37.i ]
  %.sroa.19.0.i.ph.ph = phi double [ %.sroa.speculated.i.i, %._crit_edge.i.cont.i ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %.cont45.i ], [ 0.000000e+00, %.cont37.i ]
  %i.bw = fmul double %.sroa.14.0.i.ph.ph, %.sroa.19.0.i.ph.ph
  %i.bx = fcmp ogt <2 x double> %i.w, %i.t
  %i.by = fadd <2 x double> %i.w, %i.x            ; 2 uses
  %i.bz = fadd <2 x double> %i.t, %i.v            ; 2 uses
  %i.ca = select <2 x i1> %i.bx, <2 x double> %i.t, <2 x double> %i.w
  %i.cb = fcmp olt <2 x double> %i.by, %i.bz
  %i.cc = select <2 x i1> %i.cb, <2 x double> %i.bz, <2 x double> %i.by
  %i.cd = fsub <2 x double> %i.cc, %i.ca
  br label %_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit

_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit:          ; preds = %bb.b, %bb.a, %bb.g
  %i.ce = phi double [ %i.bw, %bb.g ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  %i.cf = phi <2 x double> [ %i.cd, %bb.g ], [ %i.v, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %shift = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fmul <2 x double> %shift, %i.cf
  %i.cg = extractelement <2 x double> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !96
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !96
  %i.ck = load i8, ptr %i.k, align 8, !tbaa !95, !range !26, !noundef !27
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = icmp sgt <2 x i32> %.fr, zeroinitializer ; 2 uses
  %i.cn = extractelement <2 x i1> %i.cm, i64 0
  %6 = and i1 %i.cn, %i.cl
  %i.co = extractelement <2 x i1> %i.cm, i64 1
  %narrow = and i1 %6, %i.co
  %i.cp = zext i1 %narrow to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !156
  %i.cs = add nsw i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !156
  %i.ct = fcmp ogt double %i.y, 0.000000e+00
  %i.cu = load double, ptr %.sroa.19.0..sroa_idx.i, align 8
  %i.cv = fcmp ogt double %i.cu, 0.000000e+00
  %i.cw = select i1 %i.ct, i1 %i.cv, i1 false
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cy = fcmp ogt double %i.cg, 0.000000e+00
  %i.cz = fdiv double %i.ce, %i.cg
  %i.da = select i1 %i.cy, double %i.cz, double 0.000000e+00 ; 5 uses
  %i.db = fcmp ogt double %i.da, 0.000000e+00
  %i.dc = insertelement <2 x i1> poison, i1 %i.cw, i64 0
  %i.dd = insertelement <2 x i1> %i.dc, i1 %i.db, i64 1
  %i.de = zext <2 x i1> %i.dd to <2 x i32>
  %i.df = load <2 x i32>, ptr %i.cx, align 8, !tbaa !24
  %i.dg = add nsw <2 x i32> %i.df, %i.de
  store <2 x i32> %i.dg, ptr %i.cx, align 8, !tbaa !24
  %i.dh = fcmp ogt double %i.da, 5.000000e-01     ; 2 uses
  %i.di = zext i1 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !97
  %i.dl = add nsw i32 %i.dk, %i.di
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !97
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dn = fmul double %i.da, 1.000000e+02
  %i.do = fptoui double %i.dn to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.do, i64 100)
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !77
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.sroa.speculated ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !98
  %i.dv = add nsw i64 %i.n, %i.du
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !98
  br i1 %3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !23
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dx, i64 noundef %i.dz) ; 2 uses
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.33, i64 noundef 3) ; 0 uses
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, double noundef %i.da) ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 240
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !51
  %.not.i1.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 67
  %i.em = load i8, ptr %i.el, align 1, !tbaa !22
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ei)
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef signext i8 %i.ep(ptr noundef nonnull align 8 dereferenceable(570) %i.ei, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.em, %bb.j ], [ %i.eq, %bb.k ]
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i8 noundef signext %.0.i.i.i)
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er) ; 0 uses
  %.pre = load double, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !158
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit
  %i.et = phi double [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.y, %_ZN2cvorIdEENS_5Rect_IT_EERKS3_S5_.exit ]
  %i.eu = fcmp ogt double %i.et, 0.000000e+00
  %i.ev = load double, ptr %.sroa.19.0..sroa_idx.i, align 8
  %i.ew = fcmp ogt double %i.ev, 0.000000e+00
  %i.ex = select i1 %i.eu, i1 %i.ew, i1 false
  %i.ey = load i32, ptr %i.p, align 4, !tbaa !159, !noalias !160
  %i.ez = load i32, ptr %i.q, align 8, !tbaa !161, !noalias !160
  %i.fa = icmp sgt i32 %i.ey, 0
  %i.fb = icmp sgt i32 %i.ez, 0
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fd = xor i1 %i.ex, %i.fc
  br i1 %i.fd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.fe, align 4, !tbaa !99
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 3, ptr %i.ff, align 4, !tbaa !99
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.fg = fcmp ogt double %i.da, 1.000000e-04
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br i1 %i.fg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %i.fh, align 4, !tbaa !99
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 1, ptr %i.fh, align 4, !tbaa !99
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %bb.m
  ret void
}

declare void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i64, i32 noundef, double noundef, ptr noundef align 8 dead_on_return, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8AlgoWrap4drawERN2cv3MatERKNS0_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.cv::Scalar_", align 16      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !95, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 50397184, ptr %3, align 8, !tbaa !64
  store ptr %1, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.01.0.copyload = load i64, ptr %i.f, align 4, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 2, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99   ; 3 uses
  %i.l = icmp ult i32 %i.k, 4
  br i1 %i.l, label %switch.lookup, label %bb.e

bb.d:                                             ; preds = %switch.lookup
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

switch.lookup:                                    ; preds = %bb.c
  %i.n = zext nneg i32 %i.k to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK8AlgoWrap4drawERN2cv3MatERKNS0_6Point_IiEE, i64 %i.n
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.o = zext nneg i32 %i.k to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8AlgoWrap4drawERN2cv3MatERKNS0_6Point_IiEE.1, i64 %i.o
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  %switch.ext = zext i8 %switch.load36 to i64
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %switch.load, i64 noundef %switch.ext)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.e:                                             ; preds = %bb.c, %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !64
end_hunk_0
