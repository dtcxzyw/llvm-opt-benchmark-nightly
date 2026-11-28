Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/broken_library_info_test?download=true
inline.NumInlined: 565
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  store ptr %i.af, ptr %5, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.af, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.ag, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !22
  invoke void @_ZN5boost10filesystem6detail15path_algorithms9append_v3ERNS0_4pathEPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah)
          to label %_ZN5boost10filesystemdvENS0_4pathERKS1_.exit unwind label %bb.r, !noalias !101

_ZN5boost10filesystemdvENS0_4pathERKS1_.exit:     ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !17
  %i.aj = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZN5boost10filesystemdvENS0_4pathERKS1_.exit
  %i.al = load i64, ptr %i.w, align 8, !tbaa !23  ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.an, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost10filesystemdvENS0_4pathERKS1_.exit
  store ptr %i.aj, ptr %3, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !22
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !22
  %.pre = load i64, ptr %i.w, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.ap = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !23
  store ptr %i.v, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %i.w, align 8, !tbaa !23
  store i8 0, ptr %i.v, align 8, !tbaa !22
  %i.ar = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.af
  br i1 %i.as, label %_ZN5boost10filesystem4pathD2Ev.exit.thread, label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit.thread:       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN5boost10filesystem4pathD2Ev.exit38

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %bb.i
  %i.at = load i64, ptr %i.af, align 8, !tbaa !22
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  %.pre90 = load ptr, ptr %4, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.av = icmp eq ptr %.pre90, %i.v
  br i1 %i.av, label %_ZN5boost10filesystem4pathD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !22
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre90, i64 noundef %i.ax) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit38

_ZN5boost10filesystem4pathD2Ev.exit38:            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit, %_ZN5boost10filesystem4pathD2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  %i.ay = invoke noundef zeroext i1 @_ZN5boost10filesystem6detail9copy_fileERKNS0_4pathES4_NS0_12copy_optionsEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2, ptr noundef null)
          to label %_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit unwind label %bb.au ; 0 uses

_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 4)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5seekpESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 0, i64 0)
          to label %bb.k unwind label %bb.t       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !17
  %i.bc = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !19
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i.i42, label %._crit_edge.i.i.i41

.noexc.i.i42:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc43 unwind label %bb.v   ; 2 uses

.noexc43:                                         ; preds = %.noexc.i.i42
  store ptr %i.bf, ptr %8, align 8, !tbaa !21
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !22
  br label %._crit_edge.i.i.i41

._crit_edge.i.i.i41:                              ; preds = %.noexc43, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = phi ptr [ %i.bf, %.noexc43 ], [ %i.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  switch i64 %i.bd, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i41
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !22
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !22
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i41
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !23
  %i.bl = load ptr, ptr %8, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bn = load ptr, ptr %8, align 8, !tbaa !21
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(524) %7, ptr noundef %i.bn, i32 noundef 12)
          to label %.noexc44 unwind label %bb.w

.noexc44:                                         ; preds = %bb.n
  %i.bo = load ptr, ptr %7, align 8, !tbaa !25
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %7, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  store i32 7, ptr %i.bs, align 4, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !34
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.br, i32 noundef %i.bu)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i unwind label %bb.o

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i: ; preds = %.noexc44
  invoke void @_ZN5boost3dll12library_info4initEb(ptr noundef nonnull align 8 dereferenceable(524) %7, i1 noundef zeroext true)
          to label %_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i, %.noexc44
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(524) %7) #25
  br label %.body

_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.bw = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bb
  br i1 %i.bx, label %_ZN5boost10filesystem4pathD2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit
  %i.by = load i64, ptr %i.bb, align 8, !tbaa !22
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit47

_ZN5boost10filesystem4pathD2Ev.exit47:            ; preds = %_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ca = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 29, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.x       ; 0 uses

bb.p:                                             ; preds = %_ZN5boost10filesystem4pathD2Ev.exit47
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(524) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.q:                                             ; preds = %.noexc.i.i.i, %_ZN5boost10filesystem4pathC2EPKc.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10filesystem4pathD2Ev.exit53

bb.r:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.af
  br i1 %i.ce, label %_ZN5boost10filesystem4pathD2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.r
  %i.cf = load i64, ptr %i.af, align 8, !tbaa !22
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit50

_ZN5boost10filesystem4pathD2Ev.exit50:            ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ch = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.v
  br i1 %i.ci, label %_ZN5boost10filesystem4pathD2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit50
  %i.cj = load i64, ptr %i.v, align 8, !tbaa !22
  %13 = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %13) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit53

bb.s:                                             ; preds = %_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn18 = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %i.ck, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.av

bb.v:                                             ; preds = %.noexc.i.i42
  %i.cm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN5boost10filesystem4pathD2Ev.exit56

bb.w:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.w ], [ %i.bv, %bb.o ] ; 2 uses
  %i.co = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bb
  br i1 %i.cp, label %_ZN5boost10filesystem4pathD2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %.body
  %i.cq = load i64, ptr %i.bb, align 8, !tbaa !22
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit56

_ZN5boost10filesystem4pathD2Ev.exit56:            ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54, %bb.v
  %.pn20 = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.y

bb.x:                                             ; preds = %_ZN5boost10filesystem4pathD2Ev.exit47
  %i.cs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(524) %7) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost10filesystem4pathD2Ev.exit56
  %.pn22 = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %.pn20, %_ZN5boost10filesystem4pathD2Ev.exit56 ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn22, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ct = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.cu = icmp eq i32 %.3, %i.ct
  br i1 %i.cu, label %bb.z, label %bb.av

bb.z:                                             ; preds = %bb.y
  %.311 = extractvalue { ptr, i32 } %.pn22, 0
  %i.cv = call ptr @__cxa_begin_catch(ptr %.311) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.au

bb.aa:                                            ; preds = %bb.z, %bb.p
  %i.cw = invoke noundef zeroext i1 @_ZN5boost10filesystem6detail9copy_fileERKNS0_4pathES4_NS0_12copy_optionsEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2, ptr noundef null)
          to label %_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit58 unwind label %bb.au ; 0 uses

_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit58: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 4)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit58
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5seekpESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 40, i64 0)
          to label %bb.ac unwind label %bb.al     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.5, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.ac
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.cz, ptr %11, align 8, !tbaa !17
  %i.da = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.db = load i64, ptr %i.aq, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.db, ptr %i.a, align 8, !tbaa !19
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i.i62, label %._crit_edge.i.i.i61

.noexc.i.i62:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc63 unwind label %bb.an  ; 2 uses

.noexc63:                                         ; preds = %.noexc.i.i62
  store ptr %i.dd, ptr %11, align 8, !tbaa !21
  %i.de = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.de, ptr %i.cz, align 8, !tbaa !22
  br label %._crit_edge.i.i.i61

._crit_edge.i.i.i61:                              ; preds = %.noexc63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.df = phi ptr [ %i.dd, %.noexc63 ], [ %i.cz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 ] ; 2 uses
  switch i64 %i.db, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i61
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !22
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !22
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.da, i64 %i.db, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i61
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !23
  %i.dj = load ptr, ptr %11, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dl = load ptr, ptr %11, align 8, !tbaa !21
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(524) %10, ptr noundef %i.dl, i32 noundef 12)
          to label %.noexc66 unwind label %bb.ao

.noexc66:                                         ; preds = %bb.af
  %i.dm = load ptr, ptr %10, align 8, !tbaa !25
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %10, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  store i32 7, ptr %i.dq, align 4, !tbaa !102
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !34
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dp, i32 noundef %i.ds)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i65 unwind label %bb.ag

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i65: ; preds = %.noexc66
  invoke void @_ZN5boost3dll12library_info4initEb(ptr noundef nonnull align 8 dereferenceable(524) %10, i1 noundef zeroext true)
          to label %_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit69 unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i65, %.noexc66
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(524) %10) #25
  br label %.body67

_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit69: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i65
  %i.du = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cz
  br i1 %i.dv, label %_ZN5boost10filesystem4pathD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit69
  %i.dw = load i64, ptr %i.cz, align 8, !tbaa !22
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit72

_ZN5boost10filesystem4pathD2Ev.exit72:            ; preds = %_ZN5boost3dll12library_infoC2ERKNS_10filesystem4pathEb.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  invoke void @_ZN5boost3dll12library_info8sectionsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %12, ptr noundef nonnull align 8 dereferenceable(524) %10)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit72
  %i.dy = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dy, %bb.ah ] ; 3 uses
  %i.eb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !22
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eg, %i.ea
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ah
  %i.eh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dy, %bb.ah ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !40
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ai
  %i.en = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext false)
          to label %bb.aj unwind label %bb.ap     ; 0 uses

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(524) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.as

bb.ak:                                            ; preds = %_ZN5boost10filesystem9copy_fileERKNS0_4pathES3_NS0_12copy_optionsE.exit58
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ac, %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn24 = phi { ptr, i32 } [ %i.ep, %bb.al ], [ %i.eo, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.av

bb.an:                                            ; preds = %.noexc.i.i62
  %i.eq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN5boost10filesystem4pathD2Ev.exit75

bb.ao:                                            ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body67

.body67:                                          ; preds = %bb.ag, %bb.ao
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.er, %bb.ao ], [ %i.dt, %bb.ag ] ; 2 uses
  %i.es = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cz
  br i1 %i.et, label %_ZN5boost10filesystem4pathD2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73: ; preds = %.body67
  %i.eu = load i64, ptr %i.cz, align 8, !tbaa !22
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit75

_ZN5boost10filesystem4pathD2Ev.exit75:            ; preds = %.body67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73, %bb.an
  %.pn26 = phi { ptr, i32 } [ %i.eq, %bb.an ], [ %eh.lpad-body68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73 ], [ %eh.lpad-body68, %.body67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZN5boost10filesystem4pathD2Ev.exit72
  %i.ew = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(524) %10) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN5boost10filesystem4pathD2Ev.exit75
  %.pn28 = phi { ptr, i32 } [ %i.ew, %bb.ap ], [ %.pn26, %_ZN5boost10filesystem4pathD2Ev.exit75 ] ; 3 uses
  %.6 = extractvalue { ptr, i32 } %.pn28, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ex = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.ey = icmp eq i32 %.6, %i.ex
  br i1 %i.ey, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %.614 = extractvalue { ptr, i32 } %.pn28, 0
  %i.ez = call ptr @__cxa_begin_catch(ptr %.614) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aj
  %i.fa = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fb = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ai
  br i1 %i.fc, label %_ZN5boost10filesystem4pathD2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.at
  %i.fd = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit78

_ZN5boost10filesystem4pathD2Ev.exit78:            ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ff = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.h
  br i1 %i.fg, label %_ZN5boost10filesystem4pathD2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit78
  %i.fh = load i64, ptr %i.h, align 8, !tbaa !22
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit81

_ZN5boost10filesystem4pathD2Ev.exit81:            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %i.fa

bb.au:                                            ; preds = %bb.aa, %_ZN5boost10filesystem4pathD2Ev.exit38, %bb.z, %bb.as, %bb.ar
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq, %bb.am, %bb.y, %bb.u
  %.merged30 = phi { ptr, i32 } [ %.pn18, %bb.u ], [ %i.fj, %bb.au ], [ %.pn28, %bb.aq ], [ %.pn24, %bb.am ], [ %.pn22, %bb.y ] ; 2 uses
  %i.fk = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ai
  br i1 %i.fl, label %_ZN5boost10filesystem4pathD2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.a: ; preds = %bb.av
  %14 = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.fm = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fm) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit53

_ZN5boost10filesystem4pathD2Ev.exit53:            ; preds = %bb.av, %_ZN5boost10filesystem4pathD2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %bb.q
  %.merged = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ %i.cb, %bb.q ], [ %.merged30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.a ], [ %i.cc, %_ZN5boost10filesystem4pathD2Ev.exit50 ], [ %.merged30, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fn = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.h
  br i1 %i.fo, label %_ZN5boost10filesystem4pathD2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit53
  %i.fp = load i64, ptr %i.h, align 8, !tbaa !22
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #28
  br label %_ZN5boost10filesystem4pathD2Ev.exit87

_ZN5boost10filesystem4pathD2Ev.exit87:            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !44
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !45
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i5 = icmp eq ptr %1, null
  br i1 %.not.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !25
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.l) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2) ; 12 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.7, i64 noundef 9) ; 0 uses
  %.not.i6 = icmp eq ptr %0, null
  br i1 %.not.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34
  %i.w = or i32 %i.v, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.t, i32 noundef %i.w)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %0, i64 noundef %i.x) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.h, %bb.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.8, i64 noundef 22) ; 0 uses
  %.not.i8 = icmp eq ptr %3, null
  br i1 %.not.i8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !34
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %3, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.j, %bb.k
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.o, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !58
  %.not.i1.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.at, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef signext %.0.i.i.i)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  %i.ba = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN5boost6detail12test_resultsEv.exit11, !prof !41

bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not.i10 = icmp eq i32 %i.bc, 0
  br i1 %.not.i10, label %_ZN5boost6detail12test_resultsEv.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !44
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !45
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %_ZN5boost6detail12test_resultsEv.exit11

_ZN5boost6detail12test_resultsEv.exit11:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.o, %bb.p
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !59
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !59
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit11
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5seekpESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(8), i64, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #7 align 2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost3dll12library_info8sectionsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(524) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  switch i32 %i.b, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail8elf_infoIjE8sectionsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  br label %_ZN5boost3dll6detail10macho_infoIjE8sectionsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail8elf_infoImE8sectionsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  br label %_ZN5boost3dll6detail10macho_infoIjE8sectionsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEE.exit
end_hunk_0
