Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tsort-e7145e594176a875.uu_tsort.1e1ee4b2128ce9f6-cgu.0?download=true
inline.NumInlined: 869
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB6_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtB8_9raw_entryINtB2b_17RawVacantEntryMutBQ_uuE18insert_with_hasherNCINvMs4_NtBU_8internerINtB3p_14StringInternerINtNtNtBU_7backend6bucket13BucketBackendBQ_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0ECs2AkyTgTLZ1a_8uu_tsort:bb.a
  br label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit

_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i, %bb.p, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i, %bb.q
  %.sroa.06.1.i.i.i.i.i.i.i.i = phi i64 [ %i.dd, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i ], [ %i.dx, %bb.q ], [ 1376283091369227076, %bb.p ], [ %i.cy, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ %i.da, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i ], [ %i.ds, %bb.q ], [ 2611923443488327891, %bb.p ], [ %i.cw, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i ]
  %i.dy = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i to i128
  %i.dz = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i to i128
  %i.ea = mul nuw i128 %i.dy, %i.dz               ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = xor i128 %i.eb, %i.ea
  %i.ed = trunc i128 %i.ec to i64
  %i.ee = xor i64 %i.bj, %i.ed
  %i.ef = mul i64 %i.ee, 1452335207727870361
  %i.eg = add i64 %i.ef, 4919460506697669435      ; 2 uses
  %i.eh = tail call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.eh, %i.ag            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !97
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ek, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit ], [ %i.fb, %.lr.ph.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.em
  %i.eo = and i64 %i.en, %i.ag                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !4
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.r, label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.aj, align 16
  %i.es = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.et, 0
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.ey, %i.ag           ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !97
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.r
  %.sroa.0.0.i5.i = phi i64 [ %i.ev, %bb.r ], [ %i.eo, %._crit_edge.i ] ; 3 uses
  %i.fc = lshr i64 %i.eh, 57
  %i.fd = trunc nuw nsw i64 %i.fc to i8           ; 2 uses
  %i.fe = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.ff = and i64 %i.fe, %i.ag
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.0.i5.i
  store i8 %i.fd, ptr %i.fg, align 1
  %i.fh = getelementptr i8, ptr %i.aj, i64 %i.ff
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store i8 %i.fd, ptr %i.fi, align 1
  %i.fj = shl i64 %i.az, 3
  %i.fk = sub nuw nsw i64 -8, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.al, i64 %i.fk
  %i.fm = shl i64 %.sroa.0.0.i5.i, 3
  %i.fn = sub nuw nsw i64 -8, %i.fm
  %i.fo = getelementptr inbounds i8, ptr %i.aj, i64 %i.fn
  %i.fp = load i64, ptr %i.fl, align 1
  store i64 %i.fp, ptr %i.fo, align 8
  %i.fq = icmp eq i64 %i.ba, 0
  br i1 %i.fq, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs5TyDaJ8Flbl_14allocator_api26stable5alloc6global6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit
  %i.fr = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.ak, ptr %0, align 8, !alias.scope !98, !noalias !99
  store i64 %i.ag, ptr %i.e, align 8, !alias.scope !100, !noalias !101
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fr, ptr %i.fs, align 8, !alias.scope !102, !noalias !103
  %i.ft = icmp eq i64 %i.f, 0
  br i1 %i.ft, label %_RINvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs5TyDaJ8Flbl_14allocator_api26stable5alloc6global6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit, label %_RNvMs1_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.fu = shl nuw i64 %i.h, 3
  %i.fv = add nuw i64 %i.fu, 8
  %i.fw = icmp ult i64 %i.h, 2305843009213693951
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = and i64 %i.fv, -16                      ; 3 uses
  %i.fy = add nsw i64 %i.f, 17
  %i.fz = add i64 %i.fy, %i.fx                    ; 4 uses
  %i.ga = icmp uge i64 %i.fz, %i.fx
  %i.gb = icmp ult i64 %i.fz, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ga)
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp eq i64 %i.fz, 0
  br i1 %i.gc, label %_RINvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs5TyDaJ8Flbl_14allocator_api26stable5alloc6global6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.gd = sub nsw i64 0, %i.fx
  %i.ge = getelementptr inbounds i8, ptr %i.al, i64 %i.gd
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ge, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !104
  br label %_RINvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs5TyDaJ8Flbl_14allocator_api26stable5alloc6global6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit

bb.t:                                             ; preds = %bb.b
  %.val9 = load ptr, ptr %0, align 8              ; 21 uses
  %.not6.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread127, label %.lr.ph.i13

_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread127: ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull align 1 %.val9, i64 %i.h, i1 false)
  br label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i13:                                       ; preds = %bb.t
  %i.gg = lshr i64 %i.h, 4
  %i.gh = and i64 %i.h, 15
  %.not10.i.i.i = icmp ne i64 %i.gh, 0
  %i.gi = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.gg, %i.gi ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.gj = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.gj, label %.epil.preheader, label %.lr.ph.i13.new

.lr.ph.i13.new:                                   ; preds = %.lr.ph.i13
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.u

._crit_edge.i15.unr-lcssa:                        ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i15, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i15.unr-lcssa, %.lr.ph.i13
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %i.gt, %._crit_edge.i15.unr-lcssa ]
  %lcmp.mod158 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.gk = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.gk, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.gl = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.gm = or <2 x i64> %i.gl, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gm, ptr %i.gk, align 16
  br label %._crit_edge.i15

._crit_edge.i15:                                  ; preds = %._crit_edge.i15.unr-lcssa, %.epil.preheader
  %. = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.139 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.gn = getelementptr inbounds nuw i8, ptr %.val9, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr nonnull align 1 %.val9, i64 %.139, i1 false)
  %.val.i.i18 = load ptr, ptr %2, align 8, !nonnull !4, !align !7 ; 2 uses
  %i.go = getelementptr i8, ptr %.val.i.i18, i64 8
  %i.gp = getelementptr i8, ptr %.val.i.i18, i64 16
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i13.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i13.new ], [ %i.gt, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i13.new ], [ %niter.next.1, %bb.u ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.gq, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.gr = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.gs = or <2 x i64> %i.gr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gs, ptr %i.gq, align 16
  %i.gt = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.gv, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.gw = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.gx = or <2 x i64> %i.gw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gx, ptr %i.gv, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i15.unr-lcssa, label %bb.u

bb.v:                                             ; preds = %._crit_edge.i15, %bb.af
  %.sroa.04.0.i88 = phi i64 [ 0, %._crit_edge.i15 ], [ %i.gy, %bb.af ] ; 8 uses
  %i.gy = add nuw i64 %.sroa.04.0.i88, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.04.0.i88 ; 3 uses
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !88, !noundef !4
  %.not.i1 = icmp eq i8 %i.ha, -128
  br i1 %.not.i1, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %.neg8.i = shl i64 %.neg.i, 3
  %i.hb = getelementptr inbounds i8, ptr %.val9, i64 %.neg8.i ; 3 uses
  %i.hc = sub nsw i64 0, %.sroa.04.0.i88
  %i.hd = getelementptr inbounds [8 x i8], ptr %.val9, i64 %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -8
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ae, %bb.w
  %.val2.i17 = load i64, ptr %i.he, align 8, !range !8, !noalias !105, !noundef !4
  %.val.i.i.i19 = load ptr, ptr %i.go, align 8, !noalias !105, !nonnull !4, !noundef !4
  %.val1.i.i.i20 = load i64, ptr %i.gp, align 8, !noalias !105, !noundef !4
  %i.hf = add i64 %.val2.i17, -1                  ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %.val1.i.i.i20
  tail call void @llvm.assume(i1 %i.hg), !noalias !88
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i19, i64 %i.hf ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !105, !nonnull !4, !noundef !4 ; 10 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !105, !noundef !4 ; 11 uses
  %i.hl = icmp samesign ult i64 %i.hk, 17
  br i1 %i.hl, label %bb.x, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21

bb.x:                                             ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.hm = icmp samesign ugt i64 %i.hk, 7
  br i1 %i.hm, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i38, label %bb.y

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21: ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.hn = add i64 %i.hk, -17                      ; 2 uses
  %i.ho = lshr i64 %i.hn, 4                       ; 2 uses
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22.epil.preheader, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21
  %unroll_iter164 = and i64 %i.hp, 2305843009213693950
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new
  %.sroa.0.090.i.i.i.i.i.i.i.i23 = phi i64 [ 2611923443488327891, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new ], [ %i.ia, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22 ]
  %.sroa.06.089.i.i.i.i.i.i.i.i24 = phi i64 [ 1376283091369227076, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new ], [ %i.ik, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22 ]
  %.sroa.018.088.i.i.i.i.i.i.i.i25 = phi ptr [ %i.hi, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new ], [ %i.ib, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22 ] ; 5 uses
  %niter165 = phi i64 [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21.new ], [ %niter165.next.1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i27 = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25, align 1, !alias.scope !106, !noalias !107
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i28 = load i64, ptr %i.hs, align 1, !alias.scope !106, !noalias !107
  %i.ht = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i27, %.sroa.0.090.i.i.i.i.i.i.i.i23
  %i.hu = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i28, -6626703657320631856
  %i.hv = zext i64 %i.ht to i128
  %i.hw = zext i64 %i.hu to i128
  %i.hx = mul nuw i128 %i.hw, %i.hv               ; 2 uses
  %i.hy = lshr i128 %i.hx, 64
  %i.hz = xor i128 %i.hy, %i.hx
  %i.ia = trunc i128 %i.hz to i64                 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i27.1 = load i64, ptr %i.hr, align 1, !alias.scope !106, !noalias !107
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i28.1 = load i64, ptr %i.ic, align 1, !alias.scope !106, !noalias !107
  %i.id = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i27.1, %.sroa.06.089.i.i.i.i.i.i.i.i24
  %i.ie = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i28.1, -6626703657320631856
  %i.if = zext i64 %i.id to i128
  %i.ig = zext i64 %i.ie to i128
  %i.ih = mul nuw i128 %i.ig, %i.if               ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = xor i128 %i.ii, %i.ih
  %i.ik = trunc i128 %i.ij to i64                 ; 3 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1.not = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22
  %i.il = and i64 %i.hn, 16
  %lcmp.mod160.not.not = icmp eq i64 %i.il, 0
  br i1 %lcmp.mod160.not.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22.epil.preheader, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22.epil.preheader: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21
  %.sroa.0.090.i.i.i.i.i.i.i.i23.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21 ], [ %i.ia, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.i.i.i24.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21 ], [ %i.ik, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.i.i.i25.epil.init = phi ptr [ %i.hi, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.preheader.i.i.i.i.i.i.i.i21 ], [ %i.ib, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i64 %i.hp to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %.sroa.037.0.copyload.i.i.i.i.i.i.i.i27.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25.epil.init, align 1, !alias.scope !106, !noalias !107
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.i.i.i25.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.i.i.i28.epil = load i64, ptr %i.im, align 1, !alias.scope !106, !noalias !107
  %i.in = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.i.i.i27.epil, %.sroa.0.090.i.i.i.i.i.i.i.i23.epil.init
  %i.io = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.i.i.i28.epil, -6626703657320631856
  %i.ip = zext i64 %i.in to i128
  %i.iq = zext i64 %i.io to i128
  %i.ir = mul nuw i128 %i.iq, %i.ip               ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = xor i128 %i.is, %i.ir
  %i.iu = trunc i128 %i.it to i64
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22.epil.preheader
  %.sroa.06.089.i.i.i.i.i.i.i.i24.lcssa = phi i64 [ %i.ia, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.i.i.i24.epil.init, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22.epil.preheader ]
  %.lcssa153 = phi i64 [ %i.ik, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29.unr-lcssa ], [ %i.iu, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit74.i.i.i.i.i.i.i.i22.epil.preheader ]
  %i.iv = getelementptr i8, ptr %i.hi, i64 %i.hk  ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i.i.i.i30 = load i64, ptr %i.iw, align 1, !alias.scope !106, !noalias !107
  %i.ix = xor i64 %.sroa.041.0.copyload.i.i.i.i.i.i.i.i30, %.sroa.06.089.i.i.i.i.i.i.i.i24.lcssa
  %i.iy = getelementptr i8, ptr %i.iv, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i.i.i.i31 = load i64, ptr %i.iy, align 1, !alias.scope !106, !noalias !107
  %i.iz = xor i64 %.sroa.043.0.copyload.i.i.i.i.i.i.i.i31, %.lcssa153
  br label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41

bb.y:                                             ; preds = %bb.x
  %i.ja = icmp samesign ugt i64 %i.hk, 3
  br i1 %i.ja, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i35, label %bb.z

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i38: ; preds = %bb.x
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i39 = load i64, ptr %i.hi, align 1, !alias.scope !106, !noalias !107
  %i.jb = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i39, 2611923443488327891
  %i.jc = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.jd = getelementptr i8, ptr %i.jc, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i40 = load i64, ptr %i.jd, align 1, !alias.scope !106, !noalias !107
  %i.je = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i40, 1376283091369227076
  br label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i.i.i.i.i34 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i34, label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41, label %bb.aa

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i35: ; preds = %bb.y
  %i.jf = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.jg = getelementptr i8, ptr %i.jf, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i36 = load i32, ptr %i.jg, align 1, !alias.scope !106, !noalias !107
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i37 = load i32, ptr %i.hi, align 1, !alias.scope !106, !noalias !107
  %i.jh = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i37 to i64
  %i.ji = xor i64 %i.jh, 2611923443488327891
  %i.jj = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i36 to i64
  %i.jk = xor i64 %i.jj, 1376283091369227076
  br label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41

bb.aa:                                            ; preds = %bb.z
  %i.jl = load i8, ptr %i.hi, align 1, !alias.scope !106, !noalias !107, !noundef !4
  %i.jm = lshr i64 %i.hk, 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !alias.scope !106, !noalias !107, !noundef !4
  %i.jp = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.jq = getelementptr i8, ptr %i.jp, i64 -1
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !106, !noalias !107, !noundef !4
  %i.js = zext i8 %i.jl to i64
  %i.jt = xor i64 %i.js, 2611923443488327891
  %i.ju = zext i8 %i.jr to i64
  %i.jv = shl nuw nsw i64 %i.ju, 8
  %i.jw = zext i8 %i.jo to i64
  %i.jx = or disjoint i64 %i.jv, %i.jw
  %i.jy = xor i64 %i.jx, 1376283091369227076
  br label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41

_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i38, %bb.z, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i35, %bb.aa
  %.sroa.06.1.i.i.i.i.i.i.i.i32 = phi i64 [ %i.je, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i38 ], [ %i.jk, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i35 ], [ %i.jy, %bb.aa ], [ 1376283091369227076, %bb.z ], [ %i.iz, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29 ]
  %.sroa.0.1.i.i.i.i.i.i.i.i33 = phi i64 [ %i.jb, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i38 ], [ %i.ji, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit.i.i.i.i.i.i.i.i35 ], [ %i.jt, %bb.aa ], [ 2611923443488327891, %bb.z ], [ %i.ix, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2AkyTgTLZ1a_8uu_tsort.exit70.i.i.i.i.i.i.i.i29 ]
  %i.jz = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i33 to i128
  %i.ka = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i32 to i128
  %i.kb = mul nuw i128 %i.jz, %i.ka               ; 2 uses
  %i.kc = lshr i128 %i.kb, 64
  %i.kd = xor i128 %i.kc, %i.kb
  %i.ke = trunc i128 %i.kd to i64
  %i.kf = xor i64 %i.hk, %i.ke
  %i.kg = mul i64 %i.kf, 1452335207727870361
  %i.kh = add i64 %i.kg, 4919460506697669435      ; 2 uses
  %i.ki = tail call noundef i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 26) ; 3 uses
  %.sroa.0.07.i42 = and i64 %i.ki, %i.f           ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.0.07.i42
  %.sroa.0.0.copyload.i68.i43 = load <16 x i8>, ptr %i.kj, align 1, !noalias !108
  %i.kk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i43, zeroinitializer
  %i.kl = bitcast <16 x i1> %i.kk to i16          ; 2 uses
  %.not.i9.i44 = icmp eq i16 %i.kl, 0
  br i1 %.not.i9.i44, label %.lr.ph.i51, label %._crit_edge.i45, !prof !9

._crit_edge.i45:                                  ; preds = %.lr.ph.i51, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41
  %.sroa.0.0.lcssa.i46 = phi i64 [ %.sroa.0.07.i42, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41 ], [ %.sroa.0.0.i53, %.lr.ph.i51 ]
  %.lcssa.i47 = phi i16 [ %i.kl, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41 ], [ %i.lc, %.lr.ph.i51 ]
  %i.km = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i47, i1 true)
  %i.kn = zext nneg i16 %i.km to i64
  %i.ko = add i64 %.sroa.0.0.lcssa.i46, %i.kn
  %i.kp = and i64 %i.ko, %i.f                     ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.val9, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !noundef !4
  %i.ks = icmp sgt i8 %i.kr, -1
  br i1 %i.ks, label %bb.ab, label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit56, !prof !5

bb.ab:                                            ; preds = %._crit_edge.i45
  %.val2.i.i49 = load <16 x i8>, ptr %.val9, align 16
  %i.kt = icmp slt <16 x i8> %.val2.i.i49, zeroinitializer
  %i.ku = bitcast <16 x i1> %i.kt to i16          ; 2 uses
  %.not.i6.i50 = icmp ne i16 %i.ku, 0
  %i.kv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ku, i1 true)
  %i.kw = zext nneg i16 %i.kv to i64
  tail call void @llvm.assume(i1 %.not.i6.i50)
  br label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit56

.lr.ph.i51:                                       ; preds = %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41, %.lr.ph.i51
  %.sroa.0.010.i52 = phi i64 [ %.sroa.0.0.i53, %.lr.ph.i51 ], [ %.sroa.0.07.i42, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41 ]
  %i.kx = phi i64 [ %i.ky, %.lr.ph.i51 ], [ 0, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE14reserve_rehashNCINvMs6_NtBa_9raw_entryINtB2d_17RawVacantEntryMutBS_uuE18insert_with_hasherNCINvMs4_NtBW_8internerINtB3r_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReEs_0E0E0Cs2AkyTgTLZ1a_8uu_tsort.exit41 ]
  %i.ky = add i64 %i.kx, 16                       ; 2 uses
  %i.kz = add i64 %i.ky, %.sroa.0.010.i52
  %.sroa.0.0.i53 = and i64 %i.kz, %i.f            ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.0.0.i53
  %.sroa.0.0.copyload.i6.i54 = load <16 x i8>, ptr %i.la, align 1, !noalias !108
  %i.lb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i54, zeroinitializer
  %i.lc = bitcast <16 x i1> %i.lb to i16          ; 2 uses
  %.not.i.i55 = icmp eq i16 %i.lc, 0
  br i1 %.not.i.i55, label %.lr.ph.i51, label %._crit_edge.i45, !prof !10

_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit56: ; preds = %._crit_edge.i45, %bb.ab
  %.sroa.0.0.i5.i48 = phi i64 [ %i.kw, %bb.ab ], [ %i.kp, %._crit_edge.i45 ] ; 4 uses
  %i.ld = sub i64 %.sroa.04.0.i88, %.sroa.0.07.i42
  %i.le = sub i64 %.sroa.0.0.i5.i48, %.sroa.0.07.i42
  %i.lf = xor i64 %i.le, %i.ld
  %.unshifted.i = and i64 %i.lf, %i.f
  %i.lg = icmp ult i64 %.unshifted.i, 16
  br i1 %i.lg, label %.preheader.i.preheader, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit56
  %i.lh = shl i64 %.sroa.0.0.i5.i48, 3
  %i.li = sub nuw nsw i64 -8, %i.lh
  %i.lj = getelementptr inbounds i8, ptr %.val9, i64 %i.li ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.0.0.i5.i48 ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 1, !noalias !88, !noundef !4
  %i.lm = lshr i64 %i.ki, 57
  %i.ln = trunc nuw nsw i64 %i.lm to i8           ; 2 uses
  %i.lo = add i64 %.sroa.0.0.i5.i48, -16
  %i.lp = and i64 %i.lo, %i.f
  store i8 %i.ln, ptr %i.lk, align 1, !noalias !88
  %i.lq = getelementptr i8, ptr %.val9, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 16
  store i8 %i.ln, ptr %i.lr, align 1, !noalias !88
  %i.ls = icmp eq i8 %i.ll, -1
  br i1 %i.ls, label %bb.ad, label %bb.ae

.preheader.i.preheader:                           ; preds = %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit56
  %4 = lshr i64 %i.ki, 57
  %5 = trunc nuw nsw i64 %4 to i8                 ; 2 uses
  %6 = add i64 %.sroa.04.0.i88, -16
  %7 = and i64 %6, %i.f
  store i8 %5, ptr %i.gz, align 1, !noalias !88
  %8 = getelementptr i8, ptr %.val9, i64 %7
  %9 = getelementptr i8, ptr %8, i64 16
  store i8 %5, ptr %9, align 1, !noalias !88
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.lt = add i64 %.sroa.04.0.i88, -16
  %i.lu = and i64 %i.lt, %i.f
  store i8 -1, ptr %i.gz, align 1, !noalias !88
  %i.lv = getelementptr i8, ptr %.val9, i64 %i.lu
  %i.lw = getelementptr i8, ptr %i.lv, i64 16
  store i8 -1, ptr %i.lw, align 1, !noalias !88
  %10 = load i64, ptr %i.hb, align 1, !noalias !88
  store i64 %10, ptr %i.lj, align 1, !noalias !88
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110), !noalias !88
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.hb, align 1, !alias.scope !109, !noalias !111
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.lj, align 1, !alias.scope !110, !noalias !112
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.hb, align 1, !alias.scope !109, !noalias !111
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.lj, align 1, !alias.scope !110, !noalias !112
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit

bb.af:                                            ; preds = %bb.ad, %.preheader.i.preheader, %bb.v
  %exitcond.not = icmp eq i64 %.sroa.04.0.i88, %i.f
  br i1 %exitcond.not, label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.v

_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.af, %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread127
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ly = sub nuw i64 %.sroa.03.0.i, %i.b
  store i64 %i.ly, ptr %i.lx, align 8, !alias.scope !113, !noalias !88
  br label %_RINvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs5TyDaJ8Flbl_14allocator_api26stable5alloc6global6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit

bb.ag:                                            ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !noalias !114
  unreachable

_RINvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs5TyDaJ8Flbl_14allocator_api26stable5alloc6global6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit: ; preds = %._crit_edge, %_RNvMs1_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.s, %bb.l, %bb.j, %bb.h, %bb.c, %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ undef, %bb.l ], [ undef, %bb.s ], [ undef, %._crit_edge ], [ undef, %_RNvMs1_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.aa, %bb.j ], [ undef, %bb.h ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ 0, %bb.l ], [ -1, %bb.s ], [ -1, %._crit_edge ], [ -1, %_RNvMs1_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 16, %bb.j ], [ 0, %bb.h ]
  %i.lz = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ma = insertvalue { i64, i64 } %i.lz, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.ma
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeNtCs2AkyTgTLZ1a_8uu_tsort12VisitedStateEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1J_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EB1L_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !142, !noalias !143, !noundef !4 ; 5 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !142, !noalias !143, !noundef !4 ; 6 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #23, !noalias !144 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  call fastcc void @_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2AkyTgTLZ1a_8uu_tsort(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 16, 41) 16, i64 noundef %..i, i1 noundef zeroext %3) #26
  %i.s = load ptr, ptr %i.a, align 8, !noalias !146, !noundef !4 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !146 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !146 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  br i1 %i.t, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = load ptr, ptr %0, align 8, !alias.scope !147, !noalias !148, !nonnull !4, !noundef !4 ; 5 uses
  %i.aa = icmp eq i64 %i.e, 0
  br i1 %i.aa, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val222 = load <16 x i8>, ptr %i.z, align 16
  %i.ab = icmp sgt <16 x i8> %.val222, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.015.032 = phi ptr [ %.sroa.015.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %.sroa.5.031 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.030 = phi i64 [ %i.am, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.e, %.preheader.preheader ]
  %.sroa.13.029 = phi i16 [ %i.ak, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i124 = icmp eq i16 %.sroa.13.029, 0
  br i1 %.not.i124, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.015.126 = phi ptr [ %i.ad, %.lr.ph ], [ %.sroa.015.032, %.preheader ] ; 2 uses
  %.sroa.5.125 = phi i64 [ %i.ag, %.lr.ph ], [ %.sroa.5.031, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.126) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.126, i64 16 ; 3 uses
  %.val23 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val23, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.125, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.029, %.preheader ], [ %i.af, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.031, %.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.032, %.preheader ], [ %i.ad, %.lr.ph ]
  %i.ah = add i16 %.sroa.13.1.lcssa, -1
  %i.ai = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = and i16 %i.ah, %.sroa.13.1.lcssa
  %i.al = add i64 %.sroa.5.1.lcssa, %i.aj         ; 2 uses
  %i.am = add i64 %.sroa.9.030, -1                ; 2 uses
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %.val.i = load i64, ptr %i.ap, align 8, !range !8, !alias.scope !149, !noalias !150, !noundef !4
  %i.aq = mul i64 %.val.i, -1065810590584100411   ; 2 uses
  %i.ar = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.v             ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.as, align 1, !noalias !151
  %i.at = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.au, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.au, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.bl, %.lr.ph.i ]
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.lcssa.i, %i.aw
  %i.ay = and i64 %i.ax, %i.v                     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %bb.f, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.f:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.bc = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bd, 0
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bg = phi i64 [ %i.bh, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bh = add i64 %i.bg, 16                       ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.bi, %i.v             ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bj, align 1, !noalias !151
  %i.bk = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.f
  %.sroa.0.0.i5.i = phi i64 [ %i.bf, %bb.f ], [ %i.ay, %._crit_edge.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  %i.bn = lshr i64 %i.ar, 57
  %i.bo = trunc nuw nsw i64 %i.bn to i8           ; 2 uses
  %i.bp = add i64 %.sroa.0.0.i5.i, -16
  %i.bq = and i64 %i.bp, %i.v
  store i8 %i.bo, ptr %i.bm, align 1, !noalias !152
  %i.br = getelementptr i8, ptr %i.s, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bo, ptr %i.bs, align 1, !noalias !152
  %.neg.i.i = xor i64 %i.al, -1
  %.neg59.i.i = shl i64 %.neg.i.i, 4
  %i.bt = getelementptr inbounds i8, ptr %i.z, i64 %.neg59.i.i
  %.neg60.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg61.i.i = shl i64 %.neg60.i.i, 4
  %i.bu = getelementptr inbounds i8, ptr %i.s, i64 %.neg61.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bu, ptr noundef nonnull align 1 dereferenceable(16) %i.bt, i64 range(i64 16, 41) 16, i1 false), !noalias !152
  %i.bv = icmp eq i64 %i.am, 0
  br i1 %i.bv, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.e
  %i.bw = sub i64 %i.x, %i.e
  store i64 %i.y, ptr %0, align 8, !alias.scope !153, !noalias !154
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !155, !noalias !156
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !alias.scope !157, !noalias !158
  %i.by = icmp eq i64 %i.i, 0
  br i1 %i.by, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs2AkyTgTLZ1a_8uu_tsort.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.bz = shl i64 %i.i, 4                         ; 2 uses
  %i.ca = add i64 %i.bz, 16
  %i.cb = add i64 %i.bz, 31                       ; 2 uses
  %i.cc = icmp uge i64 %i.cb, %i.ca
  call void @llvm.assume(i1 %i.cc), !noalias !152
  %i.cd = and i64 %i.cb, -16                      ; 3 uses
  %i.ce = add i64 %i.i, 17
  %i.cf = add i64 %i.ce, %i.cd                    ; 4 uses
end_hunk_0
