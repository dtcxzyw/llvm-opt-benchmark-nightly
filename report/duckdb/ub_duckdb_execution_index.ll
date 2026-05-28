inline.NumInlined: 3044
inline.NumDeleted: 1648
begin_hunk_0_@_ZN6duckdb16CatalogExceptionC2IJPKcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10BoundIndexC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERKNSA_INS_10unique_ptrINS_10ExpressionESt14default_deleteISI_ELb1EEELb1ESaISL_EEERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i8 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(408) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.duckdb::unique_ptr.413", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.413", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.413", align 8 ; 4 uses
  tail call void @_ZN6duckdb5IndexC2ERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(408) %7)
  store ptr getelementptr inbounds nuw inrange(-16, 224) (i8, ptr @_ZTVN6duckdb10BoundIndexE, i64 16), ptr %0, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !59
  %i.g = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.i, ptr %i.b, align 8, !tbaa !73
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !52
  %i.l = load i64, ptr %i.b, align 8, !tbaa !73
  store i64 %i.l, ptr %i.f, align 8, !tbaa !61
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !61
  store i8 %i.n, ptr %i.m, align 1, !tbaa !61
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.o, ptr %i.p, align 8, !tbaa !60
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !59
  %i.u = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.w, ptr %i.a, align 8, !tbaa !73
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %bb.d
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.j   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.y, ptr %i.s, align 8, !tbaa !52
  %i.z = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.z, ptr %i.t, align 8, !tbaa !61
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc33, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc33 ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %i.w, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i31
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !61
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !61
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i31
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !60
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %3, ptr %i.ag, align 8, !tbaa !390
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i8 0, i64 64, i1 false)
  invoke void @_ZN6duckdb18ExpressionExecutorC1Ev(ptr noundef nonnull align 8 dereferenceable(65) %i.ak)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %6, align 8, !tbaa !426   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !426 ; 2 uses
  %.not85 = icmp eq ptr %i.al, %i.an
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.ai, %bb.h
  ret void

bb.i:                                             ; preds = %.noexc.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.j:                                             ; preds = %.noexc.i32
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.l:                                             ; preds = %.lr.ph, %bb.ai
  %.sroa.068.086 = phi ptr [ %i.al, %.lr.ph ], [ %i.fn, %bb.ai ] ; 5 uses
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.068.086)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 57
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !427 ; 2 uses
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !435 ; 4 uses
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !436
  %.not.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !437
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.be, ptr %i.ao, align 8, !tbaa !435
  br label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE9push_backEOS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !438 ; 4 uses
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.p, label %_ZNKSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE11_M_allocateEm.exit.i.i.i, label %11

11:                                               ; preds = %_ZNKSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %12 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #28
          to label %_ZNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE11_M_allocateEm.exit.i.i.i unwind label %.loopexit

_ZNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %11, %_ZNKSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %13 = phi ptr [ null, %_ZNKSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %12, %11 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 %i.bi ; 2 uses
  store i8 %i.bb, ptr %i.bo, align 1, !tbaa !437
  %i.bp = icmp sgt i64 %i.bi, 0
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE11_M_allocateEm.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.q, %_ZNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #27
  br label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %13, ptr %i.c, align 8, !tbaa !438
  store ptr %i.bq, ptr %i.ao, align 8, !tbaa !435
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 %i.bn
  store ptr %i.br, ptr %i.ap, align 8, !tbaa !436
  br label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.n
  %i.bs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.068.086)
          to label %bb.s unwind label %bb.aj

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE9push_backEOS1_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56 ; 2 uses
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !336 ; 3 uses
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !339
  %.not.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.noexc37 unwind label %bb.aj

.noexc37:                                         ; preds = %bb.t
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !336
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bx, ptr %i.aq, align 8, !tbaa !336
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.aj

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc37, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.by = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.068.086)
          to label %bb.v unwind label %bb.ak      ; 2 uses

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !118
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.413") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.by)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !439 ; 6 uses
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !440
  %.not.i39 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i39, label %bb.x, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.w
  %i.ce = load i64, ptr %8, align 8, !tbaa !441
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !441
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cf, ptr %i.as, align 8, !tbaa !439
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %i.ah, align 8, !tbaa !443 ; 10 uses
  %i.ch = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc40 unwind label %.loopexit.split-lp75

.noexc40:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #28
          to label %.noexc41 unwind label %.loopexit74 ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  %i.ct = load i64, ptr %8, align 8, !tbaa !441
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !441
  store ptr null, ptr %8, align 8, !tbaa !441
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.cc
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc41
  %i.cu = add i64 %i.ch, -8
  %i.cv = sub i64 %i.cu, %i.ci                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check129 = icmp ult i64 %i.cv, 56
  br i1 %min.iters.check129, label %.lr.ph.i.i.i.i.i.i.preheader145, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep121.a = getelementptr i8, ptr %i.cr, i64 8
  %i.cy = add i64 %i.ch, -8
  %i.cz = sub i64 %i.cy, %i.ci
  %i.da = and i64 %i.cz, -8                       ; 2 uses
  %scevgep122.a = getelementptr i8, ptr %scevgep121.a, i64 %i.da
  %scevgep123.a = getelementptr i8, ptr %i.cg, i64 8
  %scevgep124 = getelementptr i8, ptr %scevgep123.a, i64 %i.da
  %bound0125 = icmp ult ptr %i.cr, %scevgep124
  %bound1126 = icmp ult ptr %i.cg, %scevgep122.a
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph.i.i.i.i.i.i.preheader145, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck120
  %n.vec132 = and i64 %i.cx, 4611686018427387900  ; 3 uses
  %i.db = shl i64 %n.vec132, 3                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cg, i64 %i.db
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.de = shl i64 %index134, 3                    ; 2 uses
  %next.gep135.a = getelementptr i8, ptr %i.cr, i64 %i.de ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.cg, i64 %i.de ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.df = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137.a = load <2 x i64>, ptr %next.gep136, align 8, !tbaa !441, !alias.scope !449, !noalias !444
  %wide.load138 = load <2 x i64>, ptr %i.df, align 8, !tbaa !441, !alias.scope !449, !noalias !444
  %i.dg = getelementptr i8, ptr %next.gep135.a, i64 16
  store <2 x i64> %wide.load137.a, ptr %next.gep135.a, align 8, !tbaa !441, !alias.scope !452, !noalias !449
  store <2 x i64> %wide.load138, ptr %i.dg, align 8, !tbaa !441, !alias.scope !452, !noalias !449
  %i.dh = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep136, align 8, !tbaa !441, !alias.scope !449, !noalias !444
  store <2 x ptr> splat (ptr null), ptr %i.dh, align 8, !tbaa !441, !alias.scope !449, !noalias !444
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.di, label %middle.block140, label %vector.body133, !llvm.loop !454

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.cx, %n.vec132
  br i1 %cmp.n141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader145

.lr.ph.i.i.i.i.i.i.preheader145:                  ; preds = %vector.memcheck120, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block140
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck120 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dc, %middle.block140 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck120 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dd, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader145, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader145 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader145 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.dj = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !447, !noalias !444
  store i64 %i.dj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !444, !noalias !447
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !447, !noalias !444
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.cc
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !457

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block140, %.noexc41
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cr, %.noexc41 ], [ %i.dc, %middle.block140 ], [ %i.dl, %.lr.ph.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.z
  store ptr %i.cr, ptr %i.ah, align 8, !tbaa !443
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !439
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.dn, ptr %i.at, align 8, !tbaa !440
  %.pr = load ptr, ptr %8, align 8, !tbaa !441    ; 3 uses
  %.not.i42 = icmp eq ptr %.pr, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.do = load ptr, ptr %.pr, align 8, !tbaa !118
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #25, !inline_history !458
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.068.086)
          to label %bb.aa unwind label %bb.am     ; 2 uses

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !118
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.413") align 8 %10, ptr noundef nonnull align 8 dereferenceable(88) %i.dr)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb10BoundIndex14BindExpressionENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.413") align 8 %9, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %10)
          to label %bb.ac unwind label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load ptr, ptr %i.au, align 8, !tbaa !439 ; 6 uses
  %i.dw = load ptr, ptr %i.av, align 8, !tbaa !440
  %.not.i.i43 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i43, label %bb.ad, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ac
  %i.dx = load i64, ptr %9, align 8, !tbaa !441
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !441
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dy, ptr %i.au, align 8, !tbaa !439
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit50

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !443 ; 10 uses
  %i.ea = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc46 unwind label %.loopexit.split-lp80

.noexc46:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.ee = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 1152921504606846975)
  %i.ei = select i1 %i.eg, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #28
          to label %.noexc47 unwind label %.loopexit79 ; 10 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  %i.em = load i64, ptr %9, align 8, !tbaa !441
  store i64 %i.em, ptr %i.el, align 8, !tbaa !441
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.dv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc47
  %i.en = add i64 %i.ea, -8
  %i.eo = sub i64 %i.en, %i.eb                    ; 2 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ek, i64 8
  %i.er = add i64 %i.ea, -8
  %i.es = sub i64 %i.er, %i.eb
  %i.et = and i64 %i.es, -8                       ; 2 uses
  %scevgep114.a = getelementptr i8, ptr %scevgep, i64 %i.et
  %scevgep115.a = getelementptr i8, ptr %i.dz, i64 8
  %scevgep116 = getelementptr i8, ptr %scevgep115.a, i64 %i.et
  %bound0 = icmp ult ptr %i.ek, %scevgep116
  %bound1 = icmp ult ptr %i.dz, %scevgep114.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eq, 4611686018427387900     ; 3 uses
  %i.eu = shl i64 %n.vec, 3                       ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ek, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.dz, i64 %i.eu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ek, i64 %i.ex ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.dz, i64 %i.ex ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.ey = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep117, align 8, !tbaa !441, !alias.scope !464, !noalias !459
  %wide.load118 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !441, !alias.scope !464, !noalias !459
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !441, !alias.scope !467, !noalias !464
  store <2 x i64> %wide.load118, ptr %i.ez, align 8, !tbaa !441, !alias.scope !467, !noalias !464
  %i.fa = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep117, align 8, !tbaa !441, !alias.scope !464, !noalias !459
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !441, !alias.scope !464, !noalias !459
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader144

.lr.ph.i.i.i.i.i.i.i.preheader144:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ek, %vector.memcheck ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ev, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader144, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader144 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader144 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.fc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !462, !noalias !459
  store i64 %i.fc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !459, !noalias !462
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !462, !noalias !459
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fd, %i.dv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !470

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc47
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc47 ], [ %i.ev, %middle.block ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.af
  store ptr %i.ek, ptr %i.aj, align 8, !tbaa !443
  store ptr %i.ff, ptr %i.au, align 8, !tbaa !439
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.fg, ptr %i.av, align 8, !tbaa !440
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit50

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit50: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  %i.fh = load ptr, ptr %10, align 8, !tbaa !441  ; 3 uses
  %.not.i51 = icmp eq ptr %i.fh, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit53, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i52

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i52: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit50
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(88) %i.fh) #25, !inline_history !458
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit53

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit53: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit50, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit53
  %i.fm = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %i.fm)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.068.086, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fn, %i.an
  br i1 %.not, label %._crit_edge, label %bb.l

.loopexit:                                        ; preds = %bb.l, %11
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.u, %bb.t, %bb.ah, %bb.ag, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit53, %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE9push_backEOS1_.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %bb.v, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit56

.loopexit74:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp75:                             ; preds = %bb.y
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp75, %.loopexit74
  %lpad.phi78 = phi { ptr, i32 } [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ] ; 2 uses
  %i.fq = load ptr, ptr %8, align 8, !tbaa !441   ; 3 uses
  %.not.i54 = icmp eq ptr %i.fq, null
  br i1 %.not.i54, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit56, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i55

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i55: ; preds = %bb.al
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !118
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(88) %i.fq) #25, !inline_history !458
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit56

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit56: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i55, %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fp, %bb.ak ], [ %lpad.phi78, %bb.al ], [ %lpad.phi78, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

bb.am:                                            ; preds = %bb.aa, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit62

bb.an:                                            ; preds = %bb.ab
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59

.loopexit79:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp80:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp80, %.loopexit79
  %lpad.phi83 = phi { ptr, i32 } [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ] ; 2 uses
  %i.fw = load ptr, ptr %9, align 8, !tbaa !441   ; 3 uses
  %.not.i57 = icmp eq ptr %i.fw, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i58

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i58: ; preds = %bb.ao
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !118
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(88) %i.fw) #25, !inline_history !458
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i58, %bb.ao, %bb.an
  %.pn23 = phi { ptr, i32 } [ %i.fv, %bb.an ], [ %lpad.phi83, %bb.ao ], [ %lpad.phi83, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i58 ] ; 2 uses
  %i.ga = load ptr, ptr %10, align 8, !tbaa !441  ; 3 uses
  %.not.i60 = icmp eq ptr %i.ga, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit62, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i61

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i61: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !118
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(88) %i.ga) #25, !inline_history !458
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit62

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i61, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59, %bb.am
  %.pn23.pn = phi { ptr, i32 } [ %i.fu, %bb.am ], [ %.pn23, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59 ], [ %.pn23, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit62, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit56, %bb.aj
  %.pn26 = phi { ptr, i32 } [ %i.fo, %bb.aj ], [ %.pn23.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit62 ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit56 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.ak) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.k
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ap ], [ %i.ay, %bb.k ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #25
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #25
  %i.ge = load ptr, ptr %i.s, align 8, !tbaa !52  ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.t
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn26.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn26.pn, %bb.aq ] ; 2 uses
  %i.gg = load ptr, ptr %i.e, align 8, !tbaa !52  ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.f
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.gg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.i
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %.pn26.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn26.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #25
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !438 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  call void @_ZdlPv(ptr noundef nonnull %i.gi) #27
  br label %_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12PhysicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.ar
  call void @_ZN6duckdb5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #25
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

declare void @_ZN6duckdb18ExpressionExecutorC1Ev(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !441    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
