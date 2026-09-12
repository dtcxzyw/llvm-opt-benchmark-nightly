Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.00?download=true
inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_:bb.a
  %.inv.i.i = icmp samesign ult i64 %i.bj, 2
  %i.bm = select i1 %.inv.i.i, i64 2, i64 %i.bl
  switch i64 %i.bm, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.ad
    i64 2, label %bb.al
    i64 3, label %bb.am
    i64 4, label %bb.bd
    i64 5, label %bb.bk
    i64 6, label %bb.bl
    i64 7, label %bb.ct
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !40923
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !40918

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !40923
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 168 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !114, !alias.scope !40924, !noalias !40925, !noundef !108
  %.not.i.i.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !40923
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.k unwind label %bb.j, !noalias !40926

bb.h:                                             ; preds = %.noexc.i
  store i64 -9223372036854775808, ptr %i.aj, align 8, !noalias !40923
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !40923
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 192 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !114, !alias.scope !40924, !noalias !40925, !noundef !108
  %.not1.i.i.i = icmp eq i64 %i.bs, -9223372036854775808
  br i1 %.not1.i.i.i, label %bb.m, label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i, %bb.j
  %.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bt, %bb.j ], [ %.pn.pn.pn.pn.i.i.i, %bb.q ], [ %.pn.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.cy unwind label %bb.ac, !noalias !40926

bb.j:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !40923
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !40923
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.s unwind label %bb.r, !noalias !40926

bb.m:                                             ; preds = %bb.i
  store i64 -9223372036854775808, ptr %i.ai, align 8, !noalias !40923
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !40923
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !40927
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bu)
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !40926

.noexc.i.i.i:                                     ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !40927
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 72
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv)
          to label %bb.v unwind label %bb.o, !noalias !40928

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body.i.i.i unwind label %bb.p, !noalias !40928

bb.p:                                             ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40928
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i: ; preds = %bb.t, %.body.i.i.i, %bb.r
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %.pn.pn.pn.i.i.i, %bb.t ], [ %.pn.pn.pn.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.by = load i64, ptr %i.aj, align 8, !range !114, !alias.scope !40929, !noalias !40923, !noundef !108
  %i.bz = icmp eq i64 %i.by, -9223372036854775808
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ac, !noalias !40926

bb.r:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i

bb.s:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !40923
  br label %bb.n

.body.i.i.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i.i.i, %bb.u, %bb.o
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i.i.i ], [ %i.cd, %bb.u ], [ %i.bw, %bb.o ] ; 2 uses
  %i.cb = load i64, ptr %i.ai, align 8, !range !114, !alias.scope !40930, !noalias !40923, !noundef !108
  %i.cc = icmp eq i64 %i.cb, -9223372036854775808
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i, label %bb.t

bb.t:                                             ; preds = %.body.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit9.i.i.i unwind label %bb.ac, !noalias !40926

bb.u:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.v:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !40931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !40927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !40931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !40927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !40923
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 120
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce)
          to label %bb.x unwind label %bb.w, !noalias !40926

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i.i.i: ; preds = %bb.y, %bb.w
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn.i.i.i, %bb.y ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions6FormatECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #29
          to label %.body.i.i.i unwind label %bb.ac, !noalias !40926

bb.w:                                             ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !40923
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 144
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.aa unwind label %bb.z, !noalias !40926

bb.y:                                             ; preds = %bb.ab, %bb.z
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ck, %bb.ab ], [ %i.ch, %bb.z ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i.i.i unwind label %bb.ac, !noalias !40926

bb.z:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  %i.ci = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !40924, !noalias !40925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !40923
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 216
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj)
          to label %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.ab, !noalias !40926

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.af) #29
          to label %bb.y unwind label %bb.ac, !noalias !40926

bb.ac:                                            ; preds = %bb.ab, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i.i.i, %bb.t, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40926
  unreachable

_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.216..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !40917
  %i.cm = load <2 x i8>, ptr %.sroa.66.216..sroa_idx.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.216..sroa_idx.i, i64 14, i1 false), !noalias !40917
  %.sroa.6876.216.copyload.i = load i8, ptr %.sroa.6876.216..sroa_idx.i, align 8, !noalias !40932
  %.sroa.69.216.copyload.i = load i8, ptr %.sroa.69.216..sroa_idx.i, align 1, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.70.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.70.216..sroa_idx.i, i64 6, i1 false), !noalias !40917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !40923
  %.sroa.22.24.copyload34.i = load i64, ptr %i.ak, align 8, !noalias !40932
  %i.cn = load <2 x i64>, ptr %.sroa.26.24..sroa_idx.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.168..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !40917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.192..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !40917
  %.sroa.32.48.copyload.i = load i64, ptr %i.ah, align 8, !noalias !40932
  %.sroa.35.48.copyload.i = load i64, ptr %.sroa.35.48..sroa_idx.i, align 8, !noalias !40932 ; 3 uses
  %.sroa.35.sroa.0.0.extract.trunc103.i = trunc i64 %.sroa.35.48.copyload.i to i32
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc116.i = trunc i64 %.sroa.35.48.copyload.i to i8
  %.sroa.35.sroa.0.sroa.10.0.extract.shift124.i = and i32 %.sroa.35.sroa.0.0.extract.trunc103.i, -256
  %.sroa.35.sroa.10.0.extract.shift109.i = lshr i64 %.sroa.35.48.copyload.i, 32
  %i.co = load <2 x i64>, ptr %.sroa.39.48..sroa_idx.i, align 8, !noalias !40932
  %.sroa.42.48.copyload.i = load i64, ptr %.sroa.42.48..sroa_idx.i, align 8, !noalias !40932
  %.sroa.43.48.copyload.i = load ptr, ptr %.sroa.43.48..sroa_idx.i, align 8, !noalias !40932
  %i.cp = load <2 x i64>, ptr %.sroa.45.48..sroa_idx.i, align 8, !noalias !40932
  %.sroa.47.sroa.8.0.copyload277.i = load i64, ptr %.sroa.47.sroa.8.0..sroa.47.48..sroa_idx.sroa_idx.i, align 8, !noalias !40932
  %i.cq = load <2 x i32>, ptr %i.ag, align 8, !noalias !40932
  %.sroa.52.120.copyload.i = load i64, ptr %.sroa.52.120..sroa_idx.i, align 8, !noalias !40932
  %.sroa.53.120.copyload.i = load i64, ptr %.sroa.53.120..sroa_idx.i, align 8, !noalias !40932 ; 4 uses
  %.sroa.53.sroa.0.0.extract.trunc82.i = trunc i64 %.sroa.53.120.copyload.i to i32
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc93.i = trunc i64 %.sroa.53.120.copyload.i to i8
  %.sroa.53.sroa.0.sroa.8.0.extract.shift97.i = and i32 %.sroa.53.sroa.0.0.extract.trunc82.i, -256
  %.sroa.53.sroa.8.0.extract.shift84.i = lshr i64 %.sroa.53.120.copyload.i, 32
  %.sroa.53.sroa.8.0.extract.trunc85.i = trunc i64 %.sroa.53.sroa.8.0.extract.shift84.i to i8
  %.sroa.53.sroa.9.0.extract.shift88.i = and i64 %.sroa.53.120.copyload.i, -1099511627776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !40917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !40923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !40923
  br label %bb.cw

bb.ad:                                            ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40933)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 56
  %i.ct = load i32, ptr %i.cs, align 8, !alias.scope !40934, !noalias !40935, !noundef !108 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 60
  %i.cv = load i32, ptr %i.cu, align 4, !alias.scope !40934, !noalias !40935, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !40936
  %i.cw = load i64, ptr %i.cr, align 8, !range !114, !alias.scope !40934, !noalias !40935, !noundef !108
  %.not.i1.i.i = icmp eq i64 %i.cw, -9223372036854775808
  br i1 %.not.i1.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cr)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !40918

bb.af:                                            ; preds = %bb.ad
  store i64 -9223372036854775808, ptr %i.z, align 16, !noalias !40936
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %bb.af, %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 32 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !range !114, !alias.scope !40934, !noalias !40935, !noundef !108
  %.not4.i.i.i = icmp eq i64 %i.cy, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !40936
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx)
          to label %bb.aj unwind label %bb.ah, !noalias !40937

bb.ah:                                            ; preds = %bb.ag
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load i64, ptr %i.z, align 16, !range !114, !alias.scope !40938, !noalias !40936, !noundef !108
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.cy, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.cy unwind label %bb.ak, !noalias !40939

bb.aj:                                            ; preds = %bb.ag
  %i.dc = load <2 x i64>, ptr %i.y, align 16, !noalias !40940
  %.sroa.5.i.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i, align 16, !noalias !40940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !40936
  br label %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40939
  unreachable

_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.aj, %.noexc12.i
  %.sroa.5.i.i.sroa.4.0.i = phi i64 [ undef, %.noexc12.i ], [ %.sroa.5.i.i.sroa.4.0.copyload.i, %bb.aj ]
  %i.de = phi <2 x i64> [ <i64 -9223372036854775808, i64 undef>, %.noexc12.i ], [ %i.dc, %bb.aj ]
  %i.df = load <2 x i64>, ptr %i.z, align 16, !noalias !40932
  %.sroa.22.8.copyload33.i = load i64, ptr %.sroa.22.8..sroa_idx.i, align 16, !noalias !40932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !40936
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %i.ct to i8
  %.sroa.35.sroa.0.sroa.10.0.extract.shift.i = and i32 %i.ct, -256
  %i.dg = zext i32 %i.cv to i64
  br label %bb.cw

bb.al:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !40940
  invoke fastcc void @_RNvXsC_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_3AddNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(272) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.019.0234.i) #34
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !40918

.noexc13.i:                                       ; preds = %bb.al
  %.sroa.020.0.copyload21.i = load i64, ptr %i.al, align 8, !noalias !40932
  %i.dh = load <2 x i64>, ptr %.sroa.11.0..sroa_idx22.i, align 8, !noalias !40932
  %.sroa.22.0.copyload31.i = load i64, ptr %.sroa.22.0..sroa_idx30.i, align 8, !noalias !40932
  %i.di = load <2 x i64>, ptr %.sroa.26.0..sroa_idx35.i, align 8, !noalias !40932
  %.sroa.32.0.copyload45.i = load i64, ptr %.sroa.32.0..sroa_idx44.i, align 8, !noalias !40932
  %.sroa.35.0.copyload49.i = load i64, ptr %.sroa.35.0..sroa_idx48.i, align 8, !noalias !40932 ; 3 uses
  %.sroa.35.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.35.0.copyload49.i to i32
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc113.i = trunc i64 %.sroa.35.0.copyload49.i to i8
  %.sroa.35.sroa.0.sroa.10.0.extract.shift118.i = and i32 %.sroa.35.sroa.0.0.extract.trunc.i, -256
  %.sroa.35.sroa.10.0.extract.shift.i = lshr i64 %.sroa.35.0.copyload49.i, 32
  %i.dj = load <2 x i64>, ptr %.sroa.39.0..sroa_idx50.i, align 8, !noalias !40932
  %.sroa.42.0.copyload55.i = load i64, ptr %.sroa.42.0..sroa_idx54.i, align 8, !noalias !40932
  %.sroa.43.0.copyload57.i = load ptr, ptr %.sroa.43.0..sroa_idx56.i, align 8, !noalias !40932
  %i.dk = load <2 x i64>, ptr %.sroa.45.0..sroa_idx58.i, align 8, !noalias !40932
  %.sroa.47.sroa.8.0.copyload.i = load i64, ptr %.sroa.47.sroa.8.0..sroa.47.0..sroa_idx60.sroa_idx.i, align 8, !noalias !40932
  %i.dl = load <2 x i32>, ptr %.sroa.49.0..sroa_idx61.i, align 8, !noalias !40932
  %.sroa.52.0.copyload66.i = load i64, ptr %.sroa.52.0..sroa_idx65.i, align 8, !noalias !40932
  %.sroa.53.0.copyload68.i = load i64, ptr %.sroa.53.0..sroa_idx67.i, align 8, !noalias !40932 ; 4 uses
  %.sroa.53.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.53.0.copyload68.i to i32
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc92.i = trunc i64 %.sroa.53.0.copyload68.i to i8
  %.sroa.53.sroa.0.sroa.8.0.extract.shift95.i = and i32 %.sroa.53.sroa.0.0.extract.trunc.i, -256
  %.sroa.53.sroa.8.0.extract.shift.i = lshr i64 %.sroa.53.0.copyload68.i, 32
  %.sroa.53.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.53.sroa.8.0.extract.shift.i to i8
  %.sroa.53.sroa.9.0.extract.shift.i = and i64 %.sroa.53.0.copyload68.i, -1099511627776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.58.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.58.0..sroa_idx69.i, i64 96, i1 false), !noalias !40917
  %i.dm = load <2 x i8>, ptr %.sroa.66.0..sroa_idx71.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.0..sroa_idx75.i, i64 14, i1 false), !noalias !40917
  %.sroa.6876.0.copyload78.i = load i8, ptr %.sroa.6876.0..sroa_idx77.i, align 8, !noalias !40932
  %.sroa.69.0.copyload80.i = load i8, ptr %.sroa.69.0..sroa_idx79.i, align 1, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.70.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.70.0..sroa_idx81.i, i64 14, i1 false), !noalias !40917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !40940
  br label %bb.cw

bb.am:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !40942
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !40918

.noexc14.i:                                       ; preds = %bb.am
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 240
  %i.dq = load <2 x i64>, ptr %i.do, align 8, !alias.scope !40943, !noalias !40944
  %i.dr = load <2 x i8>, ptr %i.dp, align 8, !alias.scope !40943, !noalias !40944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !40942
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 144 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !40943, !noalias !40944, !noundef !108
  %.not.i2.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i2.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc14.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !40942
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ds)
          to label %bb.ar unwind label %bb.aq, !noalias !40945

bb.ao:                                            ; preds = %.noexc14.i
  store ptr null, ptr %i.w, align 8, !noalias !40942
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !range !111, !alias.scope !40943, !noalias !40944, !noundef !108
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !40943, !noalias !40944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !40942
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 192 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !40943, !noalias !40944, !noundef !108
  %.not7.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not7.i.i.i, label %bb.at, label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i, %bb.aq
  %.pn.pn.i3.i.i = phi { ptr, i32 } [ %i.ea, %bb.aq ], [ %.pn.i5.i.i, %bb.av ], [ %.pn.i5.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cy unwind label %bb.bc, !noalias !40945

bb.aq:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ar:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !40942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !40942
  br label %bb.ap

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !40942
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy)
          to label %bb.ax unwind label %bb.aw, !noalias !40945

bb.at:                                            ; preds = %bb.ap
  store ptr null, ptr %i.v, align 8, !noalias !40942
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 96 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !range !114, !alias.scope !40943, !noalias !40944, !noundef !108
  %.not8.i.i.i = icmp eq i64 %i.ec, -9223372036854775808
  br i1 %.not8.i.i.i, label %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn.i5.i.i = phi { ptr, i32 } [ %i.ef, %bb.aw ], [ %i.ei, %bb.ba ], [ %i.ei, %bb.az ] ; 2 uses
  %i.ed = load ptr, ptr %i.w, align 8, !alias.scope !40946, !noalias !40942, !noundef !108
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bc, !noalias !40945

bb.aw:                                            ; preds = %bb.as
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i

bb.ax:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !40942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !40942
  br label %bb.au

bb.ay:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 140
  %i.eh = load i8, ptr %i.eg, align 4, !range !260, !alias.scope !40943, !noalias !40944, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !40942
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
          to label %bb.bb unwind label %bb.az, !noalias !40945

bb.az:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %i.v, align 8, !alias.scope !40947, !noalias !40942, !noundef !108
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit12.i.i.i unwind label %bb.bc, !noalias !40945

bb.bb:                                            ; preds = %bb.ay
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 120
  %i.em = load <2 x i32>, ptr %i.el, align 8, !alias.scope !40943, !noalias !40944
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 136
  %i.eo = load i32, ptr %i.en, align 8, !alias.scope !40943, !noalias !40944, !noundef !108
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 128
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !40943, !noalias !40944, !noundef !108
  %i.er = load <2 x i64>, ptr %i.s, align 16, !noalias !40940
  %.sroa.5.sroa.0.i.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.sroa.0.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 16, !noalias !40940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !40942
  br label %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.bc:                                            ; preds = %bb.ba, %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40945
  unreachable

_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bb, %bb.au
  %.sroa.5.sroa.0.i.i.sroa.4.0.i = phi i64 [ undef, %bb.au ], [ %.sroa.5.sroa.0.i.i.sroa.4.0.copyload.i, %bb.bb ]
  %.sroa.5.sroa.8.0.i.i.i = phi i8 [ undef, %bb.au ], [ %i.eh, %bb.bb ]
  %.sroa.5.sroa.7.0.i.i.i = phi i32 [ undef, %bb.au ], [ %i.eo, %bb.bb ] ; 2 uses
  %.sroa.5.sroa.6.0.i.i.i = phi i64 [ undef, %bb.au ], [ %i.eq, %bb.bb ]
  %i.et = phi <2 x i32> [ undef, %bb.au ], [ %i.em, %bb.bb ]
  %i.eu = phi <2 x i64> [ <i64 -9223372036854775808, i64 undef>, %bb.au ], [ %i.er, %bb.bb ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !range !111, !alias.scope !40943, !noalias !40944, !noundef !108
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 48
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !40943, !noalias !40944
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 56
  %i.fa = load i64, ptr %i.ez, align 8, !range !111, !alias.scope !40943, !noalias !40944, !noundef !108
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 64
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !40943, !noalias !40944
  %.sroa.41.72.copyload.i = load i64, ptr %i.x, align 8, !noalias !40932
  %.sroa.42.72.copyload.i = load i64, ptr %.sroa.42.72..sroa_idx.i, align 8, !noalias !40932
  %.sroa.43.72.copyload.i = load ptr, ptr %.sroa.43.72..sroa_idx.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.i, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !40917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.192..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !40917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !40942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !40942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !40942
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc117.i = trunc nuw nsw i64 %i.fa to i8
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.5.sroa.7.0.i.i.i to i8
  %.sroa.53.sroa.0.sroa.8.0.extract.shift.i = and i32 %.sroa.5.sroa.7.0.i.i.i, -256
  %i.fd = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %i.fe = insertelement <2 x i64> %i.fd, i64 %i.ew, i64 1
  %i.ff = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fg = insertelement <2 x i64> %i.ff, i64 %.sroa.41.72.copyload.i, i64 1
  br label %bb.cw

bb.bd:                                            ; preds = %bb.d
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !40949
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.fh)
          to label %.noexc15.i unwind label %.loopexit.i, !noalias !40918

.noexc15.i:                                       ; preds = %bb.bd
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 80
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !40950, !noalias !40951, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !40949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !40949
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fk)
          to label %bb.bf unwind label %bb.be, !noalias !40952

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.bh, %bb.be
  %.pn.i9.i.i = phi { ptr, i32 } [ %i.fl, %bb.be ], [ %i.fq, %bb.bh ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.cy unwind label %bb.bj, !noalias !40952

bb.be:                                            ; preds = %.noexc15.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.bf:                                            ; preds = %.noexc15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !40949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40949
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 136
  %i.fn = load i8, ptr %i.fm, align 8, !range !197, !alias.scope !40950, !noalias !40951, !noundef !108
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 88 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !40950, !noalias !40951, !noundef !108
  %.not.i11.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i11.i.i, label %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !40949
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fo)
          to label %bb.bi unwind label %bb.bh, !noalias !40952

bb.bh:                                            ; preds = %bb.bg
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bj, !noalias !40952

bb.bi:                                            ; preds = %bb.bg
  %.sroa.03.0.copyload.i12.i.i = load ptr, ptr %i.o, align 8, !noalias !40949
  %i.fr = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i13.i.i, align 8, !noalias !40940
  %.sroa.5.i8.i.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i8.i.sroa.4.sroa.4.0..sroa.5.i8.i.sroa.4.0..sroa.4.0..sroa_idx.i13.i.sroa_idx.sroa_idx.i, align 8, !noalias !40940
  %i.fs = load <2 x i32>, ptr %.sroa.5.i8.i.sroa.5.0..sroa.4.0..sroa_idx.i13.i.sroa_idx.i, align 8, !noalias !40940
  %.sroa.5.i8.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.5.i8.i.sroa.7.0..sroa.4.0..sroa_idx.i13.i.sroa_idx.i, align 8, !noalias !40940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !40949
  br label %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.bj:                                            ; preds = %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40952
  unreachable

_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bi, %bb.bf
  %.sroa.5.i8.i.sroa.4.sroa.4.0.i = phi i64 [ undef, %bb.bf ], [ %.sroa.5.i8.i.sroa.4.sroa.4.0.copyload.i, %bb.bi ]
  %.sroa.5.i8.i.sroa.7.0.i = phi i64 [ undef, %bb.bf ], [ %.sroa.5.i8.i.sroa.7.0.copyload.i, %bb.bi ]
  %.sroa.0.0.i14.i.i = phi ptr [ null, %bb.bf ], [ %.sroa.03.0.copyload.i12.i.i, %bb.bi ]
  %i.fu = phi <2 x i32> [ undef, %bb.bf ], [ %i.fs, %bb.bi ]
  %i.fv = phi <2 x i64> [ undef, %bb.bf ], [ %i.fr, %bb.bi ]
  %i.fw = load <2 x i64>, ptr %i.r, align 16, !noalias !40953
  %.sroa.049.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.049.i.sroa.5.0..sroa_idx.i, align 16, !noalias !40953
  %i.fx = load <2 x i64>, ptr %i.q, align 16, !noalias !40953
  %.sroa.049.i.sroa.9.24.copyload.i = load i64, ptr %.sroa.049.i.sroa.9.24..sroa_idx.i, align 16, !noalias !40953
  %.sroa.049.i.sroa.10.24.copyload.i = load i64, ptr %.sroa.049.i.sroa.10.24..sroa_idx.i, align 8, !noalias !40953 ; 3 uses
  %i.fy = load <2 x i64>, ptr %.sroa.049.i.sroa.11.24..sroa_idx.i, align 16, !noalias !40953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !40949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !40949
  %.sroa.35.sroa.0.0.extract.trunc101.i = trunc i64 %.sroa.049.i.sroa.10.24.copyload.i to i32
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc114.i = trunc i64 %.sroa.049.i.sroa.10.24.copyload.i to i8
  %.sroa.35.sroa.0.sroa.10.0.extract.shift120.i = and i32 %.sroa.35.sroa.0.0.extract.trunc101.i, -256
  %.sroa.35.sroa.10.0.extract.shift105.i = lshr i64 %.sroa.049.i.sroa.10.24.copyload.i, 32
  br label %bb.cw

bb.bk:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i), !noalias !40940
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz)
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !40918

.noexc16.i:                                       ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 48
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !40920, !noalias !40921, !noundef !108
  %i.gd = load <2 x i64>, ptr %i.ga, align 8, !alias.scope !40920, !noalias !40921
  %.sroa.22.24.copyload.i = load i64, ptr %.sroa.5.i.i, align 8, !noalias !40932
  %i.ge = load <2 x i64>, ptr %.sroa.26.24..sroa.5.i.sroa_idx.i, align 8, !noalias !40932
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !noalias !40940
  br label %bb.cw

bb.bl:                                            ; preds = %bb.d
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40954)
  %i.gg = load <2 x i64>, ptr %i.gf, align 8, !alias.scope !40955, !noalias !40956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !40957
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 40 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !range !114, !alias.scope !40955, !noalias !40956, !noundef !108
  %.not.i17.i.i = icmp eq i64 %i.gi, -9223372036854775808
  br i1 %.not.i17.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gh)
          to label %.noexc17.i unwind label %.loopexit.i, !noalias !40918

bb.bn:                                            ; preds = %bb.bl
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !40957
  br label %.noexc17.i

.noexc17.i:                                       ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40957
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 64 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !range !114, !alias.scope !40955, !noalias !40956, !noundef !108
  %.not4.i18.i.i = icmp eq i64 %i.gk, -9223372036854775808
  br i1 %.not4.i18.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.noexc17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40957
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gj)
          to label %bb.bt unwind label %bb.bs, !noalias !40958

bb.bp:                                            ; preds = %.noexc17.i
  store i64 -9223372036854775808, ptr %i.m, align 16, !noalias !40957
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40957
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 88 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !range !114, !alias.scope !40955, !noalias !40956, !noundef !108
  %.not5.i.i.i = icmp eq i64 %i.gm, -9223372036854775808
  br i1 %.not5.i.i.i, label %bb.bv, label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i: ; preds = %bb.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i, %bb.bs
  %.pn.pn.pn.pn.pn.i19.i.i = phi { ptr, i32 } [ %i.gp, %bb.bs ], [ %.pn.pn.pn.pn.i21.i.i, %bb.bx ], [ %.pn.pn.pn.pn.i21.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i ] ; 2 uses
  %i.gn = load i64, ptr %i.n, align 8, !range !114, !alias.scope !40959, !noalias !40957, !noundef !108
  %i.go = icmp eq i64 %i.gn, -9223372036854775808
  br i1 %i.go, label %bb.cy, label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.cy unwind label %bb.cs, !noalias !40958

bb.bs:                                            ; preds = %bb.bo
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i

bb.bt:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40957
  br label %bb.bq

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40957
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl)
          to label %bb.bz unwind label %bb.by, !noalias !40958

bb.bv:                                            ; preds = %bb.bq
  store i64 -9223372036854775808, ptr %i.l, align 8, !noalias !40957
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40957
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 208 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !40955, !noalias !40956, !noundef !108
  %.not6.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not6.i.i.i, label %bb.cb, label %bb.ca

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i: ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.by
  %.pn.pn.pn.pn.i21.i.i = phi { ptr, i32 } [ %i.gu, %bb.by ], [ %.pn.pn.pn.i22.i.i, %bb.cd ], [ %.pn.pn.pn.i22.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %i.gs = load i64, ptr %i.m, align 16, !range !114, !alias.scope !40960, !noalias !40957, !noundef !108
  %i.gt = icmp eq i64 %i.gs, -9223372036854775808
  br i1 %i.gt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i unwind label %bb.cs, !noalias !40958

bb.by:                                            ; preds = %bb.bu
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40957
  br label %bb.bw

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40957
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gq)
          to label %bb.cf unwind label %bb.ce, !noalias !40958

bb.cb:                                            ; preds = %bb.bw
  store ptr null, ptr %i.k, align 8, !noalias !40957
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cf, %bb.cb
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 24
  %i.gw = load i64, ptr %i.gv, align 8, !range !111, !alias.scope !40955, !noalias !40956, !noundef !108
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 32
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !40955, !noalias !40956
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 257
  %i.ha = load i8, ptr %i.gz, align 1, !range !157, !alias.scope !40955, !noalias !40956, !noundef !108
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 256
  %i.hc = load i8, ptr %i.hb, align 8, !range !260, !alias.scope !40955, !noalias !40956, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40957
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 112 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !range !114, !alias.scope !40955, !noalias !40956, !noundef !108
  %.not7.i23.i.i = icmp eq i64 %i.he, -9223372036854775808
  br i1 %.not7.i23.i.i, label %bb.ch, label %bb.cg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i, %bb.ce
  %.pn.pn.pn.i22.i.i = phi { ptr, i32 } [ %i.hh, %bb.ce ], [ %.pn.pn.i24.i.i, %bb.cj ], [ %.pn.pn.i24.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i ] ; 2 uses
  %i.hf = load i64, ptr %i.l, align 8, !range !114, !alias.scope !40961, !noalias !40957, !noundef !108
  %i.hg = icmp eq i64 %i.hf, -9223372036854775808
  br i1 %i.hg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i.i.i unwind label %bb.cs, !noalias !40958

bb.ce:                                            ; preds = %bb.ca
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.cf:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40957
  br label %bb.cc

bb.cg:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40957
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd)
          to label %bb.cl unwind label %bb.ck, !noalias !40958

bb.ch:                                            ; preds = %bb.cc
  store i64 -9223372036854775808, ptr %i.j, align 8, !noalias !40957
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cl, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40957
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 160
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hi)
          to label %bb.co unwind label %bb.cn, !noalias !40958

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i: ; preds = %bb.cm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ck
  %.pn.pn.i24.i.i = phi { ptr, i32 } [ %i.hl, %bb.ck ], [ %.pn.i25.i.i, %bb.cm ], [ %.pn.i25.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %i.hj = load ptr, ptr %i.k, align 8, !alias.scope !40962, !noalias !40957, !noundef !108
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.cs, !noalias !40958

bb.ck:                                            ; preds = %bb.cg
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i

bb.cl:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40957
  br label %bb.ci

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.cq, %bb.cn
  %.pn.i25.i.i = phi { ptr, i32 } [ %i.ho, %bb.cn ], [ %i.hr, %bb.cq ] ; 2 uses
  %i.hm = load i64, ptr %i.j, align 8, !range !114, !alias.scope !40963, !noalias !40957, !noundef !108
  %i.hn = icmp eq i64 %i.hm, -9223372036854775808
  br i1 %i.hn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i unwind label %bb.cs, !noalias !40958

bb.cn:                                            ; preds = %bb.ci
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.co:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40957
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 136 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !range !114, !alias.scope !40955, !noalias !40956, !noundef !108
  %.not8.i26.i.i = icmp eq i64 %i.hq, -9223372036854775808
  br i1 %.not8.i26.i.i, label %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40957
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hp)
          to label %bb.cr unwind label %bb.cq, !noalias !40958

bb.cq:                                            ; preds = %bb.cp
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.cs, !noalias !40958

bb.cr:                                            ; preds = %bb.cp
  %.sroa.0.0.copyload1.i27.i.i = load i64, ptr %i.c, align 8, !noalias !40957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i16.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i28.i.i, i64 16, i1 false), !noalias !40940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40957
  br label %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.cs:                                            ; preds = %bb.cq, %bb.cm, %bb.cj, %bb.cd, %bb.bx, %bb.br
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40958
  unreachable

_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.cr, %bb.co
  %.sroa.0.0.i29.i.i = phi i64 [ %.sroa.0.0.copyload1.i27.i.i, %bb.cr ], [ -9223372036854775808, %bb.co ] ; 4 uses
  %.sroa.29.40.copyload.i = load i64, ptr %i.n, align 8, !noalias !40932
  %.sroa.32.40.copyload.i = load i64, ptr %.sroa.32.40..sroa_idx.i, align 8, !noalias !40932
  %.sroa.35.40.copyload.i = load i64, ptr %.sroa.35.40..sroa_idx.i, align 8, !noalias !40932 ; 3 uses
  %.sroa.35.sroa.0.0.extract.trunc102.i = trunc i64 %.sroa.35.40.copyload.i to i32
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc115.i = trunc i64 %.sroa.35.40.copyload.i to i8
  %.sroa.35.sroa.0.sroa.10.0.extract.shift122.i = and i32 %.sroa.35.sroa.0.0.extract.trunc102.i, -256
  %.sroa.35.sroa.10.0.extract.shift107.i = lshr i64 %.sroa.35.40.copyload.i, 32
  %i.ht = load <2 x i64>, ptr %i.m, align 16, !noalias !40932
  %.sroa.42.64.copyload.i = load i64, ptr %.sroa.42.64..sroa_idx.i, align 16, !noalias !40932
  %.sroa.43.88.copyload.i = load ptr, ptr %i.l, align 8, !noalias !40932
  %i.hu = load <2 x i64>, ptr %.sroa.45.88..sroa_idx.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.208..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !40917
  %i.hv = load <2 x i8>, ptr %.sroa.66.208..sroa_idx.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.208..sroa_idx.i, i64 14, i1 false), !noalias !40917
  %i.hw = load i64, ptr %i.j, align 8, !noalias !40932
  %i.hx = load <2 x i32>, ptr %.sroa.49.112..sroa_idx.i, align 8, !noalias !40932
  %.sroa.52.112.copyload.i = load i64, ptr %.sroa.52.112..sroa_idx.i, align 8, !noalias !40932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.160..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !40917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !40957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40957
  %.sroa.53.sroa.0.0.extract.trunc83.i = trunc i64 %.sroa.0.0.i29.i.i to i32
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc94.i = trunc i64 %.sroa.0.0.i29.i.i to i8
  %.sroa.53.sroa.0.sroa.8.0.extract.shift99.i = and i32 %.sroa.53.sroa.0.0.extract.trunc83.i, -256
  %.sroa.53.sroa.8.0.extract.shift86.i = lshr i64 %.sroa.0.0.i29.i.i, 32
  %.sroa.53.sroa.8.0.extract.trunc87.i = trunc i64 %.sroa.53.sroa.8.0.extract.shift86.i to i8
  %.sroa.53.sroa.9.0.extract.shift90.i = and i64 %.sroa.0.0.i29.i.i, -1099511627776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i16.i.i, i64 16, i1 false), !noalias !40917
  %i.hy = insertelement <2 x i64> poison, i64 %i.gy, i64 0
  %i.hz = insertelement <2 x i64> %i.hy, i64 %.sroa.29.40.copyload.i, i64 1
  br label %bb.cw

bb.ct:                                            ; preds = %bb.d
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40965
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ia)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !40918

.noexc18.i:                                       ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40965
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 32
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ib)
          to label %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.cu, !noalias !40966

bb.cu:                                            ; preds = %.noexc18.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.cy unwind label %bb.cv, !noalias !40966

bb.cv:                                            ; preds = %bb.cu
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40966
  unreachable

_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc18.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.019.0234.i, i64 56
  %i.if = load i8, ptr %i.ie, align 8, !range !197, !alias.scope !40967, !noalias !40968, !noundef !108
  %i.ig = load <2 x i64>, ptr %i.b, align 16, !noalias !40969
  %.sroa.070.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.070.i.sroa.5.0..sroa_idx.i, align 16, !noalias !40969
  %i.ih = load <2 x i64>, ptr %i.a, align 16, !noalias !40969
  %.sroa.070.i.sroa.9.24.copyload.i = load i64, ptr %.sroa.070.i.sroa.9.24..sroa_idx.i, align 16, !noalias !40969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40965
  br label %bb.cw

bb.cw:                                            ; preds = %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %.noexc16.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %.noexc13.i, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %.sroa.47.sroa.8.0.i = phi i64 [ %.sroa.47.sroa.8.0.copyload277.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.47.sroa.8.0.copyload.i, %.noexc13.i ], [ %.sroa.5.sroa.0.i.i.sroa.4.0.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i8.i.sroa.4.sroa.4.0.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.hw, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.35.sroa.0.sroa.10.sroa.0.0.i = phi i32 [ %.sroa.35.sroa.0.sroa.10.0.extract.shift124.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.0.sroa.10.0.extract.shift.i, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.0.sroa.10.0.extract.shift118.i, %.noexc13.i ], [ 0, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.0.sroa.10.0.extract.shift120.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %.noexc16.i ], [ %.sroa.35.sroa.0.sroa.10.0.extract.shift122.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.35.sroa.0.sroa.0.0.i = phi i8 [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc116.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc.i, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc113.i, %.noexc13.i ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc117.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc114.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc115.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.if, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.35.sroa.10.0.i = phi i64 [ %.sroa.35.sroa.10.0.extract.shift109.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.dg, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.10.0.extract.shift.i, %.noexc13.i ], [ 0, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.35.sroa.10.0.extract.shift105.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %.noexc16.i ], [ %.sroa.35.sroa.10.0.extract.shift107.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.53.sroa.0.sroa.8.sroa.0.0.i = phi i32 [ %.sroa.53.sroa.0.sroa.8.0.extract.shift97.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.0.sroa.8.0.extract.shift95.i, %.noexc13.i ], [ %.sroa.53.sroa.0.sroa.8.0.extract.shift.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %.noexc16.i ], [ %.sroa.53.sroa.0.sroa.8.0.extract.shift99.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.53.sroa.0.sroa.0.0.i = phi i8 [ %.sroa.53.sroa.0.sroa.0.0.extract.trunc93.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.0.sroa.0.0.extract.trunc92.i, %.noexc13.i ], [ %.sroa.53.sroa.0.sroa.0.0.extract.trunc.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fn, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %.sroa.53.sroa.0.sroa.0.0.extract.trunc94.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.53.sroa.9.sroa.0.0.i = phi i64 [ %.sroa.53.sroa.9.0.extract.shift88.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.9.0.extract.shift.i, %.noexc13.i ], [ 0, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %.noexc16.i ], [ %.sroa.53.sroa.9.0.extract.shift90.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.53.sroa.8.0.i = phi i8 [ %.sroa.53.sroa.8.0.extract.trunc85.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.53.sroa.8.0.extract.trunc.i, %.noexc13.i ], [ %.sroa.5.sroa.8.0.i.i.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %.sroa.53.sroa.8.0.extract.trunc87.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.69.0.i = phi i8 [ %.sroa.69.216.copyload.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.0.copyload80.i, %.noexc13.i ], [ undef, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.ha, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.6876.0.i = phi i8 [ %.sroa.6876.216.copyload.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.6876.0.copyload78.i, %.noexc13.i ], [ undef, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.hc, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.52.0.i = phi i64 [ %.sroa.52.120.copyload.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.52.0.copyload66.i, %.noexc13.i ], [ %.sroa.5.sroa.6.0.i.i.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i8.i.sroa.7.0.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %.sroa.52.112.copyload.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.43.48.copyload.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.43.0.copyload57.i, %.noexc13.i ], [ %.sroa.43.72.copyload.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i14.i.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %.sroa.43.88.copyload.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.42.0.i = phi i64 [ %.sroa.42.48.copyload.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.42.0.copyload55.i, %.noexc13.i ], [ %.sroa.42.72.copyload.i, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fj, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %.sroa.42.64.copyload.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.32.0.i = phi i64 [ %.sroa.32.48.copyload.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i.sroa.4.0.i, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.0.copyload45.i, %.noexc13.i ], [ %i.ey, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.049.i.sroa.9.24.copyload.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.gc, %.noexc16.i ], [ %.sroa.32.40.copyload.i, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.070.i.sroa.9.24.copyload.i, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.22.0.i = phi i64 [ %.sroa.22.24.copyload34.i, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.22.8.copyload33.i, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.22.0.copyload31.i, %.noexc13.i ], [ %i.dv, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.049.i.sroa.5.0.copyload.i, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.22.24.copyload.i, %.noexc16.i ], [ %i.gw, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.070.i.sroa.5.0.copyload.i, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.020.0.i = phi i64 [ 2, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 3, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.020.0.copyload21.i, %.noexc13.i ], [ 5, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 6, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 7, %.noexc16.i ], [ 8, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ 9, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.ii = phi <2 x i32> [ %i.cq, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.dl, %.noexc13.i ], [ %i.et, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fu, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.hx, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.ij = phi <2 x i64> [ %i.ci, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.df, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.dh, %.noexc13.i ], [ %i.dq, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fw, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.gd, %.noexc16.i ], [ %i.gg, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.ig, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.ik = phi <2 x i64> [ %i.cn, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.de, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.di, %.noexc13.i ], [ %i.fe, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fx, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.ge, %.noexc16.i ], [ %i.hz, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.ih, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.il = phi <2 x i64> [ %i.co, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.dj, %.noexc13.i ], [ %i.fg, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fy, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.ht, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.im = phi <2 x i64> [ %i.cp, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.dk, %.noexc13.i ], [ %i.eu, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.fv, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.hu, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.in = phi <2 x i8> [ %i.cm, %_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.dm, %.noexc13.i ], [ %i.dr, %_RNvXsF_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_6RemoveNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsI_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10AddCDCFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %.noexc16.i ], [ %i.hv, %_RNvXsV_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_10CommitInfoNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs11_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB6_14DomainMetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i.i)
  %i.io = getelementptr inbounds nuw [272 x i8], ptr %i.ay, i64 %.sroa.7.0232.i ; 21 uses
  %.sroa.35.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.sroa.35.sroa.0.sroa.0.0.i to i32
  %.sroa.35.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.35.sroa.0.sroa.10.sroa.0.0.i, %.sroa.35.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.35.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.35.sroa.10.0.i, 32
  %.sroa.35.sroa.0.0.insert.ext.i = zext i32 %.sroa.35.sroa.0.sroa.0.0.insert.insert.i to i64
  %.sroa.35.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.35.sroa.10.0.insert.shift.i, %.sroa.35.sroa.0.0.insert.ext.i
  %.sroa.53.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.sroa.53.sroa.0.sroa.0.0.i to i32
  %.sroa.53.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.53.sroa.0.sroa.8.sroa.0.0.i, %.sroa.53.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.53.sroa.8.0.insert.ext.i = zext i8 %.sroa.53.sroa.8.0.i to i64
  %.sroa.53.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.53.sroa.8.0.insert.ext.i, 32
  %.sroa.53.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.53.sroa.8.0.insert.shift.i, %.sroa.53.sroa.9.sroa.0.0.i
  %.sroa.53.sroa.0.0.insert.ext.i = zext i32 %.sroa.53.sroa.0.sroa.0.0.insert.insert.i to i64
  %.sroa.53.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.53.sroa.8.0.insert.insert.i, %.sroa.53.sroa.0.0.insert.ext.i
  store i64 %.sroa.020.0.i, ptr %i.io, align 8, !noalias !40918
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store <2 x i64> %i.ij, ptr %.sroa.4163.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.6165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i64 %.sroa.22.0.i, ptr %.sroa.6165.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.7166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store <2 x i64> %i.ik, ptr %.sroa.7166.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.9168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  store i64 %.sroa.32.0.i, ptr %.sroa.9168.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.10169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  store i64 %.sroa.35.sroa.0.0.insert.insert.i, ptr %.sroa.10169.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.11170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  store <2 x i64> %i.il, ptr %.sroa.11170.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.13172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  store i64 %.sroa.42.0.i, ptr %.sroa.13172.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.14173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 88
  store ptr %.sroa.43.0.i, ptr %.sroa.14173.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.15174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  store <2 x i64> %i.im, ptr %.sroa.15174.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.16175.sroa.4.0..sroa.16175.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 112
  store i64 %.sroa.47.sroa.8.0.i, ptr %.sroa.16175.sroa.4.0..sroa.16175.0..sroa_idx.sroa_idx.i, align 8, !noalias !40918
  %.sroa.17176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 120
  store <2 x i32> %i.ii, ptr %.sroa.17176.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.19178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 128
  store i64 %.sroa.52.0.i, ptr %.sroa.19178.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.20179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 136
  store i64 %.sroa.53.sroa.0.0.insert.insert.i, ptr %.sroa.20179.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.21180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.21180.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.58.i, i64 96, i1 false), !noalias !40918
  %.sroa.22181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 240
  %i.ip = extractelement <2 x i8> %i.in, i64 0
  store i8 %i.ip, ptr %.sroa.22181.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.23182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 241
  %i.iq = extractelement <2 x i8> %i.in, i64 1
  store i8 %i.iq, ptr %.sroa.23182.0..sroa_idx.i, align 1, !noalias !40918
  %.sroa.24183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.24183.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.68.i, i64 14, i1 false), !noalias !40918
  %.sroa.25184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 256
  store i8 %.sroa.6876.0.i, ptr %.sroa.25184.0..sroa_idx.i, align 8, !noalias !40918
  %.sroa.26185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 257
  store i8 %.sroa.69.0.i, ptr %.sroa.26185.0..sroa_idx.i, align 1, !noalias !40918
  %.sroa.27186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.27186.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.70.i, i64 14, i1 false), !noalias !40918
  %i.ir = icmp eq i64 %i.bf, 0
  br i1 %i.ir, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.c

bb.cx:                                            ; preds = %bb.cy
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40918
  unreachable

bb.cy:                                            ; preds = %bb.cu, %bb.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ai, %bb.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ic, %bb.cu ], [ %.pn.pn.pn.pn.pn.i19.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit15.i.i.i ], [ %.pn.pn.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.cz, %bb.ah ], [ %.pn.pn.i3.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.pn.i9.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.cz, %bb.ai ], [ %.pn.pn.pn.pn.pn.i19.i.i, %bb.br ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.0232.i, ptr %i.bb, align 8, !noalias !40917
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.an) #29
          to label %bb.cz unwind label %bb.cx, !noalias !40918

bb.cz:                                            ; preds = %bb.cy
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.c, %bb.cw, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.ar, ptr %i.bb, align 8, !noalias !40917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !40916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !40917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.70.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !108, !noundef !108
  %i.d = load i64, ptr %i.a, align 8, !noundef !108
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #34
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !108, !noundef !108
  %i.d = load i64, ptr %i.a, align 8, !noundef !108
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #34
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !108, !noundef !108 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !108 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40977
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 144115188075855872) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64), !noalias !40977
  %i.i = load i64, ptr %i.b, align 8, !range !111, !noalias !40977, !noundef !108
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !114, !noalias !40977, !noundef !108 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !40977
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !40977
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !40977, !nonnull !108, !noundef !108 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40977
  store i64 %i.l, ptr %i.d, align 8, !noalias !40977
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !40977
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.4.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.11.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.014.028.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.w, %bb.p ] ; 7 uses
  %.sroa.7.026.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.p ] ; 3 uses
  %.sroa.10.025.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.u, %bb.p ]
  %i.u = add i64 %.sroa.10.025.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.014.028.i, %i.s
  br i1 %i.v, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 64
  %i.x = add nuw nsw i64 %.sroa.7.026.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40979)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.y = load i64, ptr %.sroa.014.028.i, align 8, !range !151, !alias.scope !40980, !noalias !40981, !noundef !108 ; 3 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775801
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 8
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.11.0..sroa_idx2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %.noexc.i unwind label %bb.r, !noalias !40982

.noexc.i:                                         ; preds = %bb.e
  store i64 -9223372036854775801, ptr %i.c, align 8, !alias.scope !40978, !noalias !40983
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.ab = xor i64 %i.y, -9223372036854775808
  %i.ac = icmp slt i64 %i.y, 0
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 7
  switch i64 %i.ad, label %bb.g [
    i64 0, label %bb.o
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
    i64 6, label %bb.m
    i64 7, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  br label %bb.o
end_hunk_0
