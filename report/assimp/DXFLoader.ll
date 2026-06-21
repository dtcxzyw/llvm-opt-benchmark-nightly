inline.NumInlined: 1765
inline.NumDeleted: 766
begin_hunk_0_@_ZN6Assimp3DXF10LineReaderppEv:bb.a
  call void @llvm.assume(i1 %i.at)
  switch i64 %i.as, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.aq, align 1
  store i8 %i.au, ptr %i.an, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.av = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  %.pre.i14 = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aq, ptr %i.am, align 8
  %i.ba = load <2 x i64>, ptr %i.aj, align 8
  store <2 x i64> %i.ba, ptr %i.az, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bb = load i64, ptr %i.ao, align 8
  store ptr %i.aq, ptr %i.am, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load <2 x i64>, ptr %i.aj, align 8
  store <2 x i64> %i.bd, ptr %i.bc, align 8
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.an, ptr %1, align 8
  store i64 %i.bb, ptr %i.z, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.be = phi ptr [ %.pre.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.an, %bb.o ], [ %i.z, %bb.p ]
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.be, align 1
  %i.bf = load ptr, ptr %1, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.z
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = load i64, ptr %i.z, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.bj = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit16 unwind label %bb.t ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit16:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load i64, ptr %i.bk, align 8
  %.not7 = icmp eq i64 %i.bl, 0
  br i1 %.not7, label %bb.y, label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp12LineSplitterppEi.exit16
  %i.bm = load ptr, ptr %i.am, align 8
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 123
  br i1 %i.bo, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8
  %i.bp = load i64, ptr %i.ab, align 8
  %.not823 = icmp eq i64 %i.bp, 0
  br i1 %.not823, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %_ZN6Assimp12LineSplitterppEi.exit20
  %i.bq = phi i64 [ %i.bu, %_ZN6Assimp12LineSplitterppEi.exit20 ], [ 0, %bb.r ]
  %i.br = load ptr, ptr %i.f, align 8
  %i.bs = load i8, ptr %i.br, align 1
  %.not9 = icmp eq i8 %i.bs, 125
  br i1 %.not9, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.bt = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit20 unwind label %.loopexit ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit20:              ; preds = %bb.s
  %i.bu = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.bu, ptr %i.c, align 8
  %i.bv = load i64, ptr %i.ab, align 8
  %.not8 = icmp eq i64 %i.bv, 0
  br i1 %.not8, label %.critedge, label %.lr.ph, !llvm.loop !20

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %.noexc, %bb.g
  %i.bw = landingpad { ptr, i32 }
          catch ptr @_ZTISt11logic_error
  br label %bb.w

bb.u:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.w

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  br label %bb.v

.loopexit.split-lp:                               ; preds = %_ZN6Assimp12LineSplitterppEi.exit22, %bb.z, %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.v ], [ %i.bw, %bb.t ], [ %i.bx, %bb.u ] ; 3 uses
  %.05 = extractvalue { ptr, i32 } %.pn, 1
  %i.by = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt11logic_error) #26
  %i.bz = icmp eq i32 %.05, %i.by
  br i1 %i.bz, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %.06 = extractvalue { ptr, i32 } %.pn, 0
  %i.ca = call ptr @__cxa_begin_catch(ptr %.06) #26 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.y

bb.y:                                             ; preds = %_ZN6Assimp12LineSplitterppEi.exit16, %bb.q, %bb.aa, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !21, !align !22 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = and i64 %i.cj, 4294967295
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %.sink.split, label %bb.ab

.critedge:                                        ; preds = %.lr.ph, %_ZN6Assimp12LineSplitterppEi.exit20, %bb.r
  %i.cl = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0)
          to label %_ZN6Assimp12LineSplitterppEi.exit22 unwind label %.loopexit.split-lp ; 0 uses

_ZN6Assimp12LineSplitterppEi.exit22:              ; preds = %.critedge
  %i.cm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %_ZN6Assimp12LineSplitterppEi.exit22
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA34_KcRmRA8_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cm, ptr noundef nonnull align 1 dereferenceable(34) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.63)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

.sink.split:                                      ; preds = %bb.y, %bb.a
  %.sink = phi i32 [ 2, %bb.a ], [ 1, %bb.y ]
  store i32 %.sink, ptr %i.d, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.y, %bb.a
  ret ptr %0

bb.ac:                                            ; preds = %bb.w
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11DXFImporter13ConvertMeshesEP7aiSceneRNS_3DXF8FileDataE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::map", align 8          ; 12 uses
  %4 = alloca %"class.std::map.44", align 8       ; 11 uses
  %5 = alloca %"class.std::vector.49", align 8    ; 17 uses
  %6 = alloca %"class.std::shared_ptr.20", align 8 ; 7 uses
  %7 = alloca %"class.std::vector.55", align 8    ; 10 uses
  %i.c = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not238278 = icmp eq ptr %i.d, %i.f
  br i1 %.not238278, label %._crit_edge282, label %.lr.ph281

._crit_edge282:                                   ; preds = %._crit_edge, %bb.b
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger12verboseDebugIJRA30_KcRjRA19_S2_S5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.l

.lr.ph281:                                        ; preds = %bb.b, %._crit_edge
  %.sroa.0231.0279 = phi ptr [ %i.k, %._crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.0231.0279, align 8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0231.0279, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not239276 = icmp eq ptr %i.h, %i.j
  br i1 %.not239276, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph281
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0231.0279, i64 96 ; 2 uses
  %.not238 = icmp eq ptr %i.k, %i.f
  br i1 %.not238, label %._crit_edge282, label %.lr.ph281

.lr.ph:                                           ; preds = %.lr.ph281, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0227.0277 = phi ptr [ %i.bd, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.h, %.lr.ph281 ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.0227.0277, align 8  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0227.0277, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit

bb.e:                                             ; preds = %bb.c
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit: ; preds = %.lr.ph, %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = add i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.a, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = trunc i64 %i.ak to i32
  %i.am = load i32, ptr %i.b, align 4
  %i.an = add i32 %i.am, %i.al
  store i32 %i.an, ptr %i.b, align 4
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.n, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26, !inline_history !23
  %i.aw = load ptr, ptr %i.n, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26, !inline_history !23
  br label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.az = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i142 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i142, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %i.bb, %bb.j ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.k, label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26
  br label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0227.0277, i64 16 ; 2 uses
  %.not239 = icmp eq ptr %i.bd, %i.j
  br i1 %.not239, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge282, %bb.a
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull @.str.17)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bi) #26
  br label %bb.cn

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bk, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bo, align 8
  br label %.backedge

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235
  %.not = icmp eq ptr %.1100, null
  br i1 %.not, label %.thread, label %bb.x

.backedge:                                        ; preds = %.backedge.backedge, %bb.p
  %.099284 = phi ptr [ null, %bb.p ], [ %.099284.be, %.backedge.backedge ] ; 2 uses
  %.sroa.0221.0283 = phi ptr [ %i.be, %bb.p ], [ %.sroa.0221.0283.be, %.backedge.backedge ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0221.0283, i64 48 ; 2 uses
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.backedge
  store ptr %.sroa.0221.0283, ptr %i.bq, align 8
  %.not139 = icmp eq ptr %.099284, null
  br i1 %.not139, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0221.0283, i64 56
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp eq i64 %i.bs, 22
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.s
  %i.bu = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.bv = load i128, ptr %i.bu, align 1
  %i.bw = xor i128 %i.bv, 110685679427147963437614794451956482340
  %i.bx = getelementptr i8, ptr %i.bu, i64 6
  %i.by = load i128, ptr %i.bx, align 1
  %i.bz = xor i128 %i.by, 89438758613120415540854151325182943056
  %i.ca = or i128 %i.bw, %i.bz
  %i.cb = icmp ne i128 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %bcmp.i.fr = freeze i32 %i.cc
  %i.cd = icmp eq i32 %bcmp.i.fr, 0
  %spec.select = select i1 %i.cd, ptr %.sroa.0221.0283, ptr null
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235

bb.t:                                             ; preds = %.backedge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.r
  %.1100 = phi ptr [ %.099284, %bb.r ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0221.0283, i64 96 ; 2 uses
  %.not240 = icmp eq ptr %i.cf, %i.bg
  br i1 %.not240, label %bb.q, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235.thread
  %.099284.be = phi ptr [ %.1100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235 ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235.thread ]
  %.sroa.0221.0283.be = phi ptr [ %i.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235 ], [ %i.cg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235.thread ]
  br label %.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235.thread: ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0221.0283, i64 96 ; 2 uses
  %.not240416 = icmp eq ptr %i.cg, %i.bg
  br i1 %.not240416, label %.thread, label %.backedge.backedge

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread235.thread, %bb.q
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull @.str.19)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.thread
  invoke void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.co unwind label %bb.w

bb.v:                                             ; preds = %.thread
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #26
  br label %bb.cl

bb.w:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ck, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ck, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp11DXFImporter21ExpandBlockReferencesERNS_3DXF5BlockERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS2_St4lessISA_ESaISt4pairIKSA_SC_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(92) %.1100, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %.1100, align 8           ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1100, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not241286 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not241286, label %._crit_edge291, label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.aa

._crit_edge291:                                   ; preds = %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit171, %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i32, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.bc, label %bb.bg

bb.z:                                             ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.aa:                                            ; preds = %.lr.ph290, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit171
  %.0101288 = phi i32 [ 0, %.lr.ph290 ], [ %.2103, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit171 ] ; 5 uses
  %.sroa.0214.0287 = phi ptr [ %i.cp, %.lr.ph290 ], [ %i.hh, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit171 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.dc = load ptr, ptr %.sroa.0214.0287, align 8 ; 3 uses
  store ptr %i.dc, ptr %6, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0214.0287, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  store ptr %i.de, ptr %i.cs, align 8
  %.not.i.i.i143 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i143, label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i144 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i144, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i32, ptr %i.df, align 4
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.df, align 4
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145

bb.ad:                                            ; preds = %bb.ab
  %i.dj = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %6, align 8
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145

_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145: ; preds = %bb.aa, %bb.ac, %bb.ad
  %i.dk = phi ptr [ %i.dc, %bb.aa ], [ %i.dc, %bb.ac ], [ %.pre, %bb.ad ] ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = load ptr, ptr %i.dk, align 8
  %.not131 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not131, label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE9push_backEOS4_.exit166, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 104 ; 2 uses
  %i.dp = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  %i.dr = load i64, ptr %i.dq, align 8            ; 4 uses
  %i.ds = load ptr, ptr %i.do, align 8            ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.du) ; 2 uses
  %i.dv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.dv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call i32 @memcmp(ptr noundef %i.dx, ptr noundef %i.ds, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.af
  %i.dz = sub i64 %i.du, %i.dr
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ea = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.ea, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ea, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i146, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.af, !llvm.loop !24

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.eb = icmp eq ptr %.19.i.i.i, %i.ck
  br i1 %i.eb, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ea, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.ec = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ec, i64 %i.dr) ; 2 uses
  %i.ed = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ed, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ag
  %.19.i.i.i.sroa.sel219.v.sroa.sel.v.sroa.sel.v = select i1 %i.ea, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel219.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel219.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ee = load ptr, ptr %.19.i.i.i.sroa.sel219.v.sroa.sel.v.sroa.sel, align 8
  %i.ef = call i32 @memcmp(ptr noundef %i.ds, ptr noundef %i.ee, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ag
  %i.eg = sub i64 %i.dr, %i.ec
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.eg, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ef, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.eh = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.eh, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit.thread, label %bb.ap

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.ae, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit
  %i.ei = load i32, ptr %i.ct, align 8
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ct, align 8
  %i.ek = add i32 %.0101288, 1
  %i.el = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.am

_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit.thread
  store i32 %.0101288, ptr %i.el, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.em = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %.noexc149 unwind label %.thread420 ; 3 uses

.noexc149:                                        ; preds = %_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dk, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store ptr %i.em, ptr %7, align 8
  store ptr %i.en, ptr %i.cu, align 8
  store ptr %i.en, ptr %i.cv, align 8
  %i.eo = load ptr, ptr %i.cw, align 8            ; 6 uses
  %i.ep = load ptr, ptr %i.cx, align 8
  %.not.i = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i, label %bb.ak, label %_ZNSt15__new_allocatorIPKN6Assimp3DXF8PolyLineEE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIPKN6Assimp3DXF8PolyLineEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %.noexc149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  %i.eq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %.noexc152 unwind label %bb.an ; 6 uses

.noexc152:                                        ; preds = %_ZNSt15__new_allocatorIPKN6Assimp3DXF8PolyLineEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.eq, ptr %i.eo, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %i.es, ptr %i.et, align 8
  %i.eu = load ptr, ptr %7, align 8               ; 4 uses
  %i.ev = load ptr, ptr %i.cu, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp sgt i64 %i.ey, 8
  br i1 %i.ez, label %bb.ah, label %bb.ai, !prof !25

bb.ah:                                            ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %i.eu, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EEC2ERKS6_.exit.i

bb.ai:                                            ; preds = %.noexc152
  %i.fa = icmp eq i64 %i.ey, 8
  br i1 %i.fa, label %bb.aj, label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EEC2ERKS6_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load ptr, ptr %i.eu, align 8
  store ptr %i.fb, ptr %i.eq, align 8
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EEC2ERKS6_.exit.i

_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EEC2ERKS6_.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fc = getelementptr inbounds i8, ptr %i.eq, i64 %i.ey
  store ptr %i.fc, ptr %i.er, align 8
  %i.fd = load ptr, ptr %i.cw, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store ptr %i.fe, ptr %i.cw, align 8
  br label %_ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit

bb.ak:                                            ; preds = %.noexc149
  invoke void @_ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit_crit_edge unwind label %bb.an

._ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit_crit_edge: ; preds = %bb.ak
  %.pre358 = load ptr, ptr %7, align 8
  br label %_ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit: ; preds = %._ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit_crit_edge, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EEC2ERKS6_.exit.i
  %i.ff = phi ptr [ %.pre358, %._ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit_crit_edge ], [ %i.eu, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EEC2ERKS6_.exit.i ] ; 3 uses
  %.not.i.i.i154 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit
  %i.fg = load ptr, ptr %i.cv, align 8
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #30
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPKN6Assimp3DXF8PolyLineESaIS4_EESaIS6_EE9push_backERKS6_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE9push_backEOS4_.exit166

bb.am:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit.thread
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.thread420:                                       ; preds = %_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit156

bb.an:                                            ; preds = %bb.ak, %_ZNSt15__new_allocatorIPKN6Assimp3DXF8PolyLineEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit251 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre357 = load ptr, ptr %7, align 8            ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %.pre357, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit156, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.cv, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %.pre357 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.pre357, i64 noundef %i.fp) #30
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit156

_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit156: ; preds = %.thread420, %bb.an, %bb.ao
  %.pn132423 = phi { ptr, i32 } [ %i.fl, %.thread420 ], [ %lpad.loopexit251, %bb.an ], [ %lpad.loopexit251, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.av

bb.ap:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE4findERS9_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = zext i32 %i.fr to i64
  %i.ft = load ptr, ptr %5, align 8
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.fs ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8
  %.not.i.i157 = icmp eq ptr %i.fw, %i.fy
  br i1 %.not.i.i157, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.dk, ptr %i.fw, align 8
  %i.fz = load ptr, ptr %i.fv, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.ga, ptr %i.fv, align 8
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE9push_backEOS4_.exit166

bb.ar:                                            ; preds = %bb.ap
  %i.gb = load ptr, ptr %i.fu, align 8            ; 4 uses
  %i.gc = ptrtoint ptr %i.fw to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd                    ; 6 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.as, label %_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i158

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
          to label %.noexc164 unwind label %.loopexit.split-lp

.noexc164:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i158: ; preds = %bb.ar
  %i.gg = ashr exact i64 %i.ge, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i159 = call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i.i.i159, %i.gg ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gg
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 1152921504606846975)
  %i.gk = select i1 %i.gi, i64 1152921504606846975, i64 %i.gj ; 3 uses
  %.not.i.i.i.i160 = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i160)
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #27
          to label %.noexc165 unwind label %.loopexit248 ; 4 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i158
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.ge ; 2 uses
  store ptr %i.dk, ptr %i.gn, align 8
  %i.go = icmp sgt i64 %i.ge, 0
  br i1 %i.go, label %bb.at, label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i161

bb.at:                                            ; preds = %.noexc165
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr align 8 %i.gb, i64 %i.ge, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i161

_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i161: ; preds = %bb.at, %.noexc165
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.not.i17.i.i.i162 = icmp eq ptr %i.gb, null
  br i1 %.not.i17.i.i.i162, label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i163, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i161
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ge) #30
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i163

_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i163: ; preds = %bb.au, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i161
  store ptr %i.gm, ptr %i.fu, align 8
  store ptr %i.gp, ptr %i.fv, align 8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gk
  store ptr %i.gq, ptr %i.fx, align 8
  br label %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE9push_backEOS4_.exit166

.loopexit248:                                     ; preds = %_ZNKSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i158
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit248, %.loopexit.split-lp, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit156, %bb.am
  %.pn132.pn = phi { ptr, i32 } [ %.pn132423, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit156 ], [ %i.fk, %bb.am ], [ %lpad.loopexit, %.loopexit248 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ch

_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE9push_backEOS4_.exit166: ; preds = %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i163, %bb.aq, %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145
  %.2103 = phi i32 [ %.0101288, %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit145 ], [ %i.ek, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EED2Ev.exit ], [ %.0101288, %_ZNSt6vectorIPKN6Assimp3DXF8PolyLineESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i163 ], [ %.0101288, %bb.aq ]
  %i.gr = load ptr, ptr %i.cs, align 8            ; 8 uses
  %.not.i.i167 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i167, label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit171, label %bb.aw
end_hunk_0
begin_hunk_1_@_Z18ai_str_toprintableB5cxx11PKcic:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = zext nneg i32 %2 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.f, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.e, ptr %i.b, align 8
  %i.g = icmp samesign ugt i32 %2, 15
  br i1 %i.g, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.f, align 8
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.k = phi ptr [ %i.h, %._crit_edge.i.i.thread ], [ %i.f, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !123
  %i.q = load ptr, ptr %4, align 8, !noalias !123 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !noalias !123 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !123
  store i64 %i.r, ptr %i.a, align 8, !noalias !123
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %bb.h   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i
  store ptr %i.t, ptr %0, align 8, !alias.scope !123
  %i.u = load i64, ptr %i.a, align 8, !noalias !123
  store i64 %i.u, ptr %i.p, align 8, !alias.scope !123
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc26 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !noalias !123 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !alias.scope !123
  %i.z = load ptr, ptr %0, align 8, !alias.scope !123
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !123
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !123 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !123 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not7.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not7.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.04.09.i.i, align 1  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 @isprint(i32 noundef %i.af) #31
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.i.i.i, i8 %3, i8 %i.ae
  store i8 %i.ah, ptr %.sroa.04.09.i.i, align 1
  %i.ai = getelementptr i8, ptr %.sroa.04.09.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !126

_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = add i8 %i.b, -58
  %or.cond = icmp ult i8 %i.c, -10
  br i1 %or.cond, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %narrow.us134 = add nsw i8 %i.b, -48
  %i.d = zext nneg i8 %narrow.us134 to i64
  br label %bb.b

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.e = mul i64 %i.i, 10
  %narrow.us = add nsw i8 %i.m, -48
  %i.f = zext nneg i8 %narrow.us to i64
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.i
  br i1 %i.h, label %.split.us, label %bb.b, !llvm.loop !127

bb.b:                                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.i = phi i64 [ %i.d, %.lr.ph.split.us.preheader ], [ %i.g, %.lr.ph.split.us ] ; 3 uses
  %i.j = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.k, %.lr.ph.split.us ]
  %.02863.us135 = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.l, %.lr.ph.split.us ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  %i.l = add i32 %.02863.us135, 1                 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1               ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond42.us = icmp ult i8 %i.n, -10
  br i1 %or.cond42.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %2, align 4
  %narrow132 = add nsw i8 %i.b, -48
  %i.p = zext nneg i8 %narrow132 to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %i.s = trunc i64 %i.r to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %0, i32 noundef %i.s, i8 noundef signext 63)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(13) @.str.73, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.74)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.022 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.022, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.022, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %.pn47, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn46

bb.i:                                             ; preds = %bb.l
  %i.aa = mul i64 %i.af, 10
  %narrow = add nsw i8 %i.aq, -48
  %i.ab = zext nneg i8 %narrow to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.af
  br i1 %i.ad, label %.split.us, label %bb.j, !llvm.loop !127

.split.us:                                        ; preds = %bb.i, %.lr.ph.split.us
  %.lcssa108.sink = phi ptr [ %i.k, %.lr.ph.split.us ], [ %i.ah, %bb.i ]
  store ptr %.lcssa108.sink, ptr %i.a, align 8
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 1 dereferenceable(24) @.str.64, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.75)
  br label %.thread

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.af = phi i64 [ %i.p, %.lr.ph.split ], [ %i.ac, %bb.i ] ; 5 uses
  %i.ag = phi ptr [ %0, %.lr.ph.split ], [ %i.ah, %bb.i ]
  %.02863133 = phi i32 [ 0, %.lr.ph.split ], [ %i.ai, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 8 uses
  %i.ai = add i32 %.02863133, 1                   ; 3 uses
  %i.aj = icmp eq i32 %i.o, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ah, ptr %i.a, align 8
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ak = load i8, ptr %i.ah, align 1
  %i.al = add i8 %i.ak, -48
  %or.cond4370 = icmp ult i8 %i.al, 10
  br i1 %or.cond4370, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %i.am = phi ptr [ %i.an, %.lr.ph71 ], [ %i.ah, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond43 = icmp ult i8 %i.ap, 10
  br i1 %or.cond43, label %.lr.ph71, label %.critedge, !llvm.loop !128

.critedge:                                        ; preds = %.lr.ph71, %.preheader
  %.lcssa = phi ptr [ %i.ah, %.preheader ], [ %i.an, %.lr.ph71 ]
  store ptr %.lcssa, ptr %1, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond42 = icmp ult i8 %i.ar, -10
  br i1 %or.cond42, label %._crit_edge, label %bb.i, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %.lcssa110.sink = phi ptr [ %i.k, %bb.b ], [ %i.ah, %bb.l ] ; 2 uses
  %.028.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ai, %bb.l ]
  %.026.lcssa = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.l ] ; 2 uses
  store ptr %.lcssa110.sink, ptr %i.a, align 8
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store ptr %.lcssa110.sink, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.028.lcssa, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.k, %.split.us, %bb.n, %bb.o
  %.2 = phi i64 [ %.026.lcssa, %bb.n ], [ %.026.lcssa, %bb.o ], [ %i.af, %.critedge ], [ %i.af, %bb.k ], [ 0, %.split.us ]
  ret i64 %.2

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(82) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(82) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_KcERA13_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3)
          to label %bb.b unwind label %bb.c
end_hunk_1
