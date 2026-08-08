inline.NumInlined: 12919
inline.NumDeleted: 5719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker15check_conflicts:bb.a
  %.sink.i.i = phi ptr [ %i.o, %bb.ct ], [ %i.n, %bb.cu ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %.sink.i.i, ptr %i.je, align 8, !alias.scope !18560, !noalias !18569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18570
  %i.jf = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %.noexc15.i unwind label %bb.cs, !noalias !18551 ; 2 uses

.noexc15.i:                                       ; preds = %bb.cv
  %i.jg = extractvalue { i64, i64 } %i.jf, 0
  %i.jh = extractvalue { i64, i64 } %i.jf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false), !noalias !18570
  %.sroa.43.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.jg, ptr %.sroa.43.0..sroa_idx.i13.i, align 8, !noalias !18570
  %.sroa.54.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.jh, ptr %.sroa.54.0..sroa_idx.i14.i, align 8, !noalias !18570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !18574
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtNtB1x_11collections4hash3set12IntersectionBP_B1r_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.cy unwind label %bb.cw, !noalias !18570

bb.cw:                                            ; preds = %.noexc15.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.body7.i unwind label %bb.cx, !noalias !18570

bb.cx:                                            ; preds = %bb.cw
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18570
  unreachable

bb.cy:                                            ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !18575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18551
  %i.jk = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !18551, !noundef !10
  %i.jm = icmp eq i64 %i.jl, 0
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.cs, !noalias !18551

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18551
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files.exit unwind label %bb.ck, !noalias !18551

bb.cz:                                            ; preds = %.body7.i, %.body.i31, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit10.i
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18551
  unreachable

_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !18551
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o), !noalias !18551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !18551
  br i1 %i.jm, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files.exit
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.do

bb.db:                                            ; preds = %_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !18576)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18581
  %i.jo = call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54), !noalias !18581 ; 2 uses
  %i.jp = extractvalue { i64, i64 } %i.jo, 0
  %i.jq = extractvalue { i64, i64 } %i.jo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false), !noalias !18581
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.jp, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !18581
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.jq, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !18581
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2l_8adapters10filter_map9FilterMapINtNtB3n_6cloned6ClonedINtNtNtB2n_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENCNvMs_NtNtB4Q_11transaction16conflict_checkerNtB5Q_20WinningCommitSummary22app_level_transactions0EEB4S_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az)
          to label %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB4_20WinningCommitSummary22app_level_transactions.exit.i unwind label %bb.dc, !noalias !18581

bb.dc:                                            ; preds = %bb.db
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %common.resume unwind label %bb.dd, !noalias !18581

bb.dd:                                            ; preds = %bb.dc
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18581
  unreachable

_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB4_20WinningCommitSummary22app_level_transactions.exit.i: ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !18587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18579
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18588)
  call void @llvm.experimental.noalias.scope.decl(metadata !18591)
  call void @llvm.experimental.noalias.scope.decl(metadata !18593)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !18591, !noalias !18595, !noundef !10
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !18596, !noalias !18597, !noundef !10
  %.not.i.i39 = icmp ugt i64 %i.jv, %i.jx
  br i1 %.not.i.i39, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB4_20WinningCommitSummary22app_level_transactions.exit.i
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jt)
          to label %bb.dh unwind label %bb.dg, !noalias !18598

bb.df:                                            ; preds = %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB4_20WinningCommitSummary22app_level_transactions.exit.i
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
          to label %bb.dh unwind label %bb.dg, !noalias !18579

bb.dg:                                            ; preds = %bb.dk, %bb.dh, %bb.df, %bb.de
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i40

.body.i40:                                        ; preds = %bb.di, %bb.dg
  %eh.lpad-body.i41 = phi { ptr, i32 } [ %i.jy, %bb.dg ], [ %i.kd, %bb.di ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %common.resume unwind label %bb.dl, !noalias !18598

bb.dh:                                            ; preds = %bb.df, %bb.de
  %.sink.i.i42 = phi ptr [ %i.f, %bb.de ], [ %i.jt, %bb.df ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sink.i.i42, ptr %i.jz, align 8, !alias.scope !18588, !noalias !18599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18600
  %i.ka = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %.noexc5.i unwind label %bb.dg, !noalias !18598 ; 2 uses

.noexc5.i:                                        ; preds = %bb.dh
  %i.kb = extractvalue { i64, i64 } %i.ka, 0
  %i.kc = extractvalue { i64, i64 } %i.ka, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false), !noalias !18600
  %.sroa.43.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.kb, ptr %.sroa.43.0..sroa_idx.i.i43, align 8, !noalias !18600
  %.sroa.54.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.kc, ptr %.sroa.54.0..sroa_idx.i.i44, align 8, !noalias !18600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !18604
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtNtB1x_11collections4hash3set12IntersectionBP_B1r_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.dk unwind label %bb.di, !noalias !18605

bb.di:                                            ; preds = %.noexc5.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i40 unwind label %bb.dj, !noalias !18605

bb.dj:                                            ; preds = %bb.di
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18605
  unreachable

bb.dk:                                            ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !18606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18579
  %i.kf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !18579, !noundef !10
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker73check_for_updated_application_transaction_ids_that_current_txn_depends_on.exit unwind label %bb.dg, !noalias !18598

bb.dl:                                            ; preds = %.body.i40
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18598
  unreachable

_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker73check_for_updated_application_transaction_ids_that_current_txn_depends_on.exit: ; preds = %bb.dk
  %i.ki = icmp eq i64 %i.kg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18579
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f), !noalias !18598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18579
  br i1 %i.ki, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker73check_for_updated_application_transaction_ids_that_current_txn_depends_on.exit
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.do

bb.dn:                                            ; preds = %_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker73check_for_updated_application_transaction_ids_that_current_txn_depends_on.exit
  store i64 -9223372036854775797, ptr %0, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.da, %bb.cg, %bb.bl, %bb.v, %bb.r
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([528 x i8]) align 16 captures(none) dereferenceable(528) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(240) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(280) %2, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(408) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %3, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %.pre, i64 514
  %.pre37 = load i8, ptr %.phi.trans.insert36, align 2, !range !294
  %.pre37.fr = freeze i8 %.pre37                  ; 4 uses
  br i1 %.not, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %.val12 = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %.val13 = load i64, ptr %3, align 8             ; 3 uses
  %.idx.i = mul nuw nsw i64 %.val12, 272
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %.not49 = icmp eq i64 %.val12, 0                ; 3 uses
  br i1 %.not49, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i: ; preds = %bb.b, %bb.f
  %.sroa.03.08.ph.i = phi i1 [ %spec.select9.i, %bb.f ], [ false, %bb.b ] ; 2 uses
  %.sroa.0.037.ph.i = phi ptr [ %i.u, %bb.f ], [ %.val, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.037.ph.i, i64 272 ; 4 uses
  %i.e = load i64, ptr %.sroa.0.037.ph.i, align 8, !range !5916, !noundef !10 ; 3 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv.i.peel = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv.i.peel, i64 2, i64 %i.g
  switch i64 %i.h, label %.thread.i.peel [
    i64 2, label %.loopexit
    i64 3, label %.loopexit34
  ]

.thread.i.peel:                                   ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i
  %i.i = icmp eq ptr %i.d, %i.c
  br i1 %i.i, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i: ; preds = %.thread.i.peel, %.thread.i
  %.sroa.0.037.i = phi ptr [ %i.j, %.thread.i ], [ %i.d, %.thread.i.peel ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.037.i, i64 272 ; 4 uses
  %i.k = load i64, ptr %.sroa.0.037.i, align 8, !range !5916, !noundef !10 ; 3 uses
  %i.l = icmp ne i64 %i.k, 4
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -2
  %.inv.i = icmp samesign ult i64 %i.k, 2
  %i.n = select i1 %.inv.i, i64 2, i64 %i.m
  switch i64 %i.n, label %.thread.i [
    i64 2, label %.loopexit
    i64 3, label %.loopexit34
  ]

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.i: ; preds = %bb.f
  br i1 %spec.select9.i, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.i, %bb.b
  switch i8 %.pre37.fr, label %default.unreachable.i [
    i8 0, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit
    i8 1, label %bb.d
    i8 2, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i8 3, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit
  ]

default.unreachable.i:                            ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i
  unreachable

bb.c:                                             ; preds = %bb.e
  unreachable

bb.d:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i
  br i1 %.not49, label %bb.e, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i64 %.val13, 3
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nsw i64 %.val13, -2
  %i.q = icmp samesign ugt i64 %.val13, 1
  %i.r = select i1 %i.q, i64 %i.p, i64 1
  switch i64 %i.r, label %bb.c [
    i64 0, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 1, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 2, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 3, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 4, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 5, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 6, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 7, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 8, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 9, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 10, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 11, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 12, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 13, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread
    i64 14, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 15, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 16, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
    i64 17, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
  ]

.loopexit:                                        ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i
  %.sroa.03.08.i.lcssa = phi i1 [ %.sroa.03.08.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ true, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.sroa.0.037.i.lcssa = phi ptr [ %.sroa.0.037.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %.sroa.0.037.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.lcssa = phi ptr [ %i.d, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %i.j, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.037.i.lcssa, i64 264
  br label %bb.f

.loopexit34:                                      ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i
  %.sroa.03.08.i.lcssa30 = phi i1 [ %.sroa.03.08.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ true, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.sroa.0.037.i.lcssa28 = phi ptr [ %.sroa.0.037.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %.sroa.0.037.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.lcssa26 = phi ptr [ %i.d, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %i.j, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.037.i.lcssa28, i64 240
  br label %bb.f

bb.f:                                             ; preds = %.loopexit34, %.loopexit
  %.sroa.03.08.i32 = phi i1 [ %.sroa.03.08.i.lcssa30, %.loopexit34 ], [ %.sroa.03.08.i.lcssa, %.loopexit ]
  %i.u = phi ptr [ %.lcssa26, %.loopexit34 ], [ %.lcssa, %.loopexit ] ; 2 uses
  %.sink29.in.i = phi ptr [ %i.t, %.loopexit34 ], [ %i.s, %.loopexit ]
  %.sink29.i = load i8, ptr %.sink29.in.i, align 8, !range !349, !noundef !10
  %i.v = trunc nuw i8 %.sink29.i to i1
  %not..i = xor i1 %i.v, true
  %spec.select9.i = select i1 %not..i, i1 true, i1 %.sroa.03.08.i32 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.c
  br i1 %i.w, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i

.thread.i:                                        ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i
  %i.x = icmp eq ptr %i.j, %i.c
  br i1 %i.x, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i, !llvm.loop !18607

_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.d
  br label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17

_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread: ; preds = %.thread.i.peel, %.thread.i, %bb.a, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.i, %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit
  %.not10 = icmp eq i8 %.pre37.fr, 3
  %.11 = select i1 %.not10, i8 0, i8 %.pre37.fr
  br label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17

_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i
  br i1 %.not49, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread

_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17: ; preds = %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread, %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit
  %.sroa.02.1 = phi i8 [ 2, %bb.e ], [ 2, %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ %.pre37.fr, %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread.thread ], [ %.11, %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(280) %i.y, ptr noundef nonnull align 8 dereferenceable(280) %2, i64 280, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 %.sroa.02.1, ptr %i.z, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_10GroupInnerjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB1a_6option6OptionINtB1U_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3W_B2D_EEE0s_0ENtB5_10ChunkIndexE13lookup_bufferB4q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef align 8 dereferenceable(320) %1, i64 noundef %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %.sroa.6 = alloca [176 x i8], align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 4 uses
  %i.e = sub i64 %2, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 3 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 5 uses
  %i.m = icmp ult i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18608)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !18608, !noalias !18611, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !18608, !noalias !18611, !nonnull !10, !noundef !10 ; 4 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !18608, !noalias !18611
  %.sroa.0.0.copyload25 = load i64, ptr %i.s, align 8, !noalias !18608 ; 3 uses
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6.0..sroa_idx26, i64 176, i1 false), !noalias !18608
  %.not = icmp eq i64 %.sroa.0.0.copyload25, 2
  %i.v = icmp eq i64 %2, %i.g
  %or.cond = and i1 %.not, %i.v
  br i1 %or.cond, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.g, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread, %bb.h, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread ], [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %bb.h ], [ 2, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.0.0.copyload25, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.d, %bb.b
  %.old13 = icmp eq i64 %2, %i.g
  br i1 %.old13, label %.preheader, label %bb.e

.preheader:                                       ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i64 [ 2, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.0.0.copyload25, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %storemerge20 = add i64 %2, 1                   ; 4 uses
  store i64 %storemerge20, ptr %i.f, align 8
  %i.w = sub i64 %storemerge20, %i.d              ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.l
  br i1 %i.x, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.preheader, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.preheader: ; preds = %.preheader
  %i.y = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit

bb.f:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit
  %storemerge = add i64 %storemerge21, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.z = sub i64 %storemerge, %i.d                ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.l
  br i1 %i.aa, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.preheader, %bb.f
  %i.ab = phi i64 [ %i.z, %bb.f ], [ %i.w, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.preheader ] ; 2 uses
  %storemerge21 = phi i64 [ %storemerge, %bb.f ], [ %storemerge20, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !18613, !nonnull !10, !noundef !10
  %i.ae = getelementptr i8, ptr %i.ac, i64 24
  %.val5.i = load ptr, ptr %i.ae, align 8, !alias.scope !18613, !nonnull !10, !noundef !10
  %i.af = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.af, label %bb.f, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit, %bb.f, %.preheader
  %storemerge.lcssa = phi i64 [ %storemerge20, %.preheader ], [ %storemerge21, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit ], [ %storemerge, %bb.f ]
  %.lcssa = phi i64 [ %i.w, %.preheader ], [ %i.ab, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit ], [ %i.z, %bb.f ] ; 2 uses
  store i64 %.lcssa, ptr %i.b, align 8
  %.not7 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not7, label %bb.e, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6map_orbNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2J_10GroupInnerjINtNtNtNtB5_4iter8adapters3map3MapIBK_TB1x_IBw_INtBO_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB4s_B4i_EEE0s_0ENtB2J_10ChunkIndexE13lookup_buffers_0EB4V_.exit.thread
  %i.ag = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i64 %i.l, 1
  %.not8 = icmp ult i64 %.lcssa, %i.ah
  br i1 %.not8, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @_RINvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE6retainNCNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB2h_10GroupInnerjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBG_TB16_INtNtB3n_6option6OptionIBw_bEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIBw_B46_EEE0s_0ENtB2h_10ChunkIndexE13lookup_buffers0_0EB4W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.ai = load i64, ptr %i.f, align 8, !noundef !10
  store i64 %i.ai, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_10GroupInnerjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB1a_6option6OptionINtB1U_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3W_B2D_EEE0s_0ENtB5_10ChunkIndexE14step_bufferingB4q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef align 8 dereferenceable(320) %1, i64 %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [208 x i8], align 8               ; 5 uses
  %.sroa.4 = alloca [176 x i8], align 8           ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [184 x i8], align 8               ; 5 uses
  %i.f = alloca [184 x i8], align 8               ; 5 uses
  %i.g = alloca [184 x i8], align 8               ; 8 uses
  %i.h = alloca [184 x i8], align 8               ; 14 uses
  %i.i = alloca [184 x i8], align 8               ; 5 uses
  %i.j = alloca [184 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8 ; 2 uses
  store i64 2, ptr %i.n, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0.0.copyload, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.0..sroa_idx, i64 176, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.r = load i64, ptr %i.q, align 8, !noundef !10
  %.not23 = icmp eq i64 %i.p, %i.r
  br i1 %.not23, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 2, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !18616, !noalias !18621, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !18616, !noalias !18621, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %.thread54, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtB7_3VecbEEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtB7_3VecbEEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.lr.ph: ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 4 uses
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtB7_3VecbEEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.j)
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.j, i64 184, i1 false)
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileE8grow_oneBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.j unwind label %bb.f, !noalias !18624

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
end_hunk_0
