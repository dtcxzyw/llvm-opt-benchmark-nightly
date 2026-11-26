Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_secondary?download=true
inline.NumInlined: 7034
inline.NumDeleted: 3542
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7rocksdb15DBImplSecondary12NewIteratorsERKNS_11ReadOptionsERKSt6vectorIPNS_18ColumnFamilyHandleESaIS6_EEPS4_IPNS_8IteratorESaISC_EE:bb.a
  store i64 123, ptr %i.d, align 8, !tbaa !659
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr @.str, ptr %6, align 8, !tbaa !658
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !659
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.bn

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 119, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !894  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i, label %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.k = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !850
  store <2 x ptr> %i.l, ptr %i.g, align 8, !tbaa !850
  br label %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !894  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %common.resume unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.g, %_ZN7rocksdb11ReadOptionsD2Ev.exit172
  %common.resume.op = phi { ptr, i32 } [ %.pn110, %_ZN7rocksdb11ReadOptionsD2Ev.exit172 ], [ %i.m, %bb.g ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN7rocksdb11ReadOptionsC2ERKS0_.exit:            ; preds = %bb.c, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !893
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit
  store i8 5, ptr %i.t, align 8, !tbaa !893
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !895
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr @.str.45, ptr %8, align 8, !tbaa !658
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 59, ptr %i.z, align 8, !tbaa !659
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr @.str, ptr %9, align 8, !tbaa !658
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !659
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit unwind label %bb.l

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.loopexit.split-lp215.loopexit.split-lp

bb.m:                                             ; preds = %bb.j
  %i.ac = icmp eq ptr %4, null
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr @.str.49, ptr %10, align 8, !tbaa !658
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 35, ptr %i.ad, align 8, !tbaa !659
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store ptr @.str, ptr %11, align 8, !tbaa !658
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !659
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.o

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.loopexit.split-lp215.loopexit.split-lp

bb.p:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !896
  %.not89 = icmp eq ptr %i.ah, null
  %i.ai = load ptr, ptr %3, align 8, !tbaa !916   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !916 ; 3 uses
  %i.al = icmp eq ptr %i.ai, %i.ak                ; 2 uses
  br i1 %.not89, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.al, label %.critedge112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZN7rocksdb6StatusD2Ev.exit127
  %.sroa.0207.0224 = phi ptr [ %i.ai, %.lr.ph ], [ %i.as, %_ZN7rocksdb6StatusD2Ev.exit127 ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.0207.0224, align 8, !tbaa !918
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !896
  invoke void @_ZNK7rocksdb6DBImpl18FailIfTsMismatchCfEPNS_18ColumnFamilyHandleERKNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.s unwind label %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %0, align 8, !tbaa !673
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i125, label %_ZN7rocksdb6StatusD2Ev.exit127, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i126

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i126: ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit127

_ZN7rocksdb6StatusD2Ev.exit127:                   ; preds = %bb.t, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i126
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0207.0224, i64 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ak
  br i1 %i.at, label %.critedge112, label %bb.r

bb.u:                                             ; preds = %bb.p
  br i1 %i.al, label %.critedge112, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph226, %_ZN7rocksdb6StatusD2Ev.exit133
  %.sroa.0203.0225 = phi ptr [ %i.ai, %.lr.ph226 ], [ %i.az, %_ZN7rocksdb6StatusD2Ev.exit133 ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.0203.0225, align 8, !tbaa !918
  invoke void @_ZNK7rocksdb6DBImpl13FailIfCfHasTsEPKNS_18ColumnFamilyHandleE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef %i.av)
          to label %bb.w unwind label %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.aw = load i8, ptr %0, align 8, !tbaa !673
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !115 ; 2 uses
  %.not.i.i131 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i131, label %_ZN7rocksdb6StatusD2Ev.exit133, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit133

_ZN7rocksdb6StatusD2Ev.exit133:                   ; preds = %bb.x, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0203.0225, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ak
  br i1 %i.ba, label %.critedge112, label %bb.v

.critedge112:                                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit127, %_ZN7rocksdb6StatusD2Ev.exit133, %bb.q, %bb.u
  %i.bb = load ptr, ptr %4, align 8, !tbaa !1462  ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1463 ; 2 uses
  %.not.i.i134 = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i134, label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7rocksdb8IteratorES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7rocksdb8IteratorES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.critedge112
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !1463
  br label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE5clearEv.exit: ; preds = %.critedge112, %_ZSt8_DestroyIPPN7rocksdb8IteratorES2_EvT_S4_RSaIT0_E.exit.i.i
  %17 = phi ptr [ %i.bd, %.critedge112 ], [ %i.bb, %_ZSt8_DestroyIPPN7rocksdb8IteratorES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !920
  %i.bg = load ptr, ptr %3, align 8, !tbaa !921
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE5clearEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #36
          to label %.noexc unwind label %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE5clearEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1464
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bj
  br i1 %i.bq, label %_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.z
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %i.bo
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #34
          to label %.noexc135 unwind label %.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc135:                                        ; preds = %_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE11_M_allocateEm.exit.i
  %i.bs = load ptr, ptr %4, align 8, !tbaa !1462  ; 4 uses
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !1463
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %bb.aa, label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.aa:                                            ; preds = %.noexc135
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bs, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.aa, %.noexc135
  %.not.i8.i = icmp eq ptr %i.bs, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !1464
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ca) #31
  br label %_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.br, ptr %4, align 8, !tbaa !1462
  %20 = getelementptr inbounds nuw i8, ptr %i.br, i64 %19
  store ptr %20, ptr %i.bc, align 8, !tbaa !1463
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store ptr %i.cb, ptr %i.bl, align 8, !tbaa !1464
  br label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !897, !range !124, !noundef !125
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store ptr @.str.46, ptr %12, align 8, !tbaa !658
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 48, ptr %i.cf, align 8, !tbaa !659
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr @.str, ptr %13, align 8, !tbaa !658
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.cg, align 8, !tbaa !659
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit137 unwind label %bb.ad

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit137: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.critedge

.loopexit.split-lp215.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.r, %_ZNSt12_Vector_baseIPN7rocksdb8IteratorESaIS2_EE11_M_allocateEm.exit.i, %bb.y
  %lpad.loopexit.split-lp337 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.loopexit.split-lp215.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EE7reserveEm.exit
  %i.ci = load ptr, ptr %7, align 8, !tbaa !898
  %.not93 = icmp eq ptr %i.ci, null
  br i1 %.not93, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  store ptr @.str.47, ptr %14, align 8, !tbaa !658
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 40, ptr %i.cj, align 8, !tbaa !659
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr @.str, ptr %15, align 8, !tbaa !658
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !659
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit139 unwind label %bb.ag

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit139: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.loopexit.split-lp215.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  store i64 0, ptr %16, align 8, !tbaa !1471
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 136 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !1472
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 144 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.cp = load ptr, ptr %i.ag, align 8, !tbaa !896 ; 2 uses
  %.not94 = icmp eq ptr %i.cp, null
  br i1 %.not94, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !659
  %i.cs = icmp ne i64 %i.cr, 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ct = phi i1 [ false, %bb.ah ], [ %i.cs, %bb.ai ]
  %i.cu = load ptr, ptr %3, align 8, !tbaa !916   ; 2 uses
  %i.cv = load ptr, ptr %i.be, align 8, !tbaa !916 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %._crit_edge, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.aj
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 152 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 160 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph228, %.critedge120
  %.sroa.0199.0227 = phi ptr [ %i.cu, %.lr.ph228 ], [ %i.ga, %.critedge120 ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.0199.0227, align 8, !tbaa !918 ; 5 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(32) %i.da)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.df = invoke noundef ptr @_ZN7rocksdb16ColumnFamilyData25GetReferencedSuperVersionEPNS_6DBImplE(ptr noundef nonnull align 8 dereferenceable(3088) %i.de, ptr noundef nonnull %1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.am:                                            ; preds = %bb.al
  %i.dg = load i64, ptr %16, align 8, !tbaa !1471 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 8
  br i1 %i.dh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.di = load ptr, ptr %i.cm, align 8, !tbaa !1472
  %i.dj = add nuw nsw i64 %i.dg, 1
  store i64 %i.dj, ptr %16, align 8, !tbaa !1471
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dg ; 2 uses
  store ptr %i.df, ptr %i.dk, align 8, !tbaa !1474
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.da, ptr %i.dl, align 8, !tbaa !1476
  br label %_ZN7rocksdb10autovectorISt5tupleIJPNS_22ColumnFamilyHandleImplEPNS_12SuperVersionEEELm8EE12emplace_backIJRS3_RS5_EEEvDpOT_.exit

bb.ao:                                            ; preds = %bb.am
  %i.dm = load ptr, ptr %i.cx, align 8, !tbaa !1477 ; 7 uses
  %i.dn = load ptr, ptr %i.cy, align 8, !tbaa !1478
  %.not.i.i140 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i140, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.df, ptr %i.dm, align 8, !tbaa !1474
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.da, ptr %i.do, align 8, !tbaa !1476
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dp, ptr %i.cx, align 8, !tbaa !1477
  br label %_ZN7rocksdb10autovectorISt5tupleIJPNS_22ColumnFamilyHandleImplEPNS_12SuperVersionEEELm8EE12emplace_backIJRS3_RS5_EEEvDpOT_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dq = load ptr, ptr %i.co, align 8, !tbaa !1479 ; 13 uses
  %i.dr = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775792
  br i1 %i.du, label %.invoke, label %_ZNKSt6vectorISt5tupleIJPN7rocksdb22ColumnFamilyHandleImplEPNS1_12SuperVersionEEESaIS6_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.aq, %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt5tupleIJPN7rocksdb22ColumnFamilyHandleImplEPNS1_12SuperVersionEEESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aq
  %i.dv = ashr exact i64 %i.dt, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 576460752303423487)
  %i.dz = select i1 %i.dx, i64 576460752303423487, i64 %i.dy ; 3 uses
  %.not.i.i173 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i173)
  %i.ea = shl nuw nsw i64 %i.dz, 4
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #34
          to label %.noexc176 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

.noexc176:                                        ; preds = %_ZNKSt6vectorISt5tupleIJPN7rocksdb22ColumnFamilyHandleImplEPNS1_12SuperVersionEEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store ptr %i.df, ptr %i.ec, align 8, !tbaa !1474
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.da, ptr %i.ed, align 8, !tbaa !1476
  %.not10.i.i.i.i = icmp eq ptr %i.dq, %i.dm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJPN7rocksdb22ColumnFamilyHandleImplEPNS1_12SuperVersionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit23.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc176
  %i.ee = add i64 %i.dr, -16
  %i.ef = sub i64 %i.ee, %i.ds                    ; 3 uses
  %i.eg = lshr i64 %i.ef, 4
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ef, 176
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ei = and i64 %i.ef, -16                      ; 2 uses
  %i.ej = or disjoint i64 %i.ei, 8                ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eb, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.dq, i64 %i.ej
  %i.em = getelementptr i8, ptr %i.eb, i64 8
  %i.en = add i64 %i.ei, 16                       ; 2 uses
  %i.eo = getelementptr i8, ptr %i.eb, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.dq, i64 8
  %i.eq = getelementptr i8, ptr %i.dq, i64 %i.en
  %bound0 = icmp ult ptr %i.eb, %i.el
  %bound1 = icmp ult ptr %i.dq, %i.ek
  %found.conflict = and i1 %bound0, %bound1
  %bound0317 = icmp ult ptr %i.em, %i.eq
  %bound1318 = icmp ult ptr %i.ep, %i.eo
end_hunk_0
