inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK6duckdb8DBConfig17GetArrowExtensionERKNS_11LogicalTypeE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i11
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12
  call void @_ZdlPv(ptr noundef %i.ay) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i13
  %i.bb = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit.sink.split

bb.t:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb22ArrowExtensionMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #34
  br label %bb.u

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %.sink = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14 ]
  call void @_ZdlPv(ptr noundef %.sink) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.bf = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN6duckdb8TypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bf) #37
  br label %_ZN6duckdb8TypeInfoD2Ev.exit

_ZN6duckdb8TypeInfoD2Ev.exit:                     ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34 ; 0 uses
  ret void

bb.u:                                             ; preds = %bb.t, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.ag, %bb.l ], [ %i.ah, %bb.m ] ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6duckdb8TypeInfoD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bj) #37
  br label %_ZN6duckdb8TypeInfoD2Ev.exit27

_ZN6duckdb8TypeInfoD2Ev.exit27:                   ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34 ; 0 uses
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ArrowTypeExtension19PopulateArrowSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(160) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 17 uses
  %8 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !490    ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(160) %4)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !12, !alias.scope !493
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !15, !noalias !493 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !493 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34, !noalias !493
  store i64 %i.l, ptr %i.e, align 8, !tbaa !19, !noalias !493
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !15, !alias.scope !493
  %i.o = load i64, ptr %i.e, align 8, !tbaa !19, !noalias !493
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20, !alias.scope !493
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit

_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.e, align 8, !tbaa !19, !noalias !493 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18, !alias.scope !493
  %i.t = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !493
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34, !noalias !493
  %i.v = load i64, ptr %i.s, align 8, !tbaa !18   ; 3 uses
  %i.w = add i64 %i.v, 1                          ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #35
          to label %bb.f unwind label %bb.n       ; 13 uses

bb.f:                                             ; preds = %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  %i.y = ptrtoaddr ptr %i.x to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.w, i1 false), !noalias !496
  %i.z = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !12, !alias.scope !499
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !15, !noalias !499 ; 2 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !499 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34, !noalias !499
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !19, !noalias !499
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.noexc.i.i47, label %._crit_edge.i.i.i46

.noexc.i.i47:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %.thread166 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i47
  store ptr %i.ag, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !20, !alias.scope !499
  br label %._crit_edge.i.i.i46

._crit_edge.i.i.i46:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = phi ptr [ %i.ag, %.noexc ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ae, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i46
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !20
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i46
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18, !alias.scope !499
  %i.am = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34, !noalias !499
  %i.ao = load ptr, ptr %6, align 8, !tbaa !15    ; 9 uses
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !18 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %.not176179 = icmp samesign eq i64 %i.ap, 0
  br i1 %.not176179, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.ar = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 4
  %i.as = sub i64 %i.ar, %i.y
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 28
  %n.vec = and i64 %i.ap, -32                     ; 5 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load227 = load <16 x i8>, ptr %i.au, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !20
  store <16 x i8> %wide.load227, ptr %i.aw, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.ap, -4                   ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %n.vec229
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.ao, i64 %index230
  %wide.load232 = load <4 x i8>, ptr %next.gep231, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %index230
  store <4 x i8> %wide.load232, ptr %i.az, align 1, !tbaa !20
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n234 = icmp eq i64 %i.ap, %n.vec229
  br i1 %cmp.n234, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033181.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0151.0180.ph = phi ptr [ %i.ao, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %i.ap, %i.ar                    ; 2 uses
  %.sroa.0151.0180.ph279 = ptrtoaddr ptr %.sroa.0151.0180.ph to i64 ; 2 uses
  %i.bc = sub i64 %i.bb, %.sroa.0151.0180.ph279
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.033181.prol = phi i64 [ %i.be, %.lr.ph.prol ], [ %.033181.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0151.0180.prol = phi ptr [ %i.bg, %.lr.ph.prol ], [ %.sroa.0151.0180.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = load i8, ptr %.sroa.0151.0180.prol, align 1, !tbaa !20
  %i.be = add nuw i64 %.033181.prol, 1            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181.prol
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !504

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.033181.unr = phi i64 [ %.033181.ph, %.lr.ph.preheader ], [ %i.be, %.lr.ph.prol ]
  %.sroa.0151.0180.unr = phi ptr [ %.sroa.0151.0180.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = sub i64 %.sroa.0151.0180.ph279, %i.bb
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.bj = icmp eq ptr %i.ao, %i.ac
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50: ; preds = %._crit_edge
  %i.bk = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap
  store i8 0, ptr %i.bl, align 1, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !254 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.br = ptrtoint ptr %i.x to i64
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !231
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !254
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !258 ; 10 uses
  %i.bu = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc52 unwind label %.thread172

.noexc52:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #35
          to label %.noexc53 unwind label %.thread172 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %i.x to i64
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc53
  %i.ch = sub i64 %i.bu, %i.bv
  %i.ci = add i64 %i.ch, -8                       ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check239 = icmp ult i64 %i.ci, 152
  br i1 %min.iters.check239, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cl = add i64 %i.bu, -8
  %i.cm = sub i64 %i.cl, %i.bv
  %i.cn = and i64 %i.cm, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.co
  %scevgep238 = getelementptr i8, ptr %i.bt, i64 %i.co
  %bound0 = icmp ult ptr %i.ce, %scevgep238
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck237
  %n.vec242 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec242, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bt, i64 %i.cp
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph240
  %index244 = phi i64 [ 0, %vector.ph240 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %i.cs = shl i64 %index244, 3                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.ce, i64 %i.cs ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.bt, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.ct = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load247 = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %wide.load248 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %i.cu = getelementptr i8, ptr %next.gep245, i64 16
  store <2 x i64> %wide.load247, ptr %next.gep245, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  store <2 x i64> %wide.load248, ptr %i.cu, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  %i.cv = getelementptr i8, ptr %next.gep246, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %index.next249 = add nuw i64 %index244, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.cw, label %middle.block250, label %vector.body243, !llvm.loop !515

middle.block250:                                  ; preds = %vector.body243
  %cmp.n251 = icmp eq i64 %i.ck, %n.vec242
  br i1 %cmp.n251, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader277

.lr.ph.i.i.i.i.i.i.preheader277:                  ; preds = %vector.memcheck237, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block250
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck237 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block250 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck237 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block250 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader277, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !505, !noalias !508
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !516

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block250, %.noexc53
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc53 ], [ %i.cq, %middle.block250 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ce, ptr %i.bm, align 8, !tbaa !258
  store ptr %i.da, ptr %i.bn, align 8, !tbaa !254
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.db, ptr %i.bp, align 8, !tbaa !257
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.n:                                             ; preds = %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.i
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %bb.n
  %i.df = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.df)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.dd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

.thread166:                                       ; preds = %.noexc.i.i47
  %i.dg = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !79

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #34
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !72
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !73
  store i32 0, ptr %i.f, align 4, !tbaa !75
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSA_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1903 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #34, !inline_history !1905
  br label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1863 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE) #34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1863 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb25QueryResultChunkScanStateC1ERNS_11QueryResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(392)) unnamed_addr #3

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare void @_ZN6duckdb23PhysicalResultCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

declare void @_ZN6duckdb22PhysicalBatchCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1203
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1087 ; 27 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 10 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.r, 216
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %bb.d
  %i.u = add i64 %i.a, -8
  %i.v = sub i64 %i.u, %i.b
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %i.x = getelementptr i8, ptr %i.h, i64 %i.w
  %scevgep177 = getelementptr i8, ptr %i.x, i64 8
  %i.y = add i64 %i.w, %i.b
  %i.z = add i64 %i.y, 8
  %i.aa = sub i64 %i.z, %i.a
  %scevgep178 = getelementptr i8, ptr %i.h, i64 %i.aa
  %bound0179 = icmp ult ptr %i.h, %scevgep178
  %bound1180 = icmp ult ptr %i.p, %scevgep177
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck176
  %n.vec186 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.ab = shl i64 %n.vec186, 3                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ab
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next193, %vector.body187 ] ; 2 uses
  %i.ae = shl i64 %index188, 3                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.h, i64 %i.ae ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.p, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <2 x i64>, ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  %wide.load192 = load <2 x i64>, ptr %i.af, align 8, !tbaa !1091, !alias.scope !1906
  %i.ag = getelementptr i8, ptr %next.gep189, i64 16
  store <2 x i64> %wide.load191, ptr %next.gep189, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  store <2 x i64> %wide.load192, ptr %i.ag, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  %i.ah = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !1091, !alias.scope !1906
  %index.next193 = add nuw i64 %index188, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.ai, label %middle.block194, label %vector.body187, !llvm.loop !1911

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.t, %n.vec186
  br i1 %cmp.n195, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck176, %bb.d, %middle.block194
  %.013.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck176 ], [ %i.h, %bb.d ], [ %i.ac, %middle.block194 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck176 ], [ %i.p, %bb.d ], [ %i.ad, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.aj, ptr %.013.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1912

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block194
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.am, ptr %i.g, align 8, !tbaa !1087
  %i.an = ptrtoint ptr %i.p to i64
  %i.ao = sub i64 %i.an, %i.l
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.av, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.ap, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.h, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !1091
  store ptr null, ptr %i.ar, align 8, !tbaa !1091
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.au) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.av = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, !llvm.loop !1913

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ax = icmp sgt i64 %i.d, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bc, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.d, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bb, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ba, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.ay = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  %i.az = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.ay, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.az) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bc = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %3
  br i1 %.not10.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bf = add i64 %i.a, %i.l
  %i.bg = add i64 %i.j, %i.b
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = add i64 %i.bh, -8                       ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 264
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bl = add i64 %i.a, %i.l
  %i.bm = add i64 %i.bl, -8
  %i.bn = add i64 %i.j, %i.b
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -8                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.h, i64 %i.bp
  %scevgep = getelementptr i8, ptr %i.bq, i64 8
  %i.br = add i64 %i.bp, %i.j
  %i.bs = add i64 %i.br, 8
  %i.bt = sub i64 %i.bs, %i.l
  %scevgep150 = getelementptr i8, ptr %2, i64 %i.bt
  %bound0 = icmp ult ptr %i.h, %scevgep150
  %bound1 = icmp ult ptr %i.be, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.h, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.be, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bx ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.be, i64 %i.bx ; 4 uses
  %i.by = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  %wide.load152 = load <2 x i64>, ptr %i.by, align 8, !tbaa !1091, !alias.scope !1915
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  store <2 x i64> %wide.load152, ptr %i.bz, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  %i.ca = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !1091, !alias.scope !1915
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader270

.lr.ph.i.i.i.i.preheader270:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.sroa.08.011.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader270, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 2 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 3 uses
  %i.cc = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.cc, ptr %.012.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cd, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1921

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cf = sub nsw i64 %i.d, %i.n
  %i.cg = getelementptr [8 x i8], ptr %i.h, i64 %i.cf ; 5 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.ch = sub i64 %i.j, %i.l
  %i.ci = add i64 %i.ch, -8                       ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.ci, 216
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %i.cl = add i64 %i.j, -8
  %i.cm = sub i64 %i.cl, %i.l
  %i.cn = and i64 %i.cm, -8                       ; 2 uses
  %i.co = add i64 %i.c, %i.cn
  %i.cp = add i64 %i.co, 8
  %i.cq = sub i64 %i.cp, %i.m
  %scevgep155 = getelementptr i8, ptr %i.h, i64 %i.cq
  %i.cr = getelementptr i8, ptr %1, i64 %i.cn
  %scevgep156 = getelementptr i8, ptr %i.cr, i64 8
  %bound0157 = icmp ult ptr %i.cg, %scevgep156
  %bound1158 = icmp ult ptr %1, %scevgep155
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck154
  %n.vec164 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cs = shl i64 %n.vec164, 3                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cg, i64 %i.cs
  %i.cu = getelementptr i8, ptr %1, i64 %i.cs
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.cv = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cg, i64 %i.cv ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.cv ; 4 uses
  %i.cw = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  %wide.load170 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !1091, !alias.scope !1922
  %i.cx = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  store <2 x i64> %wide.load170, ptr %i.cx, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  %i.cy = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !1091, !alias.scope !1922
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.cz, label %middle.block172, label %vector.body165, !llvm.loop !1927

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.ck, %n.vec164
  br i1 %cmp.n173, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader269

.lr.ph.i.i.i.i.i57.preheader269:                  ; preds = %vector.memcheck154, %.lr.ph.i.i.i.i.i57.preheader, %middle.block172
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.cg, %vector.memcheck154 ], [ %i.cg, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.ct, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %vector.memcheck154 ], [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cu, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader269, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 3 uses
  %i.da = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  store i64 %i.da, ptr %.013.i.i.i.i.i58, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.db, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1928

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block172, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.dd, ptr %i.g, align 8, !tbaa !1087
  %i.de = ashr exact i64 %i.m, 3                  ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.dk, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.de, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.dj, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.di, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.dg = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  %i.dh = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.dg, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dh) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.dh) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.dk = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.dl = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

bb.e:                                             ; preds = %bb.b
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1090  ; 12 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 3 uses
  %i.do = sub i64 %i.j, %i.dn
  %i.dp = ashr exact i64 %i.do, 3                 ; 4 uses
  %i.dq = sub nsw i64 1152921504606846975, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.d
  br i1 %i.dr, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.d)
  %i.ds = add nsw i64 %.sroa.speculated.i, %i.dp  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #35
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dy = phi ptr [ %i.dx, %bb.g ], [ null, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.dm, %1
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %i.dz = sub i64 %4, %i.dn
  %i.ea = add i64 %i.dz, -8                       ; 2 uses
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.ea, 152
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.memcheck198

vector.memcheck198:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %i.ed = add i64 %4, -8
  %i.ee = sub i64 %i.ed, %i.dn
  %i.ef = and i64 %i.ee, -8
  %i.eg = add i64 %i.ef, 8                        ; 2 uses
  %scevgep199 = getelementptr i8, ptr %i.dy, i64 %i.eg
  %scevgep200 = getelementptr i8, ptr %i.dm, i64 %i.eg
  %bound0201 = icmp ult ptr %i.dy, %scevgep200
  %bound1202 = icmp ult ptr %i.dm, %scevgep199
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck198
  %n.vec208 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec208, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dy, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dm, i64 %i.eh
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %i.ek = shl i64 %index210, 3                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.dy, i64 %i.ek ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.dm, i64 %i.ek ; 4 uses
  %i.el = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load213 = load <2 x i64>, ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  %wide.load214 = load <2 x i64>, ptr %i.el, align 8, !tbaa !1091, !alias.scope !1929
  %i.em = getelementptr i8, ptr %next.gep211, i64 16
  store <2 x i64> %wide.load213, ptr %next.gep211, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  store <2 x i64> %wide.load214, ptr %i.em, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  %i.en = getelementptr i8, ptr %next.gep212, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  store <2 x ptr> splat (ptr null), ptr %i.en, align 8, !tbaa !1091, !alias.scope !1929
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.eo, label %middle.block216, label %vector.body209, !llvm.loop !1934

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %i.ec, %n.vec208
  br i1 %cmp.n217, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader266

.lr.ph.i.i.i.i.i73.preheader266:                  ; preds = %vector.memcheck198, %.lr.ph.i.i.i.i.i73.preheader, %middle.block216
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.dy, %vector.memcheck198 ], [ %i.dy, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ei, %middle.block216 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.dm, %vector.memcheck198 ], [ %i.dm, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ej, %middle.block216 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader266, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 3 uses
  %i.ep = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  store i64 %i.ep, ptr %.013.i.i.i.i.i74, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eq, %1
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1935

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block216, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.dy, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit ], [ %i.ei, %middle.block216 ], [ %i.er, %.lr.ph.i.i.i.i.i73 ] ; 6 uses
  %i.es = sub i64 %i.a, %i.b
  %i.et = add i64 %i.es, -8                       ; 2 uses
  %i.eu = lshr i64 %i.et, 3
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.et, 152
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck220

vector.memcheck220:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ew = add i64 %i.a, -8
  %i.ex = sub i64 %i.ew, %i.b
  %i.ey = and i64 %i.ex, -8
  %i.ez = add i64 %i.ey, 8                        ; 2 uses
  %scevgep221 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.ez
  %scevgep222 = getelementptr i8, ptr %2, i64 %i.ez
  %bound0223 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %scevgep222
  %bound1224 = icmp ult ptr %2, %scevgep221
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.i.i.i.i79.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck220
  %n.vec230 = and i64 %i.ev, 4611686018427387900  ; 3 uses
  %i.fa = shl i64 %n.vec230, 3                    ; 2 uses
  %i.fb = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fa ; 2 uses
  %i.fc = getelementptr i8, ptr %2, i64 %i.fa
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph228
  %index232 = phi i64 [ 0, %vector.ph228 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.fd = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fd ; 2 uses
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.fd ; 4 uses
  %i.fe = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  %wide.load236 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !1091, !alias.scope !1936
  %i.ff = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep233, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  store <2 x i64> %wide.load236, ptr %i.ff, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  %i.fg = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  store <2 x ptr> splat (ptr null), ptr %i.fg, align 8, !tbaa !1091, !alias.scope !1936
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.fh, label %middle.block238, label %vector.body231, !llvm.loop !1941

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.ev, %n.vec230
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %vector.memcheck220, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %middle.block238
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck220 ], [ %.0.lcssa.i.i.i.i.i77, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.fb, %middle.block238 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %vector.memcheck220 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.fc, %middle.block238 ]
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79.preheader, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i79 ], [ %.012.i.i.i.i80.ph, %.lr.ph.i.i.i.i79.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i81 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i79 ], [ %.sroa.08.011.i.i.i.i81.ph, %.lr.ph.i.i.i.i79.preheader ] ; 3 uses
  %i.fi = load i64, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  store i64 %i.fi, ptr %.012.i.i.i.i80, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i81, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.fj, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79, !llvm.loop !1942

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84: ; preds = %.lr.ph.i.i.i.i79, %middle.block238
  %.lcssa148 = phi ptr [ %i.fb, %middle.block238 ], [ %i.fk, %.lr.ph.i.i.i.i79 ] ; 7 uses
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %i.fl = sub i64 %i.j, %4
  %i.fm = add i64 %i.fl, -8                       ; 2 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.fm, 152
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader
  %i.fp = add i64 %i.j, -8
  %i.fq = sub i64 %i.fp, %4
  %i.fr = and i64 %i.fq, -8
  %i.fs = add i64 %i.fr, 8                        ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa148, i64 %i.fs
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.fs
  %bound0245 = icmp ult ptr %.lcssa148, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.fo, 4611686018427387900  ; 3 uses
  %i.ft = shl i64 %n.vec252, 3                    ; 2 uses
  %i.fu = getelementptr i8, ptr %.lcssa148, i64 %i.ft ; 2 uses
  %i.fv = getelementptr i8, ptr %1, i64 %i.ft
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.fw = shl i64 %index254, 3                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa148, i64 %i.fw ; 2 uses
  %next.gep256 = getelementptr i8, ptr %1, i64 %i.fw ; 4 uses
  %i.fx = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load257 = load <2 x i64>, ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  %wide.load258 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !1091, !alias.scope !1943
  %i.fy = getelementptr i8, ptr %next.gep255, i64 16
  store <2 x i64> %wide.load257, ptr %next.gep255, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  store <2 x i64> %wide.load258, ptr %i.fy, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  %i.fz = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  store <2 x ptr> splat (ptr null), ptr %i.fz, align 8, !tbaa !1091, !alias.scope !1943
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.ga, label %middle.block260, label %vector.body253, !llvm.loop !1948

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.fo, %n.vec252
  br i1 %cmp.n261, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader264

.lr.ph.i.i.i.i.i86.preheader264:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i86.preheader, %middle.block260
  %.013.i.i.i.i.i87.ph = phi ptr [ %.lcssa148, %vector.memcheck242 ], [ %.lcssa148, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fu, %middle.block260 ]
  %.sroa.08.012.i.i.i.i.i88.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fv, %middle.block260 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader264, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i86 ], [ %.013.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i86 ], [ %.sroa.08.012.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 3 uses
  %i.gb = load i64, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  store i64 %i.gb, ptr %.013.i.i.i.i.i87, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.gc, %i.h
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !1949

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %middle.block260, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %.lcssa148, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84 ], [ %i.fu, %middle.block260 ], [ %i.gd, %.lr.ph.i.i.i.i.i86 ]
  %.not4.i.i = icmp eq ptr %i.dm, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gf, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.dm, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 2 uses
  %i.ge = load ptr, ptr %.05.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ge) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.ge) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gf, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i93 = icmp eq ptr %i.dm, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.dm) #37
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, %bb.h
  store ptr %i.dy, ptr %0, align 8, !tbaa !1090
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.g, align 8, !tbaa !1087
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.gg, ptr %i.e, align 8, !tbaa !1203
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ArrowCollectorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ArrowCollectorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1090 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1087 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.v) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !1090
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1282 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
end_hunk_1
