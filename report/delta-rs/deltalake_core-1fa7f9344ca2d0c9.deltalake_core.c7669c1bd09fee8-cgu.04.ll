inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema9try_mergeINtNtCs6Po7BT7Nknu_5alloc3vec3VecBH_EECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.body69.thread122

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.j

bb.al:                                            ; preds = %bb.w
  %lpad.thr_comm.split-lp121 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #60
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %.thread97, %.body57, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit, %bb.ap, %.thread103, %bb.an, %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.x, %bb.z
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp121, %bb.al ], [ %i.cz, %bb.z ], [ %i.cx, %bb.x ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #60
          to label %.body57 unwind label %bb.am

.thread103:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit, %.thread109
  %.pn37108 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread109 ], [ %.pn35, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema13SchemaBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.s) #60
          to label %.thread97 unwind label %bb.am

.thread97:                                        ; preds = %.thread103, %.thread136, %.body.i, %bb.c
  %.pn39102 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp138, %.thread136 ], [ %i.y, %bb.c ], [ %eh.lpad-body.i, %.body.i ], [ %.pn37108, %.thread103 ] ; 2 uses
  %.sroa.07.2101 = phi i1 [ false, %.thread136 ], [ %.sroa.07.3, %bb.c ], [ false, %.body.i ], [ false, %.thread103 ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit73 unwind label %bb.am

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit73: ; preds = %.thread97
  br i1 %.sroa.07.2101, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit73, %bb.ap
  %.pn4194 = phi { ptr, i32 } [ %.pn39102, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit73 ], [ %.pn4195, %bb.ap ]
  resume { ptr, i32 } %.pn4194

bb.ap:                                            ; preds = %.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit73
  %.pn4195 = phi { ptr, i32 } [ %i.v, %.thread ], [ %.pn39102, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit73 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %1) #60
          to label %bb.ao unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6_4Scan18scan_metadata_fromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1J_IB1a_INtNtNtB1e_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4l_4Scan18scan_metadata_fromB2G_E0ENCB4e_s_0EEEB4r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, i64 noundef %4, ptr noalias noundef nonnull align 8 %5, ptr noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0185 = alloca [248 x i8], align 8        ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [104 x i8], align 8               ; 12 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [544 x i8], align 16              ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4183 = alloca [160 x i8], align 8        ; 7 uses
  %.sroa.15 = alloca [64 x i8], align 16          ; 2 uses
  %i.n = alloca [2112 x i8], align 16             ; 5 uses
  %i.o = alloca [2112 x i8], align 16             ; 7 uses
  %.sroa.033 = alloca [96 x i8], align 16         ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [512 x i8], align 16              ; 7 uses
  %.sroa.024 = alloca [96 x i8], align 16         ; 6 uses
  %i.r = alloca [544 x i8], align 16              ; 6 uses
  %i.s = alloca [88 x i8], align 8                ; 9 uses
  %i.t = alloca [424 x i8], align 8               ; 8 uses
  %i.u = alloca [536 x i8], align 8               ; 11 uses
  %.sroa.5164.sroa.0 = alloca [160 x i8], align 8 ; 4 uses
  %i.v = alloca [176 x i8], align 8               ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [2016 x i8], align 16            ; 5 uses
  %i.ab = alloca [2016 x i8], align 16            ; 7 uses
  %.sroa.013 = alloca [96 x i8], align 16         ; 5 uses
  %i.ac = alloca [536 x i8], align 8              ; 8 uses
  %.sroa.14 = alloca [104 x i8], align 8          ; 7 uses
  %.sroa.411.sroa.7 = alloca [104 x i8], align 8  ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 16              ; 11 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 11 uses
  %i.aj = alloca [96 x i8], align 16              ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 10 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 2 uses
  %i.ao = alloca [8 x i8], align 8                ; 10 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  store i64 %4, ptr %i.ap, align 8
  store ptr %6, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27 ; 22 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr i8, ptr %i.aq, i64 1224   ; 2 uses
  %.val112 = load i64, ptr %i.as, align 8, !noundef !27 ; 2 uses
  %i.at = icmp ugt i64 %4, %.val112
  br i1 %i.at, label %bb.dg, label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u, %bb.cg, %bb.ch, %bb.cs, %.body.thread, %bb.cw, %.body, %bb.cx, %bb.cy, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151, %bb.g, %.body103, %bb.d
  %.sroa.040.0 = phi i8 [ %.sroa.040.1, %bb.d ], [ 1, %bb.cx ], [ 1, %bb.t ], [ 0, %.body103 ], [ 1, %bb.g ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151 ], [ 1, %bb.cy ], [ 0, %.body ], [ 1, %bb.cw ], [ 1, %.body.thread ], [ 0, %bb.cs ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.u ] ; 3 uses
  %.pn97 = phi { ptr, i32 } [ %i.ay, %bb.d ], [ %i.id, %bb.cx ], [ %i.ck, %bb.t ], [ %i.gd, %.body103 ], [ %.pn.pn, %bb.g ], [ %.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151 ], [ %i.id, %bb.cy ], [ %.pn90, %.body ], [ %.pn94231, %bb.cw ], [ %.pn94231, %.body.thread ], [ %i.hv, %bb.cs ], [ %i.hi, %bb.ch ], [ %i.hi, %bb.cg ], [ %lpad.thr_comm.split-lp256, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.au = load ptr, ptr %i.ao, align 8, !alias.scope !500, !noundef !27 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !503
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bt

bb.d:                                             ; preds = %bb.dg, %bb.q, %bb.bp, %bb.bl, %bb.e
  %.sroa.040.1 = phi i8 [ 1, %bb.dg ], [ 1, %bb.e ], [ 1, %bb.q ], [ 0, %bb.bl ], [ 0, %bb.bp ]
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !27, !nonnull !27
  %i.bb = invoke { ptr, ptr } %i.ba(ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1      ; 3 uses
  store ptr %i.bc, ptr %i.ai, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !508, !invariant.load !27
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = and i64 %i.bh, -16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bl = invoke noundef nonnull ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan15scan_row_schema()
          to label %bb.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151: ; preds = %bb.de, %bb.df, %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.bp, %bb.h ], [ %.pn.ph, %bb.df ], [ %.pn.ph, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.bm = load ptr, ptr %i.ai, align 8, !alias.scope !515, !nonnull !27, !noundef !27
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !515
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bt

bb.h:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151

bb.i:                                             ; preds = %bb.f
  store ptr %i.bl, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.bq = invoke noundef nonnull ptr @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay32get_scan_metadata_transform_expr()
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.k:                                             ; preds = %bb.i
  store ptr %i.bq, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.bs = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB7_4Scan18scan_metadata_from19RESTORED_ADD_SCHEMA, i64 16) acquire, align 8
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.l, !prof !152

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_RNvNvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB7_4Scan18scan_metadata_from19RESTORED_ADD_SCHEMA, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB7_4Scan18scan_metadata_from19RESTORED_ADD_SCHEMA, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc118 unwind label %bb.dc

.noexc118:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit151

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc118, %bb.k
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvNvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB7_4Scan18scan_metadata_from19RESTORED_ADD_SCHEMA)
          to label %bb.n unwind label %bb.dc

bb.n:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !27, !nonnull !27
  %i.bw = load ptr, ptr %i.ah, align 8, !nonnull !27, !noundef !27
  %i.bx = load ptr, ptr %i.ag, align 8, !nonnull !27, !noundef !27
  invoke void %i.bv(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.aj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.af)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.by = load i64, ptr %i.aj, align 16, !range !107, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.by, -9223372036854775743
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16           ; 2 uses
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.474.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.770.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.by, ptr %0, align 16
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %.sroa.272.0..sroa_idx, align 8
  %.sroa.373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cc, ptr %.sroa.373.0..sroa_idx, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.cd = load ptr, ptr %i.ai, align 8, !alias.scope !522, !nonnull !27, !noundef !27
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !522
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit120

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit120 unwind label %bb.d

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store ptr %i.ca, ptr %i.ak, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cg, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.ch = load ptr, ptr %i.ai, align 8, !alias.scope !529, !nonnull !27, !noundef !27
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !529
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #58
          to label %bb.v unwind label %bb.cx

bb.t:                                             ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit
  br i1 %.sroa.040.6, label %.body.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

.thread:                                          ; preds = %bb.z, %bb.y
  %lpad.thr_comm255 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.u:                                             ; preds = %bb.cm, %bb.cj
  %lpad.thr_comm.split-lp256 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.cl = load ptr, ptr %i.ak, align 8, !nonnull !27, !noundef !27 ; 4 uses
  %i.cm = load ptr, ptr %i.cg, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  store ptr %i.cl, ptr %i.ae, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.cm, ptr %i.cn, align 8
  %.val110 = load i64, ptr %i.as, align 8, !noundef !27
  %i.co = load i64, ptr %i.ap, align 8, !noundef !27 ; 2 uses
  %.not258 = icmp eq i64 %i.co, %.val110
  br i1 %.not258, label %bb.ce, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load i64, ptr %i.ar, align 8, !range !38, !noundef !27
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !27
  %i.ct = icmp ugt i64 %i.cs, %i.co
  br i1 %i.ct, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %bb.aj unwind label %.thread

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5_4Scan13scan_metadata(ptr noalias noundef nonnull sret([2016 x i8]) align 16 captures(address) dereferenceable(2016) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %bb.aa unwind label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.cw = load i64, ptr %i.cv, align 16, !range !530, !noundef !27 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.013, ptr noundef nonnull align 16 dereferenceable(96) %i.ab, i64 96, i1 false)
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.013, i64 96, i1 false)
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1912) %.sroa.7.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(1912) %.sroa.677.0..sroa_idx, i64 1912, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.aa, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.013, i64 96, i1 false)
  %.sroa.614.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i64 %i.cw, ptr %.sroa.614.0..sroa_idx15, align 16
  %i.cy = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 2016)
          to label %bb.af unwind label %bb.ad, !noalias !531 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtBL_6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB27_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB27_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4L_DNtNtB2M_11engine_data10EngineDataEL_ENtNtB2M_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2M_11log_segmentNtB7O_10LogSegment24create_checkpoint_streams_0EINtNtNtB3V_8adaptors3map14MapSpecialCaseIB2n_INtNtNtBN_7sources4once4OnceB5Y_EIBH_IB1n_B4K_EEEINtB8W_18MapSpecialCaseFnOkNCNCB7L_s_00EEB71_ENCB7L_s0_0EENCINvYNtNtNtB2M_4scan10log_replay22ScanLogReplayProcessorNtNtB2M_10log_replay18LogReplayProcessor20process_actions_iterB2m_E0ENCBbn_s_0EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(2016) %i.aa) #60
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.af:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2016) %i.cy, ptr noundef nonnull align 16 dereferenceable(2016) %i.aa, i64 2016, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %i.dc, align 16
  store i64 -9223372036854775743, ptr %0, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.by, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.dd = load ptr, ptr %i.ae, align 16, !alias.scope !543, !nonnull !27, !noundef !27
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !543
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtBP_4Scan18scan_metadata_fromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtB4_4iter8adapters3map3MapIB2s_IB1T_INtNtNtB1X_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4O_4Scan18scan_metadata_fromB39_E0ENCB4H_s_0EEE0EB4U_.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtBP_4Scan18scan_metadata_fromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtB4_4iter8adapters3map3MapIB2s_IB1T_INtNtNtB1X_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4O_4Scan18scan_metadata_fromB39_E0ENCB4H_s_0EEE0EB4U_.exit unwind label %bb.t

bb.aj:                                            ; preds = %bb.y
  invoke void @_RINvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathE6retainNCINvMs6_NtBJ_4scanNtB1M_4Scan18scan_metadata_fromINtNtB7_5boxed3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB2K_IB2s_INtNtB5_9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB5f_4Scan18scan_metadata_fromB3H_E0ENCB58_s_0EEEs_0EB5l_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %bb.ak unwind label %bb.cd

.critedge102:                                     ; preds = %bb.bi
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.dk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 -9223372036854775808, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5164.sroa.0)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aq, i64 368 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !range !66, !noundef !27
  %.not89 = icmp eq i64 %i.dm, -9223372036854775808
  br i1 %.not89, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4183)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !549
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(104) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.dl)
          to label %.noexc124 unwind label %bb.ar

.noexc124:                                        ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aq, i64 412
  %i.do = getelementptr inbounds nuw i8, ptr %i.aq, i64 432
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.do, i64 17, i1 false), !alias.scope !555, !noalias !544
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 408
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aq, i64 428
  %i.dr = load i32, ptr %i.dq, align 4, !alias.scope !556, !noalias !557, !noundef !27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aq, i64 392
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aq, i64 456
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.du = load <4 x i32>, ptr %i.ds, align 8, !alias.scope !556, !noalias !557
  store <4 x i32> %i.du, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !550, !noalias !558
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.dv = load <2 x i16>, ptr %i.dp, align 8, !alias.scope !556, !noalias !557
  store <2 x i16> %i.dv, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !550, !noalias !558
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.dw = load <4 x i32>, ptr %i.dn, align 4, !alias.scope !556, !noalias !557
  store <4 x i32> %i.dw, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !550, !noalias !558
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i32 %i.dr, ptr %.sroa.14.0..sroa_idx.i.i, align 4, !alias.scope !550, !noalias !558
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.dy = load <2 x i64>, ptr %i.dt, align 8, !alias.scope !556, !noalias !557
  store <2 x i64> %i.dy, ptr %i.dx, align 8, !alias.scope !550, !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !549
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aq, i64 472
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz)
          to label %bb.ao unwind label %bb.an, !noalias !544

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.ec, %bb.ap ], [ %i.ea, %bb.an ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.i) #60
          to label %.body125 unwind label %bb.aq, !noalias !544

bb.an:                                            ; preds = %.noexc124
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %.noexc124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !549
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aq, i64 496
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
          to label %bb.as unwind label %bb.ap, !noalias !544

bb.ap:                                            ; preds = %bb.ao
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #60
          to label %bb.am unwind label %bb.aq, !noalias !544

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !544
  unreachable

bb.ar:                                            ; preds = %bb.al
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body125

bb.as:                                            ; preds = %bb.ao
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 536
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !547, !noalias !544, !noundef !27
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 520
  %.sroa.4183.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4183, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4183.152..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !alias.scope !549
  %.sroa.0182.0.copyload = load i64, ptr %i.i, align 8, !noalias !547
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4183, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4183.0..sroa_idx, i64 96, i1 false), !noalias !547
  %.sroa.4183.104..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4183, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4183.104..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !547
  %.sroa.4183.128..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4183, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4183.128..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5164.sroa.0, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4183, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4183)
  br label %bb.at

bb.at:                                            ; preds = %bb.ak, %bb.as
  %.sroa.0162.0 = phi i64 [ %.sroa.0182.0.copyload, %bb.as ], [ -9223372036854775808, %bb.ak ]
  %.sroa.5164.sroa.4.0 = phi i64 [ %i.eg, %bb.as ], [ undef, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0185)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0185, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !559
  %.sroa.0185.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0185, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0185.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !566
  %.sroa.0185.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0185, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0185.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !568
  %.sroa.0185.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0185, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0185.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.v, i64 176, i1 false), !noalias !569
  %.sroa.3195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3195.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5164.sroa.0, i64 160, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.t, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0185, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0185)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5164.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.2194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  store i64 %.sroa.0162.0, ptr %.sroa.2194.0..sroa_idx, align 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 416
  store i64 %.sroa.5164.sroa.4.0, ptr %.sroa.4196.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei)
          to label %bb.av unwind label %bb.bz

bb.au:                                            ; preds = %bb.av
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.av:                                            ; preds = %bb.at
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  %i.el = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.em = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.em, ptr noundef nonnull align 8 dereferenceable(17) %i.el, i64 17, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aq, i64 92
  %i.ep = load i32, ptr %i.eo, align 4, !noundef !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.es = load <4 x i32>, ptr %i.ek, align 4
  store <4 x i32> %i.es, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.eu = load <2 x i16>, ptr %i.en, align 8
  store <2 x i16> %i.eu, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  store i32 %i.ep, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ex = load <4 x i32>, ptr %i.eq, align 8
  store <4 x i32> %i.ex, ptr %i.ew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 544
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !27
  invoke void @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB2_10LogSegment7try_new(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(none) dereferenceable(544) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(424) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.s, i64 noundef 1, i64 %i.ez)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.fa = load i64, ptr %i.l, align 16, !range !38, !noundef !27
  %i.fb = trunc nuw i64 %i.fa to i1
  br i1 %i.fb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.fc, i64 96, i1 false)
  br label %bb.by

bb.ay:                                            ; preds = %bb.aw
  %i.fd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.u, ptr noundef nonnull align 8 dereferenceable(536) %i.fd, i64 536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fe = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan18COMMIT_READ_SCHEMA, i64 8) acquire, align 8
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.az, !prof !152

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan18COMMIT_READ_SCHEMA, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan18COMMIT_READ_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc127 unwind label %bb.ba

.noexc127:                                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bw, %bb.bx, %bb.be, %bb.ba
  %.sroa.040.6 = phi i1 [ %.sroa.039.4, %bb.ba ], [ true, %bb.bx ], [ true, %bb.bw ], [ true, %bb.be ]
  %.pn90 = phi { ptr, i32 } [ %i.fg, %bb.ba ], [ %i.gs, %bb.bx ], [ %i.gs, %bb.bw ], [ %i.fn, %bb.be ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(536) %i.u) #60
          to label %.body unwind label %bb.bt

bb.ba:                                            ; preds = %bb.az, %bb.bj
  %.sroa.039.4 = phi i1 [ false, %bb.bj ], [ true, %bb.az ]
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc127, %bb.ay
  %i.fh = load ptr, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan18COMMIT_READ_SCHEMA, align 8, !nonnull !27, !noundef !27
  %i.fi = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8
  %i.fj = icmp slt i64 %i.fi, 0
  br i1 %i.fj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.fk = load ptr, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan18COMMIT_READ_SCHEMA, align 8, !nonnull !27, !noundef !27
  store ptr %i.fk, ptr %i.p, align 8
  %i.fl = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan22CHECKPOINT_READ_SCHEMA, i64 8) acquire, align 8
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit129, label %bb.bc, !prof !152

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan22CHECKPOINT_READ_SCHEMA, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan22CHECKPOINT_READ_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc128 unwind label %bb.bw

.noexc128:                                        ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit129

bb.bd:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.bf
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit129: ; preds = %.noexc128, %bb.bb
  %i.fo = load ptr, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan22CHECKPOINT_READ_SCHEMA, align 8, !nonnull !27, !noundef !27
  %i.fp = atomicrmw add ptr %i.fo, i64 1 monotonic, align 8
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit129
  %i.fr = load ptr, ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan22CHECKPOINT_READ_SCHEMA, align 8, !nonnull !27, !noundef !27
  %i.fs = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27
  invoke void @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB2_10LogSegment46read_actions_with_projected_checkpoint_actions(ptr noalias noundef nonnull sret([512 x i8]) align 16 captures(none) dereferenceable(512) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %i.u, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.fr, ptr noundef null)
          to label %bb.bh unwind label %bb.be

bb.bg:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit129
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.fu = load i64, ptr %i.ft, align 16, !range !24, !noundef !27 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.024, ptr noundef nonnull align 16 dereferenceable(96) %i.q, i64 96, i1 false)
  br i1 %i.fv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.024, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(536) %i.u)
          to label %bb.by unwind label %.critedge102

bb.bj:                                            ; preds = %bb.bh
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6243.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.680.0..sroa_idx, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.024, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 %i.fu, ptr %.sroa.5.0..sroa_idx, align 16, !alias.scope !575, !noalias !573
  %i.fw = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  store ptr %5, ptr %i.fw, align 16, !alias.scope !577, !noalias !570
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  %i.fx = load <2 x ptr>, ptr %i.ae, align 16
  store <2 x ptr> %i.fx, ptr %.sroa.4167.0..sroa_idx, align 8, !alias.scope !577, !noalias !570
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val115 = load ptr, ptr %i.fy, align 8, !nonnull !27, !noundef !27
  invoke fastcc void @_RINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6_4Scan19scan_metadata_innerINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1b_NtNtNtB8_10log_reader6commit12CommitReaderINtNtB1f_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2O_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1h_6traits8iterator8Iteratorp4ItemINtNtB1j_6result6ResultIB3Z_DNtNtB8_11engine_data10EngineDataEL_ENtNtB8_5error5ErrorENtNtB1j_6marker4SendEL_ENCNvMNtB8_11log_segmentNtB73_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1b_INtNtNtB1h_7sources4once4OnceB5d_EINtNtB1f_7flatten7FlattenINtNtB1j_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB70_s_00EEB6g_ENCB70_s0_0EEIB2O_IB3Z_IB2O_IB2O_IB3Z_INtNtNtB43_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvB2_18scan_metadata_fromBbk_E0EEEBdp_(ptr noalias noundef align 16 captures(none) dereferenceable(2112) %i.o, ptr nonnull %.val115, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noalias noundef align 16 captures(address) dereferenceable(544) %i.r)
          to label %bb.bk unwind label %bb.ba

bb.bk:                                            ; preds = %bb.bj
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.ga = load i64, ptr %i.fz, align 16, !range !578, !noundef !27 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.033, ptr noundef nonnull align 16 dereferenceable(96) %i.o, i64 96, i1 false)
  br i1 %i.gb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.033, i64 96, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(536) %i.u)
          to label %bb.bu unwind label %bb.d

bb.bm:                                            ; preds = %bb.bk
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %.sroa.837.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2008) %.sroa.837.0..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(2008) %.sroa.683.0..sroa_idx, i64 2008, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.033, i64 96, i1 false)
  %.sroa.734.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 %i.ga, ptr %.sroa.734.0..sroa_idx35, align 16
  %i.gc = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 2112)
          to label %bb.bp unwind label %bb.bn, !noalias !579 ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtBL_6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB2n_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB27_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB27_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4Q_DNtNtB2R_11engine_data10EngineDataEL_ENtNtB2R_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2R_11log_segmentNtB7T_10LogSegment24create_checkpoint_streams_0EINtNtNtB40_8adaptors3map14MapSpecialCaseIB2n_INtNtNtBN_7sources4once4OnceB63_EIBH_IB1n_B4P_EEEINtB91_18MapSpecialCaseFnOkNCNCB7Q_s_00EEB76_ENCB7Q_s0_0EEIB27_IB4Q_IB27_IB27_IB4Q_INtNtNtB4U_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdu_4Scan18scan_metadata_fromBbP_E0ENCBdn_s_0EENCINvMs6_NtB2R_4scanNtBfl_4Scan18scan_metadata_fromBbv_E0EENCINvYNtNtBfl_10log_replay22ScanLogReplayProcessorNtNtB2R_10log_replay18LogReplayProcessor20process_actions_iterB2m_E0ENCBgb_s_0EEEEBdA_(ptr noalias noundef nonnull align 16 dereferenceable(2112) %i.n) #60
          to label %.body103 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

.body103:                                         ; preds = %bb.bn
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(536) %i.u) #60
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2112) %i.gc, ptr noundef nonnull align 16 dereferenceable(2112) %i.n, i64 2112, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gc, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @20, ptr %i.gg, align 16
  store i64 -9223372036854775743, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(536) %i.u)
          to label %bb.bq unwind label %bb.d

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.gh = load ptr, ptr %i.ao, align 8, !alias.scope !582, !noundef !27 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit131, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gj = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !585
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %.invoke, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit131

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.bs
  %.sroa.040.8 = phi i8 [ %.sroa.040.9, %bb.bs ], [ %.sroa.040.0, %bb.c ], [ %.sroa.040.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.040.0, %bb.b ]
  %.pn99 = phi { ptr, i32 } [ %i.gm, %bb.bs ], [ %.pn97, %bb.c ], [ %.pn97, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel17EvaluationHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn97, %bb.b ]
  %i.gl = trunc nuw i8 %.sroa.040.8 to i1
  br i1 %i.gl, label %bb.di, label %bb.dh

bb.bs:                                            ; preds = %.invoke, %bb.db, %bb.cb
  %.sroa.040.9 = phi i8 [ 1, %bb.db ], [ %.sroa.040.10, %bb.cb ], [ 0, %.invoke ]
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit131: ; preds = %.invoke, %bb.bv, %bb.bu, %bb.br, %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit148, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit136
  ret void

bb.bt:                                            ; preds = %bb.df, %bb.dd, %bb.cy, %bb.cw, %bb.bx, %bb.g, %bb.c, %bb.di, %bb.cd, %.critedge101, %.critedge, %bb.cc, %.body125, %bb.bz, %.body103, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.bu:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.go = load ptr, ptr %i.ao, align 8, !alias.scope !590, !noundef !27 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit131, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gq = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !593
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %.invoke, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit131

.invoke:                                          ; preds = %bb.bv, %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit131 unwind label %bb.bs

bb.bw:                                            ; preds = %bb.bc
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.gt = load ptr, ptr %i.p, align 8, !alias.scope !604, !nonnull !27, !noundef !27
  %i.gu = atomicrmw sub ptr %i.gt, i64 1 release, align 8, !noalias !604
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bt

bb.by:                                            ; preds = %bb.ax, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ah

bb.bz:                                            ; preds = %bb.at
  %i.gw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs14kWLkQVSKO_14deltalake_core:bb.a
bb.n:                                             ; preds = %.lr.ph
  %i.bk = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.bl = load i64, ptr %i.s, align 8, !alias.scope !1830, !noalias !1828, !noundef !27 ; 2 uses
  %.neg.i = sub i64 %i.bh, %i.bl
  %i.bm = load i64, ptr %i.u, align 8, !alias.scope !1828, !noalias !1830, !noundef !27
  %i.bn = add i64 %.neg.i, %i.bm
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !1830, !noalias !1828, !noundef !27 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bh
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bf)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !1830, !noalias !1828, !nonnull !27, !noundef !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1832
  store ptr %i.br, ptr %i.a, align 8, !noalias !1832
  store i64 %i.bf, ptr %i.w, align 8, !noalias !1832
  store i64 0, ptr %i.x, align 8, !noalias !1832
  store i64 %.sroa.0.0.i.i, ptr %i.y, align 8, !noalias !1832
  %i.bs = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1830
  %i.bt = load i64, ptr %i.x, align 8, !noalias !1832, !noundef !27 ; 2 uses
  %i.bu = load i64, ptr %i.y, align 8, !noalias !1832, !noundef !27
  %i.bv = add i64 %i.bt, %i.bh                    ; 3 uses
  store i64 %i.bv, ptr %i.s, align 8, !alias.scope !1830, !noalias !1828
  %.sroa.0.0.i4.i = call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bo)
  %i.bw = add i64 %i.bu, %i.bh
  %.sroa.0.0.i5.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.0.0.i4.i)
  store i64 %.sroa.0.0.i5.i, ptr %i.t, align 8, !alias.scope !1830, !noalias !1828
  %i.bx = load i64, ptr %i.u, align 8, !alias.scope !1828, !noalias !1830, !noundef !27
  %i.by = sub i64 %i.bx, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1832
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n, %bb.o
  %.pre154159 = phi i64 [ %i.bv, %bb.o ], [ %i.bl, %bb.n ]
  %.sink = phi i64 [ %i.by, %bb.o ], [ %i.bn, %bb.n ] ; 4 uses
  %.sroa.0.0.i64 = phi ptr [ %i.bs, %bb.o ], [ %i.bk, %bb.n ] ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !1828, !noalias !1830
  %.not60 = icmp eq ptr %.sroa.0.0.i64, null      ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit, label %bb.p

bb.p:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit
  %i.bz = ptrtoint ptr %.sroa.0.0.i64 to i64      ; 3 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %bb.q
    i64 3, label %bb.t
    i64 0, label %bb.r
    i64 1, label %bb.s
  ], !prof !1821

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit, %bb.t, %bb.q, %bb.s, %bb.r
  %i.cb = ptrtoint ptr %.sroa.0.0.i64 to i64
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit
  %.pre154 = phi i64 [ %.pre154.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit_crit_edge ], [ %.pre154159, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit ] ; 5 uses
  %.not6078.ph = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6477.ph = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit ]
  %.pre155 = load i64, ptr %i.t, align 8          ; 2 uses
  %.pre156 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.cc = sub nuw i64 %.pre155, %.pre154
  %i.cd = icmp ne i64 %.pre155, %.sroa.0.0.i
  %i.ce = icmp sgt i64 %.pre156, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add i64 %.pre156, %.pre154              ; 3 uses
  store i64 %i.cf, ptr %i.c, align 8
  br i1 %.not6078.ph, label %bb.aa, label %.loopexit171

bb.q:                                             ; preds = %bb.p
  %.mask122 = and i64 %i.bz, -4294967296
  %i.cg = icmp eq i64 %.mask122, 17179869184
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !range !1822, !noundef !27
  %i.cj = icmp eq i8 %i.ci, 35
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit

bb.s:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i64, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i64, i64 15
  %i.cm = load i8, ptr %i.cl, align 8, !range !1822, !noundef !27
  %i.cn = icmp eq i8 %i.cm, 35
  br i1 %i.cn, label %bb.u, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit

bb.t:                                             ; preds = %bb.p
  %i.co = icmp ult ptr %.sroa.0.0.i64, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.co)
  %.mask = and i64 %i.bz, -4294967296
  %i.cp = icmp eq i64 %.mask, 150323855360
  br i1 %i.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit

bb.u:                                             ; preds = %bb.s
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !1833 ; 5 uses
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i64, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !1833, !nonnull !27, !align !106, !noundef !27 ; 5 uses
  %i.cr = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !27, !noalias !1833 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cr(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.w unwind label %bb.y, !noalias !1833

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !74, !invariant.load !27, !noalias !1833 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !508, !invariant.load !27, !noalias !1833
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #61, !noalias !1833
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !74, !invariant.load !27, !noalias !1833 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !508, !invariant.load !27, !noalias !1833
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #61, !noalias !1833
  br label %.body

.body:                                            ; preds = %bb.z, %bb.y
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #61, !noalias !1833
  resume { ptr, i32 } %i.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #61, !noalias !1833
  %.pre153 = load i64, ptr %i.u, align 8, !alias.scope !1836, !noalias !1838
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t, %bb.q, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.dd = phi i64 [ %.sink, %bb.t ], [ %.sink, %bb.q ], [ %.sink, %bb.r ], [ %.pre153, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit_crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit
  %.pre154.pre = load i64, ptr %i.s, align 8
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.aa:                                            ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.df = icmp eq i64 %.pre154, 0
  br i1 %i.df, label %.loopexit172, label %bb.ab

.loopexit172:                                     ; preds = %bb.aa, %.thread
  %i.dg = phi i64 [ %i.ay, %.thread ], [ %i.cf, %bb.aa ]
  %i.dh = sub nsw i64 %i.dg, %i.d
  br label %.loopexit171

bb.ab:                                            ; preds = %bb.aa
  %i.di = icmp ult i64 %.pre154, %.sroa.0.0.i
  %i.dj = add i32 %.sroa.019.0, 1
  %.sroa.019.1 = select i1 %i.di, i32 %i.dj, i32 0 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ad, label %bb.ac

.loopexit171:                                     ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread, %.loopexit172
  %.sroa.8.0 = phi i64 [ %i.dh, %.loopexit172 ], [ %.sroa.0.0.i6477.ph, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %.sroa.010.0 = phi i64 [ 0, %.loopexit172 ], [ 1, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sroa.050.4 = phi i64 [ -1, %bb.af ], [ %i.dn, %bb.ae ], [ %spec.select, %bb.ad ], [ %.sroa.050.3, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.ad:                                            ; preds = %bb.ab
  %i.dk = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cd, i1 %i.dk, i1 false
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3 ; 4 uses
  %i.dl = icmp uge i64 %.sroa.0.0.i, %spec.select
  %i.dm = icmp eq i64 %.pre154, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dm, %i.dl
  br i1 %or.cond2, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.dn = shl nuw i64 %spec.select, 1
  %i.do = icmp slt i64 %spec.select, 0
  br i1 %i.do, label %bb.af, label %bb.ac, !prof !67

bb.af:                                            ; preds = %bb.ae
  br label %bb.ac

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit171
  %.sroa.8.1 = phi i64 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %.sroa.8.0, %.loopexit171 ], [ ptrtoint (ptr inttoptr (i64 163208757251 to ptr) to i64), %bb.l ]
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit171 ], [ 1, %bb.l ]
  %i.dp = inttoptr i64 %.sroa.8.1 to ptr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dp, %.loopexit ], [ %i.ab, %bb.d ], [ null, %bb.e ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.dq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0
  %i.dr = insertvalue { i64, ptr } %i.dq, ptr %.sroa.8.2, 1
  ret { i64, ptr } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan24check_default_invariantsNtNtB4_10projection14ProjectionExecECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [48 x i8], align 8               ; 9 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan8children(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %1)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !27 ; 2 uses
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = icmp ult i64 %i.an, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ao)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.y, %bb.v, %bb.q, %bb.u, %bb.x, %bb.aa, %bb.r, %bb.m, %bb.j, %bb.g, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.y ], [ %i.ap, %bb.b ], [ %i.au, %bb.d ], [ %i.bb, %bb.g ], [ %i.bm, %bb.j ], [ %i.bx, %bb.m ], [ %i.cl, %bb.r ], [ %i.ck, %bb.q ], [ %i.cp, %bb.v ], [ %i.cu, %bb.aa ], [ %i.cr, %bb.x ], [ %i.co, %bb.u ], [ %i.cv, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan10projectionNtB5_14ProjectionExecNtNtB7_14execution_plan13ExecutionPlan21maintains_input_order(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !27 ; 2 uses
  store i64 %i.as, ptr %i.aj, align 8
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.al, ptr %i.ag, align 8
  %i.aw = load i64, ptr %i.aj, align 8, !noundef !27
  %i.ax = load i64, ptr %i.al, align 8, !noundef !27
  %.not = icmp eq i64 %i.aw, %i.ax
  br i1 %.not, label %bb.f, label %.split134

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan23required_input_orderingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %1)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !27 ; 3 uses
  store i64 %i.az, ptr %i.aa, align 8
  %i.ba = icmp ult i64 %i.az, 288230376151711744
  call void @llvm.assume(i1 %i.ba)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.aa, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.al, ptr %i.x, align 8
  %i.bd = load i64, ptr %i.al, align 8, !noundef !27
  %.not137 = icmp eq i64 %i.az, %i.bd
  br i1 %.not137, label %bb.i, label %.split130

.split134:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @342, ptr %i.ad, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 14, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.ad, ptr %i.ac, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.413.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aj, ptr %i.bf, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.al, ptr %i.bg, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull @49, ptr noundef nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ah, ptr %i.ab, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRjNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.427.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ag, ptr %i.bh, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRjNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ae, ptr %i.bi, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @46, ptr noundef nonnull %i.ab)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aa

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan27required_input_distributionCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %1)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !27 ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8
  %i.bl = icmp ult i64 %i.bk, 384307168202282326
  call void @llvm.assume(i1 %i.bl)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j
end_hunk_1
begin_hunk_2_@_RINvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB6_20GenericByteViewArrayNtNtBa_5types14StringViewTypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB23_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9from_iterINtNtB21_8adapters12GenericShuntINtNtB48_3map3MapINtNtB48_8peekable8PeekableINtNtNtB3l_3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B5T_B5R_13iter_to_arrayINtB5o_3VecB5R_EEsi_0EINtNtB23_6result6ResultNtNtB23_7convert10InfallibleNtNtB5V_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.o, align 8, !noalias !11206, !nonnull !27, !noundef !27
  %i.r = icmp ule i64 %i.j, %i.n
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11206
  store i64 %i.n, ptr %i.h, align 8, !alias.scope !11206
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11206
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11206
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 0, ptr %i.s, align 8, !alias.scope !11206
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !11206
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i64 %i.j, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !11206
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.t, align 8, !alias.scope !11206
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !11206
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11206
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !11206
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !11206
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 1, ptr %i.u, align 8, !alias.scope !11206
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i32 8192, ptr %i.v, align 4, !alias.scope !11206
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store ptr null, ptr %i.w, align 8, !alias.scope !11206
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store i32 0, ptr %i.x, align 8, !alias.scope !11206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, ptr noundef nonnull align 16 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %bb.d
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 16 dereferenceable(128) %i.e)
          to label %bb.g unwind label %bb.f, !noalias !11213

bb.f:                                             ; preds = %bb.o, %bb.n, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.ai, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsi_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.e) #60
          to label %.body unwind label %bb.v, !noalias !11213

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.d, align 8, !range !1892, !noalias !11209, !noundef !27 ; 3 uses
  %.not.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11209
  %.not4.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not4.i, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.j, !noalias !11213

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i128, ptr %i.e, align 16, !range !2722, !alias.scope !11214, !noalias !11209, !noundef !27
  %i.ad = and i128 %i.ac, 62
  %switch.i.i.i.i.i = icmp eq i128 %i.ad, 50
  br i1 %switch.i.i.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.e)
          to label %.body unwind label %bb.m, !noalias !11213

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.i
  %i.ae = load i128, ptr %i.e, align 16, !range !2722, !alias.scope !11223, !noalias !11209, !noundef !27
  %i.af = and i128 %i.ae, 62
  %switch.i1.i.i.i.i = icmp eq i128 %i.af, 50
  br i1 %switch.i1.i.i.i.i, label %bb.x, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.e)
          to label %bb.x unwind label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !11213
  unreachable

bb.n:                                             ; preds = %bb.h
  store i64 %i.z, ptr %i.c, align 8, !noalias !11209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, i64 16, i1 false), !noalias !11209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11209
  invoke fastcc void @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB5_22GenericByteViewBuilderNtNtB9_5types14StringViewTypeE16try_append_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.q unwind label %bb.f, !noalias !11213

bb.o:                                             ; preds = %bb.h
  invoke fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %bb.p unwind label %bb.f, !noalias !11213

bb.p:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11209
  br label %bb.e

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !11226)
  %i.ah = load i64, ptr %i.b, align 8, !range !469, !alias.scope !11226, !noalias !11209, !noundef !27
  %.not.i.i = icmp eq i64 %i.ah, -9223372036854775788
  br i1 %.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.r, !prof !152

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !11209
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #57
          to label %bb.t unwind label %bb.s, !noalias !11230

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #60
          to label %.body.i unwind label %bb.u, !noalias !11230

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !11230
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11209
  br label %bb.p

bb.v:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !11213
  unreachable

bb.w:                                             ; preds = %bb.l, %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.j, %bb.k, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.w ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtBN_5types14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(208) %i.h) #60
          to label %.thread unwind label %bb.z

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE6finishCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(208) %i.h)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtBN_5types14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(208) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.z:                                             ; preds = %bb.aa, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

.thread:                                          ; preds = %.body, %bb.aa
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm, %bb.aa ]
  resume { ptr, i32 } %.pn7

bb.aa:                                            ; preds = %bb.c, %bb.a, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsi_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.i) #60
          to label %.thread unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtCs2HSpDNxY7OE_9hashbrown3setINtB6_7HashSetReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtBY_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB4O_14KernelScanPlan7try_news0_0EEB4Y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
  %i.e = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.b, !prof !152

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #58
  br label %bb.d

bb.c:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.f, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11231
  store ptr %1, ptr %i.b, align 8, !noalias !11231
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.h, align 8, !noalias !11231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11231
  invoke void @_RNvXsS_NtNtCsbpG6u9KFjWn_8indexmap3map4iterINtB5_6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !noalias !11231, !noundef !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11231
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !11234, !noalias !11237
  %i.j = icmp ugt i64 %i.i, %.pre
  br i1 %i.j, label %bb.f, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !67

bb.f:                                             ; preds = %bb.e
  %i.k = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB3j_14KernelScanPlan7try_news0_0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5s_7HashSetReEINtNtNtBa_6traits7collect6ExtendB6b_E6extendBX_E0ENtNtB6j_8iterator8Iterator4folduNCINvNvB72_8for_each4callTB6b_uENCINvXs1l_NtB5u_3mapINtB8e_7HashMapB6b_uEIB6f_B7X_E6extendBN_E0E0EB3t_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTBO_B1q_EE9from_iterINtNtNtB2y_8adapters3map3MapINtNtB3Q_3zip3ZipINtNtNtB2A_5slice4iter4IterNtNtB1w_6schema11StructFieldEIB4v_B1q_EENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00EEB5L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 29 uses
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload10 = load i64, ptr %.sroa.4.0..sroa_idx9, align 8, !alias.scope !11239 ; 3 uses
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.0.copyload12 = load i64, ptr %.sroa.5.0..sroa_idx11, align 8, !alias.scope !11239 ; 3 uses
  %i.e = sub i64 %.sroa.5.0.copyload12, %.sroa.4.0.copyload10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @15) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11243)
  %i.i = icmp eq i64 %.sroa.5.0.copyload12, %.sroa.4.0.copyload10
  br i1 %i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !alias.scope !11243
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !11243
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !11243
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.g, ptr %i.j, align 8, !alias.scope !11243
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.h, ptr %i.k, align 8, !alias.scope !11243
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11246
  call void @_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) %i.e), !noalias !11246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11246
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %i.e, i1 noundef zeroext false, i64 noundef 16, i64 noundef 128)
          to label %bb.d unwind label %bb.c, !noalias !11246

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8, i64 noundef 16)
          to label %common.resume unwind label %bb.g, !noalias !11246

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.b, align 8, !range !38, !noalias !11246, !noundef !27
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !66, !noalias !11246, !noundef !27 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.r, label %bb.e, label %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.u, align 8, !noalias !11246
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #57
          to label %bb.f unwind label %bb.c, !noalias !11246

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !11246
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.bc, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.x = load ptr, ptr %i.u, align 8, !noalias !11246, !nonnull !27, !noundef !27 ; 2 uses
  %i.y = icmp ule i64 %i.e, %i.t
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11246
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11246
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !11243
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11243
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11243
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.g, ptr %i.z, align 8, !alias.scope !11243
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.h, ptr %i.aa, align 8, !alias.scope !11243
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !11249, !noalias !11252
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.pre19 = load i64, ptr %.phi.trans.insert18, align 8, !alias.scope !11254, !noalias !11259
  %.pre.fr = freeze i64 %.pre
  %i.ab = icmp eq i64 %.pre.fr, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11249)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.ad = lshr i64 %i.e, 1
  %i.ae = and i64 %i.e, 1
  %spec.select.i = add nuw i64 %i.ad, %i.ae
  %spec.select = select i1 %i.ab, i64 %i.e, i64 %spec.select.i ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ah = icmp ugt i64 %spec.select, %.pre19
  br i1 %i.ah, label %bb.h, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !11261

bb.h:                                             ; preds = %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aj = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %spec.select, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.x, i64 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.l     ; 0 uses

.noexc:                                           ; preds = %bb.h
  %.pre20 = load i64, ptr %i.d, align 8, !range !74, !alias.scope !11262, !noalias !11252
  %.pre21 = load i64, ptr %i.af, align 8, !alias.scope !11262, !noalias !11252
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.thread, %.noexc, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit
  %i.ak = phi ptr [ %i.ag, %.noexc ], [ %i.ag, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.n, %.thread ]
  %i.al = phi ptr [ %i.af, %.noexc ], [ %i.af, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.m, %.thread ]
  %i.am = phi i64 [ %spec.select, %.noexc ], [ %spec.select, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %.thread ] ; 3 uses
  %i.an = phi ptr [ %i.ac, %.noexc ], [ %i.ac, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.l, %.thread ]
  %i.ao = phi i64 [ %.pre21, %.noexc ], [ 0, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %.thread ] ; 5 uses
  %i.ap = phi i64 [ %.pre20, %.noexc ], [ %i.t, %_RNvMs1_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %.thread ]
  %i.aq = icmp ult i64 %i.ao, 72057594037927936
  call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nsw i64 %i.ap, %i.ao
  %i.as = icmp ugt i64 %i.am, %i.ar
  br i1 %i.as, label %bb.i, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !11263, !noalias !11252, !noundef !27
  %i.au = load i64, ptr %i.ak, align 8, !alias.scope !11263, !noalias !11252, !noundef !27
  %i.av = add i64 %i.au, %i.at
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 72057594037927935)
  %i.aw = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.ao   ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %bb.k, label %bb.j
end_hunk_2
begin_hunk_3_@_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss0_0Bd_:bb.a
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [144 x i8], align 8               ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [112 x i8], align 16              ; 5 uses
  %i.m = alloca [112 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.l, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.0.val1) #63
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = getelementptr i8, ptr %.0.val, i64 664
  %.val = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.o = getelementptr i8, ptr %.0.val, i64 680
  %.val1 = load i8, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14184
  %i.p = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !14184
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.val, ptr %i.j, align 8, !noalias !14184
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  invoke void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType6leavesINtNtCsbvkFyIu7lgC_4core6option6OptionReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.f unwind label %bb.d, !noalias !14184

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14189)
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !14192, !noalias !14184, !nonnull !27, !noundef !27
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !14193
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.an, !noalias !14184

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14197)
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !14200, !noalias !14184, !nonnull !27, !noundef !27
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !14201
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i unwind label %bb.h, !noalias !14184

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i, %bb.l, %bb.k, %bb.h
  %.sroa.05.0.i = phi i1 [ %.sroa.05.1.i, %bb.h ], [ %.sroa.05.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i ], [ true, %bb.l ], [ true, %bb.k ]
  %.pn17.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn15.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i ], [ %.pn.i, %bb.l ], [ %.pn.i, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.k) #60
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.an, !noalias !14184

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i, %bb.g
  %.sroa.05.1.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14184
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !14184, !nonnull !27, !noundef !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !14184, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14184
  %i.ae = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !14184
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i
  store ptr %.val, ptr %i.g, align 8, !noalias !14184
  invoke void @_RNvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_10StructType13make_physical(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r, i8 noundef %.val1)
          to label %bb.n unwind label %bb.m, !noalias !14184

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.o, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.aj, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14202)
  call void @llvm.experimental.noalias.scope.decl(metadata !14205)
  %i.ag = load ptr, ptr %i.g, align 8, !alias.scope !14208, !noalias !14184, !nonnull !27, !noundef !27
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !14209
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i unwind label %bb.an, !noalias !14184

bb.m:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.i
  invoke void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType6leavesINtNtCsbvkFyIu7lgC_4core6option6OptionReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.h, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.p unwind label %bb.o, !noalias !14184

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.h) #60
          to label %bb.k unwind label %bb.an, !noalias !14184

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.h)
          to label %bb.s unwind label %bb.q, !noalias !14184

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14210)
  call void @llvm.experimental.noalias.scope.decl(metadata !14213)
  %i.am = load ptr, ptr %i.g, align 8, !alias.scope !14216, !noalias !14184, !nonnull !27, !noundef !27
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !14217
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i unwind label %bb.an, !noalias !14184

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !14218)
  call void @llvm.experimental.noalias.scope.decl(metadata !14221)
  %i.ap = load ptr, ptr %i.g, align 8, !alias.scope !14224, !noalias !14184, !nonnull !27, !noundef !27
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !14225
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i unwind label %bb.u, !noalias !14184

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i: ; preds = %bb.ak, %bb.ai, %bb.u, %bb.r, %bb.q
  %.sroa.05.2.i = phi i1 [ true, %bb.q ], [ true, %bb.ai ], [ true, %bb.r ], [ %.sroa.05.3.i, %bb.u ], [ false, %bb.ak ]
  %.pn15.i = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.fr, %bb.ai ], [ %i.al, %bb.r ], [ %i.as, %bb.u ], [ %i.ft, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.i) #60
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i unwind label %bb.an, !noalias !14184

bb.u:                                             ; preds = %.invoke.i, %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i, %bb.v, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i, %bb.t
  %.sroa.05.3.i = phi i1 [ true, %bb.v ], [ false, %.invoke.i ], [ true, %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i ], [ true, %bb.t ], [ true, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14184
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !14184, !nonnull !27, !noundef !27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !14184, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14184
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.aw
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ax, ptr noundef nonnull readonly align 8 %i.au, ptr noundef nonnull readonly %i.ay)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.u, !noalias !14184

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14226)
  %.sroa.0.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !alias.scope !14229, !noalias !14233 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14229, !noalias !14233 ; 2 uses
  %.sroa.4.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0.copyload8.i.i = load i64, ptr %.sroa.4.0..sroa_idx7.i.i, align 8, !alias.scope !14229, !noalias !14233 ; 3 uses
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0.copyload10.i.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !alias.scope !14229, !noalias !14233 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14235
  %i.az = sub i64 %.sroa.5.0.copyload10.i.i, %.sroa.4.0.copyload8.i.i ; 2 uses
  %i.ba = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc30.i unwind label %bb.u, !noalias !14184

.noexc30.i:                                       ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBJ_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bb = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !14235
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i, label %bb.v, !prof !152

bb.v:                                             ; preds = %.noexc30.i
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #58
          to label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i unwind label %bb.u, !noalias !14184

_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i: ; preds = %bb.v, %.noexc30.i
  invoke void @_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBP_EE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.b, i64 noundef %i.az)
          to label %.noexc32.i unwind label %bb.u, !noalias !14184

.noexc32.i:                                       ; preds = %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  store i64 %i.ba, ptr %i.bd, align 8, !alias.scope !14236, !noalias !14235
  call void @llvm.experimental.noalias.scope.decl(metadata !14239)
  call void @llvm.experimental.noalias.scope.decl(metadata !14242)
  call void @llvm.experimental.noalias.scope.decl(metadata !14245)
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload10.i.i, %.sroa.4.0.copyload8.i.i
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc32.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.5.0.copyload.i.i) ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.w

bb.w:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.014.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1g_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB2H_7HashMapB1g_B1g_EINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3zip3ZipINtNtNtBe_5slice4iter4IterB1h_EB4J_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 2 uses
  %i.bg = add nuw i64 %.sroa.0.014.i.i.i.i.i, 1   ; 2 uses
  %i.bh = add i64 %.sroa.0.014.i.i.i.i.i, %.sroa.4.0.copyload8.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.sroa.0.0.copyload.i.i, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.sroa.5.0.copyload.i.i, i64 %i.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !14248)
  call void @llvm.experimental.noalias.scope.decl(metadata !14251)
  call void @llvm.experimental.noalias.scope.decl(metadata !14254)
  call void @llvm.experimental.noalias.scope.decl(metadata !14257)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !14259, !noalias !14262, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14270
  store i128 0, ptr %i.a, align 16, !alias.scope !14271, !noalias !14274
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14271, !noalias !14274
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14271, !noalias !14274
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14271, !noalias !14274
  invoke void @_RINvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB6_10ColumnNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc.i.i unwind label %bb.ai, !noalias !14235

.noexc.i.i:                                       ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !14276)
  %i.bk = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14276, !noalias !14270, !noundef !27
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc.i.i
  %i.bl = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14276, !noalias !14270, !noundef !27
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i
  %i.bm = load i128, ptr %i.a, align 16, !alias.scope !14276, !noalias !14270, !noundef !27 ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = lshr i128 %i.bm, 64
  %i.bp = trunc nuw i128 %i.bo to i64
  %i.bq = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14276, !noalias !14270, !noundef !27
  %i.br = xor i64 %i.bq, %i.bn
  %i.bs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !14276, !noalias !14270, !nonnull !27, !align !106, !noundef !27
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !14279, !noundef !27
  %i.bu = xor i64 %i.bt, %i.bp
  %i.bv = zext i64 %i.br to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.y ], [ %i.bl, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14270
  %i.cb = load i64, ptr %i.be, align 8, !alias.scope !14280, !noalias !14285, !noundef !27
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, !prof !67

bb.z:                                             ; preds = %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %i.cd = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ai, !noalias !14235 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hashRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !14289, !noalias !14290, !nonnull !27, !noundef !27 ; 10 uses
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !14289, !noalias !14290, !noundef !27 ; 7 uses
  %i.ce = lshr i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 57
  %i.cf = trunc nuw nsw i64 %i.ce to i8           ; 3 uses
  %i.cg = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !14291, !noalias !14292 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !14291, !noalias !14292
  %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ck = icmp eq i64 %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ck, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, %bb.ac
  %.pn.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.dk, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.us.i.i.i.i.i.i.i.i, %bb.ac ], [ undef, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.123.i.i.us.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %i.cl = phi i64 [ %i.dj, %bb.ac ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.us.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !14293 ; 3 uses
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i, %i.ch
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not29.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.co, 0
  br i1 %.not29.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i:                 ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i, %bb.aa
  %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i = phi i16 [ %i.cz, %bb.aa ], [ %i.co, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = add i64 %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i, %i.cq
  %i.cs = and i64 %i.cr, %.val7.i.i.i.i.i.i.i.i.i
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16
  %.val2.i.us.i.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !noalias !14296, !nonnull !27, !align !106, !noundef !27
  %i.cw = getelementptr i8, ptr %.val2.i.us.i.us.i.i.i.i.i.i.i.i, i64 16
  %.val3.i.i.i.i.us.i.us.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !noalias !14296, !noundef !27
  %i.cx = icmp eq i64 %.val3.i.i.i.i.us.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner.exit.loopexit19.split.us.i.i.i.i.i.i.i.i.i, label %bb.aa, !prof !185

bb.aa:                                            ; preds = %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i
  %i.cy = add i16 %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i, -1
  %i.cz = and i16 %i.cy, %.sroa.05.030.i.us.i.us.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.us.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.us.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i

._crit_edge.i.i.us.i.i.i.i.i.i.i.i:               ; preds = %bb.aa, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i
  %.not12.i.i.us.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.us.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.us.i.i.i.i.i.i.i.i, label %.thread.i.i.us.i.i.i.i.i.i.i.i, label %bb.ab, !prof !67

bb.ab:                                            ; preds = %._crit_edge.i.i.us.i.i.i.i.i.i.i.i
  %i.da = icmp slt <16 x i8> %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.i.i.us.i.i.i.i.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i.i.us.i.i.i.i.i.i.i.i, label %bb.ac, label %.thread25.i.i.us.i.i.i.i.i.i.i.i, !prof !67

.thread25.i.i.us.i.i.i.i.i.i.i.i:                 ; preds = %bb.ab
  %i.dc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i, %i.dd
  %i.df = and i64 %i.de, %.val7.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.us.i.i.i.i.i.i.i.i

.thread.i.i.us.i.i.i.i.i.i.i.i:                   ; preds = %.thread25.i.i.us.i.i.i.i.i.i.i.i, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i
  %.sroa.4.122.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %.thread25.i.i.us.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.us.i.i.i.i.i.i.i.i, %._crit_edge.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.us.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.ac, label %.split.us.i.i.i.i.i.i.i.i, !prof !67

bb.ac:                                            ; preds = %.thread.i.i.us.i.i.i.i.i.i.i.i, %bb.ab
  %.sroa.01.123.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %bb.ab ]
  %.sroa.4.121.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.122.i.i.us.i.i.i.i.i.i.i.i, %.thread.i.i.us.i.i.i.i.i.i.i.i ], [ undef, %bb.ab ]
  %i.dj = add i64 %i.cl, 16                       ; 2 uses
  %i.dk = add i64 %i.dj, %.sroa.0.017.i.i.us.i.i.i.i.i.i.i.i
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.us.i.i.i.i.i.i.i.i

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.et, %bb.af ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ undef, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.123.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %i.dl = phi i64 [ %i.es, %bb.af ], [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dm, align 1, !noalias !14293 ; 3 uses
  %i.dn = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i.i.i.i, %i.ch
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %.not29.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not29.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner.exit.loopexit19.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.us.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.05.030.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ei, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.do, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.split.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.030.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.dq
  %i.ds = and i64 %i.dr, %.val7.i.i.i.i.i.i.i.i.i
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !14296, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.dw = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !noalias !14296 ; 2 uses
  %i.dx = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !14296, !noundef !27
  %i.dy = icmp eq i64 %.val1.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_RNvMNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB2_9BufWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE13with_capacityCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #57
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.718 = alloca [16 x i8], align 8          ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [96 x i8], align 16               ; 7 uses
  %i.q = alloca [16 x i8], align 16               ; 11 uses
  %i.r = alloca [112 x i8], align 16              ; 9 uses
  %i.s = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !27, !align !106, !noundef !27 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 664
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.w, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = invoke noundef align 8 ptr @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType5fieldRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.ay, %bb.az, %.body109, %bb.ac, %bb.x, %.thread133, %bb.ba, %bb.e
  %.pn99.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ba ], [ %lpad.thr_comm, %.thread133 ], [ %i.af, %bb.e ], [ %i.bp, %bb.x ], [ %.pn97, %.body109 ], [ %.pn97, %bb.ac ], [ %.pn.ph, %bb.az ], [ %.pn.ph, %bb.ay ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14667)
  call void @llvm.experimental.noalias.scope.decl(metadata !14670)
  %i.ac = load ptr, ptr %i.s, align 8, !alias.scope !14673, !nonnull !27, !noundef !27
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !14673
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.av

bb.e:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, %.loopexit, %bb.g, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ah = invoke fastcc noundef zeroext i1 @_RNvXs1F_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @152)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.i, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114
  call void @llvm.experimental.noalias.scope.decl(metadata !14674)
  call void @llvm.experimental.noalias.scope.decl(metadata !14677)
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !14680, !nonnull !27, !noundef !27
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !14680
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit102.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit102

bb.i:                                             ; preds = %bb.g
  br i1 %i.ah, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.ao = load i64, ptr %i.an, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14684)
  %.idx.i = mul nuw nsw i64 %i.ao, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14686)
  %.not.i.i = icmp eq i64 %i.ao, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %.lr.ph.i.i

..loopexit_crit_edge:                             ; preds = %bb.j
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre149 = load i64, ptr %.phi.trans.insert148, align 8
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !14689, !noalias !14690, !noundef !27 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !14689, !noalias !14690, !nonnull !27 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
  %i.ar = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.as, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val4.i.i = load i64, ptr %i.at, align 8, !alias.scope !14684, !noalias !14692, !noundef !27
  %i.au = icmp eq i64 %.val4.i.i, %.val3.i.i.i
  br i1 %i.au, label %bb.l, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %.val3.i.i = load ptr, ptr %i.av, align 8, !alias.scope !14684, !noalias !14692, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !14693
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.l, %bb.k
  %.not8.i.i = icmp eq ptr %i.as, %i.ap
  br i1 %.not8.i.i, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %..loopexit_crit_edge
  %i.ax = phi i64 [ %.pre149, %..loopexit_crit_edge ], [ %.val3.i.i.i, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ]
  %i.ay = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %.val2.i.i.i, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @153, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 12, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %2, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 9, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ay, ptr %.sroa.971.0..sroa_idx, align 8
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.ax, ptr %.sroa.1072.0..sroa_idx, align 8
  invoke void @_RINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1s_5array4iter8IntoIterB2j_Kj3_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.m unwind label %bb.e

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @154, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 22, ptr %.sroa.642.0..sroa_idx, align 8
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.val2.i.i.i, ptr %.sroa.743.0..sroa_idx, align 8
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.val3.i.i.i, ptr %.sroa.844.0..sroa_idx, align 8
  invoke void @_RINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1s_5array4iter8IntoIterB2j_Kj2_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.p unwind label %bb.e

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 1, ptr %i.r, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ba = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.o, !prof !152

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc103 unwind label %bb.ba

.noexc103:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %i.r, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

.thread133:                                       ; preds = %bb.au, %bb.ai, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc103, %bb.n
  %i.bd = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !27, !noundef !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref()
          to label %bb.q unwind label %bb.ba

bb.q:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.bh = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bg, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bj, ptr noundef nonnull align 16 dereferenceable(112) %i.r, i64 112, i1 false)
  store i64 1, ptr %i.c, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bk, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !14694
  %i.bl = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 128, i64 noundef range(i64 8, 17) 16) #61, !noalias !14694 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.s, label %bb.w, !prof !67

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #57
          to label %.noexc104 unwind label %bb.t

.noexc104:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.bj)
          to label %bb.ay unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.v:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bl, ptr noundef nonnull align 16 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.bl, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.y unwind label %bb.aw

bb.x:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bq = load i64, ptr %i.p, align 16, !range !107, !noundef !27
  %.not87.not = icmp eq i64 %i.bq, -9223372036854775743
  br i1 %.not87.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_ENtNtB1D_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread133

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_ENtNtB1D_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114

bb.ab:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bs = load <2 x ptr>, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store <2 x ptr> %i.bs, ptr %i.q, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bt = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !27
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.bt, ptr %i.j, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.q, ptr %i.by, align 8
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2A_14LogDataHandler10pick_stats0EINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB1A_5array5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2G_6errors15DeltaTableErrorENCINvXso_B5l_IB5j_INtNtB4q_3vec3VecB4l_EB65_EINtNtNtB4_6traits7collect12FromIteratorIB5j_B4l_B65_EE9from_iterBQ_E0B6U_EB2G_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_ENtNtB1D_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.h

.body109:                                         ; preds = %bb.ar, %bb.ad, %.body118
  %.pn97 = phi { ptr, i32 } [ %.pn95, %.body118 ], [ %i.cc, %bb.ad ], [ %i.cz, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14697)
  call void @llvm.experimental.noalias.scope.decl(metadata !14700)
  %i.bz = load ptr, ptr %i.q, align 16, !alias.scope !14703, !nonnull !27, !noundef !27
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !14703
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %.body109
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #58
          to label %.thread unwind label %bb.av

bb.ad:                                            ; preds = %bb.as, %bb.af, %bb.ab
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.ae:                                            ; preds = %bb.ab
  %i.cd = load i64, ptr %i.k, align 16, !range !2319, !noundef !27
  %.not90 = icmp eq i64 %i.cd, -9223372036854775711
  br i1 %.not90, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit.thread unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit.thread: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit: ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.075.0.copyload = load i64, ptr %i.ce, align 8 ; 2 uses
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.718, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.476.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not92 = icmp eq i64 %.sroa.075.0.copyload, -9223372036854775808
  br i1 %.not92, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.482.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.718, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718)
  store i64 %.sroa.075.0.copyload, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cf = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !27
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ch
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterINtNtB8_4sync3ArcB14_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB43_14LogDataHandler10pick_statss_0EE9from_iterB49_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ci)
          to label %bb.ak unwind label %bb.aj

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2I_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !14704)
  call void @llvm.experimental.noalias.scope.decl(metadata !14707)
  %i.cj = load ptr, ptr %i.q, align 16, !alias.scope !14710, !nonnull !27, !noundef !27
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !14710
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114 unwind label %.thread133

.body118:                                         ; preds = %bb.ao, %bb.aj, %bb.al
  %.pn95 = phi { ptr, i32 } [ %i.cr, %bb.al ], [ %i.cm, %bb.aj ], [ %i.cx, %bb.ao ]
end_hunk_4
begin_hunk_5_@_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan7try_new:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit371: ; preds = %.thread, %bb.gj, %bb.at, %.body265
  %.sroa.0102.3 = phi i8 [ %.sroa.0102.4, %bb.at ], [ %.sroa.0102.0, %.body265 ], [ %.sroa.0102.0438, %bb.gj ], [ %.sroa.0102.0438, %.thread ]
  %.sroa.0109.4 = phi i8 [ 1, %bb.at ], [ %.sroa.0109.2, %.body265 ], [ %.sroa.0109.2439, %bb.gj ], [ %.sroa.0109.2439, %.thread ] ; 4 uses
  %.sroa.0111.7 = phi i8 [ %.sroa.0111.8, %bb.at ], [ %.sroa.0111.4, %.body265 ], [ %.sroa.0111.4440, %bb.gj ], [ %.sroa.0111.4440, %.thread ] ; 4 uses
  %.pn238 = phi { ptr, i32 } [ %i.ek, %bb.at ], [ %.pn236, %.body265 ], [ %.pn236441, %bb.gj ], [ %.pn236441, %.thread ] ; 4 uses
  %i.ej = trunc nuw i8 %.sroa.0102.3 to i1
  br i1 %i.ej, label %bb.gk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit373

bb.at:                                            ; preds = %bb.gg, %bb.as
  %.sroa.0102.4 = phi i8 [ 1, %bb.as ], [ %.sroa.0102.2, %bb.gg ]
  %.sroa.0111.8 = phi i8 [ 0, %bb.as ], [ %.sroa.0111.6, %bb.gg ]
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit371

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit290: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit288, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit365, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit290
  %.sroa.0109.6 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit290 ], [ %.sroa.0109.10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit365 ] ; 4 uses
  %.sroa.0111.9 = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit290 ], [ %.sroa.0111.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit365 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14916)
  %i.el = load ptr, ptr %i.bp, align 8, !alias.scope !14916, !noundef !27 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = atomicrmw sub ptr %i.el, i64 1 release, align 8, !noalias !14919
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit369: ; preds = %bb.gb, %bb.ga, %.body245.thread516, %.body245, %bb.az
  %.sroa.0107.2 = phi i8 [ 1, %bb.az ], [ %.sroa.0107.3, %.body245 ], [ %.sroa.0107.3521, %.body245.thread516 ], [ 1, %bb.ga ], [ 1, %bb.gb ] ; 3 uses
  %.sroa.0109.7 = phi i8 [ 1, %bb.az ], [ %.sroa.0109.8, %.body245 ], [ %.sroa.0109.8522, %.body245.thread516 ], [ 1, %bb.ga ], [ 1, %bb.gb ] ; 3 uses
  %.pn234 = phi { ptr, i32 } [ %i.et, %bb.az ], [ %.pn232, %.body245 ], [ %.pn232523, %.body245.thread516 ], [ %i.sd, %bb.ga ], [ %i.sd, %bb.gb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14924)
  %i.ep = load ptr, ptr %i.bm, align 8, !alias.scope !14924, !noundef !27 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.body265, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit369
  %i.er = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !noalias !14927
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.ay, label %.body265

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #58
          to label %.body265 unwind label %bb.ab

bb.az:                                            ; preds = %bb.fr, %bb.bc
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit369

bb.ba:                                            ; preds = %bb.z
  store ptr %.val257, ptr %i.bc, align 8, !alias.scope !14896
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !14896
  %i.eu = load ptr, ptr %i.bm, align 8, !noundef !27 ; 2 uses
  %.not207 = icmp eq ptr %i.eu, null
  br i1 %.not207, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ev = atomicrmw add ptr %i.eu, i64 1 monotonic, align 8
  %i.ew = icmp slt i64 %i.ev, 0
  br i1 %i.ew, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %bb.bd
  %.sroa.027.0 = phi ptr [ %i.ex, %bb.bd ], [ null, %bb.ba ]
  invoke void @_RINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3_11ScanBuilder14with_predicateINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.bc, ptr noundef %.sroa.027.0)
          to label %bb.bf unwind label %bb.az

bb.bd:                                            ; preds = %bb.bb
  %i.ex = load ptr, ptr %i.bm, align 8, !nonnull !27, !noundef !27
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  call void @llvm.trap()
  unreachable

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.not208 = icmp eq ptr %2, null
  br i1 %.not208, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ey = load ptr, ptr %i.br, align 8, !nonnull !27, !noundef !27
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !nonnull !27, !noundef !27
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !27
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema7project(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ez, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fb, i64 noundef %i.fd)
          to label %bb.bj unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB2_11ScanBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba)
          to label %bb.fw unwind label %bb.bi

.body245:                                         ; preds = %.body296.thread, %bb.fu, %bb.bi, %.body296
  %.sroa.0105.0 = phi i8 [ %.sroa.0105.2, %.body296 ], [ %.sroa.0105.2527, %bb.fu ], [ %.sroa.0105.2527, %.body296.thread ], [ %.sroa.0105.1, %bb.bi ]
  %.sroa.0107.3 = phi i8 [ 0, %.body296 ], [ 1, %bb.fu ], [ 1, %.body296.thread ], [ %.sroa.0109.9, %bb.bi ] ; 2 uses
  %.sroa.0109.8 = phi i8 [ 1, %.body296 ], [ 1, %bb.fu ], [ 1, %.body296.thread ], [ %.sroa.0109.9, %bb.bi ] ; 2 uses
  %.pn232 = phi { ptr, i32 } [ %.pn230, %.body296 ], [ %.pn230529, %bb.fu ], [ %.pn230529, %.body296.thread ], [ %i.ff, %bb.bi ] ; 2 uses
  %i.fe = trunc nuw i8 %.sroa.0105.0 to i1
  br i1 %i.fe, label %.body245.thread516, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan11ScanBuilderEBO_.exit369

bb.bi:                                            ; preds = %bb.fo, %bb.gd, %bb.fx, %bb.bk, %bb.bh, %bb.bg
  %.sroa.0105.1 = phi i8 [ 1, %bb.bk ], [ %.sroa.0105.15, %bb.fo ], [ 0, %bb.bh ], [ 1, %bb.bg ], [ 0, %bb.fx ], [ 0, %bb.gd ]
  %.sroa.0109.9 = phi i8 [ 1, %bb.bk ], [ 1, %bb.fo ], [ 1, %bb.bh ], [ 1, %bb.bg ], [ 1, %bb.fx ], [ 0, %bb.gd ] ; 2 uses
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body245

bb.bj:                                            ; preds = %bb.bg
  %i.fg = load ptr, ptr %i.aw, align 8, !noundef !27 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.640, ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 32, i1 false)
  br i1 %i.fh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.640, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.fv unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bj
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.346.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6165.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.640, i64 32, i1 false)
  store i64 1, ptr %i.r, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.fg, ptr %i.fk, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !14932
  %i.fl = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 80, i64 noundef range(i64 8, 17) 8) #61, !noalias !14932 ; 3 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.bm, label %bb.bp, !prof !67

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #57
          to label %.noexc294 unwind label %bb.bn

.noexc294:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.r) #60
          to label %.body245.thread516 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fl, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.fl, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.fp = getelementptr inbounds nuw [112 x i8], ptr %3, i64 %4
  store ptr null, ptr %i.au, align 8
  %.sroa.0172.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr null, ptr %.sroa.0172.sroa.5.0..sroa_idx, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr %3, ptr %.sroa.5173.0..sroa_idx, align 8
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store ptr %i.fp, ptr %.sroa.6174.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14935
  %i.fq = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i unwind label %bb.br, !noalias !14935

.noexc.i:                                         ; preds = %bb.bp
  %i.fr = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !14935
  %i.fs = icmp eq i8 %i.fr, 2
  br i1 %i.fs, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB39_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5f_7HashSetB31_EINtNtNtB9_6traits7collect6ExtendB31_E6extendBW_E0ENtNtB68_8iterator8Iterator9size_hintB3j_.exit.i.i, label %bb.bq, !prof !152

bb.bq:                                            ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #58
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB39_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5f_7HashSetB31_EINtNtNtB9_6traits7collect6ExtendB31_E6extendBW_E0ENtNtB68_8iterator8Iterator9size_hintB3j_.exit.i.i unwind label %bb.br, !noalias !14935

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB3b_14KernelScanPlan7try_new0EEB3l_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.au) #60
          to label %.body296.thread unwind label %bb.bw, !noalias !14939

bb.bs:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bu, %bb.bs
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fu, %bb.bs ], [ %i.gm, %bb.bu ]
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i295, i64 noundef 16, i64 noundef 16)
          to label %.body296.thread unwind label %bb.bw, !noalias !14935

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB39_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5f_7HashSetB31_EINtNtNtB9_6traits7collect6ExtendB31_E6extendBW_E0ENtNtB68_8iterator8Iterator9size_hintB3j_.exit.i.i: ; preds = %bb.bq, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false), !noalias !14935
  %.sroa.4.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.fq, ptr %.sroa.4.0..sroa_idx.i295, align 8, !noalias !14935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.au, i64 80, i1 false), !noalias !14939
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !14940, !nonnull !27
  %i.fw = ptrtoint ptr %.val4.i.i.i.i.i.i to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.fx, align 8, !noalias !14940, !nonnull !27
  %i.fy = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.fz = sub nuw i64 %i.fw, %i.fy
  %i.ga = lshr exact i64 %i.fz, 4
  %i.gb = load ptr, ptr %i.b, align 8, !noalias !14940, !noundef !27
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, null
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !14944, !noalias !14951, !noundef !27
  %.not54.i.i.i.i.i = icmp eq ptr %i.gd, null
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i63.i.i.i.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !14944, !noalias !14951, !nonnull !27
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val4.i64.i.i.i.i.i = load ptr, ptr %i.gf, align 8, !alias.scope !14944, !noalias !14951, !nonnull !27
  %i.gg = ptrtoint ptr %.val4.i64.i.i.i.i.i to i64
  %i.gh = ptrtoint ptr %.val.i63.i.i.i.i.i to i64
  %i.gi = sub nuw i64 %i.gg, %i.gh
  %i.gj = lshr exact i64 %i.gi, 4
  %.sroa.072.0.i.i.i.i.i = select i1 %.not54.i.i.i.i.i, i64 0, i64 %i.gj
  %i.gk = add nuw nsw i64 %.sroa.072.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %.not.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bt, !prof !152

bb.bt:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB39_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5f_7HashSetB31_EINtNtNtB9_6traits7collect6ExtendB31_E6extendBW_E0ENtNtB68_8iterator8Iterator9size_hintB3j_.exit.i.i
  %i.gl = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i295, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bu, !noalias !14955 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bt, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB39_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5f_7HashSetB31_EINtNtNtB9_6traits7collect6ExtendB31_E6extendBW_E0ENtNtB68_8iterator8Iterator9size_hintB3j_.exit.i.i
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB3a_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5g_7HashSetB32_EINtNtNtBa_6traits7collect6ExtendB32_E6extendBX_E0ENtNtB69_8iterator8Iterator4folduNCINvNvB6S_8for_each4callTB32_uENCINvXs1l_NtB5i_3mapINtB84_7HashMapB32_uEIB65_B7N_E6extendBN_E0E0EB3k_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.by unwind label %bb.bs, !noalias !14939

bb.bu:                                            ; preds = %bb.bt
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB3r_14KernelScanPlan7try_new0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB5x_7HashSetB3j_EINtNtNtBN_6traits7collect6ExtendB3j_E6extendB1e_E0EEB3B_(ptr noalias noundef align 8 dereferenceable(80) %i.b) #60
          to label %.body.i unwind label %bb.bv, !noalias !14955

bb.bv:                                            ; preds = %bb.bu
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !14955
  unreachable

bb.bw:                                            ; preds = %.body.i, %bb.br
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !14939
  unreachable

.body296:                                         ; preds = %.body304, %bb.bx
  %.sroa.0105.2 = phi i8 [ %.sroa.0105.4, %.body304 ], [ %.sroa.0105.3, %bb.bx ] ; 2 uses
  %.sroa.0119.0 = phi i8 [ %.sroa.0119.2, %.body304 ], [ %.sroa.0119.1, %bb.bx ]
  %.pn230 = phi { ptr, i32 } [ %.pn228, %.body304 ], [ %i.gq, %bb.bx ] ; 2 uses
  %i.gp = trunc nuw i8 %.sroa.0119.0 to i1
  br i1 %i.gp, label %.body296.thread, label %.body245

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325
  %.sroa.0105.3 = phi i8 [ %.sroa.0105.15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325 ]
  %.sroa.0119.1 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetReEECs14kWLkQVSKO_14deltalake_core.exit348 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit325 ]
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body296

bb.by:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !14956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.gr = load ptr, ptr %i.ax, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !nonnull !27, !noundef !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !noundef !27 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gv, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14957
  %i.gy = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc302 unwind label %bb.cd

.noexc302:                                        ; preds = %bb.by
  %i.gz = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !14957
  %i.ha = icmp eq i8 %i.gz, 2
  br i1 %i.ha, label %.noexc303, label %bb.bz, !prof !152

bb.bz:                                            ; preds = %.noexc302
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #58
          to label %.noexc303 unwind label %bb.cd

bb.ca:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301, %bb.cb
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i298, i64 noundef 16, i64 noundef 16)
          to label %.body304 unwind label %bb.cc, !noalias !14957

.noexc303:                                        ; preds = %bb.bz, %.noexc302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false), !noalias !14957
  %.sroa.4.0..sroa_idx.i298 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.gy, ptr %.sroa.4.0..sroa_idx.i298, align 8, !noalias !14957
  %.not.i299 = icmp eq i64 %i.gv, 0
  br i1 %.not.i299, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301, label %bb.cb, !prof !152

bb.cb:                                            ; preds = %.noexc303
  %i.hc = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i298, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301 unwind label %bb.ca, !noalias !14957 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301: ; preds = %bb.cb, %.noexc303
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2O_14KernelScanPlan7try_news_0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB4W_7HashSetReEINtNtNtBa_6traits7collect6ExtendB5F_E6extendBX_E0ENtNtB5N_8iterator8Iterator4folduNCINvNvB6w_8for_each4callTB5F_uENCINvXs1l_NtB4Y_3mapINtB7I_7HashMapB5F_uEIB5J_B7r_E6extendBN_E0E0EB2Y_(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.cf unwind label %bb.ca, !noalias !14957

bb.cc:                                            ; preds = %bb.ca
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !14957
  unreachable

.body304:                                         ; preds = %bb.ft, %bb.cd, %bb.ca, %bb.ce
  %.sroa.0105.4 = phi i8 [ %.sroa.0105.6, %bb.ce ], [ 1, %bb.ca ], [ %.sroa.0105.5, %bb.cd ], [ %.sroa.0105.6447, %bb.ft ]
  %.sroa.0119.2 = phi i8 [ %.sroa.0119.3, %bb.ce ], [ 1, %bb.ca ], [ 1, %bb.cd ], [ %.sroa.0119.3448, %bb.ft ]
  %.pn228 = phi { ptr, i32 } [ %.pn225.pn, %bb.ce ], [ %i.hb, %bb.ca ], [ %i.hf, %bb.cd ], [ %.pn225.pn449, %bb.ft ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef 16, i64 noundef 16)
          to label %.body296 unwind label %bb.ab

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346, %bb.bz, %bb.by
  %.sroa.0105.5 = phi i8 [ %.sroa.0105.15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit346 ], [ 1, %bb.bz ], [ 1, %bb.by ]
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body304

bb.ce:                                            ; preds = %.thread454, %bb.fs, %.noexc308
  %.sroa.0105.6 = phi i8 [ %.sroa.0105.7450, %bb.fs ], [ %.sroa.0105.9, %.noexc308 ], [ %.sroa.0105.8.ph, %.thread454 ] ; 2 uses
  %.sroa.0118.0 = phi i8 [ %.sroa.0118.1451, %bb.fs ], [ %.sroa.0118.3, %.noexc308 ], [ %.sroa.0119.5.ph, %.thread454 ]
  %.sroa.0119.3 = phi i8 [ %.sroa.0119.4452, %bb.fs ], [ %.sroa.0119.6, %.noexc308 ], [ %.sroa.0119.5.ph, %.thread454 ] ; 2 uses
  %.pn225.pn = phi { ptr, i32 } [ %.pn225453, %bb.fs ], [ %.pn223, %.noexc308 ], [ %lpad.thr_comm, %.thread454 ] ; 2 uses
  %i.hg = trunc nuw i8 %.sroa.0118.0 to i1
  br i1 %i.hg, label %bb.ft, label %.body304

.thread442:                                       ; preds = %bb.cf
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.cf:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !14960)
  %i.hi = load ptr, ptr %i.av, align 8, !alias.scope !14960, !noalias !14963, !nonnull !27, !noundef !27 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !14960, !noalias !14963, !noundef !27
  %i.hl = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 1
  %i.hn = load <16 x i8>, ptr %i.hi, align 16, !noalias !14965
  %i.ho = icmp sgt <16 x i8> %i.hn, splat (i8 -1)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !14960, !noalias !14963, !noundef !27
  store ptr %i.hi, ptr %i.ar, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.hp, ptr %.sroa.047.sroa.4.0..sroa_idx, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.hm, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  %.sroa.047.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store <16 x i1> %i.ho, ptr %.sroa.047.sroa.6.0..sroa_idx, align 8
  %.sroa.047.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.hr, ptr %.sroa.047.sroa.8.0..sroa_idx, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.at, ptr %.sroa.448.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceB11_NtNtB2x_6hasher18DefaultHashBuilderEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ar)
          to label %bb.cg unwind label %.thread442

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.hs = invoke noundef nonnull ptr @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig13file_id_field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %5)
          to label %bb.ci unwind label %bb.ch

.noexc308:                                        ; preds = %bb.cj, %.body339
  br i1 %.sroa.0117.2, label %bb.fs, label %bb.ce

.thread454:                                       ; preds = %bb.fn, %bb.eh
  %.sroa.0105.8.ph = phi i8 [ 0, %bb.eh ], [ %.sroa.0105.15, %bb.fn ]
  %.sroa.0119.5.ph = phi i8 [ 0, %bb.eh ], [ 1, %bb.fn ] ; 2 uses
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ch:                                            ; preds = %bb.cg
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.ci:                                            ; preds = %bb.cg
  store ptr %i.hs, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.cl unwind label %bb.ck

.body339:                                         ; preds = %bb.fc, %bb.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0105.9 = phi i8 [ %.sroa.0105.11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0105.10, %bb.ck ], [ %.sroa.0105.15, %bb.fc ] ; 2 uses
  %.sroa.0117.2 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0117.3, %bb.ck ], [ false, %bb.fc ]
  %.sroa.0118.3 = phi i8 [ %.sroa.0118.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0119.7, %bb.ck ], [ 1, %bb.fc ] ; 2 uses
  %.sroa.0119.6 = phi i8 [ %.sroa.0119.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0119.7, %bb.ck ], [ 1, %bb.fc ] ; 2 uses
  %.pn223 = phi { ptr, i32 } [ %.pn221, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.hw, %bb.ck ], [ %i.ql, %bb.fc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14968)
  call void @llvm.experimental.noalias.scope.decl(metadata !14971)
  %i.ht = load ptr, ptr %i.aq, align 8, !alias.scope !14974, !nonnull !27, !noundef !27
  %i.hu = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !14974
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.cj, label %.noexc308

bb.cj:                                            ; preds = %.body339
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #58
          to label %.noexc308 unwind label %bb.ab

bb.ck:                                            ; preds = %bb.fd, %bb.ef, %bb.ci
  %.sroa.0105.10 = phi i8 [ %.sroa.0105.15, %bb.fd ], [ 0, %bb.ef ], [ 1, %bb.ci ]
  %.sroa.0117.3 = phi i1 [ false, %bb.fd ], [ false, %bb.ef ], [ true, %bb.ci ]
  %.sroa.0119.7 = phi i8 [ 1, %bb.fd ], [ 0, %bb.ef ], [ 1, %bb.ci ] ; 2 uses
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.cl:                                            ; preds = %bb.ci
  %i.hx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !nonnull !27, !noundef !27 ; 4 uses
  %i.hz = load i64, ptr %i.as, align 8, !range !74, !noundef !27
  %i.ia = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !27 ; 3 uses
  %i.ic = icmp ult i64 %i.ib, 576460752303423488
  call void @llvm.assume(i1 %i.ic)
  %.idx538 = shl nuw nsw i64 %i.ib, 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx538 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.hy, ptr %i.ao, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr %i.hy, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.hz, ptr %.sroa.651.0..sroa_idx, align 8
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  store ptr %i.id, ptr %.sroa.752.0..sroa_idx, align 8
  %i.ie = icmp eq i64 %i.ib, 0
  br i1 %i.ie, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.if = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %bb.cn

.loopexit:                                        ; preds = %bb.fg, %bb.fk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp:                               ; preds = %bb.fi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.cn:                                            ; preds = %.lr.ph, %.backedge
  %i.ii = phi ptr [ %i.id, %.lr.ph ], [ %i.rb, %.backedge ]
  %i.ij = phi ptr [ %i.hy, %.lr.ph ], [ %i.ra, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14975)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  store ptr %i.ik, ptr %.sroa.550.0..sroa_idx, align 8, !alias.scope !14975
  %i.il = load ptr, ptr %i.ij, align 8, !noalias !14975, !nonnull !27, !noundef !27 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.in = load i64, ptr %i.im, align 8, !noalias !14975, !noundef !27 ; 3 uses
  %i.io = load ptr, ptr %i.aq, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !27
  %i.ir = icmp eq i64 %i.in, %i.iq
  br i1 %i.ir, label %bb.ff, label %bb.fg

._crit_edge:                                      ; preds = %.backedge, %bb.cl
end_hunk_5
begin_hunk_6_@_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalar:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.s, ptr %i.p, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4194.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.eo, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4198.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @29, ptr noundef nonnull %i.p)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #60
          to label %.body unwind label %bb.bw

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit218 unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit218: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.2150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.eu, align 8
  store i64 -9223372036854775792, ptr %0, align 16
  br label %bb.p

bb.bw:                                            ; preds = %bb.br, %.body
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.bx:                                            ; preds = %bb.bp
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [96 x i8], align 16               ; 8 uses
  %i.l = alloca [144 x i8], align 8               ; 7 uses
  %.sroa.68 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [96 x i8], align 16               ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext11SnapshotExt28scan_row_parsed_schema_arrowBY_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1224) %1)
  %i.p = load i64, ptr %i.n, align 16, !range !2319, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.p, -9223372036854775711
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.337.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.634.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.p, ptr %0, align 16
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.236.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store ptr %i.r, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  invoke void @_RNvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtB9_6schema10StructTypeINtB5_12TryFromArrowRNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE14try_from_arrow(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.ad, %bb.ae, %bb.s, %bb.af, %bb.ag, %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.bq, %bb.af ], [ %i.w, %bb.e ], [ %i.bq, %bb.ag ], [ %lpad.thr_comm.split-lp, %bb.s ], [ %.pn.ph, %bb.ae ], [ %.pn.ph, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16442)
  call void @llvm.experimental.noalias.scope.decl(metadata !16445)
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !16448, !nonnull !27, !noundef !27
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !16448
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.l, align 8, !range !66, !noundef !27 ; 2 uses
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68, i64 32, i1 false)
  store i64 -9223372036854775741, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.640.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.213.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68, i64 32, i1 false)
  store i64 1, ptr %i.g, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.x, ptr %i.ab, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !16449
  %i.ac = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 160, i64 noundef range(i64 8, 17) 8) #61, !noalias !16449 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.l, !prof !67

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #57
          to label %.noexc68 unwind label %bb.j

.noexc68:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.ab)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ac, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ag = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.m, !prof !152

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc70 unwind label %bb.af

.noexc70:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc70, %bb.l
  %i.ai = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !27, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27
  store ptr %i.ak, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.al = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval10EXPRESSION, i64 8) acquire, align 8
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.n, !prof !152

bb.n:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval10EXPRESSION, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval10EXPRESSION, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc71 unwind label %bb.o

.noexc71:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc71, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ao = load ptr, ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval10EXPRESSION, align 8, !nonnull !27, !noundef !27
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ar = load ptr, ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval10EXPRESSION, align 8, !nonnull !27, !noundef !27
  store ptr %i.ar, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.as = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval8OUT_TYPE, i64 16) acquire, align 8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.q, !prof !152

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval8OUT_TYPE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval8OUT_TYPE, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc72 unwind label %bb.aa

.noexc72:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc72, %bb.p
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16scan_row_in_eval8OUT_TYPE)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.au = load ptr, ptr %i.j, align 8, !nonnull !27, !noundef !27
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !27, !noundef !27
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.h)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aw = load i64, ptr %i.k, align 16, !range !107, !noundef !27 ; 2 uses
  %.not67 = icmp eq i64 %i.aw, -9223372036854775743
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ba = load ptr, ptr %i.az, align 16           ; 2 uses
  br i1 %.not67, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.aw, ptr %0, align 16
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ba, ptr %.sroa.559.0..sroa_idx, align 16
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ba, ptr %i.bc, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !16452)
  call void @llvm.experimental.noalias.scope.decl(metadata !16455)
  %i.bd = load ptr, ptr %i.o, align 8, !alias.scope !16458, !nonnull !27, !noundef !27
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !16458
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74: ; preds = %bb.x, %bb.w, %bb.b, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.y:                                             ; preds = %bb.v, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !16459)
  call void @llvm.experimental.noalias.scope.decl(metadata !16462)
  %i.bg = load ptr, ptr %i.o, align 8, !alias.scope !16465, !nonnull !27, !noundef !27
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !16465
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

bb.z:                                             ; preds = %bb.y
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit74

bb.aa:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16466)
  call void @llvm.experimental.noalias.scope.decl(metadata !16469)
  %i.bj = load ptr, ptr %i.i, align 8, !alias.scope !16472, !nonnull !27, !noundef !27
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !16472
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #58
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.ae, %bb.ab, %bb.d
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.ad:                                            ; preds = %bb.o, %bb.ab, %bb.aa
  %.pn.ph = phi { ptr, i32 } [ %i.an, %bb.o ], [ %lpad.thr_comm, %bb.ab ], [ %lpad.thr_comm, %bb.aa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16473)
  call void @llvm.experimental.noalias.scope.decl(metadata !16476)
  %i.bn = load ptr, ptr %i.j, align 8, !alias.scope !16479, !nonnull !27, !noundef !27
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !16479
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.ae, label %.body

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #58
          to label %.body unwind label %bb.ac

bb.af:                                            ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16480)
  call void @llvm.experimental.noalias.scope.decl(metadata !16483)
  %i.br = load ptr, ptr %i.m, align 8, !alias.scope !16486, !nonnull !27, !noundef !27
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !16486
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #58
          to label %.body unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row23parse_stats_column_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 16               ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %i.i = alloca [96 x i8], align 16               ; 7 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 5 uses
  %i.n = alloca [160 x i8], align 8               ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.759.i = alloca [24 x i8], align 8        ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [104 x i8], align 8               ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [96 x i8], align 16               ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.338.i = alloca [48 x i8], align 16       ; 5 uses
  %i.v = alloca [96 x i8], align 16               ; 11 uses
  %i.w = alloca [104 x i8], align 8               ; 9 uses
  %i.x = alloca [160 x i8], align 8               ; 13 uses
  %.sroa.631.i.sroa.10.sroa.11 = alloca [56 x i8], align 8 ; 7 uses
  %.sroa.834.i = alloca [48 x i8], align 16       ; 5 uses
  %.sroa.624.i.sroa.8.sroa.9 = alloca [56 x i8], align 8 ; 7 uses
  %i.y = alloca [176 x i8], align 8               ; 12 uses
  %i.z = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.618.i.sroa.7.sroa.9 = alloca [16 x i8], align 8 ; 6 uses
  %i.aa = alloca [48 x i8], align 16              ; 11 uses
  %i.ab = alloca [96 x i8], align 16              ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [96 x i8], align 16              ; 11 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [1 x i8], align 1                ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [80 x i8], align 8               ; 9 uses
  %i.ao = alloca [120 x i8], align 8              ; 6 uses
  %i.ap = alloca [128 x i8], align 8              ; 6 uses
  %i.aq = alloca [128 x i8], align 8              ; 6 uses
  %i.ar = alloca [120 x i8], align 8              ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.636 = alloca [32 x i8], align 8          ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
end_hunk_6
begin_hunk_7_@_RNvXs0_NtCs14kWLkQVSKO_14deltalake_core6writerNtB5_16DeltaWriterErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !27, !align !106, !noundef !27
  %i.bd = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noundef nonnull @335, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.be, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.490.0..sroa_idx, align 8
  %i.bf = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !27, !align !106, !noundef !27
  %i.bi = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noundef nonnull @336, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.bj, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCsjyY8HP3IvQ6_12object_store5ErrorNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.bk = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !27, !align !106, !noundef !27
  %i.bn = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noundef nonnull @337, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.bo, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4122.0..sroa_idx, align 8
  %i.bp = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !27, !align !106, !noundef !27
  %i.bs = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @338, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bt, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4138.0..sroa_idx, align 8
  %i.bu = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !27, !align !106, !noundef !27
  %i.bx = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noundef nonnull @339, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.bz = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !27, !align !106, !noundef !27
  %i.cc = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noundef nonnull @340, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.cd = tail call noundef zeroext i1 @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.n, %bb.e
  %.sroa.0.1.in = phi i1 [ %i.ae, %bb.c ], [ %i.al, %bb.d ], [ %i.am, %bb.e ], [ %i.ar, %bb.f ], [ %i.aw, %bb.g ], [ %i.bd, %bb.h ], [ %i.bi, %bb.i ], [ %i.bn, %bb.j ], [ %i.bs, %bb.k ], [ %i.bx, %bb.l ], [ %i.cc, %bb.m ], [ %i.cd, %bb.n ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB5_14FileScanConfigNtNtB7_6source10DataSource15scheduling_type(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #19 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXs0_NtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB5_14FileScanConfigNtNtB7_6source10DataSource5fetch(ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !38, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB5_14FileScanConfigNtNtB7_6source10DataSource6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %0) unnamed_addr #19 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @341, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs90oH6M0AZ2B_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !1822, !noundef !27 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtCs90oH6M0AZ2B_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtCs90oH6M0AZ2B_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.982, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !27
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @390, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @391, ptr noalias noundef nonnull readonly captures(address, read_provenance) @393, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @389, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @390, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB5_18MetricObserverExecNtNtCs5wg436RVUAP_24datafusion_physical_plan7display9DisplayAs6fmt_as(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i8 range(i8 0, 3) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !align !106, !noundef !27
  %i.e = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @394, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB5_18TablePropertiesExt15get_constraints(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core5table7columns10ConstraintEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtB6_6string6StringB4q_ENCNvXs0_NtB15_6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB4Y_18TablePropertiesExt15get_constraints0EE9from_iterB17_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB5_18TablePropertiesExt19checkpoint_interval(ptr noalias noundef readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 2 uses
  %i.e = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL, i64 8) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !152

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.g = load i64, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL, align 8, !range !17210, !noundef !27
  %.not = icmp eq i64 %i.d, 0
  %spec.select = select i1 %.not, i64 %i.g, i64 %i.d
  ret i64 %spec.select
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB5_18TablePropertiesExt22log_retention_duration(ptr noalias noundef readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i32, ptr %i.e, align 8, !range !17211, !noundef !27 ; 2 uses
  %i.g = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION, i64 16) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !152

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.i = load i64, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION, align 8, !noundef !27
  %i.j = load i32, ptr getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION, i64 8), align 8, !range !17212, !noundef !27
  %.not = icmp eq i32 %i.f, 1000000000            ; 2 uses
  %spec.select = select i1 %.not, i32 %i.j, i32 %i.f
  %spec.select4 = select i1 %.not, i64 %i.i, i64 %i.d
  %i.k = insertvalue { i64, i32 } poison, i64 %spec.select4, 0
  %i.l = insertvalue { i64, i32 } %i.k, i32 %spec.select, 1
  ret { i64, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB5_18TablePropertiesExt31deleted_file_retention_duration(ptr noalias noundef readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !range !17211, !noundef !27 ; 2 uses
  %i.g = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION, i64 16) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !152

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.i = load i64, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION, align 8, !noundef !27
  %i.j = load i32, ptr getelementptr inbounds (i8, ptr @_RNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB7_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION, i64 8), align 8, !range !17212, !noundef !27
  %.not = icmp eq i32 %i.f, 1000000000            ; 2 uses
  %spec.select = select i1 %.not, i32 %i.j, i32 %i.f
  %spec.select4 = select i1 %.not, i64 %i.i, i64 %i.d
  %i.k = insertvalue { i64, i32 } poison, i64 %spec.select4, 0
  %i.l = insertvalue { i64, i32 } %i.k, i32 %spec.select, 1
  ret { i64, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @172, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !align !106, !noundef !27
  %i.e = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @395, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15byte_view_array20GenericByteViewArrayNtNtB4_5types14BinaryViewTypeENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !27, !align !106, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !27, !nonnull !27
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @396, i64 noundef 1) #63
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %i.k, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @177, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !align !106, !noundef !27
  %i.e = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @395, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !27, !align !106, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !27, !nonnull !27
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @396, i64 noundef 1) #63
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %i.k, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbpG6u9KFjWn_8indexmap3map4iterINtB7_8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEENtNtNtNtB1O_4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 56, i1 false), !noalias !17213
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !alias.scope !17218
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !17218 ; 4 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !17218 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, i64 noundef 16), !noalias !17218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17218
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.d = icmp ult i64 %.sroa.5.0.copyload, 67818912035696881
  call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [136 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB5_5InputINtNtCsbvkFyIu7lgC_4core7convert4FromReE4fromCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 4), (8, 41)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.d, align 8
  store i32 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB5_16MergeBarrierExecNtNtCs5wg436RVUAP_24datafusion_physical_plan7display9DisplayAs6fmt_as(ptr noalias readonly align 8 captures(none) %0, i8 range(i8 0, 3) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !align !106, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !27, !nonnull !27
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @397, i64 noundef 12) #63
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formatsNtB5_27DataFusionFileFormatHandlerNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandler10parse_json(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine11arrow_utils10parse_json(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formatsNtB5_27DataFusionFileFormatHandlerNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandler15read_json_files(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 88686269585142076) %3, ptr noundef nonnull %4, ptr noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 16               ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %4, ptr %i.i, align 8
  store ptr %5, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.aa, %bb.n ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17219)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !17219, !noundef !27 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.body
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !17222
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.u

bb.e:                                             ; preds = %bb.a
  invoke void @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEB1W_EB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_7
begin_hunk_8_@_RNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i157.i.i.i unwind label %bb.fb, !noalias !19571

bb.fb:                                            ; preds = %bb.fa
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19637)
  %i.qp = load ptr, ptr %i.ns, align 8, !alias.scope !19640, !noalias !19557, !noundef !27 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, null
  br i1 %i.qq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.qr = atomicrmw sub ptr %i.qp, i64 1 release, align 8, !noalias !19641
  %i.qs = icmp eq i64 %i.qr, 1
  br i1 %i.qs, label %bb.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ns) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.fg, !noalias !19571

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i157.i.i.i: ; preds = %bb.fa, %bb.ez
  call void @llvm.experimental.noalias.scope.decl(metadata !19652)
  %i.qt = load ptr, ptr %i.ns, align 8, !alias.scope !19655, !noalias !19557, !noundef !27 ; 2 uses
  %i.qu = icmp eq ptr %i.qt, null
  br i1 %i.qu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit164.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i157.i.i.i
  %i.qv = atomicrmw sub ptr %i.qt, i64 1 release, align 8, !noalias !19656
  %i.qw = icmp eq i64 %i.qv, 1
  br i1 %i.qw, label %bb.ff, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit164.i.i.i

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ns) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit164.i.i.i unwind label %bb.eh, !noalias !19571

bb.fg:                                            ; preds = %bb.fd
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19571
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit164.i.i.i: ; preds = %bb.ff, %bb.fe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i157.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !19557
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i99.i.i unwind label %bb.fh, !noalias !19571

bb.fh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit164.i.i.i
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body165.thread.i.i.i unwind label %bb.fi, !noalias !19571

bb.fi:                                            ; preds = %bb.fh
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19571
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i99.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit164.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.sink.split.i.i.i unwind label %bb.fj, !noalias !19571

.body165.i.i.i:                                   ; preds = %bb.hq, %bb.hc, %bb.fj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.037.4.i.i.i = phi i8 [ %.sroa.037.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.037.3.i.i.i, %bb.hq ], [ %.sroa.037.3.i.i.i, %bb.hc ], [ %.sroa.037.5.i.i.i, %bb.fj ]
  %.pn135.i.i.i = phi { ptr, i32 } [ %.pn132.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.va, %bb.hq ], [ %i.uf, %bb.hc ], [ %i.rb, %bb.fj ] ; 2 uses
  %i.ra = trunc nuw i8 %.sroa.037.4.i.i.i to i1
  br i1 %i.ra, label %.body165.thread.i.i.i, label %.body102.i.i

bb.fj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i196.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i182.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i99.i.i
  %.sroa.037.5.i.i.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i99.i.i ], [ %.sroa.037.3.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i182.i.i.i ], [ %.sroa.037.3.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i196.i.i.i ]
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body165.i.i.i

bb.fk:                                            ; preds = %bb.ey
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !19571, !nonnull !27, !noundef !27
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %.sroa.02.010.i.i.i.i
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !19571, !nonnull !27, !noundef !27 ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !19667)
  call void @llvm.experimental.noalias.scope.decl(metadata !19670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19672
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.rh)
          to label %.noexc168.i.i.i unwind label %.loopexit.i.i, !noalias !19571

.noexc168.i.i.i:                                  ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19672
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ri)
          to label %bb.fn unwind label %bb.fm, !noalias !19673

bb.fl:                                            ; preds = %bb.fo, %bb.fm
  %.pn.i.i97.i.i = phi { ptr, i32 } [ %i.rr, %bb.fo ], [ %i.rj, %bb.fm ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #60
          to label %.body169.thread238.i.i.i unwind label %bb.fp, !noalias !19673

bb.fm:                                            ; preds = %.noexc168.i.i.i
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fn:                                            ; preds = %.noexc168.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 120
  %i.rl = load i8, ptr %i.rk, align 8, !range !1769, !alias.scope !19670, !noalias !19673, !noundef !27
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 112
  %i.rn = load i64, ptr %i.rm, align 8, !alias.scope !19670, !noalias !19673, !noundef !27
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rg, i64 121
  %i.rp = load i8, ptr %i.ro, align 1, !range !1769, !alias.scope !19670, !noalias !19673, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19672
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rg, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rq)
          to label %bb.fs unwind label %bb.fo, !noalias !19673

bb.fo:                                            ; preds = %bb.fn
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #60
          to label %bb.fl unwind label %bb.fp, !noalias !19673

bb.fp:                                            ; preds = %bb.fo, %bb.fl
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19673
  unreachable

bb.fq:                                            ; preds = %bb.ey
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.010.i.i.i.i, i64 noundef %i.qj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #57
          to label %bb.fr unwind label %.body169.i.thread.i.i, !noalias !19571

.body169.i.i.i:                                   ; preds = %bb.hy, %.loopexit.i.i
  %.sroa.040.1.i.i.i = phi i8 [ %.sroa.040.3.ph.i.i.i, %bb.hy ], [ %.sroa.040.2.i.ph.i.i, %.loopexit.i.i ]
  %.pn130.i.i.i = phi { ptr, i32 } [ %.pn128.ph.i.i.i, %bb.hy ], [ %lpad.loopexit.i.i, %.loopexit.i.i ] ; 2 uses
  %i.rt = trunc nuw i8 %.sroa.040.1.i.i.i to i1
  br i1 %i.rt, label %.body169.thread238.i.i.i, label %.body155.i.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit194.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.fk
  %.sroa.040.2.i.ph.i.i = phi i8 [ 1, %bb.fk ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit194.i.i.i ], [ %.sroa.040.8.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i.i.i

.body169.i.thread.i.i:                            ; preds = %bb.fq
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body169.thread238.i.i.i

bb.fr:                                            ; preds = %bb.fq
  unreachable

bb.fs:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nv, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !19674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !19674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !19674
  store i8 %i.rl, ptr %i.nx, align 8, !alias.scope !19667, !noalias !19674
  store i64 %i.rn, ptr %i.ny, align 8, !alias.scope !19667, !noalias !19674
  store i8 %i.rp, ptr %i.nz, align 1, !alias.scope !19667, !noalias !19674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !19557
  %i.ru = invoke { ptr, ptr } @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch13remove_column(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.af, i64 noundef %.sroa.02.010.i.i.i.i)
          to label %bb.fu unwind label %bb.ft, !noalias !19571 ; 2 uses

bb.ft:                                            ; preds = %bb.ho, %bb.gy, %bb.fs
  %.sroa.040.4.i.i.i = phi i8 [ %.sroa.040.8.i.i.i, %bb.gy ], [ 0, %bb.ho ], [ 1, %bb.fs ]
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.fu:                                            ; preds = %bb.fs
  %i.rw = extractvalue { ptr, ptr } %i.ru, 0
  %i.rx = extractvalue { ptr, ptr } %i.ru, 1
  store ptr %i.rw, ptr %i.aa, align 8, !noalias !19557
  store ptr %i.rx, ptr %i.oa, align 8, !noalias !19557
  %i.ry = load ptr, ptr %i.ob, align 8, !alias.scope !19558, !noalias !19559, !nonnull !27, !noundef !27
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %.val143.i.i.i = load ptr, ptr %.sroa.8146.0..sroa_idx147.i.i, align 8, !alias.scope !19555, !noalias !19675
  %.val144.i.i.i = load i64, ptr %i.oc, align 8, !alias.scope !19555, !noalias !19675
  %i.sa = invoke fastcc noundef align 8 ptr @_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE3getBO_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.rz, ptr %.val143.i.i.i, i64 %.val144.i.i.i)
          to label %bb.fw unwind label %bb.fv, !noalias !19571 ; 2 uses

bb.fv:                                            ; preds = %bb.hi, %bb.gx, %bb.gu, %bb.fy, %bb.fu
  %.sroa.040.6.i.i.i = phi i8 [ 1, %bb.fu ], [ 0, %bb.gx ], [ 0, %bb.hi ], [ 0, %bb.gu ], [ 1, %bb.fy ]
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.fw:                                            ; preds = %bb.fu
  %.not122.i.i.i = icmp eq ptr %i.sa, null
  br i1 %.not122.i.i.i, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !19557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !19557
  %i.sc = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8, !noalias !19557
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.fy, !prof !152

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19557
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.c, align 8, !noalias !19557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19557
  store ptr %i.c, ptr %i.b, align 8, !noalias !19557
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc171.i.i.i unwind label %bb.fv, !noalias !19571

.noexc171.i.i.i:                                  ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19557
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.fz:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !19557
  br label %bb.gv

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc171.i.i.i, %bb.fx
  %i.se = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !noalias !19557, !nonnull !27, !noundef !27
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !19557
  %i.sg = load ptr, ptr %i.od, align 8, !alias.scope !19558, !noalias !19559, !nonnull !27, !noundef !27
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 152
  %i.si = load ptr, ptr %i.sh, align 8, !noalias !19571, !nonnull !27, !noundef !27
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !19571, !nonnull !27, !noundef !27
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !19571, !nonnull !27, !noundef !27
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 48 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !noalias !19571, !nonnull !27, !noundef !27
  %i.sp = atomicrmw add ptr %i.so, i64 1 monotonic, align 8, !noalias !19571
  %i.sq = icmp slt i64 %i.sp, 0
  br i1 %i.sq, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.sr = load ptr, ptr %i.sn, align 8, !noalias !19571, !nonnull !27, !noundef !27 ; 2 uses
  store ptr %i.sr, ptr %i.x, align 8, !noalias !19557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !19557
  %i.ss = load ptr, ptr %i.sa, align 8, !noalias !19571, !nonnull !27, !noundef !27 ; 4 uses
  %i.st = atomicrmw add ptr %i.ss, i64 1 monotonic, align 8, !noalias !19571
  %i.su = icmp slt i64 %i.st, 0
  br i1 %i.su, label %bb.gd, label %bb.gc

bb.gb:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.gc:                                            ; preds = %bb.ga
  store ptr %i.ss, ptr %i.w, align 8, !noalias !19557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !19557
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.oe)
          to label %bb.gf unwind label %bb.hf, !noalias !19561

bb.gd:                                            ; preds = %bb.ga
  call void @llvm.trap()
  unreachable

bb.ge:                                            ; preds = %bb.gf
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.gf:                                            ; preds = %bb.gc
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sf, ptr noundef nonnull %i.sr, ptr noundef nonnull %i.ss, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.v)
          to label %bb.gg unwind label %bb.ge, !noalias !19571

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !19557
  %i.sw = load i64, ptr %i.y, align 16, !range !107, !noalias !19557, !noundef !27
  %.not123.i.i.i = icmp eq i64 %i.sw, -9223372036854775743
  br i1 %.not123.i.i.i, label %bb.gl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.y, i64 96, i1 false), !noalias !19557
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !19676
  %i.sx = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #61, !noalias !19676 ; 3 uses
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %bb.gi, label %bb.gz, !prof !67

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #57
          to label %.noexc172.i.i.i unwind label %bb.gj, !noalias !19571

.noexc172.i.i.i:                                  ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gi
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.l) #60
          to label %bb.hw unwind label %bb.gk, !noalias !19571

bb.gk:                                            ; preds = %bb.gj
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19571
  unreachable

bb.gl:                                            ; preds = %bb.gg
  %i.tb = load ptr, ptr %i.of, align 8, !noalias !19557, !nonnull !27, !noundef !27 ; 2 uses
  %i.tc = load ptr, ptr %i.og, align 16, !noalias !19557, !nonnull !27, !align !106, !noundef !27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !19557
  store ptr %i.tb, ptr %i.z, align 8, !noalias !19557
  store ptr %i.tc, ptr %i.oh, align 8, !noalias !19557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !19557
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.te = load i64, ptr %i.td, align 8, !range !508, !invariant.load !27, !noalias !19571
  %i.tf = add nsw i64 %i.te, -1
  %i.tg = and i64 %i.tf, -16
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !19557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !19557
  invoke void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.u, ptr noundef nonnull %i.ti, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.tc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.t)
          to label %bb.go unwind label %bb.gm, !noalias !19571

bb.gm:                                            ; preds = %bb.gl
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body137.i.i.i

.body137.i.i.i:                                   ; preds = %bb.gr, %bb.gm
  %eh.lpad-body138.i.i.i = phi { ptr, i32 } [ %i.tj, %bb.gm ], [ %i.tq, %bb.gr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19679)
  call void @llvm.experimental.noalias.scope.decl(metadata !19682)
  %i.tk = load ptr, ptr %i.z, align 8, !alias.scope !19685, !noalias !19557, !nonnull !27, !noundef !27
  %i.tl = atomicrmw sub ptr %i.tk, i64 1 release, align 8, !noalias !19686
  %i.tm = icmp eq i64 %i.tl, 1
  br i1 %i.tm, label %bb.gn, label %bb.hw

bb.gn:                                            ; preds = %.body137.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #58
          to label %bb.hw unwind label %bb.ee, !noalias !19571

bb.go:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !19557
  %i.tn = load i64, ptr %i.u, align 16, !range !107, !noalias !19557, !noundef !27
  %.not124.i.i.i = icmp eq i64 %i.tn, -9223372036854775743
  br i1 %.not124.i.i.i, label %bb.gt, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false), !noalias !19557
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !19687
  %i.to = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #61, !noalias !19687 ; 3 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.gq, label %bb.gw, !prof !67

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #57
          to label %.noexc174.i.i.i unwind label %bb.gr, !noalias !19571

.noexc174.i.i.i:                                  ; preds = %bb.gq
  unreachable

bb.gr:                                            ; preds = %bb.gq
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.k) #60
          to label %.body137.i.i.i unwind label %bb.gs, !noalias !19571

bb.gs:                                            ; preds = %bb.gr
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19571
  unreachable

bb.gt:                                            ; preds = %bb.go
  %.sroa.079.0.copyload.i.i.i = load i64, ptr %i.oi, align 8, !noalias !19557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.782.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !19557
  %i.ts = load <2 x ptr>, ptr %.sroa.580.0..sroa_idx.i.i.i, align 16, !noalias !19557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !19557
  store i64 %.sroa.079.0.copyload.i.i.i, ptr %i.s, align 8, !noalias !19557
  store <2 x ptr> %i.ts, ptr %.sroa.5.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !19557
  call void @llvm.experimental.noalias.scope.decl(metadata !19690)
  call void @llvm.experimental.noalias.scope.decl(metadata !19693)
  %i.tt = load ptr, ptr %i.z, align 8, !alias.scope !19696, !noalias !19557, !nonnull !27, !noundef !27
  %i.tu = atomicrmw sub ptr %i.tt, i64 1 release, align 8, !noalias !19697
  %i.tv = icmp eq i64 %i.tu, 1
  br i1 %i.tv, label %bb.gu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit177.i.i.i

bb.gu:                                            ; preds = %bb.gt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit177.i.i.i unwind label %bb.fv, !noalias !19571

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit177.i.i.i: ; preds = %bb.gu, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !19557
  br label %bb.gv

bb.gv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit177.i.i.i, %bb.fz
  %i.tw = load i8, ptr %i.oj, align 8, !range !1769, !alias.scope !19558, !noalias !19559, !noundef !27
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %bb.hj, label %bb.hi

bb.gw:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.to, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false), !noalias !19571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !19557
  store i64 13, ptr %i.nt, align 8, !alias.scope !19548, !noalias !19619
  store ptr %i.to, ptr %.sroa.260.0..sroa_idx.i.i.i, align 8, !alias.scope !19548, !noalias !19619
  store ptr @161, ptr %.sroa.361.0..sroa_idx.i.i.i, align 8, !alias.scope !19548, !noalias !19619
  store i64 1, ptr %i.cn, align 8, !alias.scope !19548, !noalias !19619
  call void @llvm.experimental.noalias.scope.decl(metadata !19698)
  call void @llvm.experimental.noalias.scope.decl(metadata !19701)
end_hunk_8
begin_hunk_9_@_RNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.jj
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dr), !noalias !19440
  br label %_RNCNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB7_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bh_.exit

bb.jl:                                            ; preds = %bb.jm, %.body.i
  resume { ptr, i32 } %.pn38.pn.i

bb.jm:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df) #60
          to label %bb.jl unwind label %bb.jf, !noalias !19440

_RNCNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB7_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bh_.exit: ; preds = %bb.g, %bb.jj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.8.0 = phi i64 [ %.sroa.4.sroa.4.sroa.5.1.i, %bb.jj ], [ %.sroa.4.sroa.4.sroa.5.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.8.0.copyload14, %bb.g ]
  %.sroa.7.0 = phi ptr [ %.sroa.4.sroa.4.sroa.4.1.i, %bb.jj ], [ %.sroa.4.sroa.4.sroa.4.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.7.0.copyload12, %bb.g ]
  %.sroa.6.0 = phi i64 [ %.sroa.4.sroa.4.sroa.0.1.i, %bb.jj ], [ %.sroa.4.sroa.4.sroa.0.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.6.0.copyload10, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.4.sroa.0.1.i, %bb.jj ], [ %.sroa.4.sroa.0.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.5.0.copyload8, %bb.g ]
  %.sroa.05.0 = phi i64 [ %.sroa.0.1.i, %bb.jj ], [ %.sroa.0.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.dq, %bb.g ]
  %.sroa.9.0 = phi i64 [ %.sroa.4.sroa.5.1.i, %bb.jj ], [ %.sroa.4.sroa.5.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.9.0.copyload16, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  store i64 %.sroa.05.0, ptr %i.dh, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.jn

bb.jn:                                            ; preds = %_RNCNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB7_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bh_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @_RNvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics8baselineNtB2_15BaselineMetrics11record_poll(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.xy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dh)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(248) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !27, !align !106, !noundef !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !27, !nonnull !27
  call void %i.g(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.c) #63
  %i.h = load i64, ptr %i.a, align 8, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !noundef !27
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5_19DeltaScanMetaStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [88 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.6.i.sroa.7.i = alloca [24 x i8], align 8 ; 6 uses
  %i.q = alloca [88 x i8], align 8                ; 14 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [160 x i8], align 8              ; 9 uses
  %i.ae = alloca [40 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [136 x i8], align 8              ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [136 x i8], align 8              ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [136 x i8], align 8              ; 6 uses
  %i.al = alloca [136 x i8], align 8              ; 6 uses
  %i.am = alloca [96 x i8], align 16              ; 4 uses
  %i.an = alloca [96 x i8], align 16              ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [40 x i8], align 8               ; 5 uses
  %i.au = alloca [96 x i8], align 8               ; 4 uses
  %i.av = alloca [144 x i8], align 8              ; 8 uses
  %.sroa.053.i = alloca [136 x i8], align 8       ; 7 uses
  %i.aw = alloca [120 x i8], align 8              ; 4 uses
  %i.ax = alloca [120 x i8], align 8              ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [120 x i8], align 8              ; 4 uses
  %i.ba = alloca [120 x i8], align 8              ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [96 x i8], align 8               ; 6 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [96 x i8], align 16              ; 10 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 5 uses
  %i.bi = alloca [96 x i8], align 16              ; 9 uses
  %i.bj = alloca [16 x i8], align 8               ; 12 uses
  %i.bk = alloca [40 x i8], align 8               ; 13 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [80 x i8], align 8               ; 13 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [80 x i8], align 8               ; 13 uses
  %i.bt = alloca [32 x i8], align 8               ; 7 uses
  %i.bu = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.12.i = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.67.sroa.7.i = alloca [24 x i8], align 8  ; 6 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [40 x i8], align 8               ; 7 uses
  %i.bx = alloca [8 x i8], align 8                ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 7 uses
  %i.bz = alloca [40 x i8], align 8               ; 9 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.6.i = alloca [32 x i8], align 8          ; 6 uses
  %i.cd = alloca [40 x i8], align 8               ; 8 uses
  %i.ce = alloca [24 x i8], align 8               ; 7 uses
  %i.cf = alloca [8 x i8], align 8                ; 6 uses
  %i.cg = alloca [48 x i8], align 8               ; 21 uses
  %i.ch = alloca [24 x i8], align 8               ; 12 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [48 x i8], align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringjEE9pop_frontCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.ck = load i64, ptr %i.ci, align 8, !range !66, !noundef !27
  %.not = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not, label %bb.ge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19806)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i64 %i.cm, ptr %i.cf, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !19808
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvMs9_NtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5valueNtB5_4Time5timer(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
          to label %bb.d unwind label %bb.c, !noalias !19809

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value16ScopedTimerGuardECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.thread.i, %bb.c
  %.pn203.i = phi { ptr, i32 } [ %i.co, %bb.c ], [ %.pn201.i, %.thread.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch) #60
          to label %common.resume.i unwind label %bb.co, !noalias !19801

bb.c:                                             ; preds = %bb.fw, %bb.ft, %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value16ScopedTimerGuardECs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !19808
  %i.cp = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project12EMPTY_SCHEMA, i64 8) acquire, align 8, !noalias !19808
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e, !prof !152

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !19808
  store ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project12EMPTY_SCHEMA, ptr %i.ab, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !19808
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !19808
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project12EMPTY_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc.i unwind label %bb.f, !noalias !19801

.noexc.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !19808
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i:                                        ; preds = %bb.ga, %.critedge.thread298.i, %.thread347.i, %bb.fu, %.body216.i, %bb.ed, %bb.dk, %.body218.i, %.critedge.i, %bb.bp, %.body229.i, %.thread288.i, %bb.f
  %.pn201.i = phi { ptr, i32 } [ %i.cr, %bb.f ], [ %lpad.thr_comm.split-lp.i, %bb.ga ], [ %lpad.thr_comm.i, %.thread288.i ], [ %.pn197293.i, %.critedge.thread298.i ], [ %lpad.thr_comm.split-lp303.i, %.critedge.i ], [ %.pn.i, %bb.bp ], [ %.pn.i, %.body229.i ], [ %lpad.thr_comm.split-lp314.i, %bb.ed ], [ %.pn194.pn310.i, %.thread347.i ], [ %eh.lpad-body219.i, %bb.dk ], [ %eh.lpad-body219.i, %.body218.i ], [ %i.qc, %.body216.i ], [ %i.qa, %bb.fu ]
  invoke void @_RNvXsf_NtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5valueNtB5_16ScopedTimerGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value16ScopedTimerGuardECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.co, !noalias !19801

bb.f:                                             ; preds = %bb.j, %bb.g, %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc.i, %bb.d
  %i.cs = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project12EMPTY_SCHEMA, align 8, !noalias !19808, !nonnull !27, !noundef !27
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8, !noalias !19801
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cv = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project12EMPTY_SCHEMA, align 8, !noalias !19808, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !19808
  store i64 0, ptr %i.cb, align 8, !noalias !19808
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cw, align 8, !noalias !19808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 0, ptr %i.cx, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !19808
  %i.cy = load i64, ptr %i.cf, align 8, !noalias !19808, !noundef !27
  store i64 1, ptr %i.ca, align 8, !noalias !19808
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.cy, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19808
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i8 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !19808
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch20try_new_with_options(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cc, ptr noundef nonnull %i.cv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca)
          to label %bb.i unwind label %bb.f, !noalias !19801

bb.h:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !19808
  %i.cz = load i64, ptr %i.cc, align 8, !range !66, !noalias !19808, !noundef !27 ; 2 uses
  %i.da = icmp eq i64 %i.cz, -9223372036854775808
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !19808
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !19808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !19808
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap)
          to label %bb.gb unwind label %bb.f, !noalias !19801

bb.k:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !19808
  store i64 %i.cz, ptr %i.cd, align 8, !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !19808
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !19804, !noalias !19809, !nonnull !27, !noundef !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  invoke void @_RINvXs2_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBK_3vec3VecbEEINtNtB6_1t3MapBG_B1i_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__getBG_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
          to label %bb.l unwind label %bb.ga, !noalias !19801

.thread288.i:                                     ; preds = %bb.dw, %bb.bw, %bb.bt
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %i.by, align 8, !noalias !19808, !noundef !27 ; 7 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.bo, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.7271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.7271.0.copyload.i = load ptr, ptr %.sroa.7271.0..sroa_idx.i, align 8, !noalias !19808 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !19808
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7271.0.copyload.i, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !19801, !noundef !27 ; 2 uses
  store i64 %i.dh, ptr %i.bx, align 8, !noalias !19808
  %i.di = icmp sgt i64 %i.dh, -1
  call void @llvm.assume(i1 %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !19808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false), !noalias !19808
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.7271.0.copyload.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !19801, !nonnull !27, !noundef !27 ; 3 uses
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !19801, !noundef !27 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !19806, !noalias !19810, !nonnull !27, !noundef !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !19806, !noalias !19810, !noundef !27
  call void @llvm.experimental.noalias.scope.decl(metadata !19811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !19808
  store ptr %i.dn, ptr %i.z, align 8, !noalias !19814
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !noalias !19814
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !19811, !noalias !19818, !noundef !27 ; 4 uses
  %i.dt = icmp ugt i64 %i.dl, %i.ds
  br i1 %i.dt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !19814
  store i64 %i.dl, ptr %i.v, align 8, !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !19814
  store i64 %i.ds, ptr %i.u, align 8, !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !19814
  store ptr %i.v, ptr %i.t, align 8, !noalias !19814
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !19814
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.du, align 8, !noalias !19814
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !19814
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.z, ptr %i.dv, align 8, !noalias !19814
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !19814
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @261, ptr noundef nonnull %i.t)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.o, !noalias !19819

.body.i.i:                                        ; preds = %bb.bl, %.body60.i.i, %bb.az, %bb.ay, %bb.ax, %bb.aq, %bb.ap, %bb.ao, %bb.aj, %bb.ae, %bb.ad, %.body.i.i.i, %bb.o
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body60.i.i ], [ %i.fv, %bb.aj ], [ %i.gr, %bb.ax ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.gc, %bb.ao ], [ %i.dw, %bb.o ], [ %i.fm, %bb.ad ], [ %i.fm, %bb.ae ], [ %i.gc, %bb.aq ], [ %i.gc, %bb.ap ], [ %i.gr, %bb.az ], [ %i.gr, %bb.ay ], [ %i.hq, %bb.bl ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bu) #60
          to label %.body229.i unwind label %bb.bd, !noalias !19820

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i64.i.i, %bb.bb, %bb.as, %bb.af, %.noexc.i.i, %bb.p, %bb.n
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.p:                                             ; preds = %bb.m
  %i.dx = sub nuw i64 %i.ds, %i.dl                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !19814
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl ; 2 uses
  %.not.i.i = icmp eq i64 %i.ds, %i.dl
  %..i.i = select i1 %.not.i.i, i8 2, i8 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !19821
  store ptr %i.dk, ptr %i.l, align 8, !alias.scope !19825, !noalias !19829
  %.sroa.5.0..sroa_idx73.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.dy, ptr %.sroa.5.0..sroa_idx73.i.i, align 8, !alias.scope !19825, !noalias !19829
  %.sroa.676.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.dx, ptr %.sroa.676.0..sroa_idx.i.i, align 8, !alias.scope !19825, !noalias !19829
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 %..i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !19825, !noalias !19829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19830
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc.i.i unwind label %bb.o, !noalias !19819

.noexc.i.i:                                       ; preds = %bb.p
  %i.dz = load i64, ptr %i.j, align 8, !noalias !19830, !noundef !27
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !38, !noalias !19830, !noundef !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !19830 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19830
  %i.ee = trunc nuw i64 %i.eb to i1
  %i.ef = add i64 %i.ed, %i.dx                    ; 2 uses
  %i.eg = icmp uge i64 %i.ef, %i.ed
  %i.eh = call i64 @llvm.uadd.sat.i64(i64 %i.dz, i64 %i.dx) ; 2 uses
  %i.ei = icmp eq i64 %i.eh, %i.ef
  %i.ej = and i1 %i.eg, %i.ei
  %or.cond.i.i = select i1 %i.ee, i1 %i.ej, i1 false
  %.sroa.0.0.i.i.i = select i1 %or.cond.i.i, i64 %i.eh, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19821
  invoke void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder15boolean_builderNtB4_14BooleanBuilder13with_capacity(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.k, i64 noundef %.sroa.0.0.i.i.i)
          to label %.noexc47.i.i unwind label %bb.o, !noalias !19819

bb.q:                                             ; preds = %bb.ab, %bb.y, %.noexc.i.i.i, %.noexc47.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.w, %bb.v, %bb.u, %bb.r, %bb.q
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.q ], [ %i.ez, %bb.u ], [ %i.ez, %bb.w ], [ %i.ez, %bb.v ], [ %i.ev, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array7builder15boolean_builder14BooleanBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.k) #60
          to label %.body.i.i unwind label %bb.ah, !noalias !19834

.noexc47.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19835
  store ptr %i.dk, ptr %i.f, align 8, !noalias !19829
  %.sroa.5.0..sroa_idx74.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dy, ptr %.sroa.5.0..sroa_idx74.i.i, align 8, !noalias !19829
end_hunk_9
begin_hunk_10_@_RNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5_19DeltaScanMetaStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next:bb.a
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !19814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !19814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !19814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !19814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !19814
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bf unwind label %bb.be, !noalias !19819

.body60.i.i:                                      ; preds = %bb.bj, %bb.bi, %bb.be
  %.pn.i.i = phi { ptr, i32 } [ %i.hn, %bb.bi ], [ %i.he, %bb.be ], [ %i.ho, %bb.bj ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #60
          to label %.body.i.i unwind label %bb.bd, !noalias !19819

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.bg, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i.i

bb.bf:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.hf = load i64, ptr %i.o, align 8, !range !38, !noalias !19814, !noundef !27
  %i.hg = trunc nuw i64 %i.hf to i1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !66, !noalias !19814, !noundef !27 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.hg, label %bb.bg, label %bb.bh, !prof !67

bb.bg:                                            ; preds = %bb.bf
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !19814
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hi, i64 %i.hk) #57
          to label %bb.bn unwind label %bb.be, !noalias !19819

bb.bh:                                            ; preds = %bb.bf
  %i.hl = load ptr, ptr %i.hj, align 8, !noalias !19814, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19814
  store i64 %i.hi, ptr %i.s, align 8, !noalias !19814
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.hl, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !19814
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !19814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !19814
  store ptr %i.x, ptr %i.r, align 8, !noalias !19814
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !19814
  %i.hm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.hm, align 8, !noalias !19814
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !19814
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @29, ptr noundef nonnull %i.r)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit59.i.i unwind label %bb.bi, !noalias !19819

bb.bi:                                            ; preds = %bb.bh
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #60
          to label %.body60.i.i unwind label %bb.bd, !noalias !19819

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit59.i.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !19814
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bj, !noalias !19819

bb.bj:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit59.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body60.i.i unwind label %bb.bk, !noalias !19819

bb.bk:                                            ; preds = %bb.bj
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19819
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit59.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.be, !noalias !19819

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !19814
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i64.i.i unwind label %bb.bl, !noalias !19819

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i unwind label %bb.bm, !noalias !19819

bb.bm:                                            ; preds = %bb.bl
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19819
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i64.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit68.i.i unwind label %bb.o, !noalias !19819

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit68.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i64.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !19814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !19907
  br label %bb.au

bb.bn:                                            ; preds = %bb.bg
  unreachable

bb.bo:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !19808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false), !noalias !19808
  br label %bb.cn

.body229.i:                                       ; preds = %bb.bx, %bb.bq, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %i.ib, %bb.bx ], [ %i.hu, %bb.bq ], [ %.pn.pn.i.i, %.body.i.i ] ; 2 uses
  %i.hs = atomicrmw sub ptr %i.df, i64 4 release, align 8, !noalias !19801
  %i.ht = icmp eq i64 %i.hs, 6
  br i1 %i.ht, label %bb.bp, label %.thread.i, !prof !67

bb.bp:                                            ; preds = %.body229.i
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.df)
          to label %.thread.i unwind label %bb.co, !noalias !19801

bb.bq:                                            ; preds = %bb.au
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body229.i

bb.br:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !19808
  %i.hv = icmp eq i64 %.sroa.0273.0.i, -9223372036854775808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, i64 24, i1 false), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br i1 %i.hv, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %.sroa.081.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.081.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7.i, i64 24, i1 false), !noalias !20002
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.sroa.7274.0.i, ptr %i.hw, align 8, !alias.scope !19801, !noalias !20002
  %.sroa.282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i64 %.sroa.13.0.i, ptr %.sroa.282.0..sroa_idx.i, align 8, !alias.scope !19801, !noalias !20002
  store i64 1, ptr %i.cg, align 8, !alias.scope !19801, !noalias !20002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !19808
  %i.hx = atomicrmw sub ptr %i.df, i64 4 release, align 8, !noalias !19801
  %i.hy = icmp eq i64 %i.hx, 6
  br i1 %i.hy, label %bb.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit233.i, !prof !67

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit233.i unwind label %.thread288.i, !noalias !19801

bb.bu:                                            ; preds = %bb.br
  %.sroa.2180.sroa.2.0..sroa.2180.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !19808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2180.sroa.2.0..sroa.2180.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.7.i, i64 24, i1 false), !noalias !19808
  store i64 %.sroa.0273.0.i, ptr %i.bw, align 8, !noalias !19808
  %.sroa.2180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.sroa.7274.0.i, ptr %.sroa.2180.0..sroa_idx.i, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !19808
  store i64 %.sroa.13.0.i, ptr %i.bv, align 8, !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7.i)
  %.not188.i = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %.not188.i, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.cm, %bb.ck, %bb.ch, %bb.cg, %bb.cf, %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 40, i1 false), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !19808
  %i.hz = atomicrmw sub ptr %i.df, i64 4 release, align 8, !noalias !19801
  %i.ia = icmp eq i64 %i.hz, 6
  br i1 %i.ia, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit235.i, !prof !67

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit235.i unwind label %.thread288.i, !noalias !19801

bb.bx:                                            ; preds = %bb.cl, %bb.cj, %bb.ci, %bb.ce, %bb.cb, %bb.ca
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bw) #60
          to label %.body229.i unwind label %bb.co, !noalias !19801

bb.by:                                            ; preds = %bb.bu
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !19804, !noalias !19809, !nonnull !27, !noundef !27
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = atomicrmw add ptr %i.ie, i64 1 monotonic, align 8, !noalias !19801 ; 0 uses
  %i.ig = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !19808
  %i.ih = icmp ult i64 %i.ig, 2
  br i1 %i.ih, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.ii = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, i64 16) monotonic, align 8, !noalias !19808 ; 3 uses
  switch i8 %i.ii, label %bb.ca [
    i8 0, label %bb.cg
    i8 1, label %bb.cb
    i8 2, label %bb.cb
  ], !prof !20003

bb.ca:                                            ; preds = %bb.bz
  %i.ij = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE)
          to label %bb.cc unwind label %bb.bx, !noalias !19801 ; 2 uses

bb.cb:                                            ; preds = %bb.bz, %bb.cc, %bb.bz
  %.sroa.019.0.i = phi i8 [ %i.ij, %bb.cc ], [ %i.ii, %bb.bz ], [ %i.ii, %bb.bz ]
  %i.ik = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !noalias !19808, !nonnull !27, !align !106, !noundef !27
  %i.il = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ik, i8 noundef %.sroa.019.0.i)
          to label %bb.cd unwind label %bb.bx, !noalias !19801

bb.cc:                                            ; preds = %bb.ca
  %i.im = icmp eq i8 %i.ij, 0
  br i1 %i.im, label %bb.cg, label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  br i1 %i.il, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !19808
  %i.in = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !noalias !19808, !nonnull !27, !align !106, !noundef !27
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !19808
  store ptr @162, ptr %i.br, align 8, !noalias !19808
  %i.ip = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.ip, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !19808
  %i.iq = load ptr, ptr %i.dm, align 8, !alias.scope !19806, !noalias !19810, !nonnull !27, !noundef !27
  %i.ir = load i64, ptr %i.do, align 8, !alias.scope !19806, !noalias !19810, !noundef !27
  store ptr %i.iq, ptr %i.bq, align 8, !noalias !19808
  %i.is = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.ir, ptr %i.is, align 8, !noalias !19808
  store ptr %i.br, ptr %i.bs, align 8, !noalias !19808
  %i.it = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr @163, ptr %i.it, align 8, !noalias !19808
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bq, ptr %i.iu, align 8, !noalias !19808
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr @164, ptr %i.iv, align 8, !noalias !19808
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %i.bx, ptr %i.iw, align 8, !noalias !19808
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store ptr @165, ptr %i.ix, align 8, !noalias !19808
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store ptr %i.cf, ptr %i.iy, align 8, !noalias !19808
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store ptr @165, ptr %i.iz, align 8, !noalias !19808
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr %i.bv, ptr %i.ja, align 8, !noalias !19808
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store ptr @165, ptr %i.jb, align 8, !noalias !19808
  store i64 1, ptr %i.bt, align 8, !noalias !19808
  %.sroa.021.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bs, ptr %.sroa.021.sroa.4.0..sroa_idx.i, align 8, !noalias !19808
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 5, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !19808
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.io, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !19808
  invoke fastcc void @_RNCNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_projects0_0Bh_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bt)
          to label %bb.cf unwind label %bb.bx, !noalias !19801

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !19808
  br label %bb.bv

bb.cg:                                            ; preds = %bb.cd, %bb.cc, %bb.bz, %bb.by
  %i.jc = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !19808
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.ch, label %bb.bv

bb.ch:                                            ; preds = %bb.cg
  %i.je = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !19808 ; 2 uses
  %i.jf = icmp ult i64 %i.je, 6
  call void @llvm.assume(i1 %i.jf)
  %i.jg = icmp samesign ugt i64 %i.je, 3
  br i1 %i.jg, label %bb.ci, label %bb.bv

bb.ci:                                            ; preds = %bb.ch
  %i.jh = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !noalias !19808, !nonnull !27, !align !106, !noundef !27 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !19801, !nonnull !27, !noundef !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !19801, !noundef !27
  store i64 4, ptr %i.bp, align 8, !noalias !19808
  %.sroa.388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.jj, ptr %.sroa.388.0..sroa_idx.i, align 8, !noalias !19808
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %i.jl, ptr %.sroa.589.0..sroa_idx.i, align 8, !noalias !19808
  %i.jm = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cj unwind label %bb.bx, !noalias !19801 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.jn = extractvalue { ptr, ptr } %i.jm, 0      ; 2 uses
  %i.jo = extractvalue { ptr, ptr } %i.jm, 1      ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !invariant.load !27, !noalias !19801, !nonnull !27
  %i.jr = invoke noundef zeroext i1 %i.jq(ptr noundef %i.jn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.ck unwind label %bb.bx, !noalias !19801

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.jr, label %bb.cl, label %bb.bv

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !19808
  %i.js = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !noalias !19808, !nonnull !27, !align !106, !noundef !27
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !19808
  store ptr @162, ptr %i.bm, align 8, !noalias !19808
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.ju, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !19808
  %i.jv = load ptr, ptr %i.dm, align 8, !alias.scope !19806, !noalias !19810, !nonnull !27, !noundef !27
  %i.jw = load i64, ptr %i.do, align 8, !alias.scope !19806, !noalias !19810, !noundef !27
  store ptr %i.jv, ptr %i.bl, align 8, !noalias !19808
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.jw, ptr %i.jx, align 8, !noalias !19808
  store ptr %i.bm, ptr %i.bn, align 8, !noalias !19808
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @163, ptr %i.jy, align 8, !noalias !19808
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bl, ptr %i.jz, align 8, !noalias !19808
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr @164, ptr %i.ka, align 8, !noalias !19808
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %i.bx, ptr %i.kb, align 8, !noalias !19808
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr @165, ptr %i.kc, align 8, !noalias !19808
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %i.cf, ptr %i.kd, align 8, !noalias !19808
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store ptr @165, ptr %i.ke, align 8, !noalias !19808
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %i.bv, ptr %i.kf, align 8, !noalias !19808
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store ptr @165, ptr %i.kg, align 8, !noalias !19808
  store i64 1, ptr %i.bo, align 8, !noalias !19808
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bn, ptr %.sroa.491.0..sroa_idx.i, align 8, !noalias !19808
  %.sroa.592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 5, ptr %.sroa.592.0..sroa_idx.i, align 8, !noalias !19808
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.jt, ptr %i.kh, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !19808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !19808
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jh, ptr noundef nonnull %i.jn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jo, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo)
          to label %bb.cm unwind label %bb.bx, !noalias !19801

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !19808
  br label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit235.i: ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !19808
  br label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit235.i, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !19808
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !19804, !noalias !19809, !nonnull !27, !noundef !27
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.kl, align 8, !alias.scope !19806, !noalias !19810
  %i.km = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %.val223.i = load i64, ptr %i.km, align 8, !alias.scope !19806, !noalias !19810
  %i.kn = invoke fastcc noundef align 8 ptr @_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEE3getBO_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kk, ptr %.val.i, i64 %.val223.i)
          to label %bb.cq unwind label %.critedge.thread304.i, !noalias !19801 ; 2 uses

bb.co:                                            ; preds = %bb.ga, %.critedge.thread298.i, %.thread347.i, %.thread332.i, %bb.fu, %bb.dz, %bb.dy, %bb.dk, %bb.bx, %bb.bp, %.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value16ScopedTimerGuardECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19801
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit233.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !19808
  br label %bb.cp

bb.cp:                                            ; preds = %bb.dw, %bb.dv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit233.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !19808
  br label %bb.fw

.critedge.thread304.i:                            ; preds = %bb.cu, %bb.cs, %bb.cn
  %lpad.thr_comm302.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread298.i

.critedge.i:                                      ; preds = %bb.fv, %bb.du, %bb.dr
  %lpad.thr_comm.split-lp303.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.cq:                                            ; preds = %bb.cn
  %.not190.i = icmp eq ptr %i.kn, null
  br i1 %.not190.i, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !19808
  %i.kp = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8, !noalias !19808
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.cs, !prof !152

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19808
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.e, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19808
  store ptr %i.e, ptr %i.d, align 8, !noalias !19808
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc236.i unwind label %.critedge.thread304.i, !noalias !19801

.noexc236.i:                                      ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19808
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false), !noalias !19808
  br label %bb.ds

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc236.i, %bb.cr
  %i.kr = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !noalias !19808, !nonnull !27, !noundef !27
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !19808
  %i.kt = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project19EMPTY_KERNEL_SCHEMA, i64 8) acquire, align 8, !noalias !19808
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.cu, !prof !152

bb.cu:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19808
  store ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project19EMPTY_KERNEL_SCHEMA, ptr %i.c, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19808
  store ptr %i.c, ptr %i.b, align 8, !noalias !19808
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project19EMPTY_KERNEL_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc237.i unwind label %.critedge.thread304.i, !noalias !19801

.noexc237.i:                                      ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19808
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc237.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.kv = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project19EMPTY_KERNEL_SCHEMA, align 8, !noalias !19808, !nonnull !27, !noundef !27
  %i.kw = atomicrmw add ptr %i.kv, i64 1 monotonic, align 8, !noalias !19801
  %i.kx = icmp slt i64 %i.kw, 0
  br i1 %i.kx, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ky = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project19EMPTY_KERNEL_SCHEMA, align 8, !noalias !19808, !nonnull !27, !noundef !27 ; 2 uses
  store ptr %i.ky, ptr %i.bh, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !19808
  %i.kz = load ptr, ptr %i.kn, align 8, !noalias !19801, !nonnull !27, !noundef !27 ; 4 uses
  %i.la = atomicrmw add ptr %i.kz, i64 1 monotonic, align 8, !noalias !19801
  %i.lb = icmp slt i64 %i.la, 0
  br i1 %i.lb, label %bb.cy, label %bb.cx

bb.cw:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.trap()
  unreachable

bb.cx:                                            ; preds = %bb.cv
  store ptr %i.kz, ptr %i.bg, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !19808
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !19804, !noalias !19809, !nonnull !27, !noundef !27
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 152
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !19801, !nonnull !27, !noundef !27
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !19801, !nonnull !27, !noundef !27
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !19801, !nonnull !27, !noundef !27
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !19801, !nonnull !27, !noundef !27
  %i.lm = atomicrmw add ptr %i.ll, i64 1 monotonic, align 8, !noalias !19801
  %i.ln = icmp slt i64 %i.lm, 0
  br i1 %i.ln, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.trap()
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.lo = load ptr, ptr %i.lk, align 8, !noalias !19801, !nonnull !27, !noundef !27
  invoke void @_RNvXsE_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_8DataTypeINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_10StructTypeEE4from(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bf, ptr noundef nonnull %i.lo)
          to label %bb.dc unwind label %bb.dx, !noalias !19801

bb.da:                                            ; preds = %bb.cx
  call void @llvm.trap()
  unreachable

bb.db:                                            ; preds = %bb.dc
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread298.i

bb.dc:                                            ; preds = %bb.cz
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bi, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ks, ptr noundef nonnull %i.ky, ptr noundef nonnull %i.kz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.bf)
          to label %bb.dd unwind label %bb.db, !noalias !19801

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !19808
  %i.lq = load i64, ptr %i.bi, align 16, !range !107, !noalias !19808, !noundef !27
  %.not191.i = icmp eq i64 %i.lq, -9223372036854775743
  br i1 %.not191.i, label %bb.di, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.an, ptr noundef nonnull align 16 dereferenceable(96) %i.bi, i64 96, i1 false), !noalias !19808
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !20004
  %i.lr = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #61, !noalias !20004 ; 3 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.df, label %bb.dw, !prof !67

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #57
          to label %.noexc238.i unwind label %bb.dg, !noalias !19801

.noexc238.i:                                      ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.df
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.an) #60
          to label %.critedge.thread298.i unwind label %bb.dh, !noalias !19801

bb.dh:                                            ; preds = %bb.dg
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19801
  unreachable

bb.di:                                            ; preds = %bb.dd
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !19808, !nonnull !27, !noundef !27 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.ly = load ptr, ptr %i.lx, align 16, !noalias !19808, !nonnull !27, !align !106, !noundef !27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !19808
  store ptr %i.lw, ptr %i.bj, align 8, !noalias !19808
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.ly, ptr %i.lz, align 8, !noalias !19808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !19808
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !range !508, !invariant.load !27, !noalias !19801
  %i.mc = add nsw i64 %i.mb, -1
  %i.md = and i64 %i.mc, -16
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !19808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false), !noalias !19808
  invoke void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.be, ptr noundef nonnull %i.mf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ly, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.bd)
          to label %bb.dl unwind label %bb.dj, !noalias !19801

bb.dj:                                            ; preds = %bb.di
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body218.i

.body218.i:                                       ; preds = %bb.do, %bb.dj
  %eh.lpad-body219.i = phi { ptr, i32 } [ %i.mg, %bb.dj ], [ %i.mn, %bb.do ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20007)
  call void @llvm.experimental.noalias.scope.decl(metadata !20010)
  %i.mh = load ptr, ptr %i.bj, align 8, !alias.scope !20013, !noalias !19808, !nonnull !27, !noundef !27
  %i.mi = atomicrmw sub ptr %i.mh, i64 1 release, align 8, !noalias !20014
  %i.mj = icmp eq i64 %i.mi, 1
  br i1 %i.mj, label %bb.dk, label %.thread.i

bb.dk:                                            ; preds = %.body218.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #58
          to label %.thread.i unwind label %bb.co, !noalias !19801

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !19808
  %i.mk = load i64, ptr %i.be, align 16, !range !107, !noalias !19808, !noundef !27
  %.not192.i = icmp eq i64 %i.mk, -9223372036854775743
  br i1 %.not192.i, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.am, ptr noundef nonnull align 16 dereferenceable(96) %i.be, i64 96, i1 false), !noalias !19808
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !20015
  %i.ml = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #61, !noalias !20015 ; 3 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %bb.dn, label %bb.dt, !prof !67

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #57
          to label %.noexc240.i unwind label %bb.do, !noalias !19801

.noexc240.i:                                      ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %bb.dn
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.am) #60
          to label %.body218.i unwind label %bb.dp, !noalias !19801

bb.dp:                                            ; preds = %bb.do
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !19801
  unreachable

bb.dq:                                            ; preds = %bb.dl
  %i.mp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.0125.0.copyload.i = load i64, ptr %i.mp, align 8, !noalias !19808
  %.sroa.5126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.7128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.sroa.6152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6152.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7128.0..sroa_idx.i, i64 16, i1 false), !noalias !19808
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.mq = load <2 x ptr>, ptr %.sroa.5126.0..sroa_idx.i, align 16, !noalias !19808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !19808
  store i64 %.sroa.0125.0.copyload.i, ptr %i.bk, align 8, !noalias !19808
  store <2 x ptr> %i.mq, ptr %.sroa.4150.0..sroa_idx.i, align 8, !noalias !19808
  call void @llvm.experimental.noalias.scope.decl(metadata !20018)
  call void @llvm.experimental.noalias.scope.decl(metadata !20021)
  %i.mr = load ptr, ptr %i.bj, align 8, !alias.scope !20024, !noalias !19808, !nonnull !27, !noundef !27
  %i.ms = atomicrmw sub ptr %i.mr, i64 1 release, align 8, !noalias !20025
  %i.mt = icmp eq i64 %i.ms, 1
  br i1 %i.mt, label %bb.dr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit243.i

bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit243.i unwind label %.critedge.i, !noalias !19801

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit243.i: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !19808
  br label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit243.i, %bb.ct
end_hunk_10
begin_hunk_11_@_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan11repartition15RepartitionExecNtNtB6_14execution_plan13ExecutionPlan23required_input_orderingCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

.thread:                                          ; preds = %bb.e, %bb.c, %bb.h
  %.pn5 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.j, %bb.h ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %.pn5

bb.h:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.b) #60
          to label %.thread unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan11repartition15RepartitionExecNtNtB6_14execution_plan13ExecutionPlan27required_input_distributionCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs5_NtCs5wg436RVUAP_24datafusion_physical_plan11repartitionNtB5_15RepartitionExecNtNtB7_14execution_plan13ExecutionPlan8children(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 2 uses
  %i.e = icmp ult i64 %i.d, 1152921504606846976
  tail call void @llvm.assume(i1 %i.e)
  invoke void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #60
          to label %.thread unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

.thread:                                          ; preds = %bb.e, %bb.c, %bb.h
  %.pn5 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.j, %bb.h ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %.pn5

bb.h:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #60
          to label %.thread unwind label %bb.g
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan11repartition15RepartitionExecNtNtB6_14execution_plan13ExecutionPlan6schemaCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(392) %0) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtCs5T8iZfrvTxX_9validator10validation6length14ValidateLengthyE15validate_lengthCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2, i64 noundef range(i64 0, 2) %3, i64 %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvXs9_NtNtCs5T8iZfrvTxX_9validator10validation6lengthNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14ValidateLengthyE6length(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.e = trunc nuw i64 %5 to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, %6
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw i64 %1 to i1
  %i.h = icmp ult i64 %i.d, %2
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = trunc nuw i64 %3 to i1
  %i.j = icmp ule i64 %i.d, %4
  %not. = xor i1 %i.i, true
  %spec.select = select i1 %not., i1 true, i1 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.029.2 = phi i1 [ %spec.select, %bb.e ], [ false, %bb.d ], [ true, %bb.a ], [ %i.f, %bb.c ]
  ret i1 %.sroa.029.2
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs14kWLkQVSKO_14deltalake_core.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @771, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !24678
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #19 {
bb.a:
  ret { ptr, i64 } { ptr @1177, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #19 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1183, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext11SnapshotExt28scan_row_parsed_schema_arrowBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 9 uses
  %i.k = alloca [128 x i8], align 8               ; 6 uses
  %i.l = alloca [128 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [112 x i8], align 8               ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.625 = alloca [32 x i8], align 8          ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 12 uses
  %i.q = alloca [8 x i8], align 8                 ; 10 uses
  %i.r = alloca [96 x i8], align 16               ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [112 x i8], align 8               ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.68 = alloca [32 x i8], align 8           ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 16 uses
  %i.x = alloca [96 x i8], align 16               ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ab = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, i64 8) acquire, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !152

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.ad = load ptr, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !27, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !27 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24682
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 1152921504606846976) %i.ah, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !24682
  %i.ai = load i64, ptr %i.f, align 8, !range !38, !noalias !24682, !noundef !27
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !66, !noalias !24682, !noundef !27 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !67

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.an = load i64, ptr %i.am, align 8, !noalias !24682
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #57, !noalias !24682
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !noalias !24682, !nonnull !27, !noundef !27 ; 2 uses
  %i.aq = icmp ule i64 %i.ah, %i.al
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24682
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ah
  %i.as = icmp eq i64 %i.al, 0
  br i1 %i.as, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.023.i = phi i64 [ %i.at, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.al, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.013.022.i = phi ptr [ %i.ay, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ao, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ax, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.at = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.au = icmp eq ptr %.sroa.013.022.i, %i.ar
  br i1 %i.au, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.022.i, align 8, !alias.scope !24679, !noalias !24684, !nonnull !27, !noundef !27 ; 2 uses
  %i.av = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !24682
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.e, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.ax = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.7.021.i
  store ptr %.val12.i, ptr %i.az, align 8, !noalias !24682
  %i.ba = icmp eq i64 %i.at, 0
  br i1 %i.ba, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.al, ptr %i.aa, align 8, !noalias !24679
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %i.ap, ptr %.sroa.4146.0..sroa_idx, align 8, !noalias !24679
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  store i64 %i.ah, ptr %.sroa.5147.0..sroa_idx, align 8, !noalias !24679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bb = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, i64 8) acquire, align 8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit97, label %bb.f, !prof !152

bb.f:                                             ; preds = %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc unwind label %.body95.thread152

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit97

.noexc99:                                         ; preds = %bb.o, %.body125
  br i1 %.sroa.033.2, label %.body95.thread, label %common.resume

.body95.thread152:                                ; preds = %bb.ca, %bb.l, %bb.f, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit97
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body95.thread

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit97: ; preds = %.noexc, %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bd = load ptr, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA, align 8, !nonnull !27, !noundef !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema8index_of(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef nonnull readonly captures(address, read_provenance) @249, i64 noundef 5)
          to label %bb.g unwind label %.body95.thread152

bb.g:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0ECs14kWLkQVSKO_14deltalake_core.exit97
  call void @llvm.experimental.noalias.scope.decl(metadata !24685)
  %i.bf = load i64, ptr %i.z, align 8, !range !469, !alias.scope !24685, !noundef !27
  %.not.i = icmp eq i64 %i.bf, -9223372036854775788
  br i1 %.not.i, label %bb.l, label %bb.h, !prof !152

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !24685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1185) #57
          to label %bb.j unwind label %bb.i, !noalias !24685

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i) #60
          to label %.body95.thread unwind label %bb.k, !noalias !24685

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59, !noalias !24685
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !24685, !noundef !27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  invoke void @_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtCs8ulvy0Wg6Ot_12delta_kernel19table_configuration18TableConfigurationNtB2_11SnapshotExt12stats_schema(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bk)
          to label %_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtB4_11SnapshotExt12stats_schema.exit unwind label %.body95.thread152

_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtB4_11SnapshotExt12stats_schema.exit: ; preds = %bb.l
  %i.bl = load i64, ptr %i.x, align 16, !range !107, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.bl, -9223372036854775743
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtB4_11SnapshotExt12stats_schema.exit
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.639.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.bl, ptr %0, align 16
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %.sroa.444.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit140

bb.n:                                             ; preds = %_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtB4_11SnapshotExt12stats_schema.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store ptr %i.bn, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaINtB5_13TryFromKernelRNtNtB9_6schema10StructTypeE15try_from_kernel(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bo)
          to label %bb.q unwind label %bb.p

.body125:                                         ; preds = %bb.bw, %bb.bo, %bb.p, %.body89
  %.sroa.033.2 = phi i1 [ %.sroa.033.4, %.body89 ], [ true, %bb.bo ], [ %.sroa.033.3, %bb.p ], [ false, %bb.bw ]
  %.pn85 = phi { ptr, i32 } [ %.pn83, %.body89 ], [ %i.ez, %bb.bo ], [ %i.bs, %bb.p ], [ %i.fp, %bb.bw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24688)
  call void @llvm.experimental.noalias.scope.decl(metadata !24691)
  %i.bp = load ptr, ptr %i.y, align 8, !alias.scope !24694, !nonnull !27, !noundef !27
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !24694
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.o, label %.noexc99

bb.o:                                             ; preds = %.body125
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #58
          to label %.noexc99 unwind label %bb.bl

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit.i130, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit.i122, %bb.n
  %.sroa.033.3 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit.i122 ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs14kWLkQVSKO_14deltalake_core.exit.i130 ], [ true, %bb.n ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body125

bb.q:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.v, align 8, !noundef !27 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false)
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.450.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68, i64 32, i1 false)
  store i64 -9223372036854775741, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit127

bb.s:                                             ; preds = %bb.q
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68, i64 32, i1 false)
  store ptr %i.bt, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bw = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.w, align 8, !nonnull !27, !noundef !27
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !27
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.by, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.bz, ptr %i.cb, align 8
  store i8 32, ptr %i.s, align 8
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5Field3newReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, i1 noundef zeroext true)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

.body89:                                          ; preds = %bb.cb, %bb.cc, %bb.bs, %bb.bh, %bb.bj, %.body115, %bb.ai, %.thread, %bb.y, %bb.v
  %.sroa.033.4 = phi i1 [ true, %.thread ], [ true, %bb.y ], [ false, %bb.bs ], [ true, %.body115 ], [ false, %bb.bh ], [ true, %bb.v ], [ true, %bb.ai ], [ false, %bb.bj ], [ true, %bb.cc ], [ true, %bb.cb ]
  %.pn83 = phi { ptr, i32 } [ %i.cp, %.thread ], [ %i.ch, %bb.y ], [ %i.fj, %bb.bs ], [ %.pn81, %.body115 ], [ %i.er, %bb.bh ], [ %i.cc, %bb.v ], [ %.pn81, %bb.ai ], [ %i.et, %bb.bj ], [ %i.fz, %bb.cc ], [ %i.fz, %bb.cb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.w) #60
          to label %.body125 unwind label %bb.bl

bb.v:                                             ; preds = %bb.be, %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit, %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 1, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %i.t, i64 112, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !24695
  %i.cf = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 128, i64 noundef range(i64 8, 17) 8) #61, !noalias !24695 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.x, label %bb.aa, !prof !67

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #57
          to label %.noexc100 unwind label %bb.y

.noexc100:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.ce)
          to label %.body89 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cf, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %i.cf, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
end_hunk_11
