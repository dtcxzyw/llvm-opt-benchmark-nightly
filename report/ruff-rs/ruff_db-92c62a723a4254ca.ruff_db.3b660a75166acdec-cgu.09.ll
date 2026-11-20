Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.09?download=true
inline.NumInlined: 1177
inline.NumDeleted: 537
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4test14InMemorySystemEBH_:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEEEEB2p_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !690, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !690
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs16MemoryFileSystemEBH_.exit2

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEEEEB2p_.exit
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs21MemoryFileSystemInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs16MemoryFileSystemEBH_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs16MemoryFileSystemEBH_.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEEEEB2p_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs16MemoryFileSystemEBH_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs11WalkerStateEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !691 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.f, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEBH_.exit: ; preds = %bb.e, %bb.b
  %.sink = phi ptr [ %i.c, %bb.b ], [ %0, %bb.e ]
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs13ReadDirectoryEBH_(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 !guid !692 {
bb.a:
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB10_3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json14JsonDiagnosticEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !701 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !alias.scope !702, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !4, !alias.scope !703, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEBJ_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEBJ_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic16DiagnosticSourceEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) #31
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body.i.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.h:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEBJ_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i, %bb.b
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic16DiagnosticSourceEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEEB15_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEEB15_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render4json7JsonFixEBJ_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !721 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9extension(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.idx = mul nuw nsw i64 %2, 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = icmp ugt i64 %i.l, 15
  %i.o = and i64 %i.l, 15
  %i.p = lshr i64 %i.l, 4
  %i.q = icmp eq i64 %i.o, 0
  %i.r = getelementptr i8, ptr %i.j, i64 %i.l
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  br i1 %i.n, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %.not.i.i.i50 = icmp eq i64 %i.l, 0
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i
  %i.t = phi ptr [ %i.u, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val4.us.i = load ptr, ptr %i.v, align 8, !noalias !723, !nonnull !5, !noundef !5 ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %.val5.us.i = load i64, ptr %i.w, align 8, !noalias !723, !noundef !5 ; 3 uses
  switch i64 %.val5.us.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.us.i [
    i64 0, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i
    i64 1, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.us.i
  ]

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.us.i: ; preds = %.lr.ph.split.us.i
  %3 = getelementptr inbounds nuw i8, ptr %.val4.us.i, i64 1
  %i.x = load i8, ptr %3, align 1, !alias.scope !724, !noalias !723, !noundef !5
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.us.i, label %.split.us.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.us.i: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.us.i, %.lr.ph.split.us.i
  %.ph.i.us.i = getelementptr inbounds nuw i8, ptr %.val4.us.i, i64 1 ; 2 uses
  %i.z = add i64 %.val5.us.i, -1
  %.not5.i.us.i = icmp eq i64 %i.l, %i.z
  br i1 %.not5.i.us.i, label %.lr.ph.i.preheader.i.us.i, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i

.lr.ph.i.preheader.i.us.i:                        ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.e, %.lr.ph.i.preheader.i.us.i
  %.sroa.02.039.i.i.us.i = phi i64 [ %i.ap, %bb.e ], [ 0, %.lr.ph.i.preheader.i.us.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.02.039.i.i.us.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.ph.i.us.i, i64 %.sroa.02.039.i.i.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.ac = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !729 ; 2 uses
  %i.ad = add <16 x i8> %i.ac, splat (i8 -65)
  %i.ae = icmp ult <16 x i8> %i.ad, splat (i8 26)
  %i.af = select <16 x i1> %i.ae, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ag = or <16 x i8> %i.af, %i.ac
  %i.ah = load <16 x i8>, ptr %i.ab, align 1, !alias.scope !730, !noalias !723 ; 2 uses
  %i.ai = add <16 x i8> %i.ah, splat (i8 -65)
  %i.aj = icmp ult <16 x i8> %i.ai, splat (i8 26)
  %i.ak = select <16 x i1> %i.aj, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.al = or <16 x i8> %i.ak, %i.ah
  %i.am = icmp ne <16 x i8> %i.ag, %i.al
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i

bb.e:                                             ; preds = %.lr.ph.i.i.us.i
  %i.ap = add nuw nsw i64 %.sroa.02.039.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.ap, %i.p
  br i1 %exitcond.not.i.i.us.i, label %._crit_edge.i.i.us.i, label %.lr.ph.i.i.us.i

._crit_edge.i.i.us.i:                             ; preds = %bb.e
  br i1 %i.q, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs56aZGHL6Dc6_7ruff_db.exit24.i.i.us.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs56aZGHL6Dc6_7ruff_db.exit24.i.i.us.i: ; preds = %._crit_edge.i.i.us.i
  %i.aq = getelementptr i8, ptr %.ph.i.us.i, i64 %i.l
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.as = load <16 x i8>, ptr %i.s, align 1, !alias.scope !733 ; 2 uses
  %i.at = add <16 x i8> %i.as, splat (i8 -65)
  %i.au = icmp ult <16 x i8> %i.at, splat (i8 26)
  %i.av = select <16 x i1> %i.au, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.aw = or <16 x i8> %i.av, %i.as
  %i.ax = load <16 x i8>, ptr %i.ar, align 1, !alias.scope !734, !noalias !723 ; 2 uses
  %i.ay = add <16 x i8> %i.ax, splat (i8 -65)
  %i.az = icmp ult <16 x i8> %i.ay, splat (i8 26)
  %i.ba = select <16 x i1> %i.az, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bb = or <16 x i8> %i.ba, %i.ax
  %i.bc = icmp ne <16 x i8> %i.aw, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i

_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i: ; preds = %.lr.ph.i.i.us.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs56aZGHL6Dc6_7ruff_db.exit24.i.i.us.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.us.i, %.lr.ph.split.us.i
  %.not29.i = icmp eq ptr %i.u, %i.m
  br i1 %.not29.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i
  %i.bf = phi ptr [ %i.bg, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i ], [ %1, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val4.i = load ptr, ptr %i.bh, align 8, !noalias !723, !nonnull !5, !noundef !5 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bf, i64 16
  %.val5.i = load i64, ptr %i.bi, align 8, !noalias !723, !noundef !5 ; 3 uses
  switch i64 %.val5.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i [
    i64 0, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i
    i64 1, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i
  ]

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i: ; preds = %.lr.ph.split.i
  %4 = getelementptr inbounds nuw i8, ptr %.val4.i, i64 1
  %i.bj = load i8, ptr %4, align 1, !alias.scope !724, !noalias !723, !noundef !5
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, label %.split.us.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i, %.lr.ph.split.i
  %i.bl = add i64 %.val5.i, -1
  %.not5.i.i = icmp eq i64 %i.l, %i.bl
  br i1 %.not5.i.i, label %bb.f, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i

.split.us.i:                                      ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.us.i
  %.us-phi20.i = phi ptr [ %.val4.us.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.us.i ], [ %.val4.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i ]
  %.us-phi21.i = phi i64 [ %.val5.us.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.us.i ], [ %.val5.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i ] ; 2 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.us-phi20.i, i64 noundef %.us-phi21.i, i64 noundef 1, i64 noundef %.us-phi21.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #30, !noalias !723
  unreachable

bb.f:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  br i1 %.not.i.i.i50, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i53, i64 1
  %i.bn = add nsw i64 %.sroa.58.0.i.i.i51, -1     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.0.0.i9.i.i53 = phi ptr [ %i.bm, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %.sroa.05.0.i.i.i52 = phi ptr [ %.sroa.05.0.i.i.i, %bb.g ], [ %.val4.i, %bb.f ]
  %.sroa.58.0.i.i.i51 = phi i64 [ %i.bn, %bb.g ], [ %i.l, %bb.f ]
  %.sroa.05.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i52, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.sroa.0.0.i9.i.i53, align 1, !alias.scope !737, !noundef !5 ; 2 uses
  %i.bp = add i8 %i.bo, -65
  %i.bq = icmp ult i8 %i.bp, 26
  %i.br = select i1 %i.bq, i8 32, i8 0
  %.sroa.012.0.i.i.i = or i8 %i.br, %i.bo
  %i.bs = load i8, ptr %.sroa.05.0.i.i.i, align 1, !alias.scope !736, !noalias !723, !noundef !5 ; 2 uses
  %i.bt = add i8 %i.bs, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = select i1 %i.bu, i8 32, i8 0
  %.sroa.013.0.i.i.i = or i8 %i.bv, %i.bs
  %i.bw = icmp eq i8 %.sroa.012.0.i.i.i, %.sroa.013.0.i.i.i
  br i1 %i.bw, label %bb.g, label %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i

_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %.lr.ph, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, %.lr.ph.split.i
  %.not28.i = icmp eq ptr %i.bg, %i.m
  br i1 %.not28.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph.split.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufBQ_Es_0ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i, %bb.f, %bb.g, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs56aZGHL6Dc6_7ruff_db.exit24.i.i.us.i, %._crit_edge.i.i.us.i, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ true, %bb.g ], [ true, %._crit_edge.i.i.us.i ], [ true, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs56aZGHL6Dc6_7ruff_db.exit24.i.i.us.i ], [ false, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.us.i ], [ false, %_RNCINvNtCs8p1poYNiitJ_5which6helper24has_executable_extensionRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringEs_0Cs56aZGHL6Dc6_7ruff_db.exit.i ], [ true, %bb.f ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs8p1poYNiitJ_5which7checker8is_validNtB4_4NoopRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !746 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [176 x i8], align 8               ; 7 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8, !noalias !747
  %i.g = call noundef zeroext i1 @_RNvXs2_NtCs8p1poYNiitJ_5which3sysRRRNtB5_7RealSysNtB5_3Sys10is_windowsCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !748
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !747
  call void @_RNvXs2_NtCs8p1poYNiitJ_5which3sysRRRNtB5_7RealSysNtB5_3Sys8metadataCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !749
  %i.h = load i64, ptr %i.c, align 8, !range !16, !noalias !747, !noundef !5
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %.split

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !747
  call void @_RNvXs2_NtCs8p1poYNiitJ_5which3sysRRRNtB5_7RealSysNtB5_3Sys16symlink_metadataCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !749
  %i.j = load i64, ptr %i.d, align 8, !range !16, !noalias !747, !noundef !5
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.e, label %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !747, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !747
  br label %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit.thread

.split:                                           ; preds = %bb.b
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.416.0.copyload.i = load i32, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !747
  %i.n = and i32 %.sroa.416.0.copyload.i, 61440
  %i.o = icmp eq i32 %i.n, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.o, label %bb.f, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !747, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !747
  br label %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit.thread

_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %bb.d, %bb.e
  %.sink = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  call void @_RNvXCs8p1poYNiitJ_5whichNtB2_4NoopNtB2_20NonFatalErrorHandler6handle(ptr noalias noundef nonnull %3, ptr noundef nonnull %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.c
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.411.0.copyload.i = load i32, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !747
  %i.r = and i32 %.sroa.411.0.copyload.i, 53248
  %spec.select.i.i = icmp eq i32 %i.r, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %spec.select.i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.split, %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !noalias !750
  %i.s = call noundef zeroext i1 @_RNvXs2_NtCs8p1poYNiitJ_5which3sysRRRNtB5_7RealSysNtB5_3Sys10is_windowsCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !751
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = call { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9extension(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !752
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.h, label %_RINvNtCs8p1poYNiitJ_5which7checker13is_executableNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !750
  call void @_RNvXs2_NtCs8p1poYNiitJ_5which3sysRRRNtB5_7RealSysNtB5_3Sys19is_valid_executableCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !752
  %i.v = load i8, ptr %i.a, align 8, !range !9, !noalias !750, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !750, !nonnull !5, !noundef !5
  call void @_RNvXCs8p1poYNiitJ_5whichNtB2_4NoopNtB2_20NonFatalErrorHandler6handle(ptr noalias noundef nonnull %3, ptr noundef nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !750
  br label %_RINvNtCs8p1poYNiitJ_5which7checker13is_executableNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !9, !noalias !750, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !750
  %i.ab = trunc nuw i8 %i.aa to i1
  br label %_RINvNtCs8p1poYNiitJ_5which7checker13is_executableNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit

_RINvNtCs8p1poYNiitJ_5which7checker13is_executableNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.sroa.0.0.i = phi i1 [ true, %bb.g ], [ false, %bb.i ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %.split, %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit.thread, %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit, %_RINvNtCs8p1poYNiitJ_5which7checker13is_executableNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i, %_RINvNtCs8p1poYNiitJ_5which7checker13is_executableNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit ], [ false, %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit ], [ false, %_RINvNtCs8p1poYNiitJ_5which7checker6existsNtB4_4NoopRRRNtNtB4_3sys7RealSysECs56aZGHL6Dc6_7ruff_db.exit.thread ], [ false, %.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2T_5field9SpanMatchEEENCNvMse_B10_BX_3new0ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 !guid !753 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root9FileRootsENCNvMse_B10_BX_3new0EB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 !guid !754 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2I_5field9SpanMatchEEENCNvMsd_BQ_BN_3new0ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #4 !guid !755 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2V_5field13CallsiteMatchEEENCNvMsd_BQ_BN_3new0ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #4 !guid !756 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB23_9memory_fs4FileNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENCNvMsd_BQ_BN_3new0EB25_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #4 !guid !757 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryEENCNvMsd_BQ_BN_3new0EB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #4 !guid !758 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

end_hunk_0
