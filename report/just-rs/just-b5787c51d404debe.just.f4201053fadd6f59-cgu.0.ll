Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables:bb.a
bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.da = add i64 %.sroa.01.0.i.i.i.i, %i.cz
  br label %bb.v

.thread:                                          ; preds = %._crit_edge.i.i.i, %bb.t, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34455)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !34455, !noalias !34456, !noundef !28
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !34455, !noalias !34456, !noundef !28
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val5.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !34455, !noalias !34456, !noundef !28
  %i.dg = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECskXtk6F4WjxZ_4just(i64 %.val.i.i.i, i64 %.val5.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.au), !noalias !34457 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34459)
  %i.dh = lshr i64 %i.dg, 57
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !34460, !noalias !34461, !noundef !28 ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !alias.scope !34460, !noalias !34461, !nonnull !28, !noundef !28 ; 2 uses
  %i.dm = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ %i.eg, %bb.z ]
  %.pn.i.i.i.i = phi i64 [ %i.dg, %bb.x ], [ %i.eh, %bb.z ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dk ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.do, align 1, !noalias !34462 ; 2 uses
  %i.dp = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, %i.dn
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not.i.not31.i.i.i.i = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not31.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i
  %.sroa.06.0.i32.i.i.i.i = phi i16 [ %i.ef, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i.i.i, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.01.0.i.i.i.i.i, %i.ds
  %i.du = and i64 %i.dt, %i.dk
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.dv ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %.val4.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !34463, !noundef !28
  %i.dy = icmp eq i64 %i.au, %.val4.i.i.i.i.i
  br i1 %i.dy, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, !prof !32

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 -24
  %.val3.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !noalias !34463, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %.val3.i.i.i.i.i, i64 %i.au), !alias.scope !34464, !noalias !34465
  %i.ea = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ea, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, !prof !33

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, %bb.y
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.ec = bitcast <16 x i1> %i.eb to i16
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %bb.z, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit, !prof !44

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ee = add i16 %.sroa.06.0.i32.i.i.i.i, -1
  %i.ef = and i16 %i.ee, %.sroa.06.0.i32.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eg = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.eh = add i64 %.sroa.01.0.i.i.i.i.i, %i.eg
  br label %bb.y

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i
  %.lcssa81.sink = phi ptr [ %i.dw, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i ], [ %i.cp, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i ]
  %i.ei = getelementptr inbounds i8, ptr %.lcssa81.sink, i64 -8
  %i.ej = load i32, ptr %i.ei, align 4, !noalias !28, !noundef !28
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit: ; preds = %._crit_edge.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, %.thread
  %.pn4.i = phi i32 [ 0, %.thread ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split ], [ 0, %._crit_edge.i.i.i.i ]
  %.pn2.i = phi i32 [ undef, %.thread ], [ %i.ej, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split ], [ undef, %._crit_edge.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  store i32 %.pn4.i, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 12
  store i32 %.pn2.i, ptr %i.el, align 4
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp samesign ult i64 %2, 2
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 1
  %i.e = icmp ne i16 14906, %i.d
  %i.f = zext i1 %i.e to i32
  %bcmp.i.i.fr = freeze i32 %i.f
  %i.g = icmp eq i32 %bcmp.i.i.fr, 0
  %i.h = add i64 %2, -2
  %spec.select = select i1 %i.g, i64 %i.h, i64 %2
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, %bb.a
  %i.i = phi i64 [ %2, %bb.a ], [ %spec.select, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit ]
  store ptr %1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 7 uses
  %.not.i = icmp slt i64 %3, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %3, 0                        ; 3 uses
  br i1 %i.g, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34508
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34508 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.416.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph, i64 %3) #71
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.k
  %i.j = phi ptr [ %i.h, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34509
  %.sink22.i.i = add nuw nsw i64 %i.f, 1          ; 2 uses
  %i.k = mul i64 %.sink22.i.i, 24                 ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.f, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.e, !prof !118

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34510
  %i.m = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #70, !noalias !34510 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i

bb.g:                                             ; preds = %bb.f, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.f ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k) #71
          to label %.noexc.i unwind label %bb.i, !noalias !34509

.noexc.i:                                         ; preds = %bb.g
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.e, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.e ], [ %.sink22.i.i, %bb.f ] ; 2 uses
  %i.o = icmp samesign ult i64 %i.f, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !34509
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i.i, ptr %i.p, align 8, !noalias !34509
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34512)
  %i.r = icmp eq i64 %i.f, 0
  br i1 %i.r, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader

.preheader:                                       ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i, %.noexc.i.i.i.i.i
  %.val6.i.i.i.i.i = phi i64 [ %i.u, %.noexc.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val6.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34513
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %.noexc.i.i.i.i.i unwind label %bb.h, !noalias !34514

.noexc.i.i.i.i.i:                                 ; preds = %.preheader
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i, i64 %.val6.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !34515
  %i.u = add nuw nsw i64 %.val6.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34513
  %i.v = icmp eq i64 %i.u, %i.f
  br i1 %i.v, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader

bb.h:                                             ; preds = %.preheader
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.val6.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !34516, !noalias !34517
  br i1 %i.g, label %.body.i, label %.body.sink.split.i.i.i

.body.sink.split.i.i.i:                           ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34518
  br label %.body.i

.body.i:                                          ; preds = %.body.sink.split.i.i.i, %bb.h
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72, !noalias !34509
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.j, %bb.i, %.body.i
  %.pn7.i = phi { ptr, i32 } [ %i.w, %.body.i ], [ %i.x, %bb.i ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %.pn7.i

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34519
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %.noexc.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i, i64 %i.f ; 3 uses
  store i64 %3, ptr %i.y, align 8, !noalias !34520
  %.sroa.417.0..sroa_idx.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.j, ptr %.sroa.417.0..sroa_idx.us.i.i.i.i.i.i, align 8, !noalias !34521
  %.sroa.7.8..sroa.417.0..sroa_idx.us.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %3, ptr %.sroa.7.8..sroa.417.0..sroa_idx.us.i.i.i.sroa_idx.i.i.i, align 8, !noalias !34521
  %i.z = add nuw nsw i64 %i.f, 1
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !34516, !noalias !34517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34509
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !40, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ab, ptr %i.ac, align 8
  ret void

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10resolutionINtB2_10ResolutionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtB4_6recipe6RecipeEE14resolve_recipe(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %.not.i = icmp eq i64 %.16.val, 0
  br i1 %.not.i, label %bb.b, label %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @978) #75, !noalias !34604
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul i64 %.16.val, 72                    ; 2 uses
  %i.d = getelementptr i8, ptr %.8.val, i64 %.idx ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %i.h = icmp eq i64 %.idx, 72
  br i1 %i.h, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit, %bb.x
  %i.i = phi i64 [ %i.bl, %bb.x ], [ 0, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ]
  %.sroa.0.0116 = phi ptr [ %i.cl, %bb.x ], [ %1, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.02.0115 = phi ptr [ %i.ck, %bb.x ], [ %3, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.04.0114 = phi ptr [ %i.j, %bb.x ], [ %.8.val, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34605)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !34605, !nonnull !28, !noundef !28 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !34605, !noundef !28 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 56
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !34605, !noundef !28 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !34605, !noundef !28 ; 13 uses
  %i.s = add i64 %i.r, %i.p                       ; 7 uses
  %i.t = icmp ugt i64 %i.p, %i.s
  %i.u = icmp ugt i64 %i.s, %i.n
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, label %bb.c, !prof !31

bb.c:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.p, %i.n
  br i1 %i.v, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.p, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = icmp eq i64 %i.s, %i.n
  br i1 %i.x, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !34606, !noalias !34605, !noundef !28
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.e, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !34606, !noalias !34605, !noundef !28
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !33

._crit_edge:                                      ; preds = %bb.x
  %i.ae = getelementptr inbounds nuw i8, ptr %i.cj, i64 824
  %i.af = getelementptr inbounds nuw i8, ptr %i.cj, i64 704
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit
  %.sroa.03.0.lcssa = phi ptr [ %i.ae, %._crit_edge ], [ %4, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.01.0.lcssa = phi ptr [ %i.af, %._crit_edge ], [ %2, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34607)
  %i.ag = getelementptr i8, ptr %i.d, i64 -56
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !34607, !nonnull !28, !noundef !28 ; 9 uses
  %i.ai = getelementptr i8, ptr %i.d, i64 -48
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !34607, !noundef !28 ; 9 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 -16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !34607, !noundef !28 ; 12 uses
  %i.am = getelementptr i8, ptr %i.d, i64 -32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !34607, !noundef !28 ; 5 uses
  %i.ao = add i64 %i.an, %i.al                    ; 11 uses
  %i.ap = icmp ugt i64 %i.al, %i.ao
  %i.aq = icmp ugt i64 %i.ao, %i.aj
  %or.cond.i.i36 = or i1 %i.ap, %i.aq
  br i1 %or.cond.i.i36, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i64 %i.al, %i.aj                ; 2 uses
  br i1 %i.ar, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp eq i64 %i.al, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.at = icmp eq i64 %i.ao, %i.aj
  br i1 %i.at, label %bb.af, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !34608, !noalias !34607, !noundef !28
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %bb.j, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i38: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ao
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !34608, !noalias !34607, !noundef !28
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %bb.af, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !33

.body.thread10:                                   ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, %bb.az, %bb.o, %bb.ay
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.l:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.e, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %.not.i41 = icmp slt i64 %i.r, 0
  br i1 %.not.i41, label %bb.o, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp eq i64 %i.r, 0                     ; 2 uses
  br i1 %i.bb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34609
  %i.bc = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34609 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.l, %bb.n
  %.sroa.44.0.ph = phi i64 [ 1, %bb.n ], [ 0, %bb.l ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.44.0.ph, i64 %i.r) #71
          to label %bb.ae unwind label %.body.thread10

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18: ; preds = %bb.m, %bb.s
  %i.be = phi i64 [ %.pre, %bb.s ], [ %i.i, %bb.m ] ; 4 uses
  %i.bf = phi ptr [ %i.bc, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.m ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand12resolve_path:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 92, ptr %0, align 8
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand3run(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1024) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 384307168202282326) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %.sroa.4 = alloca [912 x i8], align 8           ; 3 uses
  %i.i = alloca [1024 x i8], align 8              ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [104 x i8], align 8               ; 8 uses
  %i.p = alloca [104 x i8], align 8               ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28, !noundef !28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !28
  %i.w = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.ad, %.body, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.x, %bb.b ], [ %.pn36, %.body ], [ %.pn36, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just11compilation11CompilationEBF_(ptr noalias nofree noundef align 8 dereferenceable(1024) %4) #72
          to label %bb.cf unwind label %bb.al

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.a
  %i.y = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.z = extractvalue { ptr, i64 } %i.w, 1
  invoke void @_RNvXNtCskXtk6F4WjxZ_4just5cleanRNtNtCsaKJjC64KgbL_3std4path4PathNtB2_5Clean5clean(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = load i64, ptr %i.ab, align 8, !range !92
  %switch107 = icmp slt i64 %i.ac, -9223372036854775806
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 527
  %.val46 = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %6, 0
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq i64 %6, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.aj = shl nuw nsw i64 %6, 4                   ; 5 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.al = trunc nuw i8 %.val46 to i1
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 976
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ao = load i8, ptr %i.an, align 8, !range !104
  %i.ap = icmp samesign ugt i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.3.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.av = icmp eq i64 %6, 1
  %unroll_iter = and i64 %6, 576460752303423486
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod340 = trunc i64 %6 to i1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #71
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.bl, %bb.e
  unreachable

bb.g:                                             ; preds = %.preheader, %bb.bw
  %i.aw = load i8, ptr %i.aa, align 8, !range !40, !noundef !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %.sroa.01.0 = select i1 %i.ax, i1 %switch107, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !66173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !66174
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.h, align 8, !noalias !66174
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66174
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66174
  store i8 0, ptr %i.ak, align 8, !noalias !66174
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !alias.scope !66173, !noalias !66175, !nonnull !28, !noundef !28 ; 4 uses
  %i.az = load i64, ptr %i.ag, align 8, !alias.scope !66173, !noalias !66175, !noundef !28 ; 9 uses
  %i.ba = icmp samesign ult i64 %i.az, 16
  br i1 %i.ba, label %.preheader.i.i.i.i, label %bb.j

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.az)
          to label %.noexc49 unwind label %.loopexit109 ; 2 uses

.noexc49:                                         ; preds = %bb.j
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %.loopexit.i, label %.loopexit35.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.k
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.011.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !66176, !noalias !66174, !noundef !28
  %i.bh = icmp eq i8 %i.bg, 58
  br i1 %i.bh, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i, %bb.h
  %i.bj = phi i64 [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i ], [ %i.cr, %bb.r ], [ 0, %bb.h ] ; 7 uses
  %i.bk = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(904) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.s unwind label %bb.ac, !noalias !66177 ; 2 uses

.loopexit35.i:                                    ; preds = %bb.k, %.noexc49, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !66174
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !66178
  %i.bl = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 9) 8) #70, !noalias !66178 ; 8 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %.preheader.i.i.i38.i.preheader

.preheader.i.i.i38.i.preheader:                   ; preds = %.loopexit35.i
  br i1 %i.av, label %.preheader.i.i.i38.i.epil.preheader, label %.preheader.i.i.i38.i

bb.m:                                             ; preds = %.loopexit35.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aj) #71
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.m
  unreachable

.preheader.i.i.i38.i:                             ; preds = %.preheader.i.i.i38.i.preheader, %.preheader.i.i.i38.i
  %i.bn = phi i64 [ %i.bz, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !66173, !noalias !66179, !nonnull !28, !noundef !28
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !66173, !noalias !66179, !noundef !28
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bn ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.br, align 8, !noalias !66180, !captures !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !66181
  %i.bt = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bv, align 8, !alias.scope !66173, !noalias !66179, !nonnull !28, !noundef !28
  %i.bw = getelementptr i8, ptr %i.bu, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.bw, align 8, !alias.scope !66173, !noalias !66179, !noundef !28
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !noalias !66180, !captures !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !noalias !66181
  %i.bz = add nuw nsw i64 %i.bn, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, label %.preheader.i.i.i38.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa: ; preds = %.preheader.i.i.i38.i
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i, label %.preheader.i.i.i38.i.epil.preheader

.preheader.i.i.i38.i.epil.preheader:              ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i38.i.preheader ], [ %i.bz, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.epil.init ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val15.i.i.i.i.i.i.i.epil = load ptr, ptr %i.cb, align 8, !alias.scope !66173, !noalias !66179, !nonnull !28, !noundef !28
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  %.val16.i.i.i.i.i.i.i.epil = load i64, ptr %i.cc, align 8, !alias.scope !66173, !noalias !66179, !noundef !28
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.epil, ptr %i.cd, align 8, !noalias !66180, !captures !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.epil, ptr %i.ce, align 8, !noalias !66181
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.epil.preheader
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, 384307168202282326) %6)
          to label %bb.o unwind label %bb.n, !noalias !66174

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %.noexc49
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.bd, %.noexc49 ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cf = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.az
  call void @llvm.assume(i1 %i.cf)
  br i1 %i.ah, label %bb.p, label %bb.ae

bb.n:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66174
  br label %.body

bb.o:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.ch = load i64, ptr %i.f, align 8, !range !37, !noalias !66174, !noundef !28 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66174
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66174
  br label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.421.0..sroa_idx.i, i64 24, i1 false), !noalias !66174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66174
  store i64 %i.ch, ptr %i.h, align 8, !noalias !66174
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66174
  br label %bb.l

bb.p:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66182
  %.not.i.i.i = icmp samesign ult i64 %i.az, 2
  br i1 %.not.i.i.i, label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = icmp ne i16 14906, %i.cl
  %i.cn = zext i1 %i.cm to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.cn
  %i.co = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  %i.cp = add i64 %i.az, -2
  %spec.select.i.i = select i1 %i.co, i64 %i.cp, i64 %i.az
  br label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i

_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.p
  %i.cq = phi i64 [ 1, %bb.p ], [ %spec.select.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ]
  store ptr %i.ay, ptr %i.e, align 8, !noalias !66182
  store i64 %i.cq, ptr %i.ai, align 8, !noalias !66182
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit109

.noexc51:                                         ; preds = %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66182
  %i.cr = load i64, ptr %i.g, align 8, !range !37, !noalias !66174, !noundef !28 ; 3 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66174
  br label %bb.ae

bb.r:                                             ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.0..sroa_idx.i, i64 24, i1 false), !noalias !66174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66174
  store i64 %i.cr, ptr %i.h, align 8, !noalias !66174
  br label %bb.l

bb.s:                                             ; preds = %bb.l
  %.not30.i = icmp eq ptr %i.bk, null
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.al, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !66183)
  call void @llvm.experimental.noalias.scope.decl(metadata !66184)
  %.val.i.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !66185, !noalias !66174, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !66185, !noalias !66174, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66186)
  %i.ct = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ct, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66187)
  call void @llvm.experimental.noalias.scope.decl(metadata !66188)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !66189, !noalias !66190 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !66189, !noalias !66190, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66191
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %i.cy = icmp eq i64 %i.cv, %.val1.i.i.i
  br i1 %i.cy, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.u
  %i.cz = icmp eq i64 %i.bj, 0
  br i1 %i.cz, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.da = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66190
  br label %bb.ae

bb.x:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 386
  %i.dc = load i8, ptr %i.db, align 2, !range !40, !noalias !66177, !noundef !28
  %i.dd = trunc nuw i8 %i.dc to i1
  %.sroa.77.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66174 ; 4 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66174 ; 3 uses
  br i1 %i.dd, label %.loopexit110, label %bb.z

bb.y:                                             ; preds = %bb.t
  %.sroa.77.0.copyload9.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66174
  %.sroa.8.0.copyload13.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66174
  br label %.loopexit110

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.77.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !66192)
  %i.de = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.de, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

.lr.ph.i.i.i.i53.i:                               ; preds = %bb.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i
  %.sroa.0.010.i.i.i.i54.i = phi i64 [ %i.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i ], [ 0, %bb.z ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.sroa.77.0.copyload.i, i64 %.sroa.0.010.i.i.i.i54.i ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.0.010.i.i.i.i54.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66193)
  call void @llvm.experimental.noalias.scope.decl(metadata !66194)
  %.val.i.i.i.i.i.i55.i = load i64, ptr %i.df, align 8, !alias.scope !66195, !noalias !66196 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i.i.i.i.i55.i, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i53.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val1.i.i.i.i.i.i56.i = load ptr, ptr %i.di, align 8, !alias.scope !66195, !noalias !66196, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i56.i, i64 noundef %.val.i.i.i.i.i.i55.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66197
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i53.i
  %i.dj = icmp eq i64 %i.dg, %.sroa.8.0.copyload.i
  br i1 %i.dj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, %bb.z
  %i.dk = icmp eq i64 %i.bj, 0
  br i1 %i.dk, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i
  %i.dl = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.77.0.copyload.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66196
  br label %bb.ae

bb.ac:                                            ; preds = %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #72, !noalias !66177
  br label %.body

.body:                                            ; preds = %.loopexit109, %.loopexit.split-lp, %bb.af, %bb.ax, %bb.ac, %bb.n, %.thread99
  %.pn36 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ax ], [ %i.do, %bb.af ], [ %.pn3198, %.thread99 ], [ %i.cg, %bb.n ], [ %i.dm, %bb.ac ], [ %lpad.loopexit, %.loopexit109 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66198)
  call void @llvm.experimental.noalias.scope.decl(metadata !66199)
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !66200 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i, 0
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathB13_EB13_ENCNCNvMNtB3q_6configNtB4o_6Config14from_argumentss_00EE9from_iterB3q_:bb.a
  %.sroa.07.0.copyload.i.i.i.i.i.i = phi ptr [ %.sroa.5.027.i.i.i.i, %bb.e ], [ %i.u, %bb.f ], [ %.sroa.013.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i, i64 890
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !105943, !noundef !28
  %i.al = zext i16 %i.ak to i64
  %i.am = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i, %i.al
  br i1 %i.am, label %bb.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i, %bb.g
  %.sroa.0.022.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.g ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ]
  %i.an = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, align 8, !noalias !105944, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.g
  %i.ao = zext i16 %i.ar to i64
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ap = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 888
  %i.ar = load i16, ptr %i.aq, align 8, !noalias !105944 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 890
  %i.at = load i16, ptr %i.as, align 2, !noalias !105943, !noundef !28
  %i.au = icmp ult i16 %i.ar, %i.at
  br i1 %i.au, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i.i.i.i.i unwind label %bb.l, !noalias !105945

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ao, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.an, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 4 uses
  %i.av = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ax), !noalias !105946
  %i.ay = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 904
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 2 uses
  %xtraiter50 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.k, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ba, %.prol.preheader ], [ %i.az, %bb.k ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.k ]
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.prol.preheader ], [ 0, %bb.k ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !105947, !nonnull !28, !noundef !28 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !105919

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.az, %bb.k ], [ %i.ba, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bb = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 8
  br i1 %i.bb, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bc, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bd, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.be, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bf, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bg, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bh, align 8, !noalias !105947, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bi, align 8, !noalias !105947, !nonnull !28, !noundef !28 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 896
  br i1 %i.bj, label %.loopexit.i.i.i.i, label %.new

bb.l:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !105946
  unreachable

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2870) #75
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !105948

.noexc.i.i.i.i:                                   ; preds = %.critedge.i.i.i.i.i
  unreachable

.loopexit14.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i.i.i:                       ; preds = %.critedge.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.i.i.i.i:                                ; preds = %.prol.loopexit, %.new, %bb.j
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.j ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 8
  %i.bn = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bn), !noalias !105946
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 624
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105950
  call void @llvm.experimental.noalias.scope.decl(metadata !105951)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105952
  store ptr %i.bq, ptr %i.c, align 8, !noalias !105952, !captures !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105952
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !105953, !noalias !105954, !nonnull !28, !noundef !28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !105953, !noalias !105954, !noundef !28
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bu)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit14.i.i.i.i, !noalias !105950

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105952
  store ptr %i.b, ptr %i.a, align 8, !noalias !105952
  store ptr @_RNvXs3_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !105952
  store ptr %i.c, ptr %i.o, align 8, !noalias !105952
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !105952
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @571, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i unwind label %bb.m, !noalias !105955

bb.m:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #72, !noalias !105956
  br label %.body

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105952
  call void @llvm.experimental.noalias.scope.decl(metadata !105957)
  call void @llvm.experimental.noalias.scope.decl(metadata !105958)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !105959, !noalias !105952, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !105959, !noalias !105952, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105960)
  %i.bw = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105961)
  call void @llvm.experimental.noalias.scope.decl(metadata !105962)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !105963, !noalias !105964 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !105963, !noalias !105964, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !105965
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = icmp eq i64 %i.by, %.val1.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !105959, !noalias !105952 ; 2 uses
  %i.cc = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %i.cd = mul nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !105964
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105952
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.val8.i29.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !105955
  %i.cf = add nuw nsw i64 %.val8.i29.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105950
  %i.cg = icmp eq i64 %i.t, 0
  br i1 %i.cg, label %.loopexit, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.loopexit14.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %bb.m
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %lpad.loopexit.i.i.i.i, %.loopexit14.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  store i64 %.val8.i29.i.i.i.i, ptr %i.n, align 8, !alias.scope !105966, !noalias !105967
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #72
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  store i64 %.val, ptr %i.n, align 8, !alias.scope !105966, !noalias !105967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB1Y_4skip4SkipINtNtNtB22_5slice4iter4IterB13_EEEE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !106000, !noalias !106001, !nonnull !28, !noundef !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !106000, !noalias !106001, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = ptrtoint ptr %.val3.i.i to i64           ; 2 uses
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !106000, !noalias !106001, !noundef !28 ; 4 uses
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.i) ; 4 uses
  %i.k = mul nuw nsw i64 %i.j, 24                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.j, 384307168202282325
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.g, %i.i
  br i1 %.not, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !106002
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #70, !noalias !106002 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.k, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #71
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = icmp samesign ule i64 %i.j, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106004)
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.h

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  %i.q = phi ptr [ %i.ab, %bb.h ], [ %.val.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %i.r = icmp eq ptr %i.q, %.val3.i.i
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub nuw i64 %i.d, %i.s
  %i.u = udiv exact i64 %i.t, 24                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.val10.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.x, %bb.g ] ; 4 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.val10.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106005
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.g unwind label %.body, !noalias !106006

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !106007
  %i.x = add i64 %.val10.i.i.i.i.i.i, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106005
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.loopexit, label %bb.f

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  %i.z = add i64 %i.i, -1                         ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp ult i64 %i.z, %i.g
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.loopexit

.body:                                            ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !106008, !noalias !106009
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72
  resume { ptr, i32 } %i.ac

.loopexit:                                        ; preds = %bb.g, %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.49.0.copyload.sink.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %._crit_edge.i.i.i.i.i ], [ %i.u, %bb.g ]
  store i64 %.sroa.49.0.copyload.sink.i.i.i.i, ptr %i.p, align 8, !alias.scope !106008, !noalias !106010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterB13_EINtNtNtB2e_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !106041, !noalias !106042, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null                ; 3 uses
  %i.d = load i64, ptr %1, align 8, !range !85, !alias.scope !106041, !noalias !106042, !noundef !28 ; 7 uses
  %.not7.i.not.not = icmp eq i64 %i.d, -2         ; 2 uses
  br i1 %.not.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !106041, !noalias !106042, !nonnull !28, !noundef !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i = load ptr, ptr %i.f, align 8, !alias.scope !106041, !noalias !106042, !nonnull !28, !noundef !28
  %i.g = ptrtoint ptr %.val10.i to i64
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 24
  %narrow = icmp ult i64 %i.d, -2
  %i.k = zext i1 %narrow to i64
  %.sink21.i = add nuw nsw i64 %i.j, %i.k         ; 3 uses
  %i.l = mul i64 %.sink21.i, 24                   ; 2 uses
  %or.cond.i.i = icmp samesign ugt i64 %.sink21.i, 384307168202282325
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !118

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a
  %narrow14 = icmp ult i64 %i.d, -2               ; 2 uses
  %.sink21.i.ph = zext i1 %narrow14 to i64
  %i.m = select i1 %narrow14, i64 24, i64 0
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit
  %i.n = phi i64 [ %i.m, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread ], [ %i.l, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ] ; 3 uses
  %.sink21.i13 = phi i64 [ %.sink21.i.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread ], [ %.sink21.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !106043
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #70, !noalias !106043 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit
  %i.r = phi i64 [ %i.n, %bb.c ], [ %i.l, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.r) #71
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %.sink21.i13, %bb.c ] ; 3 uses
  %i.s = icmp samesign ule i64 %.sink21.i13, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106047)
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !106048, !noalias !106049, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !106048, !noalias !106049, !nonnull !28, !noundef !28
  %i.x = ptrtoint ptr %.val10.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24                 ; 2 uses
  br i1 %.not7.i.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i.not.not, label %bb.m, label %bb.h

end_hunk_2
