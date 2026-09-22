Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.14?download=true
inline.NumInlined: 20908
inline.NumDeleted: 8232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCseeLknQCOKOd_13polars_python6series11c_interfaceNtB2x_8PySeries20__import_arrow_from_c0EINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB2z_:bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @582, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @584, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #52
          to label %bb.o unwind label %bb.n, !dbg !190008, !noalias !189959

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #51
          to label %.body.i.i.i unwind label %bb.p, !dbg !190009, !noalias !189959

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !190010, !noalias !189959
  unreachable, !dbg !190010

bb.q:                                             ; preds = %bb.l
  %i.al = load <2 x ptr>, ptr %i.q, align 8, !dbg !190011, !alias.scope !189959, !noalias !189947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !190012, !noalias !189947
  %i.am = load i8, ptr %i.r, align 1, !dbg !190013, !range !5103, !alias.scope !189961, !noalias !189947, !noundef !4821
  %i.an = icmp eq i8 %i.am, -40, !dbg !190014
  br i1 %i.an, label %bb.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit6.i.i.i, !dbg !190014, !prof !4833

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit6.i.i.i unwind label %bb.s, !dbg !190015

bb.s:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !189962), !dbg !189999
  %i.ap = load ptr, ptr %i.t, align 8, !dbg !190016, !alias.scope !189962, !noalias !189947, !noundef !4821 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null, !dbg !190016
  br i1 %i.aq, label %.body.i, label %bb.t, !dbg !190016

bb.t:                                             ; preds = %bb.s
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !dbg !190017, !noalias !189963
  %i.as = icmp eq i64 %i.ar, 1, !dbg !190018
  br i1 %i.as, label %bb.u, label %.body.i, !dbg !190018

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !190019
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #55
          to label %.body.i unwind label %bb.x, !dbg !190020

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit6.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !189964), !dbg !189999
  %i.at = load ptr, ptr %i.t, align 8, !dbg !190021, !alias.scope !189964, !noalias !189947, !noundef !4821 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !190021
  br i1 %i.au, label %bb.ab, label %bb.v, !dbg !190021

bb.v:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit6.i.i.i
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !190022, !noalias !189965
  %i.aw = icmp eq i64 %i.av, 1, !dbg !190023
  br i1 %i.aw, label %bb.w, label %bb.ab, !dbg !190023

bb.w:                                             ; preds = %bb.v
  fence acquire, !dbg !190024
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #55
          to label %bb.ab unwind label %bb.aa, !dbg !190025

bb.x:                                             ; preds = %.thread4.i.i.i, %bb.z, %bb.u, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !190026
  unreachable, !dbg !190026

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.k, %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !189966), !dbg !189999
  %i.ay = load ptr, ptr %i.t, align 8, !dbg !190027, !alias.scope !189966, !noalias !189947, !noundef !4821 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null, !dbg !190027
  br i1 %i.az, label %.body.i, label %bb.y, !dbg !190027

bb.y:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ba = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !190028, !noalias !189967
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !190029
  br i1 %i.bb, label %bb.z, label %.body.i, !dbg !190029

bb.z:                                             ; preds = %bb.y
  fence acquire, !dbg !190030
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #55
          to label %.body.i unwind label %bb.x, !dbg !190031

.thread4.i.i.i:                                   ; preds = %bb.f, %.thread8.i.i.i
  %eh.lpad-body47.i.i.i = phi { ptr, i32 } [ %i.aa, %.thread8.i.i.i ], [ %i.ad, %bb.f ]
  invoke void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %.body.i unwind label %bb.x, !dbg !190032

bb.aa:                                            ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !190033

.body.i:                                          ; preds = %bb.aa, %.thread4.i.i.i, %bb.z, %bb.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.u, %bb.t, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bc, %bb.aa ], [ %eh.lpad-body47.i.i.i, %.thread4.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.y ], [ %i.ao, %bb.t ], [ %i.ao, %bb.u ], [ %i.ao, %bb.s ], [ %eh.lpad-body.i.i.i, %bb.z ], [ %eh.lpad-body.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i ]
  %i.bd = ptrtoint ptr %storemerge10.i to i64, !dbg !190034
  %i.be = ptrtoint ptr %i.l to i64, !dbg !190034
  %i.bf = sub nuw i64 %i.bd, %i.be, !dbg !190034
  %i.bg = lshr exact i64 %i.bf, 4, !dbg !190034
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %i.bg)
          to label %.body unwind label %bb.ac, !dbg !190035

bb.ab:                                            ; preds = %bb.w, %bb.v, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !189999, !noalias !189947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189986, !noalias !189947
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.011.i, !dbg !190036 ; 2 uses
  %i.bi = add nuw i64 %.sroa.0.011.i, 1, !dbg !190037 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.bh, align 8, !dbg !190038, !noalias !189947
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !190039
  %exitcond.not.i = icmp eq i64 %i.bi, %i.m, !dbg !189976
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !dbg !189977

bb.ac:                                            ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !190040
  unreachable, !dbg !190040

.loopexit:                                        ; preds = %bb.ab, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !190041
  store ptr %i.l, ptr %i.i, align 8, !dbg !190042
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !190042
  store i64 %i.m, ptr %i.bl, align 8, !dbg !190042
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !190042
  store i64 %i.k, ptr %i.bm, align 8, !dbg !190042
  invoke void @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjEE32forget_allocation_drop_remainingCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ae unwind label %bb.ad, !dbg !190043

bb.ad:                                            ; preds = %.loopexit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEINtNtBN_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.i) #51
          to label %.body unwind label %bb.af, !dbg !190044

bb.ae:                                            ; preds = %.loopexit
  store i64 %i.k, ptr %0, align 8, !dbg !190045
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190045
  store ptr %i.l, ptr %i.bo, align 8, !dbg !190045
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190045
  store i64 %i.m, ptr %i.bp, align 8, !dbg !190045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !190044
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !190046
  ret void, !dbg !190047

bb.af:                                            ; preds = %.body, %bb.ad
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !190048
  unreachable, !dbg !190048

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvMNtNtCseeLknQCOKOd_13polars_python6series11c_interfaceNtB2e_8PySeries20__import_arrow_from_c0EEB2g_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn, !dbg !190048
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterbENCINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2t_4expr4Expr11bottom_k_byB30_INtB4_3VecB30_EB30_E0EbECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !190049 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !190130
  %i.b = load i64, ptr %i.a, align 8, !dbg !190130, !noundef !4821 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !190131, !nonnull !4821, !noundef !4821 ; 10 uses
  %i.d = ptrtoaddr ptr %i.c to i64, !dbg !190132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190121), !dbg !190132
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterbENCINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB1M_4expr4Expr11bottom_k_byB2j_INtBV_3VecB2j_EB2j_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.b, !dbg !190133 ; 12 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropbbEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.av, %bb.c ], [ %i.av, %bb.d ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterbENCINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2a_4expr4Expr11bottom_k_byB2H_INtB1j_3VecB2H_EB2H_E0EECseeLknQCOKOd_13polars_python.exit unwind label %bb.f, !dbg !190134

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropbbEECseeLknQCOKOd_13polars_python.exit

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0, !dbg !190135
  br i1 %.not.i, label %.loopexit, label %iter.check, !dbg !190136

iter.check:                                       ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !190121, !nonnull !4821, !noundef !4821 ; 8 uses
  %min.iters.check = icmp ult i64 %i.e, 4, !dbg !190136
  %.val.i12 = ptrtoaddr ptr %.val.i to i64, !dbg !190136
  %i.h = sub i64 %.val.i12, %i.d, !dbg !190136
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !190136
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !190136
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !190136

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.e, 32, !dbg !190136
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !190136

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.e, 28
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  br label %vector.body, !dbg !190136

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !190137 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !190138 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !190139
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !190139
  %wide.load14 = load <16 x i8>, ptr %i.k, align 1, !dbg !190139
  %i.l = xor <16 x i8> %wide.load, splat (i8 1), !dbg !190140
  %i.m = xor <16 x i8> %wide.load14, splat (i8 1), !dbg !190140
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %index, !dbg !190141 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !190142
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !190142, !noalias !190121
  store <16 x i8> %i.m, ptr %i.o, align 1, !dbg !190142, !noalias !190121
  %index.next = add nuw i64 %index, 32, !dbg !190137 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !190136
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !190136, !llvm.loop !190096

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !190136
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check, !dbg !190136

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !190126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.e, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ], !dbg !190137 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index16, !dbg !190138
  %wide.load17 = load <4 x i8>, ptr %i.q, align 1, !dbg !190139
  %i.r = xor <4 x i8> %wide.load17, splat (i8 1), !dbg !190140
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %index16, !dbg !190141
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !190142, !noalias !190121
  %index.next18 = add nuw i64 %index16, 4, !dbg !190137 ; 2 uses
  %i.t = icmp eq i64 %index.next18, %n.vec15, !dbg !190136
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !190136, !llvm.loop !190097

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.e, %n.vec15, !dbg !190136
  br i1 %cmp.n19, label %.loopexit, label %vec.epilog.scalar.ph.preheader, !dbg !190136

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.01.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !190136       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !190136
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !190136

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.0.01.i.prol = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.sroa.0.01.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.01.i.prol, !dbg !190138
  %i.v = load i8, ptr %i.u, align 1, !dbg !190139, !range !4858, !noundef !4821
  %i.w = xor i8 %i.v, 1, !dbg !190140
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.01.i.prol, !dbg !190141
  %i.y = add nuw i64 %.sroa.0.01.i.prol, 1, !dbg !190137 ; 2 uses
  store i8 %i.w, ptr %i.x, align 1, !dbg !190142, !noalias !190121
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !190136 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !190136
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !190136, !llvm.loop !190098

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.01.i.unr = phi i64 [ %.sroa.0.01.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %i.z = sub i64 %.sroa.0.01.i.ph, %i.e, !dbg !190136
  %i.aa = icmp ugt i64 %i.z, -4, !dbg !190136
  br i1 %i.aa, label %.loopexit, label %vec.epilog.scalar.ph, !dbg !190136

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.0.01.i = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.sroa.0.01.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.01.i, !dbg !190138
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !190139, !range !4858, !noundef !4821
  %i.ad = xor i8 %i.ac, 1, !dbg !190140
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.01.i, !dbg !190141
  %i.af = add nuw i64 %.sroa.0.01.i, 1, !dbg !190137 ; 2 uses
  store i8 %i.ad, ptr %i.ae, align 1, !dbg !190142, !noalias !190121
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.af, !dbg !190138
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !190139, !range !4858, !noundef !4821
  %i.ai = xor i8 %i.ah, 1, !dbg !190140
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af, !dbg !190141
  %i.ak = add nuw i64 %.sroa.0.01.i, 2, !dbg !190137 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 1, !dbg !190142, !noalias !190121
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ak, !dbg !190138
  %i.am = load i8, ptr %i.al, align 1, !dbg !190139, !range !4858, !noundef !4821
  %i.an = xor i8 %i.am, 1, !dbg !190140
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ak, !dbg !190141
  %i.ap = add nuw i64 %.sroa.0.01.i, 3, !dbg !190137 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !dbg !190142, !noalias !190121
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ap, !dbg !190138
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !190139, !range !4858, !noundef !4821
  %i.as = xor i8 %i.ar, 1, !dbg !190140
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap, !dbg !190141
  %i.au = add nuw i64 %.sroa.0.01.i, 4, !dbg !190137 ; 2 uses
  store i8 %i.as, ptr %i.at, align 1, !dbg !190142, !noalias !190121
  %exitcond.not.i.3 = icmp eq i64 %i.au, %i.e, !dbg !190135
  br i1 %exitcond.not.i.3, label %.loopexit, label %vec.epilog.scalar.ph, !dbg !190136, !llvm.loop !190099

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  invoke void @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterbE32forget_allocation_drop_remainingCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.c, !dbg !190143

bb.c:                                             ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %i.b, 0
  br i1 %i.aw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropbbEECseeLknQCOKOd_13polars_python.exit, label %bb.d, !dbg !190144

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #48, !dbg !190145, !noalias !190127
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropbbEECseeLknQCOKOd_13polars_python.exit, !dbg !190146

bb.e:                                             ; preds = %.loopexit
  store i64 %i.b, ptr %0, align 8, !dbg !190147
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190147
  store ptr %i.c, ptr %i.ax, align 8, !dbg !190147
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190147
  store i64 %i.e, ptr %i.ay, align 8, !dbg !190147
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !190148
  ret void, !dbg !190149

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropbbEECseeLknQCOKOd_13polars_python.exit
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !190150
  unreachable, !dbg !190150

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterbENCINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2a_4expr4Expr11bottom_k_byB2H_INtB1j_3VecB2H_EB2H_E0EECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropbbEECseeLknQCOKOd_13polars_python.exit
  resume { ptr, i32 } %.pn, !dbg !190150
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterjENcNtNtCs2mZqlW55729_12polars_utils5arena4Node0EB2p_ECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !190151 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !190225
  %i.b = load i64, ptr %i.a, align 8, !dbg !190225, !noundef !4821 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !190226, !nonnull !4821, !noundef !4821 ; 9 uses
  %i.d = ptrtoaddr ptr %i.c to i64, !dbg !190227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190220), !dbg !190227
  %i.e = invoke noundef i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterjENcNtNtCs2mZqlW55729_12polars_utils5arena4Node0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.b, !dbg !190228 ; 8 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropjNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.aj, %bb.c ], [ %i.aj, %bb.d ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterjENcNtNtCs2mZqlW55729_12polars_utils5arena4Node0EECseeLknQCOKOd_13polars_python.exit unwind label %bb.f, !dbg !190229

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropjNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECseeLknQCOKOd_13polars_python.exit

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, 0, !dbg !190230
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !dbg !190231

.lr.ph.i:                                         ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !190220, !nonnull !4821, !noundef !4821 ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8, !dbg !190231
  %.val.i12 = ptrtoaddr ptr %.val.i to i64, !dbg !190231
  %i.h = sub i64 %.val.i12, %i.d, !dbg !190231
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !190231
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !190231
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !190231

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  br label %vector.body, !dbg !190232

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !190232 ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %index, !dbg !190233 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !190234
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !dbg !190234
  %wide.load13 = load <2 x i64>, ptr %i.j, align 8, !dbg !190234
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index, !dbg !190235 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !190236
  store <2 x i64> %wide.load, ptr %i.k, align 8, !dbg !190236, !noalias !190220
  store <2 x i64> %wide.load13, ptr %i.l, align 8, !dbg !190236, !noalias !190220
  %index.next = add nuw i64 %index, 4, !dbg !190232 ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !190231
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !190231, !llvm.loop !190195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !190231
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader, !dbg !190231

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.01.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !190231       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !190231
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !190231

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.01.i.prol = phi i64 [ %i.q, %scalar.ph.prol ], [ %.sroa.0.01.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.0.01.i.prol, !dbg !190233
  %i.o = load i64, ptr %i.n, align 8, !dbg !190234, !noundef !4821
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.0.01.i.prol, !dbg !190235
  %i.q = add nuw i64 %.sroa.0.01.i.prol, 1, !dbg !190232 ; 2 uses
end_hunk_0
