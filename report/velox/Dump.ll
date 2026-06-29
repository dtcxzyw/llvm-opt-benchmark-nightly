inline.NumInlined: 689
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5folly4bser11toBserIOBufERKNS_7dynamicERKNS0_18serialization_optsE:bb.a
_ZN5folly5IOBuf7advanceEm.exit:                   ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  store ptr %i.l, ptr %i.j, align 8, !tbaa !26
  invoke void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZN5folly5IOBuf7advanceEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.m = load i64, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 17, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %3, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %6
  br i1 %.not.i.i.i.i.i, label %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load <2 x ptr>, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.q, ptr %6, align 16, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !43, !range !44, !noundef !45
  store i8 0, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.s, ptr %i.t, align 16, !tbaa !46
  store ptr %6, ptr %i.o, align 8, !tbaa !32
  br label %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit

_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit: ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.m, ptr %i.u, align 16, !tbaa !47
  store i64 %i.m, ptr %i.v, align 8, !tbaa !49
  invoke fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.w = load i8, ptr %3, align 8, !tbaa !50, !range !44, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %bb.g, !prof !51

bb.g:                                             ; preds = %bb.f
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.26)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #26
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.y) #24
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = add i64 %i.ab, %i.ag
  %i.aj = sub i64 %i.ai, %i.ah                    ; 9 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !55
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.al = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA22_cmA35_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(22) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(35) @.str.1)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt11range_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #26
          to label %bb.al unwind label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.o:                                             ; preds = %_ZN5folly5IOBuf7advanceEm.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.q:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.l
  %.026 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.av = load i64, ptr %i.at, align 8, !tbaa !59
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.026, label %bb.s, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.026, label %bb.s, label %.body

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.al) #24
  br label %.body

bb.t:                                             ; preds = %bb.j
  store i16 256, ptr %i.a, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 4 uses
  %i.az = icmp samesign ugt i64 %i.aj, 2147483647
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 6, ptr %i.ax, align 2, !tbaa !59
  store i64 %i.aj, ptr %i.ay, align 8, !tbaa !55
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.ba = icmp samesign ugt i64 %i.aj, 32767
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 5, ptr %i.ax, align 2, !tbaa !59
  %i.bb = trunc nuw nsw i64 %i.aj to i32
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !7
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.bc = icmp samesign ugt i64 %i.aj, 127
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 4, ptr %i.ax, align 2, !tbaa !59
  %i.bd = trunc nuw nsw i64 %i.aj to i16
  store i16 %i.bd, ptr %i.ay, align 2, !tbaa !60
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i8 3, ptr %i.ax, align 2, !tbaa !59
  %i.be = trunc nuw nsw i64 %i.aj to i8
  store i8 %i.be, ptr %i.ay, align 1, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z, %bb.y, %bb.u
  %.025 = phi i64 [ 11, %bb.u ], [ 7, %bb.w ], [ 5, %bb.y ], [ 4, %bb.z ]
  invoke void @_ZN5folly10IOBufQueue7prependEPKvm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.a, i64 noundef %.025)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !54, !noalias !65 ; 2 uses
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !32, !noalias !65 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53, !noalias !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bh
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %..noexc.i.i_crit_edge.i, label %bb.ac

..noexc.i.i_crit_edge.i:                          ; preds = %bb.ab
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19, !noalias !62
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !62 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68, !noalias !65 ; 2 uses
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !22, !noalias !65
  %i.bp = add i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !22, !noalias !65
  %i.bq = ptrtoint ptr %i.bi to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %..noexc.i.i_crit_edge.i
  %i.br = phi i64 [ %.pre.i, %..noexc.i.i_crit_edge.i ], [ %i.bq, %bb.ac ]
  store i64 %i.br, ptr %0, align 8, !tbaa !19, !alias.scope !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !noalias !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load i8, ptr %i.bs, align 16, !tbaa !69, !range !44, !noundef !45
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ae, label %_ZN5folly2io13QueueAppenderD2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !27  ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  %i.cf = ptrtoint ptr %i.ca to i64
  %i.cg = ptrtoint ptr %i.bx to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !22
  %i.cj = add i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.ce, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !52
  %i.cm = add i64 %i.cl, %i.ch
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !52
  %i.cn = getelementptr inbounds i8, ptr %i.bx, i64 %i.ch
  store ptr %i.cn, ptr %i.bw, align 8, !tbaa !54
  br label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i.i

_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i.i:  ; preds = %bb.af, %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bz, %i.co
  br i1 %.not.i.i.i33, label %_ZN5folly2io13QueueAppenderD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i.i
  %i.cp = load <2 x ptr>, ptr %i.bz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bz, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.cp, ptr %i.co, align 8, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !43, !range !44, !noundef !45
  store i8 0, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !46
  store ptr %i.co, ptr %i.by, align 8, !tbaa !32
  br label %_ZN5folly2io13QueueAppenderD2Ev.exit

_ZN5folly2io13QueueAppenderD2Ev.exit:             ; preds = %bb.ad, %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ct = load ptr, ptr %5, align 8, !tbaa !19    ; 3 uses
  %.not.i34 = icmp eq ptr %i.ct, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %_ZN5folly2io13QueueAppenderD2Ev.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ct) #24
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ct) #24
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5folly2io13QueueAppenderD2Ev.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN5folly10IOBufQueueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.ah:                                            ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn37, %bb.s ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cu, %bb.ah ], [ %i.ap, %bb.q ], [ %i.z, %bb.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ao, %bb.p ]
  call void @_ZN5folly2io13QueueAppenderD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ai ], [ %i.an, %bb.o ]
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.n
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aj ], [ %i.am, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN5folly10IOBufQueueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.al:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN5folly10IOBufQueueC1ERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i64 noundef) local_unnamed_addr #5

declare void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.12", align 8    ; 11 uses
  %4 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !70
  switch i32 %i.a, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit [
    i32 0, label %bb.b
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit
    i32 3, label %_ZNKR5folly7dynamic9getDoubleEv.exit
    i32 4, label %_ZNKR5folly7dynamic6getIntEv.exit
    i32 5, label %bb.g
    i32 1, label %bb.x
    i32 6, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !75

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %bb.b, %bb.c
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  store i8 10, ptr %i.f, align 1
  %i.g = load ptr, ptr %1, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !74
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

_ZNKR5folly7dynamic7getBoolEv.exit:               ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !43, !range !44, !noundef !45
  %i.k = xor i8 %i.j, 9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19, !prof !75

bb.d:                                             ; preds = %_ZNKR5folly7dynamic7getBoolEv.exit
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i18 = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19: ; preds = %_ZNKR5folly7dynamic7getBoolEv.exit, %bb.d
  %i.p = phi ptr [ %.pre.i18, %bb.d ], [ %i.n, %_ZNKR5folly7dynamic7getBoolEv.exit ]
  store i8 %i.k, ptr %i.p, align 1
  %i.q = load ptr, ptr %1, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %1, align 8, !tbaa !74
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

_ZNKR5folly7dynamic9getDoubleEv.exit:             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22, !prof !75

bb.e:                                             ; preds = %_ZNKR5folly7dynamic9getDoubleEv.exit
end_hunk_0
