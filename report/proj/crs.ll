Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs?download=true
inline.NumInlined: 8471
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5osgeo4proj3crs12ProjectedCRS25addUnitConvertAndAxisSwapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS0_2cs20CoordinateSystemAxisEEEESaISB_EEPNS0_2io19PROJStringFormatterEb:bb.a

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter7addStepEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not93 = icmp eq ptr %i.q, null                ; 2 uses
  br i1 %.not93, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.x, %bb.w, %bb.m, %bb.l, %bb.i, %bb.g, %bb.f, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !149
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.39, double noundef %i.r)
          to label %bb.n unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not93, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  invoke void @_ZNK5osgeo4proj6common13UnitOfMeasure18exportToPROJStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !149
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aa = call noundef double @_ZNK5osgeo4proj6common13UnitOfMeasure14conversionToSIEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #42
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, double noundef %i.aa)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.t, %bb.q
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.p
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.ai = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.u
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !129
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.r ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.z

bb.v:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.104, double noundef %i.r)
          to label %bb.y unwind label %bb.j

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.y unwind label %bb.j

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.aq = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.y
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !129
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.ac

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn95 = phi { ptr, i32 } [ %i.t, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.av = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.z
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !129
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn95

.thread125:                                       ; preds = %.thread, %bb.c
  %i.ba = tail call noundef zeroext i1 @_ZNK5osgeo4proj2io19PROJStringFormatter12getCRSExportEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.ba, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.thread125
  %i.bb = tail call noundef zeroext i1 @_ZNK5osgeo4proj2io19PROJStringFormatter24getLegacyCRSToCRSContextEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.bb, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37)
  br label %bb.ac

bb.ac:                                            ; preds = %.thread125, %bb.aa, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  br i1 %2, label %.thread146, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = call noundef zeroext i1 @_ZNK5osgeo4proj2io19PROJStringFormatter12getCRSExportEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bd = call noundef zeroext i1 @_ZNK5osgeo4proj2io19PROJStringFormatter24getLegacyCRSToCRSContextEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.bd, label %bb.af, label %.thread146

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.be = load ptr, ptr %0, align 8, !tbaa !264   ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !275 ; 3 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #42 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !275 ; 3 uses
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bi) #42 ; 4 uses
  %i.bk = icmp eq ptr %i.bg, @_ZN5osgeo4proj2cs13AxisDirection4EASTE
  %i.bl = icmp eq ptr %i.bj, @_ZN5osgeo4proj2cs13AxisDirection5NORTHE ; 2 uses
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !149 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !149
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.ah, label %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a

bb.ah:                                            ; preds = %bb.ag
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127, label %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.a

_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.a:     ; preds = %bb.ah
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !150
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !150
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.bt, ptr %i.bs, i64 %i.bn)
  %.not = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not, label %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127, label %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a

_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a: ; preds = %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.a, %bb.ag
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #42 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, @_ZN5osgeo4proj2cs13AxisDirection4WESTE
  br i1 %i.bv, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a
  %i.bw = icmp eq ptr %i.bu, @_ZN5osgeo4proj2cs13AxisDirection4EASTE
  br i1 %i.bw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bx = icmp eq ptr %i.bu, @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE ; 2 uses
  %i.by = icmp eq ptr %i.bu, @_ZN5osgeo4proj2cs13AxisDirection5NORTHE
  %spec.select = or i1 %i.bx, %i.by
  %spec.select154 = select i1 %i.bx, ptr @.str.45, ptr @.str.43
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a
  %i.bz = phi i1 [ %spec.select, %bb.aj ], [ true, %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a ], [ true, %bb.ai ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %spec.select154, %bb.aj ], [ @.str.44, %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread.a ], [ @.str.42, %bb.ai ]
  %i.ca = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bi) #42 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, @_ZN5osgeo4proj2cs13AxisDirection4WESTE
  br i1 %i.cb, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = icmp eq ptr %i.ca, @_ZN5osgeo4proj2cs13AxisDirection4EASTE
  br i1 %i.cc, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cd = icmp eq ptr %i.ca, @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE
  br i1 %i.cd, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = icmp eq ptr %i.ca, @_ZN5osgeo4proj2cs13AxisDirection5NORTHE
  %brmerge.not = and i1 %i.ce, %i.bz
  br i1 %brmerge.not, label %bb.ap, label %.thread146

bb.ao:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %.sroa.8.0 = phi ptr [ @.str.42, %bb.al ], [ @.str.45, %bb.am ], [ @.str.44, %bb.ak ]
  br i1 %i.bz, label %bb.ap, label %.thread146

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sroa.8.0149 = phi ptr [ @.str.43, %bb.an ], [ %.sroa.8.0, %bb.ao ]
  call void @_ZN5osgeo4proj2io19PROJStringFormatter7addStepEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.47, ptr noundef nonnull %.sroa.0.0, ptr noundef nonnull %.sroa.8.0149) #39 ; 0 uses
  call void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.thread146

_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127: ; preds = %bb.ah, %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.a, %bb.af
  %i.cg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bf) #42
  %i.ch = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ci, ptr %5, align 8, !tbaa !146
  store i64 7453010330695921518, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.cj, align 8, !tbaa !149
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ck, align 8, !tbaa !129
  %i.cl = call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %5) #39
  br i1 %i.cl, label %._crit_edge.i.i111, label %.critedge101

._crit_edge.i.i111:                               ; preds = %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cm, ptr %6, align 8, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cm, ptr noundef nonnull align 1 dereferenceable(7) @.str.106, i64 7, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.cn, align 8, !tbaa !149
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.co, align 1, !tbaa !129
  %i.cp = call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %6) #39
  %i.cq = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cm
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %._crit_edge.i.i111
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !129
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %._crit_edge.i.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge101

.critedge101:                                     ; preds = %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.cu = phi i1 [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ false, %_ZNK5osgeo4proj4util8CodeListneERKS2_.exit.thread127 ] ; 2 uses
  %i.cv = load ptr, ptr %5, align 8, !tbaa !150   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ci
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %.critedge101
  %i.cx = load i64, ptr %i.ci, align 8, !tbaa !129
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %.critedge101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.cz = icmp eq ptr %i.bg, @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE
  %i.da = icmp eq ptr %i.bj, @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE
  %or.cond6 = and i1 %i.cz, %i.da
  br i1 %or.cond6, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.db = icmp eq ptr %i.bg, @_ZN5osgeo4proj2cs13AxisDirection5NORTHE
  %or.cond8 = and i1 %i.db, %i.bl
  %or.cond10 = and i1 %or.cond8, %i.cu
  br i1 %or.cond10, label %bb.as, label %.thread146

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  br i1 %i.cu, label %bb.as, label %.thread146

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @_ZN5osgeo4proj2io19PROJStringFormatter7addStepEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.46)
  call void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.107)
  br label %.thread146

.thread146:                                       ; preds = %bb.an, %bb.ap, %bb.ao, %bb.as, %bb.ar, %bb.aq, %bb.ae, %bb.ac
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK5osgeo4proj9operation10Conversion5isUTMERiRb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

declare hidden noundef zeroext i1 @_ZNK5osgeo4proj2cs16CoordinateSystem15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZN5osgeo4proj2cs11CartesianCS21createEastingNorthingERKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.280") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK5osgeo4proj3crs12ProjectedCRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEEENK3$_1clB5cxx11EPKcib"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @_ZN5osgeo4proj8internal8toStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39, !noalias !1406
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !146, !alias.scope !1406
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !149  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.h, ptr %i.l, align 8, !tbaa !149, !alias.scope !1406
  store ptr %i.e, ptr %i.b, align 8, !tbaa !150
  store i64 0, ptr %i.k, align 8, !tbaa !149
  store i8 0, ptr %i.e, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.d, ptr %4, align 8, !tbaa !150, !alias.scope !1406
  %i.m = load i64, ptr %i.e, align 8, !tbaa !129
  store i64 %i.m, ptr %i.c, align 8, !tbaa !129, !alias.scope !1406
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !149 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !149, !alias.scope !1406
  store ptr %i.e, ptr %i.b, align 8, !tbaa !150
  store i64 0, ptr %i.n, align 8, !tbaa !149
  store i8 0, ptr %i.e, align 8, !tbaa !129
  %i.p = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.p, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #41
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.b
  %.str.173..str.174 = select i1 %3, ptr @.str.173, ptr @.str.174
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %.str.173..str.174, i64 noundef 1)
          to label %.noexc10 unwind label %bb.g   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !146, !alias.scope !1407
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !150  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.d:                                             ; preds = %.noexc10
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !149  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.noexc10
  store ptr %i.s, ptr %0, align 8, !tbaa !150, !alias.scope !1407
  %i.z = load i64, ptr %i.t, align 8, !tbaa !129
  store i64 %i.z, ptr %i.r, align 8, !tbaa !129, !alias.scope !1407
  %.phi.trans.insert.i7 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i8 = load i64, ptr %.phi.trans.insert.i7, align 8, !tbaa !149
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.d
  %i.aa = phi i64 [ %i.w, %bb.d ], [ %.pre.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !149, !alias.scope !1407
  store ptr %i.t, ptr %i.q, align 8, !tbaa !150
  store i64 0, ptr %i.ab, align 8, !tbaa !149
  store i8 0, ptr %i.t, align 8, !tbaa !129
  %i.ad = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.e
  %i.af = load i64, ptr %i.c, align 8, !tbaa !129
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ah = load ptr, ptr %5, align 8, !tbaa !150   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !129
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void

bb.f:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.c
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !129
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.an, %bb.g ]
  %i.as = load ptr, ptr %5, align 8, !tbaa !150   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.av = load i64, ptr %i.at, align 8, !tbaa !129
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %.pn
}

declare void @_ZNK5osgeo4proj9operation10Conversion8identifyEv(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.62") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZNK5osgeo4proj2io16AuthorityFactory18createProjectedCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.265") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum9Ellipsoid13semiMajorAxisEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #29

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK5osgeo4proj3crs12ProjectedCRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEEENK3$_2clERKN7dropbox6oxygen2nnIS3_IS2_EEEbb"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dropbox::oxygen::nn.469", align 8 ; 7 uses
  %6 = alloca %"class.dropbox::oxygen::nn.469", align 8 ; 7 uses
  %7 = alloca %"class.dropbox::oxygen::nn.469", align 8 ; 7 uses
  %8 = alloca %"class.dropbox::oxygen::nn.469", align 8 ; 6 uses
  %9 = alloca %"class.dropbox::oxygen::nn.469", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.100", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !481  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1409, !nonnull !226, !align !342
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #42
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis4unitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #42 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !248    ; 2 uses
end_hunk_0
