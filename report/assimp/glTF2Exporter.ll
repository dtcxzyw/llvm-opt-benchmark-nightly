inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_Z6NZDiffIhEmPvS0_mjjRS0_S1_:bb.a

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70: ; preds = %bb.s, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i68
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bg
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit73

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83
  %.0248 = phi i32 [ %i.bz, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83 ], [ 0, %.preheader ]
  %.sroa.0112.3247 = phi ptr [ %.sroa.0112.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83 ], [ %.sroa.0112.0.lcssa308, %.preheader ] ; 7 uses
  %.sroa.14120.3246 = phi ptr [ %.sroa.14120.6, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83 ], [ %.sroa.14120.0.lcssa307, %.preheader ] ; 6 uses
  %.sroa.25127.3245 = phi ptr [ %.sroa.25127.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83 ], [ %.sroa.25127.0.lcssa306, %.preheader ] ; 2 uses
  %.not.i.i74 = icmp eq ptr %.sroa.14120.3246, %.sroa.25127.3245
  br i1 %.not.i.i74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  store i8 0, ptr %.sroa.14120.3246, align 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83

bb.u:                                             ; preds = %.lr.ph
  %i.bn = ptrtoint ptr %.sroa.14120.3246 to i64
  %i.bo = ptrtoint ptr %.sroa.0112.3247 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 8 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775807
  br i1 %i.bq, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i75

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i75: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i76 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.br = add i64 %.sroa.speculated.i.i.i.i76, %i.bp ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bp
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 9223372036854775807)
  %i.bu = select i1 %i.bs, i64 9223372036854775807, i64 %i.bt ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #33
          to label %.noexc82 unwind label %.loopexit ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bp ; 2 uses
  store i8 0, ptr %i.bw, align 1
  %i.bx = icmp sgt i64 %i.bp, 0
  br i1 %i.bx, label %bb.w, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i78

bb.w:                                             ; preds = %.noexc82
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %.sroa.0112.3247, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i78

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i78: ; preds = %bb.w, %.noexc82
  %.not.i17.i.i.i79 = icmp eq ptr %.sroa.0112.3247, null
  br i1 %.not.i17.i.i.i79, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i78
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.3247, i64 noundef %i.bp) #32
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit83

_ZNSt6vectorIhSaIhEE9push_backEOh.exit83:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80, %bb.t
  %.sroa.25127.7 = phi ptr [ %i.by, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80 ], [ %.sroa.25127.3245, %bb.t ] ; 2 uses
  %.pn = phi ptr [ %i.bw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80 ], [ %.sroa.14120.3246, %bb.t ]
  %.sroa.0112.7 = phi ptr [ %i.bv, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i80 ], [ %.sroa.0112.3247, %bb.t ] ; 2 uses
  %.sroa.14120.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.bz = add nuw i32 %.0248, 1                   ; 2 uses
  %exitcond288.not = icmp eq i32 %i.bz, %4
  br i1 %exitcond288.not, label %._crit_edge249, label %.lr.ph, !llvm.loop !601

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i75
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i65, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt6vectorItSaItEE9push_backEOt.exit73:         ; preds = %bb.p, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70, %._crit_edge
  %.sroa.14.2 = phi ptr [ %.sroa.14.1.us, %._crit_edge ], [ %i.bl, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %i.ax, %bb.p ]
  %.sroa.25.2 = phi ptr [ %.sroa.25.1.us, %._crit_edge ], [ %i.bm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %.sroa.25.0.lcssa304, %bb.p ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1.us, %._crit_edge ], [ %i.bi, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %.sroa.0.0.lcssa305, %bb.p ] ; 5 uses
  %.sroa.25127.4 = phi ptr [ %.sroa.25127.2.us, %._crit_edge ], [ %.sroa.25127.3.lcssa328, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %.sroa.25127.3.lcssa, %bb.p ] ; 2 uses
  %.sroa.14120.4 = phi ptr [ %.sroa.14120.2.us, %._crit_edge ], [ %.sroa.14120.3.lcssa329, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %.sroa.14120.3.lcssa, %bb.p ]
  %.sroa.0112.4 = phi ptr [ %.sroa.0112.2.us, %._crit_edge ], [ %.sroa.0112.3.lcssa330, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %.sroa.0112.3.lcssa, %bb.p ] ; 5 uses
  %i.cb = ptrtoint ptr %.sroa.14120.4 to i64
  %i.cc = ptrtoint ptr %.sroa.0112.4 to i64       ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #33
          to label %bb.z unwind label %bb.ad      ; 2 uses

bb.z:                                             ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit73
  store ptr %i.ce, ptr %5, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %.sroa.0112.4, i64 %i.cd, i1 false)
  %i.cf = ptrtoint ptr %.sroa.14.2 to i64
  %i.cg = ptrtoint ptr %.sroa.0.2 to i64          ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 1                 ; 2 uses
  %.inv = icmp sgt i64 %i.ci, -1
  %i.cj = select i1 %.inv, i64 %i.ch, i64 -1
  %i.ck = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #33
          to label %bb.aa unwind label %bb.ad     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ck, ptr %6, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr align 2 %.sroa.0.2, i64 %i.ch, i1 false)
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = ptrtoint ptr %.sroa.25.2 to i64
  %i.cm = sub i64 %i.cl, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.cm) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  %.not.i.i.i84 = icmp eq ptr %.sroa.0112.4, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.cn = ptrtoint ptr %.sroa.25127.4 to i64
  %i.co = sub i64 %i.cn, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.4, i64 noundef %i.co) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.ac
  ret i64 %i.ci

bb.ad:                                            ; preds = %bb.z, %_ZNSt6vectorItSaItEE9push_backEOt.exit73
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit139.split.us, %.loopexit.split-lp140, %.loopexit133.split.us, %.loopexit.split-lp134, %bb.ad, %bb.y
  %.sroa.25.3 = phi ptr [ %.sroa.25.2, %bb.ad ], [ %.sroa.25.0198.us, %.loopexit.split-lp134 ], [ %.sroa.25.0198.us, %.loopexit.split-lp140 ], [ %.sroa.14.0.lcssa303318326, %bb.y ], [ %.sroa.25.0198.us, %.loopexit133.split.us ], [ %.sroa.25.0198.us, %.loopexit139.split.us ], [ %.sroa.25.0.lcssa304, %.loopexit.split-lp ], [ %.sroa.25.0.lcssa304, %.loopexit ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.ad ], [ %.sroa.0.0199.us, %.loopexit.split-lp134 ], [ %.sroa.0.0199.us, %.loopexit.split-lp140 ], [ %.sroa.0.0.lcssa305316327, %bb.y ], [ %.sroa.0.0199.us, %.loopexit133.split.us ], [ %.sroa.0.0199.us, %.loopexit139.split.us ], [ %.sroa.0.0.lcssa305, %.loopexit.split-lp ], [ %.sroa.0.0.lcssa305, %.loopexit ] ; 3 uses
  %.sroa.25127.5 = phi ptr [ %.sroa.25127.4, %bb.ad ], [ %.sroa.14120.1194.us, %.loopexit.split-lp134 ], [ %.sroa.25127.6.us, %.loopexit.split-lp140 ], [ %.sroa.25127.3.lcssa328, %bb.y ], [ %.sroa.14120.1194.us, %.loopexit133.split.us ], [ %.sroa.25127.6.us, %.loopexit139.split.us ], [ %.sroa.14120.3246, %.loopexit.split-lp ], [ %.sroa.14120.3246, %.loopexit ]
  %.sroa.0112.5 = phi ptr [ %.sroa.0112.4, %bb.ad ], [ %.sroa.0112.1195.us, %.loopexit.split-lp134 ], [ %.sroa.0112.6.us, %.loopexit.split-lp140 ], [ %.sroa.0112.3.lcssa330, %bb.y ], [ %.sroa.0112.1195.us, %.loopexit133.split.us ], [ %.sroa.0112.6.us, %.loopexit139.split.us ], [ %.sroa.0112.3247, %.loopexit.split-lp ], [ %.sroa.0112.3247, %.loopexit ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.ad ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp140 ], [ %i.ca, %bb.y ], [ %lpad.loopexit135.us, %.loopexit133.split.us ], [ %lpad.loopexit141.us, %.loopexit139.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i85 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorItSaItEED2Ev.exit86, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = ptrtoint ptr %.sroa.25.3 to i64
  %i.cr = ptrtoint ptr %.sroa.0.3 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.cs) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit86

_ZNSt6vectorItSaItEED2Ev.exit86:                  ; preds = %bb.ae, %bb.af
  %.not.i.i.i87 = icmp eq ptr %.sroa.0112.5, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIhSaIhEED2Ev.exit88, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit86
  %i.ct = ptrtoint ptr %.sroa.25127.5 to i64
  %i.cu = ptrtoint ptr %.sroa.0112.5 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.5, i64 noundef %i.cv) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit88

_ZNSt6vectorIhSaIhEED2Ev.exit88:                  ; preds = %_ZNSt6vectorItSaItEED2Ev.exit86, %bb.ag
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z16ExportNodeExtrasRK15aiMetadataEntry8aiStringRN5glTF215CustomExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #31
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  %i.f = load i32, ptr %0, align 8
  switch i32 %i.f, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i8 %i.i, ptr %i.j, align 8
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.n, ptr %i.o, align 8
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.r, ptr %i.s, align 8
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.w, ptr %i.x, align 8
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.aa, ptr %i.ab, align 8
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #31
  %i.aj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef %i.ah, ptr noundef nonnull %i.ae, i64 noundef %i.ai) ; 0 uses
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.an = load i32, ptr %i.al, align 8
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 160               ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.ao
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nuw nsw i64 %i.ao, %i.av
  tail call void @_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.ax)
  br label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = icmp ugt i64 %i.av, %i.ao
  br i1 %i.ay, label %bb.k, label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw [160 x i8], ptr %i.ar, i64 %i.ao ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.az, %bb.k ] ; 2 uses
  tail call void @_ZN5glTF215CustomExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %.05.i.i.i.i) #31, !inline_history !210
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !211

_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.az, ptr %i.ap, align 8
  br label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit: ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i8 1, ptr %i.bb, align 8
  %i.bc = load i32, ptr %i.al, align 8
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit ] ; 6 uses
  %i.bg = load ptr, ptr %i.bd, align 8
  %i.bh = load ptr, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw [1028 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bf, i8 0, i64 1024, i1 false)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.bj, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull align 4 %i.bk, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bl
  store i8 0, ptr %i.bm, align 1
  %i.bn = load ptr, ptr %i.ap, align 8
  %i.bo = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 160               ; 2 uses
  %.not.i.i32 = icmp ugt i64 %i.bs, %indvars.iv
  br i1 %.not.i.i32, label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.249, i64 noundef %indvars.iv, i64 noundef %i.bs) #34
  unreachable

_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit: ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw [160 x i8], ptr %i.bo, i64 %indvars.iv
  call void @_Z16ExportNodeExtrasRK15aiMetadataEntry8aiStringRN5glTF215CustomExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(160) %i.bu)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i32, ptr %i.al, align 8
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.l, label %.loopexit, !llvm.loop !602

.loopexit.sink.split:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink46 = phi i64 [ 64, %bb.g ], [ 80, %bb.f ], [ 80, %bb.e ], [ 96, %bb.d ], [ 112, %bb.c ], [ 121, %bb.b ]
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 %.sink46
  store i8 1, ptr %4, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit, %.loopexit.sink.split, %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 160                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 160                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 57646075230342349
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 57646075230342348, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 7 uses
  %.01012.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, i8 0, i64 144, i1 false)
  store ptr %i.p, ptr %.013.i.i.i.prol, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 48
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.t, i8 0, i64 25, i1 false)
  %i.u = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 160 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !603

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp ult i64 %1, 4
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPN5glTF215CustomExtensionEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 25 uses
  %.01012.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.x, i8 0, i64 144, i1 false)
  store ptr %i.x, ptr %.013.i.i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i8 0, i64 25, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, i8 0, i64 144, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 208
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i8 0, i64 25, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 336 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aj, i8 0, i64 144, i1 false)
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 328
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 352
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 368
  store ptr %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.an, i8 0, i64 25, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 480
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 496 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ap, i8 0, i64 144, i1 false)
  store ptr %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 488
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 528
  store ptr %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.at, i8 0, i64 25, i1 false)
  %i.au = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 640 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5glTF215CustomExtensionEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !604

_ZSt27__uninitialized_default_n_aIPN5glTF215CustomExtensionEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.aw = icmp ult i64 %i.n, %1
  br i1 %i.aw, label %bb.d, label %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.248) #34
  unreachable

_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ax = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 57646075230342348) ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, 160              ; 2 uses
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.f ; 5 uses
  %xtraiter63 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol

.lr.ph.i.i.i40.prol:                              ; preds = %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40.prol
  %.013.i.i.i41.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i40.prol ], [ %i.bb, %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.01012.i.i.i42.prol = phi i64 [ %i.bh, %.lr.ph.i.i.i40.prol ], [ %1, %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter65 = phi i64 [ %prol.iter65.next, %.lr.ph.i.i.i40.prol ], [ 0, %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bc, i8 0, i64 144, i1 false)
  store ptr %i.bc, ptr %.013.i.i.i41.prol, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 8
  store i64 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 48
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bg, i8 0, i64 25, i1 false)
  %i.bh = add i64 %.01012.i.i.i42.prol, -1        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 160 ; 2 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol, !llvm.loop !605

.lr.ph.i.i.i40.prol.loopexit:                     ; preds = %.lr.ph.i.i.i40.prol, %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i41.unr = phi ptr [ %i.bb, %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.bi, %.lr.ph.i.i.i40.prol ]
  %.01012.i.i.i42.unr = phi i64 [ %1, %_ZNKSt6vectorIN5glTF215CustomExtensionESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.bh, %.lr.ph.i.i.i40.prol ]
  %i.bj = icmp ult i64 %1, 4
  br i1 %i.bj, label %_ZSt27__uninitialized_default_n_aIPN5glTF215CustomExtensionEmS1_ET_S3_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.prol.loopexit, %.lr.ph.i.i.i40
  %.013.i.i.i41 = phi ptr [ %i.ci, %.lr.ph.i.i.i40 ], [ %.013.i.i.i41.unr, %.lr.ph.i.i.i40.prol.loopexit ] ; 25 uses
  %.01012.i.i.i42 = phi i64 [ %i.ch, %.lr.ph.i.i.i40 ], [ %.01012.i.i.i42.unr, %.lr.ph.i.i.i40.prol.loopexit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bk, i8 0, i64 144, i1 false)
  store ptr %i.bk, ptr %.013.i.i.i41, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 8
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 48
  store ptr %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bo, i8 0, i64 25, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 160
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bq, i8 0, i64 144, i1 false)
  store ptr %i.bq, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 168
  store i64 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 208
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bu, i8 0, i64 25, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 320
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 336 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bw, i8 0, i64 144, i1 false)
  store ptr %i.bw, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 328
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 352
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 368
  store ptr %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ca, i8 0, i64 25, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 480
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 496 ; 2 uses
end_hunk_0
