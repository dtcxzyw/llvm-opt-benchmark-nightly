inline.NumInlined: 10989
inline.NumDeleted: 2487
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs1_NtNtCseqDwI8vvjGQ_10serde_json5value2deINtNtBa_3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_5ValueENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionss_1__NtB2W_13ProtocolInnerNtB1P_11Deserialize11deserialize9___VisitorEB32_:bb.a
  %.sroa.060.sroa.5.sroa.4.0..sroa.060.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.060.sroa.5.sroa.4.0..sroa.060.sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.379.i, i64 40, i1 false), !noalias !4387
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sroa.4.0.i.ph356, ptr %.sroa.561.0..sroa_idx.i, align 8, !alias.scope !4384, !noalias !4387
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.sroa.418.0.i.ph, ptr %.sroa.662.0..sroa_idx.i, align 4, !alias.scope !4384, !noalias !4387
  store i64 0, ptr %0, align 8, !alias.scope !4384, !noalias !4387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.379.i)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(104) %i.fg, i64 104, i1 false)
  %i.fh = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !noundef !3
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.bz, label %bb.ca, !prof !106

bb.bz:                                            ; preds = %bb.by
  store i64 0, ptr %0, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.fj = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef %i.r, ptr noundef nonnull @42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
          to label %bb.cg unwind label %bb.cf

bb.cb:                                            ; preds = %bb.cg, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json3map8IntoIterECs14kWLkQVSKO_14deltalake_core.exit.i39 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load i8, ptr %i.v, align 8, !range !1612, !alias.scope !4505, !noundef !3
  %i.fm = icmp eq i8 %i.fl, 6
  br i1 %i.fm, label %common.resume, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %common.resume unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json3map8IntoIterECs14kWLkQVSKO_14deltalake_core.exit.i39: ; preds = %bb.cb
  %i.fn = load i8, ptr %i.v, align 8, !range !1612, !alias.scope !4510, !noundef !3
  %i.fo = icmp eq i8 %i.fn, 6
  br i1 %i.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value2de15MapDeserializerECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value2de15MapDeserializerECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ce:                                            ; preds = %bb.cd
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.cf:                                            ; preds = %bb.ca
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13ProtocolInnerEBO_(ptr noalias noundef align 8 dereferenceable(104) %i.o) #52
          to label %.body unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ca
  store ptr %i.fj, ptr %i.fg, align 8
  store i64 1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13ProtocolInnerEBO_(ptr noalias noundef align 8 dereferenceable(104) %i.o)
          to label %bb.cb unwind label %bb.bt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value2de15MapDeserializerECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json3map8IntoIterECs14kWLkQVSKO_14deltalake_core.exit.i39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json3map8IntoIterECs14kWLkQVSKO_14deltalake_core.exit.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value2de15MapDeserializerECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value2de15MapDeserializerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCseqDwI8vvjGQ_10serde_json5value2de15MapDeserializerECs14kWLkQVSKO_14deltalake_core.exit.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json3map8IntoIterECs14kWLkQVSKO_14deltalake_core.exit.i39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json3map8IntoIterECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ch:                                            ; preds = %bb.cf, %.body
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1779, !noundef !3 ; 3 uses
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4516)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !4519, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.a
  %i.f = zext nneg i8 %i.a to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !4519, !noundef !3 ; 3 uses
  %i.j = or i128 %i.i, %i.h                       ; 2 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !4519
  %i.k = add nuw i8 %i.d, 64
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !4519
  br i1 %i.b, label %bb.b, label %bb.c

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !4519, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !4519, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !4519, !nonnull !3, !align !311, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !4519, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128                    ; 2 uses
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !4519
  %i.ab = zext nneg i8 %i.a to i128
  store i128 %i.ab, ptr %1, align 16, !alias.scope !4519
  store i8 64, ptr %i.c, align 16, !alias.scope !4519
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.b:                                             ; preds = %bb.d, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  ret void

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4523)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, label %bb.d

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !4526
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 16, !alias.scope !4526
  %.pre17 = load i64, ptr %.pre16, align 8, !noalias !4526
  %.pre18 = zext i64 %.pre17 to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.d:                                             ; preds = %bb.c
  %i.ag = trunc i128 %i.i to i64
  %i.ah = lshr i128 %i.i, 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !4531, !noundef !3
  %i.ak = xor i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 16, !alias.scope !4531, !nonnull !3, !align !311, !noundef !3
  %i.an = load i64, ptr %i.am, align 8, !noalias !4531, !noundef !3
  %i.ao = zext i64 %i.ak to i128
  %i.ap = zext i64 %i.an to i128                  ; 2 uses
  %i.aq = xor i128 %i.ah, %i.ap
  %i.ar = mul nuw i128 %i.aq, %i.ao               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  store i64 %i.au, ptr %i.ai, align 8, !alias.scope !4531
  %i.av = zext i64 %i.af to i128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !2045, !noundef !3 ; 2 uses
  %.not14 = icmp eq i8 %i.ax, 2                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  %i.ay = select i1 %.not14, i128 0, i128 18446744073709551616
  %i.az = or disjoint i128 %i.ay, %i.av
  store i128 %i.az, ptr %1, align 16, !alias.scope !4526
  store i8 -128, ptr %i.c, align 16, !alias.scope !4526
  br i1 %.not14, label %bb.b, label %bb.f

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, %.thread
  %.pre-phi = phi i128 [ %.pre18, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.v, %.thread ]
  %i.ba = phi i64 [ %.pre, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.aa, %.thread ]
  %i.bb = phi i128 [ %i.j, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ 0, %.thread ] ; 2 uses
  %i.bc = phi i64 [ %i.af, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.ad, %.thread ]
  %i.bd = zext i64 %i.bc to i128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !2045, !noundef !3 ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 2                     ; 2 uses
  %i.bh = trunc i128 %i.bb to i64
  %i.bi = lshr i128 %i.bb, 64
  %i.bj = or i128 %i.bi, %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = xor i64 %i.ba, %i.bh
  %i.bm = zext i64 %i.bl to i128
  %i.bn = xor i128 %i.bj, %.pre-phi
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.br, ptr %i.bk, align 8, !alias.scope !4526
  %i.bs = zext i1 %i.bg to i128
  store i128 %i.bs, ptr %1, align 16, !alias.scope !4526
  store i8 64, ptr %i.c, align 16, !alias.scope !4526
  br i1 %i.bg, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.bt = zext nneg i8 %i.bf to i128
  %i.bu = shl nuw nsw i128 %i.bt, 64
  %i.bv = or disjoint i128 %i.bu, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.f:                                             ; preds = %bb.d
  %i.bw = xor i64 %i.af, %i.au
  %i.bx = zext i64 %i.bw to i128
  %i.by = xor i128 %i.ap, 1
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64
  store i64 %i.cc, ptr %i.ai, align 8, !alias.scope !4534
  %i.cd = zext nneg i8 %i.ax to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.e, %bb.f
  %storemerge = phi i128 [ %i.cd, %bb.f ], [ %i.bv, %bb.e ]
  %storemerge.i.i = phi i8 [ 64, %bb.f ], [ -128, %bb.e ]
  store i128 %storemerge, ptr %1, align 16, !alias.scope !4534
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !4534
  br label %bb.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !1779, !noundef !3 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = zext nneg i8 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4539
  store i64 %i.g, ptr %i.d, align 8, !noalias !4539
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4539
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4544
  store i64 %i.i, ptr %i.c, align 8, !noalias !4544
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4544
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !2045, !noundef !3 ; 2 uses
  %i.l = icmp ne i8 %i.k, 2                       ; 2 uses
  %i.m = zext i1 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4547
  store i64 %i.m, ptr %i.b, align 8, !noalias !4547
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4547
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4552
  store i64 %i.n, ptr %i.a, align 8, !noalias !4552
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4552
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1b_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1779, !noundef !3 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = zext nneg i8 %i.a to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !2045, !noundef !3 ; 2 uses
  %i.h = icmp ne i8 %i.g, 2                       ; 2 uses
  %i.i = zext i1 %i.h to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.i)
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.g to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.j)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1l_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !357, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 70                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4560)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !4563, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.a
  %i.f = zext i1 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !4563, !noundef !3
  %i.j = or i128 %i.i, %i.h                       ; 5 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !4563
  %i.k = add nuw i8 %i.d, 64
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !4563
  br i1 %i.b, label %bb.b, label %bb.d

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !4563, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !4563, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !4563, !nonnull !3, !align !311, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !4563, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !4563
  %i.ab = zext i1 %i.b to i128                    ; 2 uses
  store i128 %i.ab, ptr %1, align 16, !alias.scope !4563
  store i8 64, ptr %i.c, align 16, !alias.scope !4563
  br i1 %i.b, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !noundef !3
  %.not23 = icmp eq i64 %i.ad, -9223372036854775808 ; 2 uses
  %i.ae = select i1 %.not23, i128 0, i128 18446744073709551616
  %i.af = or disjoint i128 %i.ae, %i.ab           ; 3 uses
  store i128 %i.af, ptr %1, align 16, !alias.scope !4564
  store i8 -128, ptr %i.c, align 16, !alias.scope !4564
  br i1 %.not23, label %.thread14, label %bb.g

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !noundef !3
  %.not22 = icmp eq i64 %i.ah, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4570)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.c:                                             ; preds = %bb.b
  %i.ai = select i1 %.not22, i128 0, i128 18446744073709551616
  %i.aj = or i128 %i.j, %i.ai                     ; 3 uses
  store i128 %i.aj, ptr %1, align 16, !alias.scope !4564
  store i8 -128, ptr %i.c, align 16, !alias.scope !4564
  %extract.t = trunc i128 %i.j to i64
  br i1 %.not22, label %.thread14, label %bb.g

.thread14:                                        ; preds = %.thread, %bb.c
  %i.ak = phi i128 [ %i.af, %.thread ], [ %i.aj, %bb.c ]
  %i.al = icmp ne i64 %i.a, 69                    ; 2 uses
  %i.am = zext i1 %i.al to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.b
  %i.an = trunc i128 %i.j to i64
  %i.ao = lshr i128 %i.j, 64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !4564, !noundef !3
  %i.ar = xor i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !4564, !nonnull !3, !align !311, !noundef !3
  %i.au = load i64, ptr %i.at, align 8, !noalias !4564, !noundef !3
  %i.av = zext i64 %i.ar to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = xor i128 %i.ao, %i.aw
  %i.ay = mul nuw i128 %i.ax, %i.av               ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = xor i128 %i.az, %i.ay
  %i.bb = trunc i128 %i.ba to i64
  store i64 %i.bb, ptr %i.ap, align 8, !alias.scope !4564
  br i1 %.not22, label %.thread15, label %bb.f

.thread15:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.bc = icmp ne i64 %i.a, 69                    ; 2 uses
  %i.bd = zext i1 %i.bc to i64
  br label %._crit_edge

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
end_hunk_0
begin_hunk_1_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.asc, label %bb.bv, label %bb.bu, !prof !106

bb.bu:                                            ; preds = %bb.bt
  %i.asd = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.arx, i64 noundef range(i64 0, -9223372036854775808) %i.arz, i64 noundef %i.asb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aru) #58, !noalias !5112
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i

bb.bv:                                            ; preds = %bb.bt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5116)
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  %i.asf = load i64, ptr %i.ase, align 8, !alias.scope !5116, !noalias !5118, !noundef !3 ; 4 uses
  %i.asg = icmp samesign ugt i64 %i.arz, 7
  br i1 %i.asg, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ash = icmp samesign ugt i64 %i.arz, 3
  br i1 %i.ash, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i, label %bb.bx

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i: ; preds = %bb.bv
  %.sroa.014.0.copyload.i.i.i30.i = load i64, ptr %i.arx, align 1, !alias.scope !5119, !noalias !5120
  %i.asi = xor i64 %.sroa.014.0.copyload.i.i.i30.i, %i.asb
  %i.asj = getelementptr i8, ptr %i.arx, i64 %i.arz
  %i.ask = getelementptr i8, ptr %i.asj, i64 -8
  %.sroa.016.0.copyload.i.i.i31.i = load i64, ptr %i.ask, align 1, !alias.scope !5119, !noalias !5120
  %i.asl = xor i64 %.sroa.016.0.copyload.i.i.i31.i, %i.asf
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i22.i = icmp eq i64 %i.arz, 0
  br i1 %.not.i.i.i22.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i, label %bb.by

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i: ; preds = %bb.bw
  %i.asm = getelementptr i8, ptr %i.arx, i64 %i.arz
  %i.asn = getelementptr i8, ptr %i.asm, i64 -4
  %.sroa.019.0.copyload.i.i.i27.i = load i32, ptr %i.asn, align 1, !alias.scope !5119, !noalias !5120
  %.sroa.018.0.copyload.i.i.i28.i = load i32, ptr %i.arx, align 1, !alias.scope !5119, !noalias !5120
  %i.aso = zext i32 %.sroa.018.0.copyload.i.i.i28.i to i64
  %i.asp = xor i64 %i.asb, %i.aso
  %i.asq = zext i32 %.sroa.019.0.copyload.i.i.i27.i to i64
  %i.asr = xor i64 %i.asf, %i.asq
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

bb.by:                                            ; preds = %bb.bx
  %i.ass = load i8, ptr %i.arx, align 1, !alias.scope !5119, !noalias !5120, !noundef !3
  %i.ast = lshr i64 %i.arz, 1
  %i.asu = getelementptr inbounds nuw i8, ptr %i.arx, i64 %i.ast
  %i.asv = load i8, ptr %i.asu, align 1, !alias.scope !5119, !noalias !5120, !noundef !3
  %i.asw = getelementptr i8, ptr %i.arx, i64 %i.arz
  %i.asx = getelementptr i8, ptr %i.asw, i64 -1
  %i.asy = load i8, ptr %i.asx, align 1, !alias.scope !5119, !noalias !5120, !noundef !3
  %i.asz = zext i8 %i.ass to i64
  %i.ata = xor i64 %i.asb, %i.asz
  %i.atb = zext i8 %i.asy to i64
  %i.atc = shl nuw nsw i64 %i.atb, 8
  %i.atd = zext i8 %i.asv to i64
  %i.ate = or disjoint i64 %i.atc, %i.atd
  %i.atf = xor i64 %i.ate, %i.asf
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i: ; preds = %bb.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i, %bb.bx, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i
  %.sroa.04.0.i.i.i24.i = phi i64 [ %i.asl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i ], [ %i.asr, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i ], [ %i.atf, %bb.by ], [ %i.asf, %bb.bx ]
  %.sroa.0.0.i.i.i25.i = phi i64 [ %i.asi, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i ], [ %i.asp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i ], [ %i.ata, %bb.by ], [ %i.asb, %bb.bx ]
  %i.atg = zext i64 %.sroa.0.0.i.i.i25.i to i128
  %i.ath = zext i64 %.sroa.04.0.i.i.i24.i to i128
  %i.ati = mul nuw i128 %i.atg, %i.ath            ; 2 uses
  %i.atj = lshr i128 %i.ati, 64
  %i.atk = xor i128 %i.atj, %i.ati
  %i.atl = trunc i128 %i.atk to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i, %bb.bu
  %storemerge.i.i19.i = phi i64 [ %i.asd, %bb.bu ], [ %i.atl, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i ] ; 2 uses
  store i64 %storemerge.i.i19.i, ptr %i.asa, align 8, !alias.scope !5059, !noalias !5064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  %i.atm = icmp ugt i8 %storemerge.i.i39.i, 120
  br i1 %i.atm, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i
  %i.atn = zext nneg i8 %storemerge.i.i39.i to i128
  %i.ato = shl nuw i128 255, %i.atn
  %i.atp = load i128, ptr %1, align 16, !alias.scope !5127, !noalias !5128, !noundef !3
  %i.atq = or i128 %i.atp, %i.ato
  %i.atr = add nuw i8 %storemerge.i.i39.i, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i

bb.ca:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i
  %i.ats = load i128, ptr %1, align 16, !alias.scope !5127, !noalias !5128, !noundef !3 ; 2 uses
  %i.att = trunc i128 %i.ats to i64
  %i.atu = lshr i128 %i.ats, 64
  %i.atv = xor i64 %storemerge.i.i19.i, %i.att
  %i.atw = load i64, ptr %i.aru, align 8, !noalias !5129, !noundef !3
  %i.atx = zext i64 %i.atv to i128
  %i.aty = zext i64 %i.atw to i128
  %i.atz = xor i128 %i.atu, %i.aty
  %i.aua = mul nuw i128 %i.atz, %i.atx            ; 2 uses
  %i.aub = lshr i128 %i.aua, 64
  %i.auc = xor i128 %i.aub, %i.aua
  %i.aud = trunc i128 %i.auc to i64
  store i64 %i.aud, ptr %i.asa, align 8, !alias.scope !5127, !noalias !5128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i: ; preds = %bb.ca, %bb.bz
  %.sink.i20.i = phi i128 [ 255, %bb.ca ], [ %i.atq, %bb.bz ] ; 2 uses
  %storemerge.i.i.i21.i = phi i8 [ 8, %bb.ca ], [ %i.atr, %bb.bz ] ; 2 uses
  store i128 %.sink.i20.i, ptr %1, align 16, !alias.scope !5127, !noalias !5128
  store i8 %storemerge.i.i.i21.i, ptr %i.d, align 16, !alias.scope !5127, !noalias !5128
  br label %bb.cb

bb.cb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i, %bb.bj
  %i.aue = phi i128 [ %i.ann, %bb.bj ], [ %.sink.i20.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i ] ; 3 uses
  %i.auf = phi i8 [ %i.ano, %bb.bj ], [ %storemerge.i.i.i21.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i ] ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.auh = load i8, ptr %i.aug, align 2, !range !1779, !alias.scope !4910, !noalias !4913, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5133)
  %i.aui = icmp ugt i8 %i.auf, 120
  br i1 %i.aui, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread46.i
  %i.auj = phi i128 [ 0, %.thread46.i ], [ %i.aue, %bb.cb ]
  %i.auk = phi i8 [ %i.aog, %.thread46.i ], [ %i.auh, %bb.cb ]
  %i.aul = phi i8 [ 64, %.thread46.i ], [ %i.auf, %bb.cb ] ; 2 uses
  %i.aum = zext nneg i8 %i.auk to i128
  %i.aun = zext nneg i8 %i.aul to i128
  %i.auo = shl nuw nsw i128 %i.aum, %i.aun
  %i.aup = or i128 %i.auo, %i.auj                 ; 2 uses
  store i128 %i.aup, ptr %1, align 16, !alias.scope !5136, !noalias !4910
  %i.auq = add nuw i8 %i.aul, 8
  br label %.sink.split.i

bb.cd:                                            ; preds = %bb.cb
  %i.aur = trunc i128 %i.aue to i64
  %i.aus = lshr i128 %i.aue, 64
  %i.aut = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.auu = load i64, ptr %i.aut, align 8, !alias.scope !5136, !noalias !4910, !noundef !3
  %i.auv = xor i64 %i.auu, %i.aur
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aux = load ptr, ptr %i.auw, align 16, !alias.scope !5136, !noalias !4910, !nonnull !3, !align !311, !noundef !3
  %i.auy = load i64, ptr %i.aux, align 8, !noalias !5137, !noundef !3
  %i.auz = zext i64 %i.auv to i128
  %i.ava = zext i64 %i.auy to i128
  %i.avb = xor i128 %i.aus, %i.ava
  %i.avc = mul nuw i128 %i.avb, %i.auz            ; 2 uses
  %i.avd = lshr i128 %i.avc, 64
  %i.ave = xor i128 %i.avd, %i.avc
  %i.avf = trunc i128 %i.ave to i64
  store i64 %i.avf, ptr %i.aut, align 8, !alias.scope !5136, !noalias !4910
  %i.avg = zext nneg i8 %i.auh to i128            ; 2 uses
  store i128 %i.avg, ptr %1, align 16, !alias.scope !5136, !noalias !4910
  br label %.sink.split.i

_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.avh = phi i128 [ %i.aoh, %.sink.split.i ], [ %i.abt, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ], [ %i.zv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 3 uses
  %i.avi = phi i8 [ %storemerge.i.i7.sink.i, %.sink.split.i ], [ %storemerge.i.i5.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ], [ %i.zw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.avk = load i64, ptr %i.avj, align 8, !range !4, !noundef !3
  %i.avl = icmp ne i64 %i.avk, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5141)
  %i.avm = icmp ugt i8 %i.avi, 64
  br i1 %i.avm, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.ce

bb.ce:                                            ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.avn = phi i128 [ 0, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.avh, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.avo = phi i1 [ %i.aaq, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.avl, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.avp = phi i8 [ 64, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.avi, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.avq = zext i1 %i.avo to i128
  %i.avr = zext nneg i8 %i.avp to i128
  %i.avs = shl nuw nsw i128 %i.avq, %i.avr
  %i.avt = or i128 %i.avs, %i.avn                 ; 4 uses
  store i128 %i.avt, ptr %1, align 16, !alias.scope !5144
  %i.avu = add nuw i8 %i.avp, 64
  store i8 %i.avu, ptr %i.d, align 16, !alias.scope !5144
  br i1 %i.avo, label %bb.cg, label %.thread79

.thread79:                                        ; preds = %bb.ce
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.avw = load i64, ptr %i.avv, align 8, !range !322, !noundef !3 ; 2 uses
  %i.avx = icmp ne i64 %i.avw, -9223372036854775807 ; 2 uses
  %i.avy = zext i1 %i.avx to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.avz = trunc i128 %i.avh to i64
  %i.awa = lshr i128 %i.avh, 64
  %i.awb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.awc = load i64, ptr %i.awb, align 8, !alias.scope !5144, !noundef !3
  %i.awd = xor i64 %i.awc, %i.avz
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.awf = load ptr, ptr %i.awe, align 16, !alias.scope !5144, !nonnull !3, !align !311, !noundef !3
  %i.awg = load i64, ptr %i.awf, align 8, !noalias !5144, !noundef !3
  %i.awh = zext i64 %i.awd to i128
  %i.awi = zext i64 %i.awg to i128
  %i.awj = xor i128 %i.awa, %i.awi
  %i.awk = mul nuw i128 %i.awj, %i.awh            ; 2 uses
  %i.awl = lshr i128 %i.awk, 64
  %i.awm = xor i128 %i.awl, %i.awk
  %i.awn = trunc i128 %i.awm to i64
  store i64 %i.awn, ptr %i.awb, align 8, !alias.scope !5144
  %i.awo = zext i1 %i.avl to i128
  store i128 %i.awo, ptr %1, align 16, !alias.scope !5144
  store i8 64, ptr %i.d, align 16, !alias.scope !5144
  br i1 %i.avl, label %bb.cf, label %.thread80

.thread80:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.awp = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.awq = load i64, ptr %i.awp, align 8, !range !322, !noundef !3 ; 2 uses
  %i.awr = icmp ne i64 %i.awq, -9223372036854775807 ; 2 uses
  %i.aws = zext i1 %i.awr to i64
  br label %._crit_edge107

bb.cf:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.awt = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.awu = load ptr, ptr %i.awt, align 8, !nonnull !3, !noundef !3
  %i.awv = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aww = load i64, ptr %i.awv, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5151)
  %i.awx = zext i64 %i.aww to i128
  %i.awy = shl nuw i128 %i.awx, 64
  %i.awz = or disjoint i128 %i.awy, 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.axa = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.axb = load ptr, ptr %i.axa, align 8, !nonnull !3, !noundef !3
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.axd = load i64, ptr %i.axc, align 8, !noundef !3 ; 2 uses
  %i.axe = trunc i128 %i.avt to i64
  %i.axf = lshr i128 %i.avt, 64
  %i.axg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.axh = load i64, ptr %i.axg, align 8, !alias.scope !5154, !noundef !3
  %i.axi = xor i64 %i.axh, %i.axe
  %i.axj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.axk = load ptr, ptr %i.axj, align 16, !alias.scope !5154, !nonnull !3, !align !311, !noundef !3
  %i.axl = load i64, ptr %i.axk, align 8, !noalias !5154, !noundef !3
  %i.axm = zext i64 %i.axi to i128
  %i.axn = zext i64 %i.axl to i128
  %i.axo = xor i128 %i.axf, %i.axn
  %i.axp = mul nuw i128 %i.axo, %i.axm            ; 2 uses
  %i.axq = lshr i128 %i.axp, 64
  %i.axr = xor i128 %i.axq, %i.axp
  %i.axs = trunc i128 %i.axr to i64
  store i64 %i.axs, ptr %i.axg, align 8, !alias.scope !5154
  %i.axt = zext i64 %i.axd to i128
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.axu = phi i64 [ %i.axd, %bb.cg ], [ %i.aww, %bb.cf ]
  %i.axv = phi ptr [ %i.axb, %bb.cg ], [ %i.awu, %bb.cf ]
  %.sink.i28 = phi i128 [ %i.axt, %bb.cg ], [ %i.awz, %bb.cf ]
  %storemerge.i.i.i29 = phi i8 [ 64, %bb.cg ], [ -128, %bb.cf ]
  store i128 %.sink.i28, ptr %1, align 16, !alias.scope !5154
  store i8 %storemerge.i.i.i29, ptr %i.d, align 16, !alias.scope !5154
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.axv, i64 noundef %i.axu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr78 = load i8, ptr %i.d, align 16, !alias.scope !5155 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.axx = load i64, ptr %i.axw, align 8, !range !322, !noundef !3 ; 3 uses
  %i.axy = icmp ne i64 %i.axx, -9223372036854775807 ; 3 uses
  %i.axz = zext i1 %i.axy to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5161)
  %i.aya = icmp ugt i8 %.pr78, 64
  %.pre109 = load i128, ptr %1, align 16, !alias.scope !5155 ; 2 uses
  br i1 %i.aya, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.ch, %.thread80
  %i.ayb = phi i128 [ 0, %.thread80 ], [ %.pre109, %bb.ch ]
  %i.ayc = phi i64 [ %i.aws, %.thread80 ], [ %i.axz, %bb.ch ]
  %i.ayd = phi i1 [ %i.awr, %.thread80 ], [ %i.axy, %bb.ch ]
  %i.aye = phi i64 [ %i.awq, %.thread80 ], [ %i.axx, %bb.ch ]
  %i.ayf = phi ptr [ %i.awp, %.thread80 ], [ %i.axw, %bb.ch ] ; 2 uses
  %i.ayg = phi i8 [ 64, %.thread80 ], [ %.pr78, %bb.ch ] ; 3 uses
  %i.ayh = zext nneg i64 %i.ayc to i128
  %i.ayi = zext nneg i8 %i.ayg to i128
  %i.ayj = shl nuw nsw i128 %i.ayh, %i.ayi
  %i.ayk = or i128 %i.ayj, %i.ayb                 ; 4 uses
  store i128 %i.ayk, ptr %1, align 16, !alias.scope !5155
  %i.ayl = add nuw i8 %i.ayg, 64                  ; 2 uses
  store i8 %i.ayl, ptr %i.d, align 16, !alias.scope !5155
  br i1 %i.ayd, label %bb.ci, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.ch, %.thread79
  %i.aym = phi i128 [ %i.avt, %.thread79 ], [ %.pre109, %bb.ch ] ; 2 uses
  %i.ayn = phi i64 [ %i.avy, %.thread79 ], [ %i.axz, %bb.ch ]
  %i.ayo = phi i1 [ %i.avx, %.thread79 ], [ %i.axy, %bb.ch ]
  %i.ayp = phi i64 [ %i.avw, %.thread79 ], [ %i.axx, %bb.ch ]
  %i.ayq = phi ptr [ %i.avv, %.thread79 ], [ %i.axw, %bb.ch ]
  %i.ayr = trunc i128 %i.aym to i64
  %i.ays = lshr i128 %i.aym, 64
  %i.ayt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ayu = load i64, ptr %i.ayt, align 8, !alias.scope !5155, !noundef !3
  %i.ayv = xor i64 %i.ayu, %i.ayr
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ayx = load ptr, ptr %i.ayw, align 16, !alias.scope !5155, !nonnull !3, !align !311, !noundef !3
  %i.ayy = load i64, ptr %i.ayx, align 8, !noalias !5155, !noundef !3
  %i.ayz = zext i64 %i.ayv to i128
  %i.aza = zext i64 %i.ayy to i128
  %i.azb = xor i128 %i.ays, %i.aza
  %i.azc = mul nuw i128 %i.azb, %i.ayz            ; 2 uses
  %i.azd = lshr i128 %i.azc, 64
  %i.aze = xor i128 %i.azd, %i.azc
  %i.azf = trunc i128 %i.aze to i64
  store i64 %i.azf, ptr %i.ayt, align 8, !alias.scope !5155
  %i.azg = zext nneg i64 %i.ayn to i128           ; 2 uses
  store i128 %i.azg, ptr %1, align 16, !alias.scope !5155
  br i1 %i.ayo, label %.thread82, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143

.thread82:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.azh = icmp eq i64 %i.ayp, -9223372036854775808 ; 2 uses
  %i.azi = select i1 %i.azh, i128 18446744073709551616, i128 0
  %i.azj = or disjoint i128 %i.azi, %i.azg
  store i128 %i.azj, ptr %1, align 16, !alias.scope !5162, !noalias !5169
  store i8 -128, ptr %i.d, align 16, !alias.scope !5162, !noalias !5169
  br i1 %i.azh, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ck

bb.ci:                                            ; preds = %._crit_edge107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5171)
  %i.azk = icmp eq i64 %i.aye, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5173)
  %.not90 = icmp eq i8 %i.ayg, 0
  br i1 %.not90, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.azl = trunc i128 %i.ayk to i64
  %i.azm = lshr i128 %i.ayk, 64
  %i.azn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.azo = load i64, ptr %i.azn, align 8, !alias.scope !5162, !noalias !5169, !noundef !3
  %i.azp = xor i64 %i.azo, %i.azl
  %i.azq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.azr = load ptr, ptr %i.azq, align 16, !alias.scope !5162, !noalias !5169, !nonnull !3, !align !311, !noundef !3
  %i.azs = load i64, ptr %i.azr, align 8, !noalias !5174, !noundef !3
  %i.azt = zext i64 %i.azp to i128
  %i.azu = zext i64 %i.azs to i128
  %i.azv = xor i128 %i.azm, %i.azu
  %i.azw = mul nuw i128 %i.azv, %i.azt            ; 2 uses
  %i.azx = lshr i128 %i.azw, 64
  %i.azy = xor i128 %i.azx, %i.azw
  %i.azz = trunc i128 %i.azy to i64
  store i64 %i.azz, ptr %i.azn, align 8, !alias.scope !5162, !noalias !5169
  %i.baa = zext i1 %i.azk to i128
  store i128 %i.baa, ptr %1, align 16, !alias.scope !5162, !noalias !5169
  store i8 64, ptr %i.d, align 16, !alias.scope !5162, !noalias !5169
  br i1 %i.azk, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143, label %bb.ck

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31: ; preds = %bb.ci
  %i.bab = select i1 %i.azk, i128 18446744073709551616, i128 0
  %i.bac = or i128 %i.ayk, %i.bab
  store i128 %i.bac, ptr %1, align 16, !alias.scope !5162, !noalias !5169
  store i8 -128, ptr %i.d, align 16, !alias.scope !5162, !noalias !5169
  br i1 %i.azk, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %.thread82, %bb.cj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31
  %i.bad = phi ptr [ %i.ayf, %bb.cj ], [ %i.ayf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31 ], [ %i.ayq, %.thread82 ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bad, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pre110 = load i8, ptr %i.d, align 16, !alias.scope !5175
  br label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31, %.thread82
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.baf = load ptr, ptr %i.bae, align 8, !nonnull !3, !noundef !3
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bah = load i64, ptr %i.bag, align 8, !noundef !3
  br label %bb.cm

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.cj
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.baj = load ptr, ptr %i.bai, align 8, !nonnull !3, !noundef !3
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bal = load i64, ptr %i.bak, align 8, !noundef !3
  br label %bb.cl

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ck, %._crit_edge107
  %i.bam = phi i8 [ %.pre110, %bb.ck ], [ %i.ayl, %._crit_edge107 ] ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bao = load ptr, ptr %i.ban, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.baq = load i64, ptr %i.bap, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  %i.bar = icmp ugt i8 %i.bam, 64
  br i1 %i.bar, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bas = phi i64 [ %i.bal, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143 ], [ %i.baq, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bat = phi ptr [ %i.baj, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143 ], [ %i.bao, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.bau = phi i8 [ 64, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread143 ], [ %i.bam, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bav = zext i64 %i.bas to i128
  %i.baw = zext nneg i8 %i.bau to i128
  %i.bax = shl nuw i128 %i.bav, %i.baw
  %i.bay = load i128, ptr %1, align 16, !alias.scope !5175, !noundef !3
  %i.baz = or i128 %i.bay, %i.bax
  %i.bba = add nuw i8 %i.bau, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

bb.cm:                                            ; preds = %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bbb = phi i64 [ %i.bah, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.baq, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bbc = phi ptr [ %i.baf, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bao, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.bbd = load i128, ptr %1, align 16, !alias.scope !5175, !noundef !3 ; 2 uses
  %i.bbe = trunc i128 %i.bbd to i64
  %i.bbf = lshr i128 %i.bbd, 64
  %i.bbg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bbh = load i64, ptr %i.bbg, align 8, !alias.scope !5175, !noundef !3
  %i.bbi = xor i64 %i.bbh, %i.bbe
  %i.bbj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbk = load ptr, ptr %i.bbj, align 16, !alias.scope !5175, !nonnull !3, !align !311, !noundef !3
  %i.bbl = load i64, ptr %i.bbk, align 8, !noalias !5175, !noundef !3
  %i.bbm = zext i64 %i.bbi to i128
  %i.bbn = zext i64 %i.bbl to i128
  %i.bbo = xor i128 %i.bbf, %i.bbn
  %i.bbp = mul nuw i128 %i.bbo, %i.bbm            ; 2 uses
  %i.bbq = lshr i128 %i.bbp, 64
  %i.bbr = xor i128 %i.bbq, %i.bbp
  %i.bbs = trunc i128 %i.bbr to i64
  store i64 %i.bbs, ptr %i.bbg, align 8, !alias.scope !5175
  %i.bbt = zext i64 %i.bbb to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36: ; preds = %bb.cl, %bb.cm
end_hunk_1
begin_hunk_2_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.au, %bb.av
  %.sink157 = phi i128 [ %i.adv, %bb.av ], [ %i.add, %bb.au ]
  %storemerge.i.i5 = phi i8 [ 64, %bb.av ], [ %i.ade, %bb.au ] ; 2 uses
  store i128 %.sink157, ptr %1, align 16, !alias.scope !5836
  store i8 %storemerge.i.i5, ptr %i.d, align 16, !alias.scope !5836
  br i1 %i.acw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.acu, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pre167 = load i8, ptr %i.d, align 16, !alias.scope !5837
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.adw = phi i8 [ %.pre167, %bb.aw ], [ %storemerge.i.i5, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ] ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.ady = load ptr, ptr %i.adx, align 8, !nonnull !3, !noundef !3
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.aea = load i64, ptr %i.adz, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5846)
  %i.aeb = icmp ugt i8 %i.adw, 64
  br i1 %i.aeb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aec = zext i64 %i.aea to i128
  %i.aed = zext nneg i8 %i.adw to i128
  %i.aee = shl nuw i128 %i.aec, %i.aed
  %i.aef = load i128, ptr %1, align 16, !alias.scope !5837, !noundef !3
  %i.aeg = or i128 %i.aef, %i.aee
  %i.aeh = add nuw i8 %i.adw, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48

bb.az:                                            ; preds = %bb.ax
  %i.aei = load i128, ptr %1, align 16, !alias.scope !5837, !noundef !3 ; 2 uses
  %i.aej = trunc i128 %i.aei to i64
  %i.aek = lshr i128 %i.aei, 64
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aem = load i64, ptr %i.ael, align 8, !alias.scope !5837, !noundef !3
  %i.aen = xor i64 %i.aem, %i.aej
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 16, !alias.scope !5837, !nonnull !3, !align !311, !noundef !3
  %i.aeq = load i64, ptr %i.aep, align 8, !noalias !5837, !noundef !3
  %i.aer = zext i64 %i.aen to i128
  %i.aes = zext i64 %i.aeq to i128
  %i.aet = xor i128 %i.aek, %i.aes
  %i.aeu = mul nuw i128 %i.aet, %i.aer            ; 2 uses
  %i.aev = lshr i128 %i.aeu, 64
  %i.aew = xor i128 %i.aev, %i.aeu
  %i.aex = trunc i128 %i.aew to i64
  store i64 %i.aex, ptr %i.ael, align 8, !alias.scope !5837
  %i.aey = zext i64 %i.aea to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %bb.ay, %bb.az
  %.sink.i46 = phi i128 [ %i.aey, %bb.az ], [ %i.aeg, %bb.ay ]
  %storemerge.i.i.i47 = phi i8 [ 64, %bb.az ], [ %i.aeh, %bb.ay ]
  store i128 %.sink.i46, ptr %1, align 16, !alias.scope !5837
  store i8 %storemerge.i.i.i47, ptr %i.d, align 16, !alias.scope !5837
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ady, i64 noundef %i.aea, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.afa = load i64, ptr %i.aez, align 8, !range !390, !noundef !3
  %i.afb = icmp ne i64 %i.afa, 69                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5850)
  %i.afc = load i8, ptr %i.d, align 16, !alias.scope !5853, !noundef !3 ; 3 uses
  %i.afd = icmp ugt i8 %i.afc, 64
  br i1 %i.afd, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48
  %i.afe = zext i1 %i.afb to i128
  %i.aff = zext nneg i8 %i.afc to i128
  %i.afg = shl nuw nsw i128 %i.afe, %i.aff
  %i.afh = load i128, ptr %1, align 16, !alias.scope !5853, !noundef !3
  %i.afi = or i128 %i.afh, %i.afg
  %i.afj = add nuw i8 %i.afc, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.bb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48
  %i.afk = load i128, ptr %1, align 16, !alias.scope !5853, !noundef !3 ; 2 uses
  %i.afl = trunc i128 %i.afk to i64
  %i.afm = lshr i128 %i.afk, 64
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !5853, !noundef !3
  %i.afp = xor i64 %i.afo, %i.afl
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afr = load ptr, ptr %i.afq, align 16, !alias.scope !5853, !nonnull !3, !align !311, !noundef !3
  %i.afs = load i64, ptr %i.afr, align 8, !noalias !5853, !noundef !3
  %i.aft = zext i64 %i.afp to i128
  %i.afu = zext i64 %i.afs to i128
  %i.afv = xor i128 %i.afm, %i.afu
  %i.afw = mul nuw i128 %i.afv, %i.aft            ; 2 uses
  %i.afx = lshr i128 %i.afw, 64
  %i.afy = xor i128 %i.afx, %i.afw
  %i.afz = trunc i128 %i.afy to i64
  store i64 %i.afz, ptr %i.afn, align 8, !alias.scope !5853
  %i.aga = zext i1 %i.afb to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.ba, %bb.bb
  %.sink158 = phi i128 [ %i.aga, %bb.bb ], [ %i.afi, %bb.ba ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.bb ], [ %i.afj, %bb.ba ] ; 2 uses
  store i128 %.sink158, ptr %1, align 16, !alias.scope !5853
  store i8 %storemerge.i.i3, ptr %i.d, align 16, !alias.scope !5853
  br i1 %i.afb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aez, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr120 = load i8, ptr %i.d, align 16, !alias.scope !5854
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.agb = phi i8 [ %.pr120, %bb.bc ], [ %storemerge.i.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 2425
  %i.agd = load i8, ptr %i.agc, align 1, !range !1779, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5860)
  %i.age = icmp ugt i8 %i.agb, 120
  br i1 %i.age, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.bd
  %i.agf = load i128, ptr %1, align 16, !alias.scope !5854, !noundef !3 ; 2 uses
  %i.agg = trunc i128 %i.agf to i64
  %i.agh = lshr i128 %i.agf, 64
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.agj = load i64, ptr %i.agi, align 8, !alias.scope !5854, !noundef !3
  %i.agk = xor i64 %i.agj, %i.agg
  %i.agl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.agm = load ptr, ptr %i.agl, align 16, !alias.scope !5854, !nonnull !3, !align !311, !noundef !3
  %i.agn = load i64, ptr %i.agm, align 8, !noalias !5854, !noundef !3
  %i.ago = zext i64 %i.agk to i128
  %i.agp = zext i64 %i.agn to i128
  %i.agq = xor i128 %i.agh, %i.agp
  %i.agr = mul nuw i128 %i.agq, %i.ago            ; 2 uses
  %i.ags = lshr i128 %i.agr, 64
  %i.agt = xor i128 %i.ags, %i.agr
  %i.agu = trunc i128 %i.agt to i64
  store i64 %i.agu, ptr %i.agi, align 8, !alias.scope !5854
  %i.agv = zext nneg i8 %i.agd to i128
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 2427
  %i.agx = load i8, ptr %i.agw, align 1, !range !5861, !noundef !3 ; 2 uses
  %i.agy = icmp ne i8 %i.agx, 4
  br label %bb.be

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.bd
  %i.agz = zext nneg i8 %i.agd to i128
  %i.aha = zext nneg i8 %i.agb to i128
  %i.ahb = shl nuw nsw i128 %i.agz, %i.aha
  %i.ahc = load i128, ptr %1, align 16, !alias.scope !5854, !noundef !3
  %i.ahd = or i128 %i.ahc, %i.ahb                 ; 4 uses
  store i128 %i.ahd, ptr %1, align 16, !alias.scope !5854
  %i.ahe = add nuw i8 %i.agb, 8                   ; 2 uses
  store i8 %i.ahe, ptr %i.d, align 16, !alias.scope !5854
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 2427
  %i.ahg = load i8, ptr %i.ahf, align 1, !range !5861, !noundef !3 ; 3 uses
  %i.ahh = icmp ne i8 %i.ahg, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5865)
  %i.ahi = icmp samesign ugt i8 %i.agb, 56
  br i1 %i.ahi, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.be

bb.be:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.ahj = phi i128 [ %i.agv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.ahd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.ahk = phi i1 [ %i.agy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.ahh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.ahl = phi i8 [ %i.agx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.ahg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i19122 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.ahe, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.ahm = zext i1 %i.ahk to i128
  %i.ahn = zext nneg i8 %storemerge.i.i19122 to i128
  %i.aho = shl nuw nsw i128 %i.ahm, %i.ahn
  %i.ahp = or i128 %i.aho, %i.ahj                 ; 4 uses
  store i128 %i.ahp, ptr %1, align 16, !alias.scope !5868
  %i.ahq = add nuw i8 %storemerge.i.i19122, 64
  store i8 %i.ahq, ptr %i.d, align 16, !alias.scope !5868
  br i1 %i.ahk, label %bb.bf, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge: ; preds = %bb.be
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre168 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !5869
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre170 = load ptr, ptr %.phi.trans.insert169, align 16, !alias.scope !5869
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.ahr = trunc i128 %i.ahd to i64
  %i.ahs = lshr i128 %i.ahd, 64
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ahu = load i64, ptr %i.aht, align 8, !alias.scope !5868, !noundef !3
  %i.ahv = xor i64 %i.ahu, %i.ahr
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahx = load ptr, ptr %i.ahw, align 16, !alias.scope !5868, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  %i.ahy = load i64, ptr %i.ahx, align 8, !noalias !5868, !noundef !3
  %i.ahz = zext i64 %i.ahv to i128
  %i.aia = zext i64 %i.ahy to i128
  %i.aib = xor i128 %i.ahs, %i.aia
  %i.aic = mul nuw i128 %i.aib, %i.ahz            ; 2 uses
  %i.aid = lshr i128 %i.aic, 64
  %i.aie = xor i128 %i.aid, %i.aic
  %i.aif = trunc i128 %i.aie to i64               ; 3 uses
  store i64 %i.aif, ptr %i.aht, align 8, !alias.scope !5868
  %i.aig = zext i1 %i.ahh to i128
  store i128 %i.aig, ptr %1, align 16, !alias.scope !5868
  store i8 64, ptr %i.d, align 16, !alias.scope !5868
  br i1 %i.ahh, label %.thread128, label %.thread127

.thread128:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5880)
  %i.aih = zext nneg i8 %i.ahg to i128
  %i.aii = shl nuw nsw i128 %i.aih, 64
  %i.aij = or disjoint i128 %i.aii, 1             ; 2 uses
  store i128 %i.aij, ptr %1, align 16, !alias.scope !5883
  store i8 -128, ptr %i.d, align 16, !alias.scope !5883
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.bf:                                            ; preds = %bb.be
  %i.aik = trunc i128 %i.ahp to i64
  %i.ail = lshr i128 %i.ahp, 64
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ain = load i64, ptr %i.aim, align 8, !alias.scope !5883, !noundef !3
  %i.aio = xor i64 %i.ain, %i.aik
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aiq = load ptr, ptr %i.aip, align 16, !alias.scope !5883, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.air = load i64, ptr %i.aiq, align 8, !noalias !5883, !noundef !3
  %i.ais = zext i64 %i.aio to i128
  %i.ait = zext i64 %i.air to i128
  %i.aiu = xor i128 %i.ail, %i.ait
  %i.aiv = mul nuw i128 %i.aiu, %i.ais            ; 2 uses
  %i.aiw = lshr i128 %i.aiv, 64
  %i.aix = xor i128 %i.aiw, %i.aiv
  %i.aiy = trunc i128 %i.aix to i64               ; 2 uses
  store i64 %i.aiy, ptr %i.aim, align 8, !alias.scope !5883
  %i.aiz = zext nneg i8 %i.ahl to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5885)
  br label %.thread127

.thread127:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %bb.bf
  %i.aja = phi ptr [ %i.ahx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.aiq, %bb.bf ]
  %i.ajb = phi i64 [ %i.aif, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.aiy, %bb.bf ]
  %i.ajc = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.aiz, %bb.bf ]
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.in141 = load i64, ptr %i.ajd, align 8, !range !390, !noundef !3
  %.not142 = icmp eq i64 %.in141, 69              ; 2 uses
  %i.aje = select i1 %.not142, i128 0, i128 18446744073709551616
  %i.ajf = or disjoint i128 %i.aje, %i.ajc        ; 2 uses
  store i128 %i.ajf, ptr %1, align 16, !alias.scope !5869
  store i8 -128, ptr %i.d, align 16, !alias.scope !5869
  br i1 %.not142, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread, label %bb.bg

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread: ; preds = %.thread127
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22132 = load i8, ptr %i.ajg, align 2, !range !2045, !noundef !3
  br label %bb.bj

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge, %.thread128
  %i.ajh = phi ptr [ %.pre170, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.ahx, %.thread128 ]
  %i.aji = phi i64 [ %.pre168, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.aif, %.thread128 ]
  %i.ajj = phi i128 [ %i.ahp, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.aij, %.thread128 ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.in = load i64, ptr %i.ajk, align 8, !range !390, !noundef !3
  %i.ajl = icmp ne i64 %.in, 69                   ; 2 uses
  %i.ajm = trunc i128 %i.ajj to i64
  %i.ajn = lshr i128 %i.ajj, 64
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajp = xor i64 %i.aji, %i.ajm
  %i.ajq = load i64, ptr %i.ajh, align 8, !noalias !5869, !noundef !3
  %i.ajr = zext i64 %i.ajp to i128
  %i.ajs = zext i64 %i.ajq to i128
  %i.ajt = xor i128 %i.ajn, %i.ajs
  %i.aju = mul nuw i128 %i.ajt, %i.ajr            ; 2 uses
  %i.ajv = lshr i128 %i.aju, 64
  %i.ajw = xor i128 %i.ajv, %i.aju
  %i.ajx = trunc i128 %i.ajw to i64
  store i64 %i.ajx, ptr %i.ajo, align 8, !alias.scope !5869
  %i.ajy = zext i1 %i.ajl to i128
  store i128 %i.ajy, ptr %1, align 16, !alias.scope !5869
  store i8 64, ptr %i.d, align 16, !alias.scope !5869
  br i1 %i.ajl, label %bb.bg, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread134

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread134: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22135 = load i8, ptr %i.ajz, align 2, !range !2045, !noundef !3
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge

bb.bg:                                            ; preds = %.thread127, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.aka = phi ptr [ %i.ajd, %.thread127 ], [ %i.ajk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.aka, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !inline_history !5886
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.akc = load ptr, ptr %i.akb, align 8, !alias.scope !5887, !noalias !5890, !nonnull !3, !noundef !3 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ake = load i64, ptr %i.akd, align 8, !alias.scope !5887, !noalias !5890, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5898)
  %i.akf = load i8, ptr %i.d, align 16, !alias.scope !5901, !noundef !3 ; 3 uses
  %i.akg = icmp ugt i8 %i.akf, 64
  br i1 %i.akg, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.akh = zext i64 %i.ake to i128
  %i.aki = zext nneg i8 %i.akf to i128
  %i.akj = shl nuw i128 %i.akh, %i.aki
  %i.akk = load i128, ptr %1, align 16, !alias.scope !5901, !noundef !3
  %i.akl = or i128 %i.akk, %i.akj
  %i.akm = add nuw i8 %i.akf, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78

bb.bi:                                            ; preds = %bb.bg
  %i.akn = load i128, ptr %1, align 16, !alias.scope !5901, !noundef !3 ; 2 uses
  %i.ako = trunc i128 %i.akn to i64
  %i.akp = lshr i128 %i.akn, 64
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.akr = load i64, ptr %i.akq, align 8, !alias.scope !5901, !noundef !3
  %i.aks = xor i64 %i.akr, %i.ako
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aku = load ptr, ptr %i.akt, align 16, !alias.scope !5901, !nonnull !3, !align !311, !noundef !3
  %i.akv = load i64, ptr %i.aku, align 8, !noalias !5901, !noundef !3
  %i.akw = zext i64 %i.aks to i128
  %i.akx = zext i64 %i.akv to i128
  %i.aky = xor i128 %i.akp, %i.akx
  %i.akz = mul nuw i128 %i.aky, %i.akw            ; 2 uses
  %i.ala = lshr i128 %i.akz, 64
  %i.alb = xor i128 %i.ala, %i.akz
  %i.alc = trunc i128 %i.alb to i64
  store i64 %i.alc, ptr %i.akq, align 8, !alias.scope !5901
  %i.ald = zext i64 %i.ake to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78: ; preds = %bb.bh, %bb.bi
  %.sink.i76 = phi i128 [ %i.ald, %bb.bi ], [ %i.akl, %bb.bh ] ; 2 uses
  %storemerge.i.i.i77 = phi i8 [ 64, %bb.bi ], [ %i.akm, %bb.bh ] ; 2 uses
  store i128 %.sink.i76, ptr %1, align 16, !alias.scope !5901
  store i8 %storemerge.i.i.i77, ptr %i.d, align 16, !alias.scope !5901
  %.idx155 = mul nuw nsw i64 %i.ake, 328
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akc, i64 %.idx155
  %i.alf = icmp eq i64 %i.ake, 0
  br i1 %i.alf, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75, label %.lr.ph151

.lr.ph151:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78, %.lr.ph151
  %.sroa.0.0.i74150 = phi ptr [ %i.alg, %.lr.ph151 ], [ %i.akc, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78 ] ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74150, i64 328 ; 2 uses
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i74150, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !inline_history !5902
  %i.alh = icmp eq ptr %i.alg, %i.ale
  br i1 %i.alh, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.loopexit, label %.lr.ph151

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.loopexit: ; preds = %.lr.ph151
  %.pr131.pre = load i8, ptr %i.d, align 16, !alias.scope !5903
  %.pre173.pre = load i128, ptr %1, align 16, !alias.scope !5903
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78
  %.pre173 = phi i128 [ %.pre173.pre, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.loopexit ], [ %.sink.i76, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78 ] ; 2 uses
  %.pr131 = phi i8 [ %.pr131.pre, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.loopexit ], [ %storemerge.i.i.i77, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78 ] ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22 = load i8, ptr %i.ali, align 2, !range !2045, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5912)
  %i.alj = icmp ugt i8 %.pr131, 64
  br i1 %i.alj, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre176 = load i64, ptr %.phi.trans.insert175, align 8, !alias.scope !5903
  %.phi.trans.insert177 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre178 = load ptr, ptr %.phi.trans.insert177, align 16, !alias.scope !5903
  br label %bb.bj

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread134
  %i.alk = phi i128 [ 0, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread134 ], [ %.pre173, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75 ]
  %.val22136 = phi i8 [ %.val22135, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread134 ], [ %.val22, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75 ]
  %i.all = phi i8 [ 64, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread134 ], [ %.pr131, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75 ] ; 2 uses
  %i.alm = zext nneg i8 %.val22136 to i128
  %i.aln = zext nneg i8 %i.all to i128
  %i.alo = shl nuw nsw i128 %i.alm, %i.aln
  %i.alp = or i128 %i.alo, %i.alk
  %i.alq = add nuw i8 %i.all, 64
  br label %_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bj:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread
  %i.alr = phi ptr [ %i.aja, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread ], [ %.pre178, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174 ]
  %i.als = phi i64 [ %i.ajb, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread ], [ %.pre176, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174 ]
  %i.alt = phi i128 [ %i.ajf, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread ], [ %.pre173, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174 ] ; 2 uses
  %.val22133 = phi i8 [ %.val22132, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75.thread ], [ %.val22, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge174 ]
  %i.alu = trunc i128 %i.alt to i64
  %i.alv = lshr i128 %i.alt, 64
  %i.alw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.alx = xor i64 %i.als, %i.alu
  %i.aly = load i64, ptr %i.alr, align 8, !noalias !5903, !noundef !3
  %i.alz = zext i64 %i.alx to i128
  %i.ama = zext i64 %i.aly to i128
  %i.amb = xor i128 %i.alv, %i.ama
  %i.amc = mul nuw i128 %i.amb, %i.alz            ; 2 uses
  %i.amd = lshr i128 %i.amc, 64
  %i.ame = xor i128 %i.amd, %i.amc
  %i.amf = trunc i128 %i.ame to i64
  store i64 %i.amf, ptr %i.alw, align 8, !alias.scope !5903
  %i.amg = zext nneg i8 %.val22133 to i128
  br label %_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge, %bb.bj
  %.sink.i53 = phi i128 [ %i.amg, %bb.bj ], [ %i.alp, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge ]
  %storemerge.i.i.i54 = phi i8 [ 64, %bb.bj ], [ %i.alq, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit75._crit_edge ]
  store i128 %.sink.i53, ptr %1, align 16, !alias.scope !5903
  store i8 %storemerge.i.i.i54, ptr %i.d, align 16, !alias.scope !5903
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
end_hunk_2
begin_hunk_3_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit193: ; preds = %bb.av, %bb.aw
  %.sink.i191 = phi i128 [ %i.uy, %bb.aw ], [ %i.ui, %bb.av ]
  %storemerge.i.i.i192 = phi i8 [ 64, %bb.aw ], [ -128, %bb.av ]
  store i128 %.sink.i191, ptr %1, align 16, !alias.scope !8683, !noalias !8668
  store i8 %storemerge.i.i.i192, ptr %i.c, align 16, !alias.scope !8683, !noalias !8668
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.uc, i64 noundef %i.ue, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8668, !inline_history !8685
  br label %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ax:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !8668, !noalias !8670, !nonnull !3, !noundef !3
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vc = load i64, ptr %i.vb, align 8, !alias.scope !8668, !noalias !8670, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8689), !noalias !8668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8692), !noalias !8668
  %i.vd = icmp ugt i8 %storemerge.i.i.i71, 64
  br i1 %i.vd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ve = zext i64 %i.vc to i128
  %i.vf = shl nuw i128 %i.ve, 64
  %i.vg = or i128 %i.vf, %i.ua
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit190

bb.az:                                            ; preds = %bb.ax
  %i.vh = trunc i128 %i.ua to i64
  %i.vi = lshr i128 %i.ua, 64
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !alias.scope !8695, !noalias !8668, !noundef !3
  %i.vl = xor i64 %i.vk, %i.vh
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vn = load ptr, ptr %i.vm, align 16, !alias.scope !8695, !noalias !8668, !nonnull !3, !align !311, !noundef !3
  %i.vo = load i64, ptr %i.vn, align 8, !noalias !8696, !noundef !3
  %i.vp = zext i64 %i.vl to i128
  %i.vq = zext i64 %i.vo to i128
  %i.vr = xor i128 %i.vi, %i.vq
  %i.vs = mul nuw i128 %i.vr, %i.vp               ; 2 uses
  %i.vt = lshr i128 %i.vs, 64
  %i.vu = xor i128 %i.vt, %i.vs
  %i.vv = trunc i128 %i.vu to i64
  store i64 %i.vv, ptr %i.vj, align 8, !alias.scope !8695, !noalias !8668
  %i.vw = zext i64 %i.vc to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit190

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit190: ; preds = %bb.ay, %bb.az
  %.sink.i188 = phi i128 [ %i.vw, %bb.az ], [ %i.vg, %bb.ay ]
  %storemerge.i.i.i189 = phi i8 [ 64, %bb.az ], [ -128, %bb.ay ]
  store i128 %.sink.i188, ptr %1, align 16, !alias.scope !8695, !noalias !8668
  store i8 %storemerge.i.i.i189, ptr %i.c, align 16, !alias.scope !8695, !noalias !8668
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.va, i64 noundef %i.vc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8668, !inline_history !8685
  br label %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ba:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !8668, !noalias !8670, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.vy, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !8668, !inline_history !8685
  br label %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit193, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit190, %bb.ba
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !range !390, !noundef !3
  %i.wb = icmp ne i64 %i.wa, 69                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8700)
  %i.wc = load i8, ptr %i.c, align 16, !alias.scope !8703, !noundef !3 ; 3 uses
  %i.wd = icmp ugt i8 %i.wc, 64
  br i1 %i.wd, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.we = zext i1 %i.wb to i128
  %i.wf = zext nneg i8 %i.wc to i128
  %i.wg = shl nuw nsw i128 %i.we, %i.wf
  %i.wh = load i128, ptr %1, align 16, !alias.scope !8703, !noundef !3
  %i.wi = or i128 %i.wh, %i.wg
  %i.wj = add nuw i8 %i.wc, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30

bb.bc:                                            ; preds = %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.wk = load i128, ptr %1, align 16, !alias.scope !8703, !noundef !3 ; 2 uses
  %i.wl = trunc i128 %i.wk to i64
  %i.wm = lshr i128 %i.wk, 64
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !8703, !noundef !3
  %i.wp = xor i64 %i.wo, %i.wl
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wr = load ptr, ptr %i.wq, align 16, !alias.scope !8703, !nonnull !3, !align !311, !noundef !3
  %i.ws = load i64, ptr %i.wr, align 8, !noalias !8703, !noundef !3
  %i.wt = zext i64 %i.wp to i128
  %i.wu = zext i64 %i.ws to i128
  %i.wv = xor i128 %i.wm, %i.wu
  %i.ww = mul nuw i128 %i.wv, %i.wt               ; 2 uses
  %i.wx = lshr i128 %i.ww, 64
  %i.wy = xor i128 %i.wx, %i.ww
  %i.wz = trunc i128 %i.wy to i64
  store i64 %i.wz, ptr %i.wn, align 8, !alias.scope !8703
  %i.xa = zext i1 %i.wb to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30: ; preds = %bb.bb, %bb.bc
  %.sink306 = phi i128 [ %i.xa, %bb.bc ], [ %i.wi, %bb.bb ]
  %storemerge.i.i29 = phi i8 [ 64, %bb.bc ], [ %i.wj, %bb.bb ] ; 2 uses
  store i128 %.sink306, ptr %1, align 16, !alias.scope !8703
  store i8 %storemerge.i.i29, ptr %i.c, align 16, !alias.scope !8703
  br i1 %i.wb, label %bb.fd, label %bb.fe

bb.bd:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.xe = load ptr, ptr %i.xd, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.xe, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xb, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.xc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.xg = load ptr, ptr %i.xf, align 8, !nonnull !3, !noundef !3
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.xi = load i64, ptr %i.xh, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8710)
  %i.xj = load i8, ptr %i.c, align 16, !alias.scope !8713, !noundef !3 ; 3 uses
  %i.xk = icmp ugt i8 %i.xj, 64
  br i1 %i.xk, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.xl = zext i64 %i.xi to i128
  %i.xm = zext nneg i8 %i.xj to i128
  %i.xn = shl nuw i128 %i.xl, %i.xm
  %i.xo = load i128, ptr %1, align 16, !alias.scope !8713, !noundef !3
  %i.xp = or i128 %i.xo, %i.xn
  %i.xq = add nuw i8 %i.xj, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit74

bb.bf:                                            ; preds = %bb.bd
  %i.xr = load i128, ptr %1, align 16, !alias.scope !8713, !noundef !3 ; 2 uses
  %i.xs = trunc i128 %i.xr to i64
  %i.xt = lshr i128 %i.xr, 64
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !alias.scope !8713, !noundef !3
  %i.xw = xor i64 %i.xv, %i.xs
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xy = load ptr, ptr %i.xx, align 16, !alias.scope !8713, !nonnull !3, !align !311, !noundef !3
  %i.xz = load i64, ptr %i.xy, align 8, !noalias !8713, !noundef !3
  %i.ya = zext i64 %i.xw to i128
  %i.yb = zext i64 %i.xz to i128
  %i.yc = xor i128 %i.xt, %i.yb
  %i.yd = mul nuw i128 %i.yc, %i.ya               ; 2 uses
  %i.ye = lshr i128 %i.yd, 64
  %i.yf = xor i128 %i.ye, %i.yd
  %i.yg = trunc i128 %i.yf to i64
  store i64 %i.yg, ptr %i.xu, align 8, !alias.scope !8713
  %i.yh = zext i64 %i.xi to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit74

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit74: ; preds = %bb.be, %bb.bf
  %.sink.i72 = phi i128 [ %i.yh, %bb.bf ], [ %i.xp, %bb.be ]
  %storemerge.i.i.i73 = phi i8 [ 64, %bb.bf ], [ %i.xq, %bb.be ]
  store i128 %.sink.i72, ptr %1, align 16, !alias.scope !8713
  store i8 %storemerge.i.i.i73, ptr %i.c, align 16, !alias.scope !8713
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.xg, i64 noundef %i.xi, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.yj = load i8, ptr %i.yi, align 8, !range !2045, !noundef !3 ; 3 uses
  %i.yk = icmp ne i8 %i.yj, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8717)
  %i.yl = load i8, ptr %i.c, align 16, !alias.scope !8720, !noundef !3 ; 4 uses
  %i.ym = icmp ugt i8 %i.yl, 64
  br i1 %i.ym, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit74
  %i.yn = zext i1 %i.yk to i128
  %i.yo = zext nneg i8 %i.yl to i128
  %i.yp = shl nuw nsw i128 %i.yn, %i.yo
  %i.yq = load i128, ptr %1, align 16, !alias.scope !8720, !noundef !3
  %i.yr = or i128 %i.yq, %i.yp                    ; 5 uses
  store i128 %i.yr, ptr %1, align 16, !alias.scope !8720
  %i.ys = add nuw i8 %i.yl, 64                    ; 2 uses
  store i8 %i.ys, ptr %i.c, align 16, !alias.scope !8720
  br i1 %i.yk, label %bb.fk, label %bb.fm

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit74
  %i.yt = load i128, ptr %1, align 16, !alias.scope !8720, !noundef !3 ; 2 uses
  %i.yu = trunc i128 %i.yt to i64
  %i.yv = lshr i128 %i.yt, 64
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.yx = load i64, ptr %i.yw, align 8, !alias.scope !8720, !noundef !3
  %i.yy = xor i64 %i.yx, %i.yu
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.za = load ptr, ptr %i.yz, align 16, !alias.scope !8720, !nonnull !3, !align !311, !noundef !3
  %i.zb = load i64, ptr %i.za, align 8, !noalias !8720, !noundef !3
  %i.zc = zext i64 %i.yy to i128
  %i.zd = zext i64 %i.zb to i128
  %i.ze = xor i128 %i.yv, %i.zd
  %i.zf = mul nuw i128 %i.ze, %i.zc               ; 2 uses
  %i.zg = lshr i128 %i.zf, 64
  %i.zh = xor i128 %i.zg, %i.zf
  %i.zi = trunc i128 %i.zh to i64
  store i64 %i.zi, ptr %i.yw, align 8, !alias.scope !8720
  %i.zj = zext i1 %i.yk to i128
  store i128 %i.zj, ptr %1, align 16, !alias.scope !8720
  store i8 64, ptr %i.c, align 16, !alias.scope !8720
  br i1 %i.yk, label %.thread238, label %.thread241

.thread241:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.zl = load i64, ptr %i.zk, align 8, !range !4, !noundef !3
  %.not404 = icmp eq i64 %i.zl, -9223372036854775808 ; 2 uses
  %i.zm = select i1 %.not404, i128 0, i128 18446744073709551616
  store i128 %i.zm, ptr %1, align 16, !alias.scope !8721
  store i8 -128, ptr %i.c, align 16, !alias.scope !8721
  br i1 %.not404, label %bb.dt, label %bb.fo

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.zp = load ptr, ptr %i.zo, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.zp, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.zr = load ptr, ptr %i.zq, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.zt = load i64, ptr %i.zs, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8732)
  %i.zu = load i8, ptr %i.c, align 16, !alias.scope !8735, !noundef !3 ; 3 uses
  %i.zv = icmp ugt i8 %i.zu, 64
  br i1 %i.zv, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.zw = zext i64 %i.zt to i128
  %i.zx = zext nneg i8 %i.zu to i128
  %i.zy = shl nuw i128 %i.zw, %i.zx
  %i.zz = load i128, ptr %1, align 16, !alias.scope !8735, !noundef !3
  %i.aaa = or i128 %i.zz, %i.zy
  %i.aab = add nuw i8 %i.zu, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77

bb.bi:                                            ; preds = %bb.bg
  %i.aac = load i128, ptr %1, align 16, !alias.scope !8735, !noundef !3 ; 2 uses
  %i.aad = trunc i128 %i.aac to i64
  %i.aae = lshr i128 %i.aac, 64
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aag = load i64, ptr %i.aaf, align 8, !alias.scope !8735, !noundef !3
  %i.aah = xor i64 %i.aag, %i.aad
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 16, !alias.scope !8735, !nonnull !3, !align !311, !noundef !3
  %i.aak = load i64, ptr %i.aaj, align 8, !noalias !8735, !noundef !3
  %i.aal = zext i64 %i.aah to i128
  %i.aam = zext i64 %i.aak to i128
  %i.aan = xor i128 %i.aae, %i.aam
  %i.aao = mul nuw i128 %i.aan, %i.aal            ; 2 uses
  %i.aap = lshr i128 %i.aao, 64
  %i.aaq = xor i128 %i.aap, %i.aao
  %i.aar = trunc i128 %i.aaq to i64
  store i64 %i.aar, ptr %i.aaf, align 8, !alias.scope !8735
  %i.aas = zext i64 %i.zt to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77: ; preds = %bb.bh, %bb.bi
  %.sink.i75 = phi i128 [ %i.aas, %bb.bi ], [ %i.aaa, %bb.bh ]
  %storemerge.i.i.i76 = phi i8 [ 64, %bb.bi ], [ %i.aab, %bb.bh ] ; 2 uses
  store i128 %.sink.i75, ptr %1, align 16, !alias.scope !8735
  store i8 %storemerge.i.i.i76, ptr %i.c, align 16, !alias.scope !8735
  %.idx288 = mul nuw nsw i64 %i.zt, 328
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zr, i64 %.idx288
  %i.aau = icmp eq i64 %i.zt, 0
  br i1 %i.aau, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79, label %.lr.ph268

.lr.ph268:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77, %.lr.ph268
  %.sroa.0.0.i78267 = phi ptr [ %i.aav, %.lr.ph268 ], [ %i.zr, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77 ] ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78267, i64 328 ; 2 uses
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i78267, ptr noalias noundef align 16 dereferenceable(48) %1) #57, !inline_history !5809
  %i.aaw = icmp eq ptr %i.aav, %i.aat
  br i1 %i.aaw, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79.loopexit, label %.lr.ph268

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79.loopexit: ; preds = %.lr.ph268
  %.pre317 = load i8, ptr %i.c, align 16, !alias.scope !8736
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77
  %i.aax = phi i8 [ %.pre317, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79.loopexit ], [ %storemerge.i.i.i76, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit77 ] ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aaz = load ptr, ptr %i.aay, align 8, !nonnull !3, !noundef !3
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.abb = load i64, ptr %i.aba, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8745)
  %i.abc = icmp ugt i8 %i.aax, 64
  br i1 %i.abc, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79
  %i.abd = zext i64 %i.abb to i128
  %i.abe = zext nneg i8 %i.aax to i128
  %i.abf = shl nuw i128 %i.abd, %i.abe
  %i.abg = load i128, ptr %1, align 16, !alias.scope !8736, !noundef !3
  %i.abh = or i128 %i.abg, %i.abf
  %i.abi = add nuw i8 %i.aax, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit82

bb.bk:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit79
  %i.abj = load i128, ptr %1, align 16, !alias.scope !8736, !noundef !3 ; 2 uses
  %i.abk = trunc i128 %i.abj to i64
  %i.abl = lshr i128 %i.abj, 64
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !8736, !noundef !3
  %i.abo = xor i64 %i.abn, %i.abk
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abq = load ptr, ptr %i.abp, align 16, !alias.scope !8736, !nonnull !3, !align !311, !noundef !3
  %i.abr = load i64, ptr %i.abq, align 8, !noalias !8736, !noundef !3
  %i.abs = zext i64 %i.abo to i128
  %i.abt = zext i64 %i.abr to i128
  %i.abu = xor i128 %i.abl, %i.abt
  %i.abv = mul nuw i128 %i.abu, %i.abs            ; 2 uses
  %i.abw = lshr i128 %i.abv, 64
  %i.abx = xor i128 %i.abw, %i.abv
  %i.aby = trunc i128 %i.abx to i64
  store i64 %i.aby, ptr %i.abm, align 8, !alias.scope !8736
  %i.abz = zext i64 %i.abb to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit82

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit82: ; preds = %bb.bj, %bb.bk
  %.sink.i80 = phi i128 [ %i.abz, %bb.bk ], [ %i.abh, %bb.bj ]
  %storemerge.i.i.i81 = phi i8 [ 64, %bb.bk ], [ %i.abi, %bb.bj ]
  store i128 %.sink.i80, ptr %1, align 16, !alias.scope !8736
  store i8 %storemerge.i.i.i81, ptr %i.c, align 16, !alias.scope !8736
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aaz, i64 noundef %i.abb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.acb = load ptr, ptr %i.aca, align 8, !nonnull !3, !noundef !3
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.acd = load i64, ptr %i.acc, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8752)
  %i.ace = load i8, ptr %i.c, align 16, !alias.scope !8755, !noundef !3 ; 3 uses
  %i.acf = icmp ugt i8 %i.ace, 64
  br i1 %i.acf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit82
  %i.acg = zext i64 %i.acd to i128
  %i.ach = zext nneg i8 %i.ace to i128
  %i.aci = shl nuw i128 %i.acg, %i.ach
  %i.acj = load i128, ptr %1, align 16, !alias.scope !8755, !noundef !3
  %i.ack = or i128 %i.acj, %i.aci
  %i.acl = add nuw i8 %i.ace, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit85

bb.bm:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit82
  %i.acm = load i128, ptr %1, align 16, !alias.scope !8755, !noundef !3 ; 2 uses
  %i.acn = trunc i128 %i.acm to i64
  %i.aco = lshr i128 %i.acm, 64
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !alias.scope !8755, !noundef !3
  %i.acr = xor i64 %i.acq, %i.acn
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.act = load ptr, ptr %i.acs, align 16, !alias.scope !8755, !nonnull !3, !align !311, !noundef !3
  %i.acu = load i64, ptr %i.act, align 8, !noalias !8755, !noundef !3
  %i.acv = zext i64 %i.acr to i128
  %i.acw = zext i64 %i.acu to i128
  %i.acx = xor i128 %i.aco, %i.acw
  %i.acy = mul nuw i128 %i.acx, %i.acv            ; 2 uses
  %i.acz = lshr i128 %i.acy, 64
  %i.ada = xor i128 %i.acz, %i.acy
  %i.adb = trunc i128 %i.ada to i64
  store i64 %i.adb, ptr %i.acp, align 8, !alias.scope !8755
  %i.adc = zext i64 %i.acd to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit85

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit85: ; preds = %bb.bl, %bb.bm
  %.sink.i83 = phi i128 [ %i.adc, %bb.bm ], [ %i.ack, %bb.bl ]
  %storemerge.i.i.i84 = phi i8 [ 64, %bb.bm ], [ %i.acl, %bb.bl ]
  store i128 %.sink.i83, ptr %1, align 16, !alias.scope !8755
  store i8 %storemerge.i.i.i84, ptr %i.c, align 16, !alias.scope !8755
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.acb, i64 noundef %i.acd, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ade = load i8, ptr %i.add, align 8, !range !1021, !noundef !3 ; 7 uses
  %i.adf = icmp ne i8 %i.ade, 5                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8759)
  %i.adg = load i8, ptr %i.c, align 16, !alias.scope !8762, !noundef !3 ; 4 uses
  %i.adh = icmp ugt i8 %i.adg, 64
  br i1 %i.adh, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit85
  %i.adi = zext i1 %i.adf to i128
  %i.adj = zext nneg i8 %i.adg to i128
  %i.adk = shl nuw nsw i128 %i.adi, %i.adj
  %i.adl = load i128, ptr %1, align 16, !alias.scope !8762, !noundef !3
  %i.adm = or i128 %i.adl, %i.adk                 ; 6 uses
  store i128 %i.adm, ptr %1, align 16, !alias.scope !8762
  %i.adn = add nuw i8 %i.adg, 64                  ; 2 uses
  store i8 %i.adn, ptr %i.c, align 16, !alias.scope !8762
  br i1 %i.adf, label %bb.fr, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit85
  %i.ado = load i128, ptr %1, align 16, !alias.scope !8762, !noundef !3 ; 2 uses
  %i.adp = trunc i128 %i.ado to i64
  %i.adq = lshr i128 %i.ado, 64
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ads = load i64, ptr %i.adr, align 8, !alias.scope !8762, !noundef !3
  %i.adt = xor i64 %i.ads, %i.adp
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adv = load ptr, ptr %i.adu, align 16, !alias.scope !8762, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  %i.adw = load i64, ptr %i.adv, align 8, !noalias !8762, !noundef !3
  %i.adx = zext i64 %i.adt to i128
  %i.ady = zext i64 %i.adw to i128
  %i.adz = xor i128 %i.adq, %i.ady
  %i.aea = mul nuw i128 %i.adz, %i.adx            ; 2 uses
  %i.aeb = lshr i128 %i.aea, 64
end_hunk_3
begin_hunk_4_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cke = zext i64 %i.ckb to i128
  %i.ckf = zext nneg i8 %i.ckc to i128
  %i.ckg = shl nuw i128 %i.cke, %i.ckf
  %i.ckh = load i128, ptr %1, align 16, !alias.scope !9379, !noalias !9365, !noundef !3
  %i.cki = or i128 %i.ckh, %i.ckg
  %i.ckj = add nuw i8 %i.ckc, 64
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit163

bb.fq:                                            ; preds = %bb.fo
  %i.ckk = load i128, ptr %1, align 16, !alias.scope !9379, !noalias !9365, !noundef !3 ; 2 uses
  %i.ckl = trunc i128 %i.ckk to i64
  %i.ckm = lshr i128 %i.ckk, 64
  %i.ckn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cko = load i64, ptr %i.ckn, align 8, !alias.scope !9379, !noalias !9365, !noundef !3
  %i.ckp = xor i64 %i.cko, %i.ckl
  %i.ckq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ckr = load ptr, ptr %i.ckq, align 16, !alias.scope !9379, !noalias !9365, !nonnull !3, !align !311, !noundef !3
  %i.cks = load i64, ptr %i.ckr, align 8, !noalias !9380, !noundef !3
  %i.ckt = zext i64 %i.ckp to i128
  %i.cku = zext i64 %i.cks to i128
  %i.ckv = xor i128 %i.ckm, %i.cku
  %i.ckw = mul nuw i128 %i.ckv, %i.ckt            ; 2 uses
  %i.ckx = lshr i128 %i.ckw, 64
  %i.cky = xor i128 %i.ckx, %i.ckw
  %i.ckz = trunc i128 %i.cky to i64
  store i64 %i.ckz, ptr %i.ckn, align 8, !alias.scope !9379, !noalias !9365
  %i.cla = zext i64 %i.ckb to i128
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit163

_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit163: ; preds = %bb.fp, %bb.fq
  %.sink.i.i161 = phi i128 [ %i.cla, %bb.fq ], [ %i.cki, %bb.fp ]
  %storemerge.i.i.i.i162 = phi i8 [ 64, %bb.fq ], [ %i.ckj, %bb.fp ]
  store i128 %.sink.i.i161, ptr %1, align 16, !alias.scope !9379, !noalias !9365
  store i8 %storemerge.i.i.i.i162, ptr %i.c, align 16, !alias.scope !9379, !noalias !9365
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cjz, i64 noundef %i.ckb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !9365
  br label %bb.dt

bb.fr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9381)
  %.not398 = icmp eq i8 %i.ade, 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9383)
  %.not = icmp eq i8 %i.adg, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %bb.fr
  %i.clb = select i1 %.not398, i128 0, i128 18446744073709551616
  %i.clc = or i128 %i.adm, %i.clb                 ; 3 uses
  store i128 %i.clc, ptr %1, align 16, !alias.scope !8763
  store i8 -128, ptr %i.c, align 16, !alias.scope !8763
  br i1 %.not398, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %extract.t = trunc i128 %i.adm to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre415 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !9384
  %.phi.trans.insert416 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre417 = load ptr, ptr %.phi.trans.insert416, align 16, !alias.scope !9384
  %i.cld = lshr i128 %i.clc, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i: ; preds = %bb.fr
  %i.cle = trunc i128 %i.adm to i64
  %i.clf = lshr i128 %i.adm, 64
  %i.clg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.clh = load i64, ptr %i.clg, align 8, !alias.scope !8763, !noundef !3
  %i.cli = xor i64 %i.clh, %i.cle
  %i.clj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.clk = load ptr, ptr %i.clj, align 16, !alias.scope !8763, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.cll = load i64, ptr %i.clk, align 8, !noalias !8763, !noundef !3
  %i.clm = zext i64 %i.cli to i128
  %i.cln = zext i64 %i.cll to i128                ; 2 uses
  %i.clo = xor i128 %i.clf, %i.cln
  %i.clp = mul nuw i128 %i.clo, %i.clm            ; 2 uses
  %i.clq = lshr i128 %i.clp, 64
  %i.clr = xor i128 %i.clq, %i.clp
  %i.cls = trunc i128 %i.clr to i64               ; 3 uses
  store i64 %i.cls, ptr %i.clg, align 8, !alias.scope !8763
  br i1 %.not398, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
  %.not8.i = icmp eq i8 %i.ade, 3                 ; 2 uses
  %i.clt = select i1 %.not8.i, i128 1, i128 18446744073709551617
  store i128 %i.clt, ptr %1, align 16, !alias.scope !9384
  store i8 -128, ptr %i.c, align 16, !alias.scope !9384
  br i1 %.not8.i, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248, label %bb.ft

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge, %.thread244
  %i.clu = phi ptr [ %i.adv, %.thread244 ], [ %.pre417, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ] ; 2 uses
  %i.clv = phi i64 [ %i.aed, %.thread244 ], [ %.pre415, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %i.clw = phi i128 [ 1, %.thread244 ], [ %i.cld, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off0 = phi i64 [ 1, %.thread244 ], [ %extract.t, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.not400 = icmp eq i8 %i.ade, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9390)
  %i.clx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cly = xor i64 %i.clv, %.off0
  %i.clz = load i64, ptr %i.clu, align 8, !noalias !9384, !noundef !3
  %i.cma = zext i64 %i.cly to i128
  %i.cmb = zext i64 %i.clz to i128
  %i.cmc = xor i128 %i.clw, %i.cmb
  %i.cmd = mul nuw i128 %i.cmc, %i.cma            ; 2 uses
  %i.cme = lshr i128 %i.cmd, 64
  %i.cmf = xor i128 %i.cme, %i.cmd
  %i.cmg = trunc i128 %i.cmf to i64               ; 2 uses
  store i64 %i.cmg, ptr %i.clx, align 8, !alias.scope !9384
  br i1 %.not400, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.fs

bb.fs:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.cmh = zext nneg i8 %i.ade to i128
  %i.cmi = shl nuw nsw i128 %i.cmh, 64
  %i.cmj = or disjoint i128 %i.cmi, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i164

bb.ft:                                            ; preds = %.thread.i
  %i.cmk = xor i64 %i.cls, 1
  %i.cml = zext i64 %i.cmk to i128
  %i.cmm = xor i128 %i.cln, 1
  %i.cmn = mul nuw i128 %i.cmm, %i.cml            ; 2 uses
  %i.cmo = lshr i128 %i.cmn, 64
  %i.cmp = xor i128 %i.cmo, %i.cmn
  %i.cmq = trunc i128 %i.cmp to i64
  store i64 %i.cmq, ptr %i.clg, align 8, !alias.scope !9391
  %i.cmr = zext nneg i8 %i.ade to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i164

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i164: ; preds = %bb.ft, %bb.fs
  %storemerge.i = phi i128 [ %i.cmj, %bb.fs ], [ %i.cmr, %bb.ft ] ; 2 uses
  %storemerge.i.i.i165 = phi i8 [ -128, %bb.fs ], [ 64, %bb.ft ] ; 2 uses
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !9391
  store i8 %storemerge.i.i.i165, ptr %i.c, align 16, !alias.scope !9391
  br label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread
  %i.cms = phi ptr [ %i.clu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ], [ %i.clk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i ], [ %i.adv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread ]
  %i.cmt = phi i64 [ %i.cmg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ], [ %i.cls, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i ], [ %i.aed, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread ]
  %i.cmu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cmv = load i64, ptr %i.cmu, align 8, !range !398, !noundef !3 ; 2 uses
  %.not401 = icmp eq i64 %i.cmv, 4                ; 2 uses
  %i.cmw = select i1 %.not401, i128 0, i128 18446744073709551616
  store i128 %i.cmw, ptr %1, align 16, !alias.scope !9396
  store i8 -128, ptr %i.c, align 16, !alias.scope !9396
  br i1 %.not401, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fw

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248: ; preds = %.thread244, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %.thread.i
  %i.cmx = phi i128 [ %i.clc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 1, %.thread.i ], [ 1, %.thread244 ]
  %i.cmy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cmz = load i64, ptr %i.cmy, align 8, !range !398, !noundef !3 ; 2 uses
  %i.cna = icmp ne i64 %i.cmz, 4
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i164, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26
  %i.cnb = phi i128 [ %storemerge.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i164 ], [ %i.adm, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26 ] ; 3 uses
  %i.cnc = phi i8 [ %storemerge.i.i.i165, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i164 ], [ %i.adn, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26 ]
  %i.cnd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cne = load i64, ptr %i.cnd, align 8, !range !398, !noundef !3 ; 3 uses
  %i.cnf = icmp ne i64 %i.cne, 4                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9402)
  %i.cng = icmp ugt i8 %i.cnc, 64
  br i1 %i.cng, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, label %bb.fu

bb.fu:                                            ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.cnh = select i1 %i.cnf, i128 18446744073709551616, i128 0
  %i.cni = or i128 %i.cnh, %i.cnb                 ; 2 uses
  store i128 %i.cni, ptr %1, align 16, !alias.scope !9396
  store i8 -128, ptr %i.c, align 16, !alias.scope !9396
  br i1 %i.cnf, label %._crit_edge, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %bb.fu
  %extract.t403 = trunc i128 %i.cnb to i64
  %.phi.trans.insert418 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre419 = load i64, ptr %.phi.trans.insert418, align 8, !alias.scope !9403, !noalias !9410
  %.phi.trans.insert420 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre421 = load ptr, ptr %.phi.trans.insert420, align 16, !alias.scope !9403, !noalias !9410
  %i.cnj = lshr i128 %i.cni, 64
  %i.cnk = xor i64 %.pre419, %extract.t403
  br label %bb.fw

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248
  %i.cnl = phi i128 [ %i.cmx, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248 ], [ %i.cnb, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.cnm = phi i1 [ %i.cna, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248 ], [ %i.cnf, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.cnn = phi i64 [ %i.cmz, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248 ], [ %i.cne, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.cno = phi ptr [ %i.cmy, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread248 ], [ %i.cnd, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.cnp = trunc i128 %i.cnl to i64
  %i.cnq = lshr i128 %i.cnl, 64
  %i.cnr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cns = load i64, ptr %i.cnr, align 8, !alias.scope !9396, !noundef !3
  %i.cnt = xor i64 %i.cns, %i.cnp
  %i.cnu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cnv = load ptr, ptr %i.cnu, align 16, !alias.scope !9396, !nonnull !3, !align !311, !noundef !3
  %i.cnw = load i64, ptr %i.cnv, align 8, !noalias !9396, !noundef !3
  %i.cnx = zext i64 %i.cnt to i128
  %i.cny = zext i64 %i.cnw to i128
  %i.cnz = xor i128 %i.cnq, %i.cny
  %i.coa = mul nuw i128 %i.cnz, %i.cnx            ; 2 uses
  %i.cob = lshr i128 %i.coa, 64
  %i.coc = xor i128 %i.cob, %i.coa
  %i.cod = trunc i128 %i.coc to i64
  store i64 %i.cod, ptr %i.cnr, align 8, !alias.scope !9396
  %i.coe = zext i1 %i.cnm to i128
  store i128 %i.coe, ptr %1, align 16, !alias.scope !9396
  store i8 64, ptr %i.c, align 16, !alias.scope !9396
  br i1 %i.cnm, label %bb.fv, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.fv:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9414)
  %i.cof = zext nneg i64 %i.cnn to i128
  %i.cog = shl nuw nsw i128 %i.cof, 64
  %i.coh = or disjoint i128 %i.cog, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i166

bb.fw:                                            ; preds = %._crit_edge, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.coi = phi ptr [ %i.cms, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre421, %._crit_edge ]
  %i.coj = phi i64 [ %i.cmt, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cnk, %._crit_edge ]
  %i.cok = phi i128 [ 1, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cnj, %._crit_edge ]
  %i.col = phi ptr [ %i.cmu, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cnd, %._crit_edge ]
  %i.com = phi i64 [ %i.cmv, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cne, %._crit_edge ] ; 2 uses
  %i.con = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.coo = load i64, ptr %i.coi, align 8, !noalias !9415, !noundef !3
  %i.cop = zext i64 %i.coj to i128
  %i.coq = zext i64 %i.coo to i128
  %i.cor = xor i128 %i.cok, %i.coq
  %i.cos = mul nuw i128 %i.cor, %i.cop            ; 2 uses
  %i.cot = lshr i128 %i.cos, 64
  %i.cou = xor i128 %i.cot, %i.cos
  %i.cov = trunc i128 %i.cou to i64
  store i64 %i.cov, ptr %i.con, align 8, !alias.scope !9403, !noalias !9410
  %i.cow = zext nneg i64 %i.com to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i166

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i166: ; preds = %bb.fw, %bb.fv
  %i.cox = phi i64 [ %i.com, %bb.fw ], [ %i.cnn, %bb.fv ]
  %i.coy = phi ptr [ %i.col, %bb.fw ], [ %i.cno, %bb.fv ]
  %.sink.i167 = phi i128 [ %i.cow, %bb.fw ], [ %i.coh, %bb.fv ]
  %storemerge.i.i.i168 = phi i8 [ 64, %bb.fw ], [ -128, %bb.fv ]
  store i128 %.sink.i167, ptr %1, align 16, !alias.scope !9403, !noalias !9410
  store i8 %storemerge.i.i.i168, ptr %i.c, align 16, !alias.scope !9403, !noalias !9410
  %switch.not.i = icmp samesign ult i64 %i.cox, 2
  br i1 %switch.not.i, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i166
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.coz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i166, %bb.fu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.zn, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %i.cpa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cpb = load ptr, ptr %i.cpa, align 8, !nonnull !3, !noundef !3
  %i.cpc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cpd = load i64, ptr %i.cpc, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9422)
  %i.cpe = load i8, ptr %i.c, align 16, !alias.scope !9425, !noundef !3 ; 3 uses
  %i.cpf = icmp ugt i8 %i.cpe, 64
  br i1 %i.cpf, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.cpg = zext i64 %i.cpd to i128
  %i.cph = zext nneg i8 %i.cpe to i128
  %i.cpi = shl nuw i128 %i.cpg, %i.cph
  %i.cpj = load i128, ptr %1, align 16, !alias.scope !9425, !noundef !3
  %i.cpk = or i128 %i.cpj, %i.cpi
  %i.cpl = add nuw i8 %i.cpe, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit171

bb.fy:                                            ; preds = %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.cpm = load i128, ptr %1, align 16, !alias.scope !9425, !noundef !3 ; 2 uses
  %i.cpn = trunc i128 %i.cpm to i64
  %i.cpo = lshr i128 %i.cpm, 64
  %i.cpp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cpq = load i64, ptr %i.cpp, align 8, !alias.scope !9425, !noundef !3
  %i.cpr = xor i64 %i.cpq, %i.cpn
  %i.cps = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cpt = load ptr, ptr %i.cps, align 16, !alias.scope !9425, !nonnull !3, !align !311, !noundef !3
  %i.cpu = load i64, ptr %i.cpt, align 8, !noalias !9425, !noundef !3
  %i.cpv = zext i64 %i.cpr to i128
  %i.cpw = zext i64 %i.cpu to i128
  %i.cpx = xor i128 %i.cpo, %i.cpw
  %i.cpy = mul nuw i128 %i.cpx, %i.cpv            ; 2 uses
  %i.cpz = lshr i128 %i.cpy, 64
  %i.cqa = xor i128 %i.cpz, %i.cpy
  %i.cqb = trunc i128 %i.cqa to i64
  store i64 %i.cqb, ptr %i.cpp, align 8, !alias.scope !9425
  %i.cqc = zext i64 %i.cpd to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit171

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit171: ; preds = %bb.fx, %bb.fy
  %.sink.i169 = phi i128 [ %i.cqc, %bb.fy ], [ %i.cpk, %bb.fx ]
  %storemerge.i.i.i170 = phi i8 [ 64, %bb.fy ], [ %i.cpl, %bb.fx ]
  store i128 %.sink.i169, ptr %1, align 16, !alias.scope !9425
  store i8 %storemerge.i.i.i170, ptr %i.c, align 16, !alias.scope !9425
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cpb, i64 noundef %i.cpd, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.cqd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cqe = load i64, ptr %i.cqd, align 8, !range !4, !noundef !3
  %i.cqf = icmp ne i64 %i.cqe, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9429)
  %i.cqg = load i8, ptr %i.c, align 16, !alias.scope !9432, !noundef !3 ; 3 uses
  %i.cqh = icmp ugt i8 %i.cqg, 64
  br i1 %i.cqh, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit171
  %i.cqi = zext i1 %i.cqf to i128
  %i.cqj = zext nneg i8 %i.cqg to i128
  %i.cqk = shl nuw nsw i128 %i.cqi, %i.cqj
  %i.cql = load i128, ptr %1, align 16, !alias.scope !9432, !noundef !3
  %i.cqm = or i128 %i.cql, %i.cqk
  %i.cqn = add nuw i8 %i.cqg, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.ga:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit171
  %i.cqo = load i128, ptr %1, align 16, !alias.scope !9432, !noundef !3 ; 2 uses
  %i.cqp = trunc i128 %i.cqo to i64
  %i.cqq = lshr i128 %i.cqo, 64
  %i.cqr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cqs = load i64, ptr %i.cqr, align 8, !alias.scope !9432, !noundef !3
  %i.cqt = xor i64 %i.cqs, %i.cqp
  %i.cqu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cqv = load ptr, ptr %i.cqu, align 16, !alias.scope !9432, !nonnull !3, !align !311, !noundef !3
  %i.cqw = load i64, ptr %i.cqv, align 8, !noalias !9432, !noundef !3
  %i.cqx = zext i64 %i.cqt to i128
  %i.cqy = zext i64 %i.cqw to i128
  %i.cqz = xor i128 %i.cqq, %i.cqy
  %i.cra = mul nuw i128 %i.cqz, %i.cqx            ; 2 uses
  %i.crb = lshr i128 %i.cra, 64
  %i.crc = xor i128 %i.crb, %i.cra
  %i.crd = trunc i128 %i.crc to i64
  store i64 %i.crd, ptr %i.cqr, align 8, !alias.scope !9432
  %i.cre = zext i1 %i.cqf to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.fz, %bb.ga
  %.sink312 = phi i128 [ %i.cre, %bb.ga ], [ %i.cqm, %bb.fz ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.ga ], [ %i.cqn, %bb.fz ]
  store i128 %.sink312, ptr %1, align 16, !alias.scope !9432
  store i8 %storemerge.i.i1, ptr %i.c, align 16, !alias.scope !9432
  br i1 %i.cqf, label %bb.gb, label %bb.dt

bb.gb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9436)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cqd, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.crf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.crg = load ptr, ptr %i.crf, align 8, !alias.scope !9433, !noalias !9436, !nonnull !3, !noundef !3
  %i.crh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cri = load i64, ptr %i.crh, align 8, !alias.scope !9433, !noalias !9436, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9444)
  %i.crj = load i8, ptr %i.c, align 16, !alias.scope !9447, !noalias !9433, !noundef !3 ; 3 uses
  %i.crk = icmp ugt i8 %i.crj, 64
  br i1 %i.crk, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.crl = zext i64 %i.cri to i128
  %i.crm = zext nneg i8 %i.crj to i128
  %i.crn = shl nuw i128 %i.crl, %i.crm
  %i.cro = load i128, ptr %1, align 16, !alias.scope !9447, !noalias !9433, !noundef !3
  %i.crp = or i128 %i.cro, %i.crn
  %i.crq = add nuw i8 %i.crj, 64
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit174

bb.gd:                                            ; preds = %bb.gb
  %i.crr = load i128, ptr %1, align 16, !alias.scope !9447, !noalias !9433, !noundef !3 ; 2 uses
  %i.crs = trunc i128 %i.crr to i64
  %i.crt = lshr i128 %i.crr, 64
  %i.cru = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.crv = load i64, ptr %i.cru, align 8, !alias.scope !9447, !noalias !9433, !noundef !3
  %i.crw = xor i64 %i.crv, %i.crs
  %i.crx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cry = load ptr, ptr %i.crx, align 16, !alias.scope !9447, !noalias !9433, !nonnull !3, !align !311, !noundef !3
  %i.crz = load i64, ptr %i.cry, align 8, !noalias !9448, !noundef !3
  %i.csa = zext i64 %i.crw to i128
  %i.csb = zext i64 %i.crz to i128
  %i.csc = xor i128 %i.crt, %i.csb
  %i.csd = mul nuw i128 %i.csc, %i.csa            ; 2 uses
  %i.cse = lshr i128 %i.csd, 64
  %i.csf = xor i128 %i.cse, %i.csd
  %i.csg = trunc i128 %i.csf to i64
  store i64 %i.csg, ptr %i.cru, align 8, !alias.scope !9447, !noalias !9433
  %i.csh = zext i64 %i.cri to i128
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit174

_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit174: ; preds = %bb.gc, %bb.gd
  %.sink.i.i172 = phi i128 [ %i.csh, %bb.gd ], [ %i.crp, %bb.gc ]
  %storemerge.i.i.i.i173 = phi i8 [ 64, %bb.gd ], [ %i.crq, %bb.gc ]
  store i128 %.sink.i.i172, ptr %1, align 16, !alias.scope !9447, !noalias !9433
  store i8 %storemerge.i.i.i.i173, ptr %i.c, align 16, !alias.scope !9447, !noalias !9433
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.crg, i64 noundef %i.cri, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !9433
  br label %bb.dt

bb.ge:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9452)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ahi, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.csi = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.csj = load ptr, ptr %i.csi, align 8, !alias.scope !9449, !noalias !9452, !nonnull !3, !noundef !3
  %i.csk = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.csl = load i64, ptr %i.csk, align 8, !alias.scope !9449, !noalias !9452, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9460)
  %i.csm = load i8, ptr %i.c, align 16, !alias.scope !9463, !noalias !9449, !noundef !3 ; 3 uses
  %i.csn = icmp ugt i8 %i.csm, 64
  br i1 %i.csn, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
end_hunk_4
begin_hunk_5_@_RINvXs7_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6InsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.ao:                                            ; preds = %bb.am
  %i.acj = trunc i128 %i.aay to i64
  %i.ack = lshr i128 %i.aay, 64
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acm = load i64, ptr %i.acl, align 8, !alias.scope !11222, !noundef !3
  %i.acn = xor i64 %i.acm, %i.acj
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acp = load ptr, ptr %i.aco, align 16, !alias.scope !11222, !nonnull !3, !align !311, !noundef !3
  %i.acq = load i64, ptr %i.acp, align 8, !noalias !11222, !noundef !3
  %i.acr = zext i64 %i.acn to i128
  %i.acs = zext i64 %i.acq to i128
  %i.act = xor i128 %i.ack, %i.acs
  %i.acu = mul nuw i128 %i.act, %i.acr            ; 2 uses
  %i.acv = lshr i128 %i.acu, 64
  %i.acw = xor i128 %i.acv, %i.acu
  %i.acx = trunc i128 %i.acw to i64
  store i64 %i.acx, ptr %i.acl, align 8, !alias.scope !11222
  %i.acy = zext i64 %i.acc to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit50

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit50: ; preds = %bb.an, %bb.ao
  %i.acz = phi i64 [ %i.acc, %bb.ao ], [ %i.ace, %bb.an ]
  %i.ada = phi ptr [ %i.aca, %bb.ao ], [ %i.acf, %bb.an ]
  %.sink.i48 = phi i128 [ %i.acy, %bb.ao ], [ %i.aci, %bb.an ]
  %storemerge.i.i.i49 = phi i8 [ 64, %bb.ao ], [ -128, %bb.an ]
  store i128 %.sink.i48, ptr %1, align 16, !alias.scope !11222
  store i8 %storemerge.i.i.i49, ptr %i.d, align 16, !alias.scope !11222
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ada, i64 noundef %i.acz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr148 = load i8, ptr %i.d, align 16, !alias.scope !11223
  %.pre209.pre = load i128, ptr %1, align 16, !alias.scope !11223
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit50
  %.pre209 = phi i128 [ %i.aay, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pre209.pre, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit50 ] ; 3 uses
  %i.adb = phi i8 [ %i.aaz, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pr148, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit50 ] ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.add = load i8, ptr %i.adc, align 4, !range !1779, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11229)
  %i.ade = icmp ugt i8 %i.adb, 120
  br i1 %i.ade, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.ap
  %i.adf = trunc i128 %.pre209 to i64
  %i.adg = lshr i128 %.pre209, 64
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.adi = load i64, ptr %i.adh, align 8, !alias.scope !11223, !noundef !3
  %i.adj = xor i64 %i.adi, %i.adf
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adl = load ptr, ptr %i.adk, align 16, !alias.scope !11223, !nonnull !3, !align !311, !noundef !3
  %i.adm = load i64, ptr %i.adl, align 8, !noalias !11223, !noundef !3
  %i.adn = zext i64 %i.adj to i128
  %i.ado = zext i64 %i.adm to i128
  %i.adp = xor i128 %i.adg, %i.ado
  %i.adq = mul nuw i128 %i.adp, %i.adn            ; 2 uses
  %i.adr = lshr i128 %i.adq, 64
  %i.ads = xor i128 %i.adr, %i.adq
  %i.adt = trunc i128 %i.ads to i64
  store i64 %i.adt, ptr %i.adh, align 8, !alias.scope !11223
  %i.adu = zext nneg i8 %i.add to i128
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.adw = load i8, ptr %i.adv, align 1, !range !1802, !noundef !3 ; 2 uses
  %i.adx = icmp ne i8 %i.adw, 3
  br label %bb.aq

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.ap, %.thread149
  %i.ady = phi i128 [ %i.abs, %.thread149 ], [ %.pre209, %bb.ap ]
  %i.adz = phi i8 [ %i.abu, %.thread149 ], [ %i.add, %bb.ap ]
  %i.aea = phi i8 [ 64, %.thread149 ], [ %i.adb, %bb.ap ] ; 3 uses
  %i.aeb = zext nneg i8 %i.adz to i128
  %i.aec = zext nneg i8 %i.aea to i128
  %i.aed = shl nuw nsw i128 %i.aeb, %i.aec
  %i.aee = or i128 %i.aed, %i.ady                 ; 4 uses
  store i128 %i.aee, ptr %1, align 16, !alias.scope !11223
  %i.aef = add nuw i8 %i.aea, 8                   ; 2 uses
  store i8 %i.aef, ptr %i.d, align 16, !alias.scope !11223
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.aeh = load i8, ptr %i.aeg, align 1, !range !1802, !noundef !3 ; 3 uses
  %i.aei = icmp ne i8 %i.aeh, 3                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11233)
  %i.aej = icmp samesign ugt i8 %i.aea, 56
  br i1 %i.aej, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.aq

bb.aq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.aek = phi i128 [ %i.adu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aee, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.ael = phi i1 [ %i.adx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aei, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.aem = phi i8 [ %i.adw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aeh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i19151 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aef, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.aen = zext i1 %i.ael to i128
  %i.aeo = zext nneg i8 %storemerge.i.i19151 to i128
  %i.aep = shl nuw nsw i128 %i.aen, %i.aeo
  %i.aeq = or i128 %i.aep, %i.aek                 ; 4 uses
  store i128 %i.aeq, ptr %1, align 16, !alias.scope !11236
  %i.aer = add nuw i8 %storemerge.i.i19151, 64
  store i8 %i.aer, ptr %i.d, align 16, !alias.scope !11236
  br i1 %i.ael, label %bb.ar, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.aq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre210 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !11237
  %.phi.trans.insert211 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre212 = load ptr, ptr %.phi.trans.insert211, align 16, !alias.scope !11237
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.aes = trunc i128 %i.aee to i64
  %i.aet = lshr i128 %i.aee, 64
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !alias.scope !11236, !noundef !3
  %i.aew = xor i64 %i.aev, %i.aes
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aey = load ptr, ptr %i.aex, align 16, !alias.scope !11236, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  %i.aez = load i64, ptr %i.aey, align 8, !noalias !11236, !noundef !3
  %i.afa = zext i64 %i.aew to i128
  %i.afb = zext i64 %i.aez to i128
  %i.afc = xor i128 %i.aet, %i.afb
  %i.afd = mul nuw i128 %i.afc, %i.afa            ; 2 uses
  %i.afe = lshr i128 %i.afd, 64
  %i.aff = xor i128 %i.afe, %i.afd
  %i.afg = trunc i128 %i.aff to i64               ; 3 uses
  store i64 %i.afg, ptr %i.aeu, align 8, !alias.scope !11236
  %i.afh = zext i1 %i.aei to i128                 ; 2 uses
  store i128 %i.afh, ptr %1, align 16, !alias.scope !11236
  store i8 64, ptr %i.d, align 16, !alias.scope !11236
  br i1 %i.aei, label %.thread157, label %.thread156

.thread157:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11248)
  %i.afi = zext nneg i8 %i.aeh to i128
  %i.afj = shl nuw nsw i128 %i.afi, 64
  %i.afk = or disjoint i128 %i.afj, %i.afh        ; 2 uses
  store i128 %i.afk, ptr %1, align 16, !alias.scope !11251
  store i8 -128, ptr %i.d, align 16, !alias.scope !11251
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.ar:                                            ; preds = %bb.aq
  %i.afl = trunc i128 %i.aeq to i64
  %i.afm = lshr i128 %i.aeq, 64
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !11251, !noundef !3
  %i.afp = xor i64 %i.afo, %i.afl
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afr = load ptr, ptr %i.afq, align 16, !alias.scope !11251, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.afs = load i64, ptr %i.afr, align 8, !noalias !11251, !noundef !3
  %i.aft = zext i64 %i.afp to i128
  %i.afu = zext i64 %i.afs to i128
  %i.afv = xor i128 %i.afm, %i.afu
  %i.afw = mul nuw i128 %i.afv, %i.aft            ; 2 uses
  %i.afx = lshr i128 %i.afw, 64
  %i.afy = xor i128 %i.afx, %i.afw
  %i.afz = trunc i128 %i.afy to i64               ; 2 uses
  store i64 %i.afz, ptr %i.afn, align 8, !alias.scope !11251
  %i.aga = zext nneg i8 %i.aem to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11253)
  br label %.thread156

.thread156:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %bb.ar
  %i.agb = phi ptr [ %i.aey, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.afr, %bb.ar ] ; 2 uses
  %i.agc = phi i64 [ %i.afg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.afz, %bb.ar ] ; 2 uses
  %i.agd = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.aga, %bb.ar ] ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.in182 = load i64, ptr %i.age, align 8, !range !4, !noundef !3
  %.not183 = icmp eq i64 %.in182, -9223372036854775808 ; 2 uses
  %i.agf = select i1 %.not183, i128 0, i128 18446744073709551616
  %i.agg = or disjoint i128 %i.agf, %i.agd        ; 2 uses
  store i128 %i.agg, ptr %1, align 16, !alias.scope !11237
  store i8 -128, ptr %i.d, align 16, !alias.scope !11237
  br i1 %.not183, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169, label %bb.at

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169: ; preds = %.thread156
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.agi = load i64, ptr %i.agh, align 8, !range !4, !noundef !3
  %i.agj = icmp ne i64 %i.agi, -9223372036854775808 ; 2 uses
  %i.agk = zext i1 %i.agj to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread157
  %i.agl = phi ptr [ %.pre212, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.aey, %.thread157 ]
  %i.agm = phi i64 [ %.pre210, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.afg, %.thread157 ]
  %i.agn = phi i128 [ %i.aeq, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.afk, %.thread157 ] ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.in = load i64, ptr %i.ago, align 8, !range !4, !noundef !3
  %i.agp = icmp ne i64 %.in, -9223372036854775808 ; 2 uses
  %i.agq = trunc i128 %i.agn to i64
  %i.agr = lshr i128 %i.agn, 64
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.agt = xor i64 %i.agm, %i.agq
  %i.agu = load i64, ptr %i.agl, align 8, !noalias !11237, !noundef !3
  %i.agv = zext i64 %i.agt to i128
  %i.agw = zext i64 %i.agu to i128
  %i.agx = xor i128 %i.agr, %i.agw
  %i.agy = mul nuw i128 %i.agx, %i.agv            ; 2 uses
  %i.agz = lshr i128 %i.agy, 64
  %i.aha = xor i128 %i.agz, %i.agy
  %i.ahb = trunc i128 %i.aha to i64
  store i64 %i.ahb, ptr %i.ags, align 8, !alias.scope !11237
  %i.ahc = zext i1 %i.agp to i128
  store i128 %i.ahc, ptr %1, align 16, !alias.scope !11237
  store i8 64, ptr %i.d, align 16, !alias.scope !11237
  br i1 %i.agp, label %bb.as, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.as:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11262)
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ahe = load ptr, ptr %i.ahd, align 8, !alias.scope !11265, !noalias !11266, !nonnull !3, !noundef !3
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ahg = load i64, ptr %i.ahf, align 8, !alias.scope !11265, !noalias !11266, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11272), !noalias !11265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11275), !noalias !11265
  %i.ahh = zext i64 %i.ahg to i128
  %i.ahi = shl nuw i128 %i.ahh, 64
  %i.ahj = or disjoint i128 %i.ahi, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit96

bb.at:                                            ; preds = %.thread156
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ahl = load ptr, ptr %i.ahk, align 8, !alias.scope !11278, !noalias !11281, !nonnull !3, !noundef !3
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ahn = load i64, ptr %i.ahm, align 8, !alias.scope !11278, !noalias !11281, !noundef !3 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ahp = load i64, ptr %i.agb, align 8, !noalias !11284, !noundef !3
  %i.ahq = zext i64 %i.agc to i128
  %i.ahr = xor i128 %i.agd, %i.ahq
  %i.ahs = xor i64 %i.ahp, 1
  %i.aht = zext i64 %i.ahs to i128
  %i.ahu = mul nuw i128 %i.ahr, %i.aht            ; 2 uses
  %i.ahv = lshr i128 %i.ahu, 64
  %i.ahw = xor i128 %i.ahv, %i.ahu
  %i.ahx = trunc i128 %i.ahw to i64
  store i64 %i.ahx, ptr %i.aho, align 8, !alias.scope !11285, !noalias !11265
  %i.ahy = zext i64 %i.ahn to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit96

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit96: ; preds = %bb.as, %bb.at
  %i.ahz = phi i64 [ %i.ahn, %bb.at ], [ %i.ahg, %bb.as ]
  %i.aia = phi ptr [ %i.ahl, %bb.at ], [ %i.ahe, %bb.as ]
  %.sink.i94 = phi i128 [ %i.ahy, %bb.at ], [ %i.ahj, %bb.as ]
  %storemerge.i.i.i95 = phi i8 [ 64, %bb.at ], [ -128, %bb.as ]
  store i128 %.sink.i94, ptr %1, align 16, !alias.scope !11285, !noalias !11265
  store i8 %storemerge.i.i.i95, ptr %i.d, align 16, !alias.scope !11285, !noalias !11265
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aia, i64 noundef %i.ahz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !11265, !inline_history !11286
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.aic = load i64, ptr %i.aib, align 8, !range !4, !alias.scope !11254, !noalias !11257, !noundef !3
  %i.aid = icmp ne i64 %i.aic, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11290)
  %i.aie = load i8, ptr %i.d, align 16, !alias.scope !11293, !noalias !11254, !noundef !3 ; 4 uses
  %i.aif = icmp ugt i8 %i.aie, 64
  br i1 %i.aif, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit96
  %i.aig = zext i1 %i.aid to i128
  %i.aih = zext nneg i8 %i.aie to i128
  %i.aii = shl nuw nsw i128 %i.aig, %i.aih
  %i.aij = load i128, ptr %1, align 16, !alias.scope !11293, !noalias !11254, !noundef !3
  %i.aik = or i128 %i.aij, %i.aii                 ; 5 uses
  store i128 %i.aik, ptr %1, align 16, !alias.scope !11293, !noalias !11254
  %i.ail = add nuw i8 %i.aie, 64                  ; 2 uses
  store i8 %i.ail, ptr %i.d, align 16, !alias.scope !11293, !noalias !11254
  br i1 %i.aid, label %bb.au, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit96
  %i.aim = load i128, ptr %1, align 16, !alias.scope !11293, !noalias !11254, !noundef !3 ; 2 uses
  %i.ain = trunc i128 %i.aim to i64
  %i.aio = lshr i128 %i.aim, 64
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aiq = load i64, ptr %i.aip, align 8, !alias.scope !11293, !noalias !11254, !noundef !3
  %i.air = xor i64 %i.aiq, %i.ain
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ait = load ptr, ptr %i.ais, align 16, !alias.scope !11293, !noalias !11254, !nonnull !3, !align !311, !noundef !3
  %i.aiu = load i64, ptr %i.ait, align 8, !noalias !11294, !noundef !3
  %i.aiv = zext i64 %i.air to i128
  %i.aiw = zext i64 %i.aiu to i128
  %i.aix = xor i128 %i.aio, %i.aiw
  %i.aiy = mul nuw i128 %i.aix, %i.aiv            ; 2 uses
  %i.aiz = lshr i128 %i.aiy, 64
  %i.aja = xor i128 %i.aiz, %i.aiy
  %i.ajb = trunc i128 %i.aja to i64
  store i64 %i.ajb, ptr %i.aip, align 8, !alias.scope !11293, !noalias !11254
  %i.ajc = zext i1 %i.aid to i128
  store i128 %i.ajc, ptr %1, align 16, !alias.scope !11293, !noalias !11254
  store i8 64, ptr %i.d, align 16, !alias.scope !11293, !noalias !11254
  br i1 %i.aid, label %.thread165, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread165:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54.thread
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.aje = load ptr, ptr %i.ajd, align 8, !alias.scope !11254, !noalias !11257, !nonnull !3, !noundef !3
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ajg = load i64, ptr %i.ajf, align 8, !alias.scope !11254, !noalias !11257, !noundef !3
  br label %bb.av

bb.au:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.aji = load ptr, ptr %i.ajh, align 8, !alias.scope !11254, !noalias !11257, !nonnull !3, !noundef !3 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ajk = load i64, ptr %i.ajj, align 8, !alias.scope !11254, !noalias !11257, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11301)
  %.not184 = icmp eq i8 %i.aie, 0
  br i1 %.not184, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread165, %bb.au
  %i.ajl = phi i128 [ 1, %.thread165 ], [ %i.aik, %bb.au ]
  %i.ajm = phi i64 [ %i.ajg, %.thread165 ], [ %i.ajk, %bb.au ] ; 2 uses
  %i.ajn = phi ptr [ %i.aje, %.thread165 ], [ %i.aji, %bb.au ]
  %i.ajo = zext i64 %i.ajm to i128
  %i.ajp = shl nuw i128 %i.ajo, 64
  %i.ajq = or i128 %i.ajl, %i.ajp
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72

bb.aw:                                            ; preds = %bb.au
  %i.ajr = trunc i128 %i.aik to i64
  %i.ajs = lshr i128 %i.aik, 64
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aju = load i64, ptr %i.ajt, align 8, !alias.scope !11304, !noundef !3
  %i.ajv = xor i64 %i.aju, %i.ajr
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ajx = load ptr, ptr %i.ajw, align 16, !alias.scope !11304, !nonnull !3, !align !311, !noundef !3
  %i.ajy = load i64, ptr %i.ajx, align 8, !noalias !11304, !noundef !3
  %i.ajz = zext i64 %i.ajv to i128
  %i.aka = zext i64 %i.ajy to i128
  %i.akb = xor i128 %i.ajs, %i.aka
  %i.akc = mul nuw i128 %i.akb, %i.ajz            ; 2 uses
  %i.akd = lshr i128 %i.akc, 64
  %i.ake = xor i128 %i.akd, %i.akc
  %i.akf = trunc i128 %i.ake to i64
  store i64 %i.akf, ptr %i.ajt, align 8, !alias.scope !11304
  %i.akg = zext i64 %i.ajk to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72: ; preds = %bb.av, %bb.aw
  %i.akh = phi i64 [ %i.ajk, %bb.aw ], [ %i.ajm, %bb.av ] ; 2 uses
  %i.aki = phi ptr [ %i.aji, %bb.aw ], [ %i.ajn, %bb.av ] ; 2 uses
  %.sink.i70 = phi i128 [ %i.akg, %bb.aw ], [ %i.ajq, %bb.av ] ; 2 uses
  %storemerge.i.i.i71 = phi i8 [ 64, %bb.aw ], [ -128, %bb.av ] ; 2 uses
  store i128 %.sink.i70, ptr %1, align 16, !alias.scope !11304
  store i8 %storemerge.i.i.i71, ptr %i.d, align 16, !alias.scope !11304
  %.idx.i66 = shl nuw nsw i64 %i.akh, 6
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %.idx.i66
  %i.akk = icmp eq i64 %i.akh, 0
  br i1 %i.akk, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72, %.lr.ph.i67
  %.sroa.0.03.i68 = phi ptr [ %i.akl, %.lr.ph.i67 ], [ %i.aki, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72 ] ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i68, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i68, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.akm = icmp eq ptr %i.akl, %i.akj
  br i1 %i.akm, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.loopexit, label %.lr.ph.i67

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.loopexit: ; preds = %.lr.ph.i67
  %.pr168.pre = load i8, ptr %i.d, align 16, !alias.scope !11305
  %.pre215.pre.pre = load i128, ptr %1, align 16, !alias.scope !11305
  br label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ako = load i64, ptr %i.akn, align 8, !range !4, !noundef !3
  %i.akp = icmp ne i64 %i.ako, -9223372036854775808 ; 2 uses
  %i.akq = zext i1 %i.akp to i64
  br label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.loopexit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54
  %.pre215 = phi i128 [ %i.aik, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54 ], [ %.pre215.pre.pre, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.loopexit ], [ %.sink.i70, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72 ] ; 2 uses
  %i.akr = phi i8 [ %i.ail, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i54 ], [ %.pr168.pre, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.loopexit ], [ %storemerge.i.i.i71, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit72 ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.akt = load i64, ptr %i.aks, align 8, !range !4, !noundef !3
  %i.aku = icmp ne i64 %i.akt, -9223372036854775808 ; 3 uses
  %i.akv = zext i1 %i.aku to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11311)
  %i.akw = icmp ugt i8 %i.akr, 64
  br i1 %i.akw, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.phi.trans.insert216 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre217 = load i64, ptr %.phi.trans.insert216, align 8, !alias.scope !11305
  %.phi.trans.insert218 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre219 = load ptr, ptr %.phi.trans.insert218, align 16, !alias.scope !11305
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.akx = phi i128 [ 0, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre215, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aky = phi i64 [ %i.akq, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.akv, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.akz = phi i1 [ %i.akp, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aku, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ala = phi i8 [ 64, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.akr, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.alb = zext nneg i64 %i.aky to i128
  %i.alc = zext nneg i8 %i.ala to i128
  %i.ald = shl nuw nsw i128 %i.alb, %i.alc
  %i.ale = or i128 %i.ald, %i.akx                 ; 5 uses
  store i128 %i.ale, ptr %1, align 16, !alias.scope !11305
  %i.alf = add nuw i8 %i.ala, 64                  ; 2 uses
  store i8 %i.alf, ptr %i.d, align 16, !alias.scope !11305
  br i1 %i.akz, label %bb.ax, label %bb.ba

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169
  %i.alg = phi ptr [ %i.agb, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169 ], [ %.pre219, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.alh = phi i64 [ %i.agc, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169 ], [ %.pre217, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.ali = phi i128 [ %i.agg, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169 ], [ %.pre215, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ] ; 2 uses
  %i.alj = phi i64 [ %i.agk, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169 ], [ %i.akv, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.alk = phi i1 [ %i.agj, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread169 ], [ %i.aku, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.all = trunc i128 %i.ali to i64
  %i.alm = lshr i128 %i.ali, 64
  %i.aln = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.alo = xor i64 %i.alh, %i.all
  %i.alp = load i64, ptr %i.alg, align 8, !noalias !11305, !noundef !3
  %i.alq = zext i64 %i.alo to i128
  %i.alr = zext i64 %i.alp to i128
  %i.als = xor i128 %i.alm, %i.alr
  %i.alt = mul nuw i128 %i.als, %i.alq            ; 2 uses
  %i.alu = lshr i128 %i.alt, 64
  %i.alv = xor i128 %i.alu, %i.alt
end_hunk_5
begin_hunk_6_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i128 %i.yo, ptr %1, align 16, !alias.scope !15188
  %i.yp = add nuw i8 %i.yi, 64
  store i8 %i.yp, ptr %i.c, align 16, !alias.scope !15188
  br i1 %i.yk, label %bb.ay, label %.thread108

.thread108:                                       ; preds = %.thread103
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.yr = load i8, ptr %i.yq, align 4, !range !2045, !noundef !3 ; 2 uses
  %i.ys = icmp ne i8 %i.yr, 2                     ; 2 uses
  %i.yt = zext i1 %i.ys to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread95, %.thread104
  %i.yu = phi ptr [ %i.ru, %.thread95 ], [ %.pre163, %.thread104 ]
  %i.yv = phi i64 [ %i.rv, %.thread95 ], [ %i.xu, %.thread104 ]
  %i.yw = phi i128 [ %i.rz, %.thread95 ], [ %.sink.i19.sink.i.ph, %.thread104 ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  %.in136 = load i64, ptr %i.yx, align 8, !range !4, !noundef !3
  %i.yy = icmp ne i64 %.in136, -9223372036854775808 ; 2 uses
  %i.yz = trunc i128 %i.yw to i64
  %i.za = lshr i128 %i.yw, 64
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zc = xor i64 %i.yv, %i.yz
  %i.zd = load i64, ptr %i.yu, align 8, !noalias !15188, !noundef !3
  %i.ze = zext i64 %i.zc to i128
  %i.zf = zext i64 %i.zd to i128
  %i.zg = xor i128 %i.za, %i.zf
  %i.zh = mul nuw i128 %i.zg, %i.ze               ; 2 uses
  %i.zi = lshr i128 %i.zh, 64
  %i.zj = xor i128 %i.zi, %i.zh
  %i.zk = trunc i128 %i.zj to i64
  store i64 %i.zk, ptr %i.zb, align 8, !alias.scope !15188
  %i.zl = zext i1 %i.yy to i128
  store i128 %i.zl, ptr %1, align 16, !alias.scope !15188
  store i8 64, ptr %i.c, align 16, !alias.scope !15188
  br i1 %i.yy, label %bb.ay, label %.thread109

.thread109:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.zn = load i8, ptr %i.zm, align 4, !range !2045, !noundef !3 ; 2 uses
  %i.zo = icmp ne i8 %i.zn, 2                     ; 2 uses
  %i.zp = zext i1 %i.zo to i64
  br label %._crit_edge

bb.ay:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %.thread103
  %i.zq = phi ptr [ %i.yj, %.thread103 ], [ %i.yx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.zq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr107 = load i8, ptr %i.c, align 16, !alias.scope !15196 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.zs = load i8, ptr %i.zr, align 4, !range !2045, !noundef !3 ; 3 uses
  %i.zt = icmp ne i8 %i.zs, 2                     ; 3 uses
  %i.zu = zext i1 %i.zt to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15202)
  %i.zv = icmp ugt i8 %.pr107, 64
  %.pre165 = load i128, ptr %1, align 16, !alias.scope !15196 ; 2 uses
  br i1 %i.zv, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, label %._crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.ay
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre167 = load i64, ptr %.phi.trans.insert166, align 8, !alias.scope !15196
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

._crit_edge:                                      ; preds = %bb.ay, %.thread109
  %i.zw = phi i128 [ 0, %.thread109 ], [ %.pre165, %bb.ay ]
  %i.zx = phi i64 [ %i.zp, %.thread109 ], [ %i.zu, %bb.ay ]
  %i.zy = phi i1 [ %i.zo, %.thread109 ], [ %i.zt, %bb.ay ]
  %i.zz = phi i8 [ %i.zn, %.thread109 ], [ %i.zs, %bb.ay ] ; 2 uses
  %i.aaa = phi i8 [ 64, %.thread109 ], [ %.pr107, %bb.ay ] ; 3 uses
  %i.aab = zext nneg i64 %i.zx to i128
  %i.aac = zext nneg i8 %i.aaa to i128
  %i.aad = shl nuw nsw i128 %i.aab, %i.aac
  %i.aae = or i128 %i.aad, %i.zw                  ; 5 uses
  store i128 %i.aae, ptr %1, align 16, !alias.scope !15196
  %i.aaf = add nuw i8 %i.aaa, 64                  ; 2 uses
  store i8 %i.aaf, ptr %i.c, align 16, !alias.scope !15196
  br i1 %i.zy, label %bb.az, label %bb.bb

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread108
  %i.aag = phi i64 [ %i.yg, %.thread108 ], [ %.pre167, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.aah = phi i128 [ %i.yo, %.thread108 ], [ %.pre165, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.aai = phi i64 [ %i.yt, %.thread108 ], [ %i.zu, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.aaj = phi i1 [ %i.ys, %.thread108 ], [ %i.zt, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.aak = phi i8 [ %i.yr, %.thread108 ], [ %i.zs, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.aal = trunc i128 %i.aah to i64
  %i.aam = lshr i128 %i.aah, 64
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aao = xor i64 %i.aag, %i.aal
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aaq = load ptr, ptr %i.aap, align 16, !alias.scope !15196, !nonnull !3, !align !311, !noundef !3
  %i.aar = load i64, ptr %i.aaq, align 8, !noalias !15196, !noundef !3
  %i.aas = zext i64 %i.aao to i128
  %i.aat = zext i64 %i.aar to i128
  %i.aau = xor i128 %i.aam, %i.aat
  %i.aav = mul nuw i128 %i.aau, %i.aas            ; 2 uses
  %i.aaw = lshr i128 %i.aav, 64
  %i.aax = xor i128 %i.aaw, %i.aav
  %i.aay = trunc i128 %i.aax to i64
  store i64 %i.aay, ptr %i.aan, align 8, !alias.scope !15196
  %i.aaz = zext nneg i64 %i.aai to i128           ; 3 uses
  store i128 %i.aaz, ptr %1, align 16, !alias.scope !15196
  store i8 64, ptr %i.c, align 16, !alias.scope !15196
  br i1 %i.aaj, label %.thread111, label %.thread114

.thread114:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.abb = load i64, ptr %i.aba, align 8, !range !4, !noundef !3
  %.not196 = icmp eq i64 %i.abb, -9223372036854775808 ; 2 uses
  %i.abc = select i1 %.not196, i128 0, i128 18446744073709551616
  %i.abd = or disjoint i128 %i.abc, %i.aaz        ; 3 uses
  store i128 %i.abd, ptr %1, align 16, !alias.scope !15203
  store i8 -128, ptr %i.c, align 16, !alias.scope !15203
  br i1 %.not196, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.be

bb.az:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15214)
  %.not139 = icmp eq i8 %i.aaa, 0
  br i1 %.not139, label %.thread111, label %bb.ba

.thread111:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %bb.az
  %i.abe = phi i128 [ %i.aae, %bb.az ], [ %i.aaz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.abf = phi i8 [ %i.zz, %bb.az ], [ %i.aak, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.abg = zext nneg i8 %i.abf to i128
  %i.abh = shl nuw nsw i128 %i.abg, 64
  %i.abi = or i128 %i.abh, %i.abe
  br label %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ba:                                            ; preds = %bb.az
  %i.abj = trunc i128 %i.aae to i64
  %i.abk = lshr i128 %i.aae, 64
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abm = load i64, ptr %i.abl, align 8, !alias.scope !15217, !noundef !3
  %i.abn = xor i64 %i.abm, %i.abj
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abp = load ptr, ptr %i.abo, align 16, !alias.scope !15217, !nonnull !3, !align !311, !noundef !3
  %i.abq = load i64, ptr %i.abp, align 8, !noalias !15217, !noundef !3
  %i.abr = zext i64 %i.abn to i128
  %i.abs = zext i64 %i.abq to i128
  %i.abt = xor i128 %i.abk, %i.abs
  %i.abu = mul nuw i128 %i.abt, %i.abr            ; 2 uses
  %i.abv = lshr i128 %i.abu, 64
  %i.abw = xor i128 %i.abv, %i.abu
  %i.abx = trunc i128 %i.abw to i64
  store i64 %i.abx, ptr %i.abl, align 8, !alias.scope !15217
  %i.aby = zext nneg i8 %i.zz to i128
  br label %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread111, %bb.ba
  %.sink.i44 = phi i128 [ %i.aby, %bb.ba ], [ %i.abi, %.thread111 ] ; 2 uses
  %storemerge.i.i.i45 = phi i8 [ 64, %bb.ba ], [ -128, %.thread111 ] ; 2 uses
  store i128 %.sink.i44, ptr %1, align 16, !alias.scope !15217
  store i8 %storemerge.i.i.i45, ptr %i.c, align 16, !alias.scope !15217
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.abz = phi i128 [ %i.aae, %._crit_edge ], [ %.sink.i44, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.aca = phi i8 [ %i.aaf, %._crit_edge ], [ %storemerge.i.i.i45, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.acc = load i64, ptr %i.acb, align 8, !range !4, !noundef !3
  %i.acd = icmp ne i64 %i.acc, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15219)
  %i.ace = icmp ugt i8 %i.aca, 64
  br i1 %i.ace, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.acf = select i1 %i.acd, i128 18446744073709551616, i128 0
  %i.acg = or i128 %i.abz, %i.acf                 ; 3 uses
  store i128 %i.acg, ptr %1, align 16, !alias.scope !15203
  store i8 -128, ptr %i.c, align 16, !alias.scope !15203
  %extract.t199 = trunc i128 %i.abz to i64
  br i1 %i.acd, label %bb.be, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.thread114, %bb.bc
  %i.ach = phi i128 [ %i.abd, %.thread114 ], [ %i.acg, %bb.bc ]
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.acj = load i64, ptr %i.aci, align 8, !range !4, !noundef !3
  %i.ack = icmp ne i64 %i.acj, -9223372036854775808 ; 2 uses
  %i.acl = zext i1 %i.ack to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.bb
  %i.acm = trunc i128 %i.abz to i64
  %i.acn = lshr i128 %i.abz, 64
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acp = load i64, ptr %i.aco, align 8, !alias.scope !15203, !noundef !3
  %i.acq = xor i64 %i.acp, %i.acm
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acs = load ptr, ptr %i.acr, align 16, !alias.scope !15203, !nonnull !3, !align !311, !noundef !3
  %i.act = load i64, ptr %i.acs, align 8, !noalias !15203, !noundef !3
  %i.acu = zext i64 %i.acq to i128
  %i.acv = zext i64 %i.act to i128
  %i.acw = xor i128 %i.acn, %i.acv
  %i.acx = mul nuw i128 %i.acw, %i.acu            ; 2 uses
  %i.acy = lshr i128 %i.acx, 64
  %i.acz = xor i128 %i.acy, %i.acx
  %i.ada = trunc i128 %i.acz to i64
  store i64 %i.ada, ptr %i.aco, align 8, !alias.scope !15203
  %i.adb = zext i1 %i.acd to i128
  store i128 %i.adb, ptr %1, align 16, !alias.scope !15203
  store i8 64, ptr %i.c, align 16, !alias.scope !15203
  br i1 %i.acd, label %bb.bd, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.add = load i64, ptr %i.adc, align 8, !range !4, !noundef !3
  %i.ade = icmp ne i64 %i.add, -9223372036854775808 ; 2 uses
  %i.adf = zext i1 %i.ade to i64
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

bb.bd:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.adh = load ptr, ptr %i.adg, align 8, !nonnull !3, !noundef !3
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.adj = load i64, ptr %i.adi, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15226)
  %i.adk = zext i64 %i.adj to i128
  %i.adl = shl nuw i128 %i.adk, 64
  %i.adm = or disjoint i128 %i.adl, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48

bb.be:                                            ; preds = %.thread114, %bb.bc
  %i.adn = phi i128 [ %i.abd, %.thread114 ], [ %i.acg, %bb.bc ]
  %.off0197 = phi i64 [ %i.aai, %.thread114 ], [ %extract.t199, %bb.bc ]
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.adp = load ptr, ptr %i.ado, align 8, !nonnull !3, !noundef !3
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.adr = load i64, ptr %i.adq, align 8, !noundef !3 ; 2 uses
  %i.ads = lshr i128 %i.adn, 64
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.adu = load i64, ptr %i.adt, align 8, !alias.scope !15229, !noundef !3
  %i.adv = xor i64 %i.adu, %.off0197
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adx = load ptr, ptr %i.adw, align 16, !alias.scope !15229, !nonnull !3, !align !311, !noundef !3
  %i.ady = load i64, ptr %i.adx, align 8, !noalias !15229, !noundef !3
  %i.adz = zext i64 %i.adv to i128
  %i.aea = zext i64 %i.ady to i128
  %i.aeb = xor i128 %i.ads, %i.aea
  %i.aec = mul nuw i128 %i.aeb, %i.adz            ; 2 uses
  %i.aed = lshr i128 %i.aec, 64
  %i.aee = xor i128 %i.aed, %i.aec
  %i.aef = trunc i128 %i.aee to i64
  store i64 %i.aef, ptr %i.adt, align 8, !alias.scope !15229
  %i.aeg = zext i64 %i.adr to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %bb.bd, %bb.be
  %i.aeh = phi i64 [ %i.adr, %bb.be ], [ %i.adj, %bb.bd ] ; 2 uses
  %i.aei = phi ptr [ %i.adp, %bb.be ], [ %i.adh, %bb.bd ] ; 2 uses
  %.sink.i46 = phi i128 [ %i.aeg, %bb.be ], [ %i.adm, %bb.bd ] ; 2 uses
  %storemerge.i.i.i47 = phi i8 [ 64, %bb.be ], [ -128, %bb.bd ] ; 2 uses
  store i128 %.sink.i46, ptr %1, align 16, !alias.scope !15229
  store i8 %storemerge.i.i.i47, ptr %i.c, align 16, !alias.scope !15229
  %.idx153 = mul nuw nsw i64 %i.aeh, 392
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 %.idx153
  %i.aek = icmp eq i64 %i.aeh, 0
  br i1 %i.aek, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph148

.lr.ph148:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48, %.lr.ph148
  %.sroa.0.0.i49147 = phi ptr [ %i.ael, %.lr.ph148 ], [ %i.aei, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48 ] ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i49147, i64 392 ; 2 uses
  tail call fastcc void @_RINvXsn0_NtCs4lawaffTVVK_9sqlparser3astNtB7_9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %.sroa.0.0.i49147, ptr noalias noundef align 16 dereferenceable(48) %1) #57, !inline_history !6659
  %i.aem = icmp eq ptr %i.ael, %i.aej
  br i1 %i.aem, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph148

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph148
  %.pr118.pre = load i8, ptr %i.c, align 16, !alias.scope !15230
  %.pre170.pre = load i128, ptr %1, align 16, !alias.scope !15230
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48
  %.pre170 = phi i128 [ %.pre170.pre, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %.sink.i46, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48 ] ; 2 uses
  %.pr118 = phi i8 [ %.pr118.pre, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i47, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit48 ] ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.aeo = load i64, ptr %i.aen, align 8, !range !4, !noundef !3
  %i.aep = icmp ne i64 %i.aeo, -9223372036854775808 ; 3 uses
  %i.aeq = zext i1 %i.aep to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15236)
  %i.aer = icmp ugt i8 %.pr118, 64
  br i1 %i.aer, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119
  %i.aes = phi i128 [ 0, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119 ], [ %.pre170, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aet = phi i64 [ %i.adf, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119 ], [ %i.aeq, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aeu = phi i1 [ %i.ade, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119 ], [ %i.aep, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aev = phi i8 [ 64, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread119 ], [ %.pr118, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.aew = zext nneg i64 %i.aet to i128
  %i.aex = zext nneg i8 %i.aev to i128
  %i.aey = shl nuw nsw i128 %i.aew, %i.aex
  %i.aez = or i128 %i.aey, %i.aes                 ; 4 uses
  store i128 %i.aez, ptr %1, align 16, !alias.scope !15230
  %i.afa = add nuw i8 %i.aev, 64
  store i8 %i.afa, ptr %i.c, align 16, !alias.scope !15230
  br i1 %i.aeu, label %bb.bf, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit58

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.afb = phi i128 [ %i.ach, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre170, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.afc = phi i64 [ %i.acl, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aeq, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.afd = phi i1 [ %i.ack, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aep, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.afe = trunc i128 %i.afb to i64
  %i.aff = lshr i128 %i.afb, 64
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.afh = load i64, ptr %i.afg, align 8, !alias.scope !15230, !noundef !3
  %i.afi = xor i64 %i.afh, %i.afe
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afk = load ptr, ptr %i.afj, align 16, !alias.scope !15230, !nonnull !3, !align !311, !noundef !3
  %i.afl = load i64, ptr %i.afk, align 8, !noalias !15230, !noundef !3
  %i.afm = zext i64 %i.afi to i128
  %i.afn = zext i64 %i.afl to i128
  %i.afo = xor i128 %i.aff, %i.afn
  %i.afp = mul nuw i128 %i.afo, %i.afm            ; 2 uses
  %i.afq = lshr i128 %i.afp, 64
  %i.afr = xor i128 %i.afq, %i.afp
  %i.afs = trunc i128 %i.afr to i64
  store i64 %i.afs, ptr %i.afg, align 8, !alias.scope !15230
  %i.aft = zext nneg i64 %i.afc to i128           ; 2 uses
  store i128 %i.aft, ptr %1, align 16, !alias.scope !15230
  store i8 64, ptr %i.c, align 16, !alias.scope !15230
  br i1 %i.afd, label %.thread121, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit58

.thread121:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.afv = load ptr, ptr %i.afu, align 8, !alias.scope !15237, !noalias !15240, !nonnull !3, !noundef !3
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.afx = load i64, ptr %i.afw, align 8, !alias.scope !15237, !noalias !15240, !noundef !3
  br label %bb.bg

bb.bf:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15244)
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.afz = load ptr, ptr %i.afy, align 8, !alias.scope !15242, !noalias !15244, !nonnull !3, !noundef !3 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.agb = load i64, ptr %i.aga, align 8, !alias.scope !15242, !noalias !15244, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15252)
  %.not141 = icmp eq i8 %i.aev, 0
  br i1 %.not141, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.thread121, %bb.bf
  %i.agc = phi i128 [ %i.aft, %.thread121 ], [ %i.aez, %bb.bf ]
  %i.agd = phi i64 [ %i.afx, %.thread121 ], [ %i.agb, %bb.bf ] ; 2 uses
  %i.age = phi ptr [ %i.afv, %.thread121 ], [ %i.afz, %bb.bf ]
  %i.agf = zext i64 %i.agd to i128
  %i.agg = shl nuw i128 %i.agf, 64
  %i.agh = or i128 %i.agc, %i.agg
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i54

bb.bh:                                            ; preds = %bb.bf
  %i.agi = trunc i128 %i.aez to i64
  %i.agj = lshr i128 %i.aez, 64
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.agl = load i64, ptr %i.agk, align 8, !alias.scope !15255, !noalias !15242, !noundef !3
  %i.agm = xor i64 %i.agl, %i.agi
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ago = load ptr, ptr %i.agn, align 16, !alias.scope !15255, !noalias !15242, !nonnull !3, !align !311, !noundef !3
  %i.agp = load i64, ptr %i.ago, align 8, !noalias !15256, !noundef !3
  %i.agq = zext i64 %i.agm to i128
  %i.agr = zext i64 %i.agp to i128
  %i.ags = xor i128 %i.agj, %i.agr
  %i.agt = mul nuw i128 %i.ags, %i.agq            ; 2 uses
  %i.agu = lshr i128 %i.agt, 64
  %i.agv = xor i128 %i.agu, %i.agt
  %i.agw = trunc i128 %i.agv to i64
  store i64 %i.agw, ptr %i.agk, align 8, !alias.scope !15255, !noalias !15242
  %i.agx = zext i64 %i.agb to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i54

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i54: ; preds = %bb.bh, %bb.bg
  %i.agy = phi i64 [ %i.agb, %bb.bh ], [ %i.agd, %bb.bg ] ; 2 uses
  %i.agz = phi ptr [ %i.afz, %bb.bh ], [ %i.age, %bb.bg ] ; 2 uses
  %.sink.i.i55 = phi i128 [ %i.agx, %bb.bh ], [ %i.agh, %bb.bg ]
  %storemerge.i.i.i.i56 = phi i8 [ 64, %bb.bh ], [ -128, %bb.bg ]
  store i128 %.sink.i.i55, ptr %1, align 16, !alias.scope !15255, !noalias !15242
  store i8 %storemerge.i.i.i.i56, ptr %i.c, align 16, !alias.scope !15255, !noalias !15242
  %.idx154 = mul nuw nsw i64 %i.agy, 88
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 %.idx154
  %i.ahb = icmp eq i64 %i.agy, 0
  br i1 %i.ahb, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit58, label %.lr.ph150

.lr.ph150:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i54, %.lr.ph150
  %.sroa.0.0.i.i57149 = phi ptr [ %i.ahc, %.lr.ph150 ], [ %i.agz, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i54 ] ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i57149, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i57149, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !15242, !inline_history !8512
  %i.ahd = icmp eq ptr %i.ahc, %i.aha
  br i1 %i.ahd, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit58, label %.lr.ph150

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit58: ; preds = %.lr.ph150, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i54, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_6
begin_hunk_7_@_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.pre134 = load i128, ptr %1, align 16, !alias.scope !16443 ; 2 uses
  br i1 %i.pi, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, label %._crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.n
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre136 = load i64, ptr %.phi.trans.insert135, align 8, !alias.scope !16443
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 16, !alias.scope !16443
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

._crit_edge:                                      ; preds = %bb.n, %.thread71
  %i.pj = phi i128 [ 0, %.thread71 ], [ %.pre134, %bb.n ]
  %i.pk = phi i64 [ %i.pd, %.thread71 ], [ %i.ph, %bb.n ]
  %i.pl = phi i1 [ %i.pc, %.thread71 ], [ %i.pg, %bb.n ]
  %i.pm = phi ptr [ %i.pa, %.thread71 ], [ %i.pe, %bb.n ] ; 2 uses
  %i.pn = phi i8 [ 64, %.thread71 ], [ %.pr, %bb.n ] ; 3 uses
  %i.po = zext nneg i64 %i.pk to i128
  %i.pp = zext nneg i8 %i.pn to i128
  %i.pq = shl nuw nsw i128 %i.po, %i.pp
  %i.pr = or i128 %i.pq, %i.pj                    ; 5 uses
  store i128 %i.pr, ptr %1, align 16, !alias.scope !16443
  %i.ps = add nuw i8 %i.pn, 64                    ; 2 uses
  store i8 %i.ps, ptr %i.c, align 16, !alias.scope !16443
  br i1 %i.pl, label %bb.o, label %bb.r

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread70
  %i.pt = phi ptr [ %i.nm, %.thread70 ], [ %.pre138, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.pu = phi i64 [ %i.nu, %.thread70 ], [ %.pre136, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.pv = phi i128 [ %i.ny, %.thread70 ], [ %.pre134, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.pw = phi i64 [ %i.oc, %.thread70 ], [ %i.ph, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.px = phi i1 [ %i.ob, %.thread70 ], [ %i.pg, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.py = phi ptr [ %i.nz, %.thread70 ], [ %i.pe, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.pz = trunc i128 %i.pv to i64
  %i.qa = lshr i128 %i.pv, 64
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qc = xor i64 %i.pu, %i.pz
  %i.qd = load i64, ptr %i.pt, align 8, !noalias !16443, !noundef !3
  %i.qe = zext i64 %i.qc to i128
  %i.qf = zext i64 %i.qd to i128
  %i.qg = xor i128 %i.qa, %i.qf
  %i.qh = mul nuw i128 %i.qg, %i.qe               ; 2 uses
  %i.qi = lshr i128 %i.qh, 64
  %i.qj = xor i128 %i.qi, %i.qh
  %i.qk = trunc i128 %i.qj to i64
  store i64 %i.qk, ptr %i.qb, align 8, !alias.scope !16443
  %i.ql = zext nneg i64 %i.pw to i128             ; 3 uses
  store i128 %i.ql, ptr %1, align 16, !alias.scope !16443
  store i8 64, ptr %i.c, align 16, !alias.scope !16443
  br i1 %i.px, label %.thread73, label %.thread79

.thread79:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 710
  %i.qn = load i8, ptr %i.qm, align 2, !range !1779, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

.thread73:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val.i75 = load i8, ptr %i.qo, align 8, !range !1779, !alias.scope !16450, !noalias !16453, !noundef !3
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16455)
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val.i = load i8, ptr %i.qp, align 8, !range !1779, !alias.scope !16455, !noalias !16457, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16462), !noalias !16455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16465), !noalias !16455
  %.not101 = icmp eq i8 %i.pn, 0
  br i1 %.not101, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread73, %bb.o
  %i.qq = phi i128 [ %i.ql, %.thread73 ], [ %i.pr, %bb.o ]
  %.val.i77 = phi i8 [ %.val.i75, %.thread73 ], [ %.val.i, %bb.o ]
  %i.qr = phi ptr [ %i.py, %.thread73 ], [ %i.pm, %bb.o ]
  %i.qs = zext nneg i8 %.val.i77 to i128
  %i.qt = shl nuw nsw i128 %i.qs, 64
  %i.qu = or i128 %i.qq, %i.qt
  br label %_RINvXs18_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_19TriggerExecBodyTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.o
  %i.qv = trunc i128 %i.pr to i64
  %i.qw = lshr i128 %i.pr, 64
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !16468, !noalias !16455, !noundef !3
  %i.qz = xor i64 %i.qy, %i.qv
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rb = load ptr, ptr %i.ra, align 16, !alias.scope !16468, !noalias !16455, !nonnull !3, !align !311, !noundef !3
  %i.rc = load i64, ptr %i.rb, align 8, !noalias !16469, !noundef !3
  %i.rd = zext i64 %i.qz to i128
  %i.re = zext i64 %i.rc to i128
  %i.rf = xor i128 %i.qw, %i.re
  %i.rg = mul nuw i128 %i.rf, %i.rd               ; 2 uses
  %i.rh = lshr i128 %i.rg, 64
  %i.ri = xor i128 %i.rh, %i.rg
  %i.rj = trunc i128 %i.ri to i64
  store i64 %i.rj, ptr %i.qx, align 8, !alias.scope !16468, !noalias !16455
  %i.rk = zext nneg i8 %.val.i to i128
  br label %_RINvXs18_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_19TriggerExecBodyTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs18_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_19TriggerExecBodyTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.q
  %i.rl = phi ptr [ %i.pm, %bb.q ], [ %i.qr, %bb.p ]
  %.sink.i41 = phi i128 [ %i.rk, %bb.q ], [ %i.qu, %bb.p ]
  %storemerge.i.i.i42 = phi i8 [ 64, %bb.q ], [ -128, %bb.p ]
  store i128 %.sink.i41, ptr %1, align 16, !alias.scope !16468, !noalias !16455
  store i8 %storemerge.i.i.i42, ptr %i.c, align 16, !alias.scope !16468, !noalias !16455
  tail call fastcc void @_RINvXst8_NtCs4lawaffTVVK_9sqlparser3astNtB7_12FunctionDescNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !inline_history !16470
  %.pr78 = load i8, ptr %i.c, align 16, !alias.scope !16471
  %.pre139.pre = load i128, ptr %1, align 16, !alias.scope !16471
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %_RINvXs18_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_19TriggerExecBodyTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.pre139 = phi i128 [ %i.pr, %._crit_edge ], [ %.pre139.pre, %_RINvXs18_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_19TriggerExecBodyTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.rm = phi i8 [ %i.ps, %._crit_edge ], [ %.pr78, %_RINvXs18_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_19TriggerExecBodyTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 710
  %i.ro = load i8, ptr %i.rn, align 2, !range !1779, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16477)
  %i.rp = icmp ugt i8 %i.rm, 120
  br i1 %i.rp, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.r
  %i.rq = trunc i128 %.pre139 to i64
  %i.rr = lshr i128 %.pre139, 64
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 8, !alias.scope !16471, !noundef !3
  %i.ru = xor i64 %i.rt, %i.rq
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rw = load ptr, ptr %i.rv, align 16, !alias.scope !16471, !nonnull !3, !align !311, !noundef !3
  %i.rx = load i64, ptr %i.rw, align 8, !noalias !16471, !noundef !3
  %i.ry = zext i64 %i.ru to i128
  %i.rz = zext i64 %i.rx to i128
  %i.sa = xor i128 %i.rr, %i.rz
  %i.sb = mul nuw i128 %i.sa, %i.ry               ; 2 uses
  %i.sc = lshr i128 %i.sb, 64
  %i.sd = xor i128 %i.sc, %i.sb
  %i.se = trunc i128 %i.sd to i64
  store i64 %i.se, ptr %i.rs, align 8, !alias.scope !16471
  %i.sf = zext nneg i8 %i.ro to i128
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.sh = load i64, ptr %i.sg, align 8, !range !322, !noundef !3 ; 2 uses
  %i.si = icmp ne i64 %i.sh, -9223372036854775807
  br label %bb.s

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.r, %.thread79
  %i.sj = phi i128 [ %i.ql, %.thread79 ], [ %.pre139, %bb.r ]
  %i.sk = phi i8 [ %i.qn, %.thread79 ], [ %i.ro, %bb.r ]
  %i.sl = phi i8 [ 64, %.thread79 ], [ %i.rm, %bb.r ] ; 3 uses
  %i.sm = zext nneg i8 %i.sk to i128
  %i.sn = zext nneg i8 %i.sl to i128
  %i.so = shl nuw nsw i128 %i.sm, %i.sn
  %i.sp = or i128 %i.so, %i.sj                    ; 4 uses
  store i128 %i.sp, ptr %1, align 16, !alias.scope !16471
  %i.sq = add nuw i8 %i.sl, 8                     ; 2 uses
  store i8 %i.sq, ptr %i.c, align 16, !alias.scope !16471
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ss = load i64, ptr %i.sr, align 8, !range !322, !noundef !3 ; 3 uses
  %i.st = icmp ne i64 %i.ss, -9223372036854775807 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16481)
  %i.su = icmp samesign ugt i8 %i.sl, 56
  br i1 %i.su, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.sv = phi i128 [ %i.sf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.sp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.sw = phi i1 [ %i.si, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.st, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.sx = phi i64 [ %i.sh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.ss, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i981 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.sq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.sy = zext i1 %i.sw to i128
  %i.sz = zext nneg i8 %storemerge.i.i981 to i128
  %i.ta = shl nuw nsw i128 %i.sy, %i.sz
  %i.tb = or i128 %i.ta, %i.sv                    ; 4 uses
  store i128 %i.tb, ptr %1, align 16, !alias.scope !16484
  %i.tc = add nuw i8 %storemerge.i.i981, 64
  store i8 %i.tc, ptr %i.c, align 16, !alias.scope !16484
  br i1 %i.sw, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.s
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.te = load i8, ptr %i.td, align 8, !range !1802, !noundef !3 ; 2 uses
  %i.tf = icmp ne i8 %i.te, 3                     ; 2 uses
  %i.tg = zext i1 %i.tf to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.th = trunc i128 %i.sp to i64
  %i.ti = lshr i128 %i.sp, 64
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.tk = load i64, ptr %i.tj, align 8, !alias.scope !16484, !noundef !3
  %i.tl = xor i64 %i.tk, %i.th
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tn = load ptr, ptr %i.tm, align 16, !alias.scope !16484, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !noalias !16484, !noundef !3
  %i.tp = zext i64 %i.tl to i128
  %i.tq = zext i64 %i.to to i128
  %i.tr = xor i128 %i.ti, %i.tq
  %i.ts = mul nuw i128 %i.tr, %i.tp               ; 2 uses
  %i.tt = lshr i128 %i.ts, 64
  %i.tu = xor i128 %i.tt, %i.ts
  %i.tv = trunc i128 %i.tu to i64                 ; 2 uses
  store i64 %i.tv, ptr %i.tj, align 8, !alias.scope !16484
  %i.tw = zext i1 %i.st to i128
  store i128 %i.tw, ptr %1, align 16, !alias.scope !16484
  store i8 64, ptr %i.c, align 16, !alias.scope !16484
  br i1 %i.st, label %bb.t, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 8, !range !1802, !noundef !3 ; 2 uses
  %i.tz = icmp ne i8 %i.ty, 3                     ; 2 uses
  %i.ua = zext i1 %i.tz to i64
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

bb.t:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16488)
  %.not102 = icmp eq i64 %i.ss, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16493)
  %i.ub = select i1 %.not102, i128 1, i128 18446744073709551617
  store i128 %i.ub, ptr %1, align 16, !alias.scope !16496, !noalias !16485
  store i8 -128, ptr %i.c, align 16, !alias.scope !16496, !noalias !16485
  %i.uc = xor i64 %i.tv, 1
  %i.ud = load i64, ptr %i.tn, align 8, !noalias !3, !noundef !3
  %i.ue = zext i64 %i.uc to i128                  ; 2 uses
  %i.uf = zext i64 %i.ud to i128                  ; 2 uses
  br i1 %.not102, label %bb.x, label %bb.v

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.s
  %.not168 = icmp eq i64 %i.sx, -9223372036854775808
  %i.ug = trunc i128 %i.tb to i64
  %i.uh = lshr i128 %i.tb, 64
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.uj = load i64, ptr %i.ui, align 8, !alias.scope !16496, !noalias !16485, !noundef !3
  %i.uk = xor i64 %i.uj, %i.ug
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.um = load ptr, ptr %i.ul, align 16, !alias.scope !16496, !noalias !16485, !nonnull !3, !align !311, !noundef !3
  %i.un = load i64, ptr %i.um, align 8, !noalias !16497, !noundef !3
  %i.uo = zext i64 %i.uk to i128
  %i.up = zext i64 %i.un to i128
  %i.uq = xor i128 %i.uh, %i.up
  %i.ur = mul nuw i128 %i.uq, %i.uo               ; 2 uses
  %i.us = lshr i128 %i.ur, 64
  %i.ut = xor i128 %i.us, %i.ur
  %i.uu = trunc i128 %i.ut to i64
  store i64 %i.uu, ptr %i.ui, align 8, !alias.scope !16496, !noalias !16485
  br i1 %.not168, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16501)
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.uw = load ptr, ptr %i.uv, align 8, !alias.scope !16498, !noalias !16501, !nonnull !3, !noundef !3
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.uy = load i64, ptr %i.ux, align 8, !alias.scope !16498, !noalias !16501, !noundef !3 ; 2 uses
  %i.uz = zext i64 %i.uy to i128
  %i.va = shl nuw i128 %i.uz, 64
  %i.vb = or disjoint i128 %i.va, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46

bb.v:                                             ; preds = %bb.t
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !16503, !noalias !16505, !nonnull !3, !noundef !3
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.vf = load i64, ptr %i.ve, align 8, !alias.scope !16503, !noalias !16505, !noundef !3 ; 2 uses
  %i.vg = xor i128 %i.uf, 1
  %i.vh = mul nuw i128 %i.vg, %i.ue               ; 2 uses
  %i.vi = lshr i128 %i.vh, 64
  %i.vj = xor i128 %i.vi, %i.vh
  %i.vk = trunc i128 %i.vj to i64
  store i64 %i.vk, ptr %i.tj, align 8, !alias.scope !16507, !noalias !16498
  %i.vl = zext i64 %i.vf to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46: ; preds = %bb.v, %bb.u
  %i.vm = phi i64 [ %i.vf, %bb.v ], [ %i.uy, %bb.u ] ; 2 uses
  %i.vn = phi ptr [ %i.vd, %bb.v ], [ %i.uw, %bb.u ] ; 2 uses
  %.sink.i.i47 = phi i128 [ %i.vl, %bb.v ], [ %i.vb, %bb.u ]
  %storemerge.i.i.i.i48 = phi i8 [ 64, %bb.v ], [ -128, %bb.u ] ; 2 uses
  store i128 %.sink.i.i47, ptr %1, align 16, !alias.scope !16507, !noalias !16498
  store i8 %storemerge.i.i.i.i48, ptr %i.c, align 16, !alias.scope !16507, !noalias !16498
  %.idx122 = mul nuw nsw i64 %i.vm, 2688
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %.idx122
  %i.vp = icmp eq i64 %i.vm, 0
  br i1 %i.vp, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph118

.lr.ph118:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46, %.lr.ph118
  %.sroa.0.0.i.i49117 = phi ptr [ %i.vq, %.lr.ph118 ], [ %i.vn, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46 ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i49117, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i.i49117, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !16498, !inline_history !16514
  %i.vr = icmp eq ptr %i.vq, %i.vo
  br i1 %i.vr, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split, label %.lr.ph118

bb.w:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.vt = load ptr, ptr %i.vs, align 8, !alias.scope !16485, !noalias !16488, !nonnull !3, !noundef !3
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.vv = load i64, ptr %i.vu, align 8, !alias.scope !16485, !noalias !16488, !noundef !3 ; 2 uses
  %i.vw = zext i64 %i.vv to i128
  %i.vx = shl nuw i128 %i.vw, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45

bb.x:                                             ; preds = %bb.t
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.vz = load ptr, ptr %i.vy, align 8, !alias.scope !16485, !noalias !16488, !nonnull !3, !noundef !3
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.wb = load i64, ptr %i.wa, align 8, !alias.scope !16485, !noalias !16488, !noundef !3 ; 2 uses
  %i.wc = mul nuw i128 %i.uf, %i.ue               ; 2 uses
  %i.wd = lshr i128 %i.wc, 64
  %i.we = xor i128 %i.wd, %i.wc
  %i.wf = trunc i128 %i.we to i64
  store i64 %i.wf, ptr %i.tj, align 8, !alias.scope !16515, !noalias !16485
  %i.wg = zext i64 %i.wb to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %bb.w, %bb.x
  %i.wh = phi i64 [ %i.wb, %bb.x ], [ %i.vv, %bb.w ] ; 2 uses
  %i.wi = phi ptr [ %i.vz, %bb.x ], [ %i.vt, %bb.w ] ; 2 uses
  %.sink.i43 = phi i128 [ %i.wg, %bb.x ], [ %i.vx, %bb.w ]
  %storemerge.i.i.i44 = phi i8 [ 64, %bb.x ], [ -128, %bb.w ] ; 2 uses
  store i128 %.sink.i43, ptr %1, align 16, !alias.scope !16515, !noalias !16485
  store i8 %storemerge.i.i.i44, ptr %i.c, align 16, !alias.scope !16515, !noalias !16485
  %.idx121 = mul nuw nsw i64 %i.wh, 2688
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.idx121
  %i.wk = icmp eq i64 %i.wh, 0
  br i1 %i.wk, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph116

.lr.ph116:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45, %.lr.ph116
  %.sroa.0.0.i115 = phi ptr [ %i.wl, %.lr.ph116 ], [ %i.wi, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45 ] ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i115, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i115, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !16485, !inline_history !16522
  %i.wm = icmp eq ptr %i.wl, %i.wj
  br i1 %i.wm, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split, label %.lr.ph116

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split: ; preds = %.lr.ph118, %.lr.ph116
  %.pr91.pr = load i8, ptr %i.c, align 16, !alias.scope !16523
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46
  %.pr91 = phi i8 [ %.pr91.pr, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split ], [ %storemerge.i.i.i44, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45 ], [ %storemerge.i.i.i.i48, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i46 ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.wo = load i8, ptr %i.wn, align 8, !range !1802, !noundef !3 ; 3 uses
  %i.wp = icmp ne i8 %i.wo, 3                     ; 3 uses
  %i.wq = zext i1 %i.wp to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16529)
  %i.wr = icmp ugt i8 %.pr91, 64
  %.pre141 = load i128, ptr %1, align 16, !alias.scope !16523 ; 2 uses
  br i1 %i.wr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92
  %i.ws = phi i128 [ 0, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92 ], [ %.pre141, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.wt = phi i64 [ %i.ua, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92 ], [ %i.wq, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.wu = phi i1 [ %i.tz, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92 ], [ %i.wp, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.wv = phi i8 [ %i.ty, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92 ], [ %i.wo, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.ww = phi ptr [ %i.tx, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92 ], [ %i.wn, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 5 uses
  %i.wx = phi i8 [ 64, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread92 ], [ %.pr91, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.wy = zext nneg i64 %i.wt to i128
  %i.wz = zext nneg i8 %i.wx to i128
  %i.xa = shl nuw nsw i128 %i.wy, %i.wz
  %i.xb = or i128 %i.xa, %i.ws                    ; 4 uses
  store i128 %i.xb, ptr %1, align 16, !alias.scope !16523
  %i.xc = add nuw i8 %i.wx, 64
  store i8 %i.xc, ptr %i.c, align 16, !alias.scope !16523
  br i1 %i.wu, label %bb.y, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.xd = phi i128 [ %i.tb, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre141, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.xe = phi i64 [ %i.tg, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.wq, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.xf = phi i1 [ %i.tf, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.wp, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.xg = phi i8 [ %i.te, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.wo, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.xh = phi ptr [ %i.td, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.wn, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.xi = trunc i128 %i.xd to i64
  %i.xj = lshr i128 %i.xd, 64
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 8, !alias.scope !16523, !noundef !3
  %i.xm = xor i64 %i.xl, %i.xi
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xo = load ptr, ptr %i.xn, align 16, !alias.scope !16523, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  %i.xp = load i64, ptr %i.xo, align 8, !noalias !16523, !noundef !3
  %i.xq = zext i64 %i.xm to i128
  %i.xr = zext i64 %i.xp to i128
  %i.xs = xor i128 %i.xj, %i.xr
  %i.xt = mul nuw i128 %i.xs, %i.xq               ; 2 uses
  %i.xu = lshr i128 %i.xt, 64
  %i.xv = xor i128 %i.xu, %i.xt
  %i.xw = trunc i128 %i.xv to i64                 ; 3 uses
  store i64 %i.xw, ptr %i.xk, align 8, !alias.scope !16523
  %i.xx = zext nneg i64 %i.xe to i128             ; 2 uses
  store i128 %i.xx, ptr %1, align 16, !alias.scope !16523
  store i8 64, ptr %i.c, align 16, !alias.scope !16523
  br i1 %i.xf, label %.thread94, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread94:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %.not106 = icmp eq i8 %i.xg, 2                  ; 2 uses
  %i.xy = select i1 %.not106, i128 0, i128 18446744073709551616
  %i.xz = or disjoint i128 %i.xy, %i.xx           ; 2 uses
  br i1 %.not106, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge

bb.y:                                             ; preds = %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16533)
  %.not104 = icmp eq i8 %i.wv, 2                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16538)
  %.not103 = icmp eq i8 %i.wx, 0
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre149 = load i64, ptr %.phi.trans.insert148, align 8, !alias.scope !16533, !noalias !16530 ; 3 uses
  br i1 %.not103, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i: ; preds = %bb.y
  %i.ya = select i1 %.not104, i128 0, i128 18446744073709551616
  %i.yb = or i128 %i.xb, %i.ya                    ; 2 uses
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre151 = load ptr, ptr %.phi.trans.insert150, align 16, !alias.scope !16533, !noalias !16530 ; 2 uses
  br i1 %.not104, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i: ; preds = %bb.y
  %i.yc = trunc i128 %i.xb to i64
  %i.yd = lshr i128 %i.xb, 64
  %i.ye = xor i64 %.pre149, %i.yc
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yg = load ptr, ptr %i.yf, align 16, !alias.scope !16541, !noalias !16530, !nonnull !3, !align !311, !noundef !3 ; 4 uses
  %i.yh = load i64, ptr %i.yg, align 8, !noalias !16542, !noundef !3
  %i.yi = zext i64 %i.ye to i128
  %i.yj = zext i64 %i.yh to i128
  %i.yk = xor i128 %i.yd, %i.yj
  %i.yl = mul nuw i128 %i.yk, %i.yi               ; 2 uses
  %i.ym = lshr i128 %i.yl, 64
  %i.yn = xor i128 %i.ym, %i.yl
  %i.yo = trunc i128 %i.yn to i64                 ; 4 uses
  store i64 %i.yo, ptr %.phi.trans.insert148, align 8, !alias.scope !16541, !noalias !16530
  br i1 %.not104, label %.thread14.i, label %.thread.i

.thread14.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.yq = load i8, ptr %i.yp, align 1, !range !2045, !alias.scope !16530, !noalias !16533, !noundef !3 ; 2 uses
  %.not105 = icmp eq i8 %i.yq, 2
  br i1 %.not105, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i, label %bb.z

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.yr = zext nneg i8 %i.wv to i128
  %i.ys = shl nuw nsw i128 %i.yr, 64
  %i.yt = or disjoint i128 %i.ys, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %.thread94
  %i.yu = phi ptr [ %i.xo, %.thread94 ], [ %.pre151, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %i.yv = phi i64 [ %i.xw, %.thread94 ], [ %.pre149, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %i.yw = phi i128 [ %i.xz, %.thread94 ], [ %i.yb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 2 uses
  %i.yx = phi ptr [ %i.xh, %.thread94 ], [ %i.ww, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %i.yy = phi i8 [ %i.xg, %.thread94 ], [ %i.wv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16546)
  %i.yz = trunc i128 %i.yw to i64
  %i.za = lshr i128 %i.yw, 64
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zc = xor i64 %i.yv, %i.yz
  %i.zd = load i64, ptr %i.yu, align 8, !noalias !16549, !noundef !3
  %i.ze = zext i64 %i.zc to i128
  %i.zf = zext i64 %i.zd to i128
  %i.zg = xor i128 %i.za, %i.zf
  %i.zh = mul nuw i128 %i.zg, %i.ze               ; 2 uses
  %i.zi = lshr i128 %i.zh, 64
  %i.zj = xor i128 %i.zi, %i.zh
  %i.zk = trunc i128 %i.zj to i64                 ; 3 uses
  store i64 %i.zk, ptr %i.zb, align 8, !alias.scope !16550, !noalias !16530
  %i.zl = zext nneg i8 %i.yy to i128
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  %i.zn = load i8, ptr %i.zm, align 1, !range !2045, !alias.scope !16530, !noalias !16533, !noundef !3 ; 2 uses
  %.not108 = icmp eq i8 %i.zn, 2                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16554)
  %i.zo = select i1 %.not108, i128 0, i128 256
  %i.zp = or disjoint i128 %i.zo, %i.zl           ; 2 uses
  br i1 %.not108, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i, label %bb.z

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i: ; preds = %.thread14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge
  %.pre29.i = phi ptr [ %i.yg, %.thread14.i ], [ %i.yu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %.pre.i = phi i64 [ %i.yo, %.thread14.i ], [ %i.zk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.zq = phi i128 [ 0, %.thread14.i ], [ %i.zp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.zr = phi ptr [ %i.ww, %.thread14.i ], [ %i.yx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %.pre30.i = load i64, ptr %.pre29.i, align 8, !noalias !16557
  %.pre31.i = zext i64 %.pre30.i to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %.thread.i, %.thread94
  %i.zs = phi ptr [ %i.xo, %.thread94 ], [ %i.yg, %.thread.i ], [ %.pre151, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %i.zt = phi i64 [ %i.xw, %.thread94 ], [ %i.yo, %.thread.i ], [ %.pre149, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %.ph = phi ptr [ %i.xh, %.thread94 ], [ %i.ww, %.thread.i ], [ %i.ww, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %.ph98 = phi i128 [ %i.xz, %.thread94 ], [ %i.yt, %.thread.i ], [ %i.yb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  %i.zv = load i8, ptr %i.zu, align 1, !range !2045, !alias.scope !16530, !noalias !16533, !noundef !3 ; 2 uses
  %.not107 = icmp eq i8 %i.zv, 2
  %i.zw = trunc i128 %.ph98 to i64
  %i.zx = lshr i128 %.ph98, 64
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zz = xor i64 %i.zt, %i.zw
  %i.aaa = load i64, ptr %i.zs, align 8, !noalias !16562, !noundef !3 ; 2 uses
  %i.aab = zext i64 %i.zz to i128
  %i.aac = zext i64 %i.aaa to i128                ; 2 uses
  %i.aad = xor i128 %i.zx, %i.aac
  %i.aae = mul nuw i128 %i.aad, %i.aab            ; 2 uses
  %i.aaf = lshr i128 %i.aae, 64
  %i.aag = xor i128 %i.aaf, %i.aae
  %i.aah = trunc i128 %i.aag to i64               ; 3 uses
  store i64 %i.aah, ptr %i.zy, align 8, !alias.scope !16563, !noalias !16530
  br i1 %.not107, label %.thread19.i, label %.thread20.i

.thread20.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16567)
  %i.aai = zext nneg i8 %i.zv to i128
  %i.aaj = shl nuw nsw i128 %i.aai, 64
  %i.aak = or disjoint i128 %i.aaj, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29

bb.z:                                             ; preds = %.thread14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge
  %i.aal = phi ptr [ %i.yg, %.thread14.i ], [ %i.yu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aam = phi i64 [ %i.yo, %.thread14.i ], [ %i.zk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aan = phi i128 [ 18446744073709551616, %.thread14.i ], [ %i.zp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ] ; 2 uses
  %i.aao = phi i8 [ %i.yq, %.thread14.i ], [ %i.zn, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aap = phi ptr [ %i.ww, %.thread14.i ], [ %i.yx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aaq = trunc i128 %i.aan to i64
  %i.aar = lshr i128 %i.aan, 64
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aat = xor i64 %i.aam, %i.aaq
  %i.aau = load i64, ptr %i.aal, align 8, !noalias !16570, !noundef !3 ; 2 uses
  %i.aav = zext i64 %i.aat to i128
  %i.aaw = zext i64 %i.aau to i128
  %i.aax = xor i128 %i.aar, %i.aaw
  %i.aay = mul nuw i128 %i.aax, %i.aav            ; 2 uses
  %i.aaz = lshr i128 %i.aay, 64
  %i.aba = xor i128 %i.aaz, %i.aay
  %i.abb = trunc i128 %i.aba to i64               ; 2 uses
  store i64 %i.abb, ptr %i.aas, align 8, !alias.scope !16571, !noalias !16530
  %i.abc = zext nneg i8 %i.aao to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16573)
  br label %.thread19.i

.thread19.i:                                      ; preds = %bb.z, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.abd = phi ptr [ %.ph, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aap, %bb.z ]
  %i.abe = phi i64 [ %i.aaa, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aau, %bb.z ]
  %i.abf = phi i64 [ %i.aah, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.abb, %bb.z ]
  %i.abg = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.abc, %bb.z ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.abd, i64 2
  %i.abh = load i8, ptr %.in.i, align 1, !range !2045, !alias.scope !16530, !noalias !16533, !noundef !3 ; 2 uses
  %.not.i = icmp eq i8 %i.abh, 2                  ; 2 uses
  %i.abi = select i1 %.not.i, i128 0, i128 18446744073709551616
  %i.abj = or disjoint i128 %i.abi, %i.abg
  store i128 %i.abj, ptr %1, align 16, !alias.scope !16574, !noalias !16530
  store i8 -128, ptr %i.c, align 16, !alias.scope !16574, !noalias !16530
  br i1 %.not.i, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ab

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29: ; preds = %.thread20.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i
  %i.abk = phi ptr [ %i.zr, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %.ph, %.thread20.i ]
  %.pre-phi.i = phi i128 [ %.pre31.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.aac, %.thread20.i ]
  %i.abl = phi i64 [ %.pre.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.aah, %.thread20.i ]
  %i.abm = phi i128 [ %i.zq, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.aak, %.thread20.i ] ; 2 uses
  %.in27.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 2
  %i.abn = load i8, ptr %.in27.i, align 1, !range !2045, !alias.scope !16530, !noalias !16533, !noundef !3 ; 2 uses
  %i.abo = icmp ne i8 %i.abn, 2                   ; 2 uses
  %i.abp = trunc i128 %i.abm to i64
  %i.abq = lshr i128 %i.abm, 64
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abs = xor i64 %i.abl, %i.abp
  %i.abt = zext i64 %i.abs to i128
  %i.abu = xor i128 %i.abq, %.pre-phi.i
  %i.abv = mul nuw i128 %i.abu, %i.abt            ; 2 uses
  %i.abw = lshr i128 %i.abv, 64
  %i.abx = xor i128 %i.abw, %i.abv
  %i.aby = trunc i128 %i.abx to i64
  store i64 %i.aby, ptr %i.abr, align 8, !alias.scope !16574, !noalias !16530
  %i.abz = zext i1 %i.abo to i128
  store i128 %i.abz, ptr %1, align 16, !alias.scope !16574, !noalias !16530
  store i8 64, ptr %i.c, align 16, !alias.scope !16574, !noalias !16530
  br i1 %i.abo, label %bb.aa, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.aa:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29
  %i.aca = zext nneg i8 %i.abn to i128
  %i.acb = shl nuw nsw i128 %i.aca, 64
  %i.acc = or disjoint i128 %i.acb, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

bb.ab:                                            ; preds = %.thread19.i
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ace = zext i64 %i.abf to i128
  %i.acf = xor i128 %i.abg, %i.ace
  %i.acg = xor i64 %i.abe, 1
  %i.ach = zext i64 %i.acg to i128
  %i.aci = mul nuw i128 %i.acf, %i.ach            ; 2 uses
  %i.acj = lshr i128 %i.aci, 64
  %i.ack = xor i128 %i.acj, %i.aci
  %i.acl = trunc i128 %i.ack to i64
  store i64 %i.acl, ptr %i.acd, align 8, !alias.scope !16575, !noalias !16530
  %i.acm = zext nneg i8 %i.abh to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i: ; preds = %bb.ab, %bb.aa
  %storemerge.i = phi i128 [ %i.acm, %bb.ab ], [ %i.acc, %bb.aa ]
  %storemerge.i.i7.i = phi i8 [ 8, %bb.ab ], [ 72, %bb.aa ]
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !16575, !noalias !16530
  store i8 %storemerge.i.i7.i, ptr %i.c, align 16, !alias.scope !16575, !noalias !16530
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29, %.thread19.i, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ag = load i8, ptr %i.af, align 8, !range !1779, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16580
  store i8 %i.ag, ptr %i.ae, align 1, !noalias !16580
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !16580
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.ai = load i8, ptr %i.ah, align 1, !range !1779, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16583
  store i8 %i.ai, ptr %i.ad, align 1, !noalias !16583
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16583
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 706
  %i.ak = load i8, ptr %i.aj, align 2, !range !1779, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16586
  store i8 %i.ak, ptr %i.ac, align 1, !noalias !16586
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16589)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !16589, !noalias !16592, !nonnull !3, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !16589, !noalias !16592, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16594
  store i64 %i.ao, ptr %i.j, align 8, !noalias !16594
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #57, !noalias !16589, !inline_history !7893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16594
  %.idx = mul nuw nsw i64 %i.ao, 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.0.i.i11 = phi ptr [ %i.ar, %.lr.ph ], [ %i.am, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i11, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57, !noalias !16589, !inline_history !7894
  %i.as = icmp eq ptr %i.ar, %i.ap
  br i1 %i.as, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 711
  %.val = load i8, ptr %i.at, align 1, !range !1802, !noundef !3
  %i.au = zext nneg i8 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16599
  store i64 %i.au, ptr %i.ab, align 8, !noalias !16599
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16599
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 707
  %i.aw = load i8, ptr %i.av, align 1, !range !1779, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16606
  store i8 %i.aw, ptr %i.aa, align 1, !noalias !16606
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16606
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ba = load i64, ptr %i.az, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16609
  store i64 %i.ba, ptr %i.z, align 8, !noalias !16609
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16609
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16614)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !16614, !noalias !16617, !nonnull !3, !noundef !3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !16614, !noalias !16617, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16619
  store i64 %i.be, ptr %i.i, align 8, !noalias !16619
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #57, !noalias !16614, !inline_history !7893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16619
  %.idx24 = mul nuw nsw i64 %i.be, 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx24
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit3, label %.lr.ph13

.lr.ph13:                                         ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph13
  %.sroa.0.0.i.i212 = phi ptr [ %i.bh, %.lr.ph13 ], [ %i.bc, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i212, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i212, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57, !noalias !16614, !inline_history !7894
  %i.bi = icmp eq ptr %i.bh, %i.bf
  br i1 %i.bi, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit3, label %.lr.ph13

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit3: ; preds = %.lr.ph13, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bk = load i64, ptr %i.bj, align 8, !range !4, !noundef !3
  %i.bl = icmp ne i64 %i.bk, -9223372036854775808 ; 2 uses
  %i.bm = zext i1 %i.bl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16624
  store i64 %i.bm, ptr %i.y, align 8, !noalias !16624
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16624
  br i1 %i.bl, label %bb.b, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit5

bb.b:                                             ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16629)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !16629, !noalias !16632, !nonnull !3, !noundef !3 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !16629, !noalias !16632, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16634
  store i64 %i.bq, ptr %i.h, align 8, !noalias !16634
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #57, !noalias !16629, !inline_history !7893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16634
  %.idx25 = mul nuw nsw i64 %i.bq, 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx25
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit5, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.b, %.lr.ph15
  %.sroa.0.0.i.i414 = phi ptr [ %i.bt, %.lr.ph15 ], [ %i.bo, %bb.b ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i414, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i414, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57, !noalias !16629, !inline_history !7894
  %i.bu = icmp eq ptr %i.bt, %i.br
  br i1 %i.bu, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit5, label %.lr.ph15

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %.lr.ph15, %bb.b, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit3
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.by = load i64, ptr %i.bx, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16639
  store i64 %i.by, ptr %i.x, align 8, !noalias !16639
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16639
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bw, i64 noundef %i.by, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 708
  %.val1 = load i8, ptr %i.bz, align 4, !range !1779, !noundef !3
  %i.ca = zext nneg i8 %.val1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16644
  store i64 %i.ca, ptr %i.w, align 8, !noalias !16644
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16644
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 709
  %i.cc = load i8, ptr %i.cb, align 1, !range !1779, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !16651
  store i8 %i.cc, ptr %i.v, align 1, !noalias !16651
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16651
end_hunk_7
begin_hunk_8_@_RINvXs9U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11DropTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.ab, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2, label %.lr.ph5

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %.lr.ph5, %bb.b, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.ad = load i8, ptr %i.ac, align 1, !range !1021, !noundef !3 ; 2 uses
  %i.ae = icmp ne i8 %i.ad, 5                     ; 2 uses
  %i.af = zext i1 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17139
  store i64 %i.af, ptr %i.d, align 8, !noalias !17139
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17139
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2
  %i.ag = zext nneg i8 %i.ad to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17144
  store i64 %i.ag, ptr %i.c, align 8, !noalias !17144
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17144
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11DropTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB11_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !1779, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17151)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !17151, !noalias !17154, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !17151, !noalias !17154, !noundef !3 ; 3 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.f), !noalias !17151, !inline_history !10524
  %.idx = mul nuw nsw i64 %i.f, 88
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.0.i.i3 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i3, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBY_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i3, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #57, !noalias !17151, !inline_history !10525
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !range !4, !noundef !3
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = zext i1 %i.m to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.n)
  br i1 %i.m, label %bb.b, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit2

bb.b:                                             ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17156)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !17156, !noalias !17159, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !17156, !noalias !17159, !noundef !3 ; 3 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.r), !noalias !17156, !inline_history !10524
  %.idx6 = mul nuw nsw i64 %i.r, 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx6
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit2, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %.lr.ph5
  %.sroa.0.0.i.i14 = phi ptr [ %i.u, %.lr.ph5 ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i14, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBY_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i14, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #57, !noalias !17156, !inline_history !10525
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit2, label %.lr.ph5

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %.lr.ph5, %bb.b, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.x = load i8, ptr %i.w, align 1, !range !1021, !noundef !3 ; 2 uses
  %i.y = icmp ne i8 %i.x, 5                       ; 2 uses
  %i.z = zext i1 %i.y to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.z)
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit2
  %i.aa = zext nneg i8 %i.x to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aa)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1v_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !390, !noundef !3
  %i.b = icmp ne i64 %i.a, 69                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17164)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !17167, !noundef !3 ; 3 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !17167, !noundef !3
  %i.j = or i128 %i.i, %i.h
  %i.k = add nuw i8 %i.d, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.c:                                             ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !17167, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17167, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !17167, !nonnull !3, !align !311, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !17167, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !17167
  %i.ab = zext i1 %i.b to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.ab, %bb.c ], [ %i.j, %bb.b ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  store i128 %.sink, ptr %1, align 16, !alias.scope !17167
  store i8 %storemerge.i.i1, ptr %i.c, align 16, !alias.scope !17167
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr = load i8, ptr %i.c, align 16, !alias.scope !17168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ac = phi i8 [ %.pr, %bb.d ], [ %storemerge.i.i1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ae = load i8, ptr %i.ad, align 8, !range !446, !noundef !3
  %i.af = icmp ne i8 %i.ae, 103                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17174)
  %i.ag = icmp ugt i8 %i.ac, 64
  br i1 %i.ag, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.e
  %i.ah = load i128, ptr %1, align 16, !alias.scope !17168, !noundef !3 ; 2 uses
  %i.ai = trunc i128 %i.ah to i64
  %i.aj = lshr i128 %i.ah, 64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !17168, !noundef !3
  %i.am = xor i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 16, !alias.scope !17168, !nonnull !3, !align !311, !noundef !3
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !17168, !noundef !3
  %i.aq = zext i64 %i.am to i128
  %i.ar = zext i64 %i.ap to i128
  %i.as = xor i128 %i.aj, %i.ar
  %i.at = mul nuw i128 %i.as, %i.aq               ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = xor i128 %i.au, %i.at
  %i.aw = trunc i128 %i.av to i64
  store i64 %i.aw, ptr %i.ak, align 8, !alias.scope !17168
  %i.ax = zext i1 %i.af to i128
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.az = load i64, ptr %i.ay, align 8, !range !4, !alias.scope !17175, !noalias !17178, !noundef !3
  %.not21.a = icmp eq i64 %i.az, -9223372036854775808 ; 2 uses
  %i.ba = select i1 %.not21.a, i128 0, i128 18446744073709551616
  %i.bb = or disjoint i128 %i.ba, %i.ax           ; 3 uses
  store i128 %i.bb, ptr %1, align 16, !alias.scope !17180, !noalias !17186
  store i8 -128, ptr %i.c, align 16, !alias.scope !17180, !noalias !17186
  %extract.t = zext i1 %i.af to i64
  %extract.t24 = zext i1 %i.af to i64
  br i1 %.not21.a, label %bb.i, label %bb.g

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.e
  %i.bc = zext i1 %i.af to i128
  %i.bd = zext nneg i8 %i.ac to i128
  %i.be = shl nuw nsw i128 %i.bc, %i.bd
  %i.bf = load i128, ptr %1, align 16, !alias.scope !17168, !noundef !3
  %i.bg = or i128 %i.bf, %i.be                    ; 6 uses
  %i.bh = add nuw i8 %i.ac, 64
  store i128 %i.bg, ptr %1, align 16, !alias.scope !17168
  store i8 %i.bh, ptr %i.c, align 16, !alias.scope !17168
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17188)
  %i.bj = load i64, ptr %i.bi, align 8, !range !4, !alias.scope !17186, !noalias !17188, !noundef !3
  %.not = icmp eq i64 %i.bj, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17190)
  %.not.a = icmp eq i8 %i.ac, 0
  br i1 %.not.a, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.bk = select i1 %.not, i128 0, i128 18446744073709551616
  %i.bl = or i128 %i.bg, %i.bk                    ; 3 uses
  store i128 %i.bl, ptr %1, align 16, !alias.scope !17180, !noalias !17186
  store i8 -128, ptr %i.c, align 16, !alias.scope !17180, !noalias !17186
  %extract.t22 = trunc i128 %i.bg to i64
  %extract.t25 = trunc i128 %i.bg to i64
  br i1 %.not, label %bb.i, label %bb.g

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.bm = trunc i128 %i.bg to i64
  %i.bn = lshr i128 %i.bg, 64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !17180, !noalias !17186, !noundef !3
  %i.bq = xor i64 %i.bp, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 16, !alias.scope !17180, !noalias !17186, !nonnull !3, !align !311, !noundef !3
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !17191, !noundef !3
  %i.bu = zext i64 %i.bq to i128
  %i.bv = zext i64 %i.bt to i128
  %i.bw = xor i128 %i.bn, %i.bv
  %i.bx = mul nuw i128 %i.bw, %i.bu               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  store i64 %i.ca, ptr %i.bo, align 8, !alias.scope !17180, !noalias !17186
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !17192, !noalias !17195, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !17192, !noalias !17195, !noundef !3 ; 2 uses
  %i.cf = zext i64 %i.ce to i128
  %i.cg = shl nuw i128 %i.cf, 64
  %i.ch = or disjoint i128 %i.cg, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.g:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.ci = phi i128 [ %i.bb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %i.bl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %.off023 = phi i64 [ %extract.t24, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %extract.t25, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17199)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !17197, !noalias !17199, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !17197, !noalias !17199, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17207)
  %i.cn = lshr i128 %i.ci, 64
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !17210, !noalias !17197, !noundef !3
  %i.cq = xor i64 %i.cp, %.off023
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load ptr, ptr %i.cr, align 16, !alias.scope !17210, !noalias !17197, !nonnull !3, !align !311, !noundef !3
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !17211, !noundef !3
  %i.cu = zext i64 %i.cq to i128
  %i.cv = zext i64 %i.ct to i128
  %i.cw = xor i128 %i.cn, %i.cv
  %i.cx = mul nuw i128 %i.cw, %i.cu               ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = xor i128 %i.cy, %i.cx
  %i.da = trunc i128 %i.cz to i64
  store i64 %i.da, ptr %i.co, align 8, !alias.scope !17210, !noalias !17197
  %i.db = zext i64 %i.cm to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g, %bb.f
  %i.dc = phi i64 [ %i.cm, %bb.g ], [ %i.ce, %bb.f ] ; 2 uses
  %i.dd = phi ptr [ %i.ck, %bb.g ], [ %i.cc, %bb.f ] ; 2 uses
  %.sink.i.i = phi i128 [ %i.db, %bb.g ], [ %i.ch, %bb.f ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.g ], [ -128, %bb.f ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !17210, !noalias !17197
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !17210, !noalias !17197
  %.idx15 = mul nuw nsw i64 %i.dc, 2688
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx15
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph14

.lr.ph14:                                         ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph14
  %.sroa.0.0.i.i13 = phi ptr [ %i.dg, %.lr.ph14 ], [ %i.dd, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i13, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i.i13, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !17197, !inline_history !16514
  %i.dh = icmp eq ptr %i.dg, %i.de
  br i1 %i.dh, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph14

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !17186, !noalias !17188, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !17186, !noalias !17188, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17215), !noalias !17186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17218), !noalias !17186
  %i.dm = zext i64 %i.dl to i128
  %i.dn = shl nuw i128 %i.dm, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.do = phi i128 [ %i.bb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %i.bl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %.off0 = phi i64 [ %extract.t, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %extract.t22, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !17186, !noalias !17188, !nonnull !3, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !17186, !noalias !17188, !noundef !3 ; 2 uses
  %i.dt = lshr i128 %i.do, 64
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !17221, !noalias !17186, !noundef !3
  %i.dw = xor i64 %i.dv, %.off0
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16, !alias.scope !17221, !noalias !17186, !nonnull !3, !align !311, !noundef !3
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !17222, !noundef !3
  %i.ea = zext i64 %i.dw to i128
  %i.eb = zext i64 %i.dz to i128
  %i.ec = xor i128 %i.dt, %i.eb
  %i.ed = mul nuw i128 %i.ec, %i.ea               ; 2 uses
  %i.ee = lshr i128 %i.ed, 64
  %i.ef = xor i128 %i.ee, %i.ed
  %i.eg = trunc i128 %i.ef to i64
  store i64 %i.eg, ptr %i.du, align 8, !alias.scope !17221, !noalias !17186
  %i.eh = zext i64 %i.ds to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.i
  %i.ei = phi i64 [ %i.ds, %bb.i ], [ %i.dl, %bb.h ] ; 2 uses
  %i.ej = phi ptr [ %i.dq, %bb.i ], [ %i.dj, %bb.h ] ; 2 uses
  %.sink.i = phi i128 [ %i.eh, %bb.i ], [ %i.dn, %bb.h ]
  %storemerge.i.i.i3 = phi i8 [ 64, %bb.i ], [ -128, %bb.h ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !17221, !noalias !17186
  store i8 %storemerge.i.i.i3, ptr %i.c, align 16, !alias.scope !17221, !noalias !17186
  %.idx = mul nuw nsw i64 %i.ei, 2688
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx
  %i.el = icmp eq i64 %i.ei, 0
  br i1 %i.el, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph
  %.sroa.0.0.i12 = phi ptr [ %i.em, %.lr.ph ], [ %i.ej, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i12, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i12, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !17186, !inline_history !16522
  %i.en = icmp eq ptr %i.em, %i.ek
  br i1 %i.en, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph14, %.lr.ph, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !390, !noundef !3
  %i.g = icmp ne i64 %i.f, 69                     ; 2 uses
  %i.h = zext i1 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17223
  store i64 %i.h, ptr %i.e, align 8, !noalias !17223
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17223
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.j = load i8, ptr %i.i, align 8, !range !446, !noundef !3
  %i.k = icmp ne i8 %i.j, 103
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17228
  store i64 %i.l, ptr %i.d, align 8, !noalias !17228
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17228
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17233)
  %i.n = load i64, ptr %i.m, align 8, !range !4, !alias.scope !17233, !noalias !17236, !noundef !3
  %i.o = icmp ne i64 %i.n, -9223372036854775808   ; 2 uses
  %i.p = zext i1 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17238
  store i64 %i.p, ptr %i.a, align 8, !noalias !17238
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57, !noalias !17233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17238
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17243)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !17243, !noalias !17246, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !17243, !noalias !17246, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17248
  store i64 %i.t, ptr %i.b, align 8, !noalias !17248
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #57, !noalias !17243, !inline_history !16731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17248
  %.idx5 = mul nuw nsw i64 %i.t, 2688
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx5
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %.lr.ph4
  %.sroa.0.0.i.i3 = phi ptr [ %i.w, %.lr.ph4 ], [ %i.r, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i3, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i.i3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57, !noalias !17243, !inline_history !16732
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph4

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !17233, !noalias !17236, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !17233, !noalias !17236, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17253
  store i64 %i.ab, ptr %i.c, align 8, !noalias !17253
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #57, !noalias !17233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17253
  %.idx = mul nuw nsw i64 %i.ab, 2688
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.0.0.i2 = phi ptr [ %i.ae, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i2, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57, !noalias !17233, !inline_history !16740
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %.lr.ph4, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !390, !noundef !3
  %i.b = icmp ne i64 %i.a, 69                     ; 2 uses
  %i.c = zext i1 %i.b to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBN_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(16) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.e = load i8, ptr %i.d, align 8, !range !446, !noundef !3
  %i.f = icmp ne i8 %i.e, 103
  %i.g = zext i1 %i.f to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17258)
  %i.i = load i64, ptr %i.h, align 8, !range !4, !alias.scope !17258, !noalias !17261, !noundef !3
  %i.j = icmp ne i64 %i.i, -9223372036854775808   ; 2 uses
  %i.k = zext i1 %i.j to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.k), !noalias !17258, !inline_history !16808
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17263)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !17263, !noalias !17266, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !17263, !noalias !17266, !noundef !3 ; 3 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.o), !noalias !17263, !inline_history !16814
  %.idx5 = mul nuw nsw i64 %i.o, 2688
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx5
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %.lr.ph4
  %.sroa.0.0.i.i3 = phi ptr [ %i.r, %.lr.ph4 ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i3, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBS_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i.i3, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #57, !noalias !17263, !inline_history !16815
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph4

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !17258, !noalias !17261, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !17258, !noalias !17261, !noundef !3 ; 3 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.w), !noalias !17258, !inline_history !16808
  %.idx = mul nuw nsw i64 %i.w, 2688
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.0.0.i2 = phi ptr [ %i.z, %.lr.ph ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2, i64 2688 ; 2 uses
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBS_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.0.0.i2, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #57, !noalias !17258, !inline_history !16818
  %i.aa = icmp eq ptr %i.z, %i.x
  br i1 %i.aa, label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %.lr.ph4, %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs9X_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtB7_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB39_(ptr noalias noundef align 8 dereferenceable(704) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = tail call noundef zeroext i1 @_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3o_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.b, label %_RINvXsa7_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtB7_7visitor8VisitMut5visitINtB15_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1Y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB35_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3o_(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.c, label %_RINvXsa7_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtB7_7visitor8VisitMut5visitINtB15_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1Y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB35_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.e = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB40_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.e, label %_RINvXsa7_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtB7_7visitor8VisitMut5visitINtB15_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1Y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB35_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !4, !alias.scope !17268, !noalias !17271, !noundef !3
  %.not.i = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = tail call noundef zeroext i1 @_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3o_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
end_hunk_8
begin_hunk_9_@_RINvXsb3_NtCs4lawaffTVVK_9sqlparser3astNtB7_7DeclareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cm = load i8, ptr %i.cl, align 4, !range !1802, !noundef !3 ; 2 uses
  %i.cn = icmp ne i8 %i.cm, 3
  br label %bb.k

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.thread
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18940)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18945)
  %.not = icmp eq i8 %i.bk, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.cq = phi i128 [ 1, %.thread ], [ %i.bs, %bb.h ]
  %i.cr = phi ptr [ %i.co, %.thread ], [ %i.cp, %bb.h ]
  %i.cs = zext nneg i64 %i.bl to i128
  %i.ct = shl nuw nsw i128 %i.cs, 64
  %i.cu = or i128 %i.cq, %i.ct
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cv = trunc i128 %i.bs to i64
  %i.cw = lshr i128 %i.bs, 64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !18948, !noalias !18937, !noundef !3
  %i.cz = xor i64 %i.cy, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load ptr, ptr %i.da, align 16, !alias.scope !18948, !noalias !18937, !nonnull !3, !align !311, !noundef !3
  %i.dc = load i64, ptr %i.db, align 8, !noalias !18949, !noundef !3
  %i.dd = zext i64 %i.cz to i128
  %i.de = zext i64 %i.dc to i128
  %i.df = xor i128 %i.cw, %i.de
  %i.dg = mul nuw i128 %i.df, %i.dd               ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = xor i128 %i.dh, %i.dg
  %i.dj = trunc i128 %i.di to i64
  store i64 %i.dj, ptr %i.cx, align 8, !alias.scope !18948, !noalias !18937
  %i.dk = zext nneg i64 %i.bl to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.j, %bb.i
  %storemerge = phi i128 [ %i.dk, %bb.j ], [ %i.cu, %bb.i ]
  %i.dl = phi ptr [ %i.cp, %bb.j ], [ %i.cr, %bb.i ]
  %storemerge.i.i.i22 = phi i8 [ 64, %bb.j ], [ -128, %bb.i ]
  store i128 %storemerge, ptr %1, align 16, !alias.scope !18948, !noalias !18937
  store i8 %storemerge.i.i.i22, ptr %i.e, align 16, !alias.scope !18948, !noalias !18937
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !18937, !noalias !18940, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dm, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !18937
  %.pr30 = load i8, ptr %i.e, align 16, !alias.scope !18950
  %.pre89.pre = load i128, ptr %1, align 16, !alias.scope !18950
  br label %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12
  %.pre89 = phi i128 [ %.pre89.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ], [ %i.bs, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ] ; 3 uses
  %i.dn = phi i8 [ %.pr30, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ], [ %i.bt, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dp = load i8, ptr %i.do, align 4, !range !1802, !noundef !3 ; 3 uses
  %i.dq = icmp ne i8 %i.dp, 3                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18956)
  %i.dr = icmp ugt i8 %i.dn, 64
  br i1 %i.dr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10, label %bb.k

bb.k:                                             ; preds = %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ds = phi i128 [ 0, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre89, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dt = phi i1 [ %i.cn, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.dq, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.du = phi i8 [ %i.cm, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.dp, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.dv = phi i8 [ 64, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.dn, %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.dw = zext i1 %i.dt to i128
  %i.dx = zext nneg i8 %i.dv to i128
  %i.dy = shl nuw nsw i128 %i.dw, %i.dx
  %i.dz = or i128 %i.dy, %i.ds                    ; 5 uses
  store i128 %i.dz, ptr %1, align 16, !alias.scope !18950
  %i.ea = add nuw i8 %i.dv, 64                    ; 2 uses
  store i8 %i.ea, ptr %i.e, align 16, !alias.scope !18950
  br i1 %i.dt, label %bb.l, label %bb.n

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10: ; preds = %_RINvXsaJ_NtCs4lawaffTVVK_9sqlparser3astNtB7_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.eb = trunc i128 %.pre89 to i64
  %i.ec = lshr i128 %.pre89, 64
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !18950, !noundef !3
  %i.ef = xor i64 %i.ee, %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load ptr, ptr %i.eg, align 16, !alias.scope !18950, !nonnull !3, !align !311, !noundef !3
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !18950, !noundef !3
  %i.ej = zext i64 %i.ef to i128
  %i.ek = zext i64 %i.ei to i128
  %i.el = xor i128 %i.ec, %i.ek
  %i.em = mul nuw i128 %i.el, %i.ej               ; 2 uses
  %i.en = lshr i128 %i.em, 64
  %i.eo = xor i128 %i.en, %i.em
  %i.ep = trunc i128 %i.eo to i64
  store i64 %i.ep, ptr %i.ed, align 8, !alias.scope !18950
  %i.eq = zext i1 %i.dq to i128                   ; 2 uses
  store i128 %i.eq, ptr %1, align 16, !alias.scope !18950
  store i8 64, ptr %i.e, align 16, !alias.scope !18950
  br i1 %i.dq, label %.thread32, label %.thread35

.thread35:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.es = load i8, ptr %i.er, align 8, !range !2045, !noundef !3 ; 2 uses
  %.not108 = icmp eq i8 %i.es, 2                  ; 2 uses
  %i.et = select i1 %.not108, i128 0, i128 18446744073709551616
  %i.eu = or disjoint i128 %i.et, %i.eq           ; 3 uses
  store i128 %i.eu, ptr %1, align 16, !alias.scope !18957
  store i8 -128, ptr %i.e, align 16, !alias.scope !18957
  br i1 %.not108, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge, label %bb.p

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18968)
  %.not67 = icmp eq i8 %i.dv, 0
  br i1 %.not67, label %.thread32, label %bb.m

.thread32:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10, %bb.l
  %i.ev = phi i128 [ %i.dz, %bb.l ], [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ]
  %i.ew = phi i8 [ %i.du, %bb.l ], [ %i.dp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ]
  %i.ex = zext nneg i8 %i.ew to i128
  %i.ey = shl nuw nsw i128 %i.ex, 64
  %i.ez = or i128 %i.ey, %i.ev
  br label %_RINvXsaT_NtCs4lawaffTVVK_9sqlparser3astNtB7_11DeclareTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.l
  %i.fa = trunc i128 %i.dz to i64
  %i.fb = lshr i128 %i.dz, 64
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !18971, !noundef !3
  %i.fe = xor i64 %i.fd, %i.fa
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load ptr, ptr %i.ff, align 16, !alias.scope !18971, !nonnull !3, !align !311, !noundef !3
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !18971, !noundef !3
  %i.fi = zext i64 %i.fe to i128
  %i.fj = zext i64 %i.fh to i128
  %i.fk = xor i128 %i.fb, %i.fj
  %i.fl = mul nuw i128 %i.fk, %i.fi               ; 2 uses
  %i.fm = lshr i128 %i.fl, 64
  %i.fn = xor i128 %i.fm, %i.fl
  %i.fo = trunc i128 %i.fn to i64
  store i64 %i.fo, ptr %i.fc, align 8, !alias.scope !18971
  %i.fp = zext nneg i8 %i.du to i128
  br label %_RINvXsaT_NtCs4lawaffTVVK_9sqlparser3astNtB7_11DeclareTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsaT_NtCs4lawaffTVVK_9sqlparser3astNtB7_11DeclareTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread32, %bb.m
  %.sink.i24 = phi i128 [ %i.fp, %bb.m ], [ %i.ez, %.thread32 ] ; 2 uses
  %storemerge.i.i.i25 = phi i8 [ 64, %bb.m ], [ -128, %.thread32 ] ; 2 uses
  store i128 %.sink.i24, ptr %1, align 16, !alias.scope !18971
  store i8 %storemerge.i.i.i25, ptr %i.e, align 16, !alias.scope !18971
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_RINvXsaT_NtCs4lawaffTVVK_9sqlparser3astNtB7_11DeclareTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.fq = phi i128 [ %i.dz, %bb.k ], [ %.sink.i24, %_RINvXsaT_NtCs4lawaffTVVK_9sqlparser3astNtB7_11DeclareTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.fr = phi i8 [ %i.ea, %bb.k ], [ %storemerge.i.i.i25, %_RINvXsaT_NtCs4lawaffTVVK_9sqlparser3astNtB7_11DeclareTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ft = load i8, ptr %i.fs, align 8, !range !2045, !noundef !3 ; 3 uses
  %i.fu = icmp ne i8 %i.ft, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18973)
  %i.fv = icmp ugt i8 %i.fr, 64
  br i1 %i.fv, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fw = select i1 %i.fu, i128 18446744073709551616, i128 0
  %i.fx = or i128 %i.fq, %i.fw                    ; 3 uses
  store i128 %i.fx, ptr %1, align 16, !alias.scope !18957
  store i8 -128, ptr %i.e, align 16, !alias.scope !18957
  %extract.t = trunc i128 %i.fq to i64
  br i1 %i.fu, label %bb.p, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge: ; preds = %.thread35, %bb.o
  %i.fy = phi i128 [ %i.eu, %.thread35 ], [ %i.fx, %bb.o ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre90 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !18974
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre92 = load ptr, ptr %.phi.trans.insert91, align 16, !alias.scope !18974
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %bb.n
  %i.fz = trunc i128 %i.fq to i64
  %i.ga = lshr i128 %i.fq, 64
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !18957, !noundef !3
  %i.gd = xor i64 %i.gc, %i.fz
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = load ptr, ptr %i.ge, align 16, !alias.scope !18957, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !18957, !noundef !3
  %i.gh = zext i64 %i.gd to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = xor i128 %i.ga, %i.gi
  %i.gk = mul nuw i128 %i.gj, %i.gh               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 3 uses
  store i64 %i.gn, ptr %i.gb, align 8, !alias.scope !18957
  %i.go = zext i1 %i.fu to i128
  store i128 %i.go, ptr %1, align 16, !alias.scope !18957
  store i8 64, ptr %i.e, align 16, !alias.scope !18957
  br i1 %i.fu, label %.thread41, label %.thread40

.thread41:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18982)
  %i.gp = zext nneg i8 %i.ft to i128
  %i.gq = shl nuw nsw i128 %i.gp, 64
  %i.gr = or disjoint i128 %i.gq, 1               ; 2 uses
  store i128 %i.gr, ptr %1, align 16, !alias.scope !18985
  store i8 72, ptr %i.e, align 16, !alias.scope !18985
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

bb.p:                                             ; preds = %.thread35, %bb.o
  %i.gs = phi i128 [ %i.eu, %.thread35 ], [ %i.fx, %bb.o ]
  %i.gt = phi i8 [ %i.es, %.thread35 ], [ %i.ft, %bb.o ]
  %.off0 = phi i64 [ 0, %.thread35 ], [ %extract.t, %bb.o ]
  %i.gu = lshr i128 %i.gs, 64
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !18985, !noundef !3
  %i.gx = xor i64 %i.gw, %.off0
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gz = load ptr, ptr %i.gy, align 16, !alias.scope !18985, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !18985, !noundef !3
  %i.hb = zext i64 %i.gx to i128
  %i.hc = zext i64 %i.ha to i128
  %i.hd = xor i128 %i.gu, %i.hc
  %i.he = mul nuw i128 %i.hd, %i.hb               ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = xor i128 %i.hf, %i.he
  %i.hh = trunc i128 %i.hg to i64                 ; 2 uses
  store i64 %i.hh, ptr %i.gv, align 8, !alias.scope !18985
  %i.hi = zext nneg i8 %i.gt to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18987)
  br label %.thread40

.thread40:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, %bb.p
  %i.hj = phi ptr [ %i.gz, %bb.p ], [ %i.gf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ] ; 4 uses
  %i.hk = phi i64 [ %i.hh, %bb.p ], [ %i.gn, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ] ; 3 uses
  %i.hl = phi i128 [ %i.hi, %bb.p ], [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ]
  %i.hm = phi i1 [ false, %bb.p ], [ true, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ]
  %i.hn = phi i8 [ 8, %bb.p ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ho = load i8, ptr %.in, align 1, !range !2045, !noundef !3 ; 3 uses
  %i.hp = icmp ne i8 %i.ho, 2                     ; 2 uses
  %i.hq = zext i1 %i.hp to i128
  %i.hr = zext nneg i8 %i.hn to i128
  %i.hs = shl nuw nsw i128 %i.hq, %i.hr           ; 2 uses
  %i.ht = or disjoint i128 %i.hs, %i.hl           ; 4 uses
  store i128 %i.ht, ptr %1, align 16, !alias.scope !18974
  %i.hu = add nuw i8 %i.hn, 64                    ; 2 uses
  store i8 %i.hu, ptr %i.e, align 16, !alias.scope !18974
  br i1 %i.hp, label %bb.q, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge, %.thread41
  %i.hv = phi ptr [ %.pre92, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge ], [ %i.gf, %.thread41 ] ; 3 uses
  %i.hw = phi i64 [ %.pre90, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge ], [ %i.gn, %.thread41 ]
  %i.hx = phi i128 [ %i.fy, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge ], [ %i.gr, %.thread41 ] ; 2 uses
  %.in70 = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.hy = load i8, ptr %.in70, align 1, !range !2045, !noundef !3 ; 2 uses
  %i.hz = icmp ne i8 %i.hy, 2                     ; 2 uses
  %i.ia = trunc i128 %i.hx to i64
  %i.ib = lshr i128 %i.hx, 64
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.id = xor i64 %i.hw, %i.ia
  %i.ie = load i64, ptr %i.hv, align 8, !noalias !18974, !noundef !3
  %i.if = zext i64 %i.id to i128
  %i.ig = zext i64 %i.ie to i128
  %i.ih = xor i128 %i.ib, %i.ig
  %i.ii = mul nuw i128 %i.ih, %i.if               ; 2 uses
  %i.ij = lshr i128 %i.ii, 64
  %i.ik = xor i128 %i.ij, %i.ii
  %i.il = trunc i128 %i.ik to i64                 ; 3 uses
  store i64 %i.il, ptr %i.ic, align 8, !alias.scope !18974
  %i.im = zext i1 %i.hz to i128
  store i128 %i.im, ptr %1, align 16, !alias.scope !18974
  store i8 64, ptr %i.e, align 16, !alias.scope !18974
  br i1 %i.hz, label %.thread49, label %.thread48

bb.q:                                             ; preds = %.thread40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18991)
  br i1 %i.hm, label %bb.r, label %.thread49

.thread49:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %bb.q
  %i.in = phi ptr [ %i.hj, %bb.q ], [ %i.hv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  %i.io = phi i64 [ %i.hk, %bb.q ], [ %i.il, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  %i.ip = phi i128 [ %i.ht, %bb.q ], [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  %i.iq = phi i8 [ %i.ho, %bb.q ], [ %i.hy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  %storemerge.i.i54346 = phi i8 [ %i.hu, %bb.q ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ] ; 2 uses
  %i.ir = zext nneg i8 %i.iq to i128
  %i.is = zext nneg i8 %storemerge.i.i54346 to i128
  %i.it = shl nuw nsw i128 %i.ir, %i.is
  %i.iu = or i128 %i.it, %i.ip                    ; 2 uses
  store i128 %i.iu, ptr %1, align 16, !alias.scope !18994
  %i.iv = add nuw i8 %storemerge.i.i54346, 8
  store i8 %i.iv, ptr %i.e, align 16, !alias.scope !18994
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.r:                                             ; preds = %bb.q
  %i.iw = trunc i128 %i.ht to i64
  %i.ix = lshr i128 %i.hs, 64
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iz = xor i64 %i.hk, %i.iw
  %i.ja = load i64, ptr %i.hj, align 8, !noalias !18994, !noundef !3
  %i.jb = zext i64 %i.iz to i128
  %i.jc = zext i64 %i.ja to i128
  %i.jd = xor i128 %i.ix, %i.jc
  %i.je = mul nuw i128 %i.jd, %i.jb               ; 2 uses
  %i.jf = lshr i128 %i.je, 64
  %i.jg = xor i128 %i.jf, %i.je
  %i.jh = trunc i128 %i.jg to i64                 ; 2 uses
  store i64 %i.jh, ptr %i.iy, align 8, !alias.scope !18994
  %i.ji = zext nneg i8 %i.ho to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18998)
  br label %.thread48

.thread48:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %bb.r
  %i.jj = phi ptr [ %i.hj, %bb.r ], [ %i.hv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ] ; 4 uses
  %i.jk = phi i64 [ %i.jh, %bb.r ], [ %i.il, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ] ; 3 uses
  %i.jl = phi i128 [ %i.ji, %bb.r ], [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  %i.jm = phi i1 [ false, %bb.r ], [ true, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  %i.jn = phi i8 [ 8, %bb.r ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ] ; 2 uses
  %.in73 = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.jo = load i8, ptr %.in73, align 2, !range !2045, !noundef !3 ; 3 uses
  %i.jp = icmp ne i8 %i.jo, 2                     ; 2 uses
  %i.jq = zext i1 %i.jp to i128
  %i.jr = zext nneg i8 %i.jn to i128
  %i.js = shl nuw nsw i128 %i.jq, %i.jr           ; 2 uses
  %i.jt = or disjoint i128 %i.js, %i.jl           ; 4 uses
  store i128 %i.jt, ptr %1, align 16, !alias.scope !19001
  %i.ju = add nuw i8 %i.jn, 64                    ; 2 uses
  store i8 %i.ju, ptr %i.e, align 16, !alias.scope !19001
  br i1 %i.jp, label %bb.s, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %.thread40, %.thread49
  %i.jv = phi ptr [ %i.hj, %.thread40 ], [ %i.in, %.thread49 ] ; 3 uses
  %i.jw = phi i64 [ %i.hk, %.thread40 ], [ %i.io, %.thread49 ]
  %i.jx = phi i128 [ %i.ht, %.thread40 ], [ %i.iu, %.thread49 ] ; 2 uses
  %.in76 = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.jy = load i8, ptr %.in76, align 2, !range !2045, !noundef !3 ; 2 uses
  %i.jz = icmp ne i8 %i.jy, 2                     ; 2 uses
  %i.ka = trunc i128 %i.jx to i64
  %i.kb = lshr i128 %i.jx, 64
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kd = xor i64 %i.jw, %i.ka
  %i.ke = load i64, ptr %i.jv, align 8, !noalias !19001, !noundef !3
  %i.kf = zext i64 %i.kd to i128
  %i.kg = zext i64 %i.ke to i128
  %i.kh = xor i128 %i.kb, %i.kg
  %i.ki = mul nuw i128 %i.kh, %i.kf               ; 2 uses
  %i.kj = lshr i128 %i.ki, 64
  %i.kk = xor i128 %i.kj, %i.ki
  %i.kl = trunc i128 %i.kk to i64                 ; 3 uses
  store i64 %i.kl, ptr %i.kc, align 8, !alias.scope !19001
  %i.km = zext i1 %i.jz to i128
  store i128 %i.km, ptr %1, align 16, !alias.scope !19001
  store i8 64, ptr %i.e, align 16, !alias.scope !19001
  br i1 %i.jz, label %.thread57, label %.thread56

bb.s:                                             ; preds = %.thread48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19005)
  br i1 %i.jm, label %bb.t, label %.thread57

.thread57:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %bb.s
  %i.kn = phi ptr [ %i.jj, %bb.s ], [ %i.jv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.ko = phi i64 [ %i.jk, %bb.s ], [ %i.kl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.kp = phi i128 [ %i.jt, %bb.s ], [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.kq = phi i8 [ %i.jo, %bb.s ], [ %i.jy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %storemerge.i.i35154 = phi i8 [ %i.ju, %bb.s ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 2 uses
  %i.kr = zext nneg i8 %i.kq to i128
  %i.ks = zext nneg i8 %storemerge.i.i35154 to i128
  %i.kt = shl nuw nsw i128 %i.kr, %i.ks
  %i.ku = or i128 %i.kt, %i.kp                    ; 2 uses
  store i128 %i.ku, ptr %1, align 16, !alias.scope !19008
  %i.kv = add nuw i8 %storemerge.i.i35154, 8
  store i8 %i.kv, ptr %i.e, align 16, !alias.scope !19008
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.t:                                             ; preds = %bb.s
  %i.kw = trunc i128 %i.jt to i64
  %i.kx = lshr i128 %i.js, 64
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kz = xor i64 %i.jk, %i.kw
  %i.la = load i64, ptr %i.jj, align 8, !noalias !19008, !noundef !3
  %i.lb = zext i64 %i.kz to i128
  %i.lc = zext i64 %i.la to i128
  %i.ld = xor i128 %i.kx, %i.lc
  %i.le = mul nuw i128 %i.ld, %i.lb               ; 2 uses
  %i.lf = lshr i128 %i.le, 64
  %i.lg = xor i128 %i.lf, %i.le
  %i.lh = trunc i128 %i.lg to i64                 ; 2 uses
  store i64 %i.lh, ptr %i.ky, align 8, !alias.scope !19008
  %i.li = zext nneg i8 %i.jo to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19012)
  br label %.thread56

.thread56:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %bb.t
  %i.lj = phi ptr [ %i.jj, %bb.t ], [ %i.jv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 3 uses
  %i.lk = phi i64 [ %i.lh, %bb.t ], [ %i.kl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 3 uses
  %i.ll = phi i128 [ %i.li, %bb.t ], [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.lm = phi i1 [ false, %bb.t ], [ true, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.ln = phi i8 [ 8, %bb.t ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 2 uses
  %.in79 = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.lo = load i8, ptr %.in79, align 1, !range !2045, !noundef !3 ; 3 uses
end_hunk_9
begin_hunk_10_@_RINvXsbR_NtCs4lawaffTVVK_9sqlparser3astNtB7_3SetNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i128 %.sink.i.i50, ptr %1, align 16, !alias.scope !19298, !noalias !19283
  store i8 %storemerge.i.i.i.i51, ptr %i.f, align 16, !alias.scope !19298, !noalias !19283
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19303)
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !19300, !noalias !19303, !nonnull !3, !noundef !3
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !19300, !noalias !19303, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19311)
  br i1 %i.ft, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ld = zext i64 %i.lc to i128
  %i.le = zext nneg i8 %storemerge.i.i.i25 to i128
  %i.lf = shl nuw i128 %i.ld, %i.le
  %i.lg = or i128 %i.gn, %i.lf
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.lh = trunc i128 %i.gn to i64
  %i.li = lshr i128 %i.gn, 64
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !19314, !noalias !19300, !noundef !3
  %i.ll = xor i64 %i.lk, %i.lh
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ln = load ptr, ptr %i.lm, align 16, !alias.scope !19314, !noalias !19300, !nonnull !3, !align !311, !noundef !3
  %i.lo = load i64, ptr %i.ln, align 8, !noalias !19315, !noundef !3
  %i.lp = zext i64 %i.ll to i128
  %i.lq = zext i64 %i.lo to i128
  %i.lr = xor i128 %i.li, %i.lq
  %i.ls = mul nuw i128 %i.lr, %i.lp               ; 2 uses
  %i.lt = lshr i128 %i.ls, 64
  %i.lu = xor i128 %i.lt, %i.ls
  %i.lv = trunc i128 %i.lu to i64
  store i64 %i.lv, ptr %i.lj, align 8, !alias.scope !19314, !noalias !19300
  %i.lw = zext i64 %i.lc to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aj, %bb.ai
  %.sink.i.i = phi i128 [ %i.lw, %bb.aj ], [ %i.lg, %bb.ai ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.aj ], [ -128, %bb.ai ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !19314, !noalias !19300
  store i8 %storemerge.i.i.i.i, ptr %i.f, align 16, !alias.scope !19314, !noalias !19300
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.la, i64 noundef %i.lc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !19300
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ly = load i8, ptr %i.lx, align 8, !range !1779, !alias.scope !19300, !noalias !19303, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19319)
  %i.lz = load i8, ptr %i.f, align 16, !alias.scope !19322, !noalias !19300, !noundef !3 ; 3 uses
  %i.ma = icmp ugt i8 %i.lz, 64
  br i1 %i.ma, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.mb = zext nneg i8 %i.ly to i128
  %i.mc = zext nneg i8 %i.lz to i128
  %i.md = shl nuw nsw i128 %i.mb, %i.mc
  %i.me = load i128, ptr %1, align 16, !alias.scope !19322, !noalias !19300, !noundef !3
  %i.mf = or i128 %i.me, %i.md
  %i.mg = add nuw i8 %i.lz, 64
  br label %_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.mh = load i128, ptr %1, align 16, !alias.scope !19322, !noalias !19300, !noundef !3 ; 2 uses
  %i.mi = trunc i128 %i.mh to i64
  %i.mj = lshr i128 %i.mh, 64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !alias.scope !19322, !noalias !19300, !noundef !3
  %i.mm = xor i64 %i.ml, %i.mi
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mo = load ptr, ptr %i.mn, align 16, !alias.scope !19322, !noalias !19300, !nonnull !3, !align !311, !noundef !3
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !19323, !noundef !3
  %i.mq = zext i64 %i.mm to i128
  %i.mr = zext i64 %i.mp to i128
  %i.ms = xor i128 %i.mj, %i.mr
  %i.mt = mul nuw i128 %i.ms, %i.mq               ; 2 uses
  %i.mu = lshr i128 %i.mt, 64
  %i.mv = xor i128 %i.mu, %i.mt
  %i.mw = trunc i128 %i.mv to i64
  store i64 %i.mw, ptr %i.mk, align 8, !alias.scope !19322, !noalias !19300
  %i.mx = zext nneg i8 %i.ly to i128
  br label %_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ak, %bb.al
  %.sink.i47 = phi i128 [ %i.mx, %bb.al ], [ %i.mf, %bb.ak ]
  %storemerge.i.i.i48 = phi i8 [ 64, %bb.al ], [ %i.mg, %bb.ak ]
  store i128 %.sink.i47, ptr %1, align 16, !alias.scope !19322, !noalias !19300
  store i8 %storemerge.i.i.i48, ptr %i.f, align 16, !alias.scope !19322, !noalias !19300
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.am:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i8, ptr %i.my, align 8, !alias.scope !19224, !noalias !19227 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val1.i = load i8, ptr %i.mz, align 1, !range !1802, !alias.scope !19224, !noalias !19227, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19327), !noalias !19224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19330), !noalias !19224
  br i1 %i.ft, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.na = trunc i128 %i.gn to i64
  %i.nb = lshr i128 %i.gn, 64
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !19333, !noalias !19224, !noundef !3
  %i.ne = xor i64 %i.nd, %i.na
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ng = load ptr, ptr %i.nf, align 16, !alias.scope !19333, !noalias !19224, !nonnull !3, !align !311, !noundef !3
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !19334, !noundef !3
  %i.ni = zext i64 %i.ne to i128
  %i.nj = zext i64 %i.nh to i128
  %i.nk = xor i128 %i.nb, %i.nj
  %i.nl = mul nuw i128 %i.nk, %i.ni               ; 2 uses
  %i.nm = lshr i128 %i.nl, 64
  %i.nn = xor i128 %i.nm, %i.nl
  %i.no = trunc i128 %i.nn to i64
  store i64 %i.no, ptr %i.nc, align 8, !alias.scope !19333, !noalias !19224
  %i.np = zext nneg i8 %.val1.i to i128
  %i.nq = zext i8 %.val.i to i128
  %i.nr = shl nuw nsw i128 %i.nq, 64
  %i.ns = or disjoint i128 %i.nr, %i.np
  br label %_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %bb.am
  %i.nt = zext nneg i8 %.val1.i to i128
  %i.nu = zext nneg i8 %storemerge.i.i.i25 to i128
  %i.nv = shl nuw nsw i128 %i.nt, %i.nu
  %i.nw = or i128 %i.gn, %i.nv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19335), !noalias !19224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19338), !noalias !19224
  %i.nx = trunc i128 %i.gn to i64
  %i.ny = lshr i128 %i.nw, 64
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !19341, !noalias !19224, !noundef !3
  %i.ob = xor i64 %i.oa, %i.nx
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.od = load ptr, ptr %i.oc, align 16, !alias.scope !19341, !noalias !19224, !nonnull !3, !align !311, !noundef !3
  %i.oe = load i64, ptr %i.od, align 8, !noalias !19342, !noundef !3
  %i.of = zext i64 %i.ob to i128
  %i.og = zext i64 %i.oe to i128
  %i.oh = xor i128 %i.ny, %i.og
  %i.oi = mul nuw i128 %i.oh, %i.of               ; 2 uses
  %i.oj = lshr i128 %i.oi, 64
  %i.ok = xor i128 %i.oj, %i.oi
  %i.ol = trunc i128 %i.ok to i64
  store i64 %i.ol, ptr %i.nz, align 8, !alias.scope !19341, !noalias !19224
  %i.om = zext i8 %.val.i to i128
  br label %_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.an, %bb.ao
  %storemerge.i = phi i128 [ %i.om, %bb.ao ], [ %i.ns, %bb.an ]
  %storemerge.i.i.i45 = phi i8 [ 64, %bb.ao ], [ -128, %bb.an ]
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !19341, !noalias !19224
  store i8 %storemerge.i.i.i45, ptr %i.f, align 16, !alias.scope !19341, !noalias !19224
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.oo = load i8, ptr %i.on, align 8, !range !1802, !noundef !3 ; 3 uses
  %i.op = icmp ne i8 %i.oo, 3                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19346)
  %i.oq = icmp ugt i8 %storemerge.i.i9, 64
  br i1 %i.oq, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.ap
  %i.or = select i1 %i.op, i128 18446744073709551616, i128 0
  %i.os = or i128 %i.af, %i.or                    ; 3 uses
  store i128 %i.os, ptr %1, align 16, !alias.scope !19349
  store i8 -128, ptr %i.f, align 16, !alias.scope !19349
  br i1 %i.op, label %bb.be, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !19350
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre108 = load ptr, ptr %.phi.trans.insert107, align 16, !alias.scope !19350
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.ap
  %i.ot = trunc i128 %i.af to i64
  %i.ou = lshr i128 %i.af, 64
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !alias.scope !19349, !noundef !3
  %i.ox = xor i64 %i.ow, %i.ot
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oz = load ptr, ptr %i.oy, align 16, !alias.scope !19349, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !noalias !19349, !noundef !3
  %i.pb = zext i64 %i.ox to i128
  %i.pc = zext i64 %i.pa to i128
  %i.pd = xor i128 %i.ou, %i.pc
  %i.pe = mul nuw i128 %i.pd, %i.pb               ; 2 uses
  %i.pf = lshr i128 %i.pe, 64
  %i.pg = xor i128 %i.pf, %i.pe
  %i.ph = trunc i128 %i.pg to i64                 ; 2 uses
  store i64 %i.ph, ptr %i.ov, align 8, !alias.scope !19349
  %i.pi = zext i1 %i.op to i128
  store i128 %i.pi, ptr %1, align 16, !alias.scope !19349
  store i8 64, ptr %i.f, align 16, !alias.scope !19349
  br i1 %i.op, label %.thread79, label %.thread78

bb.aq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.pk = load i8, ptr %i.pj, align 8, !range !1779, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19358)
  %i.pl = icmp ugt i8 %storemerge.i.i9, 120
  br i1 %i.pl, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pm = zext nneg i8 %i.pk to i128
  %i.pn = zext nneg i8 %storemerge.i.i9 to i128
  %i.po = shl nuw nsw i128 %i.pm, %i.pn
  %i.pp = or i128 %i.af, %i.po
  %i.pq = add nuw i8 %storemerge.i.i9, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15

bb.as:                                            ; preds = %bb.aq
  %i.pr = trunc i128 %i.af to i64
  %i.ps = lshr i128 %i.af, 64
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8, !alias.scope !19361, !noundef !3
  %i.pv = xor i64 %i.pu, %i.pr
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.px = load ptr, ptr %i.pw, align 16, !alias.scope !19361, !nonnull !3, !align !311, !noundef !3
  %i.py = load i64, ptr %i.px, align 8, !noalias !19361, !noundef !3
  %i.pz = zext i64 %i.pv to i128
  %i.qa = zext i64 %i.py to i128
  %i.qb = xor i128 %i.ps, %i.qa
  %i.qc = mul nuw i128 %i.qb, %i.pz               ; 2 uses
  %i.qd = lshr i128 %i.qc, 64
  %i.qe = xor i128 %i.qd, %i.qc
  %i.qf = trunc i128 %i.qe to i64
  store i64 %i.qf, ptr %i.pt, align 8, !alias.scope !19361
  %i.qg = zext nneg i8 %i.pk to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15: ; preds = %bb.ar, %bb.as
  %.sink103 = phi i128 [ %i.qg, %bb.as ], [ %i.pp, %bb.ar ]
  %storemerge.i.i14 = phi i8 [ 8, %bb.as ], [ %i.pq, %bb.ar ]
  store i128 %.sink103, ptr %1, align 16, !alias.scope !19361
  store i8 %storemerge.i.i14, ptr %i.f, align 16, !alias.scope !19361
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.at:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qh, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qj = load i64, ptr %i.qi, align 8, !range !4, !noundef !3
  %i.qk = icmp ne i64 %i.qj, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19365)
  %i.ql = load i8, ptr %i.f, align 16, !alias.scope !19368, !noundef !3 ; 3 uses
  %i.qm = icmp ugt i8 %i.ql, 64
  br i1 %i.qm, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qn = zext i1 %i.qk to i128
  %i.qo = zext nneg i8 %i.ql to i128
  %i.qp = shl nuw nsw i128 %i.qn, %i.qo
  %i.qq = load i128, ptr %1, align 16, !alias.scope !19368, !noundef !3
  %i.qr = or i128 %i.qq, %i.qp
  %i.qs = add nuw i8 %i.ql, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.av:                                            ; preds = %bb.at
  %i.qt = load i128, ptr %1, align 16, !alias.scope !19368, !noundef !3 ; 2 uses
  %i.qu = trunc i128 %i.qt to i64
  %i.qv = lshr i128 %i.qt, 64
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !19368, !noundef !3
  %i.qy = xor i64 %i.qx, %i.qu
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ra = load ptr, ptr %i.qz, align 16, !alias.scope !19368, !nonnull !3, !align !311, !noundef !3
  %i.rb = load i64, ptr %i.ra, align 8, !noalias !19368, !noundef !3
  %i.rc = zext i64 %i.qy to i128
  %i.rd = zext i64 %i.rb to i128
  %i.re = xor i128 %i.qv, %i.rd
  %i.rf = mul nuw i128 %i.re, %i.rc               ; 2 uses
  %i.rg = lshr i128 %i.rf, 64
  %i.rh = xor i128 %i.rg, %i.rf
  %i.ri = trunc i128 %i.rh to i64
  store i64 %i.ri, ptr %i.qw, align 8, !alias.scope !19368
  %i.rj = zext i1 %i.qk to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.au, %bb.av
  %.sink104 = phi i128 [ %i.rj, %bb.av ], [ %i.qr, %bb.au ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.av ], [ %i.qs, %bb.au ] ; 4 uses
  store i128 %.sink104, ptr %1, align 16, !alias.scope !19368
  store i8 %storemerge.i.i3, ptr %i.f, align 16, !alias.scope !19368
  br i1 %i.qk, label %bb.bg, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.aw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !3, !noundef !3
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rn = load i64, ptr %i.rm, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19375)
  %i.ro = icmp ugt i8 %storemerge.i.i9, 64
  br i1 %i.ro, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rp = zext i64 %i.rn to i128
  %i.rq = shl nuw i128 %i.rp, 64
  %i.rr = or i128 %i.af, %i.rq
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28

bb.ay:                                            ; preds = %bb.aw
  %i.rs = trunc i128 %i.af to i64
  %i.rt = lshr i128 %i.af, 64
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 8, !alias.scope !19378, !noundef !3
  %i.rw = xor i64 %i.rv, %i.rs
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ry = load ptr, ptr %i.rx, align 16, !alias.scope !19378, !nonnull !3, !align !311, !noundef !3
  %i.rz = load i64, ptr %i.ry, align 8, !noalias !19378, !noundef !3
  %i.sa = zext i64 %i.rw to i128
  %i.sb = zext i64 %i.rz to i128
  %i.sc = xor i128 %i.rt, %i.sb
  %i.sd = mul nuw i128 %i.sc, %i.sa               ; 2 uses
  %i.se = lshr i128 %i.sd, 64
  %i.sf = xor i128 %i.se, %i.sd
  %i.sg = trunc i128 %i.sf to i64
  store i64 %i.sg, ptr %i.ru, align 8, !alias.scope !19378
  %i.sh = zext i64 %i.rn to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.ax, %bb.ay
  %.sink.i26 = phi i128 [ %i.sh, %bb.ay ], [ %i.rr, %bb.ax ]
  %storemerge.i.i.i27 = phi i8 [ 64, %bb.ay ], [ -128, %bb.ax ]
  store i128 %.sink.i26, ptr %1, align 16, !alias.scope !19378
  store i8 %storemerge.i.i.i27, ptr %i.f, align 16, !alias.scope !19378
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rl, i64 noundef %i.rn, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !range !437, !noundef !3
  %i.sk = icmp ne i64 %i.sj, -9223372036854775787 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19382)
  %i.sl = load i8, ptr %i.f, align 16, !alias.scope !19385, !noundef !3 ; 3 uses
  %i.sm = icmp ugt i8 %i.sl, 64
  br i1 %i.sm, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28
  %i.sn = zext i1 %i.sk to i128
  %i.so = zext nneg i8 %i.sl to i128
  %i.sp = shl nuw nsw i128 %i.sn, %i.so
  %i.sq = load i128, ptr %1, align 16, !alias.scope !19385, !noundef !3
  %i.sr = or i128 %i.sq, %i.sp
  %i.ss = add nuw i8 %i.sl, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.ba:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28
  %i.st = load i128, ptr %1, align 16, !alias.scope !19385, !noundef !3 ; 2 uses
  %i.su = trunc i128 %i.st to i64
  %i.sv = lshr i128 %i.st, 64
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !alias.scope !19385, !noundef !3
  %i.sy = xor i64 %i.sx, %i.su
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ta = load ptr, ptr %i.sz, align 16, !alias.scope !19385, !nonnull !3, !align !311, !noundef !3
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !19385, !noundef !3
  %i.tc = zext i64 %i.sy to i128
  %i.td = zext i64 %i.tb to i128
  %i.te = xor i128 %i.sv, %i.td
  %i.tf = mul nuw i128 %i.te, %i.tc               ; 2 uses
  %i.tg = lshr i128 %i.tf, 64
  %i.th = xor i128 %i.tg, %i.tf
  %i.ti = trunc i128 %i.th to i64
  store i64 %i.ti, ptr %i.sw, align 8, !alias.scope !19385
  %i.tj = zext i1 %i.sk to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.az, %bb.ba
  %.sink105 = phi i128 [ %i.tj, %bb.ba ], [ %i.sr, %bb.az ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.ba ], [ %i.ss, %bb.az ] ; 2 uses
  store i128 %.sink105, ptr %1, align 16, !alias.scope !19385
  store i8 %storemerge.i.i1, ptr %i.f, align 16, !alias.scope !19385
  br i1 %i.sk, label %bb.bo, label %bb.bp

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %.lr.ph92, %.lr.ph96, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit23, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit19, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit34, %.thread78, %_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.bf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  ret void

.thread68:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread
  %i.tk = zext nneg i8 %i.ah to i128
  %i.tl = shl nuw nsw i128 %i.tk, 64
  %i.tm = or disjoint i128 %i.tl, 1               ; 2 uses
  store i128 %i.tm, ptr %1, align 16, !alias.scope !19386
  store i8 -128, ptr %i.f, align 16, !alias.scope !19386
  br label %.thread66

bb.bb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19395)
  %i.tn = trunc i128 %i.af to i64
  %i.to = lshr i128 %i.ak, 64
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !19386, !noundef !3
  %i.tr = xor i64 %i.tq, %i.tn
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tt = load ptr, ptr %i.ts, align 16, !alias.scope !19386, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !noalias !19386, !noundef !3
  %i.tv = zext i64 %i.tr to i128
  %i.tw = zext i64 %i.tu to i128
  %i.tx = xor i128 %i.to, %i.tw
  %i.ty = mul nuw i128 %i.tx, %i.tv               ; 2 uses
  %i.tz = lshr i128 %i.ty, 64
  %i.ua = xor i128 %i.tz, %i.ty
  %i.ub = trunc i128 %i.ua to i64                 ; 2 uses
  store i64 %i.ub, ptr %i.tp, align 8, !alias.scope !19386
  %i.uc = zext nneg i8 %i.ah to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19397)
  br label %.thread67

.thread66:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread66_crit_edge, %.thread68
  %i.ud = phi ptr [ %.pre113, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread66_crit_edge ], [ %i.ar, %.thread68 ]
  %i.ue = phi i64 [ %.pre111, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread66_crit_edge ], [ %i.az, %.thread68 ]
  %i.uf = phi i128 [ %i.ak, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread66_crit_edge ], [ %i.tm, %.thread68 ] ; 2 uses
  %.in85 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ug = load i8, ptr %.in85, align 8, !range !1779, !noundef !3
  %i.uh = trunc i128 %i.uf to i64
  %i.ui = lshr i128 %i.uf, 64
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uk = xor i64 %i.ue, %i.uh
  %i.ul = load i64, ptr %i.ud, align 8, !noalias !19167, !noundef !3
  %i.um = zext i64 %i.uk to i128
  %i.un = zext i64 %i.ul to i128
  %i.uo = xor i128 %i.ui, %i.un
  %i.up = mul nuw i128 %i.uo, %i.um               ; 2 uses
  %i.uq = lshr i128 %i.up, 64
  %i.ur = xor i128 %i.uq, %i.up
  %i.us = trunc i128 %i.ur to i64
  store i64 %i.us, ptr %i.uj, align 8, !alias.scope !19167
  %i.ut = zext nneg i8 %i.ug to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19401)
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !alias.scope !19398, !noalias !19401, !nonnull !3, !noundef !3
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ux = load i64, ptr %i.uw, align 8, !alias.scope !19398, !noalias !19401, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19409)
  %i.uy = zext i64 %i.ux to i128
  %i.uz = shl nuw nsw i128 %i.uy, 8
  %i.va = or disjoint i128 %i.uz, %i.ut
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56

.thread67:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread, %bb.bb
  %i.vb = phi ptr [ %i.ar, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.tt, %bb.bb ]
  %i.vc = phi i64 [ %i.az, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.ub, %bb.bb ]
  %i.vd = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.uc, %bb.bb ] ; 2 uses
  %.in84 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ve = load i8, ptr %.in84, align 8, !range !1779, !noundef !3
  %i.vf = zext nneg i8 %i.ve to i128              ; 2 uses
  %i.vg = shl nuw nsw i128 %i.vf, 64
  %i.vh = or disjoint i128 %i.vg, %i.vd
  store i128 %i.vh, ptr %1, align 16, !alias.scope !19167
  store i8 72, ptr %i.f, align 16, !alias.scope !19167
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !alias.scope !19412, !noalias !19414, !nonnull !3, !noundef !3
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.vl = load i64, ptr %i.vk, align 8, !alias.scope !19412, !noalias !19414, !noundef !3 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vn = load i64, ptr %i.vb, align 8, !noalias !19416, !noundef !3
  %i.vo = zext i64 %i.vc to i128
  %i.vp = xor i128 %i.vd, %i.vo
  %i.vq = zext i64 %i.vn to i128
  %i.vr = xor i128 %i.vf, %i.vq
  %i.vs = mul nuw i128 %i.vr, %i.vp               ; 2 uses
  %i.vt = lshr i128 %i.vs, 64
  %i.vu = xor i128 %i.vt, %i.vs
  %i.vv = trunc i128 %i.vu to i64
  store i64 %i.vv, ptr %i.vm, align 8, !alias.scope !19417, !noalias !19398
  %i.vw = zext i64 %i.vl to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56: ; preds = %.thread67, %.thread66
  %i.vx = phi i64 [ %i.vl, %.thread67 ], [ %i.ux, %.thread66 ] ; 2 uses
  %i.vy = phi ptr [ %i.vj, %.thread67 ], [ %i.uv, %.thread66 ] ; 2 uses
  %.sink.i.i57 = phi i128 [ %i.vw, %.thread67 ], [ %i.va, %.thread66 ]
  %storemerge.i.i.i.i58 = phi i8 [ 64, %.thread67 ], [ 72, %.thread66 ] ; 2 uses
  store i128 %.sink.i.i57, ptr %1, align 16, !alias.scope !19417, !noalias !19398
  store i8 %storemerge.i.i.i.i58, ptr %i.f, align 16, !alias.scope !19417, !noalias !19398
  %.idx99 = mul nuw nsw i64 %i.vx, 88
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.idx99
  %i.wa = icmp eq i64 %i.vx, 0
  br i1 %i.wa, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph94

.lr.ph94:                                         ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56, %.lr.ph94
  %.sroa.0.0.i.i93 = phi ptr [ %i.wb, %.lr.ph94 ], [ %i.vy, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56 ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i93, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i93, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !19398, !inline_history !8512
  %i.wc = icmp eq ptr %i.wb, %i.vz
  br i1 %i.wc, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph94

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph94
  %.pre114 = load i8, ptr %i.f, align 16, !alias.scope !19418
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56
  %i.wd = phi i8 [ %.pre114, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i.i58, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i56 ] ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wf = load ptr, ptr %i.we, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wh = load i64, ptr %i.wg, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19427)
  %i.wi = icmp ugt i8 %i.wd, 64
  br i1 %i.wi, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.wj = zext i64 %i.wh to i128
  %i.wk = zext nneg i8 %i.wd to i128
  %i.wl = shl nuw i128 %i.wj, %i.wk
  %i.wm = load i128, ptr %1, align 16, !alias.scope !19418, !noundef !3
  %i.wn = or i128 %i.wm, %i.wl
  %i.wo = add nuw i8 %i.wd, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit34

bb.bd:                                            ; preds = %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.wp = load i128, ptr %1, align 16, !alias.scope !19418, !noundef !3 ; 2 uses
  %i.wq = trunc i128 %i.wp to i64
  %i.wr = lshr i128 %i.wp, 64
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.wt = load i64, ptr %i.ws, align 8, !alias.scope !19418, !noundef !3
  %i.wu = xor i64 %i.wt, %i.wq
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ww = load ptr, ptr %i.wv, align 16, !alias.scope !19418, !nonnull !3, !align !311, !noundef !3
  %i.wx = load i64, ptr %i.ww, align 8, !noalias !19418, !noundef !3
  %i.wy = zext i64 %i.wu to i128
  %i.wz = zext i64 %i.wx to i128
  %i.xa = xor i128 %i.wr, %i.wz
  %i.xb = mul nuw i128 %i.xa, %i.wy               ; 2 uses
  %i.xc = lshr i128 %i.xb, 64
  %i.xd = xor i128 %i.xc, %i.xb
  %i.xe = trunc i128 %i.xd to i64
  store i64 %i.xe, ptr %i.ws, align 8, !alias.scope !19418
  %i.xf = zext i64 %i.wh to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit34

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.bc, %bb.bd
  %.sink.i32 = phi i128 [ %i.xf, %bb.bd ], [ %i.wn, %bb.bc ]
  %storemerge.i.i.i33 = phi i8 [ 64, %bb.bd ], [ %i.wo, %bb.bc ]
  store i128 %.sink.i32, ptr %1, align 16, !alias.scope !19418
  store i8 %storemerge.i.i.i33, ptr %i.f, align 16, !alias.scope !19418
  %.idx100 = mul nuw nsw i64 %i.wh, 328
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.idx100
  %i.xh = icmp eq i64 %i.wh, 0
  br i1 %i.xh, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph96

.lr.ph96:                                         ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit34, %.lr.ph96
  %.sroa.0.0.i3595 = phi ptr [ %i.xi, %.lr.ph96 ], [ %i.wf, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit34 ] ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3595, i64 328 ; 2 uses
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i3595, ptr noalias noundef align 16 dereferenceable(48) %1) #57, !inline_history !5809
  %i.xj = icmp eq ptr %i.xi, %i.xg
  br i1 %i.xj, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph96

.thread79:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.xk = zext nneg i8 %i.oo to i128
  %i.xl = shl nuw nsw i128 %i.xk, 64
  %i.xm = or disjoint i128 %i.xl, 1               ; 2 uses
  store i128 %i.xm, ptr %1, align 16, !alias.scope !19428
  store i8 -128, ptr %i.f, align 16, !alias.scope !19428
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.be:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19437)
  %i.xn = trunc i128 %i.af to i64
  %i.xo = lshr i128 %i.os, 64
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xq = load i64, ptr %i.xp, align 8, !alias.scope !19428, !noundef !3
  %i.xr = xor i64 %i.xq, %i.xn
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xt = load ptr, ptr %i.xs, align 16, !alias.scope !19428, !nonnull !3, !align !311, !noundef !3
  %i.xu = load i64, ptr %i.xt, align 8, !noalias !19428, !noundef !3
  %i.xv = zext i64 %i.xr to i128
  %i.xw = zext i64 %i.xu to i128
  %i.xx = xor i128 %i.xo, %i.xw
  %i.xy = mul nuw i128 %i.xx, %i.xv               ; 2 uses
  %i.xz = lshr i128 %i.xy, 64
  %i.ya = xor i128 %i.xz, %i.xy
  %i.yb = trunc i128 %i.ya to i64
  store i64 %i.yb, ptr %i.xp, align 8, !alias.scope !19428
  %i.yc = zext nneg i8 %i.oo to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19439)
  br label %.thread78

.thread78:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, %bb.be
  %i.yd = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread ], [ %i.yc, %bb.be ]
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.in = load i64, ptr %i.ye, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %.in, -9223372036854775808  ; 2 uses
  %i.yf = select i1 %.not, i128 0, i128 18446744073709551616
  %i.yg = or disjoint i128 %i.yf, %i.yd
  store i128 %i.yg, ptr %1, align 16, !alias.scope !19350
  store i8 -128, ptr %i.f, align 16, !alias.scope !19350
  br i1 %.not, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bf

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge, %.thread79
  %i.yh = phi ptr [ %.pre108, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.oz, %.thread79 ]
  %i.yi = phi i64 [ %.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.ph, %.thread79 ]
  %i.yj = phi i128 [ %i.os, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.xm, %.thread79 ] ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.in83 = load i64, ptr %i.yk, align 8, !range !4, !noundef !3
  %i.yl = icmp ne i64 %.in83, -9223372036854775808 ; 2 uses
  %i.ym = trunc i128 %i.yj to i64
  %i.yn = lshr i128 %i.yj, 64
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yp = xor i64 %i.yi, %i.ym
  %i.yq = load i64, ptr %i.yh, align 8, !noalias !19350, !noundef !3
  %i.yr = zext i64 %i.yp to i128
  %i.ys = zext i64 %i.yq to i128
  %i.yt = xor i128 %i.yn, %i.ys
  %i.yu = mul nuw i128 %i.yt, %i.yr               ; 2 uses
  %i.yv = lshr i128 %i.yu, 64
  %i.yw = xor i128 %i.yv, %i.yu
  %i.yx = trunc i128 %i.yw to i64
  store i64 %i.yx, ptr %i.yo, align 8, !alias.scope !19350
  %i.yy = zext i1 %i.yl to i128
  store i128 %i.yy, ptr %1, align 16, !alias.scope !19350
  store i8 64, ptr %i.f, align 16, !alias.scope !19350
  br i1 %i.yl, label %bb.bf, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bf:                                            ; preds = %.thread78, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.yz = phi ptr [ %i.ye, %.thread78 ], [ %i.yk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.yz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.zb = load ptr, ptr %i.za, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.zd = load i64, ptr %i.zc, align 8, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19448)
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.zf = load i64, ptr %i.ze, align 8, !alias.scope !19450, !noalias !19451, !noundef !3 ; 2 uses
  %i.zg = tail call noundef i64 @llvm.fshr.i64(i64 %i.zf, i64 %i.zf, i64 %i.zd) ; 6 uses
  store i64 %i.zg, ptr %i.ze, align 8, !alias.scope !19450, !noalias !19451
  %i.zh = icmp samesign ult i64 %i.zd, 17
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zj = load ptr, ptr %i.zi, align 16, !alias.scope !19450, !noalias !19451, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  br i1 %i.zh, label %bb.bi, label %bb.bh, !prof !106

bb.bh:                                            ; preds = %bb.bg
  %i.zk = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.zb, i64 noundef range(i64 0, -9223372036854775808) %i.zd, i64 noundef %i.zg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zj) #58, !noalias !19450
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

bb.bi:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19455)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zm = load i64, ptr %i.zl, align 8, !alias.scope !19455, !noalias !19457, !noundef !3 ; 4 uses
  %i.zn = icmp samesign ugt i64 %i.zd, 7
  br i1 %i.zn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.zo = icmp samesign ugt i64 %i.zd, 3
  br i1 %i.zo, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bk

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bi
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.zb, align 1, !alias.scope !19458, !noalias !19459
  %i.zp = xor i64 %.sroa.014.0.copyload.i.i.i, %i.zg
  %i.zq = getelementptr i8, ptr %i.zb, i64 %i.zd
  %i.zr = getelementptr i8, ptr %i.zq, i64 -8
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.zr, align 1, !alias.scope !19458, !noalias !19459
  %i.zs = xor i64 %.sroa.016.0.copyload.i.i.i, %i.zm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i = icmp eq i64 %i.zd, 0
  br i1 %.not.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, label %bb.bl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bj
  %i.zt = getelementptr i8, ptr %i.zb, i64 %i.zd
  %i.zu = getelementptr i8, ptr %i.zt, i64 -4
  %.sroa.019.0.copyload.i.i.i = load i32, ptr %i.zu, align 1, !alias.scope !19458, !noalias !19459
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %i.zb, align 1, !alias.scope !19458, !noalias !19459
  %i.zv = zext i32 %.sroa.018.0.copyload.i.i.i to i64
  %i.zw = xor i64 %i.zg, %i.zv
  %i.zx = zext i32 %.sroa.019.0.copyload.i.i.i to i64
  %i.zy = xor i64 %i.zm, %i.zx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.zz = load i8, ptr %i.zb, align 1, !alias.scope !19458, !noalias !19459, !noundef !3
  %i.aaa = lshr i64 %i.zd, 1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !alias.scope !19458, !noalias !19459, !noundef !3
  %i.aad = getelementptr i8, ptr %i.zb, i64 %i.zd
  %i.aae = getelementptr i8, ptr %i.aad, i64 -1
  %i.aaf = load i8, ptr %i.aae, align 1, !alias.scope !19458, !noalias !19459, !noundef !3
  %i.aag = zext i8 %i.zz to i64
  %i.aah = xor i64 %i.zg, %i.aag
  %i.aai = zext i8 %i.aaf to i64
  %i.aaj = shl nuw nsw i64 %i.aai, 8
  %i.aak = zext i8 %i.aac to i64
  %i.aal = or disjoint i64 %i.aaj, %i.aak
  %i.aam = xor i64 %i.aal, %i.zm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.bl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.bk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.zs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.zy, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aam, %bb.bl ], [ %i.zm, %bb.bk ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.zp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.zw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aah, %bb.bl ], [ %i.zg, %bb.bk ]
  %i.aan = zext i64 %.sroa.0.0.i.i.i to i128
  %i.aao = zext i64 %.sroa.04.0.i.i.i to i128
  %i.aap = mul nuw i128 %i.aan, %i.aao            ; 2 uses
  %i.aaq = lshr i128 %i.aap, 64
  %i.aar = xor i128 %i.aaq, %i.aap
  %i.aas = trunc i128 %i.aar to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, %bb.bh
  %storemerge.i.i41 = phi i64 [ %i.zk, %bb.bh ], [ %i.aas, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i ] ; 2 uses
  store i64 %storemerge.i.i41, ptr %i.ze, align 8, !alias.scope !19450, !noalias !19451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19463)
  %i.aat = icmp ugt i8 %storemerge.i.i3, 120
  br i1 %i.aat, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.aau = zext nneg i8 %storemerge.i.i3 to i128
  %i.aav = shl nuw i128 255, %i.aau
  %i.aaw = load i128, ptr %1, align 16, !alias.scope !19466, !noalias !19443, !noundef !3
  %i.aax = or i128 %i.aaw, %i.aav
  %i.aay = add nuw i8 %storemerge.i.i3, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.aaz = load i128, ptr %1, align 16, !alias.scope !19466, !noalias !19443, !noundef !3 ; 2 uses
  %i.aba = trunc i128 %i.aaz to i64
  %i.abb = lshr i128 %i.aaz, 64
  %i.abc = xor i64 %storemerge.i.i41, %i.aba
  %i.abd = load i64, ptr %i.zj, align 8, !noalias !19466, !noundef !3
  %i.abe = zext i64 %i.abc to i128
  %i.abf = zext i64 %i.abd to i128
  %i.abg = xor i128 %i.abb, %i.abf
  %i.abh = mul nuw i128 %i.abg, %i.abe            ; 2 uses
  %i.abi = lshr i128 %i.abh, 64
  %i.abj = xor i128 %i.abi, %i.abh
  %i.abk = trunc i128 %i.abj to i64
  store i64 %i.abk, ptr %i.ze, align 8, !alias.scope !19466, !noalias !19443
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bm, %bb.bn
  %.sink.i42 = phi i128 [ 255, %bb.bn ], [ %i.aax, %bb.bm ]
  %storemerge.i.i.i43 = phi i8 [ 8, %bb.bn ], [ %i.aay, %bb.bm ]
  store i128 %.sink.i42, ptr %1, align 16, !alias.scope !19466, !noalias !19443
  store i8 %storemerge.i.i.i43, ptr %i.f, align 16, !alias.scope !19466, !noalias !19443
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bo:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.si, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr = load i8, ptr %i.f, align 16, !alias.scope !19467
  br label %bb.bp

end_hunk_10
begin_hunk_11_@_RINvXsel_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10SelectIntoNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.lr.ph:                                           ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph
  %.sroa.0.0.i.i11 = phi ptr [ %i.dr, %.lr.ph ], [ %i.do, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i11, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !24591, !inline_history !8512
  %i.ds = icmp eq ptr %i.dr, %i.dp
  br i1 %i.ds, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXsf5_NtCs4lawaffTVVK_9sqlparser3astNtB7_13FetchPositionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.0.val, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24609)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !24612, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %.0.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw nsw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !24612, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !24612, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !24612, !noundef !3
  %i.o = xor i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !24612, !nonnull !3, !align !311, !noundef !3
  %i.r = load i64, ptr %i.q, align 8, !noalias !24612, !noundef !3
  %i.s = zext i64 %i.o to i128
  %i.t = zext i64 %i.r to i128
  %i.u = xor i128 %i.l, %i.t
  %i.v = mul nuw i128 %i.u, %i.s                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !24612
  %i.z = zext i8 %.0.val to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.z, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink, ptr %0, align 16, !alias.scope !24612
  store i8 %storemerge.i.i, ptr %i.a, align 16, !alias.scope !24612
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsff_NtCs4lawaffTVVK_9sqlparser3astNtB7_6ActionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !24613, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24617)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 27 uses
  %i.c = load i8, ptr %i.b, align 16, !alias.scope !24620, !noundef !3 ; 3 uses
  %i.d = icmp ugt i8 %i.c, 64
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i8 %i.a to i128
  %i.f = zext nneg i8 %i.c to i128
  %i.g = shl nuw nsw i128 %i.e, %i.f
  %i.h = load i128, ptr %1, align 16, !alias.scope !24620, !noundef !3
  %i.i = or i128 %i.h, %i.g
  %i.j = add nuw i8 %i.c, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18

bb.c:                                             ; preds = %bb.a
  %i.k = load i128, ptr %1, align 16, !alias.scope !24620, !noundef !3 ; 2 uses
  %i.l = trunc i128 %i.k to i64
  %i.m = lshr i128 %i.k, 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24620, !noundef !3
  %i.p = xor i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !24620, !nonnull !3, !align !311, !noundef !3
  %i.s = load i64, ptr %i.r, align 8, !noalias !24620, !noundef !3
  %i.t = zext i64 %i.p to i128
  %i.u = zext i64 %i.s to i128
  %i.v = xor i128 %i.m, %i.u
  %i.w = mul nuw i128 %i.v, %i.t                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !24620
  %i.aa = zext nneg i8 %i.a to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18: ; preds = %bb.b, %bb.c
  %i.ab = phi i128 [ %i.aa, %bb.c ], [ %i.i, %bb.b ] ; 49 uses
  %storemerge.i.i17 = phi i8 [ 64, %bb.c ], [ %i.j, %bb.b ] ; 14 uses
  store i128 %i.ab, ptr %1, align 16, !alias.scope !24620
  store i8 %storemerge.i.i17, ptr %i.b, align 16, !alias.scope !24620
  switch i8 %i.a, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit [
    i8 1, label %bb.d
    i8 8, label %bb.g
    i8 9, label %bb.h
    i8 13, label %bb.k
    i8 14, label %bb.l
    i8 18, label %bb.m
    i8 19, label %bb.n
    i8 22, label %bb.q
    i8 23, label %bb.r
    i8 30, label %bb.s
    i8 33, label %bb.t
    i8 34, label %bb.w
    i8 38, label %bb.x
  ]

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.p, %bb.o, %bb.f, %bb.e
  %.sink.i38.sink = phi i128 [ %i.pa, %bb.ag ], [ %i.na, %bb.ac ], [ %i.mh, %bb.aa ], [ %i.lo, %bb.y ], [ %i.fn, %bb.o ], [ %i.ag, %bb.e ], [ %i.aw, %bb.f ], [ %i.gd, %bb.p ], [ %i.me, %bb.z ], [ %i.mx, %bb.ab ], [ %i.nq, %bb.ad ], [ %i.pq, %bb.ah ], [ %i.qj, %bb.aj ], [ %i.pt, %bb.ai ]
  %storemerge.i.i.i39.sink = phi i8 [ -128, %bb.ag ], [ -128, %bb.ac ], [ -128, %bb.aa ], [ -128, %bb.y ], [ -128, %bb.o ], [ -128, %bb.e ], [ 64, %bb.f ], [ 64, %bb.p ], [ 64, %bb.z ], [ 64, %bb.ab ], [ 64, %bb.ad ], [ 64, %bb.ah ], [ 64, %bb.aj ], [ -128, %bb.ai ]
  store i128 %.sink.i38.sink, ptr %1, align 16
  store i8 %storemerge.i.i.i39.sink, ptr %i.b, align 16
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i58, %.lr.ph.i51, %.lr.ph, %.lr.ph.i44, %.lr.ph.i, %.lr.ph117, %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i61, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit56, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit49, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit42, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  ret void

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val = load i8, ptr %i.ac, align 1, !range !24621, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24628)
  %i.ad = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = zext nneg i8 %.val to i128
  %i.af = shl nuw nsw i128 %i.ae, 64
  %i.ag = or i128 %i.ab, %i.af
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ah = trunc i128 %i.ab to i64
  %i.ai = lshr i128 %i.ab, 64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !24631, !noundef !3
  %i.al = xor i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !alias.scope !24631, !nonnull !3, !align !311, !noundef !3
  %i.ao = load i64, ptr %i.an, align 8, !noalias !24631, !noundef !3
  %i.ap = zext i64 %i.al to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = xor i128 %i.ai, %i.aq
  %i.as = mul nuw i128 %i.ar, %i.ap               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64
  store i64 %i.av, ptr %i.aj, align 8, !alias.scope !24631
  %i.aw = zext nneg i8 %.val to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.g:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !range !24632, !noundef !3 ; 3 uses
  %i.az = icmp ne i8 %i.ay, 17                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24636)
  %i.ba = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.ba, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16: ; preds = %bb.g
  %i.bb = select i1 %i.az, i128 18446744073709551616, i128 0
  %i.bc = or i128 %i.ab, %i.bb                    ; 2 uses
  store i128 %i.bc, ptr %1, align 16, !alias.scope !24639
  store i8 -128, ptr %i.b, align 16, !alias.scope !24639
  br i1 %i.az, label %bb.z, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16.thread: ; preds = %bb.g
  %i.bd = trunc i128 %i.ab to i64
  %i.be = lshr i128 %i.ab, 64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !24639, !noundef !3
  %i.bh = xor i64 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 16, !alias.scope !24639, !nonnull !3, !align !311, !noundef !3
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !24639, !noundef !3
  %i.bl = zext i64 %i.bh to i128
  %i.bm = zext i64 %i.bk to i128
  %i.bn = xor i128 %i.be, %i.bm
  %i.bo = mul nuw i128 %i.bn, %i.bl               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.br, ptr %i.bf, align 8, !alias.scope !24639
  %i.bs = zext i1 %i.az to i128
  store i128 %i.bs, ptr %1, align 16, !alias.scope !24639
  store i8 64, ptr %i.b, align 16, !alias.scope !24639
  br i1 %i.az, label %bb.y, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24643)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !24640, !noalias !24643, !nonnull !3, !noundef !3 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !24640, !noalias !24643, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24651)
  %i.bx = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = zext i64 %i.bw to i128
  %i.bz = shl nuw i128 %i.by, 64
  %i.ca = or i128 %i.ab, %i.bz
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cb = trunc i128 %i.ab to i64
  %i.cc = lshr i128 %i.ab, 64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !24654, !noalias !24640, !noundef !3
  %i.cf = xor i64 %i.ce, %i.cb
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 16, !alias.scope !24654, !noalias !24640, !nonnull !3, !align !311, !noundef !3
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !24655, !noundef !3
  %i.cj = zext i64 %i.cf to i128
  %i.ck = zext i64 %i.ci to i128
  %i.cl = xor i128 %i.cc, %i.ck
  %i.cm = mul nuw i128 %i.cl, %i.cj               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = xor i128 %i.cn, %i.cm
  %i.cp = trunc i128 %i.co to i64
  store i64 %i.cp, ptr %i.cd, align 8, !alias.scope !24654, !noalias !24640
  %i.cq = zext i64 %i.bw to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j, %bb.i
  %.sink.i.i = phi i128 [ %i.cq, %bb.j ], [ %i.ca, %bb.i ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.j ], [ -128, %bb.i ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !24654, !noalias !24640
  store i8 %storemerge.i.i.i.i, ptr %i.b, align 16, !alias.scope !24654, !noalias !24640
  %.idx118 = mul nuw nsw i64 %i.bw, 88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx118
  %i.cs = icmp eq i64 %i.bw, 0
  br i1 %i.cs, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph117

.lr.ph117:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph117
  %.sroa.0.0.i.i116 = phi ptr [ %i.ct, %.lr.ph117 ], [ %i.bu, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i116, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i116, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !24640, !inline_history !8512
  %i.cu = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cu, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph117

bb.k:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !range !1021, !noundef !3 ; 3 uses
  %i.cx = icmp ne i8 %i.cw, 5                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24659)
  %i.cy = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.cy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14: ; preds = %bb.k
  %i.cz = select i1 %i.cx, i128 18446744073709551616, i128 0
  %i.da = or i128 %i.ab, %i.cz                    ; 2 uses
  store i128 %i.da, ptr %1, align 16, !alias.scope !24662
  store i8 -128, ptr %i.b, align 16, !alias.scope !24662
  br i1 %i.cx, label %bb.ab, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.thread: ; preds = %bb.k
  %i.db = trunc i128 %i.ab to i64
  %i.dc = lshr i128 %i.ab, 64
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !24662, !noundef !3
  %i.df = xor i64 %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load ptr, ptr %i.dg, align 16, !alias.scope !24662, !nonnull !3, !align !311, !noundef !3
  %i.di = load i64, ptr %i.dh, align 8, !noalias !24662, !noundef !3
  %i.dj = zext i64 %i.df to i128
  %i.dk = zext i64 %i.di to i128
  %i.dl = xor i128 %i.dc, %i.dk
  %i.dm = mul nuw i128 %i.dl, %i.dj               ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = xor i128 %i.dn, %i.dm
  %i.dp = trunc i128 %i.do to i64
  store i64 %i.dp, ptr %i.dd, align 8, !alias.scope !24662
  %i.dq = zext i1 %i.cx to i128
  store i128 %i.dq, ptr %1, align 16, !alias.scope !24662
  store i8 64, ptr %i.b, align 16, !alias.scope !24662
  br i1 %i.cx, label %bb.aa, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !range !1021, !noundef !3 ; 3 uses
  %i.dt = icmp ne i8 %i.ds, 5                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24666)
  %i.du = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.du, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12: ; preds = %bb.l
  %i.dv = select i1 %i.dt, i128 18446744073709551616, i128 0
  %i.dw = or i128 %i.ab, %i.dv                    ; 2 uses
  store i128 %i.dw, ptr %1, align 16, !alias.scope !24669
  store i8 -128, ptr %i.b, align 16, !alias.scope !24669
  br i1 %i.dt, label %bb.ad, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.thread: ; preds = %bb.l
  %i.dx = trunc i128 %i.ab to i64
  %i.dy = lshr i128 %i.ab, 64
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !24669, !noundef !3
  %i.eb = xor i64 %i.ea, %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 16, !alias.scope !24669, !nonnull !3, !align !311, !noundef !3
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !24669, !noundef !3
  %i.ef = zext i64 %i.eb to i128
  %i.eg = zext i64 %i.ee to i128
  %i.eh = xor i128 %i.dy, %i.eg
  %i.ei = mul nuw i128 %i.eh, %i.ef               ; 2 uses
  %i.ej = lshr i128 %i.ei, 64
  %i.ek = xor i128 %i.ej, %i.ei
  %i.el = trunc i128 %i.ek to i64
  store i64 %i.el, ptr %i.dz, align 8, !alias.scope !24669
  %i.em = zext i1 %i.dt to i128
  store i128 %i.em, ptr %1, align 16, !alias.scope !24669
  store i8 64, ptr %i.b, align 16, !alias.scope !24669
  br i1 %i.dt, label %bb.ac, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !4, !noundef !3
  %i.ep = icmp ne i64 %i.eo, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24673)
  %i.eq = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.eq, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10: ; preds = %bb.m
  %i.er = select i1 %i.ep, i128 18446744073709551616, i128 0
  %i.es = or i128 %i.ab, %i.er                    ; 2 uses
  store i128 %i.es, ptr %1, align 16, !alias.scope !24676
  store i8 -128, ptr %i.b, align 16, !alias.scope !24676
  br i1 %i.ep, label %bb.af, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread: ; preds = %bb.m
  %i.et = trunc i128 %i.ab to i64
  %i.eu = lshr i128 %i.ab, 64
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !24676, !noundef !3
  %i.ex = xor i64 %i.ew, %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ez = load ptr, ptr %i.ey, align 16, !alias.scope !24676, !nonnull !3, !align !311, !noundef !3
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !24676, !noundef !3
  %i.fb = zext i64 %i.ex to i128
  %i.fc = zext i64 %i.fa to i128
  %i.fd = xor i128 %i.eu, %i.fc
  %i.fe = mul nuw i128 %i.fd, %i.fb               ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = xor i128 %i.ff, %i.fe
  %i.fh = trunc i128 %i.fg to i64
  store i64 %i.fh, ptr %i.ev, align 8, !alias.scope !24676
  %i.fi = zext i1 %i.ep to i128
  store i128 %i.fi, ptr %1, align 16, !alias.scope !24676
  store i8 64, ptr %i.b, align 16, !alias.scope !24676
  br i1 %i.ep, label %bb.ae, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val19 = load i8, ptr %i.fj, align 1, !range !1612, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24683)
  %i.fk = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.fk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fl = zext nneg i8 %.val19 to i128
  %i.fm = shl nuw nsw i128 %i.fl, 64
  %i.fn = or i128 %i.ab, %i.fm
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.p:                                             ; preds = %bb.n
  %i.fo = trunc i128 %i.ab to i64
  %i.fp = lshr i128 %i.ab, 64
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !24686, !noundef !3
  %i.fs = xor i64 %i.fr, %i.fo
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !alias.scope !24686, !nonnull !3, !align !311, !noundef !3
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !24686, !noundef !3
  %i.fw = zext i64 %i.fs to i128
  %i.fx = zext i64 %i.fv to i128
  %i.fy = xor i128 %i.fp, %i.fx
  %i.fz = mul nuw i128 %i.fy, %i.fw               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = xor i128 %i.ga, %i.fz
  %i.gc = trunc i128 %i.gb to i64
  store i64 %i.gc, ptr %i.fq, align 8, !alias.scope !24686
  %i.gd = zext nneg i8 %.val19 to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.q:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !range !5861, !noundef !3 ; 3 uses
  %i.gg = icmp ne i8 %i.gf, 4                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24690)
  %i.gh = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.gh, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %bb.q
  %i.gi = select i1 %i.gg, i128 18446744073709551616, i128 0
  %i.gj = or i128 %i.ab, %i.gi                    ; 2 uses
  store i128 %i.gj, ptr %1, align 16, !alias.scope !24693
  store i8 -128, ptr %i.b, align 16, !alias.scope !24693
  br i1 %i.gg, label %bb.ah, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread: ; preds = %bb.q
  %i.gk = trunc i128 %i.ab to i64
  %i.gl = lshr i128 %i.ab, 64
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !24693, !noundef !3
  %i.go = xor i64 %i.gn, %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gq = load ptr, ptr %i.gp, align 16, !alias.scope !24693, !nonnull !3, !align !311, !noundef !3
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !24693, !noundef !3
  %i.gs = zext i64 %i.go to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = xor i128 %i.gl, %i.gt
  %i.gv = mul nuw i128 %i.gu, %i.gs               ; 2 uses
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = xor i128 %i.gw, %i.gv
  %i.gy = trunc i128 %i.gx to i64
  store i64 %i.gy, ptr %i.gm, align 8, !alias.scope !24693
  %i.gz = zext i1 %i.gg to i128
  store i128 %i.gz, ptr %1, align 16, !alias.scope !24693
  store i8 64, ptr %i.b, align 16, !alias.scope !24693
  br i1 %i.gg, label %bb.ag, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !range !1802, !noundef !3 ; 3 uses
  %i.hc = icmp ne i8 %i.hb, 3                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24697)
  %i.hd = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.hd, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.r
  %i.he = select i1 %i.hc, i128 18446744073709551616, i128 0
  %i.hf = or i128 %i.ab, %i.he                    ; 2 uses
  store i128 %i.hf, ptr %1, align 16, !alias.scope !24700
  store i8 -128, ptr %i.b, align 16, !alias.scope !24700
  br i1 %i.hc, label %bb.aj, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.r
  %i.hg = trunc i128 %i.ab to i64
  %i.hh = lshr i128 %i.ab, 64
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !24700, !noundef !3
  %i.hk = xor i64 %i.hj, %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hm = load ptr, ptr %i.hl, align 16, !alias.scope !24700, !nonnull !3, !align !311, !noundef !3
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !24700, !noundef !3
  %i.ho = zext i64 %i.hk to i128
  %i.hp = zext i64 %i.hn to i128
  %i.hq = xor i128 %i.hh, %i.hp
  %i.hr = mul nuw i128 %i.hq, %i.ho               ; 2 uses
  %i.hs = lshr i128 %i.hr, 64
  %i.ht = xor i128 %i.hs, %i.hr
  %i.hu = trunc i128 %i.ht to i64
  store i64 %i.hu, ptr %i.hi, align 8, !alias.scope !24700
  %i.hv = zext i1 %i.hc to i128
  store i128 %i.hv, ptr %1, align 16, !alias.scope !24700
  store i8 64, ptr %i.b, align 16, !alias.scope !24700
  br i1 %i.hc, label %bb.ai, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !range !4, !noundef !3
  %i.hy = icmp ne i64 %i.hx, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24704)
  %i.hz = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.hz, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.s
  %i.ia = select i1 %i.hy, i128 18446744073709551616, i128 0
  %i.ib = or i128 %i.ab, %i.ia                    ; 2 uses
  store i128 %i.ib, ptr %1, align 16, !alias.scope !24707
  store i8 -128, ptr %i.b, align 16, !alias.scope !24707
  br i1 %i.hy, label %bb.al, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread: ; preds = %bb.s
  %i.ic = trunc i128 %i.ab to i64
  %i.id = lshr i128 %i.ab, 64
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !24707, !noundef !3
  %i.ig = xor i64 %i.if, %i.ic
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ii = load ptr, ptr %i.ih, align 16, !alias.scope !24707, !nonnull !3, !align !311, !noundef !3
  %i.ij = load i64, ptr %i.ii, align 8, !noalias !24707, !noundef !3
  %i.ik = zext i64 %i.ig to i128
  %i.il = zext i64 %i.ij to i128
  %i.im = xor i128 %i.id, %i.il
  %i.in = mul nuw i128 %i.im, %i.ik               ; 2 uses
  %i.io = lshr i128 %i.in, 64
  %i.ip = xor i128 %i.io, %i.in
  %i.iq = trunc i128 %i.ip to i64
  store i64 %i.iq, ptr %i.ie, align 8, !alias.scope !24707
  %i.ir = zext i1 %i.hy to i128
  store i128 %i.ir, ptr %1, align 16, !alias.scope !24707
  store i8 64, ptr %i.b, align 16, !alias.scope !24707
  br i1 %i.hy, label %bb.ak, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24711)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !24708, !noalias !24711, !nonnull !3, !noundef !3 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !24708, !noalias !24711, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24719)
  %i.iw = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.iw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ix = zext i64 %i.iv to i128
  %i.iy = shl nuw i128 %i.ix, 64
  %i.iz = or i128 %i.ab, %i.iy
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i61

bb.v:                                             ; preds = %bb.t
  %i.ja = trunc i128 %i.ab to i64
  %i.jb = lshr i128 %i.ab, 64
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !24722, !noalias !24708, !noundef !3
  %i.je = xor i64 %i.jd, %i.ja
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jg = load ptr, ptr %i.jf, align 16, !alias.scope !24722, !noalias !24708, !nonnull !3, !align !311, !noundef !3
  %i.jh = load i64, ptr %i.jg, align 8, !noalias !24723, !noundef !3
  %i.ji = zext i64 %i.je to i128
  %i.jj = zext i64 %i.jh to i128
  %i.jk = xor i128 %i.jb, %i.jj
  %i.jl = mul nuw i128 %i.jk, %i.ji               ; 2 uses
  %i.jm = lshr i128 %i.jl, 64
  %i.jn = xor i128 %i.jm, %i.jl
  %i.jo = trunc i128 %i.jn to i64
  store i64 %i.jo, ptr %i.jc, align 8, !alias.scope !24722, !noalias !24708
  %i.jp = zext i64 %i.iv to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i61

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i61: ; preds = %bb.v, %bb.u
  %.sink.i.i62 = phi i128 [ %i.jp, %bb.v ], [ %i.iz, %bb.u ]
  %storemerge.i.i.i.i63 = phi i8 [ 64, %bb.v ], [ -128, %bb.u ]
  store i128 %.sink.i.i62, ptr %1, align 16, !alias.scope !24722, !noalias !24708
  store i8 %storemerge.i.i.i.i63, ptr %i.b, align 16, !alias.scope !24722, !noalias !24708
  %.idx = mul nuw nsw i64 %i.iv, 88
  %i.jq = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx
  %i.jr = icmp eq i64 %i.iv, 0
  br i1 %i.jr, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i61, %.lr.ph
  %.sroa.0.0.i.i64115 = phi ptr [ %i.js, %.lr.ph ], [ %i.it, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i61 ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64115, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i64115, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !24708, !inline_history !8512
  %i.jt = icmp eq ptr %i.js, %i.jq
  br i1 %i.jt, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.w:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !range !4, !noundef !3
  %i.jw = icmp ne i64 %i.jv, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24727)
  %i.jx = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.jx, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.w
  %i.jy = select i1 %i.jw, i128 18446744073709551616, i128 0
  %i.jz = or i128 %i.ab, %i.jy                    ; 2 uses
  store i128 %i.jz, ptr %1, align 16, !alias.scope !24730
  store i8 -128, ptr %i.b, align 16, !alias.scope !24730
  br i1 %i.jw, label %bb.an, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread: ; preds = %bb.w
  %i.ka = trunc i128 %i.ab to i64
  %i.kb = lshr i128 %i.ab, 64
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !24730, !noundef !3
  %i.ke = xor i64 %i.kd, %i.ka
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kg = load ptr, ptr %i.kf, align 16, !alias.scope !24730, !nonnull !3, !align !311, !noundef !3
  %i.kh = load i64, ptr %i.kg, align 8, !noalias !24730, !noundef !3
  %i.ki = zext i64 %i.ke to i128
  %i.kj = zext i64 %i.kh to i128
  %i.kk = xor i128 %i.kb, %i.kj
  %i.kl = mul nuw i128 %i.kk, %i.ki               ; 2 uses
  %i.km = lshr i128 %i.kl, 64
  %i.kn = xor i128 %i.km, %i.kl
  %i.ko = trunc i128 %i.kn to i64
  store i64 %i.ko, ptr %i.kc, align 8, !alias.scope !24730
  %i.kp = zext i1 %i.jw to i128
  store i128 %i.kp, ptr %1, align 16, !alias.scope !24730
  store i8 64, ptr %i.b, align 16, !alias.scope !24730
  br i1 %i.jw, label %bb.am, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !range !4, !noundef !3
  %i.ks = icmp ne i64 %i.kr, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24734)
  %i.kt = icmp ugt i8 %storemerge.i.i17, 64
  br i1 %i.kt, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.x
  %i.ku = select i1 %i.ks, i128 18446744073709551616, i128 0
  %i.kv = or i128 %i.ab, %i.ku                    ; 2 uses
  store i128 %i.kv, ptr %1, align 16, !alias.scope !24737
  store i8 -128, ptr %i.b, align 16, !alias.scope !24737
  br i1 %i.ks, label %bb.ap, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.x
  %i.kw = trunc i128 %i.ab to i64
  %i.kx = lshr i128 %i.ab, 64
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !24737, !noundef !3
  %i.la = xor i64 %i.kz, %i.kw
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lc = load ptr, ptr %i.lb, align 16, !alias.scope !24737, !nonnull !3, !align !311, !noundef !3
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !24737, !noundef !3
  %i.le = zext i64 %i.la to i128
  %i.lf = zext i64 %i.ld to i128
  %i.lg = xor i128 %i.kx, %i.lf
  %i.lh = mul nuw i128 %i.lg, %i.le               ; 2 uses
  %i.li = lshr i128 %i.lh, 64
  %i.lj = xor i128 %i.li, %i.lh
  %i.lk = trunc i128 %i.lj to i64
  store i64 %i.lk, ptr %i.ky, align 8, !alias.scope !24737
  %i.ll = zext i1 %i.ks to i128
  store i128 %i.ll, ptr %1, align 16, !alias.scope !24737
  store i8 64, ptr %i.b, align 16, !alias.scope !24737
  br i1 %i.ks, label %bb.ao, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16.thread
  %i.lm = zext nneg i8 %i.ay to i128
  %i.ln = shl nuw nsw i128 %i.lm, 64
  %i.lo = or disjoint i128 %i.ln, 1
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.z:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24744)
  %i.lp = trunc i128 %i.ab to i64
  %i.lq = lshr i128 %i.bc, 64
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !alias.scope !24747, !noundef !3
  %i.lt = xor i64 %i.ls, %i.lp
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lv = load ptr, ptr %i.lu, align 16, !alias.scope !24747, !nonnull !3, !align !311, !noundef !3
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !24747, !noundef !3
  %i.lx = zext i64 %i.lt to i128
  %i.ly = zext i64 %i.lw to i128
  %i.lz = xor i128 %i.lq, %i.ly
  %i.ma = mul nuw i128 %i.lz, %i.lx               ; 2 uses
  %i.mb = lshr i128 %i.ma, 64
  %i.mc = xor i128 %i.mb, %i.ma
  %i.md = trunc i128 %i.mc to i64
  store i64 %i.md, ptr %i.lr, align 8, !alias.scope !24747
  %i.me = zext nneg i8 %i.ay to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.aa:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.thread
  %i.mf = zext nneg i8 %i.cw to i128
  %i.mg = shl nuw nsw i128 %i.mf, 64
  %i.mh = or disjoint i128 %i.mg, 1
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ab:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24754)
  %i.mi = trunc i128 %i.ab to i64
  %i.mj = lshr i128 %i.da, 64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !alias.scope !24757, !noundef !3
  %i.mm = xor i64 %i.ml, %i.mi
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mo = load ptr, ptr %i.mn, align 16, !alias.scope !24757, !nonnull !3, !align !311, !noundef !3
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !24757, !noundef !3
  %i.mq = zext i64 %i.mm to i128
  %i.mr = zext i64 %i.mp to i128
  %i.ms = xor i128 %i.mj, %i.mr
  %i.mt = mul nuw i128 %i.ms, %i.mq               ; 2 uses
  %i.mu = lshr i128 %i.mt, 64
  %i.mv = xor i128 %i.mu, %i.mt
  %i.mw = trunc i128 %i.mv to i64
  store i64 %i.mw, ptr %i.mk, align 8, !alias.scope !24757
  %i.mx = zext nneg i8 %i.cw to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ac:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.thread
  %i.my = zext nneg i8 %i.ds to i128
  %i.mz = shl nuw nsw i128 %i.my, 64
  %i.na = or disjoint i128 %i.mz, 1
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ad:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24764)
  %i.nb = trunc i128 %i.ab to i64
  %i.nc = lshr i128 %i.dw, 64
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !24767, !noundef !3
  %i.nf = xor i64 %i.ne, %i.nb
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nh = load ptr, ptr %i.ng, align 16, !alias.scope !24767, !nonnull !3, !align !311, !noundef !3
  %i.ni = load i64, ptr %i.nh, align 8, !noalias !24767, !noundef !3
  %i.nj = zext i64 %i.nf to i128
  %i.nk = zext i64 %i.ni to i128
  %i.nl = xor i128 %i.nc, %i.nk
  %i.nm = mul nuw i128 %i.nl, %i.nj               ; 2 uses
  %i.nn = lshr i128 %i.nm, 64
  %i.no = xor i128 %i.nn, %i.nm
  %i.np = trunc i128 %i.no to i64
  store i64 %i.np, ptr %i.nd, align 8, !alias.scope !24767
  %i.nq = zext nneg i8 %i.ds to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ae:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !nonnull !3, !noundef !3
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nu = load i64, ptr %i.nt, align 8, !noundef !3 ; 2 uses
  %i.nv = zext i64 %i.nu to i128
  %i.nw = shl nuw i128 %i.nv, 64
  %i.nx = or disjoint i128 %i.nw, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !nonnull !3, !noundef !3
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ob = load i64, ptr %i.oa, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24774)
  %i.oc = trunc i128 %i.ab to i64
  %i.od = lshr i128 %i.es, 64
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !alias.scope !24777, !noundef !3
  %i.og = xor i64 %i.of, %i.oc
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oi = load ptr, ptr %i.oh, align 16, !alias.scope !24777, !nonnull !3, !align !311, !noundef !3
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !24777, !noundef !3
  %i.ok = zext i64 %i.og to i128
  %i.ol = zext i64 %i.oj to i128
  %i.om = xor i128 %i.od, %i.ol
  %i.on = mul nuw i128 %i.om, %i.ok               ; 2 uses
  %i.oo = lshr i128 %i.on, 64
  %i.op = xor i128 %i.oo, %i.on
  %i.oq = trunc i128 %i.op to i64
  store i64 %i.oq, ptr %i.oe, align 8, !alias.scope !24777
  %i.or = zext i64 %i.ob to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ae, %bb.af
  %i.os = phi i64 [ %i.ob, %bb.af ], [ %i.nu, %bb.ae ] ; 2 uses
  %i.ot = phi ptr [ %i.nz, %bb.af ], [ %i.ns, %bb.ae ] ; 2 uses
  %.sink.i34 = phi i128 [ %i.or, %bb.af ], [ %i.nx, %bb.ae ]
  %storemerge.i.i.i35 = phi i8 [ 64, %bb.af ], [ -128, %bb.ae ]
  store i128 %.sink.i34, ptr %1, align 16, !alias.scope !24777
  store i8 %storemerge.i.i.i35, ptr %i.b, align 16, !alias.scope !24777
  %.idx.i = shl nuw nsw i64 %i.os, 6
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.idx.i
  %i.ov = icmp eq i64 %i.os, 0
  br i1 %i.ov, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.ow, %.lr.ph.i ], [ %i.ot, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ox = icmp eq ptr %i.ow, %i.ou
  br i1 %i.ox, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.ag:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread
  %i.oy = zext nneg i8 %i.gf to i128
  %i.oz = shl nuw nsw i128 %i.oy, 64
  %i.pa = or disjoint i128 %i.oz, 1
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ah:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24784)
  %i.pb = trunc i128 %i.ab to i64
  %i.pc = lshr i128 %i.gj, 64
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !24787, !noundef !3
  %i.pf = xor i64 %i.pe, %i.pb
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ph = load ptr, ptr %i.pg, align 16, !alias.scope !24787, !nonnull !3, !align !311, !noundef !3
  %i.pi = load i64, ptr %i.ph, align 8, !noalias !24787, !noundef !3
  %i.pj = zext i64 %i.pf to i128
  %i.pk = zext i64 %i.pi to i128
  %i.pl = xor i128 %i.pc, %i.pk
  %i.pm = mul nuw i128 %i.pl, %i.pj               ; 2 uses
  %i.pn = lshr i128 %i.pm, 64
  %i.po = xor i128 %i.pn, %i.pm
  %i.pp = trunc i128 %i.po to i64
  store i64 %i.pp, ptr %i.pd, align 8, !alias.scope !24787
  %i.pq = zext nneg i8 %i.gf to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ai:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.pr = zext nneg i8 %i.hb to i128
  %i.ps = shl nuw nsw i128 %i.pr, 64
  %i.pt = or disjoint i128 %i.ps, 1
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.aj:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24794)
  %i.pu = trunc i128 %i.ab to i64
  %i.pv = lshr i128 %i.hf, 64
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !24797, !noundef !3
  %i.py = xor i64 %i.px, %i.pu
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qa = load ptr, ptr %i.pz, align 16, !alias.scope !24797, !nonnull !3, !align !311, !noundef !3
  %i.qb = load i64, ptr %i.qa, align 8, !noalias !24797, !noundef !3
  %i.qc = zext i64 %i.py to i128
  %i.qd = zext i64 %i.qb to i128
  %i.qe = xor i128 %i.pv, %i.qd
  %i.qf = mul nuw i128 %i.qe, %i.qc               ; 2 uses
  %i.qg = lshr i128 %i.qf, 64
  %i.qh = xor i128 %i.qg, %i.qf
  %i.qi = trunc i128 %i.qh to i64
  store i64 %i.qi, ptr %i.pw, align 8, !alias.scope !24797
  %i.qj = zext nneg i8 %i.hb to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.ak:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !nonnull !3, !noundef !3
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qn = load i64, ptr %i.qm, align 8, !noundef !3 ; 2 uses
  %i.qo = zext i64 %i.qn to i128
  %i.qp = shl nuw i128 %i.qo, 64
  %i.qq = or disjoint i128 %i.qp, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit42

bb.al:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !nonnull !3, !noundef !3
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qu = load i64, ptr %i.qt, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24804)
  %i.qv = trunc i128 %i.ab to i64
  %i.qw = lshr i128 %i.ib, 64
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !24807, !noundef !3
  %i.qz = xor i64 %i.qy, %i.qv
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rb = load ptr, ptr %i.ra, align 16, !alias.scope !24807, !nonnull !3, !align !311, !noundef !3
  %i.rc = load i64, ptr %i.rb, align 8, !noalias !24807, !noundef !3
  %i.rd = zext i64 %i.qz to i128
  %i.re = zext i64 %i.rc to i128
  %i.rf = xor i128 %i.qw, %i.re
  %i.rg = mul nuw i128 %i.rf, %i.rd               ; 2 uses
  %i.rh = lshr i128 %i.rg, 64
  %i.ri = xor i128 %i.rh, %i.rg
  %i.rj = trunc i128 %i.ri to i64
  store i64 %i.rj, ptr %i.qx, align 8, !alias.scope !24807
  %i.rk = zext i64 %i.qu to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit42

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit42: ; preds = %bb.ak, %bb.al
  %i.rl = phi i64 [ %i.qu, %bb.al ], [ %i.qn, %bb.ak ] ; 2 uses
  %i.rm = phi ptr [ %i.qs, %bb.al ], [ %i.ql, %bb.ak ] ; 2 uses
  %.sink.i40 = phi i128 [ %i.rk, %bb.al ], [ %i.qq, %bb.ak ]
  %storemerge.i.i.i41 = phi i8 [ 64, %bb.al ], [ -128, %bb.ak ]
  store i128 %.sink.i40, ptr %1, align 16, !alias.scope !24807
  store i8 %storemerge.i.i.i41, ptr %i.b, align 16, !alias.scope !24807
  %.idx.i43 = shl nuw nsw i64 %i.rl, 6
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.idx.i43
  %i.ro = icmp eq i64 %i.rl, 0
  br i1 %i.ro, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit42, %.lr.ph.i44
  %.sroa.0.03.i45 = phi ptr [ %i.rp, %.lr.ph.i44 ], [ %i.rm, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit42 ] ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i45, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i45, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.rq = icmp eq ptr %i.rp, %i.rn
  br i1 %i.rq, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i44

bb.am:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !nonnull !3, !noundef !3
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ru = load i64, ptr %i.rt, align 8, !noundef !3 ; 2 uses
  %i.rv = zext i64 %i.ru to i128
  %i.rw = shl nuw i128 %i.rv, 64
  %i.rx = or disjoint i128 %i.rw, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit49

bb.an:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !nonnull !3, !noundef !3
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sb = load i64, ptr %i.sa, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24814)
  %i.sc = trunc i128 %i.ab to i64
  %i.sd = lshr i128 %i.jz, 64
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !24817, !noundef !3
  %i.sg = xor i64 %i.sf, %i.sc
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.si = load ptr, ptr %i.sh, align 16, !alias.scope !24817, !nonnull !3, !align !311, !noundef !3
  %i.sj = load i64, ptr %i.si, align 8, !noalias !24817, !noundef !3
  %i.sk = zext i64 %i.sg to i128
  %i.sl = zext i64 %i.sj to i128
  %i.sm = xor i128 %i.sd, %i.sl
  %i.sn = mul nuw i128 %i.sm, %i.sk               ; 2 uses
  %i.so = lshr i128 %i.sn, 64
  %i.sp = xor i128 %i.so, %i.sn
  %i.sq = trunc i128 %i.sp to i64
  store i64 %i.sq, ptr %i.se, align 8, !alias.scope !24817
  %i.sr = zext i64 %i.sb to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit49

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %bb.am, %bb.an
  %i.ss = phi i64 [ %i.sb, %bb.an ], [ %i.ru, %bb.am ] ; 2 uses
  %i.st = phi ptr [ %i.rz, %bb.an ], [ %i.rs, %bb.am ] ; 2 uses
  %.sink.i47 = phi i128 [ %i.sr, %bb.an ], [ %i.rx, %bb.am ]
  %storemerge.i.i.i48 = phi i8 [ 64, %bb.an ], [ -128, %bb.am ]
  store i128 %.sink.i47, ptr %1, align 16, !alias.scope !24817
  store i8 %storemerge.i.i.i48, ptr %i.b, align 16, !alias.scope !24817
  %.idx.i50 = shl nuw nsw i64 %i.ss, 6
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %.idx.i50
  %i.sv = icmp eq i64 %i.ss, 0
  br i1 %i.sv, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit49, %.lr.ph.i51
  %.sroa.0.03.i52 = phi ptr [ %i.sw, %.lr.ph.i51 ], [ %i.st, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit49 ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i52, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i52, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.sx = icmp eq ptr %i.sw, %i.su
  br i1 %i.sx, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i51

bb.ao:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8, !nonnull !3, !noundef !3
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !noundef !3 ; 2 uses
  %i.tc = zext i64 %i.tb to i128
  %i.td = shl nuw i128 %i.tc, 64
  %i.te = or disjoint i128 %i.td, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit56

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !nonnull !3, !noundef !3
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ti = load i64, ptr %i.th, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24824)
  %i.tj = trunc i128 %i.ab to i64
  %i.tk = lshr i128 %i.kv, 64
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tm = load i64, ptr %i.tl, align 8, !alias.scope !24827, !noundef !3
  %i.tn = xor i64 %i.tm, %i.tj
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tp = load ptr, ptr %i.to, align 16, !alias.scope !24827, !nonnull !3, !align !311, !noundef !3
  %i.tq = load i64, ptr %i.tp, align 8, !noalias !24827, !noundef !3
  %i.tr = zext i64 %i.tn to i128
  %i.ts = zext i64 %i.tq to i128
  %i.tt = xor i128 %i.tk, %i.ts
  %i.tu = mul nuw i128 %i.tt, %i.tr               ; 2 uses
  %i.tv = lshr i128 %i.tu, 64
  %i.tw = xor i128 %i.tv, %i.tu
  %i.tx = trunc i128 %i.tw to i64
  store i64 %i.tx, ptr %i.tl, align 8, !alias.scope !24827
  %i.ty = zext i64 %i.ti to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit56

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit56: ; preds = %bb.ao, %bb.ap
  %i.tz = phi i64 [ %i.ti, %bb.ap ], [ %i.tb, %bb.ao ] ; 2 uses
  %i.ua = phi ptr [ %i.tg, %bb.ap ], [ %i.sz, %bb.ao ] ; 2 uses
  %.sink.i54 = phi i128 [ %i.ty, %bb.ap ], [ %i.te, %bb.ao ]
  %storemerge.i.i.i55 = phi i8 [ 64, %bb.ap ], [ -128, %bb.ao ]
  store i128 %.sink.i54, ptr %1, align 16, !alias.scope !24827
  store i8 %storemerge.i.i.i55, ptr %i.b, align 16, !alias.scope !24827
  %.idx.i57 = shl nuw nsw i64 %i.tz, 6
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.idx.i57
  %i.uc = icmp eq i64 %i.tz, 0
  br i1 %i.uc, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit56, %.lr.ph.i58
  %.sroa.0.03.i59 = phi ptr [ %i.ud, %.lr.ph.i58 ], [ %i.ua, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit56 ] ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i59, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i59, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ue = icmp eq ptr %i.ud, %i.ub
  br i1 %i.ue, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i58
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsff_NtCs4lawaffTVVK_9sqlparser3astNtB7_6ActionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = load i8, ptr %0, align 8, !range !24613, !noundef !3 ; 2 uses
  %i.ak = zext nneg i8 %i.aj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !24828
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !24828
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !24828
  switch i8 %i.aj, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit [
    i8 1, label %bb.b
    i8 8, label %bb.c
    i8 9, label %bb.d
    i8 13, label %bb.e
    i8 14, label %bb.f
    i8 18, label %bb.g
    i8 19, label %bb.h
    i8 22, label %bb.i
    i8 23, label %bb.j
    i8 30, label %bb.k
    i8 33, label %bb.l
    i8 34, label %bb.m
    i8 38, label %bb.n
  ]

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i20, %_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i15, %.lr.ph, %_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i10, %_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph31, %bb.l, %bb.d, %bb.z, %bb.x, %bb.v, %bb.r, %bb.j, %bb.u, %bb.i, %bb.t, %bb.f, %bb.q, %bb.e, %bb.p, %bb.c, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %bb.g, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val = load i8, ptr %i.al, align 1, !range !24621, !noundef !3
  %i.am = zext nneg i8 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !24833
  store i64 %i.am, ptr %i.ah, align 8, !noalias !24833
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !24833
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !24632, !noundef !3 ; 2 uses
  %i.ap = icmp ne i8 %i.ao, 17                    ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !24840
  store i64 %i.aq, ptr %i.ag, align 8, !noalias !24840
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !24840
  br i1 %i.ap, label %bb.o, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24845)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !24845, !noalias !24848, !nonnull !3, !noundef !3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !24845, !noalias !24848, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24850
  store i64 %i.au, ptr %i.b, align 8, !noalias !24850
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #57, !noalias !24845, !inline_history !7893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24850
  %.idx32 = mul nuw nsw i64 %i.au, 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx32
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.d, %.lr.ph31
  %.sroa.0.0.i.i30 = phi ptr [ %i.ax, %.lr.ph31 ], [ %i.as, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs4d_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i.i30, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57, !noalias !24845, !inline_history !7894
  %i.ay = icmp eq ptr %i.ax, %i.av
  br i1 %i.ay, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph31

bb.e:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !1021, !noundef !3 ; 2 uses
  %i.bb = icmp ne i8 %i.ba, 5                     ; 2 uses
  %i.bc = zext i1 %i.bb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !24855
  store i64 %i.bc, ptr %i.af, align 8, !noalias !24855
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !24855
  br i1 %i.bb, label %bb.p, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !1021, !noundef !3 ; 2 uses
  %i.bf = icmp ne i8 %i.be, 5                     ; 2 uses
  %i.bg = zext i1 %i.bf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !24860
  store i64 %i.bg, ptr %i.ae, align 8, !noalias !24860
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !24860
  br i1 %i.bf, label %bb.q, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !4, !noundef !3
  %i.bj = icmp ne i64 %i.bi, -9223372036854775808 ; 2 uses
  %i.bk = zext i1 %i.bj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !24865
  store i64 %i.bk, ptr %i.ad, align 8, !noalias !24865
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !24865
  br i1 %i.bj, label %bb.r, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val1 = load i8, ptr %i.bl, align 1, !range !1612, !noundef !3
  %i.bm = zext nneg i8 %.val1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !24870
  store i64 %i.bm, ptr %i.ac, align 8, !noalias !24870
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !24870
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_11
begin_hunk_12_@_RINvXsgT_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GrantObjectsNtNtB7_7visitor8VisitMut5visitINtBW_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2V_:bb.a
  %i.e = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.e, label %bb.ae, label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %bb.ae, label %bb.ad

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %bb.ae, label %bb.ad

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %bb.ae, label %bb.ad

bb.h:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %bb.ae, label %bb.ad

bb.i:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.j, label %bb.ae, label %bb.ad

bb.j:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.k, label %bb.ae, label %bb.ad

bb.k:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.l, label %bb.ae, label %bb.ad

bb.l:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.m, label %bb.ae, label %bb.ad

bb.m:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.n, label %bb.ae, label %bb.ad

bb.n:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.o, label %bb.ae, label %bb.ad

bb.o:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.p, label %bb.ae, label %bb.ad

bb.p:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.q, label %bb.ae, label %bb.ad

bb.q:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.r, label %bb.ae, label %bb.ad

bb.r:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.s, label %bb.ae, label %bb.ad

bb.s:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.t, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.u, label %bb.ae, label %bb.ad

bb.u:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.v, label %bb.ae, label %bb.ad

bb.v:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.w, label %bb.ae, label %bb.ad

bb.w:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.x, label %bb.ae, label %bb.ad

bb.x:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.y, label %bb.ae, label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.z, label %bb.ae, label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.aa, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ab, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3u_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ac, label %bb.ae, label %bb.af

bb.ac:                                            ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3u_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ad, label %bb.ae, label %bb.ag

bb.ad:                                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ac, %bb.af, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.ad
  %.sroa.0.0 = phi i1 [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.af ], [ true, %bb.ag ]
  ret i1 %.sroa.0.0

bb.af:                                            ; preds = %bb.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_9data_type8DataTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.af, label %bb.ae, label %bb.ad

bb.ag:                                            ; preds = %bb.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_9data_type8DataTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ah, label %bb.ae, label %bb.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsgn_NtCs4lawaffTVVK_9sqlparser3astNtB7_7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load i8, ptr %i.a, align 8, !range !1558, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26859)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.c = load i8, ptr %i.b, align 16, !alias.scope !26862, !noundef !3 ; 3 uses
  %i.d = icmp ugt i8 %i.c, 64
  br i1 %i.d, label %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  %i.e = load i128, ptr %1, align 16, !alias.scope !26862, !noundef !3 ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !26862, !noundef !3
  %i.j = xor i64 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !alias.scope !26862, !nonnull !3, !align !311, !noundef !3
  %i.m = load i64, ptr %i.l, align 8, !noalias !26862, !noundef !3
  %i.n = zext i64 %i.j to i128
  %i.o = zext i64 %i.m to i128
  %i.p = xor i128 %i.g, %i.o
  %i.q = mul nuw i128 %i.p, %i.n                  ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !26862
  %i.u = zext nneg i8 %.val to i128
  %i.v = load i64, ptr %0, align 8, !range !322, !noundef !3 ; 2 uses
  %.not16 = icmp eq i64 %i.v, -9223372036854775807 ; 2 uses
  %i.w = select i1 %.not16, i128 0, i128 18446744073709551616
  %i.x = or disjoint i128 %i.w, %i.u              ; 2 uses
  store i128 %i.x, ptr %1, align 16, !alias.scope !26863
  store i8 -128, ptr %i.b, align 16, !alias.scope !26863
  %extract.t = zext nneg i8 %.val to i64
  br i1 %.not16, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.y = zext nneg i8 %.val to i128
  %i.z = zext nneg i8 %i.c to i128
  %i.aa = shl nuw nsw i128 %i.y, %i.z
  %i.ab = load i128, ptr %1, align 16, !alias.scope !26862, !noundef !3
  %i.ac = or i128 %i.ab, %i.aa                    ; 4 uses
  %i.ad = load i64, ptr %0, align 8, !range !322, !noundef !3 ; 3 uses
  %i.ae = icmp ne i64 %i.ad, -9223372036854775807 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26869)
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.b:                                             ; preds = %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.af = select i1 %i.ae, i128 18446744073709551616, i128 0
  %i.ag = or i128 %i.ac, %i.af                    ; 2 uses
  store i128 %i.ag, ptr %1, align 16, !alias.scope !26863
  store i8 -128, ptr %i.b, align 16, !alias.scope !26863
  %extract.t17 = trunc i128 %i.ac to i64
  br i1 %i.ae, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ah = trunc i128 %i.ac to i64
  %i.ai = lshr i128 %i.ac, 64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !26863, !noundef !3
  %i.al = xor i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !alias.scope !26863, !nonnull !3, !align !311, !noundef !3
  %i.ao = load i64, ptr %i.an, align 8, !noalias !26863, !noundef !3
  %i.ap = zext i64 %i.al to i128
  %i.aq = zext i64 %i.ao to i128                  ; 2 uses
  %i.ar = xor i128 %i.ai, %i.aq
  %i.as = mul nuw i128 %i.ar, %i.ap               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64                 ; 2 uses
  store i64 %i.av, ptr %i.aj, align 8, !alias.scope !26863
  %i.aw = zext i1 %i.ae to i128
  store i128 %i.aw, ptr %1, align 16, !alias.scope !26863
  store i8 64, ptr %i.b, align 16, !alias.scope !26863
  br i1 %i.ae, label %bb.c, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26870)
  %.not13 = icmp eq i64 %i.ad, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26876)
  %i.ax = select i1 %.not13, i128 1, i128 18446744073709551617
  store i128 %i.ax, ptr %1, align 16, !alias.scope !26879, !noalias !26880
  store i8 -128, ptr %i.b, align 16, !alias.scope !26879, !noalias !26880
  br i1 %.not13, label %bb.f, label %bb.d

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.b
  %i.ay = phi i128 [ %i.x, %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ag, %bb.b ]
  %.sink.i615.off0 = phi i64 [ %extract.t, %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t17, %bb.b ]
  %i.az = phi i64 [ %i.v, %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ad, %bb.b ]
  %i.ba = icmp ne i64 %i.az, -9223372036854775808 ; 2 uses
  %i.bb = lshr i128 %i.ay, 64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !26879, !noalias !26880, !noundef !3
  %i.be = xor i64 %i.bd, %.sink.i615.off0
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 16, !alias.scope !26879, !noalias !26880, !nonnull !3, !align !311, !noundef !3
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !26882, !noundef !3
  %i.bi = zext i64 %i.be to i128
  %i.bj = zext i64 %i.bh to i128
  %i.bk = xor i128 %i.bb, %i.bj
  %i.bl = mul nuw i128 %i.bk, %i.bi               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64
  store i64 %i.bo, ptr %i.bc, align 8, !alias.scope !26879, !noalias !26880
  %i.bp = zext i1 %i.ba to i128
  store i128 %i.bp, ptr %1, align 16, !alias.scope !26879, !noalias !26880
  store i8 64, ptr %i.b, align 16, !alias.scope !26879, !noalias !26880
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !26883
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !26883
  br label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26887)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !26890, !noalias !26891, !nonnull !3, !noundef !3
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !26890, !noalias !26891, !noundef !3 ; 2 uses
  %i.bv = zext i64 %i.bu to i128
  %i.bw = shl nuw i128 %i.bv, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !26894, !noalias !26897, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !26894, !noalias !26897, !noundef !3 ; 2 uses
  %i.cb = xor i64 %i.av, 1
  %i.cc = zext i64 %i.cb to i128
  %i.cd = mul nuw i128 %i.aq, %i.cc               ; 2 uses
  %i.ce = lshr i128 %i.cd, 64
  %i.cf = xor i128 %i.ce, %i.cd
  %i.cg = trunc i128 %i.cf to i64
  store i64 %i.cg, ptr %i.aj, align 8, !alias.scope !26900, !noalias !26890
  %i.ch = zext i64 %i.ca to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.f
  %i.ci = phi i64 [ %i.ca, %bb.f ], [ %i.bu, %bb.e ]
  %i.cj = phi ptr [ %i.by, %bb.f ], [ %i.bs, %bb.e ]
  %.sink.i2 = phi i128 [ %i.ch, %bb.f ], [ %i.bw, %bb.e ]
  %storemerge.i.i.i3 = phi i8 [ 64, %bb.f ], [ -128, %bb.e ]
  store i128 %.sink.i2, ptr %1, align 16, !alias.scope !26900, !noalias !26890
  store i8 %storemerge.i.i.i3, ptr %i.b, align 16, !alias.scope !26900, !noalias !26890
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.ci, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !26890, !inline_history !26907
  br label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsgx_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GranteesTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %bb.d, %bb.b, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsgp_NtCs4lawaffTVVK_9sqlparser3astNtB7_7GranteeNtNtB7_7visitor8VisitMut5visitINtBQ_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1I_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2P_(ptr noalias noundef align 8 dereferenceable(136) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_11GranteeNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3w_(ptr noalias noundef nonnull align 8 dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsh1_NtCs4lawaffTVVK_9sqlparser3astNtB7_13DenyStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvXseL_NtCs4lawaffTVVK_9sqlparser3astNtB7_10PrivilegesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  tail call fastcc void @_RINvXsgR_NtCs4lawaffTVVK_9sqlparser3astNtB7_12GrantObjectsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26914)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.g = load i8, ptr %i.f, align 16, !alias.scope !26917, !noundef !3 ; 3 uses
  %i.h = icmp ugt i8 %i.g, 64
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i64 %i.e to i128
  %i.j = zext nneg i8 %i.g to i128
  %i.k = shl nuw i128 %i.i, %i.j
  %i.l = load i128, ptr %1, align 16, !alias.scope !26917, !noundef !3
  %i.m = or i128 %i.l, %i.k
  %i.n = add nuw i8 %i.g, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load i128, ptr %1, align 16, !alias.scope !26917, !noundef !3 ; 2 uses
  %i.p = trunc i128 %i.o to i64
  %i.q = lshr i128 %i.o, 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !26917, !noundef !3
  %i.t = xor i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 16, !alias.scope !26917, !nonnull !3, !align !311, !noundef !3
  %i.w = load i64, ptr %i.v, align 8, !noalias !26917, !noundef !3
  %i.x = zext i64 %i.t to i128
  %i.y = zext i64 %i.w to i128
  %i.z = xor i128 %i.q, %i.y
  %i.aa = mul nuw i128 %i.z, %i.x                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  store i64 %i.ad, ptr %i.r, align 8, !alias.scope !26917
  %i.ae = zext i64 %i.e to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i128 [ %i.ae, %bb.c ], [ %i.m, %bb.b ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !26917
  store i8 %storemerge.i.i.i, ptr %i.f, align 16, !alias.scope !26917
  %.idx = mul nuw nsw i64 %i.e, 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ag = icmp eq i64 %i.e, 0
  br i1 %i.ag, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph
  %.sroa.0.0.i9 = phi ptr [ %i.ah, %.lr.ph ], [ %i.c, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9, i64 136 ; 2 uses
  tail call fastcc void @_RINvXsgn_NtCs4lawaffTVVK_9sqlparser3astNtB7_7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0.0.i9, ptr noalias noundef align 16 dereferenceable(48) %1) #57, !inline_history !21740
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph
  %.pre = load i8, ptr %i.f, align 16, !alias.scope !26918
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = phi i8 [ %.pre, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !noundef !3
  %i.am = icmp ne i64 %i.al, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26924)
  %i.an = icmp ugt i8 %i.aj, 64
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ao = zext i1 %i.am to i128
  %i.ap = zext nneg i8 %i.aj to i128
  %i.aq = shl nuw nsw i128 %i.ao, %i.ap
  %i.ar = load i128, ptr %1, align 16, !alias.scope !26918, !noundef !3
  %i.as = or i128 %i.ar, %i.aq
  %i.at = add nuw i8 %i.aj, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.e:                                             ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.au = load i128, ptr %1, align 16, !alias.scope !26918, !noundef !3 ; 2 uses
  %i.av = trunc i128 %i.au to i64
  %i.aw = lshr i128 %i.au, 64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !26918, !noundef !3
  %i.az = xor i64 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 16, !alias.scope !26918, !nonnull !3, !align !311, !noundef !3
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !26918, !noundef !3
  %i.bd = zext i64 %i.az to i128
  %i.be = zext i64 %i.bc to i128
  %i.bf = xor i128 %i.aw, %i.be
  %i.bg = mul nuw i128 %i.bf, %i.bd               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %i.ax, align 8, !alias.scope !26918
  %i.bk = zext i1 %i.am to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.d, %bb.e
  %.sink = phi i128 [ %i.bk, %bb.e ], [ %i.as, %bb.d ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.e ], [ %i.at, %bb.d ] ; 2 uses
  store i128 %.sink, ptr %1, align 16, !alias.scope !26918
  store i8 %storemerge.i.i1, ptr %i.f, align 16, !alias.scope !26918
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ak, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr = load i8, ptr %i.f, align 16, !alias.scope !26925
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.bl = phi i8 [ %.pr, %bb.f ], [ %storemerge.i.i1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = load i8, ptr %i.bm, align 8, !range !2045, !noundef !3 ; 3 uses
  %i.bo = icmp ne i8 %i.bn, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26931)
  %i.bp = icmp ugt i8 %i.bl, 64
  br i1 %i.bp, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.g
  %i.bq = zext i1 %i.bo to i128
  %i.br = zext nneg i8 %i.bl to i128
  %i.bs = shl nuw nsw i128 %i.bq, %i.br
  %i.bt = load i128, ptr %1, align 16, !alias.scope !26925, !noundef !3
  %i.bu = or i128 %i.bt, %i.bs                    ; 4 uses
  store i128 %i.bu, ptr %1, align 16, !alias.scope !26925
  %i.bv = add nuw i8 %i.bl, 64
  store i8 %i.bv, ptr %i.f, align 16, !alias.scope !26925
  br i1 %i.bo, label %bb.h, label %bb.j

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.g
  %i.bw = load i128, ptr %1, align 16, !alias.scope !26925, !noundef !3 ; 2 uses
  %i.bx = trunc i128 %i.bw to i64
  %i.by = lshr i128 %i.bw, 64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !26925, !noundef !3
  %i.cb = xor i64 %i.ca, %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 16, !alias.scope !26925, !nonnull !3, !align !311, !noundef !3
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !26925, !noundef !3
  %i.cf = zext i64 %i.cb to i128
  %i.cg = zext i64 %i.ce to i128
  %i.ch = xor i128 %i.by, %i.cg
  %i.ci = mul nuw i128 %i.ch, %i.cf               ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  store i64 %i.cl, ptr %i.bz, align 8, !alias.scope !26925
  %i.cm = zext i1 %i.bo to i128
  store i128 %i.cm, ptr %1, align 16, !alias.scope !26925
  store i8 64, ptr %i.f, align 16, !alias.scope !26925
  br i1 %i.bo, label %.thread, label %bb.j

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26938)
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %bb.h
  %i.cn = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %i.bu, %bb.h ]
  %i.co = zext nneg i8 %i.bn to i128
  %i.cp = shl nuw nsw i128 %i.co, 64
  %i.cq = or i128 %i.cn, %i.cp
  br label %_RINvXsdj_NtCs4lawaffTVVK_9sqlparser3astNtB7_13CascadeOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  %i.cr = trunc i128 %i.bu to i64
  %i.cs = lshr i128 %i.bu, 64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_12
begin_hunk_13_@_RINvXsit_NtCs4lawaffTVVK_9sqlparser3astNtB7_8FunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  ]

bb.k:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i6
  unreachable

bb.l:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i6
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !28702, !noalias !28705, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.eb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !28702, !inline_history !28701
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8thread-pre-split

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i6
  tail call fastcc void @_RINvXsiN_NtCs4lawaffTVVK_9sqlparser3astNtB7_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !inline_history !28701
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8thread-pre-split

_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8thread-pre-split: ; preds = %bb.m, %bb.l
  %.pr = load i8, ptr %i.e, align 16, !alias.scope !28715
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8

_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8thread-pre-split, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i6
  %i.ec = phi i8 [ %.pr, %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8thread-pre-split ], [ %storemerge.i.i.i7, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i6 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ee = load ptr, ptr %i.ed, align 8, !align !311, !noundef !3 ; 2 uses
  %i.ef = icmp ne ptr %i.ee, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28721)
  %i.eg = icmp ugt i8 %i.ec, 64
  br i1 %i.eg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8
  %i.eh = zext i1 %i.ef to i128
  %i.ei = zext nneg i8 %i.ec to i128
  %i.ej = shl nuw nsw i128 %i.eh, %i.ei
  %i.ek = load i128, ptr %1, align 16, !alias.scope !28715, !noundef !3
  %i.el = or i128 %i.ek, %i.ej
  %i.em = add nuw i8 %i.ec, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.o:                                             ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8
  %i.en = load i128, ptr %1, align 16, !alias.scope !28715, !noundef !3 ; 2 uses
  %i.eo = trunc i128 %i.en to i64
  %i.ep = lshr i128 %i.en, 64
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !28715, !noundef !3
  %i.es = xor i64 %i.er, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eu = load ptr, ptr %i.et, align 16, !alias.scope !28715, !nonnull !3, !align !311, !noundef !3
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !28715, !noundef !3
  %i.ew = zext i64 %i.es to i128
  %i.ex = zext i64 %i.ev to i128
  %i.ey = xor i128 %i.ep, %i.ex
  %i.ez = mul nuw i128 %i.ey, %i.ew               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64
  store i64 %i.fc, ptr %i.eq, align 8, !alias.scope !28715
  %i.fd = zext i1 %i.ef to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.n, %bb.o
  %.sink51 = phi i128 [ %i.fd, %bb.o ], [ %i.el, %bb.n ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.o ], [ %i.em, %bb.n ] ; 2 uses
  store i128 %.sink51, ptr %1, align 16, !alias.scope !28715
  store i8 %storemerge.i.i3, ptr %i.e, align 16, !alias.scope !28715
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ee, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr26 = load i8, ptr %i.e, align 16, !alias.scope !28722
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.fe = phi i8 [ %.pr26, %bb.p ], [ %storemerge.i.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.fg = load i8, ptr %i.ff, align 1, !range !2045, !noundef !3 ; 3 uses
  %i.fh = icmp ne i8 %i.fg, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28728)
  %i.fi = icmp ugt i8 %i.fe, 64
  br i1 %i.fi, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.q
  %i.fj = zext i1 %i.fh to i128
  %i.fk = zext nneg i8 %i.fe to i128
  %i.fl = shl nuw nsw i128 %i.fj, %i.fk
  %i.fm = load i128, ptr %1, align 16, !alias.scope !28722, !noundef !3
  %i.fn = or i128 %i.fm, %i.fl                    ; 5 uses
  store i128 %i.fn, ptr %1, align 16, !alias.scope !28722
  %i.fo = add nuw i8 %i.fe, 64                    ; 2 uses
  store i8 %i.fo, ptr %i.e, align 16, !alias.scope !28722
  br i1 %i.fh, label %bb.r, label %bb.t

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread: ; preds = %bb.q
  %i.fp = load i128, ptr %1, align 16, !alias.scope !28722, !noundef !3 ; 2 uses
  %i.fq = trunc i128 %i.fp to i64
  %i.fr = lshr i128 %i.fp, 64
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !28722, !noundef !3
  %i.fu = xor i64 %i.ft, %i.fq
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 16, !alias.scope !28722, !nonnull !3, !align !311, !noundef !3
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !28722, !noundef !3
  %i.fy = zext i64 %i.fu to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = xor i128 %i.fr, %i.fz
  %i.gb = mul nuw i128 %i.ga, %i.fy               ; 2 uses
  %i.gc = lshr i128 %i.gb, 64
  %i.gd = xor i128 %i.gc, %i.gb
  %i.ge = trunc i128 %i.gd to i64
  store i64 %i.ge, ptr %i.fs, align 8, !alias.scope !28722
  %i.gf = zext i1 %i.fh to i128                   ; 2 uses
  store i128 %i.gf, ptr %1, align 16, !alias.scope !28722
  store i8 64, ptr %i.e, align 16, !alias.scope !28722
  br i1 %i.fh, label %.thread, label %.thread31

.thread31:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %i.gg = load i64, ptr %0, align 8, !range !321, !noundef !3 ; 2 uses
  %.not70 = icmp eq i64 %i.gg, 5                  ; 2 uses
  %i.gh = select i1 %.not70, i128 0, i128 18446744073709551616
  %i.gi = or disjoint i128 %i.gh, %i.gf           ; 2 uses
  store i128 %i.gi, ptr %1, align 16, !alias.scope !28729
  store i8 -128, ptr %i.e, align 16, !alias.scope !28729
  br i1 %.not70, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i11

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28740)
  %.not = icmp eq i8 %i.fe, 0
  br i1 %.not, label %.thread, label %bb.s

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, %bb.r
  %i.gj = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread ], [ %i.fn, %bb.r ]
  %i.gk = zext nneg i8 %i.fg to i128
  %i.gl = shl nuw nsw i128 %i.gk, 64
  %i.gm = or i128 %i.gj, %i.gl
  br label %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  %i.gn = trunc i128 %i.fn to i64
  %i.go = lshr i128 %i.fn, 64
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !28743, !noundef !3
  %i.gr = xor i64 %i.gq, %i.gn
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gt = load ptr, ptr %i.gs, align 16, !alias.scope !28743, !nonnull !3, !align !311, !noundef !3
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !28743, !noundef !3
  %i.gv = zext i64 %i.gr to i128
  %i.gw = zext i64 %i.gu to i128
  %i.gx = xor i128 %i.go, %i.gw
  %i.gy = mul nuw i128 %i.gx, %i.gv               ; 2 uses
  %i.gz = lshr i128 %i.gy, 64
  %i.ha = xor i128 %i.gz, %i.gy
  %i.hb = trunc i128 %i.ha to i64
  store i64 %i.hb, ptr %i.gp, align 8, !alias.scope !28743
  %i.hc = zext nneg i8 %i.fg to i128
  br label %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread, %bb.s
  %.sink.i = phi i128 [ %i.hc, %bb.s ], [ %i.gm, %.thread ] ; 2 uses
  %storemerge.i.i.i10 = phi i8 [ 64, %bb.s ], [ -128, %.thread ] ; 2 uses
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !28743
  store i8 %storemerge.i.i.i10, ptr %i.e, align 16, !alias.scope !28743
  br label %bb.t

bb.t:                                             ; preds = %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.hd = phi i128 [ %i.fn, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %.sink.i, %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.he = phi i8 [ %i.fo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %storemerge.i.i.i10, %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.hf = load i64, ptr %0, align 8, !range !321, !noundef !3 ; 5 uses
  %i.hg = icmp ne i64 %i.hf, 5                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28745)
  %i.hh = icmp ugt i8 %i.he, 64
  br i1 %i.hh, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hi = select i1 %i.hg, i128 18446744073709551616, i128 0
  %i.hj = or i128 %i.hd, %i.hi                    ; 2 uses
  store i128 %i.hj, ptr %1, align 16, !alias.scope !28729
  store i8 -128, ptr %i.e, align 16, !alias.scope !28729
  %extract.t = trunc i128 %i.hd to i64
  br i1 %i.hg, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i11, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.t
  %i.hk = trunc i128 %i.hd to i64
  %i.hl = lshr i128 %i.hd, 64
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !28729, !noundef !3
  %i.ho = xor i64 %i.hn, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hq = load ptr, ptr %i.hp, align 16, !alias.scope !28729, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !28729, !noundef !3
  %i.hs = zext i64 %i.ho to i128
  %i.ht = zext i64 %i.hr to i128
  %i.hu = xor i128 %i.hl, %i.ht
  %i.hv = mul nuw i128 %i.hu, %i.hs               ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = xor i128 %i.hw, %i.hv
  %i.hy = trunc i128 %i.hx to i64                 ; 2 uses
  store i64 %i.hy, ptr %i.hm, align 8, !alias.scope !28729
  %i.hz = zext i1 %i.hg to i128
  store i128 %i.hz, ptr %1, align 16, !alias.scope !28729
  store i8 64, ptr %i.e, align 16, !alias.scope !28729
  br i1 %i.hg, label %bb.v, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28746)
  %i.ia = icmp eq i64 %i.hf, 4                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28752)
  %i.ib = select i1 %i.ia, i128 18446744073709551617, i128 1
  store i128 %i.ib, ptr %1, align 16, !alias.scope !28755, !noalias !28756
  store i8 -128, ptr %i.e, align 16, !alias.scope !28755, !noalias !28756
  br i1 %i.ia, label %bb.w, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i11: ; preds = %.thread31, %bb.u
  %i.ic = phi i128 [ %i.gi, %.thread31 ], [ %i.hj, %bb.u ]
  %i.id = phi i64 [ %i.gg, %.thread31 ], [ %i.hf, %bb.u ] ; 3 uses
  %.off0 = phi i64 [ 0, %.thread31 ], [ %extract.t, %bb.u ]
  %i.ie = icmp eq i64 %i.id, 4                    ; 2 uses
  %i.if = lshr i128 %i.ic, 64
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !28755, !noalias !28756, !noundef !3
  %i.ii = xor i64 %i.ih, %.off0
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ik = load ptr, ptr %i.ij, align 16, !alias.scope !28755, !noalias !28756, !nonnull !3, !align !311, !noundef !3
  %i.il = load i64, ptr %i.ik, align 8, !noalias !28758, !noundef !3
  %i.im = zext i64 %i.ii to i128
  %i.in = zext i64 %i.il to i128
  %i.io = xor i128 %i.if, %i.in
  %i.ip = mul nuw i128 %i.io, %i.im               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64
  store i64 %i.is, ptr %i.ig, align 8, !alias.scope !28755, !noalias !28756
  %i.it = zext i1 %i.ie to i128
  store i128 %i.it, ptr %1, align 16, !alias.scope !28755, !noalias !28756
  store i8 64, ptr %i.e, align 16, !alias.scope !28755, !noalias !28756
  br i1 %i.ie, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i11
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.iu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !28759
  br label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28763)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !range !4, !alias.scope !28760, !noalias !28763, !noundef !3
  %.not45 = icmp eq i64 %i.iw, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28768)
  %i.ix = select i1 %.not45, i128 0, i128 18446744073709551616
  store i128 %i.ix, ptr %1, align 16, !alias.scope !28771, !noalias !28760
  store i8 -128, ptr %i.e, align 16, !alias.scope !28771, !noalias !28760
  br i1 %.not45, label %.thread68, label %bb.y

.thread68:                                        ; preds = %bb.x
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !28760, !noalias !28763, !nonnull !3, !noundef !3
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !28760, !noalias !28763, !noundef !3
  br label %bb.aa

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %bb.v
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !range !4, !alias.scope !28772, !noalias !28774, !noundef !3
  %i.je = icmp ne i64 %i.jd, -9223372036854775808 ; 2 uses
  %i.jf = xor i64 %i.hy, 1
  %i.jg = load i64, ptr %i.hq, align 8, !noalias !28776, !noundef !3
  %i.jh = zext i64 %i.jf to i128
  %i.ji = zext i64 %i.jg to i128
  %i.jj = mul nuw i128 %i.ji, %i.jh               ; 2 uses
  %i.jk = lshr i128 %i.jj, 64
  %i.jl = xor i128 %i.jk, %i.jj
  %i.jm = trunc i128 %i.jl to i64
  store i64 %i.jm, ptr %i.hm, align 8, !alias.scope !28771, !noalias !28760
  %i.jn = zext i1 %i.je to i128
  store i128 %i.jn, ptr %1, align 16, !alias.scope !28771, !noalias !28760
  store i8 64, ptr %i.e, align 16, !alias.scope !28771, !noalias !28760
  br i1 %i.je, label %bb.y, label %.thread69

.thread69:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !28760, !noalias !28763, !nonnull !3, !noundef !3
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jr = load i64, ptr %i.jq, align 8, !alias.scope !28760, !noalias !28763, !noundef !3
  br label %bb.z

bb.y:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i, %bb.x
  %i.js = phi i64 [ %i.id, %bb.x ], [ %i.hf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ] ; 2 uses
  %i.jt = phi ptr [ %i.iv, %bb.x ], [ %i.jc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.jt, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !28777
  %.pre53 = load i8, ptr %i.e, align 16, !alias.scope !28778, !noalias !28760 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !28760, !noalias !28763, !nonnull !3, !noundef !3 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !28760, !noalias !28763, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28787)
  %i.jy = icmp ugt i8 %.pre53, 64
  br i1 %i.jy, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread69, %bb.y
  %i.jz = phi i64 [ %i.jr, %.thread69 ], [ %i.jx, %bb.y ] ; 2 uses
  %i.ka = phi ptr [ %i.jp, %.thread69 ], [ %i.jv, %bb.y ]
  %i.kb = phi i64 [ %i.hf, %.thread69 ], [ %i.js, %bb.y ]
  %i.kc = phi i8 [ 64, %.thread69 ], [ %.pre53, %bb.y ] ; 2 uses
  %i.kd = zext i64 %i.jz to i128
  %i.ke = zext nneg i8 %i.kc to i128
  %i.kf = shl nuw i128 %i.kd, %i.ke
  %i.kg = load i128, ptr %1, align 16, !alias.scope !28778, !noalias !28760, !noundef !3
  %i.kh = or i128 %i.kg, %i.kf
  %i.ki = add nuw i8 %i.kc, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15

bb.aa:                                            ; preds = %.thread68, %bb.y
  %i.kj = phi i64 [ %i.jb, %.thread68 ], [ %i.jx, %bb.y ] ; 2 uses
  %i.kk = phi ptr [ %i.iz, %.thread68 ], [ %i.jv, %bb.y ]
  %i.kl = phi i64 [ %i.id, %.thread68 ], [ %i.js, %bb.y ]
  %i.km = load i128, ptr %1, align 16, !alias.scope !28778, !noalias !28760, !noundef !3 ; 2 uses
  %i.kn = trunc i128 %i.km to i64
  %i.ko = lshr i128 %i.km, 64
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !28778, !noalias !28760, !noundef !3
  %i.kr = xor i64 %i.kq, %i.kn
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kt = load ptr, ptr %i.ks, align 16, !alias.scope !28778, !noalias !28760, !nonnull !3, !align !311, !noundef !3
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !28788, !noundef !3
  %i.kv = zext i64 %i.kr to i128
  %i.kw = zext i64 %i.ku to i128
  %i.kx = xor i128 %i.ko, %i.kw
  %i.ky = mul nuw i128 %i.kx, %i.kv               ; 2 uses
  %i.kz = lshr i128 %i.ky, 64
  %i.la = xor i128 %i.kz, %i.ky
  %i.lb = trunc i128 %i.la to i64
  store i64 %i.lb, ptr %i.kp, align 8, !alias.scope !28778, !noalias !28760
  %i.lc = zext i64 %i.kj to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15: ; preds = %bb.aa, %bb.z
  %i.ld = phi i64 [ %i.kj, %bb.aa ], [ %i.jz, %bb.z ] ; 2 uses
  %i.le = phi ptr [ %i.kk, %bb.aa ], [ %i.ka, %bb.z ] ; 2 uses
  %i.lf = phi i64 [ %i.kl, %bb.aa ], [ %i.kb, %bb.z ]
  %.sink.i.i16 = phi i128 [ %i.lc, %bb.aa ], [ %i.kh, %bb.z ]
  %storemerge.i.i.i.i17 = phi i8 [ 64, %bb.aa ], [ %i.ki, %bb.z ] ; 2 uses
  store i128 %.sink.i.i16, ptr %1, align 16, !alias.scope !28778, !noalias !28760
  store i8 %storemerge.i.i.i.i17, ptr %i.e, align 16, !alias.scope !28778, !noalias !28760
  %.idx50 = mul nuw nsw i64 %i.ld, 328
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %.idx50
  %i.lh = icmp eq i64 %i.ld, 0
  br i1 %i.lh, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph49

.lr.ph49:                                         ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15, %.lr.ph49
  %.sroa.0.0.i.i1848 = phi ptr [ %i.li, %.lr.ph49 ], [ %i.le, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15 ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1848, i64 328 ; 2 uses
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i.i1848, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !28760, !inline_history !28789
  %i.lj = icmp eq ptr %i.li, %i.lg
  br i1 %i.lj, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit, label %.lr.ph49

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit: ; preds = %.lr.ph49
  %.pre54 = load i8, ptr %i.e, align 16, !alias.scope !28790, !noalias !28760
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15
  %i.lk = phi i8 [ %.pre54, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit ], [ %storemerge.i.i.i.i17, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i15 ] ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lm = load ptr, ptr %i.ll, align 8, !alias.scope !28760, !noalias !28763, !nonnull !3, !noundef !3
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !28760, !noalias !28763, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28799)
  %i.lp = icmp ugt i8 %i.lk, 64
  br i1 %i.lp, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lq = zext i64 %i.lo to i128
  %i.lr = zext nneg i8 %i.lk to i128
  %i.ls = shl nuw i128 %i.lq, %i.lr
  %i.lt = load i128, ptr %1, align 16, !alias.scope !28790, !noalias !28760, !noundef !3
  %i.lu = or i128 %i.lt, %i.ls
  %i.lv = add nuw i8 %i.lk, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i

bb.ac:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lw = load i128, ptr %1, align 16, !alias.scope !28790, !noalias !28760, !noundef !3 ; 2 uses
  %i.lx = trunc i128 %i.lw to i64
  %i.ly = lshr i128 %i.lw, 64
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !28790, !noalias !28760, !noundef !3
  %i.mb = xor i64 %i.ma, %i.lx
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.md = load ptr, ptr %i.mc, align 16, !alias.scope !28790, !noalias !28760, !nonnull !3, !align !311, !noundef !3
  %i.me = load i64, ptr %i.md, align 8, !noalias !28800, !noundef !3
  %i.mf = zext i64 %i.mb to i128
  %i.mg = zext i64 %i.me to i128
  %i.mh = xor i128 %i.ly, %i.mg
  %i.mi = mul nuw i128 %i.mh, %i.mf               ; 2 uses
  %i.mj = lshr i128 %i.mi, 64
  %i.mk = xor i128 %i.mj, %i.mi
  %i.ml = trunc i128 %i.mk to i64
  store i64 %i.ml, ptr %i.lz, align 8, !alias.scope !28790, !noalias !28760
  %i.mm = zext i64 %i.lo to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i: ; preds = %bb.ac, %bb.ab
  %.sink.i3.i = phi i128 [ %i.mm, %bb.ac ], [ %i.lu, %bb.ab ]
  %storemerge.i.i.i4.i = phi i8 [ 64, %bb.ac ], [ %i.lv, %bb.ab ]
  store i128 %.sink.i3.i, ptr %1, align 16, !alias.scope !28790, !noalias !28760
  store i8 %storemerge.i.i.i4.i, ptr %i.e, align 16, !alias.scope !28790, !noalias !28760
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lm, i64 noundef %i.lo, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !28760, !inline_history !28777
  %i.mn = icmp ne i64 %i.lf, 3                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28804)
  %i.mo = load i8, ptr %i.e, align 16, !alias.scope !28807, !noalias !28760, !noundef !3 ; 4 uses
  %i.mp = icmp ugt i8 %i.mo, 64
  br i1 %i.mp, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i
  %i.mq = zext i1 %i.mn to i128
  %i.mr = zext nneg i8 %i.mo to i128
  %i.ms = shl nuw nsw i128 %i.mq, %i.mr
  %i.mt = load i128, ptr %1, align 16, !alias.scope !28807, !noalias !28760, !noundef !3
  %i.mu = or i128 %i.mt, %i.ms                    ; 4 uses
  store i128 %i.mu, ptr %1, align 16, !alias.scope !28807, !noalias !28760
  %i.mv = add nuw i8 %i.mo, 64
  store i8 %i.mv, ptr %i.e, align 16, !alias.scope !28807, !noalias !28760
  br i1 %i.mn, label %bb.ad, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i
  %i.mw = load i128, ptr %1, align 16, !alias.scope !28807, !noalias !28760, !noundef !3 ; 2 uses
  %i.mx = trunc i128 %i.mw to i64
  %i.my = lshr i128 %i.mw, 64
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !28807, !noalias !28760, !noundef !3
  %i.nb = xor i64 %i.na, %i.mx
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nd = load ptr, ptr %i.nc, align 16, !alias.scope !28807, !noalias !28760, !nonnull !3, !align !311, !noundef !3
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !28808, !noundef !3
  %i.nf = zext i64 %i.nb to i128
  %i.ng = zext i64 %i.ne to i128
  %i.nh = xor i128 %i.my, %i.ng
  %i.ni = mul nuw i128 %i.nh, %i.nf               ; 2 uses
  %i.nj = lshr i128 %i.ni, 64
  %i.nk = xor i128 %i.nj, %i.ni
  %i.nl = trunc i128 %i.nk to i64
  store i64 %i.nl, ptr %i.mz, align 8, !alias.scope !28807, !noalias !28760
  %i.nm = zext i1 %i.mn to i128
  store i128 %i.nm, ptr %1, align 16, !alias.scope !28807, !noalias !28760
  store i8 64, ptr %i.e, align 16, !alias.scope !28807, !noalias !28760
  br i1 %i.mn, label %.thread40, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

end_hunk_13
begin_hunk_14_@_RINvXsn0_NtCs4lawaffTVVK_9sqlparser3astNtB7_9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fd, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  br label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fe, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fg = load i8, ptr %i.ff, align 8, !range !2045, !noundef !3 ; 3 uses
  %i.fh = icmp ne i8 %i.fg, 2                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29388)
  %i.fi = load i8, ptr %i.f, align 16, !alias.scope !29391, !noundef !3 ; 4 uses
  %i.fj = icmp ugt i8 %i.fi, 64
  br i1 %i.fj, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.s
  %i.fk = zext i1 %i.fh to i128
  %i.fl = zext nneg i8 %i.fi to i128
  %i.fm = shl nuw nsw i128 %i.fk, %i.fl
  %i.fn = load i128, ptr %1, align 16, !alias.scope !29391, !noundef !3
  %i.fo = or i128 %i.fn, %i.fm                    ; 5 uses
  store i128 %i.fo, ptr %1, align 16, !alias.scope !29391
  %i.fp = add nuw i8 %i.fi, 64                    ; 2 uses
  store i8 %i.fp, ptr %i.f, align 16, !alias.scope !29391
  br i1 %i.fh, label %bb.ak, label %bb.am

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.s
  %i.fq = load i128, ptr %1, align 16, !alias.scope !29391, !noundef !3 ; 2 uses
  %i.fr = trunc i128 %i.fq to i64
  %i.fs = lshr i128 %i.fq, 64
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !29391, !noundef !3
  %i.fv = xor i64 %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fx = load ptr, ptr %i.fw, align 16, !alias.scope !29391, !nonnull !3, !align !311, !noundef !3
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !29391, !noundef !3
  %i.fz = zext i64 %i.fv to i128
  %i.ga = zext i64 %i.fy to i128
  %i.gb = xor i128 %i.fs, %i.ga
  %i.gc = mul nuw i128 %i.gb, %i.fz               ; 2 uses
  %i.gd = lshr i128 %i.gc, 64
  %i.ge = xor i128 %i.gd, %i.gc
  %i.gf = trunc i128 %i.ge to i64
  store i64 %i.gf, ptr %i.ft, align 8, !alias.scope !29391
  br i1 %i.fh, label %.thread, label %.thread41

.thread41:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !3, !noundef !3
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gj = load i64, ptr %i.gi, align 8, !noundef !3
  br label %bb.an

bb.t:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXsx0_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CommentDefNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gk, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  br label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29395)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !29392, !noalias !29395, !nonnull !3, !noundef !3 ; 8 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !29392, !noalias !29395, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29405)
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !29407, !noalias !29408, !noundef !3 ; 2 uses
  %i.gr = tail call noundef i64 @llvm.fshr.i64(i64 %i.gq, i64 %i.gq, i64 %i.go) ; 6 uses
  store i64 %i.gr, ptr %i.gp, align 8, !alias.scope !29407, !noalias !29408
  %i.gs = icmp samesign ult i64 %i.go, 17
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gu = load ptr, ptr %i.gt, align 16, !alias.scope !29407, !noalias !29408, !nonnull !3, !align !311, !noundef !3 ; 5 uses
  br i1 %i.gs, label %bb.w, label %bb.v, !prof !106

bb.v:                                             ; preds = %bb.u
  %i.gv = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gm, i64 noundef range(i64 0, -9223372036854775808) %i.go, i64 noundef %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gu) #58, !noalias !29409
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29413)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !29413, !noalias !29415, !noundef !3 ; 4 uses
  %i.gy = icmp samesign ugt i64 %i.go, 7
  br i1 %i.gy, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gz = icmp samesign ugt i64 %i.go, 3
  br i1 %i.gz, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.w
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.gm, align 1, !alias.scope !29416, !noalias !29417
  %i.ha = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.gr
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.go
  %i.hc = getelementptr i8, ptr %i.hb, i64 -8
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.hc, align 1, !alias.scope !29416, !noalias !29417
  %i.hd = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.gx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.z

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.x
  %i.he = getelementptr i8, ptr %i.gm, i64 %i.go
  %i.hf = getelementptr i8, ptr %i.he, i64 -4
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.hf, align 1, !alias.scope !29416, !noalias !29417
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %i.gm, align 1, !alias.scope !29416, !noalias !29417
  %i.hg = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64
  %i.hh = xor i64 %i.gr, %i.hg
  %i.hi = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.hj = xor i64 %i.gx, %i.hi
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.hk = load i8, ptr %i.gm, align 1, !alias.scope !29416, !noalias !29417, !noundef !3
  %i.hl = lshr i64 %i.go, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !29416, !noalias !29417, !noundef !3
  %i.ho = getelementptr i8, ptr %i.gm, i64 %i.go
  %i.hp = getelementptr i8, ptr %i.ho, i64 -1
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !29416, !noalias !29417, !noundef !3
  %i.hr = zext i8 %i.hk to i64
  %i.hs = xor i64 %i.gr, %i.hr
  %i.ht = zext i8 %i.hq to i64
  %i.hu = shl nuw nsw i64 %i.ht, 8
  %i.hv = zext i8 %i.hn to i64
  %i.hw = or disjoint i64 %i.hu, %i.hv
  %i.hx = xor i64 %i.hw, %i.gx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.z, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.y, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.hd, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.hj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.hx, %bb.z ], [ %i.gx, %bb.y ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ha, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.hh, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.hs, %bb.z ], [ %i.gr, %bb.y ]
  %i.hy = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.hz = zext i64 %.sroa.04.0.i.i.i.i to i128
  %i.ia = mul nuw i128 %i.hy, %i.hz               ; 2 uses
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = xor i128 %i.ib, %i.ia
  %i.id = trunc i128 %i.ic to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, %bb.v
  %i.ie = phi i64 [ %i.gv, %bb.v ], [ %i.id, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i ] ; 3 uses
  store i64 %i.ie, ptr %i.gp, align 8, !alias.scope !29407, !noalias !29408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29421)
  %i.if = icmp ugt i8 %storemerge.i.i1, 120
  br i1 %i.if, label %bb.aa, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.aa:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i
  %i.ig = load i128, ptr %1, align 16, !alias.scope !29424, !noalias !29425, !noundef !3 ; 2 uses
  %i.ih = trunc i128 %i.ig to i64
  %i.ii = lshr i128 %i.ig, 64
  %i.ij = xor i64 %i.ie, %i.ih
  %i.ik = load i64, ptr %i.gu, align 8, !noalias !29426, !noundef !3
  %i.il = zext i64 %i.ij to i128
  %i.im = zext i64 %i.ik to i128
  %i.in = xor i128 %i.ii, %i.im
  %i.io = mul nuw i128 %i.in, %i.il               ; 2 uses
  %i.ip = lshr i128 %i.io, 64
  %i.iq = xor i128 %i.ip, %i.io                   ; 2 uses
  %i.ir = trunc i128 %i.iq to i64
  store i64 %i.ir, ptr %i.gp, align 8, !alias.scope !29424, !noalias !29425
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.it = load i8, ptr %i.is, align 8, !range !2045, !alias.scope !29392, !noalias !29395, !noundef !3 ; 2 uses
  %.not = icmp eq i8 %i.it, 2                     ; 2 uses
  %i.iu = select i1 %.not, i128 255, i128 511
  store i128 %i.iu, ptr %1, align 16, !alias.scope !29427, !noalias !29392
  store i8 72, ptr %i.f, align 16, !alias.scope !29427, !noalias !29392
  br i1 %.not, label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ac

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i
  %i.iv = zext nneg i8 %storemerge.i.i1 to i128
  %i.iw = shl nuw i128 255, %i.iv
  %i.ix = load i128, ptr %1, align 16, !alias.scope !29424, !noalias !29425, !noundef !3
  %i.iy = or i128 %i.ix, %i.iw                    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ja = load i8, ptr %i.iz, align 8, !range !2045, !alias.scope !29392, !noalias !29395, !noundef !3 ; 2 uses
  %i.jb = icmp ne i8 %i.ja, 2                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29433)
  %i.jc = trunc i128 %i.iy to i64
  %i.jd = lshr i128 %i.iy, 64
  %i.je = xor i64 %i.ie, %i.jc
  %i.jf = load i64, ptr %i.gu, align 8, !noalias !29434, !noundef !3
  %i.jg = zext i64 %i.je to i128
  %i.jh = zext i64 %i.jf to i128
  %i.ji = xor i128 %i.jd, %i.jh
  %i.jj = mul nuw i128 %i.ji, %i.jg               ; 2 uses
  %i.jk = lshr i128 %i.jj, 64
  %i.jl = xor i128 %i.jk, %i.jj
  %i.jm = trunc i128 %i.jl to i64
  store i64 %i.jm, ptr %i.gp, align 8, !alias.scope !29427, !noalias !29392
  %i.jn = zext i1 %i.jb to i128
  store i128 %i.jn, ptr %1, align 16, !alias.scope !29427, !noalias !29392
  store i8 64, ptr %i.f, align 16, !alias.scope !29427, !noalias !29392
  br i1 %i.jb, label %bb.ab, label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ab:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29438)
  %i.jo = zext nneg i8 %i.ja to i128
  %i.jp = shl nuw nsw i128 %i.jo, 64
  %i.jq = or disjoint i128 %i.jp, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i3

bb.ac:                                            ; preds = %bb.aa
  %i.jr = load i64, ptr %i.gu, align 8, !noalias !29441, !noundef !3
  %.masked = and i128 %i.iq, 18446744073709551615
  %i.js = xor i128 %.masked, 511
  %i.jt = zext i64 %i.jr to i128
  %i.ju = mul nuw i128 %i.js, %i.jt               ; 2 uses
  %i.jv = lshr i128 %i.ju, 64
  %i.jw = xor i128 %i.jv, %i.ju
  %i.jx = trunc i128 %i.jw to i64
  store i64 %i.jx, ptr %i.gp, align 8, !alias.scope !29442, !noalias !29392
  %i.jy = zext nneg i8 %i.it to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i3

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i3: ; preds = %bb.ac, %bb.ab
  %storemerge.i = phi i128 [ %i.jq, %bb.ab ], [ %i.jy, %bb.ac ]
  %storemerge.i.i.i4 = phi i8 [ -128, %bb.ab ], [ 64, %bb.ac ]
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !29442, !noalias !29392
  store i8 %storemerge.i.i.i4, ptr %i.f, align 16, !alias.scope !29442, !noalias !29392
  br label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29446)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.jz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !range !4, !alias.scope !29443, !noalias !29446, !noundef !3
  %i.kc = icmp ne i64 %i.kb, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29451)
  %i.kd = load i8, ptr %i.f, align 16, !alias.scope !29454, !noalias !29443, !noundef !3 ; 3 uses
  %i.ke = icmp ugt i8 %i.kd, 64
  br i1 %i.ke, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kf = zext i1 %i.kc to i128
  %i.kg = zext nneg i8 %i.kd to i128
  %i.kh = shl nuw nsw i128 %i.kf, %i.kg
  %i.ki = load i128, ptr %1, align 16, !alias.scope !29454, !noalias !29443, !noundef !3
  %i.kj = or i128 %i.ki, %i.kh
  %i.kk = add nuw i8 %i.kd, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i5

bb.af:                                            ; preds = %bb.ad
  %i.kl = load i128, ptr %1, align 16, !alias.scope !29454, !noalias !29443, !noundef !3 ; 2 uses
  %i.km = trunc i128 %i.kl to i64
  %i.kn = lshr i128 %i.kl, 64
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !29454, !noalias !29443, !noundef !3
  %i.kq = xor i64 %i.kp, %i.km
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ks = load ptr, ptr %i.kr, align 16, !alias.scope !29454, !noalias !29443, !nonnull !3, !align !311, !noundef !3
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !29455, !noundef !3
  %i.ku = zext i64 %i.kq to i128
  %i.kv = zext i64 %i.kt to i128
  %i.kw = xor i128 %i.kn, %i.kv
  %i.kx = mul nuw i128 %i.kw, %i.ku               ; 2 uses
  %i.ky = lshr i128 %i.kx, 64
  %i.kz = xor i128 %i.ky, %i.kx
  %i.la = trunc i128 %i.kz to i64
  store i64 %i.la, ptr %i.ko, align 8, !alias.scope !29454, !noalias !29443
  %i.lb = zext i1 %i.kc to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i5

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i5: ; preds = %bb.af, %bb.ae
  %.sink.i = phi i128 [ %i.lb, %bb.af ], [ %i.kj, %bb.ae ]
  %storemerge.i.i.i6 = phi i8 [ 64, %bb.af ], [ %i.kk, %bb.ae ] ; 2 uses
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !29454, !noalias !29443
  store i8 %storemerge.i.i.i6, ptr %i.f, align 16, !alias.scope !29454, !noalias !29443
  br i1 %i.kc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i5
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ka, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pre.i = load i8, ptr %i.f, align 16, !alias.scope !29456, !noalias !29443
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i5
  %i.lc = phi i8 [ %.pre.i, %bb.ag ], [ %storemerge.i.i.i6, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i5 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.le = load ptr, ptr %i.ld, align 8, !alias.scope !29443, !noalias !29446, !nonnull !3, !noundef !3 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lg = load i64, ptr %i.lf, align 8, !alias.scope !29443, !noalias !29446, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29465)
  %i.lh = icmp ugt i8 %i.lc, 64
  br i1 %i.lh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.li = zext i64 %i.lg to i128
  %i.lj = zext nneg i8 %i.lc to i128
  %i.lk = shl nuw i128 %i.li, %i.lj
  %i.ll = load i128, ptr %1, align 16, !alias.scope !29456, !noalias !29443, !noundef !3
  %i.lm = or i128 %i.ll, %i.lk
  %i.ln = add nuw i8 %i.lc, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i7

bb.aj:                                            ; preds = %bb.ah
  %i.lo = load i128, ptr %1, align 16, !alias.scope !29456, !noalias !29443, !noundef !3 ; 2 uses
  %i.lp = trunc i128 %i.lo to i64
  %i.lq = lshr i128 %i.lo, 64
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !alias.scope !29456, !noalias !29443, !noundef !3
  %i.lt = xor i64 %i.ls, %i.lp
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lv = load ptr, ptr %i.lu, align 16, !alias.scope !29456, !noalias !29443, !nonnull !3, !align !311, !noundef !3
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !29466, !noundef !3
  %i.lx = zext i64 %i.lt to i128
  %i.ly = zext i64 %i.lw to i128
  %i.lz = xor i128 %i.lq, %i.ly
  %i.ma = mul nuw i128 %i.lz, %i.lx               ; 2 uses
  %i.mb = lshr i128 %i.ma, 64
  %i.mc = xor i128 %i.mb, %i.ma
  %i.md = trunc i128 %i.mc to i64
  store i64 %i.md, ptr %i.lr, align 8, !alias.scope !29456, !noalias !29443
  %i.me = zext i64 %i.lg to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i7

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i7: ; preds = %bb.aj, %bb.ai
  %.sink.i.i8 = phi i128 [ %i.me, %bb.aj ], [ %i.lm, %bb.ai ]
  %storemerge.i.i.i.i9 = phi i8 [ 64, %bb.aj ], [ %i.ln, %bb.ai ]
  store i128 %.sink.i.i8, ptr %1, align 16, !alias.scope !29456, !noalias !29443
  store i8 %storemerge.i.i.i.i9, ptr %i.f, align 16, !alias.scope !29456, !noalias !29443
  %.idx.i.i10 = shl nuw nsw i64 %i.lg, 6
  %i.mf = getelementptr inbounds nuw i8, ptr %i.le, i64 %.idx.i.i10
  %i.mg = icmp eq i64 %i.lg, 0
  br i1 %i.mg, label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i7, %.lr.ph.i.i11
  %.sroa.0.03.i.i12 = phi ptr [ %i.mh, %.lr.ph.i.i11 ], [ %i.le, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i7 ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i12, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i.i12, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !29443
  %i.mi = icmp eq ptr %i.mh, %i.mf
  br i1 %i.mi, label %_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i11

_RINvXsmG_NtCs4lawaffTVVK_9sqlparser3astNtB7_21TableOptionsClusteredNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i11, %.lr.ph, %_RINvXsmw_NtCs4lawaffTVVK_9sqlparser3astNtB7_14ClusteredIndexNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i7, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i, %bb.aa, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit3.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, %bb.t, %bb.r, %bb.q
  ret void

bb.ak:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29473)
  %.not22 = icmp eq i8 %i.fi, 0
  br i1 %.not22, label %.thread, label %bb.al

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %bb.ak
  %i.mj = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %i.fo, %bb.ak ]
  %i.mk = zext nneg i8 %i.fg to i128
  %i.ml = shl nuw nsw i128 %i.mk, 64
  %i.mm = or i128 %i.mj, %i.ml
  br label %_RINvXsmQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_23PartitionRangeDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %bb.ak
  %i.mn = trunc i128 %i.fo to i64
  %i.mo = lshr i128 %i.fo, 64
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !29476, !noundef !3
  %i.mr = xor i64 %i.mq, %i.mn
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mt = load ptr, ptr %i.ms, align 16, !alias.scope !29476, !nonnull !3, !align !311, !noundef !3
  %i.mu = load i64, ptr %i.mt, align 8, !noalias !29476, !noundef !3
  %i.mv = zext i64 %i.mr to i128
  %i.mw = zext i64 %i.mu to i128
  %i.mx = xor i128 %i.mo, %i.mw
  %i.my = mul nuw i128 %i.mx, %i.mv               ; 2 uses
  %i.mz = lshr i128 %i.my, 64
  %i.na = xor i128 %i.mz, %i.my
  %i.nb = trunc i128 %i.na to i64
  store i64 %i.nb, ptr %i.mp, align 8, !alias.scope !29476
  %i.nc = zext nneg i8 %i.fg to i128
  br label %_RINvXsmQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_23PartitionRangeDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsmQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_23PartitionRangeDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread, %bb.al
  %.sink.i14 = phi i128 [ %i.nc, %bb.al ], [ %i.mm, %.thread ] ; 2 uses
  %storemerge.i.i.i15 = phi i8 [ 64, %bb.al ], [ -128, %.thread ] ; 2 uses
  store i128 %.sink.i14, ptr %1, align 16, !alias.scope !29476
  store i8 %storemerge.i.i.i15, ptr %i.f, align 16, !alias.scope !29476
  br label %bb.am

bb.am:                                            ; preds = %_RINvXsmQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_23PartitionRangeDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.nd = phi i128 [ %i.fo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ], [ %.sink.i14, %_RINvXsmQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_23PartitionRangeDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.ne = phi i8 [ %i.fp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ], [ %storemerge.i.i.i15, %_RINvXsmQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_23PartitionRangeDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ng = load ptr, ptr %i.nf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ni = load i64, ptr %i.nh, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29483)
  %i.nj = icmp ugt i8 %i.ne, 64
  br i1 %i.nj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread41, %bb.am
  %i.nk = phi i64 [ %i.gj, %.thread41 ], [ %i.ni, %bb.am ] ; 2 uses
  %i.nl = phi ptr [ %i.gh, %.thread41 ], [ %i.ng, %bb.am ]
  %i.nm = phi i128 [ 0, %.thread41 ], [ %i.nd, %bb.am ]
  %i.nn = zext i64 %i.nk to i128
  %i.no = shl nuw i128 %i.nn, 64
end_hunk_14
begin_hunk_15_@_RINvXswG_NtCs4lawaffTVVK_9sqlparser3astNtB7_3TagNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ch = add nuw i8 %i.cb, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.ci = load i128, ptr %1, align 16, !alias.scope !33053, !noalias !33030, !noundef !3 ; 2 uses
  %i.cj = trunc i128 %i.ci to i64
  %i.ck = lshr i128 %i.ci, 64
  %i.cl = xor i64 %storemerge.i.i, %i.cj
  %i.cm = load i64, ptr %i.ar, align 8, !noalias !33053, !noundef !3
  %i.cn = zext i64 %i.cl to i128
  %i.co = zext i64 %i.cm to i128
  %i.cp = xor i128 %i.ck, %i.co
  %i.cq = mul nuw i128 %i.cp, %i.cn               ; 2 uses
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = xor i128 %i.cr, %i.cq
  %i.ct = trunc i128 %i.cs to i64
  store i64 %i.ct, ptr %i.am, align 8, !alias.scope !33053, !noalias !33030
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i128 [ 255, %bb.j ], [ %i.cg, %bb.i ]
  %storemerge.i.i.i = phi i8 [ 8, %bb.j ], [ %i.ch, %bb.i ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !33053, !noalias !33030
  store i8 %storemerge.i.i.i, ptr %i.e, align 16, !alias.scope !33053, !noalias !33030
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXswI_NtCs4lawaffTVVK_9sqlparser3astNtB7_3TagNtNtB7_7visitor8VisitMut5visitINtBM_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1E_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2L_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3u_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXswc_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !1802, !noundef !3 ; 3 uses
  %i.c = icmp ne i8 %i.b, 3                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33057)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.e = load i8, ptr %i.d, align 16, !alias.scope !33060, !noundef !3 ; 4 uses
  %i.f = icmp ugt i8 %i.e, 64
  br i1 %i.f, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.a
  %i.g = zext i1 %i.c to i128
  %i.h = zext nneg i8 %i.e to i128
  %i.i = shl nuw nsw i128 %i.g, %i.h
  %i.j = load i128, ptr %1, align 16, !alias.scope !33060, !noundef !3
  %i.k = or i128 %i.j, %i.i                       ; 4 uses
  %i.l = add nuw i8 %i.e, 64
  br i1 %i.c, label %bb.b, label %_RINvXsvS_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CreateViewAlgorithmNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread: ; preds = %bb.a
  %i.m = load i128, ptr %1, align 16, !alias.scope !33060, !noundef !3 ; 2 uses
  %i.n = trunc i128 %i.m to i64
  %i.o = lshr i128 %i.m, 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !33060, !noundef !3
  %i.r = xor i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !alias.scope !33060, !nonnull !3, !align !311, !noundef !3
  %i.u = load i64, ptr %i.t, align 8, !noalias !33060, !noundef !3
  %i.v = zext i64 %i.r to i128
  %i.w = zext i64 %i.u to i128
  %i.x = xor i128 %i.o, %i.w
  %i.y = mul nuw i128 %i.x, %i.v                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  store i64 %i.ab, ptr %i.p, align 8, !alias.scope !33060
  br i1 %i.c, label %.thread, label %.thread16

.thread16:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.ac = load i64, ptr %0, align 8, !range !322, !noundef !3 ; 2 uses
  %.not33 = icmp eq i64 %i.ac, -9223372036854775807 ; 2 uses
  %i.ad = select i1 %.not33, i128 0, i128 18446744073709551616 ; 3 uses
  store i128 %i.ad, ptr %1, align 16, !alias.scope !33061
  store i8 -128, ptr %i.d, align 16, !alias.scope !33061
  br i1 %.not33, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33072)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, %bb.b
  %i.ae = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread ], [ %i.k, %bb.b ]
  %i.af = zext nneg i8 %i.b to i128
  %i.ag = shl nuw nsw i128 %i.af, 64
  %i.ah = or i128 %i.ae, %i.ag
  br label %_RINvXsvS_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CreateViewAlgorithmNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = trunc i128 %i.k to i64
  %i.aj = lshr i128 %i.k, 64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !33075, !noundef !3
  %i.am = xor i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 16, !alias.scope !33075, !nonnull !3, !align !311, !noundef !3
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !33075, !noundef !3
  %i.aq = zext i64 %i.am to i128
  %i.ar = zext i64 %i.ap to i128
  %i.as = xor i128 %i.aj, %i.ar
  %i.at = mul nuw i128 %i.as, %i.aq               ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = xor i128 %i.au, %i.at
  %i.aw = trunc i128 %i.av to i64
  store i64 %i.aw, ptr %i.ak, align 8, !alias.scope !33075
  %i.ax = zext nneg i8 %i.b to i128
  br label %_RINvXsvS_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CreateViewAlgorithmNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsvS_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CreateViewAlgorithmNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ay = phi i128 [ %i.k, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ %i.ax, %bb.c ], [ %i.ah, %.thread ] ; 4 uses
  %i.az = phi i8 [ %i.l, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 64, %bb.c ], [ -128, %.thread ]
  %i.ba = load i64, ptr %0, align 8, !range !322, !noundef !3 ; 3 uses
  %.not34 = icmp eq i64 %i.ba, -9223372036854775807 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33077)
  %i.bb = icmp ugt i8 %i.az, 64
  br i1 %i.bb, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.d

bb.d:                                             ; preds = %_RINvXsvS_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CreateViewAlgorithmNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bc = select i1 %.not34, i128 0, i128 18446744073709551616
  %i.bd = or i128 %i.ay, %i.bc                    ; 3 uses
  store i128 %i.bd, ptr %1, align 16, !alias.scope !33061
  store i8 -128, ptr %i.d, align 16, !alias.scope !33061
  %extract.t = trunc i128 %i.ay to i64
  br i1 %.not34, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.thread16, %bb.d
  %i.be = phi i128 [ %i.ad, %.thread16 ], [ %i.bd, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load i8, ptr %i.bf, align 8, !range !2045, !noundef !3 ; 2 uses
  %i.bh = icmp ne i8 %i.bg, 2                     ; 2 uses
  %i.bi = zext i1 %i.bh to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsvS_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CreateViewAlgorithmNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bj = trunc i128 %i.ay to i64
  %i.bk = lshr i128 %i.ay, 64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !33061, !noundef !3
  %i.bn = xor i64 %i.bm, %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 16, !alias.scope !33061, !nonnull !3, !align !311, !noundef !3
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !33061, !noundef !3
  %i.br = zext i64 %i.bn to i128
  %i.bs = zext i64 %i.bq to i128                  ; 2 uses
  %i.bt = xor i128 %i.bk, %i.bs
  %i.bu = mul nuw i128 %i.bt, %i.br               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64
  %i.bw = xor i128 %i.bv, %i.bu
  %i.bx = trunc i128 %i.bw to i64                 ; 2 uses
  store i64 %i.bx, ptr %i.bl, align 8, !alias.scope !33061
  br i1 %.not34, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23, label %bb.e

_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load i8, ptr %i.by, align 8, !range !2045, !noundef !3 ; 2 uses
  %i.ca = icmp ne i8 %i.bz, 2                     ; 2 uses
  %i.cb = zext i1 %i.ca to i64
  br label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33078)
  %.not28 = icmp eq i64 %i.ba, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33084)
  %i.cc = select i1 %.not28, i128 1, i128 18446744073709551617
  store i128 %i.cc, ptr %1, align 16, !alias.scope !33087, !noalias !33088
  store i8 -128, ptr %i.d, align 16, !alias.scope !33087, !noalias !33088
  br i1 %.not28, label %bb.h, label %bb.f

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %.thread16, %bb.d
  %i.cd = phi i128 [ %i.ad, %.thread16 ], [ %i.bd, %bb.d ]
  %i.ce = phi i64 [ %i.ac, %.thread16 ], [ %i.ba, %bb.d ]
  %.off0 = phi i64 [ 0, %.thread16 ], [ %extract.t, %bb.d ]
  %i.cf = icmp ne i64 %i.ce, -9223372036854775808 ; 2 uses
  %i.cg = lshr i128 %i.cd, 64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !33087, !noalias !33088, !noundef !3
  %i.cj = xor i64 %i.ci, %.off0
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 16, !alias.scope !33087, !noalias !33088, !nonnull !3, !align !311, !noundef !3
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !33090, !noundef !3
  %i.cn = zext i64 %i.cj to i128
  %i.co = zext i64 %i.cm to i128
  %i.cp = xor i128 %i.cg, %i.co
  %i.cq = mul nuw i128 %i.cp, %i.cn               ; 2 uses
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = xor i128 %i.cr, %i.cq
  %i.ct = trunc i128 %i.cs to i64
  store i64 %i.ct, ptr %i.ch, align 8, !alias.scope !33087, !noalias !33088
  %i.cu = zext i1 %i.cf to i128
  store i128 %i.cu, ptr %1, align 16, !alias.scope !33087, !noalias !33088
  store i8 64, ptr %i.d, align 16, !alias.scope !33087, !noalias !33088
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !26883
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !26883
  br label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33094)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !33097, !noalias !33098, !nonnull !3, !noundef !3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !33097, !noalias !33098, !noundef !3 ; 2 uses
  %i.da = zext i64 %i.cz to i128
  %i.db = shl nuw i128 %i.da, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !33101, !noalias !33104, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !33101, !noalias !33104, !noundef !3 ; 2 uses
  %i.dg = xor i64 %i.bx, 1
  %i.dh = zext i64 %i.dg to i128
  %i.di = mul nuw i128 %i.bs, %i.dh               ; 2 uses
  %i.dj = lshr i128 %i.di, 64
  %i.dk = xor i128 %i.dj, %i.di
  %i.dl = trunc i128 %i.dk to i64
  store i64 %i.dl, ptr %i.bl, align 8, !alias.scope !33107, !noalias !33097
  %i.dm = zext i64 %i.df to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.h
  %i.dn = phi i64 [ %i.df, %bb.h ], [ %i.cz, %bb.g ]
  %i.do = phi ptr [ %i.dd, %bb.h ], [ %i.cx, %bb.g ]
  %.sink.i10 = phi i128 [ %i.dm, %bb.h ], [ %i.db, %bb.g ]
  %storemerge.i.i.i11 = phi i8 [ 64, %bb.h ], [ -128, %bb.g ]
  store i128 %.sink.i10, ptr %1, align 16, !alias.scope !33107, !noalias !33097
  store i8 %storemerge.i.i.i11, ptr %i.d, align 16, !alias.scope !33107, !noalias !33097
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.do, i64 noundef %i.dn, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !33097, !inline_history !26907
  br label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %bb.f
  %.pr = load i8, ptr %i.d, align 16, !alias.scope !33114 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dq = load i8, ptr %i.dp, align 8, !range !2045, !noundef !3 ; 3 uses
  %i.dr = icmp ne i8 %i.dq, 2                     ; 3 uses
  %i.ds = zext i1 %i.dr to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33120)
  %i.dt = icmp ugt i8 %.pr, 64
  %.pre30 = load i128, ptr %1, align 16, !alias.scope !33114 ; 2 uses
  br i1 %i.dt, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23
  %i.du = phi i128 [ 0, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23 ], [ %.pre30, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dv = phi i64 [ %i.cb, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23 ], [ %i.ds, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dw = phi i1 [ %i.ca, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23 ], [ %i.dr, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dx = phi i8 [ %i.bz, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23 ], [ %i.dq, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.dy = phi i8 [ 64, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread23 ], [ %.pr, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.dz = zext nneg i64 %i.dv to i128
  %i.ea = zext nneg i8 %i.dy to i128
  %i.eb = shl nuw nsw i128 %i.dz, %i.ea
  %i.ec = or i128 %i.eb, %i.du                    ; 4 uses
  store i128 %i.ec, ptr %1, align 16, !alias.scope !33114
  %i.ed = add nuw i8 %i.dy, 64
  store i8 %i.ed, ptr %i.d, align 16, !alias.scope !33114
  br i1 %i.dw, label %bb.i, label %bb.k

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ee = phi i128 [ %i.be, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre30, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ef = phi i64 [ %i.bi, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ds, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.eg = phi i1 [ %i.bh, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.dr, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.eh = phi i8 [ %i.bg, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.dq, %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ei = trunc i128 %i.ee to i64
  %i.ej = lshr i128 %i.ee, 64
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !33114, !noundef !3
  %i.em = xor i64 %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load ptr, ptr %i.en, align 16, !alias.scope !33114, !nonnull !3, !align !311, !noundef !3
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !33114, !noundef !3
  %i.eq = zext i64 %i.em to i128
  %i.er = zext i64 %i.ep to i128
  %i.es = xor i128 %i.ej, %i.er
  %i.et = mul nuw i128 %i.es, %i.eq               ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = xor i128 %i.eu, %i.et
  %i.ew = trunc i128 %i.ev to i64
  store i64 %i.ew, ptr %i.ek, align 8, !alias.scope !33114
  %i.ex = zext nneg i64 %i.ef to i128             ; 2 uses
  store i128 %i.ex, ptr %1, align 16, !alias.scope !33114
  store i8 64, ptr %i.d, align 16, !alias.scope !33114
  br i1 %i.eg, label %.thread25, label %bb.k

bb.i:                                             ; preds = %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33127)
  %.not29 = icmp eq i8 %i.dy, 0
  br i1 %.not29, label %.thread25, label %bb.j

.thread25:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.i
  %i.ey = phi i128 [ %i.ec, %bb.i ], [ %i.ex, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  %i.ez = phi i8 [ %i.dx, %bb.i ], [ %i.eh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  %i.fa = zext nneg i8 %i.ez to i128
  %i.fb = shl nuw nsw i128 %i.fa, 64
  %i.fc = or i128 %i.fb, %i.ey
  br label %_RINvXsw2_NtCs4lawaffTVVK_9sqlparser3astNtB7_18CreateViewSecurityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  %i.fd = trunc i128 %i.ec to i64
  %i.fe = lshr i128 %i.ec, 64
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !33130, !noundef !3
  %i.fh = xor i64 %i.fg, %i.fd
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fj = load ptr, ptr %i.fi, align 16, !alias.scope !33130, !nonnull !3, !align !311, !noundef !3
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !33130, !noundef !3
  %i.fl = zext i64 %i.fh to i128
  %i.fm = zext i64 %i.fk to i128
  %i.fn = xor i128 %i.fe, %i.fm
  %i.fo = mul nuw i128 %i.fn, %i.fl               ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = xor i128 %i.fp, %i.fo
  %i.fr = trunc i128 %i.fq to i64
  store i64 %i.fr, ptr %i.ff, align 8, !alias.scope !33130
  %i.fs = zext nneg i8 %i.dx to i128
  br label %_RINvXsw2_NtCs4lawaffTVVK_9sqlparser3astNtB7_18CreateViewSecurityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsw2_NtCs4lawaffTVVK_9sqlparser3astNtB7_18CreateViewSecurityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread25, %bb.j
  %.sink.i8 = phi i128 [ %i.fs, %bb.j ], [ %i.fc, %.thread25 ]
  %storemerge.i.i.i9 = phi i8 [ 64, %bb.j ], [ -128, %.thread25 ]
  store i128 %.sink.i8, ptr %1, align 16, !alias.scope !33130
  store i8 %storemerge.i.i.i9, ptr %i.d, align 16, !alias.scope !33130
  br label %bb.k

bb.k:                                             ; preds = %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RINvXsw2_NtCs4lawaffTVVK_9sqlparser3astNtB7_18CreateViewSecurityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXswc_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.o = load i8, ptr %i.n, align 1, !range !1802, !noundef !3 ; 2 uses
  %i.p = icmp ne i8 %i.o, 3                       ; 2 uses
  %i.q = zext i1 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !33131
  store i64 %i.q, ptr %i.m, align 8, !noalias !33131
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !33131
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = zext nneg i8 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !33136
  store i64 %i.r, ptr %i.l, align 8, !noalias !33136
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !33136
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i64, ptr %0, align 8, !range !322, !noundef !3 ; 2 uses
  %i.t = icmp ne i64 %i.s, -9223372036854775807   ; 2 uses
  %i.u = zext i1 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !33143
  store i64 %i.u, ptr %i.k, align 8, !noalias !33143
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !33143
  br i1 %i.t, label %bb.d, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ne i64 %i.s, -9223372036854775808   ; 2 uses
  %i.w = zext i1 %i.v to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33148
  store i64 %i.w, ptr %i.b, align 8, !noalias !33148
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #57, !noalias !33155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33148
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33156)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !33156, !noalias !33159, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !33156, !noalias !33159, !noundef !3
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #57, !noalias !33156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33161
  store i8 -1, ptr %i.e, align 1, !noalias !33161
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #57, !noalias !33168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33161
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !range !3478, !alias.scope !33156, !noalias !33159, !noundef !3 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 1114112              ; 2 uses
  %i.ae = zext i1 %i.ad to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33169
  store i64 %i.ae, ptr %i.d, align 8, !noalias !33169
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #57, !noalias !33156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !33169
  br i1 %i.ad, label %bb.f, label %_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33174
  store i32 %i.ac, ptr %i.c, align 4, !noalias !33174
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #57, !noalias !33156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33174
  br label %_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2

_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %bb.e, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33177)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !33177, !noalias !33180, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !33177, !noalias !33180, !noundef !3
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai) #57, !noalias !33177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33182
  store i8 -1, ptr %i.h, align 1, !noalias !33182
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1) #57, !noalias !33189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33182
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load i32, ptr %i.aj, align 8, !range !3478, !alias.scope !33177, !noalias !33180, !noundef !3 ; 2 uses
  %i.al = icmp ne i32 %i.ak, 1114112              ; 2 uses
end_hunk_15
begin_hunk_16_@_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ps = zext i64 %i.pp to i128
  %i.pt = zext i64 %i.pr to i128
  %i.pu = xor i128 %i.pn, %i.pt
  %i.pv = mul nuw i128 %i.pu, %i.ps               ; 2 uses
  %i.pw = lshr i128 %i.pv, 64
  %i.px = xor i128 %i.pw, %i.pv
  %i.py = trunc i128 %i.px to i64
  store i64 %i.py, ptr %i.d, align 8, !alias.scope !35118, !noalias !34920
  %i.pz = zext nneg i8 %i.pf to i128
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qa, ptr noalias noundef nonnull align 16 dereferenceable(48) %2) #57
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 56
  %i.qc = load i8, ptr %i.qb, align 8, !range !2045, !alias.scope !34920, !noalias !34923, !noundef !3 ; 3 uses
  %i.qd = icmp ne i8 %i.qc, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35123)
  %i.qe = load i8, ptr %i.c, align 16, !alias.scope !35126, !noalias !34920, !noundef !3 ; 4 uses
  %i.qf = icmp ugt i8 %i.qe, 64
  br i1 %i.qf, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.i: ; preds = %bb.bg
  %i.qg = zext i1 %i.qd to i128
  %i.qh = zext nneg i8 %i.qe to i128
  %i.qi = shl nuw nsw i128 %i.qg, %i.qh
  %i.qj = load i128, ptr %2, align 16, !alias.scope !35126, !noalias !34920, !noundef !3
  %i.qk = or i128 %i.qj, %i.qi                    ; 4 uses
  store i128 %i.qk, ptr %2, align 16, !alias.scope !35126, !noalias !34920
  %i.ql = add nuw i8 %i.qe, 64
  store i8 %i.ql, ptr %i.c, align 16, !alias.scope !35126, !noalias !34920
  br i1 %i.qd, label %bb.df, label %_RINvXsqi_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread.i: ; preds = %bb.bg
  %i.qm = load i128, ptr %2, align 16, !alias.scope !35126, !noalias !34920, !noundef !3 ; 2 uses
  %i.qn = trunc i128 %i.qm to i64
  %i.qo = lshr i128 %i.qm, 64
  %i.qp = load i64, ptr %i.d, align 8, !alias.scope !35126, !noalias !34920, !noundef !3
  %i.qq = xor i64 %i.qp, %i.qn
  %i.qr = load ptr, ptr %i.e, align 16, !alias.scope !35126, !noalias !34920, !nonnull !3, !align !311, !noundef !3
  %i.qs = load i64, ptr %i.qr, align 8, !noalias !35127, !noundef !3
  %i.qt = zext i64 %i.qq to i128
  %i.qu = zext i64 %i.qs to i128
  %i.qv = xor i128 %i.qo, %i.qu
  %i.qw = mul nuw i128 %i.qv, %i.qt               ; 2 uses
  %i.qx = lshr i128 %i.qw, 64
  %i.qy = xor i128 %i.qx, %i.qw
  %i.qz = trunc i128 %i.qy to i64
  store i64 %i.qz, ptr %i.d, align 8, !alias.scope !35126, !noalias !34920
  %i.ra = zext i1 %i.qd to i128
  store i128 %i.ra, ptr %2, align 16, !alias.scope !35126, !noalias !34920
  store i8 64, ptr %i.c, align 16, !alias.scope !35126, !noalias !34920
  br i1 %i.qd, label %.thread.i, label %_RINvXsqi_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !alias.scope !34920, !noalias !34923, !nonnull !3, !noundef !3 ; 8 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !34920, !noalias !34923, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35136)
  %i.rf = load i64, ptr %i.d, align 8, !alias.scope !35138, !noalias !35139, !noundef !3 ; 2 uses
  %i.rg = tail call noundef i64 @llvm.fshr.i64(i64 %i.rf, i64 %i.rf, i64 %i.re) ; 6 uses
  store i64 %i.rg, ptr %i.d, align 8, !alias.scope !35138, !noalias !35139
  %i.rh = icmp samesign ult i64 %i.re, 17
  %i.ri = load ptr, ptr %i.e, align 16, !alias.scope !35138, !noalias !35139, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  br i1 %i.rh, label %bb.bj, label %bb.bi, !prof !106

bb.bi:                                            ; preds = %bb.bh
  %i.rj = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef range(i64 0, -9223372036854775808) %i.re, i64 noundef %i.rg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ri) #58, !noalias !35140
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i44.i

bb.bj:                                            ; preds = %bb.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35144)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !35144, !noalias !35146, !noundef !3 ; 4 uses
  %i.rm = icmp samesign ugt i64 %i.re, 7
  br i1 %i.rm, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i55.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rn = icmp samesign ugt i64 %i.re, 3
  br i1 %i.rn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i52.i, label %bb.bl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i55.i: ; preds = %bb.bj
  %.sroa.014.0.copyload.i.i.i56.i = load i64, ptr %i.rc, align 1, !alias.scope !35147, !noalias !35148
  %i.ro = xor i64 %.sroa.014.0.copyload.i.i.i56.i, %i.rg
  %i.rp = getelementptr i8, ptr %i.rc, i64 %i.re
  %i.rq = getelementptr i8, ptr %i.rp, i64 -8
  %.sroa.016.0.copyload.i.i.i57.i = load i64, ptr %i.rq, align 1, !alias.scope !35147, !noalias !35148
  %i.rr = xor i64 %.sroa.016.0.copyload.i.i.i57.i, %i.rl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i.i48.i = icmp eq i64 %i.re, 0
  br i1 %.not.i.i.i48.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i, label %bb.bm

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i52.i: ; preds = %bb.bk
  %i.rs = getelementptr i8, ptr %i.rc, i64 %i.re
  %i.rt = getelementptr i8, ptr %i.rs, i64 -4
  %.sroa.019.0.copyload.i.i.i53.i = load i32, ptr %i.rt, align 1, !alias.scope !35147, !noalias !35148
  %.sroa.018.0.copyload.i.i.i54.i = load i32, ptr %i.rc, align 1, !alias.scope !35147, !noalias !35148
  %i.ru = zext i32 %.sroa.018.0.copyload.i.i.i54.i to i64
  %i.rv = xor i64 %i.rg, %i.ru
  %i.rw = zext i32 %.sroa.019.0.copyload.i.i.i53.i to i64
  %i.rx = xor i64 %i.rl, %i.rw
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i

bb.bm:                                            ; preds = %bb.bl
  %i.ry = load i8, ptr %i.rc, align 1, !alias.scope !35147, !noalias !35148, !noundef !3
  %i.rz = lshr i64 %i.re, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !35147, !noalias !35148, !noundef !3
  %i.sc = getelementptr i8, ptr %i.rc, i64 %i.re
  %i.sd = getelementptr i8, ptr %i.sc, i64 -1
  %i.se = load i8, ptr %i.sd, align 1, !alias.scope !35147, !noalias !35148, !noundef !3
  %i.sf = zext i8 %i.ry to i64
  %i.sg = xor i64 %i.rg, %i.sf
  %i.sh = zext i8 %i.se to i64
  %i.si = shl nuw nsw i64 %i.sh, 8
  %i.sj = zext i8 %i.sb to i64
  %i.sk = or disjoint i64 %i.si, %i.sj
  %i.sl = xor i64 %i.sk, %i.rl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i: ; preds = %bb.bm, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i52.i, %bb.bl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i55.i
  %.sroa.04.0.i.i.i50.i = phi i64 [ %i.rr, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i55.i ], [ %i.rx, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i52.i ], [ %i.sl, %bb.bm ], [ %i.rl, %bb.bl ]
  %.sroa.0.0.i.i.i51.i = phi i64 [ %i.ro, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i55.i ], [ %i.rv, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i52.i ], [ %i.sg, %bb.bm ], [ %i.rg, %bb.bl ]
  %i.sm = zext i64 %.sroa.0.0.i.i.i51.i to i128
  %i.sn = zext i64 %.sroa.04.0.i.i.i50.i to i128
  %i.so = mul nuw i128 %i.sm, %i.sn               ; 2 uses
  %i.sp = lshr i128 %i.so, 64
  %i.sq = xor i128 %i.sp, %i.so
  %i.sr = trunc i128 %i.sq to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i44.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i44.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i, %bb.bi
  %storemerge.i.i45.i = phi i64 [ %i.rj, %bb.bi ], [ %i.sr, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i49.i ] ; 2 uses
  store i64 %storemerge.i.i45.i, ptr %i.d, align 8, !alias.scope !35138, !noalias !35139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35152)
  %i.ss = icmp ugt i8 %storemerge.i.i17.i, 120
  br i1 %i.ss, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i44.i
  %i.st = zext nneg i8 %storemerge.i.i17.i to i128
  %i.su = shl nuw i128 255, %i.st
  %i.sv = or i128 %i.su, %i.ae
  %i.sw = add nuw i8 %storemerge.i.i17.i, 8
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.bo:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i44.i
  %i.sx = trunc i128 %i.ae to i64
  %i.sy = lshr i128 %i.ae, 64
  %i.sz = xor i64 %storemerge.i.i45.i, %i.sx
  %i.ta = load i64, ptr %i.ri, align 8, !noalias !35155, !noundef !3
  %i.tb = zext i64 %i.sz to i128
  %i.tc = zext i64 %i.ta to i128
  %i.td = xor i128 %i.sy, %i.tc
  %i.te = mul nuw i128 %i.td, %i.tb               ; 2 uses
  %i.tf = lshr i128 %i.te, 64
  %i.tg = xor i128 %i.tf, %i.te
  %i.th = trunc i128 %i.tg to i64
  store i64 %i.th, ptr %i.d, align 8, !alias.scope !35156, !noalias !35157
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.bp:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.i
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 1
  %i.tj = load i8, ptr %i.ti, align 1, !range !2045, !alias.scope !34920, !noalias !34923, !noundef !3 ; 3 uses
  %i.tk = icmp ne i8 %i.tj, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35161)
  %i.tl = icmp ugt i8 %storemerge.i.i17.i, 64
  br i1 %i.tl, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i: ; preds = %bb.bp
  %i.tm = select i1 %i.tk, i128 18446744073709551616, i128 0
  %i.tn = or i128 %i.tm, %i.ae                    ; 2 uses
  store i128 %i.tn, ptr %2, align 16, !alias.scope !35164, !noalias !34920
  store i8 -128, ptr %i.c, align 16, !alias.scope !35164, !noalias !34920
  br i1 %i.tk, label %bb.di, label %_RINvXsqi_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread.i: ; preds = %bb.bp
  %i.to = trunc i128 %i.ae to i64
  %i.tp = lshr i128 %i.ae, 64
  %i.tq = load i64, ptr %i.d, align 8, !alias.scope !35164, !noalias !34920, !noundef !3
  %i.tr = xor i64 %i.tq, %i.to
  %i.ts = load ptr, ptr %i.e, align 16, !alias.scope !35164, !noalias !34920, !nonnull !3, !align !311, !noundef !3
  %i.tt = load i64, ptr %i.ts, align 8, !noalias !35165, !noundef !3
  %i.tu = zext i64 %i.tr to i128
  %i.tv = zext i64 %i.tt to i128
  %i.tw = xor i128 %i.tp, %i.tv
  %i.tx = mul nuw i128 %i.tw, %i.tu               ; 2 uses
  %i.ty = lshr i128 %i.tx, 64
  %i.tz = xor i128 %i.ty, %i.tx
  %i.ua = trunc i128 %i.tz to i64
  store i64 %i.ua, ptr %i.d, align 8, !alias.scope !35164, !noalias !34920
  %i.ub = zext i1 %i.tk to i128
  store i128 %i.ub, ptr %2, align 16, !alias.scope !35164, !noalias !34920
  store i8 64, ptr %i.c, align 16, !alias.scope !35164, !noalias !34920
  br i1 %i.tk, label %bb.dh, label %_RINvXsqi_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35169)
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !35171, !noalias !35172, !nonnull !3, !noundef !3 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24
  %i.uf = load i64, ptr %i.ue, align 8, !alias.scope !35171, !noalias !35172, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35179)
  %i.ug = icmp ugt i8 %storemerge.i.i17.i, 64
  br i1 %i.ug, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.uh = zext i64 %i.uf to i128
  %i.ui = shl nuw i128 %i.uh, 64
  %i.uj = or i128 %i.ui, %i.ae
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.uk = trunc i128 %i.ae to i64
  %i.ul = lshr i128 %i.ae, 64
  %i.um = load i64, ptr %i.d, align 8, !alias.scope !35182, !noalias !35171, !noundef !3
  %i.un = xor i64 %i.um, %i.uk
  %i.uo = load ptr, ptr %i.e, align 16, !alias.scope !35182, !noalias !35171, !nonnull !3, !align !311, !noundef !3
  %i.up = load i64, ptr %i.uo, align 8, !noalias !35183, !noundef !3
  %i.uq = zext i64 %i.un to i128
  %i.ur = zext i64 %i.up to i128
  %i.us = xor i128 %i.ul, %i.ur
  %i.ut = mul nuw i128 %i.us, %i.uq               ; 2 uses
  %i.uu = lshr i128 %i.ut, 64
  %i.uv = xor i128 %i.uu, %i.ut
  %i.uw = trunc i128 %i.uv to i64
  store i64 %i.uw, ptr %i.d, align 8, !alias.scope !35182, !noalias !35171
  %i.ux = zext i64 %i.uf to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bs, %bb.br
  %.sink.i.i.i = phi i128 [ %i.ux, %bb.bs ], [ %i.uj, %bb.br ]
  %storemerge.i.i.i.i59.i = phi i8 [ 64, %bb.bs ], [ -128, %bb.br ] ; 2 uses
  store i128 %.sink.i.i.i, ptr %2, align 16, !alias.scope !35182, !noalias !35171
  store i8 %storemerge.i.i.i.i59.i, ptr %i.c, align 16, !alias.scope !35182, !noalias !35171
  %.idx.i.i.i = shl nuw nsw i64 %i.uf, 6
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.idx.i.i.i
  %i.uz = icmp eq i64 %i.uf, 0
  br i1 %i.uz, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.va, %.lr.ph.i.i.i ], [ %i.ud, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 64 ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03.i.i.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %2), !noalias !35171
  %i.vb = icmp eq ptr %i.va, %i.uy
  br i1 %i.vb, label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i, label %.lr.ph.i.i.i

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load i8, ptr %i.c, align 16, !alias.scope !35184, !noalias !35171
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.vc = phi i8 [ %.pre.i.i, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i ], [ %storemerge.i.i.i.i59.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 32
  %i.ve = load i8, ptr %i.vd, align 8, !range !1779, !alias.scope !35171, !noalias !35172, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35190)
  %i.vf = icmp ugt i8 %i.vc, 120
  br i1 %i.vf, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.vg = zext nneg i8 %i.ve to i128
  %i.vh = zext nneg i8 %i.vc to i128
  %i.vi = shl nuw nsw i128 %i.vg, %i.vh
  %i.vj = load i128, ptr %2, align 16, !alias.scope !35184, !noalias !35171, !noundef !3
  %i.vk = or i128 %i.vj, %i.vi
  %i.vl = add nuw i8 %i.vc, 8
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.bu:                                            ; preds = %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.vm = load i128, ptr %2, align 16, !alias.scope !35184, !noalias !35171, !noundef !3 ; 2 uses
  %i.vn = trunc i128 %i.vm to i64
  %i.vo = lshr i128 %i.vm, 64
  %i.vp = load i64, ptr %i.d, align 8, !alias.scope !35184, !noalias !35171, !noundef !3
  %i.vq = xor i64 %i.vp, %i.vn
  %i.vr = load ptr, ptr %i.e, align 16, !alias.scope !35184, !noalias !35171, !nonnull !3, !align !311, !noundef !3
  %i.vs = load i64, ptr %i.vr, align 8, !noalias !35191, !noundef !3
  %i.vt = zext i64 %i.vq to i128
  %i.vu = zext i64 %i.vs to i128
  %i.vv = xor i128 %i.vo, %i.vu
  %i.vw = mul nuw i128 %i.vv, %i.vt               ; 2 uses
  %i.vx = lshr i128 %i.vw, 64
  %i.vy = xor i128 %i.vx, %i.vw
  %i.vz = trunc i128 %i.vy to i64
  store i64 %i.vz, ptr %i.d, align 8, !alias.scope !35184, !noalias !35171
  %i.wa = zext nneg i8 %i.ve to i128
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.bv:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.i
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !alias.scope !34920, !noalias !34923, !nonnull !3, !noundef !3 ; 8 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !34920, !noalias !34923, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35200)
  %i.wf = load i64, ptr %i.d, align 8, !alias.scope !35202, !noalias !35203, !noundef !3 ; 2 uses
  %i.wg = tail call noundef i64 @llvm.fshr.i64(i64 %i.wf, i64 %i.wf, i64 %i.we) ; 6 uses
  store i64 %i.wg, ptr %i.d, align 8, !alias.scope !35202, !noalias !35203
  %i.wh = icmp samesign ult i64 %i.we, 17
  %i.wi = load ptr, ptr %i.e, align 16, !alias.scope !35202, !noalias !35203, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  br i1 %i.wh, label %bb.bx, label %bb.bw, !prof !106

bb.bw:                                            ; preds = %bb.bv
  %i.wj = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.wc, i64 noundef range(i64 0, -9223372036854775808) %i.we, i64 noundef %i.wg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wi) #58, !noalias !35204
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i62.i

bb.bx:                                            ; preds = %bb.bv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35208)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wl = load i64, ptr %i.wk, align 8, !alias.scope !35208, !noalias !35210, !noundef !3 ; 4 uses
  %i.wm = icmp samesign ugt i64 %i.we, 7
  br i1 %i.wm, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i73.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.wn = icmp samesign ugt i64 %i.we, 3
  br i1 %i.wn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i70.i, label %bb.bz

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i73.i: ; preds = %bb.bx
  %.sroa.014.0.copyload.i.i.i74.i = load i64, ptr %i.wc, align 1, !alias.scope !35211, !noalias !35212
  %i.wo = xor i64 %.sroa.014.0.copyload.i.i.i74.i, %i.wg
  %i.wp = getelementptr i8, ptr %i.wc, i64 %i.we
  %i.wq = getelementptr i8, ptr %i.wp, i64 -8
  %.sroa.016.0.copyload.i.i.i75.i = load i64, ptr %i.wq, align 1, !alias.scope !35211, !noalias !35212
  %i.wr = xor i64 %.sroa.016.0.copyload.i.i.i75.i, %i.wl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i

bb.bz:                                            ; preds = %bb.by
  %.not.i.i.i66.i = icmp eq i64 %i.we, 0
  br i1 %.not.i.i.i66.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i, label %bb.ca

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i70.i: ; preds = %bb.by
  %i.ws = getelementptr i8, ptr %i.wc, i64 %i.we
  %i.wt = getelementptr i8, ptr %i.ws, i64 -4
  %.sroa.019.0.copyload.i.i.i71.i = load i32, ptr %i.wt, align 1, !alias.scope !35211, !noalias !35212
  %.sroa.018.0.copyload.i.i.i72.i = load i32, ptr %i.wc, align 1, !alias.scope !35211, !noalias !35212
  %i.wu = zext i32 %.sroa.018.0.copyload.i.i.i72.i to i64
  %i.wv = xor i64 %i.wg, %i.wu
  %i.ww = zext i32 %.sroa.019.0.copyload.i.i.i71.i to i64
  %i.wx = xor i64 %i.wl, %i.ww
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i

bb.ca:                                            ; preds = %bb.bz
  %i.wy = load i8, ptr %i.wc, align 1, !alias.scope !35211, !noalias !35212, !noundef !3
  %i.wz = lshr i64 %i.we, 1
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !alias.scope !35211, !noalias !35212, !noundef !3
  %i.xc = getelementptr i8, ptr %i.wc, i64 %i.we
  %i.xd = getelementptr i8, ptr %i.xc, i64 -1
  %i.xe = load i8, ptr %i.xd, align 1, !alias.scope !35211, !noalias !35212, !noundef !3
  %i.xf = zext i8 %i.wy to i64
  %i.xg = xor i64 %i.wg, %i.xf
  %i.xh = zext i8 %i.xe to i64
  %i.xi = shl nuw nsw i64 %i.xh, 8
  %i.xj = zext i8 %i.xb to i64
  %i.xk = or disjoint i64 %i.xi, %i.xj
  %i.xl = xor i64 %i.xk, %i.wl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i: ; preds = %bb.ca, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i70.i, %bb.bz, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i73.i
  %.sroa.04.0.i.i.i68.i = phi i64 [ %i.wr, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i73.i ], [ %i.wx, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i70.i ], [ %i.xl, %bb.ca ], [ %i.wl, %bb.bz ]
  %.sroa.0.0.i.i.i69.i = phi i64 [ %i.wo, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i73.i ], [ %i.wv, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i70.i ], [ %i.xg, %bb.ca ], [ %i.wg, %bb.bz ]
  %i.xm = zext i64 %.sroa.0.0.i.i.i69.i to i128
  %i.xn = zext i64 %.sroa.04.0.i.i.i68.i to i128
  %i.xo = mul nuw i128 %i.xm, %i.xn               ; 2 uses
  %i.xp = lshr i128 %i.xo, 64
  %i.xq = xor i128 %i.xp, %i.xo
  %i.xr = trunc i128 %i.xq to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i62.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i62.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i, %bb.bw
  %storemerge.i.i63.i = phi i64 [ %i.wj, %bb.bw ], [ %i.xr, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i67.i ] ; 2 uses
  store i64 %storemerge.i.i63.i, ptr %i.d, align 8, !alias.scope !35202, !noalias !35203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35216)
  %i.xs = icmp ugt i8 %storemerge.i.i17.i, 120
  br i1 %i.xs, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i62.i
  %i.xt = zext nneg i8 %storemerge.i.i17.i to i128
  %i.xu = shl nuw i128 255, %i.xt
  %i.xv = or i128 %i.xu, %i.ae
  %i.xw = add nuw i8 %storemerge.i.i17.i, 8
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.cc:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i62.i
  %i.xx = trunc i128 %i.ae to i64
end_hunk_16
begin_hunk_17_@_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.cu:                                            ; preds = %bb.ct
  %i.ade = load i8, ptr %i.aci, align 1, !alias.scope !35287, !noalias !35288, !noundef !3
  %i.adf = lshr i64 %i.ack, 1
  %i.adg = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.adf
  %i.adh = load i8, ptr %i.adg, align 1, !alias.scope !35287, !noalias !35288, !noundef !3
  %i.adi = getelementptr i8, ptr %i.aci, i64 %i.ack
  %i.adj = getelementptr i8, ptr %i.adi, i64 -1
  %i.adk = load i8, ptr %i.adj, align 1, !alias.scope !35287, !noalias !35288, !noundef !3
  %i.adl = zext i8 %i.ade to i64
  %i.adm = xor i64 %i.acm, %i.adl
  %i.adn = zext i8 %i.adk to i64
  %i.ado = shl nuw nsw i64 %i.adn, 8
  %i.adp = zext i8 %i.adh to i64
  %i.adq = or disjoint i64 %i.ado, %i.adp
  %i.adr = xor i64 %i.adq, %i.acr
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i97.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i97.i: ; preds = %bb.cu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i100.i, %bb.ct, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i103.i
  %.sroa.04.0.i.i.i98.i = phi i64 [ %i.acx, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i103.i ], [ %i.add, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i100.i ], [ %i.adr, %bb.cu ], [ %i.acr, %bb.ct ]
  %.sroa.0.0.i.i.i99.i = phi i64 [ %i.acu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i103.i ], [ %i.adb, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i100.i ], [ %i.adm, %bb.cu ], [ %i.acm, %bb.ct ]
  %i.ads = zext i64 %.sroa.0.0.i.i.i99.i to i128
  %i.adt = zext i64 %.sroa.04.0.i.i.i98.i to i128
  %i.adu = mul nuw i128 %i.ads, %i.adt            ; 2 uses
  %i.adv = lshr i128 %i.adu, 64
  %i.adw = xor i128 %i.adv, %i.adu
  %i.adx = trunc i128 %i.adw to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i92.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i92.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i97.i, %bb.cq
  %storemerge.i.i93.i = phi i64 [ %i.acp, %bb.cq ], [ %i.adx, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i97.i ] ; 2 uses
  store i64 %storemerge.i.i93.i, ptr %i.d, align 8, !alias.scope !35278, !noalias !35279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35292)
  br i1 %i.gt, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i92.i
  %i.ady = or i128 %storemerge157.i, 4703919738795935662080
  %i.adz = or disjoint i8 %storemerge.i.i13.i, 8
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.cw:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i92.i
  %i.aea = trunc i128 %storemerge157.i to i64
  %i.aeb = lshr i128 %storemerge157.i, 64
  %i.aec = xor i64 %storemerge.i.i93.i, %i.aea
  %i.aed = load i64, ptr %i.aco, align 8, !noalias !35295, !noundef !3
  %i.aee = zext i64 %i.aec to i128
  %i.aef = zext i64 %i.aed to i128
  %i.aeg = xor i128 %i.aeb, %i.aef
  %i.aeh = mul nuw i128 %i.aeg, %i.aee            ; 2 uses
  %i.aei = lshr i128 %i.aeh, 64
  %i.aej = xor i128 %i.aei, %i.aeh
  %i.aek = trunc i128 %i.aej to i64
  store i64 %i.aek, ptr %i.d, align 8, !alias.scope !35296, !noalias !35297
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.cx:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.i
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.aem = load ptr, ptr %i.ael, align 8, !alias.scope !34920, !noalias !34923, !nonnull !3, !noundef !3 ; 8 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24
  %i.aeo = load i64, ptr %i.aen, align 8, !alias.scope !34920, !noalias !34923, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35306)
  %i.aep = load i64, ptr %i.d, align 8, !alias.scope !35308, !noalias !35309, !noundef !3 ; 2 uses
  %i.aeq = tail call noundef i64 @llvm.fshr.i64(i64 %i.aep, i64 %i.aep, i64 %i.aeo) ; 6 uses
  store i64 %i.aeq, ptr %i.d, align 8, !alias.scope !35308, !noalias !35309
  %i.aer = icmp samesign ult i64 %i.aeo, 17
  %i.aes = load ptr, ptr %i.e, align 16, !alias.scope !35308, !noalias !35309, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  br i1 %i.aer, label %bb.cz, label %bb.cy, !prof !106

bb.cy:                                            ; preds = %bb.cx
  %i.aet = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aem, i64 noundef range(i64 0, -9223372036854775808) %i.aeo, i64 noundef %i.aeq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aes) #58, !noalias !35310
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i107.i

bb.cz:                                            ; preds = %bb.cx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35314)
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.aev = load i64, ptr %i.aeu, align 8, !alias.scope !35314, !noalias !35316, !noundef !3 ; 4 uses
  %i.aew = icmp samesign ugt i64 %i.aeo, 7
  br i1 %i.aew, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i118.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aex = icmp samesign ugt i64 %i.aeo, 3
  br i1 %i.aex, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i115.i, label %bb.db

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i118.i: ; preds = %bb.cz
  %.sroa.014.0.copyload.i.i.i119.i = load i64, ptr %i.aem, align 1, !alias.scope !35317, !noalias !35318
  %i.aey = xor i64 %.sroa.014.0.copyload.i.i.i119.i, %i.aeq
  %i.aez = getelementptr i8, ptr %i.aem, i64 %i.aeo
  %i.afa = getelementptr i8, ptr %i.aez, i64 -8
  %.sroa.016.0.copyload.i.i.i120.i = load i64, ptr %i.afa, align 1, !alias.scope !35317, !noalias !35318
  %i.afb = xor i64 %.sroa.016.0.copyload.i.i.i120.i, %i.aev
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i

bb.db:                                            ; preds = %bb.da
  %.not.i.i.i111.i = icmp eq i64 %i.aeo, 0
  br i1 %.not.i.i.i111.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i, label %bb.dc

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i115.i: ; preds = %bb.da
  %i.afc = getelementptr i8, ptr %i.aem, i64 %i.aeo
  %i.afd = getelementptr i8, ptr %i.afc, i64 -4
  %.sroa.019.0.copyload.i.i.i116.i = load i32, ptr %i.afd, align 1, !alias.scope !35317, !noalias !35318
  %.sroa.018.0.copyload.i.i.i117.i = load i32, ptr %i.aem, align 1, !alias.scope !35317, !noalias !35318
  %i.afe = zext i32 %.sroa.018.0.copyload.i.i.i117.i to i64
  %i.aff = xor i64 %i.aeq, %i.afe
  %i.afg = zext i32 %.sroa.019.0.copyload.i.i.i116.i to i64
  %i.afh = xor i64 %i.aev, %i.afg
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i

bb.dc:                                            ; preds = %bb.db
  %i.afi = load i8, ptr %i.aem, align 1, !alias.scope !35317, !noalias !35318, !noundef !3
  %i.afj = lshr i64 %i.aeo, 1
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.afj
  %i.afl = load i8, ptr %i.afk, align 1, !alias.scope !35317, !noalias !35318, !noundef !3
  %i.afm = getelementptr i8, ptr %i.aem, i64 %i.aeo
  %i.afn = getelementptr i8, ptr %i.afm, i64 -1
  %i.afo = load i8, ptr %i.afn, align 1, !alias.scope !35317, !noalias !35318, !noundef !3
  %i.afp = zext i8 %i.afi to i64
  %i.afq = xor i64 %i.aeq, %i.afp
  %i.afr = zext i8 %i.afo to i64
  %i.afs = shl nuw nsw i64 %i.afr, 8
  %i.aft = zext i8 %i.afl to i64
  %i.afu = or disjoint i64 %i.afs, %i.aft
  %i.afv = xor i64 %i.afu, %i.aev
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i: ; preds = %bb.dc, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i115.i, %bb.db, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i118.i
  %.sroa.04.0.i.i.i113.i = phi i64 [ %i.afb, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i118.i ], [ %i.afh, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i115.i ], [ %i.afv, %bb.dc ], [ %i.aev, %bb.db ]
  %.sroa.0.0.i.i.i114.i = phi i64 [ %i.aey, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i118.i ], [ %i.aff, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i115.i ], [ %i.afq, %bb.dc ], [ %i.aeq, %bb.db ]
  %i.afw = zext i64 %.sroa.0.0.i.i.i114.i to i128
  %i.afx = zext i64 %.sroa.04.0.i.i.i113.i to i128
  %i.afy = mul nuw i128 %i.afw, %i.afx            ; 2 uses
  %i.afz = lshr i128 %i.afy, 64
  %i.aga = xor i128 %i.afz, %i.afy
  %i.agb = trunc i128 %i.aga to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i107.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i107.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i, %bb.cy
  %storemerge.i.i108.i = phi i64 [ %i.aet, %bb.cy ], [ %i.agb, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i112.i ] ; 2 uses
  store i64 %storemerge.i.i108.i, ptr %i.d, align 8, !alias.scope !35308, !noalias !35309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35322)
  br i1 %i.nt, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i107.i
  %i.agc = or i128 %storemerge156.i, 4703919738795935662080
  %i.agd = or disjoint i8 %storemerge.i.i11.i, 8
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.de:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i107.i
  %i.age = trunc i128 %storemerge156.i to i64
  %i.agf = lshr i128 %storemerge156.i, 64
  %i.agg = xor i64 %storemerge.i.i108.i, %i.age
  %i.agh = load i64, ptr %i.aes, align 8, !noalias !35325, !noundef !3
  %i.agi = zext i64 %i.agg to i128
  %i.agj = zext i64 %i.agh to i128
  %i.agk = xor i128 %i.agf, %i.agj
  %i.agl = mul nuw i128 %i.agk, %i.agi            ; 2 uses
  %i.agm = lshr i128 %i.agl, 64
  %i.agn = xor i128 %i.agm, %i.agl
  %i.ago = trunc i128 %i.agn to i64
  store i64 %i.ago, ptr %i.d, align 8, !alias.scope !35326, !noalias !35327
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.df:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35331)
  %.not153.i = icmp eq i8 %i.qe, 0
  br i1 %.not153.i, label %.thread.i, label %bb.dg

.thread.i:                                        ; preds = %bb.df, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread.i
  %i.agp = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread.i ], [ %i.qk, %bb.df ]
  %i.agq = zext nneg i8 %i.qc to i128
  %i.agr = shl nuw nsw i128 %i.agq, 64
  %i.ags = or i128 %i.agp, %i.agr
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.dg:                                            ; preds = %bb.df
  %i.agt = trunc i128 %i.qk to i64
  %i.agu = lshr i128 %i.qk, 64
  %i.agv = load i64, ptr %i.d, align 8, !alias.scope !35334, !noalias !34920, !noundef !3
  %i.agw = xor i64 %i.agv, %i.agt
  %i.agx = load ptr, ptr %i.e, align 16, !alias.scope !35334, !noalias !34920, !nonnull !3, !align !311, !noundef !3
  %i.agy = load i64, ptr %i.agx, align 8, !noalias !35335, !noundef !3
  %i.agz = zext i64 %i.agw to i128
  %i.aha = zext i64 %i.agy to i128
  %i.ahb = xor i128 %i.agu, %i.aha
  %i.ahc = mul nuw i128 %i.ahb, %i.agz            ; 2 uses
  %i.ahd = lshr i128 %i.ahc, 64
  %i.ahe = xor i128 %i.ahd, %i.ahc
  %i.ahf = trunc i128 %i.ahe to i64
  store i64 %i.ahf, ptr %i.d, align 8, !alias.scope !35334, !noalias !34920
  %i.ahg = zext nneg i8 %i.qc to i128
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.dh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread.i
  %i.ahh = zext nneg i8 %i.tj to i128
  %i.ahi = shl nuw nsw i128 %i.ahh, 64
  %i.ahj = or disjoint i128 %i.ahi, 1
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.di:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35339)
  %i.ahk = trunc i128 %i.ae to i64
  %i.ahl = lshr i128 %i.tn, 64
  %i.ahm = load i64, ptr %i.d, align 8, !alias.scope !35342, !noalias !34920, !noundef !3
  %i.ahn = xor i64 %i.ahm, %i.ahk
  %i.aho = load ptr, ptr %i.e, align 16, !alias.scope !35342, !noalias !34920, !nonnull !3, !align !311, !noundef !3
  %i.ahp = load i64, ptr %i.aho, align 8, !noalias !35343, !noundef !3
  %i.ahq = zext i64 %i.ahn to i128
  %i.ahr = zext i64 %i.ahp to i128
  %i.ahs = xor i128 %i.ahl, %i.ahr
  %i.aht = mul nuw i128 %i.ahs, %i.ahq            ; 2 uses
  %i.ahu = lshr i128 %i.aht, 64
  %i.ahv = xor i128 %i.ahu, %i.aht
  %i.ahw = trunc i128 %i.ahv to i64
  store i64 %i.ahw, ptr %i.d, align 8, !alias.scope !35342, !noalias !34920
  %i.ahx = zext nneg i8 %i.tj to i128
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.dj:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35347)
  %.not.i = icmp eq i8 %i.ym, 0
  br i1 %.not.i, label %.thread148.i, label %bb.dk

.thread148.i:                                     ; preds = %bb.dj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.ahy = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i ], [ %i.ys, %bb.dj ]
  %i.ahz = zext nneg i8 %i.yk to i128
  %i.aia = shl nuw nsw i128 %i.ahz, 64
  %i.aib = or i128 %i.ahy, %i.aia
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.dk:                                            ; preds = %bb.dj
  %i.aic = trunc i128 %i.ys to i64
  %i.aid = lshr i128 %i.ys, 64
  %i.aie = load i64, ptr %i.d, align 8, !alias.scope !35350, !noalias !34920, !noundef !3
  %i.aif = xor i64 %i.aie, %i.aic
  %i.aig = load ptr, ptr %i.e, align 16, !alias.scope !35350, !noalias !34920, !nonnull !3, !align !311, !noundef !3
  %i.aih = load i64, ptr %i.aig, align 8, !noalias !35351, !noundef !3
  %i.aii = zext i64 %i.aif to i128
  %i.aij = zext i64 %i.aih to i128
  %i.aik = xor i128 %i.aid, %i.aij
  %i.ail = mul nuw i128 %i.aik, %i.aii            ; 2 uses
  %i.aim = lshr i128 %i.ail, 64
  %i.ain = xor i128 %i.aim, %i.ail
  %i.aio = trunc i128 %i.ain to i64
  store i64 %i.aio, ptr %i.d, align 8, !alias.scope !35350, !noalias !34920
  %i.aip = zext nneg i8 %i.yk to i128
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.dl:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.air = load ptr, ptr %i.aiq, align 8, !alias.scope !34920, !noalias !34923, !nonnull !3, !noundef !3 ; 8 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24
  %i.ait = load i64, ptr %i.ais, align 8, !alias.scope !34920, !noalias !34923, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35360)
  %i.aiu = load i64, ptr %i.d, align 8, !alias.scope !35362, !noalias !35363, !noundef !3 ; 2 uses
  %i.aiv = tail call noundef i64 @llvm.fshr.i64(i64 %i.aiu, i64 %i.aiu, i64 %i.ait) ; 6 uses
  store i64 %i.aiv, ptr %i.d, align 8, !alias.scope !35362, !noalias !35363
  %i.aiw = icmp samesign ult i64 %i.ait, 17
  %i.aix = load ptr, ptr %i.e, align 16, !alias.scope !35362, !noalias !35363, !nonnull !3, !align !311, !noundef !3 ; 3 uses
  br i1 %i.aiw, label %bb.dn, label %bb.dm, !prof !106

bb.dm:                                            ; preds = %bb.dl
  %i.aiy = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.air, i64 noundef range(i64 0, -9223372036854775808) %i.ait, i64 noundef %i.aiv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aix) #58, !noalias !35364
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i122.i

bb.dn:                                            ; preds = %bb.dl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35368)
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  %i.aja = load i64, ptr %i.aiz, align 8, !alias.scope !35368, !noalias !35370, !noundef !3 ; 4 uses
  %i.ajb = icmp samesign ugt i64 %i.ait, 7
  br i1 %i.ajb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i133.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ajc = icmp samesign ugt i64 %i.ait, 3
  br i1 %i.ajc, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i130.i, label %bb.dp

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i133.i: ; preds = %bb.dn
  %.sroa.014.0.copyload.i.i.i134.i = load i64, ptr %i.air, align 1, !alias.scope !35371, !noalias !35372
  %i.ajd = xor i64 %.sroa.014.0.copyload.i.i.i134.i, %i.aiv
  %i.aje = getelementptr i8, ptr %i.air, i64 %i.ait
  %i.ajf = getelementptr i8, ptr %i.aje, i64 -8
  %.sroa.016.0.copyload.i.i.i135.i = load i64, ptr %i.ajf, align 1, !alias.scope !35371, !noalias !35372
  %i.ajg = xor i64 %.sroa.016.0.copyload.i.i.i135.i, %i.aja
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i

bb.dp:                                            ; preds = %bb.do
  %.not.i.i.i126.i = icmp eq i64 %i.ait, 0
  br i1 %.not.i.i.i126.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i, label %bb.dq

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i130.i: ; preds = %bb.do
  %i.ajh = getelementptr i8, ptr %i.air, i64 %i.ait
  %i.aji = getelementptr i8, ptr %i.ajh, i64 -4
  %.sroa.019.0.copyload.i.i.i131.i = load i32, ptr %i.aji, align 1, !alias.scope !35371, !noalias !35372
  %.sroa.018.0.copyload.i.i.i132.i = load i32, ptr %i.air, align 1, !alias.scope !35371, !noalias !35372
  %i.ajj = zext i32 %.sroa.018.0.copyload.i.i.i132.i to i64
  %i.ajk = xor i64 %i.aiv, %i.ajj
  %i.ajl = zext i32 %.sroa.019.0.copyload.i.i.i131.i to i64
  %i.ajm = xor i64 %i.aja, %i.ajl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i

bb.dq:                                            ; preds = %bb.dp
  %i.ajn = load i8, ptr %i.air, align 1, !alias.scope !35371, !noalias !35372, !noundef !3
  %i.ajo = lshr i64 %i.ait, 1
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.air, i64 %i.ajo
  %i.ajq = load i8, ptr %i.ajp, align 1, !alias.scope !35371, !noalias !35372, !noundef !3
  %i.ajr = getelementptr i8, ptr %i.air, i64 %i.ait
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 -1
  %i.ajt = load i8, ptr %i.ajs, align 1, !alias.scope !35371, !noalias !35372, !noundef !3
  %i.aju = zext i8 %i.ajn to i64
  %i.ajv = xor i64 %i.aiv, %i.aju
  %i.ajw = zext i8 %i.ajt to i64
  %i.ajx = shl nuw nsw i64 %i.ajw, 8
  %i.ajy = zext i8 %i.ajq to i64
  %i.ajz = or disjoint i64 %i.ajx, %i.ajy
  %i.aka = xor i64 %i.ajz, %i.aja
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i: ; preds = %bb.dq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i130.i, %bb.dp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i133.i
  %.sroa.04.0.i.i.i128.i = phi i64 [ %i.ajg, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i133.i ], [ %i.ajm, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i130.i ], [ %i.aka, %bb.dq ], [ %i.aja, %bb.dp ]
  %.sroa.0.0.i.i.i129.i = phi i64 [ %i.ajd, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i133.i ], [ %i.ajk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i130.i ], [ %i.ajv, %bb.dq ], [ %i.aiv, %bb.dp ]
  %i.akb = zext i64 %.sroa.0.0.i.i.i129.i to i128
  %i.akc = zext i64 %.sroa.04.0.i.i.i128.i to i128
  %i.akd = mul nuw i128 %i.akb, %i.akc            ; 2 uses
  %i.ake = lshr i128 %i.akd, 64
  %i.akf = xor i128 %i.ake, %i.akd
  %i.akg = trunc i128 %i.akf to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i122.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i122.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i, %bb.dm
  %storemerge.i.i123.i = phi i64 [ %i.aiy, %bb.dm ], [ %i.akg, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i127.i ] ; 2 uses
  store i64 %storemerge.i.i123.i, ptr %i.d, align 8, !alias.scope !35362, !noalias !35363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35376)
  br i1 %i.zm, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i122.i
  %i.akh = or i128 %storemerge.i, 4703919738795935662080
  %i.aki = or disjoint i8 %storemerge.i.i3.i, 8
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.ds:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i122.i
  %i.akj = trunc i128 %storemerge.i to i64
  %i.akk = lshr i128 %storemerge.i, 64
  %i.akl = xor i64 %storemerge.i.i123.i, %i.akj
  %i.akm = load i64, ptr %i.aix, align 8, !noalias !35379, !noundef !3
  %i.akn = zext i64 %i.akl to i128
  %i.ako = zext i64 %i.akm to i128
  %i.akp = xor i128 %i.akk, %i.ako
  %i.akq = mul nuw i128 %i.akp, %i.akn            ; 2 uses
  %i.akr = lshr i128 %i.akq, 64
  %i.aks = xor i128 %i.akr, %i.akq
  %i.akt = trunc i128 %i.aks to i64
  store i64 %i.akt, ptr %i.d, align 8, !alias.scope !35380, !noalias !35381
  br label %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

_RINvXsqi_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsr6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.i, %_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.aku = icmp eq ptr %i.f, %i.a
  br i1 %i.aku, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvXsqi_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef align 8 dereferenceable(72) %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
end_hunk_17
begin_hunk_18_@_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 336 ; 2 uses
  tail call fastcc void @_RINvXsiX_NtCs4lawaffTVVK_9sqlparser3astNtB7_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %.sroa.0.03, ptr noalias noundef align 8 dereferenceable(72) %2) #57
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 27450512014448738) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 336
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 336 ; 2 uses
  tail call fastcc void @_RINvXsiX_NtCs4lawaffTVVK_9sqlparser3astNtB7_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %.sroa.0.03, ptr noalias noundef align 8 dereferenceable(16) %2) #57
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 13101380734168716) %1, ptr noalias noundef align 16 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 704
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 704 ; 2 uses
  tail call fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(704) %.sroa.0.03, ptr noalias noundef align 16 dereferenceable(48) %2) #57
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 13101380734168716) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 704
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 704 ; 2 uses
  tail call fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(704) %.sroa.0.03, ptr noalias noundef align 8 dereferenceable(72) %2) #57
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB12_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 13101380734168716) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 704
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 704 ; 2 uses
  tail call fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(704) %.sroa.0.03, ptr noalias noundef align 8 dereferenceable(16) %2) #57
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.03 = phi ptr [ %0, %.lr.ph ], [ %i.f, %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35996)
  %i.g = load i64, ptr %.sroa.0.03, align 8, !range !4, !alias.scope !35993, !noalias !35996, !noundef !3
  %i.h = icmp ne i64 %i.g, -9223372036854775808   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36001)
  %i.i = load i8, ptr %i.c, align 16, !alias.scope !36004, !noalias !35993, !noundef !3 ; 4 uses
  %i.j = icmp ugt i8 %i.i, 64
  br i1 %i.j, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %bb.b
  %i.k = zext i1 %i.h to i128
  %i.l = zext nneg i8 %i.i to i128
  %i.m = shl nuw nsw i128 %i.k, %i.l
  %i.n = load i128, ptr %2, align 16, !alias.scope !36004, !noalias !35993, !noundef !3
  %i.o = or i128 %i.n, %i.m                       ; 5 uses
  store i128 %i.o, ptr %2, align 16, !alias.scope !36004, !noalias !35993
  %i.p = add nuw i8 %i.i, 64
  store i8 %i.p, ptr %i.c, align 16, !alias.scope !36004, !noalias !35993
  br i1 %i.h, label %bb.c, label %bb.d

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread.i: ; preds = %bb.b
  %i.q = load i128, ptr %2, align 16, !alias.scope !36004, !noalias !35993, !noundef !3 ; 2 uses
  %i.r = trunc i128 %i.q to i64
  %i.s = lshr i128 %i.q, 64
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !36004, !noalias !35993, !noundef !3
  %i.u = xor i64 %i.t, %i.r
  %i.v = load ptr, ptr %i.e, align 16, !alias.scope !36004, !noalias !35993, !nonnull !3, !align !311, !noundef !3
  %i.w = load i64, ptr %i.v, align 8, !noalias !36005, !noundef !3
  %i.x = zext i64 %i.u to i128
  %i.y = zext i64 %i.w to i128                    ; 2 uses
  %i.z = xor i128 %i.s, %i.y
  %i.aa = mul nuw i128 %i.z, %i.x                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 2 uses
  store i64 %i.ad, ptr %i.d, align 8, !alias.scope !36004, !noalias !35993
  %i.ae = zext i1 %i.h to i128                    ; 2 uses
  store i128 %i.ae, ptr %2, align 16, !alias.scope !36004, !noalias !35993
  store i8 64, ptr %i.c, align 16, !alias.scope !36004, !noalias !35993
  br i1 %i.h, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !2045, !alias.scope !35993, !noalias !35996, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i8 %i.ag, 2                 ; 2 uses
  %i.ah = select i1 %.not12.i, i128 0, i128 18446744073709551616
  %i.ai = or disjoint i128 %i.ah, %i.ae           ; 2 uses
  store i128 %i.ai, ptr %2, align 16, !alias.scope !36006, !noalias !35993
  store i8 -128, ptr %i.c, align 16, !alias.scope !36006, !noalias !35993
  br i1 %.not12.i, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.03, ptr noalias noundef nonnull align 16 dereferenceable(48) %2)
  br label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !2045, !alias.scope !35993, !noalias !35996, !noundef !3 ; 3 uses
  %i.al = icmp ne i8 %i.ak, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36012)
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.e:                                             ; preds = %bb.d
  %i.am = select i1 %i.al, i128 18446744073709551616, i128 0
  %i.an = or i128 %i.am, %i.o                     ; 2 uses
  store i128 %i.an, ptr %2, align 16, !alias.scope !36006, !noalias !35993
  store i8 -128, ptr %i.c, align 16, !alias.scope !36006, !noalias !35993
  br i1 %i.al, label %._crit_edge4, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge4:                                     ; preds = %bb.e
  %extract.t.i = trunc i128 %i.o to i64
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !36013, !noalias !35993
  %.pre5 = load ptr, ptr %i.e, align 16, !alias.scope !36013, !noalias !35993
  %.pre6 = load i64, ptr %.pre5, align 8, !noalias !36018
  %.pre7 = zext i64 %.pre6 to i128
  %i.ao = xor i64 %.pre, %extract.t.i
  br label %bb.g

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.d
  %i.ap = trunc i128 %i.o to i64
  %i.aq = lshr i128 %i.o, 64
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !36006, !noalias !35993, !noundef !3
  %i.as = xor i64 %i.ar, %i.ap
  %i.at = load ptr, ptr %i.e, align 16, !alias.scope !36006, !noalias !35993, !nonnull !3, !align !311, !noundef !3
  %i.au = load i64, ptr %i.at, align 8, !noalias !36019, !noundef !3
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = xor i128 %i.aq, %i.aw
  %i.ay = mul nuw i128 %i.ax, %i.av               ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = xor i128 %i.az, %i.ay
  %i.bb = trunc i128 %i.ba to i64
  store i64 %i.bb, ptr %i.d, align 8, !alias.scope !36006, !noalias !35993
  %i.bc = zext i1 %i.al to i128
  store i128 %i.bc, ptr %2, align 16, !alias.scope !36006, !noalias !35993
  store i8 64, ptr %i.c, align 16, !alias.scope !36006, !noalias !35993
  br i1 %i.al, label %bb.f, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36021)
  %i.bd = zext nneg i8 %i.ak to i128
  %i.be = shl nuw nsw i128 %i.bd, 64
  %i.bf = or disjoint i128 %i.be, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

bb.g:                                             ; preds = %._crit_edge4, %.thread.i
  %.pre-phi = phi i128 [ %.pre7, %._crit_edge4 ], [ %i.y, %.thread.i ]
  %i.bg = phi i64 [ %i.ao, %._crit_edge4 ], [ %i.ad, %.thread.i ]
  %i.bh = phi i128 [ %i.an, %._crit_edge4 ], [ %i.ai, %.thread.i ]
  %i.bi = phi i8 [ %i.ak, %._crit_edge4 ], [ %i.ag, %.thread.i ]
  %i.bj = lshr i128 %i.bh, 64
  %i.bk = zext i64 %i.bg to i128
  %i.bl = xor i128 %i.bj, %.pre-phi
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64
  store i64 %i.bp, ptr %i.d, align 8, !alias.scope !36013, !noalias !35993
  %i.bq = zext nneg i8 %i.bi to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i: ; preds = %bb.g, %bb.f
  %storemerge.i = phi i128 [ %i.bf, %bb.f ], [ %i.bq, %bb.g ]
  %storemerge.i.i3.i = phi i8 [ 72, %bb.f ], [ 8, %bb.g ]
  store i128 %storemerge.i, ptr %2, align 16, !alias.scope !36013, !noalias !35993
  store i8 %storemerge.i.i3.i, ptr %i.c, align 16, !alias.scope !36013, !noalias !35993
  br label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread.i, %bb.c, %bb.e, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i
  %i.br = icmp eq ptr %i.f, %i.a
  br i1 %i.br, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %2) unnamed_addr #15 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.03 = phi ptr [ %i.i, %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ %0, %bb.a ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36022)
  %i.j = load i64, ptr %.sroa.0.03, align 8, !range !4, !alias.scope !36022, !noalias !36025, !noundef !3
  %i.k = icmp ne i64 %i.j, -9223372036854775808   ; 2 uses
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36027
  store i64 %i.l, ptr %i.f, align 8, !noalias !36027
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #57, !noalias !36022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36027
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36032)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !36035, !noalias !36036, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !36035, !noalias !36036, !noundef !3
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p) #57, !noalias !36035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36038
  store i8 -1, ptr %i.e, align 1, !noalias !36038
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #57, !noalias !36045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36038
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !3478, !alias.scope !36035, !noalias !36036, !noundef !3 ; 2 uses
  %i.s = icmp ne i32 %i.r, 1114112                ; 2 uses
  %i.t = zext i1 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36046
  store i64 %i.t, ptr %i.d, align 8, !noalias !36046
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #57, !noalias !36035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36046
  br i1 %i.s, label %bb.c, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36051
  store i32 %i.r, ptr %i.c, align 4, !noalias !36051
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #57, !noalias !36035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36051
  br label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !2045, !alias.scope !36022, !noalias !36025, !noundef !3 ; 2 uses
  %i.w = icmp ne i8 %i.v, 2                       ; 2 uses
  %i.x = zext i1 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36054
  store i64 %i.x, ptr %i.b, align 8, !noalias !36054
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #57, !noalias !36022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36054
  br i1 %i.w, label %bb.e, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36059
  store i8 %i.v, ptr %i.a, align 1, !noalias !36059
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #57, !noalias !36022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36059
  br label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.y = icmp eq ptr %i.i, %i.g
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB13_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.03 = phi ptr [ %i.c, %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36062)
  %i.d = load i64, ptr %.sroa.0.03, align 8, !range !4, !alias.scope !36062, !noalias !36065, !noundef !3
  %i.e = icmp ne i64 %i.d, -9223372036854775808   ; 2 uses
  %i.f = zext i1 %i.e to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.f), !noalias !36062
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36067)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !36070, !noalias !36071, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !36070, !noalias !36071, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !36070
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 56
  %i.l = load i32, ptr %i.k, align 8, !range !3478, !alias.scope !36070, !noalias !36071, !noundef !3 ; 2 uses
  %i.m = icmp ne i32 %i.l, 1114112                ; 2 uses
  %i.n = zext i1 %i.m to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.n), !noalias !36070
  br i1 %i.m, label %bb.c, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.l), !noalias !36070
  br label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.p = load i8, ptr %i.o, align 8, !range !2045, !alias.scope !36062, !noalias !36065, !noundef !3 ; 2 uses
  %i.q = icmp ne i8 %i.p, 2                       ; 2 uses
  %i.r = zext i1 %i.q to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.r), !noalias !36062
  br i1 %i.q, label %bb.e, label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i8 noundef %i.p), !noalias !36062
  br label %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.s = icmp eq ptr %i.c, %i.a
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsnY_NtCs4lawaffTVVK_9sqlparser3astNtB7_26AttachDuckDBDatabaseOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1a_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast3TagNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef align 16 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 48 ; 2 uses
  tail call fastcc void @_RINvXswG_NtCs4lawaffTVVK_9sqlparser3astNtB7_3TagNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.03, ptr noalias noundef align 16 dereferenceable(48) %2) #57
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast3TagNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXswG_NtCs4lawaffTVVK_9sqlparser3astNtB7_3TagNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_18
