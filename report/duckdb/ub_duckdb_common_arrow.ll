inline.NumInlined: 6734
inline.NumDeleted: 3043
begin_hunk_0_@_ZN6duckdb21ArrowTypeExtensionSet10InitializeERKNS_8DBConfigE:._crit_edge.i.i
  br i1 %i.adh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530
  call void @_ZdlPv(ptr noundef %i.adg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #34
  br label %bb.ih

bb.ic:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.id:                                            ; preds = %bb.fw
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ie:                                            ; preds = %bb.fx
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb18ArrowTypeExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %50) #34
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.pn92 = phi { ptr, i32 } [ %i.adk, %bb.ie ], [ %i.adj, %bb.id ]
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #34
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ic
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %bb.if ], [ %i.adi, %bb.ic ]
  %i.adl = load ptr, ptr %52, align 8, !tbaa !15  ; 2 uses
  %i.adm = icmp eq ptr %i.adl, %i.xy
  br i1 %i.adm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534: ; preds = %bb.ig
  call void @_ZdlPv(ptr noundef %i.adl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534
  %i.adn = load ptr, ptr %51, align 8, !tbaa !15  ; 2 uses
  %i.ado = icmp eq ptr %i.adn, %i.xv
  br i1 %i.ado, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536
  call void @_ZdlPv(ptr noundef %i.adn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #34
  br label %bb.ih

bb.ih:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %.pn87.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533 ], [ %.pn82.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527 ], [ %.pn77.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %.pn71.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512 ], [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503 ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ]
  resume { ptr, i32 } %.pn92.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10ArrowBool811ArrowToDuckERNS_13ClientContextERNS_6VectorES4_m(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !731  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !731  ; 8 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %min.iters.check = icmp ult i64 %3, 4
  %i.g = sub i64 %i.e, %i.f
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %3, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !20
  %wide.load10 = load <16 x i8>, ptr %i.i, align 1, !tbaa !20
  %i.j = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.k = icmp ne <16 x i8> %wide.load10, zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.m = zext <16 x i1> %i.j to <16 x i8>
  %i.n = zext <16 x i1> %i.k to <16 x i8>
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %i.m, ptr %i.l, align 1, !tbaa !745
  store <16 x i8> %i.n, ptr %i.o, align 1, !tbaa !745
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %index13
  %wide.load14 = load <4 x i8>, ptr %i.q, align 1, !tbaa !20
  %i.r = icmp ne <4 x i8> %wide.load14, zeroinitializer
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %index13
  %i.t = zext <4 x i1> %i.r to <4 x i8>
  store <4 x i8> %i.t, ptr %i.s, align 1, !tbaa !745
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !747

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec12
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.08.prol = phi i64 [ %i.aa, %.lr.ph.prol ], [ %.08.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %.08.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp ne i8 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %.08.prol
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !745
  %i.aa = add nuw i64 %.08.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !748

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.08.unr = phi i64 [ %.08.ph, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ab = sub i64 %.08.ph, %3
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.08 = phi i64 [ %i.ba, %.lr.ph ], [ %.08.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.08
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %.08
  %i.ah = zext i1 %i.af to i8
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !745
  %i.ai = add nuw i64 %.08, 1                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = icmp ne i8 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ai
  %i.an = zext i1 %i.al to i8
  store i8 %i.an, ptr %i.am, align 1, !tbaa !745
  %i.ao = add nuw i64 %.08, 2                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.at = zext i1 %i.ar to i8
  store i8 %i.at, ptr %i.as, align 1, !tbaa !745
  %i.au = add nuw i64 %.08, 3                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = icmp ne i8 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.az = zext i1 %i.ax to i8
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !745
  %i.ba = add nuw i64 %.08, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ba, %3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !749
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10ArrowBool811DuckToArrowERNS_13ClientContextERNS_6VectorES4_m(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !750
  store ptr %i.c, ptr %i.b, align 8, !tbaa !750
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = icmp eq ptr %i.b, %i.a
  br i1 %i.e, label %bb.l, label %5

5:                                                ; preds = %.noexc
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !74       ; 2 uses
  %9 = load <2 x ptr>, ptr %6, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %5
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i: ; preds = %bb.e, %bb.d, %5
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 8 uses
  store <2 x ptr> %9, ptr %i.d, align 8, !tbaa !108
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !77
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34, !inline_history !751
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34, !inline_history !751
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !752
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !752
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !753
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !731
  %.not21 = icmp eq i64 %3, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.z, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ak, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !77
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #34, !inline_history !762
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i18 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.p ], [ %i.ax, %bb.q ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.r, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !81

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.n, %._crit_edge
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.az = load ptr, ptr %10, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ba, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !77
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !78
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #34, !inline_history !763
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.bo, label %bb.x, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !81

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.y:                                             ; preds = %bb.b, %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.bp

.lr.ph:                                           ; preds = %bb.l, %bb.z
  %.020 = phi i64 [ %i.ca, %bb.z ], [ 0, %bb.l ]  ; 5 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !750 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph
  %i.br = lshr i64 %.020, 6
  %i.bs = and i64 %.020, 63
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.bv = shl nuw i64 1, %i.bs
  %i.bw = and i64 %i.bu, %i.bv
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 %.020
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !745, !range !43, !noundef !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.020
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ca = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !764
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowGeometry14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(160) %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.duckdb::ClientProperties", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19ArrowSchemaMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 20, ptr %i.d, align 8, !tbaa !19
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc51 unwind label %bb.h   ; 2 uses

.noexc51:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %6, align 8, !tbaa !15
  %i.h = load i64, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.g, ptr noundef nonnull align 1 dereferenceable(20) @.str.72, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !18
  %i.j = load ptr, ptr %6, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 1 dereferenceable(12) @.str.58, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.n, align 4, !tbaa !20
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc56 unwind label %bb.i

.noexc56:                                         ; preds = %.noexc51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.i

_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %.noexc56
  %i.p = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  call void @_ZdlPv(ptr noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.r = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.r) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.t = invoke noundef ptr @_ZN13duckdb_yyjson18yyjson_mut_doc_newEPKNS_10yyjson_alcE(ptr noundef null)
          to label %bb.a unwind label %bb.j       ; 9 uses

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL23yyjson_mut_doc_set_rootEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !765
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !769  ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %.noexc, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %.noexc50 unwind label %bb.k

.noexc50:                                         ; preds = %bb.c
  br i1 %i.aa, label %.noexc50..noexc_crit_edge, label %.thread, !prof !102

.noexc50..noexc_crit_edge:                        ; preds = %.noexc50
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !769
  br label %.noexc

.noexc:                                           ; preds = %.noexc50..noexc_crit_edge, %bb.b
  %i.ab = phi ptr [ %.pre, %.noexc50..noexc_crit_edge ], [ %i.x, %bb.b ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !769
  %.not9.i.not = icmp eq ptr %i.ab, null
  br i1 %.not9.i.not, label %.thread, label %bb.d, !prof !770

bb.d:                                             ; preds = %.noexc
  store i64 7, ptr %i.ab, align 8, !tbaa !771
  br label %.thread

.thread:                                          ; preds = %.noexc50, %.noexc, %bb.d
  %.1.i.ph = phi ptr [ %i.ab, %bb.d ], [ null, %.noexc ], [ null, %.noexc50 ]
end_hunk_0
