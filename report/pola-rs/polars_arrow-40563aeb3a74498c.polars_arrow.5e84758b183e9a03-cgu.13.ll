inline.NumInlined: 2131
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTTPhjEmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs8774dFTUdNv_12polars_arrow:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167, !noalias !153
  store ptr %i.d, ptr %i.c, align 8, !dbg !173, !noalias !153
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !173 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !173, !noalias !153
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !173 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !173, !noalias !153
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !173 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !173, !noalias !153
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !173 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !173, !noalias !153
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !173 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !173, !noalias !153
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !173 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !173, !noalias !153
  %i.x = load i64, ptr %i.e, align 8, !dbg !176, !alias.scope !181, !noalias !182, !noundef !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !183
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !183

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !189, !alias.scope !181, !noalias !182, !nonnull !12, !noundef !12 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !192
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !200
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !214
  br label %.preheader, !dbg !183

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !215
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !229

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !230 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !236
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !239
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !246 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !247     ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !215
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !229

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !248, !alias.scope !181, !noalias !182
  br label %._crit_edge64, !dbg !248

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !248 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !249
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !249, !noalias !153
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !250, !noalias !153
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8774dFTUdNv_12polars_arrow(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.h, !dbg !251, !noalias !170

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !273, !noalias !170
  unreachable, !dbg !273

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !274), !dbg !168
  call void @llvm.experimental.noalias.scope.decl(metadata !277), !dbg !280, !noalias !170
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !283, !alias.scope !289, !noalias !170 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !283, !alias.scope !289, !noalias !170, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !290), !dbg !283, !noalias !170
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !293
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !293

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !298, !alias.scope !299, !noalias !170, !noundef !12
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !298, !alias.scope !299, !noalias !170, !noundef !12 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !300
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !307     ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !316
  %i.ap = add i64 %i.ao, %i.an, !dbg !317         ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !317
  call void @llvm.assume(i1 %i.aq), !dbg !320, !noalias !170
  %i.ar = sub i64 0, %i.al, !dbg !323
  %i.as = and i64 %i.ap, %i.ar, !dbg !324         ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !325
  %i.au = add i64 %i.at, %i.as, !dbg !327         ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !327
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !329, !noalias !170
  call void @llvm.assume(i1 %i.ax), !dbg !329, !noalias !170
  %i.ay = icmp ne i64 %i.al, 0, !dbg !332
  call void @llvm.assume(i1 %i.ay), !dbg !339, !noalias !170
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !170
  %i.az = icmp eq i64 %i.au, 0, !dbg !340
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %bb.i, !dbg !340

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !350
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !354
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #33, !dbg !355, !noalias !363
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, !dbg !364

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !168, !noalias !153
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow.exit, !dbg !169

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !365 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !365 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !365
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !366
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !376
  %i.be = zext nneg i16 %i.bd to i64, !dbg !377
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !378
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !382 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !383     ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !385, !alias.scope !395, !noalias !398, !nonnull !12, !noundef !12
  %i.bj = sub nsw i64 0, %i.bg, !dbg !400
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj, !dbg !406
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24, !dbg !407
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRTPhjEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit unwind label %bb.f, !dbg !413 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !421  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !427
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !433, !noalias !441
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !444
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !444 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !452
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !456, !prof !457

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !421
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ], [ %i.cg, %.lr.ph.i ], !dbg !444
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !458
  %i.br = zext nneg i16 %i.bq to i64, !dbg !463
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !464
  %i.bt = and i64 %i.bs, %i.t, !dbg !464          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !466
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !476, !noundef !12
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !477
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !477, !prof !126

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !482
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !485
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !485 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !490
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !494
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !494
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !495
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !498

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !499            ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !503
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !421 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !427
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !433, !noalias !441
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !444
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !444 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !452
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !456, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !505
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !515 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !517
  %i.ck = and i64 %i.cj, %i.t, !dbg !522
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !523
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !529, !noalias !170
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !530
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !530
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !534, !noalias !170
  %i.co = load ptr, ptr %0, align 8, !dbg !535, !alias.scope !181, !noalias !182, !nonnull !12, !noundef !12
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !541
  %.neg61.i.i = mul i64 %.neg.i.i, 24, !dbg !541
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !543
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !546
  %.neg63.i.i = mul i64 %.neg62.i.i, 24, !dbg !546
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !549
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 1 dereferenceable(24) %i.cp, i64 range(i64 8, 25) 24, i1 false), !dbg !552, !noalias !170
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !183
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !183

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !555

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !dbg !559
  %.val11 = load ptr, ptr %0, align 8, !dbg !560  ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !563
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !563

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !580
  %i.ct = and i64 %i.l, 15, !dbg !596
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !598
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !598
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !598 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !563
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !563
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !563

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !563
  br label %bb.l, !dbg !563

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !563
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !563

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !563
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !563
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !600 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !606
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !609
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !617
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !617
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !621
  br label %._crit_edge.i18, !dbg !627

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !627
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !628, !prof !631

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !600 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !606
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !609
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !617
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !617
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !621
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !632   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !600
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !600 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !606
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !609
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !617
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !617
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !621
  %niter.next.1 = add i64 %niter, 2, !dbg !563    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !563
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !563

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !636

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !637
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !644, !noalias !645
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !647
  store ptr null, ptr %i.dj, align 8, !dbg !647, !noalias !645
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !647
  store i64 24, ptr %i.dk, align 8, !dbg !647, !noalias !645
  store ptr %0, ptr %i.a, align 8, !dbg !647, !noalias !645
  %i.dl = load i64, ptr %i.i, align 8, !dbg !650, !alias.scope !556, !noalias !654, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !655
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !670

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !671
  %i.dn = load ptr, ptr %0, align 8, !dbg !678, !noalias !654, !nonnull !12, !noundef !12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !682
  %i.dp = load i8, ptr %i.do, align 1, !dbg !685, !noalias !654, !noundef !12
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !685
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !692

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !671
  %.neg11.i = mul i64 %.neg.i, 24, !dbg !693
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !697 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !700

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !702, !alias.scope !706, !noalias !709, !nonnull !12, !noundef !12
  %i.dt = getelementptr inbounds [24 x i8], ptr %i.ds, i64 %i.dr, !dbg !711
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -24, !dbg !714
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRTPhjEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 unwind label %bb.n, !dbg !718 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.u, !dbg !721, !noalias !654

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !722, !nonnull !12, !noundef !12 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !722, !noundef !12 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !724 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !726
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !729, !noalias !733
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !736
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !736 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !740
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !742, !prof !457

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !724
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !736
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !743
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !746
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !747
  %i.ed = and i64 %i.ec, %.val9, !dbg !747        ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !748
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !753, !noundef !12
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !754
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !754, !prof !126

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !756
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !758
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !758 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !761
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !763
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !763
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !764
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !766

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTTPhjEmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !767            ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !769
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !724 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !726
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !729, !noalias !733
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !736
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !736 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !740
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !742, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !770
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !781
  %i.et = xor i64 %i.es, %i.er, !dbg !785
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !785
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !785
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !786, !prof !789

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !790
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !795 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !797
  %i.ey = and i64 %.val9, %i.ex, !dbg !801
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !802
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !807, !noalias !654
  %i.fa = load ptr, ptr %0, align 8, !dbg !808, !noalias !654, !nonnull !12, !noundef !12
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !810
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !810
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !813, !noalias !654
  br label %bb.s, !dbg !814

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !817
  %.neg13.i = mul i64 %.neg12.i, 24, !dbg !817
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !820 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !823 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !830, !noalias !654, !noundef !12
  %i.fg = lshr i64 %i.dv, 57, !dbg !831
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !836 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !838
  %i.fj = and i64 %i.fi, %.val9, !dbg !842
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !843, !noalias !654
  %i.fk = load ptr, ptr %0, align 8, !dbg !845, !noalias !654, !nonnull !12, !noundef !12
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !848
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !848
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !851, !noalias !654
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !852
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !852

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !854
  %i.fp = load i64, ptr %i.i, align 8, !dbg !858, !noalias !654, !noundef !12
  %i.fq = and i64 %i.fp, %i.fo, !dbg !859
  %i.fr = load ptr, ptr %0, align 8, !dbg !860, !noalias !654, !nonnull !12, !noundef !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !864
  store i8 -1, ptr %i.fs, align 1, !dbg !867, !noalias !654
  %i.ft = load ptr, ptr %0, align 8, !dbg !868, !noalias !654, !nonnull !12, !noundef !12
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !870
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !870
  store i8 -1, ptr %i.fv, align 1, !dbg !873, !noalias !654
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fd, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 24, i1 false), !dbg !874, !noalias !654
  br label %bb.s, !dbg !877

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !655
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !670

bb.t:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjmEE14reserve_rehashNCINvNtB8_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs8774dFTUdNv_12polars_arrow:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !943, !noalias !934
  store ptr %i.d, ptr %i.c, align 8, !dbg !949, !noalias !934
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !949 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !949, !noalias !934
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !949 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !949, !noalias !934
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !949 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !949, !noalias !934
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !949 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !949, !noalias !934
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !949 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !949, !noalias !934
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !949 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !949, !noalias !934
  %i.x = load i64, ptr %i.e, align 8, !dbg !950, !alias.scope !952, !noalias !953, !noundef !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !954
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !954

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !956, !alias.scope !952, !noalias !953, !nonnull !12, !noundef !12 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !958
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !960
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !964
  br label %.preheader, !dbg !954

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !965
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !969

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !970 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !972
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !974
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !978 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !979     ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !965
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !969

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !980, !alias.scope !952, !noalias !953
  br label %._crit_edge64, !dbg !980

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !980 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !981
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !981, !noalias !934
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !982, !noalias !934
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8774dFTUdNv_12polars_arrow(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.h, !dbg !983, !noalias !946

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !989, !noalias !946
  unreachable, !dbg !989

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !990), !dbg !944
  call void @llvm.experimental.noalias.scope.decl(metadata !993), !dbg !996, !noalias !946
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !998, !alias.scope !1000, !noalias !946 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !998, !alias.scope !1000, !noalias !946, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1001), !dbg !998, !noalias !946
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !1004
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1004

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1006, !alias.scope !1007, !noalias !946, !noundef !12
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1006, !alias.scope !1007, !noalias !946, !noundef !12 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !1008
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !1012    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !1016
  %i.ap = add i64 %i.ao, %i.an, !dbg !1017        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !1017
  call void @llvm.assume(i1 %i.aq), !dbg !1019, !noalias !946
  %i.ar = sub i64 0, %i.al, !dbg !1021
  %i.as = and i64 %i.ap, %i.ar, !dbg !1022        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !1023
  %i.au = add i64 %i.at, %i.as, !dbg !1024        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !1024
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !1026, !noalias !946
  call void @llvm.assume(i1 %i.ax), !dbg !1026, !noalias !946
  %i.ay = icmp ne i64 %i.al, 0, !dbg !1028
  call void @llvm.assume(i1 %i.ay), !dbg !1030, !noalias !946
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !946
  %i.az = icmp eq i64 %i.au, 0, !dbg !1031
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %bb.i, !dbg !1031

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !1033
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !1035
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #33, !dbg !1036, !noalias !1039
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, !dbg !1040

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !944, !noalias !934
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow.exit, !dbg !945

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1041 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1041 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1041
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !1042
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1046
  %i.be = zext nneg i16 %i.bd to i64, !dbg !1047
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !1048
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !1050 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !1051    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !1052, !alias.scope !1059, !noalias !1062, !nonnull !12, !noundef !12
  %i.bj = sub nsw i64 0, %i.bg, !dbg !1064
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj, !dbg !1069
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -16, !dbg !1070
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit unwind label %bb.f, !dbg !1076 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !1081 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1084
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !1087, !noalias !1091
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1094
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !1094 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !1098
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1100, !prof !457

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1081
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ], [ %i.cg, %.lr.ph.i ], !dbg !1094
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1101
  %i.br = zext nneg i16 %i.bq to i64, !dbg !1104
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !1105
  %i.bt = and i64 %i.bs, %i.t, !dbg !1105         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !1106
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !1111, !noundef !12
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !1112
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1112, !prof !126

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1114
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1116
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !1116 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !1119
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !1121
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !1121
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1122
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1124

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !1125           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !1127
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !1081 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1084
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !1087, !noalias !1091
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1094
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !1094 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !1098
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1100, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !1128
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !1131 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !1132
  %i.ck = and i64 %i.cj, %i.t, !dbg !1135
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1136
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !1139, !noalias !946
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !1140
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !1140
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !1143, !noalias !946
  %i.co = load ptr, ptr %0, align 8, !dbg !1144, !alias.scope !952, !noalias !953, !nonnull !12, !noundef !12
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !1147
  %.neg61.i.i = shl i64 %.neg.i.i, 4, !dbg !1147
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !1148
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1150
  %.neg63.i.i = shl i64 %.neg62.i.i, 4, !dbg !1150
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cq, ptr noundef nonnull align 1 dereferenceable(16) %i.cp, i64 range(i64 8, 25) 16, i1 false), !dbg !1154, !noalias !946
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !954
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !954

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !1156

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157), !dbg !1160
  %.val11 = load ptr, ptr %0, align 8, !dbg !1161 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1163
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1163

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !1167
  %i.ct = and i64 %i.l, 15, !dbg !1172
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !1173
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !1173
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !1173 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1163
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !1163
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !1163

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1163
  br label %bb.l, !dbg !1163

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1163
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !1163

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1163
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !1163
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1174 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !1177
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1179
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1182
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !1182
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !1184
  br label %._crit_edge.i18, !dbg !1187

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !1187
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1188, !prof !631

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1174 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !1177
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1179
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1182
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !1182
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !1184
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !1190  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1174
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !1174 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !1177
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1179
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1182
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !1182
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !1184
  %niter.next.1 = add i64 %niter, 2, !dbg !1163   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1163
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !1163

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1192

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1193
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1198, !noalias !1199
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1201
  store ptr null, ptr %i.dj, align 8, !dbg !1201, !noalias !1199
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1201
  store i64 16, ptr %i.dk, align 8, !dbg !1201, !noalias !1199
  store ptr %0, ptr %i.a, align 8, !dbg !1201, !noalias !1199
  %i.dl = load i64, ptr %i.i, align 8, !dbg !1203, !alias.scope !1157, !noalias !1205, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !1206
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1210

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1211
  %i.dn = load ptr, ptr %0, align 8, !dbg !1214, !noalias !1205, !nonnull !12, !noundef !12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !1216
  %i.dp = load i8, ptr %i.do, align 1, !dbg !1218, !noalias !1205, !noundef !12
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !1218
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !1221

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1211
  %.neg11.i = shl i64 %.neg.i, 4, !dbg !1222
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !1224 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1226

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !1227, !alias.scope !1231, !noalias !1234, !nonnull !12, !noundef !12
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.ds, i64 %i.dr, !dbg !1236
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16, !dbg !1239
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 unwind label %bb.n, !dbg !1243 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.u, !dbg !1246, !noalias !1205

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1247, !nonnull !12, !noundef !12 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1247, !noundef !12 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !1248 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1250
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !1253, !noalias !1257
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1260
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !1260 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !1264
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1266, !prof !457

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1248
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !1260
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1267
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !1270
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !1271
  %i.ed = and i64 %i.ec, %.val9, !dbg !1271       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !1272
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !1277, !noundef !12
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !1278
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1278, !prof !126

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1280
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !1282
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !1282 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !1285
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !1287
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !1287
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1288
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1290

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjmEE14reserve_rehashNCINvNtBa_3map11make_hasherjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs8774dFTUdNv_12polars_arrow.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !1291           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !1293
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !1248 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1250
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !1253, !noalias !1257
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1260
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !1260 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !1264
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1266, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1294
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1298
  %i.et = xor i64 %i.es, %i.er, !dbg !1301
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !1301
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !1301
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !1302, !prof !789

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !1304
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !1307 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !1308
  %i.ey = and i64 %.val9, %i.ex, !dbg !1311
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1312
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !1315, !noalias !1205
  %i.fa = load ptr, ptr %0, align 8, !dbg !1316, !noalias !1205, !nonnull !12, !noundef !12
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !1318
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !1318
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !1320, !noalias !1205
  br label %bb.s, !dbg !1321

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1322
  %.neg13.i = shl i64 %.neg12.i, 4, !dbg !1322
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1324 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1326 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !1330, !noalias !1205, !noundef !12
  %i.fg = lshr i64 %i.dv, 57, !dbg !1331
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !1334 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1335
  %i.fj = and i64 %i.fi, %.val9, !dbg !1338
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !1339, !noalias !1205
  %i.fk = load ptr, ptr %0, align 8, !dbg !1340, !noalias !1205, !nonnull !12, !noundef !12
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !1342
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !1342
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !1344, !noalias !1205
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !1345
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !1345

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !1346
  %i.fp = load i64, ptr %i.i, align 8, !dbg !1349, !noalias !1205, !noundef !12
  %i.fq = and i64 %i.fp, %i.fo, !dbg !1350
  %i.fr = load ptr, ptr %0, align 8, !dbg !1351, !noalias !1205, !nonnull !12, !noundef !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !1353
  store i8 -1, ptr %i.fs, align 1, !dbg !1355, !noalias !1205
  %i.ft = load ptr, ptr %0, align 8, !dbg !1356, !noalias !1205, !nonnull !12, !noundef !12
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !1358
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !1358
  store i8 -1, ptr %i.fv, align 1, !dbg !1360, !noalias !1205
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fd, ptr noundef nonnull align 1 dereferenceable(16) %i.dq, i64 16, i1 false), !dbg !1361, !noalias !1205
  br label %bb.s, !dbg !1363

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !1206
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1210

bb.t:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherxBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB1v_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1420, !noalias !1411
  store ptr %i.d, ptr %i.c, align 8, !dbg !1426, !noalias !1411
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1426 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1426, !noalias !1411
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1426 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1426, !noalias !1411
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1426 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1426, !noalias !1411
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1426 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1426, !noalias !1411
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1426 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1426, !noalias !1411
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1426 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1426, !noalias !1411
  %i.x = load i64, ptr %i.e, align 8, !dbg !1427, !alias.scope !1429, !noalias !1430, !noundef !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1431
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1431

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1433, !alias.scope !1429, !noalias !1430, !nonnull !12, !noundef !12 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1435
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1437
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1441
  br label %.preheader, !dbg !1431

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1442
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1446

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1447 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1449
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1451
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1455 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1456    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1442
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1446

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1457, !alias.scope !1429, !noalias !1430
  br label %._crit_edge64, !dbg !1457

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1457 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1458
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1458, !noalias !1411
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1459, !noalias !1411
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8774dFTUdNv_12polars_arrow(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.h, !dbg !1460, !noalias !1423

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !1466, !noalias !1423
  unreachable, !dbg !1466

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !1467), !dbg !1421
  call void @llvm.experimental.noalias.scope.decl(metadata !1470), !dbg !1473, !noalias !1423
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1475, !alias.scope !1477, !noalias !1423 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1475, !alias.scope !1477, !noalias !1423, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1478), !dbg !1475, !noalias !1423
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !1481
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1481

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1483, !alias.scope !1484, !noalias !1423, !noundef !12
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1483, !alias.scope !1484, !noalias !1423, !noundef !12 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !1485
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !1489    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !1493
  %i.ap = add i64 %i.ao, %i.an, !dbg !1494        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !1494
  call void @llvm.assume(i1 %i.aq), !dbg !1496, !noalias !1423
  %i.ar = sub i64 0, %i.al, !dbg !1498
  %i.as = and i64 %i.ap, %i.ar, !dbg !1499        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !1500
  %i.au = add i64 %i.at, %i.as, !dbg !1501        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !1501
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !1503, !noalias !1423
  call void @llvm.assume(i1 %i.ax), !dbg !1503, !noalias !1423
  %i.ay = icmp ne i64 %i.al, 0, !dbg !1505
  call void @llvm.assume(i1 %i.ay), !dbg !1507, !noalias !1423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !1423
  %i.az = icmp eq i64 %i.au, 0, !dbg !1508
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %bb.i, !dbg !1508

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !1510
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !1512
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #33, !dbg !1513, !noalias !1516
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, !dbg !1517

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1421, !noalias !1411
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow.exit, !dbg !1422

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1518 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1518 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1518
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !1519
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1523
  %i.be = zext nneg i16 %i.bd to i64, !dbg !1524
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !1525
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !1527 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !1528    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !1529, !alias.scope !1536, !noalias !1539, !nonnull !12, !noundef !12
  %i.bj = sub nsw i64 0, %i.bg, !dbg !1541
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj, !dbg !1546
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24, !dbg !1547
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRxECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit unwind label %bb.f, !dbg !1553 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !1558 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1561
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !1564, !noalias !1568
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1571
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !1571 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !1575
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1577, !prof !457

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1558
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit ], [ %i.cg, %.lr.ph.i ], !dbg !1571
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1578
  %i.br = zext nneg i16 %i.bq to i64, !dbg !1581
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !1582
  %i.bt = and i64 %i.bs, %i.t, !dbg !1582         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !1583
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !1588, !noundef !12
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !1589
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1589, !prof !126

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1591
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1593
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !1593 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !1596
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !1598
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !1598
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1599
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1601

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !1602           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !1604
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !1558 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1561
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !1564, !noalias !1568
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1571
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !1571 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !1575
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1577, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !1605
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !1608 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !1609
  %i.ck = and i64 %i.cj, %i.t, !dbg !1612
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1613
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !1616, !noalias !1423
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !1617
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !1617
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !1620, !noalias !1423
  %i.co = load ptr, ptr %0, align 8, !dbg !1621, !alias.scope !1429, !noalias !1430, !nonnull !12, !noundef !12
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !1624
  %.neg61.i.i = mul i64 %.neg.i.i, 24, !dbg !1624
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !1625
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1627
  %.neg63.i.i = mul i64 %.neg62.i.i, 24, !dbg !1627
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1629
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 1 dereferenceable(24) %i.cp, i64 range(i64 8, 25) 24, i1 false), !dbg !1631, !noalias !1423
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !1431
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !1431

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !1633

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634), !dbg !1637
  %.val11 = load ptr, ptr %0, align 8, !dbg !1638 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1640
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1640

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !1644
  %i.ct = and i64 %i.l, 15, !dbg !1649
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !1650
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !1650
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !1650 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1640
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !1640
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !1640

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1640
  br label %bb.l, !dbg !1640

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1640
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !1640

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1640
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !1640
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1651 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !1654
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1656
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1659
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !1659
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !1661
  br label %._crit_edge.i18, !dbg !1664

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !1664
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1665, !prof !631

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1651 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !1654
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1656
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1659
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !1659
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !1661
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !1667  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1651
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !1651 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !1654
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1656
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1659
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !1659
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !1661
  %niter.next.1 = add i64 %niter, 2, !dbg !1640   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1640
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !1640

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1669

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1670
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1675, !noalias !1676
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1678
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBd_3map11make_hasherxBW_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceB1A_, ptr %i.dj, align 8, !dbg !1678, !noalias !1676
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1678
  store i64 24, ptr %i.dk, align 8, !dbg !1678, !noalias !1676
  store ptr %0, ptr %i.a, align 8, !dbg !1678, !noalias !1676
  %i.dl = load i64, ptr %i.i, align 8, !dbg !1680, !alias.scope !1634, !noalias !1682, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !1683
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1687

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1688
  %i.dn = load ptr, ptr %0, align 8, !dbg !1691, !noalias !1682, !nonnull !12, !noundef !12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !1693
  %i.dp = load i8, ptr %i.do, align 1, !dbg !1695, !noalias !1682, !noundef !12
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !1695
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !1698

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1688
  %.neg11.i = mul i64 %.neg.i, 24, !dbg !1699
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !1701 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1703

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !1704, !alias.scope !1708, !noalias !1711, !nonnull !12, !noundef !12
  %i.dt = getelementptr inbounds [24 x i8], ptr %i.ds, i64 %i.dr, !dbg !1713
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -24, !dbg !1716
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRxECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21 unwind label %bb.n, !dbg !1720 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.u, !dbg !1723, !noalias !1682

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1724, !nonnull !12, !noundef !12 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1724, !noundef !12 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !1725 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1727
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !1730, !noalias !1734
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1737
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !1737 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !1741
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1743, !prof !457

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1725
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !1737
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1744
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !1747
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !1748
  %i.ed = and i64 %i.ec, %.val9, !dbg !1748       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !1749
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !1754, !noundef !12
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !1755
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1755, !prof !126

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1757
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !1759
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !1759 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !1762
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !1764
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !1764
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1765
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1767

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherxBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1x_.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !1768           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !1770
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !1725 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1727
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !1730, !noalias !1734
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1737
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !1737 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !1741
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1743, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1771
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1775
  %i.et = xor i64 %i.es, %i.er, !dbg !1778
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !1778
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !1778
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !1779, !prof !789

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !1781
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !1784 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !1785
  %i.ey = and i64 %.val9, %i.ex, !dbg !1788
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1789
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !1792, !noalias !1682
  %i.fa = load ptr, ptr %0, align 8, !dbg !1793, !noalias !1682, !nonnull !12, !noundef !12
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !1795
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !1795
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !1797, !noalias !1682
  br label %bb.s, !dbg !1798

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1799
  %.neg13.i = mul i64 %.neg12.i, 24, !dbg !1799
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1801 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1803 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !1807, !noalias !1682, !noundef !12
  %i.fg = lshr i64 %i.dv, 57, !dbg !1808
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !1811 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1812
  %i.fj = and i64 %i.fi, %.val9, !dbg !1815
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !1816, !noalias !1682
  %i.fk = load ptr, ptr %0, align 8, !dbg !1817, !noalias !1682, !nonnull !12, !noundef !12
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !1819
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !1819
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !1821, !noalias !1682
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !1822
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !1822

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !1823
  %i.fp = load i64, ptr %i.i, align 8, !dbg !1826, !noalias !1682, !noundef !12
  %i.fq = and i64 %i.fp, %i.fo, !dbg !1827
  %i.fr = load ptr, ptr %0, align 8, !dbg !1828, !noalias !1682, !nonnull !12, !noundef !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !1830
  store i8 -1, ptr %i.fs, align 1, !dbg !1832, !noalias !1682
  %i.ft = load ptr, ptr %0, align 8, !dbg !1833, !noalias !1682, !nonnull !12, !noundef !12
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !1835
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !1835
  store i8 -1, ptr %i.fv, align 1, !dbg !1837, !noalias !1682
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fd, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 24, i1 false), !dbg !1838, !noalias !1682
  br label %bb.s, !dbg !1840

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !1683
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1687

bb.t:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE0EB2L_:bb.a
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1903 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1903, !noalias !1888
  %i.x = load i64, ptr %i.e, align 8, !dbg !1904, !alias.scope !1906, !noalias !1907, !noundef !12 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1908
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph, !dbg !1908

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1910, !alias.scope !1906, !noalias !1907, !nonnull !12, !noundef !12 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16, !dbg !1912
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1), !dbg !1914
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1918
  br label %.preheader, !dbg !1908

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0, !dbg !1919
  br i1 %.not.i367, label %.noexc4, label %._crit_edge, !dbg !1923

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16, !dbg !1924 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1926
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1), !dbg !1928
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1932 ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16, !dbg !1933    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1919
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1923

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !dbg !1934, !alias.scope !1906, !noalias !1907
  br label %._crit_edge76, !dbg !1934

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ], !dbg !1934 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1935
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1935, !noalias !1888
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1936, !noalias !1888
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8774dFTUdNv_12polars_arrow(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.h, !dbg !1937, !noalias !1900

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !1943, !noalias !1900
  unreachable, !dbg !1943

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !1944), !dbg !1898
  call void @llvm.experimental.noalias.scope.decl(metadata !1947), !dbg !1950, !noalias !1900
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1952, !alias.scope !1954, !noalias !1900 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1952, !alias.scope !1954, !noalias !1900, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1955), !dbg !1952, !noalias !1900
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !1958
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1958

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1960, !alias.scope !1961, !noalias !1900, !noundef !12
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1960, !alias.scope !1961, !noalias !1900, !noundef !12 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !1962
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !1966    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !1970
  %i.ap = add i64 %i.ao, %i.an, !dbg !1971        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !1971
  call void @llvm.assume(i1 %i.aq), !dbg !1973, !noalias !1900
  %i.ar = sub i64 0, %i.al, !dbg !1975
  %i.as = and i64 %i.ap, %i.ar, !dbg !1976        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !1977
  %i.au = add i64 %i.at, %i.as, !dbg !1978        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !1978
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !1980, !noalias !1900
  call void @llvm.assume(i1 %i.ax), !dbg !1980, !noalias !1900
  %i.ay = icmp ne i64 %i.al, 0, !dbg !1982
  call void @llvm.assume(i1 %i.ay), !dbg !1984, !noalias !1900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !1900
  %i.az = icmp eq i64 %i.au, 0, !dbg !1985
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, label %bb.i, !dbg !1985

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !1987
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !1989
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #33, !dbg !1990, !noalias !1993
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit, !dbg !1994

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs8774dFTUdNv_12polars_arrow.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1898, !noalias !1888
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow.exit, !dbg !1899

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1995 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1995 ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1995
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !1996
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2000
  %i.be = zext nneg i16 %i.bd to i64, !dbg !2001
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !2002
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !2004 ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1, !dbg !2005    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006), !dbg !2009
  %i.bi = load ptr, ptr %0, align 8, !dbg !2010, !alias.scope !2006, !noalias !2017, !nonnull !12, !noundef !12
  %i.bj = sub nsw i64 0, %i.bg, !dbg !2019
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !2024
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !2025
  %.val3.i = load i64, ptr %i.bl, align 8, !dbg !2031, !noalias !2032, !noundef !12 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3, !dbg !2033
  br i1 %i.bm, label %bb.k, label %bb.j, !dbg !2033

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc14 unwind label %bb.f, !dbg !2033

.noexc14:                                         ; preds = %bb.j
  unreachable, !dbg !2033

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %.val3.i, !dbg !2033
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !2033, !noalias !2032, !noundef !12 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bo, !dbg !2041 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2044
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !dbg !2047, !noalias !2051
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2054
  %i.br = bitcast <16 x i1> %i.bq to i16, !dbg !2054 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0, !dbg !2058
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2060, !prof !457

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2041
  %.lcssa.i = phi i16 [ %i.br, %bb.k ], [ %i.ci, %.lr.ph.i ], !dbg !2054
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2061
  %i.bt = zext nneg i16 %i.bs to i64, !dbg !2064
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt, !dbg !2065
  %i.bv = and i64 %i.bu, %i.t, !dbg !2065         ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bv, !dbg !2066
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !2071, !noundef !12
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !2072
  br i1 %i.by, label %bb.l, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2072, !prof !126

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2074
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2076
  %i.ca = bitcast <16 x i1> %i.bz to i16, !dbg !2076 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0, !dbg !2079
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true), !dbg !2081
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !2081
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2082
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2084

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %bb.k ]
  %i.ce = add i64 %i.cd, 16, !dbg !2085           ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i, !dbg !2087
  %.sroa.0.0.i15 = and i64 %i.cf, %i.t, !dbg !2041 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2044
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !dbg !2047, !noalias !2051
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2054
  %i.ci = bitcast <16 x i1> %i.ch to i16, !dbg !2054 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0, !dbg !2058
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2060, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57, !dbg !2088
  %i.ck = trunc nuw nsw i64 %i.cj to i8, !dbg !2091 ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16, !dbg !2092
  %i.cm = and i64 %i.cl, %i.t, !dbg !2095
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2096
  store i8 %i.ck, ptr %i.cn, align 1, !dbg !2099, !noalias !1900
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cm, !dbg !2100
  %i.cp = getelementptr i8, ptr %i.co, i64 16, !dbg !2100
  store i8 %i.ck, ptr %i.cp, align 1, !dbg !2103, !noalias !1900
  %i.cq = load ptr, ptr %0, align 8, !dbg !2104, !alias.scope !1906, !noalias !1907, !nonnull !12, !noundef !12
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !2107
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !2107
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg61.i.i, !dbg !2108
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2110
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !2110
  %i.cs = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2112
  %i.ct = load i64, ptr %i.cr, align 1, !dbg !2114, !noalias !1900
  store i64 %i.ct, ptr %i.cs, align 1, !dbg !2114, !noalias !1900
  %i.cu = icmp eq i64 %i.bh, 0, !dbg !1908
  br i1 %i.cu, label %._crit_edge76.loopexit, label %.preheader, !dbg !1908

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !2116

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117), !dbg !2120
  %.val11 = load ptr, ptr %0, align 8, !dbg !2121 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2123
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2123

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cv = lshr i64 %i.l, 4, !dbg !2127
  %i.cw = and i64 %i.l, 15, !dbg !2132
  %.not10.i.i.i = icmp ne i64 %i.cw, 0, !dbg !2133
  %i.cx = zext i1 %.not10.i.i.i to i64, !dbg !2133
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx, !dbg !2133 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2123
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !2123
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2123

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2123
  br label %bb.n, !dbg !2123

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2123
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2123

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2123
  tail call void @llvm.assume(i1 %lcmp.mod171), !dbg !2123
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2134 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16, !dbg !2137
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2139
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2142
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !2142
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !2144
  br label %._crit_edge.i18, !dbg !2147

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.l, 16, !dbg !2147
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2148, !prof !631

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2134 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16, !dbg !2137
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2139
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2142
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472), !dbg !2142
  store <2 x i64> %i.df, ptr %i.dd, align 16, !dbg !2144
  %i.dg = add i64 %.sroa.01.08.i, 32, !dbg !2150  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2134
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16, !dbg !2134 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16, !dbg !2137
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2139
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2142
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472), !dbg !2142
  store <2 x i64> %i.dk, ptr %i.di, align 16, !dbg !2144
  %niter.next.1 = add i64 %niter, 2, !dbg !2123   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2123
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n, !dbg !2123

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2152

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2153
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2158, !noalias !2159
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2161
  store ptr null, ptr %i.dm, align 8, !dbg !2161, !noalias !2159
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2161
  store i64 8, ptr %i.dn, align 8, !dbg !2161, !noalias !2159
  store ptr %0, ptr %i.a, align 8, !dbg !2161, !noalias !2159
  %i.do = load i64, ptr %i.i, align 8, !dbg !2163, !alias.scope !2117, !noalias !2165, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.do, -1, !dbg !2166
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2170

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.w
  %.sroa.04.0.i66 = phi i64 [ %i.dp, %bb.w ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i66, 1, !dbg !2171
  %i.dq = load ptr, ptr %0, align 8, !dbg !2174, !noalias !2165, !nonnull !12, !noundef !12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i66, !dbg !2176
  %i.ds = load i8, ptr %i.dr, align 1, !dbg !2178, !noalias !2165, !noundef !12
  %.not.i2 = icmp eq i8 %i.ds, -128, !dbg !2178
  br i1 %.not.i2, label %bb.o, label %bb.w, !dbg !2181

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1, !dbg !2171
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !2182
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i, !dbg !2184 ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2186

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.x, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187), !dbg !2190
  %i.dv = load ptr, ptr %0, align 8, !dbg !2191, !alias.scope !2187, !noalias !2195, !nonnull !12, !noundef !12 ; 8 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du, !dbg !2197
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8, !dbg !2200
  %.val3.i20 = load i64, ptr %i.dx, align 8, !dbg !2204, !noalias !2205, !noundef !12 ; 3 uses
  %i.dy = icmp ult i64 %.val3.i20, %3, !dbg !2206
  br i1 %i.dy, label %bb.r, label %bb.p, !dbg !2206

bb.p:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc22 unwind label %.loopexit.split-lp, !dbg !2206

.noexc22:                                         ; preds = %bb.p
  unreachable, !dbg !2206

.loopexit:                                        ; preds = %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.y, !dbg !2208, !noalias !2165

bb.r:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %.val3.i20, !dbg !2206
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !2206, !noalias !2205, !noundef !12 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2209, !noundef !12 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ea, !dbg !2210 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !2212
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.eb, align 1, !dbg !2215, !noalias !2219
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !2222
  %i.ed = bitcast <16 x i1> %i.ec to i16, !dbg !2222 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ed, 0, !dbg !2226
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !2228, !prof !457

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !2210
  %.lcssa.i29 = phi i16 [ %i.ed, %bb.r ], [ %i.eu, %.lr.ph.i33 ], !dbg !2222
  %i.ee = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !2229
  %i.ef = zext nneg i16 %i.ee to i64, !dbg !2232
  %i.eg = add i64 %.sroa.0.0.lcssa.i28, %i.ef, !dbg !2233
  %i.eh = and i64 %i.eg, %.val9, !dbg !2233       ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh, !dbg !2234
  %i.ej = load i8, ptr %i.ei, align 1, !dbg !2239, !noundef !12
  %i.ek = icmp sgt i8 %i.ej, -1, !dbg !2240
  br i1 %i.ek, label %bb.s, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !2240, !prof !126

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !2242
  %i.el = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer, !dbg !2244
  %i.em = bitcast <16 x i1> %i.el to i16, !dbg !2244 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.em, 0, !dbg !2247
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true), !dbg !2249
  %i.eo = zext nneg i16 %i.en to i64, !dbg !2249
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !2250
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !2252

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.eq = add i64 %i.ep, 16, !dbg !2253           ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i34, !dbg !2255
  %.sroa.0.0.i35 = and i64 %i.er, %.val9, !dbg !2210 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !2212
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.es, align 1, !dbg !2215, !noalias !2219
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !2222
  %i.eu = bitcast <16 x i1> %i.et to i16, !dbg !2222 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.eu, 0, !dbg !2226
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !2228, !prof !504

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eo, %bb.s ], [ %i.eh, %._crit_edge.i27 ] ; 4 uses
  %i.ev = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24, !dbg !2256
  %i.ew = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !2260
  %i.ex = xor i64 %i.ew, %i.ev, !dbg !2263
  %.unshifted.i = and i64 %i.ex, %.val9, !dbg !2263
  %i.ey = icmp ult i64 %.unshifted.i, 16, !dbg !2263
  br i1 %i.ey, label %bb.t, label %bb.u, !dbg !2264, !prof !789

bb.t:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ez = lshr i64 %i.ea, 57, !dbg !2266
  %i.fa = trunc nuw nsw i64 %i.ez to i8, !dbg !2269 ; 2 uses
  %i.fb = add i64 %.sroa.04.0.i66, -16, !dbg !2270
  %i.fc = and i64 %.val9, %i.fb, !dbg !2273
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i66, !dbg !2274
  store i8 %i.fa, ptr %i.fd, align 1, !dbg !2277, !noalias !2165
  %i.fe = load ptr, ptr %0, align 8, !dbg !2278, !noalias !2165, !nonnull !12, !noundef !12
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc, !dbg !2280
  %i.fg = getelementptr i8, ptr %i.ff, i64 16, !dbg !2280
  store i8 %i.fa, ptr %i.fg, align 1, !dbg !2282, !noalias !2165
  br label %bb.w, !dbg !2283

bb.u:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !2284
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !2284
  %i.fh = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !2286 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !2288 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !2292, !noalias !2165, !noundef !12
  %i.fk = lshr i64 %i.ea, 57, !dbg !2293
  %i.fl = trunc nuw nsw i64 %i.fk to i8, !dbg !2296 ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i30, -16, !dbg !2297
  %i.fn = and i64 %i.fm, %.val9, !dbg !2300
  store i8 %i.fl, ptr %i.fi, align 1, !dbg !2301, !noalias !2165
  %i.fo = load ptr, ptr %0, align 8, !dbg !2302, !noalias !2165, !nonnull !12, !noundef !12
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn, !dbg !2304
  %i.fq = getelementptr i8, ptr %i.fp, i64 16, !dbg !2304
  store i8 %i.fl, ptr %i.fq, align 1, !dbg !2306, !noalias !2165
  %i.fr = icmp eq i8 %i.fj, -1, !dbg !2307
  br i1 %i.fr, label %bb.v, label %bb.x, !dbg !2307

end_hunk_3
