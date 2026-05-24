inline.NumInlined: 14762
inline.NumDeleted: 2666
begin_hunk_0_@_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEclB5cxx11El:._crit_edge.i.i
  store i8 0, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !685
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %.noexc14 unwind label %bb.f   ; 0 uses

.noexc14:                                         ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4968
  %i.l = and i32 %i.k, 3
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = load i64, ptr %i.f, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.m
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !257
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.n, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.f

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc14
  %i.o = load ptr, ptr %5, align 8, !tbaa !257    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4437 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.a, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.42)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

common.resume:                                    ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.n, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %.pn11, %bb.n ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %eh.lpad-body, %.body ], [ %i.bu, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #27
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !4428
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.arrow_vendored::date::sys_info") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 %2)
          to label %.noexc16 unwind label %bb.g

.noexc16:                                         ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !609
  %i.aa = add nsw i64 %i.z, %2
  store i64 %i.aa, ptr %4, align 8, !tbaa !609
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.y)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !257 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc16
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !257 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.e
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8.i

_ZN14arrow_vendored4date8sys_infoD2Ev.exit8.i:    ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

bb.f:                                             ; preds = %.noexc14, %._crit_edge.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %5, align 8, !tbaa !257   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.f
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !26
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

bb.g:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  br label %.body

.body:                                            ; preds = %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.ai, %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8.i ] ; 3 uses
  %i.au = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.av = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #27
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %common.resume

bb.h:                                             ; preds = %.body
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #27 ; 2 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.b, i64 %i.bb
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i32 noundef 0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #27
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !586
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 1 dereferenceable(30) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.bh = load ptr, ptr %6, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @__cxa_end_catch()
  br label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn11 = phi { ptr, i32 } [ %i.bj, %bb.m ], [ %i.bi, %bb.l ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !4969)
  call void @llvm.experimental.noalias.scope.decl(metadata !4972)
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bk, ptr %7, align 8, !tbaa !684, !alias.scope !4975
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !685, !alias.scope !4975
  store i8 0, ptr %i.bk, align 8, !tbaa !26, !alias.scope !4975
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %8 = load ptr, ptr %i.bm, align 8, !tbaa !4976, !noalias !4975 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = load ptr, ptr %9, align 8, !noalias !4975 ; 2 uses
  %10 = icmp ugt ptr %8, %i.bn
  %.08.i.i.i = select i1 %10, ptr %8, ptr %i.bn   ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !4977, !noalias !4975 ; 2 uses
  %i.bq = ptrtoint ptr %.08.i.i.i to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bp, i64 noundef %i.bs)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %7, align 8, !tbaa !257, !alias.scope !4975 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bk
  br i1 %i.bw, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %bb.p
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !26, !alias.scope !4975
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #29
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.p

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.q
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !684
  %i.cb = load ptr, ptr %7, align 8, !tbaa !257   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bk
  br i1 %i.cc, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

bb.r:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !685 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !257
  %i.cg = load i64, ptr %i.bk, align 8, !tbaa !26
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !26
  %.pre = load i64, ptr %i.bl, align 8, !tbaa !685
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
  %i.ch = phi i64 [ %i.cd, %bb.r ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !685
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZN5arrow6StatusD2Ev.exit
  ret void

bb.t:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !54
  %i.i = icmp eq ptr %.pr.pre, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !1459

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !4978
  call void @_ZN5arrow4util13StringBuilderIJRA30_KcPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !4978
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !257, !noalias !4978 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA30_KcPS2_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !26, !noalias !4978
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZN5arrow6Status8FromArgsIJRA30_KcPS2_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !257, !noalias !4978 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !26, !noalias !4978
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !4978
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA30_KcPS2_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !4978
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %.noexc unwind label %bb.p     ; 9 uses

.noexc:                                           ; preds = %bb.b
  %i.e = load i8, ptr %i.b, align 8, !tbaa !1467
  store i8 %i.e, ptr %i.d, align 8, !tbaa !1467
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !684
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !257  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !685  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.k, ptr %i.a, align 8, !tbaa !609
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.h   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !257
  %i.n = load i64, ptr %i.a, align 8, !tbaa !609
  store i64 %i.n, ptr %i.h, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %.noexc
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %.noexc ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !26
  store i8 %i.p, ptr %i.o, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !609  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !257  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.arrow_vendored::date::zoned_time.486", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !684
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !685
  store i8 0, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !685
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %.noexc14 unwind label %bb.d   ; 0 uses

.noexc14:                                         ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4968
  %i.l = and i32 %i.k, 3
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = load i64, ptr %i.f, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.m
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !257
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.n, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.d

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc14
  %i.o = load ptr, ptr %3, align 8, !tbaa !257    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4548 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.a, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.42)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

common.resume:                                    ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.merged13, %bb.s ], [ %i.bg, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #27
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.t, ptr %4, align 8, !tbaa !5046
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.x, align 8, !tbaa !609
  %i.y = load ptr, ptr %1, align 8, !tbaa !4546
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.m unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.noexc14, %._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !tbaa !257   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

bb.e:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.ag = extractvalue { ptr, i32 } %i.af, 1
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #27
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.aj = extractvalue { ptr, i32 } %i.af, 0
  %i.ak = call ptr @__cxa_begin_catch(ptr %i.aj) #27 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.b, i64 %i.an
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef 0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  store ptr %i.as, ptr %i.a, align 8, !tbaa !586
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(30) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.at = load ptr, ptr %5, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @__cxa_end_catch()
  br label %bb.r

bb.j:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn11 = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.au, %bb.j ]
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !5050)
  call void @llvm.experimental.noalias.scope.decl(metadata !5053)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !684, !alias.scope !5056
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !685, !alias.scope !5056
  store i8 0, ptr %i.aw, align 8, !tbaa !26, !alias.scope !5056
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %7 = load ptr, ptr %i.ay, align 8, !tbaa !4976, !noalias !5056 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load ptr, ptr %8, align 8, !noalias !5056 ; 2 uses
  %9 = icmp ugt ptr %7, %i.az
  %.08.i.i.i = select i1 %9, ptr %7, ptr %i.az    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4977, !noalias !5056 ; 2 uses
  %i.bc = ptrtoint ptr %.08.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bb, i64 noundef %i.be)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !257, !alias.scope !5056 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bi, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !26, !alias.scope !5056
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #29
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.p
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !684
  %i.bn = load ptr, ptr %6, align 8, !tbaa !257   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.aw
  br i1 %i.bo, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = load i64, ptr %i.ax, align 8, !tbaa !685 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !257
  %i.bs = load i64, ptr %i.aw, align 8, !tbaa !26
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !26
  %.pre = load i64, ptr %i.ax, align 8, !tbaa !685
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19
  %i.bt = phi i64 [ %i.bp, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !685
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.s:                                             ; preds = %bb.l, %bb.e
  %.merged13 = phi { ptr, i32 } [ %i.af, %bb.e ], [ %.pn11, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.t:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 8 uses
  %4 = alloca %"class.std::chrono::time_point.487", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !609 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = load ptr, ptr %2, align 8, !tbaa !5046
  %i.c = sdiv i64 %.sroa.0.0.copyload.i, 1000     ; 2 uses
  %i.d = mul nsw i64 %i.c, 1000
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, %i.d
  %i.f = sext i1 %i.e to i64
  %spec.select.i.i.i = add nsw i64 %i.c, %i.f
  call void @_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.arrow_vendored::date::sys_info") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 %spec.select.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !5038
  %i.i = mul nsw i64 %i.h, 1000
  %i.j = add nsw i64 %i.i, %.sroa.0.0.copyload.i
  store i64 %i.j, ptr %4, align 8, !tbaa !609
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit

_ZN14arrow_vendored4date8sys_infoD2Ev.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.l

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !26
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8

_ZN14arrow_vendored4date8sys_infoD2Ev.exit8:      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow_vendored::date::fields.488", align 8 ; 11 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !609 ; 4 uses
  %i.a = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext, 32                 ; 3 uses
  %i.e = mul nsw i64 %i.d, 86400000
  %.not = icmp slt i64 %.sroa.0.0.copyload.i.i, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 719468                 ; 2 uses
  %i.g = icmp sgt i32 %i.b, -719469
  %i.h = add nsw i32 %i.b, 573372
  %i.i = select i1 %i.g, i32 %i.f, i32 %i.h
  %i.j = sdiv i32 %i.i, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.j, -146097
  %i.k = add i32 %.neg.i.i, %i.f                  ; 5 uses
  %i.l = udiv i32 %i.k, 1460
  %i.m = udiv i32 %i.k, 36524
  %i.n = udiv i32 %i.k, 146096
  %.neg79 = add i32 %i.m, %i.k
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = sub i32 %.neg79, %i.o                    ; 3 uses
  %i.q = udiv i32 %i.p, 365                       ; 2 uses
  %i.r = mul nsw i32 %i.j, 400
  %i.s = add nsw i32 %i.q, %i.r
  %i.t = udiv i32 %i.p, 1460
  %i.u = udiv i32 %i.p, 36500
  %.neg36.i.i = mul i32 %i.q, -365
  %.neg37.i.i = sub i32 %i.k, %i.t
  %.neg25.i.i = add i32 %.neg37.i.i, %i.u
  %i.v = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.w = mul i32 %i.v, 5
  %i.x = add i32 %i.w, 2                          ; 2 uses
  %i.y = udiv i32 %i.x, 153                       ; 2 uses
  %i.z = mul nuw i32 %i.y, 153
  %i.aa = add nuw i32 %i.z, 2
  %i.ab = udiv i32 %i.aa, 5
  %i.ac = sub i32 %i.v, %i.ab
  %i.ad = icmp ult i32 %i.x, 1530
  %.v.i.i = select i1 %i.ad, i32 3, i32 -9
  %i.ae = add nsw i32 %.v.i.i, %i.y               ; 2 uses
  %i.af = icmp ult i32 %i.ae, 3
  %i.ag = zext i1 %i.af to i32
  %i.ah = add nsw i32 %i.s, %i.ag
  %i.ai = shl i32 %i.ac, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.ai, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.ae, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ah, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i13 = mul nsw i64 %i.d, -86400000
  %i.aj = add i64 %.neg.i.i13, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = add nsw i32 %i.b, 719467                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !257  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.arrow_vendored::date::zoned_time.496", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !684
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !685
  store i8 0, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !685
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %.noexc14 unwind label %bb.d   ; 0 uses

.noexc14:                                         ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4968
  %i.l = and i32 %i.k, 3
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = load i64, ptr %i.f, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.m
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !257
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.n, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.d

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc14
  %i.o = load ptr, ptr %3, align 8, !tbaa !257    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4651 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.a, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.42)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

common.resume:                                    ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.merged13, %bb.s ], [ %i.bg, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #27
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.t, ptr %4, align 8, !tbaa !5065
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.x, align 8, !tbaa !609
  %i.y = load ptr, ptr %1, align 8, !tbaa !4649
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.m unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.noexc14, %._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !tbaa !257   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

bb.e:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.ag = extractvalue { ptr, i32 } %i.af, 1
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #27
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.aj = extractvalue { ptr, i32 } %i.af, 0
  %i.ak = call ptr @__cxa_begin_catch(ptr %i.aj) #27 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.b, i64 %i.an
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef 0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  store ptr %i.as, ptr %i.a, align 8, !tbaa !586
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(30) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.at = load ptr, ptr %5, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @__cxa_end_catch()
  br label %bb.r

bb.j:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn11 = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.au, %bb.j ]
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !5069)
  call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !684, !alias.scope !5075
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !685, !alias.scope !5075
  store i8 0, ptr %i.aw, align 8, !tbaa !26, !alias.scope !5075
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %7 = load ptr, ptr %i.ay, align 8, !tbaa !4976, !noalias !5075 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load ptr, ptr %8, align 8, !noalias !5075 ; 2 uses
  %9 = icmp ugt ptr %7, %i.az
  %.08.i.i.i = select i1 %9, ptr %7, ptr %i.az    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4977, !noalias !5075 ; 2 uses
  %i.bc = ptrtoint ptr %.08.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bb, i64 noundef %i.be)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !257, !alias.scope !5075 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bi, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !26, !alias.scope !5075
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #29
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.p
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !684
  %i.bn = load ptr, ptr %6, align 8, !tbaa !257   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.aw
  br i1 %i.bo, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = load i64, ptr %i.ax, align 8, !tbaa !685 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !257
  %i.bs = load i64, ptr %i.aw, align 8, !tbaa !26
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !26
  %.pre = load i64, ptr %i.ax, align 8, !tbaa !685
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19
  %i.bt = phi i64 [ %i.bp, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !685
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.s:                                             ; preds = %bb.l, %bb.e
  %.merged13 = phi { ptr, i32 } [ %i.af, %bb.e ], [ %.pn11, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.t:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 8 uses
  %4 = alloca %"class.std::chrono::time_point.497", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !609 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = load ptr, ptr %2, align 8, !tbaa !5065
  %i.c = sdiv i64 %.sroa.0.0.copyload.i, 1000000  ; 2 uses
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, %i.d
  %i.f = sext i1 %i.e to i64
  %spec.select.i.i.i = add nsw i64 %i.c, %i.f
  call void @_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.arrow_vendored::date::sys_info") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 %spec.select.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !5038
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = add nsw i64 %i.i, %.sroa.0.0.copyload.i
  store i64 %i.j, ptr %4, align 8, !tbaa !609
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit

_ZN14arrow_vendored4date8sys_infoD2Ev.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.l

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !26
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8

_ZN14arrow_vendored4date8sys_infoD2Ev.exit8:      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow_vendored::date::fields.498", align 8 ; 11 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !609 ; 6 uses
  %i.a = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000000 ; 4 uses
  %i.b = trunc nsw i64 %i.a to i32                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i8 0, i64 16, i1 false)
  %i.d = mul nsw i64 %i.a, 86400000000
  %.not = icmp slt i64 %.sroa.0.0.copyload.i.i, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.b, 719468                 ; 2 uses
  %i.f = icmp sgt i64 %.sroa.0.0.copyload.i.i, -62162121600000000
  %i.g = add nsw i32 %i.b, 573372
  %i.h = select i1 %i.f, i32 %i.e, i32 %i.g
  %i.i = sdiv i32 %i.h, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.i, -146097
  %i.j = add nsw i32 %.neg.i.i, %i.e              ; 5 uses
  %i.k = udiv i32 %i.j, 1460
  %i.l = udiv i32 %i.j, 36524
  %i.m = udiv i32 %i.j, 146096
  %.neg79 = add nsw i32 %i.l, %i.j
  %i.n = add nuw nsw i32 %i.m, %i.k
  %i.o = sub nsw i32 %.neg79, %i.n                ; 3 uses
  %i.p = udiv i32 %i.o, 365                       ; 2 uses
  %i.q = mul nsw i32 %i.i, 400
  %i.r = add nsw i32 %i.p, %i.q
  %i.s = udiv i32 %i.o, 1460
  %i.t = udiv i32 %i.o, 36500
  %.neg36.i.i = mul i32 %i.p, -365
  %.neg37.i.i = sub nsw i32 %i.j, %i.s
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.t
  %i.u = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.v = mul i32 %i.u, 5
  %i.w = add i32 %i.v, 2                          ; 2 uses
  %i.x = udiv i32 %i.w, 153                       ; 2 uses
  %i.y = mul nuw i32 %i.x, 153
  %i.z = add nuw i32 %i.y, 2
  %i.aa = udiv i32 %i.z, 5
  %i.ab = sub i32 %i.u, %i.aa
  %i.ac = icmp ult i32 %i.w, 1530
  %.v.i.i = select i1 %i.ac, i32 3, i32 -9
  %i.ad = add nsw i32 %.v.i.i, %i.x               ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 3
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nsw i32 %i.r, %i.af
  %i.ah = shl i32 %i.ab, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.ah, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.ad, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ag, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i13 = mul nsw i64 %i.a, -86400000000
  %i.ai = add i64 %.neg.i.i13, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aj = add nsw i32 %i.b, 719467                ; 2 uses
  %i.ak = icmp sgt i64 %.sroa.0.0.copyload.i.i, -62162035200000000
  %i.al = add nsw i32 %i.b, 573371
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !257  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.arrow_vendored::date::zoned_time.506", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !684
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !685
  store i8 0, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !685
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %.noexc14 unwind label %bb.d   ; 0 uses

.noexc14:                                         ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4968
  %i.l = and i32 %i.k, 3
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = load i64, ptr %i.f, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.m
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !257
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.n, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.d

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc14
  %i.o = load ptr, ptr %3, align 8, !tbaa !257    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4754 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.a, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.42)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

common.resume:                                    ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.merged13, %bb.s ], [ %i.bg, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #27
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.t, ptr %4, align 8, !tbaa !5083
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.x, align 8, !tbaa !609
  %i.y = load ptr, ptr %1, align 8, !tbaa !4752
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.m unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.noexc14, %._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !tbaa !257   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

bb.e:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.ag = extractvalue { ptr, i32 } %i.af, 1
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #27
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.aj = extractvalue { ptr, i32 } %i.af, 0
  %i.ak = call ptr @__cxa_begin_catch(ptr %i.aj) #27 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.b, i64 %i.an
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef 0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  store ptr %i.as, ptr %i.a, align 8, !tbaa !586
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(30) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.at = load ptr, ptr %5, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @__cxa_end_catch()
  br label %bb.r

bb.j:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn11 = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.au, %bb.j ]
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !5087)
  call void @llvm.experimental.noalias.scope.decl(metadata !5090)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !684, !alias.scope !5093
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !685, !alias.scope !5093
  store i8 0, ptr %i.aw, align 8, !tbaa !26, !alias.scope !5093
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %7 = load ptr, ptr %i.ay, align 8, !tbaa !4976, !noalias !5093 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load ptr, ptr %8, align 8, !noalias !5093 ; 2 uses
  %9 = icmp ugt ptr %7, %i.az
  %.08.i.i.i = select i1 %9, ptr %7, ptr %i.az    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4977, !noalias !5093 ; 2 uses
  %i.bc = ptrtoint ptr %.08.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bb, i64 noundef %i.be)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !257, !alias.scope !5093 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bi, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !26, !alias.scope !5093
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #29
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.p
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !684
  %i.bn = load ptr, ptr %6, align 8, !tbaa !257   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.aw
  br i1 %i.bo, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = load i64, ptr %i.ax, align 8, !tbaa !685 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !257
  %i.bs = load i64, ptr %i.aw, align 8, !tbaa !26
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !26
  %.pre = load i64, ptr %i.ax, align 8, !tbaa !685
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19
  %i.bt = phi i64 [ %i.bp, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !685
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.s:                                             ; preds = %bb.l, %bb.e
  %.merged13 = phi { ptr, i32 } [ %i.af, %bb.e ], [ %.pn11, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.t:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::sys_info", align 8 ; 8 uses
  %4 = alloca %"class.std::chrono::time_point.507", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !609 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = load ptr, ptr %2, align 8, !tbaa !5083
  %i.c = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 2 uses
  %i.d = mul nsw i64 %i.c, 1000000000
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, %i.d
  %i.f = sext i1 %i.e to i64
  %spec.select.i.i.i = add nsw i64 %i.c, %i.f
  call void @_ZNK14arrow_vendored4date9time_zone13get_info_implENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.arrow_vendored::date::sys_info") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 %spec.select.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !5038
  %i.i = mul nsw i64 %i.h, 1000000000
  %i.j = add nsw i64 %i.i, %.sroa.0.0.copyload.i
  store i64 %i.j, ptr %4, align 8, !tbaa !609
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit

_ZN14arrow_vendored4date8sys_infoD2Ev.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.l

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !26
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZN14arrow_vendored4date8sys_infoD2Ev.exit8

_ZN14arrow_vendored4date8sys_infoD2Ev.exit8:      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS0_7local_tET1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow_vendored::date::fields.508", align 8 ; 11 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !609 ; 4 uses
  %i.a = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000000000 ; 4 uses
  %i.b = trunc nsw i64 %i.a to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i8 0, i64 16, i1 false)
  %i.d = mul nsw i64 %i.a, 86400000000000
  %.not = icmp slt i64 %.sroa.0.0.copyload.i.i, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.b, 719468                 ; 2 uses
  %i.f = udiv i32 %i.e, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.f, -146097
  %i.g = add nsw i32 %.neg.i.i, %i.e              ; 5 uses
  %i.h = udiv i32 %i.g, 1460
  %i.i = udiv i32 %i.g, 36524
  %i.j = udiv i32 %i.g, 146096
  %.neg79 = add nsw i32 %i.i, %i.g
  %i.k = add nuw nsw i32 %i.j, %i.h
  %i.l = sub nsw i32 %.neg79, %i.k                ; 3 uses
  %i.m = udiv i32 %i.l, 365                       ; 2 uses
  %i.n = mul nuw nsw i32 %i.f, 400
  %i.o = add nuw nsw i32 %i.m, %i.n
  %i.p = udiv i32 %i.l, 1460
  %i.q = udiv i32 %i.l, 36500
  %.neg36.i.i = mul i32 %i.m, -365
  %.neg37.i.i = sub nsw i32 %i.g, %i.p
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.q
  %i.r = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.s = mul i32 %i.r, 5
  %i.t = add i32 %i.s, 2                          ; 2 uses
  %i.u = udiv i32 %i.t, 153                       ; 2 uses
  %i.v = mul nuw i32 %i.u, 153
  %i.w = add nuw i32 %i.v, 2
  %i.x = udiv i32 %i.w, 5
  %i.y = sub i32 %i.r, %i.x
  %i.z = icmp ult i32 %i.t, 1530
  %.v.i.i = select i1 %i.z, i32 3, i32 -9
  %i.aa = add nsw i32 %.v.i.i, %i.u               ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 3
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.o, %i.ac
  %i.ae = shl i32 %i.y, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.ae, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.aa, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ad, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i13 = mul nsw i64 %i.a, -86400000000000
  %i.af = add i64 %.neg.i.i13, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ag = add nsw i32 %i.b, 719467                ; 2 uses
  %i.ah = udiv i32 %i.ag, 146097                  ; 2 uses
  %.neg.i.i16 = mul nsw i32 %i.ah, -146097
  %i.ai = add nsw i32 %.neg.i.i16, %i.ag          ; 5 uses
  %i.aj = udiv i32 %i.ai, 1460
  %i.ak = udiv i32 %i.ai, 36524
end_hunk_3
